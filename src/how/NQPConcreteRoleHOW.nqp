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
    has @!method_order;
    has @!method_names;
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
        $obj.BUILD(:$name, :$instance_of);
        $obj
    }

    method BUILD(:$name!, :$instance_of!) {
        $!name := $name;
        $!instance_of := $instance_of;
        @!attributes := nqp::list();
        %!methods := nqp::hash();
        @!method_order := nqp::list();
        @!method_names := nqp::list();
        @!multi_methods_to_incorporate := nqp::list();
        @!collisions := nqp::list();
        @!roles := nqp::list();
        @!role_typecheck_list := nqp::list();
        nqp::isnull($instance_of) || nqp::push(@!role_typecheck_list, $instance_of);
        $!composed := 0;
    }

    # Create a new meta-object instance, and then a new type object
    # to go with it, and return that.
    method new_type(:$name = '<anon>', :$instance_of = nqp::null()) {
        my $metarole := self.new(:$name, :$instance_of);
        nqp::settypehll($metarole, 'nqp');
        nqp::setdebugtypename(nqp::newtype($metarole, 'Uninstantiable'), $name);
    }

    method add_method($obj, $name, $code_obj) {
        if nqp::existskey(%!methods, $name) {
            nqp::die("This role already has a method named " ~ $name);
        }
        nqp::push(@!method_order, %!methods{$name} := $code_obj);
        nqp::push(@!method_names, $name);
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
            for @!roles -> $role {
                my @role_rtl := nqp::how_nd($role).role_typecheck_list($role);
                nqp::push(@!role_typecheck_list, $role);
                nqp::splice(@!role_typecheck_list, @role_rtl, nqp::elems(@!role_typecheck_list), 0);
            }
            RoleToRoleApplier.apply($obj, @!roles);
        }

        # Publish type cache.
        my @tc := nqp::clone(@!role_typecheck_list);
        nqp::unshift(@tc, $obj.WHAT);
        nqp::settypecache($obj, @tc);
        nqp::settypecheckmode($obj,
            nqp::const::TYPE_CHECK_CACHE_DEFINITIVE);

        # Publish method cache.
#?if !moar
        nqp::setmethcache($obj, {});
        nqp::setmethcacheauth($obj, 1);
#?endif

        # Mark composed.
        $!composed := 1;
        $obj
    }

    method is_composed($obj) {
        $!composed
    }

    ##
    ## Introspecty
    ##

    method methods($obj, :$local, :$all) {
        @!method_order
    }

    method method_order($obj) {
        @!method_order
    }

    method method_names($obj) {
        @!method_names
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
        @!attributes
    }

    method roles($obj, :$transitive = 0) {
        @!roles
    }

    method role_typecheck_list($obj) {
        @!role_typecheck_list
    }

    method instance_of($obj) {
        $!instance_of
    }
}
