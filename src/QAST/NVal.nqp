class QAST::NVal is QAST::Node {
    has num $!value;

    method new(:$value, *%options) {
        my $node := nqp::create(self);
        nqp::bindattr_n($node, QAST::NVal, '$!value', $value);
        nqp::bindattr($node, QAST::Node, '$!returns', num);
        $node.set(%options) if %options;
        $node
    }

    method value($value = NO_VALUE) { $!value := $value unless $value =:= NO_VALUE; $!value }

    method count_inline_placeholder_usages(@usages) { }

    method substitute_inline_placeholders(@fillers) {
        self
    }

    method evaluate_unquotes(@unquotes) {
        self
    }

    method dump_extra_node_info() { ~$!value }
}
