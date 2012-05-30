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

    # List of PAST nodes specifying dependency loading related tasks. These
    # are done before the deserialization of the current context, or if in
    # immediate run mode before any of the other fixup tasks.
    has @!load_dependency_tasks;

    # List of PAST nodes specifying fixup tasks, either after deserialization
    # or between compile time and run time.
    has @!fixup_tasks;
    
    # Address => slot mapping, so we can quickly look up existing objects
    # in the context.
    # XXX LEGACY
    has %!addr_to_slot;
    
    method new(:$handle!, :$description = '<unknown>') {
        my $obj := self.CREATE();
        $obj.BUILD(:handle($handle), :description($description));
        $obj
    }
    
    method BUILD(:$handle!, :$description!) {
        # Initialize attributes.
        $!sc              := pir::nqp_create_sc__PS($handle);
        $!handle          := $handle;
        %!addr_to_slot    := nqp::hash();
        @!fixup_tasks     := nqp::list();
        @!load_dependency_tasks := nqp::list();
        $!precomp_mode    := %*COMPILING<%?OPTIONS><target> eq 'pir';
        $!num_code_refs   := 0;
        $!code_ref_blocks := [];
        $!sc.set_description($description);
        
        # Add to currently compiling SC stack.
        pir::nqp_push_compiling_sc__vP($!sc);
    }
    
    # Gets the slot for a given object. Dies if it is not in the context.
    method slot_for_object($obj) {
        my $slot := %!addr_to_slot{nqp::where($obj)};
        unless pir::defined($slot) {
            nqp::die('slot_for_object called on object not in context');
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
    
    # Adds a code reference to the root set of code refs.
    method add_root_code_ref($code_ref, $past_block) {
        my $code_ref_idx := $!num_code_refs;
        $!num_code_refs := $!num_code_refs + 1;
        $!code_ref_blocks.push($past_block);
        pir::nqp_add_code_ref_to_sc__vPiP($!sc, $code_ref_idx, $code_ref);
        $code_ref_idx
    }
    
    # Updates a code reference in the root set.
    method update_root_code_ref($idx, $new_code_ref) {
        pir::nqp_add_code_ref_to_sc__vPiP($!sc, $idx, $new_code_ref);
    }

    # Checks if we are in pre-compilation mode.
    method is_precompilation_mode() {
        $!precomp_mode
    }
    
    # Add an event that we want to run before deserialization or before any
    # other fixup.
    method add_load_dependency_task(:$deserialize_past, :$fixup_past) {
        if $!precomp_mode {
            @!load_dependency_tasks.push($deserialize_past) if $deserialize_past;
        }
        else {
            @!load_dependency_tasks.push($fixup_past) if $fixup_past;
        }
    }
    
    # Add an event that we need to run at fixup time (after deserialization of
    # between compilation and runtime).
    method add_fixup_task(:$deserialize_past, :$fixup_past) {
        if $!precomp_mode {
            @!fixup_tasks.push($deserialize_past) if $deserialize_past;
        }
        else {
            @!fixup_tasks.push($fixup_past) if $fixup_past;
        }
    }
    
    # Gets PAST for referencing an object in a serialization context,
    # either the one being built or another one. If the object is not
    # yet in an SC, adds it to the currnet one.
    method get_ref($obj) {
        # Get the object's serialization context; we're stuck if it
        # has none.
        my $sc := pir::nqp_get_sc_for_object__PP($obj);
        unless pir::defined($sc) {
            self.add_object($obj);
            $sc := $!sc;
        }
        
        # If it's this context, dead easy. Otherwise, need to build a
        # cross-reference, plus check it if it's the first time we are
        # seeing it.
        if $sc =:= $!sc {
            self.get_slot_past_for_object($obj);
        }
        else {
            my $handle := $sc.handle;
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
    
    # Gets the list of load dependency tasks to do.
    method load_dependency_tasks() {
        @!load_dependency_tasks
    }
    
    # Gets the list of tasks to do at fixup time.
    method fixup_tasks() {
        @!fixup_tasks
    }
    
    # Serializes the SC to binary and a string heap. Then produces PAST to handle
    # the deserialization.
    method serialize_and_produce_deserialization_past($sc_reg) {
        # Serialize.
        my $sh := pir::new__Ps('ResizableStringArray');
        my $serialized := pir::nqp_serialize_sc__SPP($!sc, $sh);
        
        # Now it's serialized, pop this SC off the compiling SC stack.
        pir::nqp_pop_compiling_sc__v();
        
        # String heap PAST.
        my $sh_past := PAST::Stmts.new(
            PAST::Op.new(
                :pasttype('bind'),
                PAST::Var.new( :scope('register'), :name('string_heap'), :isdecl(1) ),
                PAST::Op.new( :pirop('new Ps'), 'ResizableStringArray' )));
         my $sh_elems := nqp::elems($sh);
         my $i := 0;
         while $i < $sh_elems {
            $sh_past.push(PAST::Op.new(
                :pirop('push vPs'),
                PAST::Var.new( :scope('register'), :name('string_heap') ),
                (nqp::isnull_s($sh[$i]) ?? PAST::Op.new( :pirop('null S') ) !! $sh[$i])));
                $i := $i + 1;
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
            $serialized,
            PAST::Var.new( :name($sc_reg), :scope('register') ),
            $sh_past,
            PAST::Block.new( :blocktype('immediate'), $cr_past )
        )
    }
}
