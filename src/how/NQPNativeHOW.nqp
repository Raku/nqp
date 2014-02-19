knowhow NQPNativeHOW {
    has $!name;
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
        $!composed := 1;
    }

    method name($obj) {
        $!name
    }
}
