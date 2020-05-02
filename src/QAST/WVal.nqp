class QAST::WVal is QAST::Node does QAST::CompileTimeValue {
    method new(:$value, *%options) {
        my $node := nqp::create(self);
        nqp::bindattr($node, QAST::WVal, '$!compile_time_value', $value);
        $node.set(%options) if %options;
        $node
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
	    CATCH { return "?" }
        my $v := self.compile_time_value();
        my $info := $v.HOW.name($v);
        if self.ann('past_block') -> $qast {
            $info := "$info :cuid("
              ~ nqp::ifnull(nqp::getattr($qast, QAST::Block, '$!cuid'), '?') ~ ")";
        }
        $info;
    }
}
