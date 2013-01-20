class QAST::WVal is QAST::Node does QAST::CompileTimeValue {
    method value(*@value) {
        @value
            ?? self.set_compile_time_value(@value[0])
            !! self.compile_time_value()
    }
    
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
