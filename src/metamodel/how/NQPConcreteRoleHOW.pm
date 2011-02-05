# This implements a concrete, parameterized instance of a role that
# can be composed into a class or mixed into an object.
knowhow NQPConcreteRoleHOW {
    ##
    ## Attributes
    ##

    # Name of the concrete role.
    has $!name;

    # Attributes and methods.
    has %!attributes;
    has %!methods;

    # Have we been composed?
    has $!composed;


    ##
    ## Declarative
    ##

    # Creates a new instance of this meta-class.
    method new(:$name!) {
        my $obj := pir::repr_instance_of__PP(self);
        $obj.BUILD(:name($name));
        $obj
    }

    method BUILD(:$name!) {
        $!name := $name;
    }

    # Create a new meta-object instance, and then a new type object
    # to go with it, and return that.
    method new_type(:$name = '<anon>', :$repr = 'P6opaque') {
        my $metarole := self.new(:name($name));
        pir::repr_type_object_for__PPS($metarole, $repr);
    }

    # Compose the role. Beyond this point, no changes are allowed.
    method compose($obj) {
        $!composed := 1;
        $obj
    }


    ##
    ## Introspecty
    ##

    method methods($obj, :$local!) {
        my @meths;
        for %!methods {
            @meths.push($_.value);
        }
        @meths
    }

    method method_table($obj) {
        %!methods
    }

    method name($obj) {
        $!name
    }

    method attributes($obj, :$local!) {
        my @attrs;
        for %!attributes {
            @attrs.push($_.value);
        }
        @attrs
    }
}
