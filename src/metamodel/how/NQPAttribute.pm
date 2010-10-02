knowhow NQPAttribute {
    has $!name;

    method new(:$name!) {
        my $attr := pir::repr_instance_of__PP(self);
        $attr.BUILD(:name($name));
        $attr
    }

    method BUILD(:$name) {
        $!name := $name;
    }

    method name() {
        $!name
    }
}
