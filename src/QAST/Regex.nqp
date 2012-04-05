class QAST::Regex is QAST::Node {
    has str $!rxtype;
    has str $!subtype;
    has str $!backtrack;
    has int $!negate;
    has int $!min;
    has int $!max;

    method rxtype(*@value)    { $!rxtype := @value[0] if @value; $!rxtype }
    method subtype(*@value)   { $!subtype := @value[0] if @value; $!subtype }
    method backtrack(*@value) { $!backtrack := @value[0] if @value; $!backtrack }
    method negate(*@value)    { $!negate := @value[0] if @value; $!negate }
    method min(*@value)       { $!min := @value[0] if @value; $!min }
    method max(*@value)       { $!max := @value[0] if @value; $!max }
}

