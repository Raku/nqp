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
