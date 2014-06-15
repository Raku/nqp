class QAST::Var is QAST::Node does QAST::Children {
    has str $!name;
    has str $!scope;
    has str $!decl;
    has int $!slurpy;
    has $!default_or_value;

    method new(:$name, :$scope, :$decl, *@children, *%options) {
        my $new := nqp::create(self);
        $new.set_children(@children);
        nqp::bindattr($new, QAST::Node, '%!hash', nqp::hash());
        nqp::bindattr_s($new, QAST::Var, '$!name', $name)
            if nqp::isconcrete($name);
        nqp::bindattr_s($new, QAST::Var, '$!scope', $scope)
            if nqp::isconcrete($scope);
        nqp::bindattr_s($new, QAST::Var, '$!decl', $decl)
            if nqp::isconcrete($decl);
        $new.set_options(%options) if %options;
        $new
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
        nqp::isnull_s($!decl) ?? $info !! "$info :decl($!decl)"
    }
}
