#- RoleToRoleApplier -----------------------------------------------------------
# Provides the logic to have a role consume a number of given roles with the
# the .apply class method.  No other public API is supplied.
knowhow RoleToRoleApplier {

    # Helper sub to push to a list only if the given value is not in that list
    sub push_if_unique(@list, $value) {
        if nqp::elems(@list) -> $m {
            my $i := 0;
            while $i < $m {
                return nqp::null if nqp::eqaddr(nqp::atpos(@list, $i),$value);
                ++$i;
            }
        }

        nqp::push(@list, $value);
    }

    # Helper sub to return the name of a code object
    sub name_of_code($code) {
        nqp::can($code, 'name') ?? $code.name !! nqp::getcodename($code)
    }

    # Helper sub, returns 1 if the given attribute does not need to be added
    # to the list of current attributes.  Dies if there is a name conflict
    sub can_skip_attribute_by_name(@current, $that) {
        my $skip;

        my $m := nqp::elems(@current);
        my $i := 0;
        while $i < $m {
            my $this := nqp::atpos(@current, $i);
            if nqp::eqaddr($this, $that) {
                $skip := 1;
            }
            elsif $this.name eq $that.name {
                nqp::die("Attribute '" ~ $this.name ~ "' conflicts in role composition");
            }
        }

        $skip
    }

    # Aggregate all of the methods sharing names
    method apply($target, @roles) {
        my %methods_to_add;
        my @method_names;

        # Create a hash of lists with method objects, and a list of
        # method names on the fly
        my $m := nqp::elems(@roles);
        my $i := 0;
        while $i < $m {
            my $role    := nqp::atpos(@roles, $i);
            my @methods := $role.HOW.methods($role);

            my $n := nqp::elems(@methods);
            my $j := 0;
            while $j < $n {
                my $method := nqp::atpos(@methods, $j);

                my $name := name_of_code($method);
                my $list := nqp::atkey(%methods_to_add, $name);

                my @method_list;
                if nqp::isnull($list) {
                    nqp::push(@method_names, $name);
                    nqp::bindkey(%methods_to_add, $name, @method_list);
                }
                else {
                    @method_list := $list;
                }

                push_if_unique(@method_list, $method);
                ++$j;
            }
            ++$i;
        }

        # Also need methods of target
        my %target_methods_info;
        my @target_methods := $target.HOW.methods($target);

        $m := nqp::elems(@target_methods);
        $i := 0;
        while $i < $m {
            my $method := nqp::atpos(@target_methods, $i);
            nqp::bindkey(%target_methods_info, name_of_code($method), $method);
            ++$i;
        }

        # Process method list
        $m := nqp::elems(@method_names);
        $i := 0;
        while $i < $m {
            my $name := nqp::atpos(@method_names, $i);

            # Add method if we don't already have a method of this name
            if nqp::isnull(nqp::atkey(%target_methods_info, $name)) {
                my @add_methods := nqp::atkey(%methods_to_add, $name);

                nqp::elems(@add_methods) == 1
                  # No methods in the target role. If only one, it's easy
                  ?? $target.HOW.add_method(
                       $target, $name, nqp::atpos(@add_methods, 0)
                     )
                  # More than one - add to collisions list for later handling
                  !! $target.HOW.add_collision($target, $name);
            }
            ++$i;
        }

        # Now do the attributes
        $m := nqp::elems(@roles);
        $i := 0;
        while $i < $m {
            my $role       := nqp::atpos(@roles, $i);
            my @attributes := $role.HOW.attributes($role);

            # Compose in any attributes, unless there's a conflict
            if nqp::elems(@attributes) -> $n {
                my $j := 0;
                while $j < $n {
                    my $attribute_to_add := nqp::atpos(@attributes, $j);

                    $target.HOW.add_attribute($target, $attribute_to_add)
                      unless can_skip_attribute_by_name(
                        $target.HOW.attributes($target),
                        $attribute_to_add
                      );
                    ++$j;
                }
            }
            ++$i;
        }
    }
}
