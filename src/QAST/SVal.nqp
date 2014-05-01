class QAST::SVal is QAST::Node {
    has str $!value;
    method value($value = NO_VALUE) { $!value := $value unless $value =:= NO_VALUE; $!value }
    
    method count_inline_placeholder_usages(@usages) { }

    method substitute_inline_placeholders(@fillers) {
        self
    }

    method evaluate_unquotes(@unquotes) {
        self
    }
    method dump_extra_node_info() {
        nqp::escape($!value);
    }
}
