class QAST::Regex is QAST::Node {
    has $!name;
    has str $!rxtype;
    has str $!subtype;
    has str $!backtrack;
    has int $!negate;
    has int $!min;
    has int $!max;

    method name(*@value)      { $!name := @value[0] if @value; $!name }
    method rxtype(*@value)    {
        $!rxtype := @value[0] if @value;
        !nqp::isnull_s($!rxtype) ?? $!rxtype !! ""
    }
    method subtype(*@value)   {
        $!subtype := @value[0] if @value;
        !nqp::isnull_s($!subtype) ?? $!subtype !! "" 
    }
    method backtrack(*@value) {
        $!backtrack := @value[0] if @value;
        !nqp::isnull_s($!backtrack) ?? $!backtrack !! ""
    }
    method negate(*@value)    { $!negate := @value[0] if @value; $!negate }
    method min(*@value)       { $!min := @value[0] if @value; $!min }
    method max(*@value)       { $!max := @value[0] if @value; $!max }
    
    method dump_extra_node_info() {
        ":rxtype($!rxtype)" ~ (!nqp::isnull_s($!subtype) ?? " :subtype($!subtype)" !! "") ~ ($!negate ?? ' (negated)' !! '') ~ (nqp::defined($!name) ?? " :name($!name)" !! '')
    }
}

