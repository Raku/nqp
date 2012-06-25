class QAST::CompUnit is QAST::Node {
    # The serialization context for the compilation unit.
    has $!sc;
    
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
}
