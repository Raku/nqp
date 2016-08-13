class QAST::BVal is QAST::Node {
    has $!value;

    method new(:$value, *%options) {
        my $node := nqp::create(self);
        nqp::bindattr_i($node, QAST::Node, '$!flags', 0);
        nqp::bindattr($node, QAST::BVal, '$!value', $value);
        $node.set(%options) if %options;
        $node
    }

    method value($value = NO_VALUE) { $!value := $value unless $value =:= NO_VALUE; $!value }

    method evaluate_unquotes(@unquotes) {
        self
    }

    method dump_extra_node_info() { ~$!value.cuid }
}
