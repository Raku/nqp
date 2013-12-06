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

    # Tasks we should run after deserialization (or, in the non-precompiled
    # case, right after the pre-deserialize tasks).
    has @!post_deserialize;
    
    # Call to the repossession conflict resolution mechanism, to be invoked
    # on deserialization.
    has $!repo_conflict_resolver;
    
    # The HLL name.
    has $!hll;
    
    # What to run at the point the compilation unit is loaded.
    has $!load;
    
    # What to run if this is the main entry point.
    has $!main;
    
    method sc($value = NO_VALUE)       { $!sc := $value unless $value =:= NO_VALUE; $!sc }
    method hll($value = NO_VALUE)      { $!hll := $value unless $value =:= NO_VALUE; $!hll }
    method load($value = NO_VALUE)     { $!load := $value unless $value =:= NO_VALUE; $!load }
    method main($value = NO_VALUE)     { $!main := $value unless $value =:= NO_VALUE; $!main }
    
    method compilation_mode($value = NO_VALUE) {
        $!compilation_mode := $value unless $value =:= NO_VALUE; $!compilation_mode
    }
    method pre_deserialize($value = NO_VALUE) {
        @!pre_deserialize := $value unless $value =:= NO_VALUE;
        nqp::isnull(@!pre_deserialize) ?? [] !! @!pre_deserialize
    }
    method post_deserialize($value = NO_VALUE) {
        @!post_deserialize := $value unless $value =:= NO_VALUE;
        nqp::isnull(@!post_deserialize) ?? [] !! @!post_deserialize
    }
    method repo_conflict_resolver($value = NO_VALUE) {
        $value =:= NO_VALUE ?? $!repo_conflict_resolver !! ($!repo_conflict_resolver := $value)
    }
    method code_ref_blocks($value = NO_VALUE) {
        $!code_ref_blocks := $value unless $value =:= NO_VALUE; $!code_ref_blocks
    }
}
