knowhow RoleToClassApplier {

    sub has_method($target, $name, $local) {
        my %mt := $target.HOW.method_table($target);
        nqp::existskey(%mt, $name);
    }

    sub has_attribute($target, $name) {
        my @attributes := $target.HOW.attributes($target, :local(1));
        for @attributes {
            if $_.name eq $name { return 1; }
        }
        return 0;
    }

    method apply($target, @roles) {
        # If we have many things to compose, then get them into a single helper
        # role first.
        my $to_compose;
        my $to_compose_meta;
        if nqp::elems(@roles) == 1 {
            $to_compose := @roles[0];
            $to_compose_meta := $to_compose.HOW;
        }
        else {
            $to_compose := NQPConcreteRoleHOW.new_type(:instance_of(NQPMu));
            $to_compose_meta := $to_compose.HOW;
            for @roles {
                $to_compose_meta.add_role($to_compose, $_);
            }
            $to_compose := $to_compose_meta.compose($to_compose);
        }

        # Collisions?
        my @collisions := $to_compose_meta.collisions($to_compose);
        for @collisions -> $name {
            unless has_method($target, $name, 1) {
                nqp::die("Method '$name' collides and a resolution must be provided by the class '" ~
                    $target.HOW.name($target) ~ "'");
            }
        }

        # Compose in any methods.
        my @methods := $to_compose_meta.methods($to_compose);
        for @methods {
            my $name := nqp::can($_, 'name') ?? $_.name !! nqp::getcodename($_);
            unless has_method($target, $name, 0) {
                $target.HOW.add_method($target, $name, $_);
            }
        }

        # Compose in any role attributes.
        my @attributes := $to_compose_meta.attributes($to_compose);
        for @attributes {
            if has_attribute($target, $_.name) {
                nqp::die("Attribute '" ~ $_.name ~ "' already exists in the class '" ~
                    $target.HOW.name($target) ~  "', but a role also wishes to compose it");
            }
            $target.HOW.add_attribute($target, $_);
        }

        # The full list of done roles is just the list of the one role we have
        # composed in.
        # XXX TODO
        my @done;
        @done[0] := $to_compose;
    }
}
