class QAST::SVal is QAST::Node {
    has str $!value;
    method value(*@value) { $!value := @value[0] if @value; $!value }
    
    method substitute_inline_placeholders(@fillers) {
        self
    }

    method evaluate_unquotes(@unquotes) {
        self
    }
}
