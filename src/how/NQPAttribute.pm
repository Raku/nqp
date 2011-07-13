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
    
    method has_accessor() {
        0
    }
    
    method build_closure() {
        0
    }

    method box_target() {
        $!box_target ?? 1 !! 0
    }

    method compose($obj) {
        my $long_name := ~$!name;
        if self.has_mutator {
            my $method := pir::substr($long_name, 1);
            unless has_method($obj, $method, 0) {
                $obj.HOW.add_method($obj.WHAT, $method, method ($value?) {
                        pir::setattribute__vppsp(self, $obj.WHAT, $long_name, $value)
                            if pir::defined($value);

                        pir::getattribute__ppps(self, $obj.WHAT, $long_name);
                    }
                );
            }
        }
        else {
            my $method := pir::substr($long_name, 2);
            unless has_method($obj, $method, 0) {
                $obj.HOW.add_method($obj, $method,
                    method () {
                        pir::getattribute__PPPs(self, $obj.WHAT, $long_name);
                    }
                );
            }
        }
    }

    # Hack to check twigil.
    method has_mutator() {
        pir::substr(~$!name, 1, 1) ne '!';
    }

    sub has_method($target, $name, $local) {
        my @methods := $target.HOW.methods($target, :local($local));
        for @methods {
            if $_ eq $name { return 1; }
        }
        return 0;
    }

}
