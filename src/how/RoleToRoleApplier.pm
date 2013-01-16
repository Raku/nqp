knowhow RoleToRoleApplier {
    method apply($target, @roles) {
        # Aggregate all of the methods sharing names.
        my %meth_info;
        for @roles {
            my @methods := $_.HOW.methods($_);
            for @methods {
                my $name := nqp::can($_, 'name') ?? $_.name !! nqp::getcodename($_);
                my $meth := $_;
                my @meth_list;
                if nqp::defined(%meth_info{$name}) {
                    @meth_list := %meth_info{$name};
                }
                else {
                    %meth_info{$name} := @meth_list;
                }
                my $found := 0;
                for @meth_list {
                    if $meth =:= $_ {
                        $found := 1;
                    }
                }
                unless $found {
                    nqp::push(@meth_list, $meth);
                }
            }
        }

        # Also need methods of target.
        my %target_meth_info;
        my @target_meths := $target.HOW.methods($target);
        for @target_meths {
            my $name := nqp::can($_, 'name') ?? $_.name !! nqp::getcodename($_);
            %target_meth_info{$name} := $_;
        }

        # Process method list.
        for %meth_info {
            my $name := nqp::iterkey_s($_);
            my @add_meths := %meth_info{$name};

            # Do we already have a method of this name? If so, ignore all of the
            # methods we have from elsewhere.
            unless nqp::defined(%target_meth_info{$name}) {
                # No methods in the target role. If only one, it's easy...
                if nqp::elems(@add_meths) == 1 {
                    $target.HOW.add_method($target, $name, @add_meths[0]);
                }
                else {
                    # More than one - add to collisions list.
                    $target.HOW.add_collision($target, $name);
                }
            }
        }

        # Now do the other bits.
        my @all_roles;
        for @roles {
            my $how := $_.HOW;

            # Compose is any attributes, unless there's a conflict.
            my @attributes := $how.attributes($_);
            for @attributes {
                my $add_attr := $_;
                my $skip := 0;
                my @cur_attrs := $target.HOW.attributes($target);
                for @cur_attrs {
                    if $_ =:= $add_attr {
                        $skip := 1;
                    }
                    else {
                        if $_.name eq $add_attr.name {
                            nqp::die("Attribute '" ~ $_.name ~ "' conflicts in role composition");
                        }
                    }
                }
                unless $skip {
                    $target.HOW.add_attribute($target, $add_attr);
                }
            }

            # Build up full list.
            # XXX Not really right yet...
            nqp::push(@all_roles, $_);
        }

        return @all_roles;
    }
}
