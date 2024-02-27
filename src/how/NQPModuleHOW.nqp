#- NQPModuleHOW ----------------------------------------------------------------
knowhow NQPModuleHOW {
    has $!name;
    has $!composed;

    my $archetypes := Archetypes.new( );
    method archetypes($XXX?) { $archetypes }

    method new(:$name) {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, NQPModuleHOW, '$!name', $name);
        $obj
    }

    # Create a new meta-class instance, and then a new type object
    # to go with it, and return that.
    method new_type(:$name = '<anon>') {
        my $metaclass := self.new(:name($name));
        my $type := nqp::newtype($metaclass, 'Uninstantiable');
        nqp::settypehll($type, 'nqp');
        nqp::setdebugtypename(nqp::setwho($type, {}), $name);
    }

    method add_method($XXX, $name, $code) {
        nqp::die("Modules may not have methods");
    }

    method add_multi_method($XXX, $name, $code) {
        nqp::die("Modules may not have methods");
    }

    method add_attribute($XXX, $attribute) {
        nqp::die("Modules may not have attributes");
    }

    method compose($target) {
        unless $!composed {
#?if !moar
            nqp::setmethcache($target, {});
            nqp::setmethcacheauth($target, 1);
#?endif
            $!composed := 1;
        }

        $target
    }

    method find_method($XXX, $name, *%opts) { nqp::null }
    method name($XXX?) { $!name }
    method shortname($target) { shortened_name($target) }
}
