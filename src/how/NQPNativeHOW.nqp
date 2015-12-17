knowhow NQPNativeHOW {
    has $!name;
    has $!nativesize;
    has $!unsigned;
    has $!composed;

    my $archetypes := Archetypes.new( :nominal(1) );
    method archetypes() {
        $archetypes
    }
    
    method new(:$name) {
        my $obj := nqp::create(self);
        $obj.BUILD(:name($name));
        $obj
    }

    method BUILD(:$name) {
        $!name := $name;
        $!nativesize := 0;
        $!unsigned := 0;
        $!composed := 0;
    }

    # Create a new meta-class instance, and then a new type object
    # to go with it, and return that.
    # XXX Should check that this is an inlineable REPR.
    method new_type(:$name = '<anon>', :$repr!) {
        my $metaclass := self.new(:name($name));
        nqp::setwho(nqp::newtype($metaclass, $repr), {});
    }

    method add_method($obj, $name, $code_obj) {
        nqp::die("Native types may not have methods (must be boxed to call method)");
    }

    method add_multi_method($obj, $name, $code_obj) {
        nqp::die("Native types may not have methods (must be boxed to call method)");
    }

    method add_attribute($obj, $meta_attr) {
        nqp::die("Native types may not have attributes");
    }

    method compose($obj) {
        if !$!composed && $!nativesize {
            my $info := nqp::hash();
            $info<integer> := nqp::hash();
            $info<integer><unsigned> := 1 if $!unsigned;
            $info<integer><bits> := $!nativesize;
            $info<float> := nqp::hash();
            $info<float><bits> := $!nativesize;
            nqp::composetype($obj, $info);
        }
        $!composed := 1;
    }

    method name($obj) {
        $!name
    }

    method set_nativesize($obj, $nativesize) {
        $!nativesize := $nativesize;
    }

    method nativesize($obj) {
        $!nativesize
    }
    
    method set_unsigned($obj, $unsigned) {
        $!unsigned := $unsigned ?? 1 !! 0
    }
    
    method unsigned($obj) {
        $!unsigned
    }

    method shortname($obj) {
        my @parts := nqp::split('::', self.name($obj) // '');
        @parts ?? @parts[nqp::elems(@parts) - 1] !! '<anon>'
    }
}
