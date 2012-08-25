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
}
