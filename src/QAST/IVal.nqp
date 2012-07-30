class QAST::IVal is QAST::Node {
    has int $!value;
    method value(*@value) { $!value := @value[0] if @value; $!value }
    
    method substitute_inline_placeholders(@fillers) {
        self
    }
}
