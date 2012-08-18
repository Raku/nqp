class QAST::IVal is QAST::Node {
    has int $!value;
    method value(*@value) { $!value := @value[0] if @value; $!value }

    method evaluate_unquotes(@unquotes) {
        self
    }
}
