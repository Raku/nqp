class QAST::IVal is QAST::Node {
    has int $!value;

    method BUILD() {
        nqp::bindattr(self, QAST::Node, '$!returns', int);
    }

    method value(*@value) { $!value := @value[0] if @value; $!value }

    method substitute_inline_placeholders(@fillers) {
        self
    }

    method evaluate_unquotes(@unquotes) {
        self
    }
    method dump_extra_node_info() { ~$!value }
}
