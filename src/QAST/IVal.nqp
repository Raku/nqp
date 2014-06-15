class QAST::IVal is QAST::Node {
    has int $!value;

    method new(:$value!, *%options) {
        my $new := nqp::create(self);
        nqp::bindattr($new, QAST::Node, '%!hash', nqp::hash());
        nqp::bindattr_i($new, QAST::IVal, '$!value', $value);
        $new.set_options(%options) if %options;
        $new
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
