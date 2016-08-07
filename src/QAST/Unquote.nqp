class QAST::Unquote is QAST::Node {
    has int $!position;

    method new(int :$position, *%options) {
        my $node := nqp::create(self);
        nqp::bindattr_i($node, QAST::Node, '$!flags', 0);
        nqp::bindattr_i($node, QAST::Unquote, '$!position', $position);
        $node.set(%options) if %options;
        $node
    }

    method position(*@value) {
        @value ?? ($!position := @value[0]) !! $!position
    }

    method evaluate_unquotes(@unquotes) {
        @unquotes[$!position];
    }
}
