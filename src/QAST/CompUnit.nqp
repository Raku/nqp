class QAST::CompUnit is QAST::Node {
    # The serialization context for the compilation unit.
    has $!sc;
    
    # Code reference block list for the serialization context.
    has $!code_ref_blocks;
    
    # Are we in compilation mode?
    has int $!compilation_mode;
    
    # Tasks we should run prior to deserialization (or, in the non-precompiled
    # case, just before everything else in this compilation unit).
    has @!pre_deserialize;

    # Taks we should run after deserialization (or, in the non-precompiled
    # case, right after the pre-deserialize tasks).
    has @!post_deserialize;
    
    # The HLL name.
    has $!hll;
    
    # What to run at the point the compilation unit is loaded.
    has $!load;
    
    # What to run if this is the main entry point.
    has $!main;
    
    method sc(*@value)       { $!sc := @value[0] if @value; $!sc }
    method hll(*@value)      { $!hll := @value[0] if @value; $!hll }
    method load(*@value)     { $!load := @value[0] if @value; $!load }
    method main(*@value)     { $!main := @value[0] if @value; $!main }
    
    method compilation_mode(*@value) {
        $!compilation_mode := @value[0] if @value; $!compilation_mode
    }
    method pre_deserialize(*@value) {
        @!pre_deserialize := @value[0] if @value;
        nqp::isnull(@!pre_deserialize) ?? [] !! @!pre_deserialize
    }
    method post_deserialize(*@value) {
        @!post_deserialize := @value[0] if @value;
        nqp::isnull(@!post_deserialize) ?? [] !! @!post_deserialize
    }
    method code_ref_blocks(*@value) {
        $!code_ref_blocks := @value[0] if @value; $!code_ref_blocks
    }
}
