#- NQPConcreteRoleHOW ----------------------------------------------------------
# This implements a concrete, parameterized instance of a role that
# can be composed into a class or mixed into an object.
knowhow NQPConcreteRoleHOW {

    # Name of the concrete role.
    has $!name;

    # What parametric role it was instantiated from.
    has $!instance_of;

    # Attributes and methods.
    has $!attributes;
    has $!methods;
    has $!method_order;
    has $!tweaks;
    has $!method_names;
    has $!multi_methods;
    has $!tweaks;
    has $!collisions;

    # Other roles that this one does.
    has $!roles;

    # All composed in roles.
    has $!role_typecheck_list;

    # Have we been composed?
    has $!composed;

    has $!lock;
    method protect(&code) { code() } # Dummy protect method for now

    # Helper sub to push a value on a clone of the given target list.
    # Assumes it runs in a protected block.  Returns the clone
    sub push_on_clone($target, $value) {
        nqp::push((my $clone := nqp::clone($target)), $value);
        $clone
    }

    # Helper sub to bind a value to a key in clone of the given target hash.
    # Assumes it runs in a protected block.  Returns the clone
    sub bindkey_on_clone($target, $key, $value) {
        nqp::bindkey((my $clone := nqp::clone($target)), $key, $value);
        $clone
    }

    my $archetypes := Archetypes.new( :nominal, :composable );
    method archetypes($obj?) { $archetypes }

    # Creates a new instance of this meta-class.
    method new(:$name!, :$instance_of!) {
        my $obj := nqp::create(self);
        $obj.BUILD(:$name, :$instance_of);
        $obj
    }

    method BUILD(:$name!, :$instance_of!) {
        $!name          := $name;
        $!instance_of   := $instance_of;
        $!methods       := nqp::hash;
        $!attributes    := nqp::list;
        $!method_order  := nqp::list;
        $!tweaks        := nqp::list;
        $!method_names  := nqp::list;
        $!multi_methods := nqp::list;
        $!collisions    := nqp::list;
        $!roles         := nqp::list;
        $!role_typecheck_list := nqp::list;

        $!lock := self;  # for now, until we have a real "lock: knowhow
    }

    # Create a new meta-object instance, and then a new type object
    # to go with it, and return that
    method new_type(:$name = '<anon>', :$instance_of!) {
        my $metarole := self.new(:$name, :$instance_of);
        nqp::settypehll($metarole, 'nqp');
        nqp::setdebugtypename(nqp::newtype($metarole, 'Uninstantiable'), $name);
    }

    # Add a TWEAK code block.  Assumes it is being run in a protected
    # block.
    method add_tweak($code) {
        $!tweaks := push_on_clone($!tweaks, $code);
    }

    # Add a method in a threadsafe manner
    method add_method($obj, $name, $code) {
        nqp::die("Cannot add a null method '$name' to role '$!name'")
          if nqp::isnull($code) || !nqp::defined($code);

        nqp::die("This role already has a method named " ~ $name)
          if nqp::existskey($!methods, $name);

        $!lock.protect({

            # Make sure a TWEAK will get added to the BUILD(ALL)PLAN
            self.add_tweak($code) if $name eq 'TWEAK';

            $!methods      := bindkey_on_clone($!methods, $name, $code);
            $!method_order := push_on_clone($!method_order, $code);
            $!method_names := push_on_clone($!method_names, $name);
        });
    }

    # Add a multi method in a threadsafe manner
    method add_multi_method($obj, $name, $code) {
        # Queue them up for composition time
        $!lock.protect({
            $!multi_methods := push_on_clone($!multi_methods, [$name, $code]);
        });

        $code
    }

    # Add an attribute with the given meta information in a threadsafe manner
    method add_attribute($obj, $attribute) {

        # Make sure name is unique
        my $attributes := $!attributes;
        my $name := $attribute.name;
        my $m := nqp::elems($attributes);
        my $i := 0;
        while $i < $m {
            nqp::atpos($attributes, $i).name eq $name
              ?? nqp::die("This role already has an attribute named " ~ $name)
              !! ++$i;
        }

        $!lock.protect({
            $!attributes := push_on_clone($!attributes, $attribute);
        });

        $attribute
    }

    method add_parent($obj, $parent) {
        nqp::die("A role cannot inherit from a class in NQP")
    }

    # Add a role in a threadsafe manner
    method add_role($obj, $role) {
        $!lock.protect({
            $!roles := push_on_clone($!roles, $role);
        });
    }

    # Add a name collision in a threadsafe manner
    method add_collision($obj, $name) {
        $!lock.protect({
            $!collisions := push_on_clone($!collisions, $name);
        });
    }

    # Compose the role. Beyond this point, no changes are allowed
    method compose($obj) {
        # Incorporate roles. They're already instantiated. We need to
        # add to done list their instantiation source.
        $!lock.protect({
            my $roles := $!roles;
            if nqp::elems($roles) -> $m {
                my $typecheck_list := nqp::clone($!role_typecheck_list);
                my $i := 0;
                while $i < $m {
                    my $role := nqp::atpos($roles, $i);
                    nqp::push($typecheck_list, $role);
                    nqp::push($typecheck_list, $role.HOW.instance_of($role));
                    ++$i;
                }
                $!role_typecheck_list := $typecheck_list;
                RoleToRoleApplier.apply($obj, $roles);
            }

            # Mark composed.
            $!composed := 1;
            nqp::settypecache($obj, [$obj.WHAT]);
#?if !moar
            nqp::setmethcache($obj, {});
            nqp::setmethcacheauth($obj, 1);
#?endif
        });

        $obj
    }

    # Simple accessors
    method method_order($obj)        { $!method_order        }
    method method_names($obj)        { $!method_names        }
    method method_table($obj)        { $!methods             }
    method collisions($obj)          { $!collisions          }
    method name($obj)                { $!name                }
    method role_typecheck_list($obj) { $!role_typecheck_list }
    method instance_of($obj)         { $!instance_of         }

    # Other introspection
    method methods($obj, :$local, :$all) {
        $!method_order
    }
    method roles($obj, :$transitive = 0) {
        $!roles
    }
    method attributes($obj, :$local) {
        $!attributes
    }
    method shortname($obj) {
        my @parts := nqp::split('::', self.name($obj) // '');
        @parts ?? nqp::atpos(@parts, nqp::elems(@parts) - 1) !! '<anon>'
    }
}
