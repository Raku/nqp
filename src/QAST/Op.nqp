class QAST::Op is QAST::Node does QAST::Children {
    has str $!name;
    has str $!op;
    has str $!childorder;
    has int $!arity;

    method new(str :$name, str :$op, *@children, *%options) {
        my $node := nqp::create(self);
        nqp::bindattr($node, QAST::Op, '@!children', @children);
        nqp::bindattr_s($node, QAST::Op, '$!name', $name);
        nqp::bindattr_s($node, QAST::Op, '$!op', $op);
        $node.set(%options) if %options;
        $node
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
