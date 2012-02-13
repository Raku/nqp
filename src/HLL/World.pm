# While the grammar represents the syntactic elements of our language and
# the actions take care of building up an AST to represent the semantics
# of it, the world is about the declarative aspects of a language. This
# includes:
#
# * Symbol table management
# * Creating meta-object instances
# * Parts of library loading (most likely it delegates to an actual loader)
# * Resolving references to objects, within or between compilation units
#
# Just as there is one AST produced per compilation unit, there is also a
# world produce per compilation unit.
#
# A world includes a serialization context. This contains a bunch of
# objects - often meta-objects - that we want to persist across the
# compile time / run time boundary. If we're doing pre-compilation
# rather than "immediate run" then we serialize the contents of the
# serialization context.

class HLL::World {
    # Represents an event that we need to handle when fixing up or deserializing.
    my class Event {
        # The PAST that we emit to perform the action if in deserialization mode.
        has $!deserialize_past;
        method deserialize_past() { $!deserialize_past }
        
        # The PAST that we emit to do any fixups if we are in compile-n-run mode.
        has $!fixup_past;
        method fixup_past() { $!fixup_past }
        
        method new(:$deserialize_past, :$fixup_past) {
            my $node := nqp::create(self);
            nqp::bindattr($node, Event, '$!deserialize_past', $deserialize_past);
            nqp::bindattr($node, Event, '$!fixup_past', $fixup_past);
            $node
        }
    }

    # The serialization context that we're building.
    has $!sc;
    
    # The handle for the context.
    has $!handle;
    
    # Whether we're in pre-compilation mode.
    has $!precomp_mode;
    
    # The number of code refs we've added to the code refs root so far.
    has $!num_code_refs;
    
    # List of PAST blocks that map to the code refs table, for use in
    # building deserialization code.
    has $!code_ref_blocks;
    
    # The event stream that builds or fixes up objects.
    has @!event_stream;
    
    # Address => slot mapping, so we can quickly look up existing objects
    # in the context.
    # XXX LEGACY
    has %!addr_to_slot;
    
    # Other SCs that we are dependent on (maps handle to SC).
    # XXX LEGACY
    has %!dependencies;
    
    method new(:$handle!, :$description = '<unknown>') {
        my $obj := self.CREATE();
        $obj.BUILD(:handle($handle), :description($description));
        $obj
    }
    
    method BUILD(:$handle!, :$description!) {
        $!sc           := pir::nqp_create_sc__PS($handle);
        $!handle       := $handle;
        %!addr_to_slot := nqp::hash();
        @!event_stream := nqp::list();
        $!sc.set_description($description);
        $!precomp_mode := %*COMPILING<%?OPTIONS><target> eq 'pir';
        $!num_code_refs := 0;
        $!code_ref_blocks := [];
    }
    
    # Gets the slot for a given object. Dies if it is not in the context.
    method slot_for_object($obj) {
        my $slot := %!addr_to_slot{nqp::where($obj)};
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
        my $past := PAST::Op.new( :pirop('nqp_get_sc_object Psi'), $!handle, $slot );
        $past<has_compile_time_value> := 1;
        $past<compile_time_value> := $obj;
        $past
    }
    
    # Gets a code ref from the SC.
    method get_slot_past_for_code_ref_at($idx) {
        PAST::Op.new( :pirop('nqp_get_sc_code_ref Psi'), $!handle, $idx );
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
    
    method add_object_to_cur_sc_past($slot, $to_wrap) {
        PAST::Op.new(
            :pirop('nqp_add_object_to_sc 2PiP'),
            PAST::Var.new( :name('cur_sc'), :scope('register') ),
            $slot,
            $to_wrap
        )
    }
    
    # Adds an object to the root set, along with a mapping.
    method add_object($obj) {
        pir::nqp_set_sc_for_object__vPP($obj, $!sc);
        my $idx := $!sc.elems();
        $!sc[$idx] := $obj;
        %!addr_to_slot{nqp::where($obj)} := $idx;
        $idx
    }
    
    # Adds a code ref to the root set, along with a mapping.
    # XXX LEGACY: should no longer add to the root set.
    method add_code_LEGACY($obj) {
        my $idx := $!sc.elems();
        $!sc[$idx] := $obj;
        %!addr_to_slot{nqp::where($obj)} := $idx;
        $idx
    }
    
    # Adds a code reference to the root set of code refs.
    method add_root_code_ref($code_ref, $past_block) {
        my $code_ref_idx := $!num_code_refs;
        $!num_code_refs := $!num_code_refs + 1;
        $!code_ref_blocks.push($past_block);
        pir::nqp_add_code_ref_to_sc__vPiP($!sc, $!num_code_refs, $code_ref);
        $code_ref_idx
    }

    # Checks if we are in pre-compilation mode.
    method is_precompilation_mode() {
        $!precomp_mode
    }
    
    # Add an event that may have an action to deserialize or fix up.
    # Note that we can determine which one we need and just save the
    # needed one.
    method add_event(:$deserialize_past, :$fixup_past) {
        if $!precomp_mode {
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
    method get_ref($obj) {
        # Get the object's serialization context; we're stuck if it
        # has none.
        my $sc := pir::nqp_get_sc_for_object__PP($obj);
        unless pir::defined($sc) {
            pir::die("Object of type '" ~ $obj.HOW.name($obj) ~
                "' cannot be referenced without having been " ~
                "assigned a serialization context");
        }
        
        # If it's this context, dead easy. Otherwise, need to build a
        # cross-reference, plus check it if it's the first time we are
        # seeing it.
        if $sc =:= $!sc {
            self.get_slot_past_for_object($obj);
        }
        else {
            my $handle := $sc.handle;
            unless pir::exists(%!dependencies, $handle) {
                %!dependencies{$handle} := $sc;
                self.add_event(:deserialize_past(PAST::Op.new(
                    :pasttype('if'),
                    PAST::Op.new(
                        :pirop('isnull IP'),
                        PAST::Op.new( :pirop('nqp_get_sc Ps'), $handle )
                    ),
                    PAST::Op.new(
                        :pirop('die vS'),
                        "Incorrect pre-compiled version of " ~ ($sc.description || '<unknown>') ~ " loaded"
                    ))));
            }
            my $past := PAST::Op.new( :pirop('nqp_get_sc_object Psi'),
                $handle, $sc.slot_index_for($obj) );
            $past<has_compile_time_value> := 1;
            $past<compile_time_value> := $obj;
            $past
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
    
    # Serializes the SC to binary and a string heap. Then produces PAST to handle
    # the deserialization.
    method serialize_and_produce_deserialization_past() {
        # Serialize.
        my $sh := pir::new__Ps('ResizableStringArray');
        my $serialized := pir::nqp_serialize_sc__SPP($!sc, $sh);
        say(nqp::chars($serialized) ~ " bytes of serialized data produced");
        say(nqp::elems($sh) ~ " strings in heap");
        
        # String heap PAST.
        my $sh_past := PAST::Stmts.new(
            PAST::Op.new(
                :pasttype('bind'),
                PAST::Var.new( :scope('register'), :name('string_heap'), :isdecl(1) ),
                PAST::Op.new( :pirop('new Ps'), 'ResizableStringArray' )));
        for $sh -> $s {
            $sh_past.push(PAST::Op.new(
                :pirop('push vPs'),
                PAST::Var.new( :scope('register'), :name('string_heap') ),
                (nqp::isnull($s) ?? PAST::Op.new( :pirop('null S') ) !! $s)));
        }
        $sh_past.push(PAST::Var.new( :scope('register'), :name('string_heap') ));
        
        # Code references.
        my $cr_past := PAST::Op.new( :pasttype('list') );
        for $!code_ref_blocks -> $block {
            $cr_past.push(PAST::Val.new( :value($block), :returns('Sub') ));
        }
        
        # Overall deserialization PAST.
        PAST::Op.new(
            :pirop('nqp_deserialize_sc__vSPPP'),
            PAST::Op.new( :inline(
                '    $S0 = binary:"' ~ pir::escape__SS($serialized) ~ '"',
                '    %r = box $S0'
                ) ),
            PAST::Op.new( :pirop('nqp_create_sc Ps'), 'XXX-' ~ $!handle ),
            $sh_past, $cr_past)
    }
}
