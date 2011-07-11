class QAST::Regex is QAST::Node {
    has $!rxtype;
    has $!subtype;
    has $!backtrack;
    has $!negate;
    has $!min;
    has $!max;

    method node(*@value)      { }
    method rxtype(*@value)    { $!rxtype := @value[0] if @value; $!rxtype }
    method subtype(*@value)   { $!subtype := @value[0] if @value; $!subtype }
    method backtrack(*@value) { $!backtrack := @value[0] if @value; $!backtrack }
    method negate(*@value)    { $!negate := @value[0] if @value; $!negate }
    method max(*@value)       { $!max := @value[0] if @value; $!max }
    method min(*@value)       { $!min := @value[0] if @value; $!min }

}

