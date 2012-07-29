class QAST::WVal is QAST::Node does QAST::CompileTimeValue {
    method value(*@value) {
        @value
            ?? self.set_compile_time_value(@value[0])
            !! self.compile_time_value()
    }
}
