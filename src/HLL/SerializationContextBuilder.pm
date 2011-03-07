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

class HLL::Compiler::SerializationContextBuilder::Event {
    # The PAST that we emit to perform the action if in deserialization mode.
    has $!deserialize_past;
    method deserialize_past() { $!deserialize_past }
    
    # The PAST that we emit to do any fixups if we are in compile-n-run mode.
    has $!fixup_past;
    method fixup_past() { $!fixup_past }
}

class HLL::Compiler::SerializationContextBuilder {
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
            pir::die('slot_for called on object no in context');
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
        return PAST::Op.new( :pirop('nqp_set_sc_object vsiP'), $!handle, $slot, $past_to_set );
    }
    
    # Adds an object to the root set, along with a mapping.
    method add_object($obj) {
        my $idx := $!sc.elems();
        $!sc[$idx] := $obj;
        %!addr_to_slot{addr($obj)} := $idx;
        $idx
    }
    
    method add_event(:$deserialize_past, :$fixup_past) {
        @!event_stream.push(HLL::Compiler::SerializationContextBuilder::Event.new(
            :deserialize_past($deserialize_past), :fixup_past($fixup_past)
        ));
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
            # XXX Scoping issues here...but let's make something work first.
            PAST::Var.new( :name($how_name), :namespace(@how_ns), :scope('package') )
        );
        if pir::defined($name) {
            $setup_call.push(PAST::Val.new( :value($name), :named('name') ));
        }
        if pir::defined($repr) {
            $setup_call.push(PAST::Val.new( :value($repr), :named('repr') ));
        }
        self.add_event(:deserialize_past(self.set_slot_past($slot, $setup_call)));
        
        # Result is just the object.
        return $mo;
    }
    
    # Adds a method to the meta-object, and stores an event for the action.
    # Note that methods are always subject to fixing up since the actual
    # compiled code isn't available until compilation is complete.
    method pkg_add_method($obj, $meta_method_name, $name, $method_past) {
    }
    
    # Adds a parent or role to the meta-object, and stores an event for
    # the action. If the parent or is in this context, it will be referenced
    # directly. Otherwise, it will be looked up using the supplied PAST.
    method pkg_add_parent_or_role($obj, $meta_method_name, $to_add, $to_add_past) {
    }
    
    # Composes the package, and stores an event for this action.
    method pkg_compose($obj) {
        my $slot_past := get_slot_past_for_object($obj);
        self.add_event(:deserialize_past(PAST::Op.new(
            :pasttype('callmethod'), :name('compose'),
            PAST::Op.new( :pirop('get_how PP'), $slot_past ),
            $slot_past
        )));
        $obj
    }
    
    # Gets the built serialization context.
    method sc() {
        @!sc
    }
    
    # Generates a series of PAST operations that will build this context if
    # it doesn't exist, and fix it up if it already does.
    method to_past() {
        # XXX For now we always deserialize, just to get things working.
        my $ds := PAST::Stmts.new();
        for @!event_stream {
            $ds.push($_.deserialize_past());
        }
        $ds
    }
}















