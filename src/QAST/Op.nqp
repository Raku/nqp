class QAST::Op is QAST::Node does QAST::Children {
    has str $!name;
    has str $!op;
    has str $!childorder;
    has int $!arity;

    method new(:$name, :$op, *@children, *%options) {
        my $new := nqp::create(self);
        $new.set_children(@children);
        nqp::bindattr($new, QAST::Node, '%!hash', nqp::hash());
        nqp::bindattr_s($new, QAST::Op, '$!name', $name)
            if nqp::isconcrete($name);
        nqp::bindattr_s($new, QAST::Op, '$!op', $op)
            if nqp::isconcrete($op);
        $new.set_options(%options) if %options;
        $new
    }
    
    method name($value = NO_VALUE) {
        $!name := $value unless $value =:= NO_VALUE;
        nqp::isnull_s($!name) ?? "" !! $!name
    }
    method op($value = NO_VALUE) {
        $!op := $value unless $value =:= NO_VALUE;
        nqp::isnull_s($!op) ?? "" !! $!op
    }
    method childorder($value = NO_VALUE) {
        $!childorder := $value unless $value =:= NO_VALUE;
        nqp::isnull_s($!childorder) ?? "" !! $!childorder
    }
    method arity($value = NO_VALUE)      { $!arity := $value unless $value =:= NO_VALUE; $!arity }

    method count_inline_placeholder_usages(@usages) {
        my int $i := 0;
        my int $elems := +@(self);
        while $i < $elems {
            self[$i].count_inline_placeholder_usages(@usages);
            $i++;
        }
    }

    method substitute_inline_placeholders(@fillers) {
        my $result := self.shallow_clone();
        my int $i := 0;
        my int $elems := +@(self);
        while $i < $elems {
            $result[$i] := self[$i].substitute_inline_placeholders(@fillers)
                unless nqp::isstr(self[$i]);
            $i++;
        }
        $result
    }

    method evaluate_unquotes(@unquotes) {
        my $result := self.shallow_clone();
        my $i := 0;
        my $elems := +@(self);
        while $i < $elems {
            $result[$i] := self[$i].evaluate_unquotes(@unquotes)
                unless nqp::isstr(self[$i]);
            $i := $i + 1;
        }
        $result
    }

    method dump_extra_node_info() {
        !nqp::isnull_s($!name) && nqp::chars($!name)
            ?? "$!op $!name"
            !! $!op;
    }
}
