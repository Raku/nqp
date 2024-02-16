#- NQPSpecializationLock -------------------------------------------------------
knowhow NQPSpecializationLock is repr('ReentrantMutex') {
    method protect($code) {
        CATCH {
            nqp::unlock(self);
            nqp::rethrow($!);
        }
        nqp::lock(self);
        my $res := $code();
        nqp::unlock(self);
        $res
    }
}

#- NQPParametricRoleHOW --------------------------------------------------------
# This implements a parametric role (that is, one that has yet to be
# parameterized to get a concrete role that we can actually compose
# into a class or mix into an object). It also contains the logic to
# reify it into an actual role.
knowhow NQPParametricRoleHOW {

    # Name of the parametric role.
    has $!name;

    # Attributes and methods.
    has $!attributes;
    has $!methods;
    has $!method_order;
    has $!tweaks;
    has $!multi_methods;

    # Other roles that this one does.
    has $!roles;
    has $!role_typecheck_list;

    # Have we been composed?
    has $!composed;

    # The body block of the role. (If we were to support multiple role
    # variants with the same name, this would be a multi. However, we
    # don't do that in NQP.)
    has $!body_block;

    has $!lock;

    my $archetypes := Archetypes.new(:nominal, :composable, :parametric);
    method archetypes($obj?) { $archetypes }

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

    # Helper sub to append values from an array to a given array
    sub append(@appendee, @values) {
        my $m := nqp::elems(@values);
        my $i := 0;
        while $i < $m {
            nqp::push(@appendee, nqp::atpos(@values, $i));
            ++$i;
        }
    }

    # Creates a new instance of this meta-class.
    method new(:$name!) {
        my $obj := nqp::create(self);
        $obj.BUILD($name);
        $obj
    }

    method BUILD($name) {
        $!name                := $name;
        $!methods             := nqp::hash;
        $!attributes          := nqp::list;
        $!method_order        := nqp::list;
        $!tweaks              := nqp::list;
        $!multi_methods       := nqp::list;
        $!roles               := nqp::list;
        $!role_typecheck_list := nqp::list;

        $!lock := nqp::create(NQPSpecializationLock);
    }

    # Create a new meta-class instance, and then a new type object
    # to go with it, and return that
    method new_type(:$name = '<anon>') {
        my $metarole := self.new(:$name);
        my $type := nqp::newtype($metarole, 'Uninstantiable');
        nqp::settypehll($type, 'nqp');
        nqp::setdebugtypename(nqp::setwho($type, {}), $name);
    }

    method set_body_block($obj, $body_block) {
        $!body_block := $body_block;
    }

    # Add a TWEAK code block.  Assumes it is being run in a protected
    # block
    method add_tweak($code) {
        $!tweaks := push_on_clone($!tweaks, $code);
    }

    method add_method($obj, $name, $code) {
        nqp::die("This role already has a method named " ~ $name)
          if nqp::existskey($!methods, $name);

        $!lock.protect({

            # Make sure a TWEAK will get added to the BUILD(ALL)PLAN
            self.add_tweak($code) if $name eq 'TWEAK';

            $!methods      := bindkey_on_clone($!methods, $name, $code);
            $!method_order := push_on_clone($!method_order, $code);
        });
    }

    method add_multi_method($obj, $name, $code) {

        $!lock.protect({
            $!multi_methods := push_on_clone($!multi_methods, [$name, $code]);
        });

        $code
    }

    method add_attribute($obj, $attribute) {

        # Make sure name is unique
        my $attributes := $!attributes;
        my $name := $attribute.name;
        my $m := nqp::elems($attributes);
        my $i := 0;
        while $i < $m {
            nqp::atpos($attributes, $i).name eq $name
              ?? nqp::die("This role already has an attribute named '$name'")
              !! ++$i;
        }
        $!lock.protect({
            # Note: use previously saved for consistency in update
            $!attributes := push_on_clone($attributes, $attribute);
        });

        $attribute
    }

    method add_parent($obj, $parent) {
        nqp::die("A role cannot inherit from a class")
    }

    # Add a role in a threadsafe manner
    method add_role($obj, $role) {
        $!lock.protect({
            $!roles := push_on_clone($!roles, $role);
        });
    }

    # Compose the role. Beyond this point, no changes are allowed
    method compose($obj) {

        $!lock.protect({

            my $roles := $!roles;
            if nqp::elems($roles) -> $m {
                my $role_typecheck_list := nqp::clone($!role_typecheck_list);

                my $i := 0;
                while $i < $m {
                    my $role := nqp::atpos($roles, $i);
                    nqp::push($role_typecheck_list, $role);
                    append(
                      $role_typecheck_list, $role.HOW.role_typecheck_list($role)
                    );
                    ++$i;
                }
                $!role_typecheck_list := $role_typecheck_list;
            }

            $!composed := 1;
            nqp::settypecache($obj, [$obj.WHAT]);
#?if !moar
            nqp::setmethcache($obj, {});
            nqp::setmethcacheauth($obj, 1);
#?endif
        });

        $obj
    }

    # Method to indicate that this type is parametric.
    method parametric($obj) { 1 }

    # Curries this parametric role with arguments
    method curry($obj, *@args) {
        NQPCurriedRoleHOW.new_type($obj, |@args)
    }

    # This specializes the role for the given class and builds a concrete
    # role
    method specialize($obj, $class, *@args) {

        # We only allow one specialization of a role to take place at a time,
        # since the body block captures the methods into its lexical scope,
        # but we don't do the appropriate cloning until a bit later. These
        # must happen before another specialize happens and re-captures the
        # things we are composing.
        $!lock.protect({

            # Run the body block to capture the arguments into the correct
            # type argument context.
            my $pad := $!body_block($class, |@args);

            # Construct a new concrete role.
            my $irole := NQPConcreteRoleHOW.new_type(
              :name($!name), :instance_of($obj)
            );
            my $how := $irole.HOW;

            # Copy attributes. (Nothing to reify in NQP as we don't currently
            # have parametric types that may end up in the signature.)
            my $attributes := $!attributes;
            if nqp::elems($attributes) -> $m {
                my $i := 0;

                while $i < $m {
                    $how.add_attribute($irole, nqp::atpos($attributes, $i));
                    ++$i;
                }
            }

            # Capture methods in the correct lexical context.
            my $method_order := $!method_order;
            if nqp::elems($method_order) -> $m {
                my $i := 0;

                while $i < $m {
                    my $method := nqp::atpos($method_order, $i);
                    my $name   := $method.name;

                    my $instance := nqp::can($method, 'instantiate_generic')
                        ?? $method.instantiate_generic($pad)
                        !! $method.clone;

                    # Hack in the proper name if so indicated
                    if nqp::eqat($name, '!!LATENAME!!', 0) {
                        $name := nqp::atkey($pad, nqp::substr($name, 12));
                        $instance.'!set_name'($name);
                    }

                    $how.add_method($irole, $name, $instance);
                    ++$i;
                }
            }

            my $multi_methods := $!multi_methods;
            if nqp::elems($multi_methods) -> $m {
                my $i := 0;

                while $i < $m {
                    my $info := nqp::atpos($multi_methods, $i);
                    $how.add_multi_method(
                      $irole, nqp::atpos($info, 0), nqp::atpos($info, 1).clone
                    );
                    ++$i;
                }
            }

            # Copy roles, instantiating them as we go
            my $roles := $!roles;
            if nqp::elems($roles) -> $m {
                my $i := 0;

                while $i < $m {
                    my $role := nqp::atpos($roles, $i);
                    $how.add_role(
                      $irole, $role.HOW.specialize($role, $class)
                    );
                    ++$i;
                }
            }

            # Compose and return produced role
            $how.compose($irole);

            $irole
        })
    }

    method methods($obj, :$local, :$all) {
        $!method_order
    }
    method attributes($obj, :$local) {
        $!attributes
    }
    method roles($obj, :$transitive = 0) {
        $!roles
    }

    method method_table($obj) { $!methods }
    method name($obj) { $!name }
    method role_typecheck_list($obj) { $!role_typecheck_list }

    method shortname($obj) {
        my @parts := nqp::split('::', self.name($obj) // '');
        @parts ?? nqp::atpos(@parts, nqp::elems(@parts) - 1) !! '<anon>'
    }
}
