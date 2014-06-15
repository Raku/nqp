class QAST::WVal is QAST::Node does QAST::CompileTimeValue {
    method new(:$value!, *%options) {
        my $new := nqp::create(self);
        nqp::bindattr($new, QAST::Node, '%!hash', nqp::hash());
        $new.set_compile_time_value($value);
        $new.set_options(%options) if %options;
        $new
    }

    method value($value = NO_VALUE) {
        $value =:= NO_VALUE
            ?? self.compile_time_value()
            !! self.set_compile_time_value($value)
    }

    method count_inline_placeholder_usages(@usages) { }

    method substitute_inline_placeholders(@fillers) {
        self
    }

    method evaluate_unquotes(@unquotes) {
        self
    }
    method dump_extra_node_info() {
        my $v := self.compile_time_value();
        $v.HOW.name($v);
    }
}
