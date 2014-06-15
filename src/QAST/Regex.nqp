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

    method new(:$name, :$rxtype, :$subtype, :$backtrack, :$negate,
               :$min, :$max, *@children, *%options) {
        my $new := nqp::create(self);
        $new.set_children(@children);
        nqp::bindattr($new, QAST::Node, '%!hash', nqp::hash());
        nqp::bindattr($new, QAST::Regex, '$!name', $name)
            if nqp::isconcrete($name);
        nqp::bindattr_s($new, QAST::Regex, '$!rxtype', $rxtype)
            if nqp::isconcrete($rxtype);
        nqp::bindattr_s($new, QAST::Regex, '$!subtype', $subtype)
            if nqp::isconcrete($subtype);
        nqp::bindattr_s($new, QAST::Regex, '$!backtrack', $backtrack)
            if nqp::isconcrete($backtrack);
        nqp::bindattr_i($new, QAST::Regex, '$!negate', $negate)
            if nqp::isconcrete($negate);
        nqp::bindattr_i($new, QAST::Regex, '$!min', $min)
            if nqp::isconcrete($min);
        nqp::bindattr_i($new, QAST::Regex, '$!max', $max)
            if nqp::isconcrete($max);
        $new.set_options(%options) if %options;
        $new
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

