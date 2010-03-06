#! nqp

=begin

=head2 Basic Functions

These functions provide basic functionality that would be part of the standard
setting in Perl 6, but are not provided with NQP by default.

=over 4

=item @mapped := map(&code, @originals)

Pretty much as you would expect, except there is no flattening or other
coersion, due to the current semantics of NQP.  This means that every
application of C<&code> to an item in the C<@originals> produces exactly
one entry in the C<@mapped> output.

=end

sub map (&code, @originals) {
    my @mapped;

    for @originals {
        @mapped.push(&code($_));
    }

    return @mapped;
}


=begin

=item @matches := grep(&code, @all)

Select all members of C<@all> for which C<&code($member)> returns true.
Order is retained, and duplicates are handled independently.

=end

sub grep (&code, @all) {
    my @matches;

    for @all {
        @matches.push($_) if &code($_);
    }

    return @matches;
}


=begin

=item $result := reduce(&code, @array, $initial?)

Loop over the C<@array>, applying the binary function C<&code> to the current
C<$result> and next element of the C<@array>, each time saving the return
value of the C<&code> as the new C<$result>.  When all elements of the array
have been processed, the last C<$result> computed is returned.

If an C<$initial> value is supplied, it is used as the starting value for
C<$result> when iterating over the C<@array>.  This automatically works with
any length C<@array>, even an empty one.

Without an C<$initial> value, C<reduce()> applies the C<&code> to the first two
elements in the C<@array> to determine the inital C<$result> (and skips these
first two elements when looping).  If the C<@array> has only one element, it
is returned directly as the final C<$result>.  If the C<@array> is empty, the
C<$result> is an undefined value.

=end

sub reduce (&code, @array, *@initial) {
    my    $init_elems := pir::elements(@initial);
    if    $init_elems >  1 {
        pir::die('Only one initial value allowed in reduce()');
    }
    elsif $init_elems == 1 {
        return _reduce(&code, @array, @initial[0]);
    }
    else {
        my    $array_elems := pir::elements(@array);
        if    $array_elems == 0 {
            return my $undef;
        }
        elsif $array_elems == 1 {
            return @array[0];
        }
        else {
            my $initial := &code(@array[0], @array[1]);
            my $iter    := pir::iter__PP(@array);

            pir::shift($iter);
            pir::shift($iter);

            return _reduce(&code, $iter, $initial);
        }
    }
}

sub _reduce(&code, $iter, $initial) {
    my $result := $initial;

    for $iter {
        $result := &code($result, $_);
    }

    return $result;
}

# vim: ft=perl6
