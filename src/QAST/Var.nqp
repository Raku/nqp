class QAST::Var is QAST::Node {
    has str $!name;
    has str $!scope;
    has str $!decl;
    has int $!slurpy;
    has $!default_or_value;
    
    method name($value = NO_VALUE) {
        $!name := $value unless $value =:= NO_VALUE;
        !nqp::isnull_s($!name) ?? $!name !! ""
    }
    method scope($value = NO_VALUE) {
        $!scope := $value unless $value =:= NO_VALUE;
        !nqp::isnull_s($!scope) ?? $!scope !! ""
    }
    method decl($value = NO_VALUE) {
        $!decl := $value unless $value =:= NO_VALUE;
        !nqp::isnull_s($!decl) ?? $!decl !! ""
    }
    method slurpy($value = NO_VALUE)  { $!slurpy := $value unless $value =:= NO_VALUE; $!slurpy }
    method default($value = NO_VALUE) { $!default_or_value := $value unless $value =:= NO_VALUE; $!default_or_value }
    method value($value = NO_VALUE)   { $!default_or_value := $value unless $value =:= NO_VALUE; $!default_or_value }
    
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
