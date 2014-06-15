class QAST::BVal is QAST::Node {
    has $!value;

    method new(:$value!, *%options) {
        my $new := nqp::create(self);
        nqp::bindattr($new, QAST::Node, '%!hash', nqp::hash());
        nqp::bindattr($new, QAST::BVal, '$!value', $value);
        $new.set_options(%options) if %options;
        $new
    }
    
    method value($value = NO_VALUE) { $!value := $value unless $value =:= NO_VALUE; $!value }

    method evaluate_unquotes(@unquotes) {
        self
    }
    method dump_extra_node_info() { ~$!value.cuid }
}
