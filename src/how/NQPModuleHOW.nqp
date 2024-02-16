#- NQPModuleHOW ----------------------------------------------------------------
knowhow NQPModuleHOW {
    has $!name;
    has $!composed;

    my $archetypes := Archetypes.new( );
    method archetypes($obj?) { $archetypes }

    method new(:$name) {
        my $obj := nqp::create(self);
        $obj.BUILD(:name($name));
        $obj
    }

    method BUILD(:$name) {
        $!name := $name;
    }

    # Create a new meta-class instance, and then a new type object
    # to go with it, and return that.
    method new_type(:$name = '<anon>') {
        my $metaclass := self.new(:name($name));
        my $type := nqp::newtype($metaclass, 'Uninstantiable');
        nqp::settypehll($type, 'nqp');
        nqp::setdebugtypename(nqp::setwho($type, {}), $name);
    }

    method add_method($obj, $name, $code) {
        nqp::die("Modules may not have methods");
    }

    method add_multi_method($obj, $name, $code) {
        nqp::die("Modules may not have methods");
    }

    method add_attribute($obj, $attribute) {
        nqp::die("Modules may not have attributes");
    }

    method compose($obj) {
#?if !moar
        nqp::setmethcache($obj, {});
        nqp::setmethcacheauth($obj, 1);
#?endif
        $!composed := 1;
    }

    method find_method($obj, $name, *%opts) { nqp::null }
    method name($obj) { $!name }

    method shortname($obj) {
        my @parts := nqp::split('::', self.name($obj) // '');
        @parts ?? nqp::atpos(@parts, nqp::elems(@parts) - 1) !! '<anon>'
    }
}
