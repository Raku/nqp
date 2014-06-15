class QAST::Unquote is QAST::Node {
    has int $!position;

    method new(:$position!, *%options) {
        my $new := nqp::create(self);
        nqp::bindattr($new, QAST::Node, '%!hash', nqp::hash());
        nqp::bindattr_i($new, QAST::InlinePlaceholder, '$!position', $position);
        $new.set_options(%options) if %options;
        $new
    }

    method position(*@value) {
        @value ?? ($!position := @value[0]) !! $!position
    }

    method evaluate_unquotes(@unquotes) {
        @unquotes[$!position];
    }
}
