class QAST::Var is QAST::Node {
    has str $!name;
    has str $!scope;
    has str $!decl;
    has int $!slurpy;
    has $!default_or_value;
    
    method name(*@value) {
        $!name := @value[0] if @value;
        !nqp::isnull_s($!name) ?? $!name !! ""
    }
    method scope(*@value) {
        $!scope := @value[0] if @value;
        !nqp::isnull_s($!scope) ?? $!scope !! ""
    }
    method decl(*@value) {
        $!decl := @value[0] if @value;
        !nqp::isnull_s($!decl) ?? $!decl !! ""
    }
    method slurpy(*@value)  { $!slurpy := @value[0] if @value; $!slurpy }
    method default(*@value) { $!default_or_value := @value[0] if @value; $!default_or_value }
    method value(*@value) { $!default_or_value := @value[0] if @value; $!default_or_value }
    
    method substitute_inline_placeholders(@fillers) {
        self
    }

    method evaluate_unquotes(@unquotes) {
        self
    }

    method dump_extra_node_info() {
        my $info := nqp::isnull_s($!name) ?? $!scope !! "$!scope $!name";
        nqp::isnull_s($!decl) ?? $info !! "$info :decl($!decl)"
    }
}
