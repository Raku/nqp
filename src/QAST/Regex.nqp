role QAST::RegexCursorType {
    has $!cursor_type;
    method has_cursor_type() { 1 }
    method cursor_type($value = NO_VALUE) {
        $!cursor_type := $value unless $value =:= NO_VALUE;
        $!cursor_type
    }
}

class QAST::Regex is QAST::Node does QAST::Children {
    has $!name;
    has str $!rxtype;
    has str $!subtype;
    has str $!backtrack;
    has int $!negate;
    has int $!min;
    has int $!max;
    
    method new(str :$rxtype, str :$subtype, *@children, *%options) {
        my $node := nqp::create(self);
        nqp::bindattr($node, QAST::Regex, '@!children', @children);
        nqp::bindattr_s($node, QAST::Regex, '$!rxtype', $rxtype);
        nqp::bindattr_s($node, QAST::Regex, '$!subtype', $subtype);
        $node.set(%options) if %options;
        $node
    }

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
        ":rxtype($!rxtype)" ~ (!nqp::isnull_s($!subtype) ?? " :subtype($!subtype)" !! "") ~ ($!negate ?? ' (negated)' !! '') ~ (nqp::defined($!name) ?? " :name($!name)" !! '')
    }
    
    method has_cursor_type() { 0 }
    method cursor_type($type) {
        self.HOW.mixin(self, QAST::RegexCursorType);
        self.cursor_type($type);
    }
}

