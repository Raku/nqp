knowhow NQPAttribute {
    has $!name;
    has $!type;
    has $!has_type;
    has $!box_target;
    has $!default;
    has $!has_default;
    has $!positional_delegate;
    has $!associative_delegate;

    method new(:$name!, :$box_target, *%extra) {
        my $attr := nqp::create(self);
        $attr.BUILD(:name($name), |%extra, :box_target($box_target),
            :has_type(nqp::existskey(%extra, 'type')),
            :has_default(nqp::existskey(%extra, 'default')));
        $attr
    }

    method BUILD(:$name, :$type, :$has_type, :$box_target, :$default, :$has_default) {
        $!name := $name;
        $!type := $type;
        $!has_type := $has_type;
        $!box_target := $box_target;
        $!default := $default;
        $!has_default := $has_default;
    }

    method name() {
        $!name
    }

    method type() {
        $!has_type ?? $!type !! nqp::null()
    }
    
    method has_accessor() {
        0
    }
    
    method build_closure() {
        0
    }

    method box_target() {
        !nqp::isnull($!box_target) && $!box_target ?? 1 !! 0
    }
    
    method auto_viv_container() {
        $!has_default ?? $!default !! nqp::null()
    }
    
    method set_positional_delegate($value) {
        $!positional_delegate := $value;
    }
    
    method set_associative_delegate($value) {
        $!associative_delegate := $value;
    }
    
    method positional_delegate() {
        !nqp::isnull($!positional_delegate) && $!positional_delegate ?? 1 !! 0
    }
    
    method associative_delegate() {
        !nqp::isnull($!associative_delegate) && $!associative_delegate ?? 1 !! 0
    }

    method compose($obj) {
        $obj
    }
}
