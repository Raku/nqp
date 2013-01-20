class QAST::BVal is QAST::Node {
    has $!value;
    method value(*@value) { $!value := @value[0] if @value; $!value }

    method evaluate_unquotes(@unquotes) {
        self
    }
    method dump_extra_node_info() { ~$!value }
}
