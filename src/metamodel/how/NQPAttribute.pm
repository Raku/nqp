knowhow NQPAttribute {
    has $!name;
    has $!type;
    has $!box_target;

    method new(:$name!, :$type, :$box_target) {
        my $attr := pir::repr_instance_of__PP(self);
        $attr.BUILD(:name($name), :type($type), :box_target($box_target));
        $attr
    }

    method BUILD(:$name, :$type, :$box_target) {
        $!name := $name;
        $!type := $type;
        $!box_target := $box_target;
    }

    method name() {
        $!name
    }

    method type() {
        $!type // pir::null__P()
    }

    method box_target() {
        $!box_target ?? 1 !! 0
    }
}
