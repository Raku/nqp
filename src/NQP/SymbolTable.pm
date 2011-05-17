use NQPP6Regex;

# This builds upon the SerializationContextBuilder to add the specifics
# needed by NQP.
class NQP::SymbolTable is HLL::Compiler::SerializationContextBuilder {
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
            self.add_event(:deserialize_past(PAST::Stmts.new(
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
            
            return pir::getattribute__PPs($setting, 'lex_pad');
        }
    }
    
    # Loads a module immediately, and also makes sure we load it
    # during the deserialization.
    method load_module($module_name, $cur_GLOBALish) {
        # Immediate loading.
        my $module := $loader.load_module($module_name, $cur_GLOBALish);
        
        # Make sure we do the loading during deserialization.
        self.add_event(:deserialize_past(PAST::Stmts.new(
            PAST::Op.new(
                :pirop('load_bytecode vs'), 'ModuleLoader.pbc'
            ),
            PAST::Op.new(
               :pasttype('callmethod'), :name('load_module'),
               PAST::Var.new( :name('ModuleLoader'), :namespace([]), :scope('package') ),
               $module_name,
               self.get_slot_past_for_object($cur_GLOBALish)
            ))));
            
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
        
        # Add deserialization installation of the symbol.
        my $path := self.get_slot_past_for_object($package);
        for @sym {
            $path := PAST::Op.new(:pirop('nqp_get_package_through_who PPs'), $path, ~$_);
        }
        self.add_event(:deserialize_past(PAST::Op.new(
            :pasttype('bind'),
            PAST::Var.new(
                :scope('keyed'),
                PAST::Op.new( :pirop('get_who PP'), $path ),
                $name
            ),
            self.get_slot_past_for_object($obj)
        )));
    }
    
    # Installs a lexical symbol. Takes a PAST::Block object, name and
    # the object to install. Does an immediate installation in the
    # compile-time block symbol table, and ensures that the installation
    # gets fixed up at runtime too.
    method install_lexical_symbol($block, $name, $obj) {
        # Install the object directly as a block symbol.
        $block.symbol($name, :scope('lexical'), :value($obj));
        $block[0].push(PAST::Var.new( :scope('lexical'), :name($name), :isdecl(1) ));
        
        # Fixup and deserialization task is the same.
        my $fixup := PAST::Stmts.new(
            PAST::Op.new(
                :pasttype('callmethod'), :name('set_static_lexpad_value'),
                PAST::Op.new(
                    :pasttype('callmethod'), :name('get_lexinfo'),
                    PAST::Val.new( :value($block) )
                ),
                ~$name, self.get_slot_past_for_object($obj)
            ),
            # XXX Should only do this once per block we put static stuff
            # in...or find a way to not do it at all.
            PAST::Op.new(
                :pasttype('callmethod'), :name('finish_static_lexpad'),
                PAST::Op.new(
                    :pasttype('callmethod'), :name('get_lexinfo'),
                    PAST::Val.new( :value($block) )
                )
            )
        );
        self.add_event(:deserialize_past($fixup), :fixup_past($fixup));
    }
    
    # Adds a fixup to install a specified PAST::Block in a package under the
    # specified name.
    method install_package_routine($package, $name, $past_block) {
        my $fixup := PAST::Op.new(
            :pasttype('bind'),
            PAST::Var.new(
                :scope('keyed'),
                PAST::Op.new( :pirop('get_who PP'), self.get_slot_past_for_object($package) ),
                ~$name
            ),
            PAST::Val.new( :value($past_block) )
        );
        self.add_event(:deserialize_past($fixup), :fixup_past($fixup));
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
        
        # Add an event. There's no fixup to do, just a type object to create
        # on deserialization.
        my @how_ns := pir::split('::', $how.HOW.name($how));
        my $how_name := @how_ns.pop();
        my $setup_call := PAST::Op.new(
            :pasttype('callmethod'), :name('new_type'),
            self.get_object_sc_ref_past($how)
        );
        if pir::defined($name) {
            $setup_call.push(PAST::Val.new( :value($name), :named('name') ));
        }
        if pir::defined($repr) {
            $setup_call.push(PAST::Val.new( :value($repr), :named('repr') ));
        }
        self.add_event(:deserialize_past(
            self.set_slot_past($slot, self.set_cur_sc($setup_call))));
        
        # Result is just the object.
        return $mo;
    }
    
    # Constructs a meta-attribute and adds it to a meta-object. Expects to
    # be passed the meta-attribute type object, a set of literal named
    # arguments to pass and a set of name to object mappings to pass also
    # as named arguments, but where these passed objects also live in a
    # serialization context. The type would be passed in this way.
    method pkg_add_attribute($obj, $meta_attr, %lit_args, %obj_args) {
        # Create and add right away.
        my $attr := $meta_attr.new(|%lit_args, |%obj_args);
        $obj.HOW.add_attribute($obj, $attr);
        
        # Emit code to create and add it when deserializing.
        my $create_call := PAST::Op.new(
            :pasttype('callmethod'), :name('new'),
            self.get_object_sc_ref_past($meta_attr)
        );
        for %lit_args {
            $create_call.push(PAST::Val.new( :value($_.value), :named($_.key) ));
        }
        for %obj_args {
            my $lookup := self.get_object_sc_ref_past($_.value);
            $lookup.named($_.key);
            $create_call.push($lookup);
        }
        my $obj_slot_past := self.get_slot_past_for_object($obj);
        self.add_event(:deserialize_past(PAST::Op.new(
            :pasttype('callmethod'), :name('add_attribute'),
            PAST::Op.new( :pirop('get_how PP'), $obj_slot_past ),
            $obj_slot_past,
            $create_call
        )));
    }
    
    # Adds a method to the meta-object, and stores an event for the action.
    # Note that methods are always subject to fixing up since the actual
    # compiled code isn't available until compilation is complete.
    method pkg_add_method($obj, $meta_method_name, $name, $method_past, $is_dispatcher) {
        # For methods, we need a "stub" that we'll clone and use for the
        # compile-time representation. If it ever gets invoked it'll go
        # and compile the code and run it.
        # XXX Lexical environment.
        # XXX Cache compiled output.
        my $stub_code := sub (*@args, *%named) {
            my $compiled := PAST::Compiler.compile($method_past);
            $compiled(|@args, |%named);
        };
        
        # See if we already have our compile-time dummy. If not, create it.
        my $fixups := PAST::Stmts.new();
        my $dummy;
        if pir::defined($method_past<compile_time_dummy>) {
            $dummy := $method_past<compile_time_dummy>;
        }
        else {
            # What we create depends on whether it's a dispatcher or not.
            # If it is a dispatcher, set the PMC type it uses and then use
            # that for the dummy.
            if $is_dispatcher {
                $method_past.pirflags(':instanceof("DispatcherSub")');
                $dummy := pir::assign__0PP(pir::new__Ps('DispatcherSub'), $stub_code);
                
                # The dispatcher will get cloned if more candidates are added in
                # a subclass; this makes sure that we fix up the clone also.
                pir::setprop__vPsP($dummy, 'CLONE_CALLBACK', sub ($orig, $clone) {
                    self.add_code($clone);
                    $fixups.push(PAST::Op.new(
                        :pirop('assign vPP'),
                        self.get_slot_past_for_object($clone),
                        PAST::Val.new( :value(pir::getprop__PsP('PAST', $orig)) )
                    ));
                });
            }
            else {
                $dummy := pir::clone__PP($stub_code);
            }
            pir::assign__vPS($dummy, $name);
            self.add_code($dummy);
            $method_past<compile_time_dummy> := $dummy;
        }
        
        # Attach PAST as a property to the dummy.
        pir::setprop__vPsP($dummy, 'PAST', $method_past);
        
        # Add it to the compile time meta-object.
        $obj.HOW."$meta_method_name"($obj, $name, $dummy);
        
        # For fixup, need to assign the method body we actually compiled
        # onto the one that went into the SC. Deserializing is easier -
        # just the straight meta-method call.
        $fixups.push(PAST::Op.new(
            :pirop('assign vPP'),
            self.get_slot_past_for_object($dummy),
            PAST::Val.new( :value($method_past) )
        ));
        my $slot_past := self.get_slot_past_for_object($obj);
        self.add_event(
            :deserialize_past(PAST::Op.new(
                :pasttype('callmethod'), :name($meta_method_name),
                PAST::Op.new( :pirop('get_how PP'), $slot_past ),
                $slot_past,
                $name,
                PAST::Val.new( :value($method_past) )
            )),
            :fixup_past($fixups));
    }
    
    # Associates a signature with a routine.
    method set_routine_signature($routine, $types, $definednesses) {
        # Fixup code depends on if we have the routine in the SC for
        # fixing up. Deserialization always goes on the blockref.
        my $fixup := PAST::Op.new( :pirop('set_sub_multisig vPPP'), $types, $definednesses );
        if pir::defined($routine<compile_time_dummy>) {
            $fixup.unshift(self.get_slot_past_for_object($routine<compile_time_dummy>));
        }
        else {
            $fixup.unshift(PAST::Val.new( :value($routine) ));
        }
        my $des := PAST::Op.new( :pirop('set_sub_multisig vPPP'),
            PAST::Val.new( :value($routine) ), $types, $definednesses
        );
        self.add_event(:deserialize_past($des), :fixup_past($fixup));
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
                    self.add_code($clone);
                    
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
        
        self.add_event(:deserialize_past($des), :fixup_past($fixups));
    }
    
    # Adds a parent or role to the meta-object, and stores an event for
    # the action.
    method pkg_add_parent_or_role($obj, $meta_method_name, $to_add) {
        # Do the actual addition on the meta-object immediately.
        $obj.HOW."$meta_method_name"($obj, $to_add);
        
        # Emit code to add it when deserializing.
        my $slot_past := self.get_slot_past_for_object($obj);
        self.add_event(:deserialize_past(PAST::Op.new(
            :pasttype('callmethod'), :name($meta_method_name),
            PAST::Op.new( :pirop('get_how PP'), $slot_past ),
            $slot_past,
            self.get_object_sc_ref_past($to_add)
        )));
    }

    method pkg_add_parrot_vtable_handler_mapping($obj, $name, $att_name) {
        # Do the actual addition on the meta-object immediately.
        $obj.HOW.add_parrot_vtable_handler_mapping($obj, $name, $att_name);

        # Emit code to add it when deserializing.
        my $slot_past := self.get_slot_past_for_object($obj);
        self.add_event(:deserialize_past(PAST::Op.new(
            :pasttype('callmethod'), :name('add_parrot_vtable_handler_mapping'),
            PAST::Op.new( :pirop('get_how PP'), $slot_past ),
            $slot_past,
			$name, $att_name
        )));
    }

    # Composes the package, and stores an event for this action.
    method pkg_compose($obj) {
        # Compose.
        $obj.HOW.compose($obj);
        
        # Emit code to do the composition when deserializing.
        my $slot_past := self.get_slot_past_for_object($obj);
        self.add_event(:deserialize_past(PAST::Op.new(
            :pasttype('callmethod'), :name('compose'),
            PAST::Op.new( :pirop('get_how PP'), $slot_past ),
            $slot_past
        )));
    }
    
    # Generates a series of PAST operations that will build this context if
    # it doesn't exist, and fix it up if it already does.
    method to_past() {
        my $des := PAST::Stmts.new();
        my $fix := PAST::Stmts.new();
        for self.event_stream() {
            $des.push($_.deserialize_past()) if pir::defined($_.deserialize_past());
            $fix.push($_.fixup_past()) if pir::defined($_.fixup_past());
        }
        make PAST::Op.new(
            :pasttype('if'),
            PAST::Op.new(
                :pirop('isnull IP'),
                PAST::Op.new( :pirop('nqp_get_sc Ps'), self.handle() )
            ),
            PAST::Stmts.new(
                PAST::Op.new( :pirop('nqp_dynop_setup v') ),
                PAST::Op.new(
                    :pasttype('callmethod'), :name('hll_map'),
                    PAST::Op.new( :pirop('getinterp P') ),
                    PAST::Op.new( :pirop('get_class Ps'), 'LexPad' ),
                    PAST::Op.new( :pirop('get_class Ps'), 'NQPLexPad' )
                ),
                PAST::Op.new(
                    :pasttype('bind'),
                    PAST::Var.new( :name('cur_sc'), :scope('register'), :isdecl(1) ),
                    PAST::Op.new( :pirop('nqp_create_sc Ps'), self.handle() )
                ),
                $des
            ),
            $fix
        );
    }
}
