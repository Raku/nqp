knowhow NQPAttribute {
    has $!name;
    has $!type;
    has $!has_type;
    has $!box_target;

    method new(:$name!, :$box_target, *%extra) {
        my $attr := nqp::create(self);
        $attr.BUILD(:name($name), |%extra, :box_target($box_target),
            :has_type(nqp::existskey(%extra, 'type')));
        $attr
    }

    method BUILD(:$name, :$type, :$has_type, :$box_target) {
        $!name := $name;
        $!type := $type;
        $!has_type := $has_type;
        $!box_target := $box_target;
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
        $!box_target ?? 1 !! 0
    }

    method compose($obj) {
        #my $long_name := ~$!name;
        #if self.has_mutator {
        #    my $method := nqp::substr($long_name, 1);
        #    unless has_method($obj, $method, 0) {
        #        $obj.HOW.add_method($obj.WHAT, $method, method ($value?) {
        #                nqp::bindattr(self, $obj.WHAT, $long_name, $value)
        #                    if nqp::defined($value);
        #                nqp::getattr(self, $obj.WHAT, $long_name);
        #            }
        #        );
        #    }
        #}
        #else {
        #    my $method := nqp::substr($long_name, 2);
        #    unless has_method($obj, $method, 0) {
        #        $obj.HOW.add_method($obj, $method,
        #            method () {
        #                nqp::getattr(self, $obj.WHAT, $long_name);
        #            }
        #        );
        #    }
        #}
        $obj
    }

    # Hack to check twigil.
    method has_mutator() {
        nqp::substr(~$!name, 1, 1) ne '!';
    }

    sub has_method($target, $name, $local) {
        my @methods := $target.HOW.methods($target, :local($local));
        for @methods {
            if $_ eq $name { return 1; }
        }
        return 0;
    }

}
