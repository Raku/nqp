class QAST::BVal is QAST::Node {
    has $!value;
    method value($value = NO_VALUE) { $!value := $value unless $value =:= NO_VALUE; $!value }

    method evaluate_unquotes(@unquotes) {
        self
    }
    method dump_extra_node_info() { ~$!value.cuid }
}
