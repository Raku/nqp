class QAST::Regex is QAST::Node {
    has $!regextype;
    has $!backtrack;
    has $!min;
    has $!max;

    method regextype(*@value) { $!regextype := @value[0] if @value; $!regextype }
    method backtrack(*@value) { $!backtrack := @value[0] if @value; $!backtrack }
    method max(*@value)       { $!max := @value[0] if @value; $!max }
    method min(*@value)       { $!min := @value[0] if @value; $!min }
}

