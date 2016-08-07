class QAST::Var is QAST::Node does QAST::Children {
    has str $!name;
    has str $!scope;
    has str $!decl;
    has int $!slurpy;
    has $!default_or_value;

    method new(:$name, str :$scope, str :$decl, *@children, *%options) {
        my $node := nqp::create(self);
        nqp::bindattr_i($node, QAST::Node, '$!flags', 0);
        nqp::bindattr($node, QAST::Var, '@!children', @children);
        nqp::bindattr_s($node, QAST::Var, '$!name', $name);
        nqp::bindattr_s($node, QAST::Var, '$!scope', $scope);
        nqp::bindattr_s($node, QAST::Var, '$!decl', $decl);
        $node.set(%options) if %options;
        $node
    }
    
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

    method count_inline_placeholder_usages(@usages) { }

    method substitute_inline_placeholders(@fillers) {
        self
    }

    method evaluate_unquotes(@unquotes) {
        self
    }

    method dump_extra_node_info() {
        my $info := nqp::isnull_s($!name) ?? $!scope !! "$!scope $!name";
        nqp::chars($!decl) ?? "$info :decl($!decl)" !! $info
    }

    method extra_children() {
        nqp::defined($!default_or_value) ?? [$!decl eq 'param' ?? 'default' !! 'value', [$!default_or_value]] !! [];
    }
}
