use NQPP6QRegex;
use QAST;

class NQP::World is HLL::World {
    # The stack of lexical pads, actually as QAST::Block objects. The
    # outermost frame is at the bottom, the latest frame is on top.
    has @!BLOCKS;
    
    # Set of code objects that need to be fixed up if dynamic compilation
    # takes place (that is, compiling parts of the program early during
    # compile time because they're needed at a BEGIN phase). Maps per-
    # compilation unit ID to a list of code objects.
    has %!code_objects_to_fix_up;
    
    # The types of those code objects.
    has %!code_object_types;
    
    # Mapping of QAST::Stmts node containing fixups, keyed by sub ID. If
    # we do dynamic compilation then we do the fixups immediately and
    # then clear this list.
    has %!code_object_fixup_list;
    
    # Mapping of sub IDs to SC indexes of code stubs.
    has %!code_stub_sc_idx;
    
    # Clear-up tasks.
    has @!clearup_tasks; 
    
    method BUILD(*%opts) {
        @!BLOCKS := nqp::list();
        %!code_objects_to_fix_up := nqp::hash();
        %!code_object_types := nqp::hash();
        %!code_object_fixup_list := nqp::hash();
        %!code_stub_sc_idx := nqp::hash();
        @!clearup_tasks := nqp::list();

        if nqp::defined(%*COMPILING<%?OPTIONS><dynext>) {
            my $dynext_path  := %*COMPILING<%?OPTIONS><dynext>;
            my @dynext_paths := pir::getinterp__P()[pir::const::IGLOBALS_LIB_PATHS][pir::const::PARROT_LIB_PATH_DYNEXT];

            @dynext_paths.push($dynext_path);
        }
    }
    
    # Creates a new lexical scope and puts it on top of the stack.
    method push_lexpad($/) {
        # Create pad, link to outer and add to stack.
        my $pad := QAST::Block.new( QAST::Stmts.new(), :node($/) );
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

    # We need to load the module loader to load modules, which means we
    # can't just use ...; it; we break the circularity by using the global
    # HLL symbol stash.
    my $loader := nqp::getcurhllsym('ModuleLoader');
    
    # Loads the setting and emits code 
    method load_setting($setting_name) {
        # Do nothing for the NULL setting.
        if $setting_name ne 'NULL' {    
            # Load it immediately, so the compile time info is available.
            # Once it's loaded, set it as the outer context of the code
            # being compiled.
            my $setting := %*COMPILING<%?OPTIONS><outer_ctx>
                        := $loader.load_setting($setting_name);
            

            # Emit fixup or loading code.
            my $set_outer := QAST::VM.new(
                :parrot(QAST::Op.new(
                    :op('callmethod'), :name('set_outer_ctx'),
                    QAST::BVal.new( :value($*UNIT) ),
                    QAST::Op.new(
                        :op('callmethod'), :name('load_setting'),
                        QAST::Op.new(
                            :op('getcurhllsym'),
                            QAST::SVal.new( :value('ModuleLoader') )
                        ),
                        QAST::SVal.new( :value($setting_name) )
                    ))),
                :jvm(QAST::Op.new(
                    :op('forceouterctx'),
                    QAST::BVal.new( :value($*UNIT) ),
                    QAST::Op.new(
                        :op('callmethod'), :name('load_setting'),
                        QAST::Op.new(
                            :op('getcurhllsym'),
                            QAST::SVal.new( :value('ModuleLoader') )
                        ),
                        QAST::SVal.new( :value($setting_name) )
                    ))));
            if self.is_precompilation_mode() {
                self.add_load_dependency_task(:deserialize_past(QAST::Stmts.new(
                    QAST::Op.new(
                        :op('loadbytecode'),
                        QAST::VM.new(
                            :parrot(QAST::SVal.new( :value('ModuleLoader.pbc') )),
                            :jvm(QAST::SVal.new( :value('ModuleLoader.class') ))
                        )),
                    $set_outer
                )));
            }
            else {
                self.add_fixup_task(:fixup_past($set_outer));
            }
            
            return nqp::ctxlexpad($setting, 'lex_pad');
        }
    }
    
    # Loads a module immediately, and also makes sure we load it
    # during the deserialization.
    method load_module($module_name, $cur_GLOBALish) {
        # Immediate loading.
        my $module := $loader.load_module($module_name, $cur_GLOBALish);
        
        # Make sure we do the loading during deserialization.
        if self.is_precompilation_mode() {
            self.add_load_dependency_task(:deserialize_past(QAST::Stmts.new(
                QAST::Op.new(
                    :op('loadbytecode'),
                    QAST::VM.new(
                        :parrot(QAST::SVal.new( :value('ModuleLoader.pbc') )),
                        :jvm(QAST::SVal.new( :value('ModuleLoader.class') ))
                    )),
                QAST::Op.new(
                   :op('callmethod'), :name('load_module'),
                   QAST::Op.new(
                        :op('getcurhllsym'),
                        QAST::SVal.new( :value('ModuleLoader') )
                    ),
                    QAST::SVal.new( :value($module_name) )
                ))));
        }

        return nqp::ctxlexpad($module, 'lex_pad');
    }
    
    method import($stash) {
        my $target := self.cur_lexpad();
        for $stash {
            self.install_lexical_symbol($target, $_.key, $_.value);
        }
    }
    
    # Installs a symbol into the package. Does so immediately, and
    # makes sure this happens on deserialization also.
    method install_package_symbol($package, @sym, $obj) {
        @sym := nqp::clone(@sym);
        my $name := ~@sym.pop();
        
        # Install symbol immediately.
        my $target := $package;
        for @sym {
            if nqp::existskey($target.WHO, $_) {
                $target := nqp::atkey($target.WHO, $_);
            }
            else {
                my $pkgtype := nqp::existskey(%*HOW, 'package')
                    ?? nqp::atkey(%*HOW, 'package')
                    !! nqp::atkey(%*HOW, 'knowhow');
                my $pkg := $pkgtype.new_type(:name($_));
                $pkg.HOW.compose($pkg);
                $target := nqp::bindkey($target.WHO, $_, $pkg);
            }
        }
        ($target.WHO){$name} := $obj;
    }
    
    # Installs a lexical symbol. Takes a QAST::Block object, name and
    # the object to install. Does an immediate installation in the
    # compile-time block symbol table, and ensures that the installation
    # gets fixed up at runtime too.
    method install_lexical_symbol($block, $name, $obj) {
        # Install the object directly as a block symbol.
        $block.symbol($name, :scope('lexical'), :value($obj));
        $block[0].push(QAST::Var.new( :scope('lexical'), :name($name), :decl('var') ));
        
        # Fixup and deserialization task is the same.
        my $fixup := QAST::Op.new(
            :op('setstaticlex'),
            $block,
            QAST::SVal.new( :value($name) ),
            QAST::WVal.new( :value($obj) )
        );
        self.add_fixup_task(:deserialize_past($fixup), :fixup_past($fixup));
    }
    
    # Adds a fixup to install a specified QAST::Block in a package under the
    # specified name.
    method install_package_routine($package, $name, $past_block) {
        my $fixup := QAST::Op.new(
            :op('bindkey'),
            QAST::Op.new( :op('who'), QAST::WVal.new( :value($package) ) ),
            QAST::SVal.new( :value(~$name) ),
            QAST::BVal.new( :value($past_block) )
        );
        self.add_fixup_task(:deserialize_past($fixup), :fixup_past($fixup));
    }
    
    # Registers a code object, and gives it a dynamic compilation thunk.
    # Makes a real code object if it's a dispatcher.
    method create_code($past, $name, $is_dispatcher, :$code_type_name = 'NQPRoutine') {
        # See if NQPRoutine is available to wrap this up in.
        my $code_type;
        my $have_code_type := 0;
        try {
            $code_type := self.find_sym([$code_type_name]);
            $have_code_type := $*PACKAGE.HOW.name($*PACKAGE) ne $code_type_name;
        }
        
        # For code refs, we need a "stub" that we'll clone and use for the
        # compile-time representation. If it ever gets invoked it'll go
        # and compile the code and run it.
        # XXX Lexical environment.
        my $stub_code := sub (*@args, *%named) {
            # Do the compilation.
            $past.unshift(self.libs());
            my $nqpcomp  := nqp::getcomp('nqp');
            my $post     := $nqpcomp.post(QAST::CompUnit.new( :hll('nqp'), $past ));
            my $pir      := $nqpcomp.pir($post);
            my $compiled := $nqpcomp.evalpmc($pir);

            # Fix up any code objects holding stubs with the real compiled thing.
            my $c := nqp::elems($compiled);
            my $i := 0;
            while $i < $c {
                my $subid := $compiled[$i].get_subid();
                if nqp::existskey(%!code_objects_to_fix_up, $subid) {
                    # First, go over the code objects. Update the $!do, and the
                    # entry in the SC. Make sure the newly compiled code is marked
                    # as a static code ref.
                    my $static := %!code_objects_to_fix_up{$subid}.shift();
                    nqp::bindattr($static, %!code_object_types{$subid}, '$!do', $compiled[$i]);
                    nqp::bindattr($static, %!code_object_types{$subid}, '$!clone_callback', nqp::null());
                    for %!code_objects_to_fix_up{$subid} {
                        nqp::bindattr($_, %!code_object_types{$subid}, '$!do', nqp::clone($compiled[$i]));
                        nqp::bindattr($_, %!code_object_types{$subid}, '$!clone_callback', nqp::null());
                    }
                    pir::setprop__vPsP($compiled[$i], 'STATIC_CODE_REF', $compiled[$i]);
                    self.update_root_code_ref(%!code_stub_sc_idx{$subid}, $compiled[$i]);
                    
                    # Clear up the fixup statements.
                    my $fixup_stmts := %!code_object_fixup_list{$subid};
                    $fixup_stmts.shift() while +@($fixup_stmts);
                }
                $i := $i + 1;
            }
            
            $compiled(|@args, |%named);
        };
        
        # Create code object, if we'll need one.
        my $code_obj;
        if $have_code_type {
            $code_obj := nqp::create($code_type);
        }
        
        # See if we already have our compile-time dummy. If not, create it.
        my $fixups := QAST::Stmts.new();
        my $dummy;
        my $code_ref_idx;
        if nqp::defined($past<compile_time_dummy>) {
            $dummy := $past<compile_time_dummy>;
        }
        else {
            # Create a fresh stub code, and set its name.
            $dummy := nqp::freshcoderef($stub_code);
            nqp::setcodename($dummy, $name);
            
            # Tag it as a static code ref and add it to the root code refs set.
            pir::setprop__vPsP($dummy, 'STATIC_CODE_REF', $dummy);
            pir::setprop__vPsP($dummy, 'COMPILER_STUB', $dummy);
            $code_ref_idx := self.add_root_code_ref($dummy, $past);
            %!code_stub_sc_idx{$past.cuid()} := $code_ref_idx;
            $past<compile_time_dummy> := $dummy;
            
            # Things with code objects may be methods in roles or multi-dispatch
            # routines. We need to handle their cloning and maintain the fixup
            # list.
            if $have_code_type {
                %!code_object_fixup_list{$past.cuid()} := $fixups;
                if self.is_precompilation_mode() {
                    my $cb := sub ($orig, $clone, $code_obj) {
                        %!code_objects_to_fix_up{$past.cuid()}.push($code_obj);
                        nqp::bindattr($code_obj, $code_type, '$!clone_callback', nqp::null());
                        my $do := nqp::getattr($code_obj, $code_type, '$!do');
                        pir::setprop__vPsP($do, 'COMPILER_STUB', $do);
                    }
                    nqp::bindattr($code_obj, $code_type, '$!clone_callback', $cb);
                    nqp::push(@!clearup_tasks, sub () {
                        nqp::bindattr($code_obj, $code_type, '$!clone_callback', nqp::null());
                    });
                }
                else {
                    my $cb := sub ($orig, $clone, $code_obj) {
                        # Emit fixup code.
                        self.add_object($code_obj);
                        $fixups.push(QAST::Op.new(
                            :op('setcodeobj'),
                            QAST::Op.new(
                                :op('bindattr'),
                                QAST::WVal.new( :value($code_obj) ),
                                QAST::WVal.new( :value($code_type) ),
                                QAST::SVal.new( :value('$!do') ),
                                QAST::Op.new( :op('clone'), QAST::BVal.new( :value($past) ) )
                            ),
                            QAST::WVal.new( :value($code_obj) )
                        ));
                            
                        # Add to dynamic compilation fixup list.
                        %!code_objects_to_fix_up{$past.cuid()}.push($code_obj);
                    };
                    nqp::bindattr($code_obj, $code_type, '$!clone_callback', $cb);
                    nqp::push(@!clearup_tasks, sub () {
                        nqp::bindattr($code_obj, $code_type, '$!clone_callback', nqp::null());
                    });
                }
            }
        }
        
        # Add fixups task node; it'll get populated or cleared during the compile.
        self.add_fixup_task(:fixup_past($fixups));
        
        # Provided we have the code type, now wrap what we have up in a
        # code object.
        if $have_code_type {
            # Create it now.
            nqp::bindattr($code_obj, $code_type, '$!do', $dummy);
            nqp::bindattr($code_obj, $code_type, '$!dispatchees', nqp::list())
                if $is_dispatcher;
            my $slot := self.add_object($code_obj);

            # Add deserialization fixup task.
            self.add_fixup_task(
                :deserialize_past(QAST::Op.new(
                    :op('setcodeobj'),
                    QAST::BVal.new( :value($past) ),
                    QAST::WVal.new( :value($code_obj) )
                )));
            
            # Add fixup of the code object and the $!do attribute.
            $fixups.push(QAST::Op.new(
                :op('bindattr'),
                QAST::WVal.new( :value($code_obj) ),
                QAST::WVal.new( :value($code_type) ),
                QAST::SVal.new( :value('$!do') ),
                QAST::BVal.new( :value($past) )
            ));
            $fixups.push(QAST::Op.new(
                :op('setcodeobj'),
                QAST::BVal.new( :value($past) ),
                QAST::WVal.new( :value($code_obj) )
            ));
            
            # Add it to the dynamic compilation fixup todo list.
            %!code_objects_to_fix_up{$past.cuid()} := [$code_obj];
            %!code_object_types{$past.cuid()} := $code_type;
            
            $code_obj
        }
        else {
            # For fixup, if we have no code body, we need to assign the method body
            # we actually compiled into the one that went into the SC.
            $fixups.push(QAST::Op.new(
                :op('replacecoderef'),
                QAST::Op.new(
                    :op('scgetcode'),
                    QAST::SVal.new( :value(self.handle()) ),
                    QAST::IVal.new( :value($code_ref_idx) )
                ),
                QAST::BVal.new( :value($past) )
            ));
            return $dummy;
        }
    }
    
    # Creates a meta-object for a package, adds it to the root objects and
    # stores an event for the action. Returns the created object.
    method pkg_create_mo($how, :$name, :$repr) {
        # Create the meta-object and add to root objects.
        my %args;
        if nqp::defined($name) { %args<name> := $name; }
        if nqp::defined($repr) { %args<repr> := $repr; }
        my $mo := $how.new_type(|%args);
        self.add_object($mo);

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
        $attr
    }
    
    # Adds a method to the meta-object.
    method pkg_add_method($obj, $meta_method_name, $name, $code) {
        $obj.HOW."$meta_method_name"($obj, $name, $code);
    }
    
    # Associates a signature with a code object.
    method set_routine_signature($code_obj, $types, $definednesses) {
        my $sig_type  := self.find_sym(['NQPSignature']);
        my $code_type := self.find_sym(['NQPRoutine']);
        my $sig_obj   := nqp::create($sig_type);
        nqp::bindattr($sig_obj, $sig_type, '$!types', $types);
        nqp::bindattr($sig_obj, $sig_type, '$!definednesses', $definednesses);
        nqp::bindattr($code_obj, $code_type, '$!signature', $sig_obj);
    }
    
    # This handles associating the role body with a role declaration.
    method pkg_set_body_block($obj, $body_past) {
        # Get a code object for the body block.
        my $body_code_obj := self.create_code($body_past, $body_past.name, 0);
        
        # Set it as the body block.
        $obj.HOW.set_body_block($obj, $body_code_obj);
    }
    
    # Adds a parent or role to the meta-object.
    method pkg_add_parent_or_role($obj, $meta_method_name, $to_add) {
        $obj.HOW."$meta_method_name"($obj, $to_add);
    }

    method pkg_add_parrot_vtable_handler_mapping($obj, $name, $att_name) {
        $obj.HOW.add_parrot_vtable_handler_mapping($obj, $name, $att_name);
    }

    # Composes the package.
    method pkg_compose($obj) {
        $obj.HOW.compose($obj);
    }
    
    # Runs a block at BEGIN time.
    method run_begin_block($past) {
        # Create a wrapper that makes all outer symbols visible.
        my $wrapper := QAST::Block.new(
            QAST::Stmts.new(),
            $past
        );
        my %seen;
        my $i := +@!BLOCKS;
        while $i > 0 {
            $i := $i - 1;
            my %symbols := @!BLOCKS[$i].symtable();
            for %symbols {
                if !%seen{$_.key} && nqp::existskey($_.value, 'value') {
                    try {
                        $wrapper[0].push(QAST::Op.new(
                            :op('bind'),
                            QAST::Var.new( :name($_.key), :scope('lexical'), :isdecl('var') ),
                            QAST::WVal.new( :value(($_.value)<value>) )
                        ));
                    };
                    %seen{$_.key} := 1;
                }
            }
        }
        
        # Compile and run it.
        my $code := self.create_code($wrapper, 'BEGIN block', 0);
        my $old_global := nqp::getcurhllsym('GLOBAL');
        nqp::bindcurhllsym('GLOBAL', $*GLOBALish);
        $code();
        nqp::bindcurhllsym('GLOBAL', $old_global);
        
        # Need any nested blocks inside the BEGIN block to make it into the
        # output code.
        $wrapper.shift();
        return $wrapper;
    }
    
    # Adds libraries that NQP code depends on.
    method libs() {
        # Need to load the NQP dynops/dympmcs, plus any extras requested.
        my @loadlibs := ['nqp_group', 'nqp_ops', 'nqp_bigint_ops', 'trans_ops', 'io_ops'];
        if %*COMPILING<%?OPTIONS><vmlibs> {
            for nqp::split(',', %*COMPILING<%?OPTIONS><vmlibs>) {
                @loadlibs.push($_);
            }
        }
        QAST::VM.new(
            loadlibs => @loadlibs,
            jvm => QAST::Op.new( :op('null') ) );
    }
    
    # Adds some initial tasks.
    method add_initializations() {
        self.add_load_dependency_task(:deserialize_past(QAST::VM.new(
            :parrot(QAST::Stmts.new(
                QAST::VM.new( :pirop('nqp_dynop_setup v') ),
                QAST::VM.new( :pirop('nqp_bigint_setup v') ),
                QAST::Op.new(
                    :op('callmethod'), :name('hll_map'),
                    QAST::VM.new( :pirop('getinterp P') ),
                    QAST::VM.new( :pirop('get_class Ps'), QAST::SVal.new( :value('LexPad') ) ),
                    QAST::VM.new( :pirop('get_class Ps'), QAST::SVal.new( :value('NQPLexPad') ) )
                ))),
            :jvm(QAST::Op.new( :op('null') ))
        )));
    }
    
    # Does cleanups.
    method cleanup() {
        for @!clearup_tasks { $_() }
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
        unless +@name { nqp::die("Cannot look up empty name"); }
        
        # If it's a single-part name, look through the lexical
        # scopes.
        if +@name == 1 {
            my $final_name := @name[0];
            my $i := +@!BLOCKS;
            while $i > 0 {
                $i := $i - 1;
                my %sym := @!BLOCKS[$i].symbol($final_name);
                if +%sym {
                    if nqp::existskey(%sym, 'value') {
                        return %sym<value>;
                    }
                    else {
                        nqp::die("No compile-time value for $final_name");
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
                    if nqp::existskey(%sym, 'value') {
                        $result := %sym<value>;
                        @name.shift();
                        $i := 0;
                    }
                    else {
                        nqp::die("No compile-time value for $first");
                    }                    
                }
            }
        }
        
        # Try to chase down the parts of the name.
        for @name {
            if nqp::existskey($result.WHO, ~$_) {
                $result := ($result.WHO){$_};
            }
            else {
                nqp::die("Could not locate compile-time value for symbol " ~
                    nqp::join('::', @name));
            }
        }
        
        $result;
    }
}
