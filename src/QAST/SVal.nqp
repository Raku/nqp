class QAST::SVal is QAST::Node {
    has str $!value;

    method new(:$value, *%options) {
        my $node := nqp::create(self);
        nqp::bindattr_s($node, QAST::SVal, '$!value', $value);
        nqp::bindattr($node, QAST::Node, '$!returns', str);
        $node.set(%options) if %options;
        $node
    }

    method value($value = NO_VALUE) {
        $value =:= NO_VALUE
          ?? $!value
          !! ($!value := $value)
    }

    method count_inline_placeholder_usages(@usages) { }

    method substitute_inline_placeholders(@fillers) {
        self
    }

    method evaluate_unquotes(@unquotes) {
        self
    }
    method dump_extra_node_info() {
        nqp::escape($!value);
    }
}
