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
    # Note that we can determine which one we need and just save the
    # needed one.
    method add_event(:$deserialize_past, :$fixup_past) {
        if %*COMPILING<%?OPTIONS><target> eq 'pir' {
            # Pre-compilation; only need deserialization PAST.
            @!event_stream.push(Event.new(:deserialize_past($deserialize_past)));
        }
        else {
            # Presumably, going all the way to running, so just fixups.
            @!event_stream.push(Event.new(:fixup_past($fixup_past)));
        }
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
    
    # Gets the built serialization context.
    method sc() {
        $!sc
    }
    
    # Gets the SC handle.
    method handle() {
         $!handle
    }
    
    # Gets the event stream.
    method event_stream() {
        @!event_stream
    }
}
