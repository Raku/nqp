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
    # The objects that live in or should be built by this context.
    has @!root_objects;
    
    # Address => slot mapping, we we can quickly look up existing objects
    # in the context.
    has %!addr_to_slot;
    sub addr($obj) {
        pir::get_addr__IP($obj)
    }
    
    # The event stream that builds them.
    has @!event_stream;
    
    # Gets the slot for a given object. Dies if it is not in the context.
    method slot_for($obj) {
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
    method get_slot_past($obj) {
        my $slot := self.slot_for($obj);
        return PAST::Op.new( :pirop('nqp_get_sc_object Pi'), $slot );
    }
    
    # Creates a meta-object for a package, adds it to the root objects and
    # stores an event for the action. Returns the created object.
    method pkg_create_mo($how, :$name, :$repr) {
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
    }
    
    # Gets the root object graph for the serialization context, which can
    # be attached to the compiled output.
    method root_objects() {
        @!root_objects
    }
    
    # Generates a series of PAST operations that will build this context if
    # it doesn't exist, and fix it up if it already does.
    method to_past() {
    }
}















