class QAST::SVal is QAST::Node {
    has str $!value;
    method value(*@value) { $!value := @value[0] if @value; $!value }
    
    method substitute_inline_placeholders(@fillers) {
        self
    }

    method evaluate_unquotes(@unquotes) {
        self
    }
    method dump_extra_node_info() {
        pir::escape__SS($!value);
    }
}
