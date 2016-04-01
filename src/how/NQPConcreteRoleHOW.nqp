# This implements a concrete, parameterized instance of a role that
# can be composed into a class or mixed into an object.
knowhow NQPConcreteRoleHOW {
    ##
    ## Attributes
    ##

    # Name of the concrete role.
    has $!name;

    # What parametric role it was instantiated from.
    has $!instance_of;

    # Attributes and methods.
    has @!attributes;
    has %!methods;
    has @!multi_methods_to_incorporate;
    has @!collisions;

    # Other roles that this one does.
    has @!roles;

    # All composed in roles.
    has @!role_typecheck_list;

    # Have we been composed?
    has $!composed;

    my $archetypes := Archetypes.new( :nominal(1), :composable(1) );
    method archetypes() {
        $archetypes
    }

    ##
    ## Declarative
    ##

    # Creates a new instance of this meta-class.
    method new(:$name!, :$instance_of!) {
        my $obj := nqp::create(self);
        $obj.BUILD(:name($name), :instance_of($instance_of));
        $obj
    }

    method BUILD(:$name!, :$instance_of!) {
        $!name := $name;
        $!instance_of := $instance_of;
        @!attributes := nqp::list();
        %!methods := nqp::hash();
        @!multi_methods_to_incorporate := nqp::list();
        @!collisions := nqp::list();
        @!roles := nqp::list();
        @!role_typecheck_list := nqp::list();
        $!composed := 0;
    }

    # Create a new meta-object instance, and then a new type object
    # to go with it, and return that.
    method new_type(:$name = '<anon>', :$instance_of!) {
        my $metarole := self.new(:name($name), :instance_of($instance_of));
        nqp::setdebugtypename(nqp::newtype($metarole, 'Uninstantiable'), $name);
    }

    method add_method($obj, $name, $code_obj) {
        if nqp::existskey(%!methods, $name) {
            nqp::die("This role already has a method named " ~ $name);
        }
        %!methods{$name} := $code_obj;
    }

    method add_multi_method($obj, $name, $code_obj) {
        my %todo;
        %todo<name> := $name;
        %todo<code> := $code_obj;
        nqp::push(@!multi_methods_to_incorporate, %todo);
        $code_obj;
    }

    method add_attribute($obj, $meta_attr) {
        my $name := $meta_attr.name;
        for @!attributes {
            if $_.name eq $name {
                nqp::die("This role already has an attribute named " ~ $name);
            }
        }
        nqp::push(@!attributes, $meta_attr);
    }

    method add_parent($obj, $parent) {
        nqp::die("A role cannot inherit from a class in NQP")
    }

    method add_role($obj, $role) {
        nqp::push(@!roles, $role);
    }

    method add_collision($obj, $colliding_name) {
        nqp::push(@!collisions, $colliding_name);
    }

    # Compose the role. Beyond this point, no changes are allowed.
    method compose($obj) {
        # Incorporate roles. They're already instantiated. We need to
        # add to done list their instantiation source.
        if @!roles {
            for @!roles {
                nqp::push(@!role_typecheck_list, $_);
                nqp::push(@!role_typecheck_list, $_.HOW.instance_of($_));
            }
            RoleToRoleApplier.apply($obj, @!roles);
        }

        # Mark composed.
        $!composed := 1;
        nqp::settypecache($obj, [$obj.WHAT]);
        nqp::setmethcache($obj, {});
        nqp::setmethcacheauth($obj, 1);
        $obj
    }


    ##
    ## Introspecty
    ##

    method methods($obj, :$local) {
        my @meths;
        for %!methods {
            nqp::push(@meths, nqp::iterval($_));
        }
        @meths
    }

    method method_table($obj) {
        %!methods
    }

    method collisions($obj) {
        @!collisions
    }

    method name($obj) {
        $!name
    }

    method shortname($obj) {
        my @parts := nqp::split('::', self.name($obj) // '');
        @parts ?? @parts[nqp::elems(@parts) - 1] !! '<anon>'
    }

    method attributes($obj, :$local) {
        my @attrs;
        for @!attributes {
            nqp::push(@attrs, $_);
        }
        @attrs
    }

    method roles($obj) {
        @!roles
    }
    
    method role_typecheck_list($obj) {
        @!role_typecheck_list
    }

    method instance_of($obj) {
        $!instance_of
    }
}
