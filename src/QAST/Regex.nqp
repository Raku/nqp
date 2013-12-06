class QAST::Regex is QAST::Node {
    has $!name;
    has str $!rxtype;
    has str $!subtype;
    has str $!backtrack;
    has int $!negate;
    has int $!min;
    has int $!max;

    method name($value = NO_VALUE)      { $!name := $value unless $value =:= NO_VALUE; $!name }
    method rxtype($value = NO_VALUE)    {
        $!rxtype := $value unless $value =:= NO_VALUE;
        !nqp::isnull_s($!rxtype) ?? $!rxtype !! ""
    }
    method subtype($value = NO_VALUE)   {
        $!subtype := $value unless $value =:= NO_VALUE;
        !nqp::isnull_s($!subtype) ?? $!subtype !! "" 
    }
    method backtrack($value = NO_VALUE) {
        $!backtrack := $value unless $value =:= NO_VALUE;
        !nqp::isnull_s($!backtrack) ?? $!backtrack !! ""
    }
    method negate($value = NO_VALUE)    { $!negate := $value unless $value =:= NO_VALUE; $!negate }
    method min($value = NO_VALUE)       { $!min := $value unless $value =:= NO_VALUE; $!min }
    method max($value = NO_VALUE)       { $!max := $value unless $value =:= NO_VALUE; $!max }
    
    method dump_extra_node_info() {
        ":rxtype($!rxtype)" ~ (!nqp::isnull_s($!subtype) ?? " :subtype($!subtype)" !! "")
    }
}

