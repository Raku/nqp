knowhow NQPModuleHOW {
    has $!name;
    has $!composed;
    
    my $archetypes := Archetypes.new( );
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
    }

    # Create a new meta-class instance, and then a new type object
    # to go with it, and return that.
    method new_type(:$name = '<anon>') {
        my $metaclass := self.new(:name($name));
        pir::set_who__0PP(
            pir::repr_type_object_for__PPS($metaclass, 'Uninstantiable'),
            {});
    }

    method add_method($obj, $name, $code_obj) {
        # XXX Commented out as in some places, module is used to try to
        # shove methods into Parrot classes (which doesn't work any, mind).
        #nqp::die("Modules may not have methods");
    }

    method add_multi_method($obj, $name, $code_obj) {
        nqp::die("Modules may not have methods");
    }

    method add_attribute($obj, $meta_attr) {
        nqp::die("Modules may not have attributes");
    }

    method compose($obj) {
        $!composed := 1;
    }

    method name($obj) {
        $!name
    }
}
