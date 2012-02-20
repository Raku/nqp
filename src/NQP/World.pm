use NQPP6Regex;

class NQP::World is HLL::World {
    # The stack of lexical pads, actually as PAST::Block objects. The
    # outermost frame is at the bottom, the latest frame is on top.
    has @!BLOCKS;
    
    # Creates a new lexical scope and puts it on top of the stack.
    method push_lexpad($/) {
        # Create pad, link to outer and add to stack.
        my $pad := PAST::Block.new( PAST::Stmts.new(), :node($/) );
        if +@!BLOCKS {
            $pad<outer> := @!BLOCKS[+@!BLOCKS - 1];
        }
        @!BLOCKS[+@!BLOCKS] := $pad;
        $pad
    }
    
    # Pops a lexical scope off the stack.
    method pop_lexpad() {
        @!BLOCKS.pop()
    }
    
    # Gets the top lexpad.
    method cur_lexpad() {
        @!BLOCKS[+@!BLOCKS - 1]
    }
    
    # XXX This goes away really soon...after the multi refactor.
    method get_legacy_block_list() {
        my @x := nqp::clone(@!BLOCKS);
        @x.reverse();
        @x
    }

    # XXX We need to load the module loader to load modules, which means we
    # can't just use ...; it, which means we can't get the ModuleLoader symbol
    # merged into anywhere...anyway, we chop the circularity by finding it
    # through a Parrot namespace for now.
    my $loader := pir::get_hll_global__Ps('ModuleLoader');
    
    # Loads the setting and emits code 
    method load_setting($setting_name) {
        # Do nothing for the NULL setting.
        if $setting_name ne 'NULL' {    
            # Load it immediately, so the compile time info is available.
            # Once it's loaded, set it as the outer context of the code
            # being compiled.
            my $setting := %*COMPILING<%?OPTIONS><outer_ctx>
                        := $loader.load_setting($setting_name);
            
            # Do load for pre-compiled situation.
            if self.is_precompilation_mode() {
                self.add_load_dependency_task(:deserialize_past(PAST::Stmts.new(
                    PAST::Op.new(
                        :pirop('load_bytecode vs'), 'ModuleLoader.pbc'
                    ),
                    PAST::Op.new(
                        :pasttype('callmethod'), :name('set_outer_ctx'),
                           PAST::Var.new( :name('block'), :scope('register') ),
                           PAST::Op.new(
                               :pasttype('callmethod'), :name('load_setting'),
                               PAST::Var.new( :name('ModuleLoader'), :namespace([]), :scope('package') ),
                               $setting_name
                           )
                    )
                )));
            }
            else {
                # Needs fixup.
                self.add_fixup_task(:fixup_past(PAST::Op.new(
                    :pasttype('callmethod'), :name('set_outer_ctx'),
                       PAST::Var.new( :name('block'), :scope('register') ),
                       PAST::Op.new(
                           :pasttype('callmethod'), :name('load_setting'),
                           PAST::Var.new( :name('ModuleLoader'), :namespace([]), :scope('package') ),
                           $setting_name
                       )
                )));
            }
            
            return pir::getattribute__PPs($setting, 'lex_pad');
        }
    }
    
    # Loads a module immediately, and also makes sure we load it
    # during the deserialization.
    method load_module($module_name, $cur_GLOBALish) {
        # Immediate loading.
        my $module := $loader.load_module($module_name, $cur_GLOBALish);
        
        # Make sure we do the loading during deserialization.
        if self.is_precompilation_mode() {
            self.add_load_dependency_task(:deserialize_past(PAST::Stmts.new(
                PAST::Op.new(
                    :pirop('load_bytecode vs'), 'ModuleLoader.pbc'
                ),
                PAST::Op.new(
                   :pasttype('callmethod'), :name('load_module'),
                   PAST::Var.new( :name('ModuleLoader'), :namespace([]), :scope('package') ),
                   $module_name
                ))));
        }

        return pir::getattribute__PPs($module, 'lex_pad');
    }
    
    # Installs a symbol into the package. Does so immediately, and
    # makes sure this happens on deserialization also.
    method install_package_symbol($package, @sym, $obj) {
        @sym := pir::clone__PP(@sym);
        my $name := ~@sym.pop();
        
        # Install symbol immediately.
        my $target := $package;
        for @sym {
            $target := pir::nqp_get_package_through_who__PPs($target, $_);
        }
        ($target.WHO){$name} := $obj;
    }
    
    # Installs a lexical symbol. Takes a PAST::Block object, name and
    # the object to install. Does an immediate installation in the
    # compile-time block symbol table, and ensures that the installation
    # gets fixed up at runtime too.
    method install_lexical_symbol($block, $name, $obj) {
        # Install the object directly as a block symbol.
        $block.symbol($name, :scope('lexical'), :value($obj));
        $block[0].push(PAST::Var.new( :scope('lexical'), :name($name), :isdecl(1),
            :directaccess(1) ));
        
        # Fixup and deserialization task is the same.
        my $fixup := PAST::Stmts.new(
            PAST::Op.new(
                :pasttype('callmethod'), :name('set_static_lexpad_value'),
                PAST::Val.new( :value($block), :returns('LexInfo')),
                ~$name, self.get_slot_past_for_object($obj)
            ),
            # XXX Should only do this once per block we put static stuff
            # in...or find a way to not do it at all.
            PAST::Op.new(
                :pasttype('callmethod'), :name('finish_static_lexpad'),
                PAST::Val.new( :value($block), :returns('LexInfo' ))
            )
        );
        self.add_fixup_task(:deserialize_past($fixup), :fixup_past($fixup));
    }
    
    # Adds a fixup to install a specified PAST::Block in a package under the
    # specified name.
    method install_package_routine($package, $name, $past_block) {
        my $fixup := PAST::Op.new(
            :pasttype('bind_6model'),
            PAST::Var.new(
                :scope('keyed'),
                PAST::Op.new( :pirop('get_who PP'), self.get_slot_past_for_object($package) ),
                ~$name
            ),
            PAST::Val.new( :value($past_block) )
        );
        self.add_fixup_task(:deserialize_past($fixup), :fixup_past($fixup));
    }
    
    # Registers a code object, and gives it a dynamic compilation thunk.
    # Makes a real code object if it's a dispatcher.
    method create_code($past, $name, $is_dispatcher) {
        # For code refs, we need a "stub" that we'll clone and use for the
        # compile-time representation. If it ever gets invoked it'll go
        # and compile the code and run it.
        # XXX Lexical environment.
        # XXX Cache compiled output.
        my $stub_code := sub (*@args, *%named) {
            my $compiled := PAST::Compiler.compile($past);
            $compiled(|@args, |%named);
        };
        
        # See if we already have our compile-time dummy. If not, create it.
        my $fixups := PAST::Stmts.new();
        my $dummy;
        my $code_ref_idx;
        if pir::defined($past<compile_time_dummy>) {
            $dummy := $past<compile_time_dummy>;
        }
        else {
            $dummy := pir::nqp_fresh_stub__PP($stub_code);
            pir::assign__vPS($dummy, $name);
            if $is_dispatcher {
                # The dispatcher will get cloned if more candidates are added in
                # a subclass; this makes sure that we fix up the clone also.
                if !self.is_precompilation_mode() {
                    pir::setprop__vPsP($dummy, 'CLONE_CALLBACK', sub ($orig, $clone, $dispatcher_code_obj) {
                        my $clone_idx := self.add_root_code_ref($clone, $past);
                        self.add_object($dispatcher_code_obj);
                        $fixups.push(PAST::Stmts.new(
                            PAST::Op.new(
                                :pirop('assign vPP'),
                                self.get_slot_past_for_code_ref_at($clone_idx),
                                PAST::Val.new( :value(pir::getprop__PsP('PAST', $orig)) )
                            ),
                            PAST::Op.new(
                                :pirop('set_sub_code_object vPP'),
                                self.get_slot_past_for_code_ref_at($clone_idx),
                                self.get_ref($dispatcher_code_obj)
                            )));
                    });
                }
            }
            pir::setprop__vPsP($dummy, 'STATIC_CODE_REF', $dummy);
            $code_ref_idx := self.add_root_code_ref($dummy, $past);
            $past<compile_time_dummy> := $dummy;
        }
        
        # Attach PAST as a property to the dummy.
        pir::setprop__vPsP($dummy, 'PAST', $past);
        
        # For fixup, need to assign the method body we actually compiled
        # onto the one that went into the SC.
        $fixups.push(PAST::Op.new(
            :pirop('assign vPP'),
            self.get_slot_past_for_code_ref_at($code_ref_idx),
            PAST::Val.new( :value($past) )
        ));
        self.add_fixup_task(:fixup_past($fixups));
        
        # If it's a dispatcher, now need to wrap it in a code object,
        # so we have a place to store the dispatch list.
        if $is_dispatcher {
            # Create it now.
            my $code_type := self.find_sym(['NQPRoutine']);
            my $code_obj  := nqp::create($code_type);
            nqp::bindattr($code_obj, $code_type, '$!do', $dummy);
            nqp::bindattr($code_obj, $code_type, '$!dispatchees', nqp::list());
            my $slot := self.add_object($code_obj);

            # Add fixup task.
            self.add_fixup_task(
                :deserialize_past(PAST::Op.new(
                    :pirop('set_sub_code_object vPP'),
                    PAST::Val.new( :value($past) ),
                    self.get_ref($code_obj)
                )),
                :fixup_past(PAST::Op.new(
                    :pirop('set_sub_code_object vPP'),
                    self.get_slot_past_for_code_ref_at($code_ref_idx),
                    self.get_ref($code_obj)
                )));
            
            $code_obj
        }
        else {
            return $dummy;
        }
    }
    
    # Creates a meta-object for a package, adds it to the root objects and
    # stores an event for the action. Returns the created object.
    method pkg_create_mo($how, :$name, :$repr) {
        # Create the meta-object and add to root objects.
        my %args;
        if pir::defined($name) { %args<name> := $name; }
        if pir::defined($repr) { %args<repr> := $repr; }
        my $mo := $how.new_type(|%args);
        my $slot := self.add_object($mo);

        # Result is just the object.
        return $mo;
    }
    
    # Constructs a meta-attribute and adds it to a meta-object. Expects to
    # be passed the meta-attribute type object, a set of literal named
    # arguments to pass and a set of name to object mappings to pass also
    # as named arguments, but where these passed objects also live in a
    # serialization context. The type would be passed in this way.
    method pkg_add_attribute($obj, $meta_attr, %lit_args, %obj_args) {
        my $attr := $meta_attr.new(|%lit_args, |%obj_args);
        $obj.HOW.add_attribute($obj, $attr);
    }
    
    # Adds a method to the meta-object.
    method pkg_add_method($obj, $meta_method_name, $name, $code) {
        $obj.HOW."$meta_method_name"($obj, $name, $code);
    }
    
    # Associates a signature with a routine.
    method set_routine_signature($routine, $types, $definednesses) {
        # Build signature object and put it in place now.
        my $sig_type := self.find_sym(['NQPSignature']);
        my $sig_obj  := nqp::create($sig_type);
        nqp::bindattr($sig_obj, $sig_type, '$!types', $types);
        nqp::bindattr($sig_obj, $sig_type, '$!definednesses', $definednesses);
        my $slot := self.add_object($sig_obj);
        
        if self.is_precompilation_mode() {
            self.add_fixup_task(:deserialize_past(PAST::Op.new(
                :pirop('set_sub_multisig vPP'),
                PAST::Val.new( :value($routine) ),
                self.get_ref($sig_obj)
            )));
        }
        else {
            # Fixup code depends on if we have the routine in the SC for
            # fixing up.
            my $fixup := PAST::Op.new( :pirop('set_sub_multisig vPP'), self.get_ref($sig_obj) );
            if pir::defined($routine<compile_time_dummy>) {
                $fixup.unshift(self.get_slot_past_for_object($routine<compile_time_dummy>));
            }
            else {
                $fixup.unshift(PAST::Val.new( :value($routine) ));
            }
            self.add_fixup_task(:fixup_past($fixup));
        }
    }
    
    # This handles associating the role body with a role declaration.
    method pkg_set_body_block($obj, $body_past) {
        # In fixup, we'll actually run the real body block, but we
        # need to run it with the parameters that were used at compile
        # time. We rely on those being in the SC. The "dummy" body block
        # we supply will simply capture those and append to the body
        # invoke PAST. That's the "easy" part. The harder part is that
        # it also sets up the fixups for all the reified (cloned) methods.
        # Note that the fact we back-reference it always to the original
        # method, which in fact was just captured by running the block for
        # each role setup, means we get the timing right in order to end
        # up with methods capturing the correct type argument.
        my $fixups := PAST::Stmts.new();
        my $dummy := sub (*@type_args) {
            # Set up call to invoke body block with the type arguments.
            my $invoke_body := PAST::Op.new(
                :pasttype('call'),
                PAST::Val.new( :value($body_past) )
            );
            for @type_args {
                $invoke_body.push(self.get_slot_past_for_object($_));
            }
            $fixups.push($invoke_body);
            
            # Set a reification callback on all the dummy methods.
            for $obj.HOW.methods($obj, :local(1)) {
                pir::setprop__vPsP($_, 'REIFY_CALLBACK', sub ($meth) {
                    # Make a clone and add it to the SC.
                    my $clone := pir::clone($meth);
                    self.add_code_LEGACY($clone);
                    
                    # Add fixup for the cloned code.
                    $fixups.push(PAST::Op.new(
                        :pirop('assign vPP'),
                        self.get_slot_past_for_object($clone),
                        PAST::Val.new( :value(pir::getprop__PsP('PAST', $meth)) )
                    ));
                    
                    # Result is the cloned method that will be fixed up.
                    $clone
                });
            }
        };
        
        # Pass the dummy along as the role body block.
        $obj.HOW.set_body_block($obj, $dummy);
        
        # In deserialization, easy - just do the meta-object call.
        my $slot_past := self.get_slot_past_for_object($obj);
        my $des := PAST::Op.new(
            :pasttype('callmethod'), :name('set_body_block'),
            PAST::Op.new( :pirop('get_how PP'), $slot_past ),
            $slot_past,
            PAST::Val.new( :value($body_past) )
        );
        
        self.add_fixup_task(:deserialize_past($des), :fixup_past($fixups));
    }
    
    # Adds a parent or role to the meta-object.
    method pkg_add_parent_or_role($obj, $meta_method_name, $to_add) {
        $obj.HOW."$meta_method_name"($obj, $to_add);
    }

    method pkg_add_parrot_vtable_handler_mapping($obj, $name, $att_name) {
        $obj.HOW.add_parrot_vtable_handler_mapping($obj, $name, $att_name);
    }

    # Composes the package, and stores an event for this action.
    method pkg_compose($obj) {
        # Compose.
        $obj.HOW.compose($obj);
        
        if self.is_precompilation_mode() {
            # Make sure we fix up Parrot-specific vtable handling;
            # we don't serialize this.
            if pir::can__IPs($obj.HOW, 'publish_parrot_vtable_mapping') {
                my $slot_past := self.get_slot_past_for_object($obj);
                self.add_fixup_task(:deserialize_past(PAST::Stmts.new(
                    PAST::Op.new(
                        :pasttype('callmethod'), :name('publish_parrot_vtable_mapping'),
                        PAST::Op.new( :pirop('get_how PP'), $slot_past ),
                        $slot_past
                    ),
                    PAST::Op.new(
                        :pasttype('callmethod'), :name('publish_parrot_vtablee_handler_mapping'),
                        PAST::Op.new( :pirop('get_how PP'), $slot_past ),
                        $slot_past
                    ))));
            }
        }
    }
    
    # Generates a series of PAST operations that will build this context if
    # it doesn't exist, and fix it up if it already does.
    method to_past() {
        if self.is_precompilation_mode() {
            my $load_tasks := PAST::Stmts.new();
            for self.load_dependency_tasks() {
                $load_tasks.push(PAST::Stmt.new($_));
            }
            my $fixup_tasks := PAST::Stmts.new();
            for self.fixup_tasks() {
                $fixup_tasks.push(PAST::Stmt.new($_));
            }
            return PAST::Stmts.new(
                PAST::Op.new( :pirop('nqp_dynop_setup v') ),
                PAST::Op.new( :pirop('nqp_bigint_setup v') ),
                PAST::Op.new(
                    :pasttype('callmethod'), :name('hll_map'),
                    PAST::Op.new( :pirop('getinterp P') ),
                    PAST::Op.new( :pirop('get_class Ps'), 'LexPad' ),
                    PAST::Op.new( :pirop('get_class Ps'), 'NQPLexPad' )
                ),
                PAST::Op.new(
                    :pasttype('bind_6model'),
                    PAST::Var.new( :name('cur_sc'), :scope('register'), :isdecl(1) ),
                    PAST::Op.new( :pirop('nqp_create_sc Ps'), self.handle() )
                ),
                PAST::Op.new(
                    :pasttype('callmethod'), :name('set_description'),
                    PAST::Var.new( :name('cur_sc'), :scope('register') ),
                    self.sc.description
                ),
                $load_tasks,
                self.serialize_and_produce_deserialization_past('cur_sc'),
                $fixup_tasks
            );
        }
        else {
            my $tasks := PAST::Stmts.new();
            for self.load_dependency_tasks() {
                $tasks.push(PAST::Stmt.new($_));
            }
            for self.fixup_tasks() {
                $tasks.push(PAST::Stmt.new($_));
            }
            return $tasks
        }
    }
    
    # Checks if the given name is known anywhere in the lexpad
    # and with lexical scope.
    method is_lexical($name) {
        self.is_scope($name, 'lexical')
    }
    
    # Checks if the given name is known anywhere in the lexpad
    # and with package scope.
    method is_package($name) {
        self.is_scope($name, 'package')
    }
    
    # Checks if a given name is known in the lexpad anywhere
    # with the specified scope.
    method is_scope($name, $wanted_scope) {
        my $i := +@!BLOCKS;
        while $i > 0 {
            $i := $i - 1;
            my %sym := @!BLOCKS[$i].symbol($name);
            if +%sym {
                return %sym<scope> eq $wanted_scope;
            }
        }
        0;
    }
    
    # Checks if the symbol is known.
    method known_sym($/, @name) {
        my $known := 0;
        try {
            self.find_sym(@name);
            $known := 1;
        }
        $known
    }
    
    # Finds a symbol that has a known value at compile time from the
    # perspective of the current scope. Checks for lexicals, then if
    # that fails tries package lookup.
    method find_sym(@name) {
        # Make sure it's not an empty name.
        unless +@name { pir::die("Cannot look up empty name"); }
        
        # If it's a single-part name, look through the lexical
        # scopes.
        if +@name == 1 {
            my $final_name := @name[0];
            my $i := +@!BLOCKS;
            while $i > 0 {
                $i := $i - 1;
                my %sym := @!BLOCKS[$i].symbol($final_name);
                if +%sym {
                    if pir::exists(%sym, 'value') {
                        return %sym<value>;
                    }
                    else {
                        pir::die("No compile-time value for $final_name");
                    }
                }
            }
        }
        
        # If it's a multi-part name, see if the containing package
        # is a lexical somewhere. Otherwise we fall back to looking
        # in GLOBALish.
        my $result := $*GLOBALish;
        if +@name >= 2 {
            my $first := @name[0];
            my $i := +@!BLOCKS;
            while $i > 0 {
                $i := $i - 1;
                my %sym := @!BLOCKS[$i].symbol($first);
                if +%sym {
                    if pir::exists(%sym, 'value') {
                        $result := %sym<value>;
                        @name.shift();
                        $i := 0;
                    }
                    else {
                        pir::die("No compile-time value for $first");
                    }                    
                }
            }
        }
        
        # Try to chase down the parts of the name.
        for @name {
            if pir::exists($result.WHO, ~$_) {
                $result := ($result.WHO){$_};
            }
            else {
                pir::die("Could not locate compile-time value for symbol " ~
                    pir::join('::', @name));
            }
        }
        
        $result;
    }
}
