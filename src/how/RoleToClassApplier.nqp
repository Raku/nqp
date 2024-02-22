knowhow RoleToClassApplier {

    method apply($target, @roles) {
        my $class;                      # resulting class object to be composed
        my $class_how;                  # HOW of the composed class object
        my $target_how := $target.HOW;  # HOW of the target

        my $m := nqp::elems(@roles);
        if $m == 1 {
            $class     := nqp::atpos(@roles, 0);
            $class_how := $class.HOW;
        }

        # If we have many things to compose, then get them into a single
        # helper role first
        else {
            $class     := NQPConcreteRoleHOW.new_type(:instance_of(NQPMu));
            $class_how := $class.HOW;

            my $i := 0;
            while $i < $m {
                $class_how.add_role($class, nqp::atpos(@roles, $i));
                ++$i;
            }
            $class := $class_how.compose($class);
        }

        # Handle any collisions
        my @collisions := $class_how.collisions($class);
        if nqp::elems(@collisions) -> $m {
            my $i := 0;
            while $i < $m {
                my $name := nqp::atpos(@collisions, $i);
                has_method($target, $name)
                  ?? ++$i
                  !! nqp::die("Method '$name' collides and a resolution must be provided by the class '" ~ $target_how.name($target) ~ "'");
            }
        }

        # Compose in any methods
        my @methods := $class_how.methods($class);
        if nqp::elems(@methods) -> $m {
            my $i := 0;
            while $i < $m {
                my $code := nqp::atpos(@methods, $i);
                my $name := name_of_code($code);
                $target_how.add_method($target, $name, $code)
                  unless has_method($target, $name);
                ++$i;
            }
        }

        # Compose in any role attributes.
        my @attributes := $class_how.attributes($class);
        if nqp::elems(@attributes) -> $m {
            my $i := 0;
            while $i < $m {
                my $attribute := nqp::atpos(@attributes, $i);
                my $name      := $attribute.name;
                has_attribute($target, $name)
                  ?? nqp::die(
                       "Attribute '$name' already exists in the class '"
                         ~ $target_how.name($target)
                         ~  "', but a role also wishes to compose it"
                     )
                  !! $target_how.add_attribute($target, $attribute);
                ++$i;
            }
        }

        $class
    }
}
