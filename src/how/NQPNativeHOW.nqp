knowhow NQPNativeHOW {
    has $!name;
    has $!nativesize;
    has $!unsigned;
    has $!composed;

    my $archetypes := Archetypes.new( :nominal(1) );
    method archetypes($XXX?) { $archetypes }

    method new(:$name) {
        my $obj  := nqp::create(self);
        nqp::bindattr($obj, NQPNativeHOW, '$!name',     $name);
        nqp::bindattr($obj, NQPNativeHOW, '$!unsigned', 0    );

        $obj
    }

    # Create a new meta-class instance, and then a new type object
    # to go with it, and return that
    method new_type(:$name = '<anon>', :$repr!) {
        my $metaclass := self.new(:name($name));
        my $type := nqp::newtype($metaclass, $repr);
        nqp::settypehll($type, 'nqp');
        nqp::setdebugtypename(nqp::setwho($type, nqp::hash), $name)
    }

    method add_method($XXX, $name, $code_obj) {
        nqp::die("Native types may not have methods (must be boxed to call method)");
    }

    method add_multi_method($XXX, $name, $code_obj) {
        nqp::die("Native types may not have methods (must be boxed to call method)");
    }

    method add_attribute($XXX, $meta_attr) {
        nqp::die("Native types may not have attributes");
    }

    method compose($target) {
        if !$!composed && ($!nativesize || $!unsigned) {
            nqp::composetype($target, nqp::hash(
              'integer',
              nqp::hash('unsigned', $!unsigned, 'bits', $!nativesize),
              'float',
              nqp::hash('bits', $!nativesize)
            ));
            $!composed := 1;
        }
    }

    method name(      $XXX?) { $!name       }
    method nativesize($XXX?) { $!nativesize }
    method unsigned(  $XXX?) { $!unsigned   }

    method set_nativesize($XXX, $nativesize) {
        $!nativesize := $nativesize;
    }
    method set_unsigned($XXX, $unsigned) {
        $!unsigned := $unsigned ?? 1 !! 0
    }

    method shortname($target) { shortened_name($target) }
}
