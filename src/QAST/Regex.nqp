class QAST::Regex is QAST::Node {
    has $!rxtype;
    has $!backtrack;
    has $!min;
    has $!max;

    method node(*@value)      { }
    method rxtype(*@value)    { $!rxtype := @value[0] if @value; $!rxtype }
    method backtrack(*@value) { $!backtrack := @value[0] if @value; $!backtrack }
    method max(*@value)       { $!max := @value[0] if @value; $!max }
    method min(*@value)       { $!min := @value[0] if @value; $!min }

}

