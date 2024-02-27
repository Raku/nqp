#- Helpers ---------------------------------------------------------------------
# Helper sub to boolify a value to 1 or 0
sub bool($value) { $value ?? 1 !! 0 }

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

# Helper sub to return the name of a code object
sub name_of_code($code) {
    nqp::can($code, 'name') ?? $code.name !! nqp::getcodename($code)
}

# Helper sub to return the shortened name of an object that has a
# .HOW.name method
sub shortened_name($target) {
    my $parts := nqp::split('::', $target.HOW.name($target) // '');
    $parts ?? nqp::atpos($parts, nqp::elems($parts) - 1) !! '<anon>'
}

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
        ++$i;
    }

    $skip
}

# Helper sub, returns 1 if the given target has a method with the
# given name.
sub has_method($target, $name) {
    nqp::existskey($target.HOW.method_table($target), $name)
}

# Helper sub, returns 1 if the given target has an attribute with
# the given name.
sub has_attribute($target, $name) {
    my @attributes := $target.HOW.attributes($target, :local);
    if nqp::elems(@attributes) -> $m {
        my $i := 0;
        while $i < $m {
            nqp::atpos(@attributes, $i).name eq $name
              ?? (return 1)
              !! ++$i;
        }
    }

    0
}
