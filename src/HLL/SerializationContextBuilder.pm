# A serialization context contains a bunch of objects that we want to persist
# across the compile time / run time boundary.
#
# The long term goal is that we'll support actually serializing these in an
# efficient way, and be able to do load-time linking between objects in
# different libraries. For now, that's a lot of work, so we adopt a simpler
# approach, in the hope that it will be upgradeable to a "full blown"
# mechanism in the future.
#
# A serialization context is essentially made up of objects and "events" that
# we perform on them. By performing an action on an object through the context
# builder, it ensures that the action is performed both on the object now, and
# also enough information is persisted to be able to re-create an object with
# the same state. There are two common situations.
#
# 1) We compile some code and run it straight away. In this case, the objects
#    have already been created, and we only need to do some fixing up.
# 2) We compile some code and persist it as PIR. In this case, the objects need
#    to be re-created by replaying the event stream that creates them.
#
# Essentially, we use PIR as our serialization language until we can do better.
# Note that deserialization and installation aren't the same thing; the first
# step sees us producing an array of objects, while the second is about putting
# them in places the HLL can find them.
#
# It may be that this approach will also carry almost directly over to nqpclr
# and nqpjvm.

class HLL::Compiler::SerializationContextBuilder {
    # Represents an event that we need to handle when fixing up or deserializing.
    my class Event {
        # The PAST that we emit to perform the action if in deserialization mode.
        has $!deserialize_past;
        method deserialize_past() { $!deserialize_past }
        
        # The PAST that we emit to do any fixups if we are in compile-n-run mode.
        has $!fixup_past;
        method fixup_past() { $!fixup_past }
    }

    # The serialization context that we're building.
    has $!sc;
    
    # The handle for the context.
    has $!handle;
    
    # Address => slot mapping, so we can quickly look up existing objects
    # in the context.
    has %!addr_to_slot;
    sub addr($obj) {
        pir::get_addr__IP($obj)
    }
    
    # The event stream that builds or fixes up objects.
    has @!event_stream;
    
    # XXX Fix BUILD...
    method new(:$handle!) {
        my $obj := self.CREATE();
        $obj.BUILD(:handle($handle));
        $obj
    }
    
    method BUILD(:$handle) {
        $!sc := pir::nqp_create_sc__PS($handle);
        $!handle := $handle;
        %!addr_to_slot := pir::new('Hash');
        @!event_stream := pir::new('ResizablePMCArray');
    }
    
    # Gets the slot for a given object. Dies if it is not in the context.
    method slot_for_object($obj) {
        my $slot := %!addr_to_slot{addr($obj)};
        unless pir::defined($slot) {
            pir::die('slot_for_object called on object not in context');
        }
        $slot
    }
    
    # Gets a PAST node that accesses a given slot in the root objects. This
    # is useful when building code that needs to grab a pre-built object (e.g.
    # for doing installations in the package or lexpad, or when the object is
    # a constant and we're using the SC as a constants table).
    method get_slot_past_for_object($obj) {
        my $slot := self.slot_for_object($obj);
        return PAST::Op.new( :pirop('nqp_get_sc_object Psi'), $!handle, $slot );
    }
    
    # Utility sub to wrap PAST with slot setting.
    method set_slot_past($slot, $past_to_set) {
        return PAST::Op.new( :pirop('nqp_set_sc_object vsiP'),
            $!handle, $slot, $past_to_set);
    }
    
    # Used when deserializing. Makes sure the object being
    # deserialized has the current SC set.
    method set_cur_sc($to_wrap) {
        PAST::Op.new(
            :pirop('nqp_set_sc_for_object__0PP'),
            $to_wrap,
            PAST::Var.new( :name('cur_sc'), :scope('register') )
        )
    }
    
    # Adds an object to the root set, along with a mapping.
    method add_object($obj) {
        pir::nqp_set_sc_for_object__vPP($obj, $!sc);
        my $idx := $!sc.elems();
        $!sc[$idx] := $obj;
        %!addr_to_slot{addr($obj)} := $idx;
        $idx
    }
    
    # Adds a code ref to the root set, along with a mapping.
    method add_code($obj) {
        my $idx := $!sc.elems();
        $!sc[$idx] := $obj;
        %!addr_to_slot{addr($obj)} := $idx;
        $idx
    }

    # Add an event that may have an action to deserialize or fix up.
    method add_event(:$deserialize_past, :$fixup_past) {
        @!event_stream.push(Event.new(
            :deserialize_past($deserialize_past), :fixup_past($fixup_past)
        ));
    }
    
    # Gets PAST for referencing an object in a serialization context,
    # either the one being built or another one.
    method get_object_sc_ref_past($obj) {
        # Get the object's serialization context; we're stuck if it
        # has none.
        my $sc := pir::nqp_get_sc_for_object__PP($obj);
        unless pir::defined($sc) {
            pir::die("Object of type '" ~ $obj.HOW.name($obj) ~
                "' cannot be referenced without having been " ~
                "assigned a serialization context");
        }
        
        # If it's this context, dead easy. Otherwise, need to build a
        # cross-reference.
        if $sc =:= $!sc {
            self.get_slot_past_for_object($obj);
        }
        else {
            PAST::Op.new( :pirop('nqp_get_sc_object Psi'),
                $sc.handle, $sc.slot_index_for($obj)
            )
        }
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
    # For methods, we need a "stub" that we'll clone and use for the
    # compile-time representation. It'll really just complain that it
    # does that code hasn't been compiled yet. (Need something more
    # complex to handle roles, but one step at a time...)
    my $stub_code := sub (*@args, *%named) {
        pir::die("Cannot run code that has not yet been compiled.");
    };
    
    # Adds a method to the meta-object, and stores an event for the action.
    # Note that methods are always subject to fixing up since the actual
    # compiled code isn't available until compilation is complete.
    method pkg_add_method($obj, $meta_method_name, $name, $method_past) {
        # See if we already have our compile-time dummy. If not,
        # create it.
        my $dummy;
        if pir::defined($method_past<compile_time_dummy>) {
            $dummy := $method_past<compile_time_dummy>;
        }
        else {
            $dummy := pir::clone__PP($stub_code);
            pir::assign__vPS($dummy, $name);
            self.add_code($dummy);
            $method_past<compile_time_dummy> := $dummy;
        }
        
        # Add it to the compile time meta-object.
        $obj.HOW."$meta_method_name"($obj, $name, $dummy);
        
        # For fixup, need to copy the method body we actually compiled
        # onto the one that went into the SC. Deserializing is easier -
        # just the straight meta-method call.
        my $slot_past := self.get_slot_past_for_object($obj);
        self.add_event(
            :deserialize_past(PAST::Op.new(
                :pasttype('callmethod'), :name($meta_method_name),
                PAST::Op.new( :pirop('get_how PP'), $slot_past ),
                $slot_past,
                $name,
                PAST::Val.new( :value($method_past) )
            )),
            :fixup_past(PAST::Op.new(
                :pirop('copy vPP'),
                self.get_slot_past_for_object($dummy),
                PAST::Val.new( :value($method_past) )
            )));
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
    
    # Composes the package, and stores an event for this action.
    method pkg_compose($obj) {
        # Compose.
        $obj.HOW.compose($obj);
        
        # Emit code to do the composition when deserializing.
        my $slot_past := get_slot_past_for_object($obj);
        self.add_event(:deserialize_past(PAST::Op.new(
            :pasttype('callmethod'), :name('compose'),
            PAST::Op.new( :pirop('get_how PP'), $slot_past ),
            $slot_past
        )));
    }
    
    # Gets the built serialization context.
    method sc() {
        $!sc
    }
    
    # Generates a series of PAST operations that will build this context if
    # it doesn't exist, and fix it up if it already does.
    method to_past() {
        my $des := PAST::Stmts.new();
        my $fix := PAST::Stmts.new();
        for @!event_stream {
            $des.push($_.deserialize_past()) if pir::defined($_.deserialize_past());
            $fix.push($_.fixup_past()) if pir::defined($_.fixup_past());
        }
        make PAST::Op.new(
            :pasttype('if'),
            PAST::Op.new(
                :pirop('isnull IP'),
                PAST::Op.new( :pirop('nqp_get_sc Ps'), $!handle )
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
                    PAST::Op.new( :pirop('nqp_create_sc Ps'), $!handle )
                ),
                $des
            ),
            $fix
        );
    }
}











