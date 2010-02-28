=begin

=head2 Array Methods

These methods extend the native NQP Array class to support more of the basic
functionality expected for Perl 6 Hashes.

=end

module ResizablePMCArray {


=begin

=over 4

=item @reversed := @array.reverse

Return a C<@reversed> copy of the C<@array>.

=end

    method reverse () {
        my @reversed;
        for self { @reversed.unshift($_); }
        @reversed;
    }


=begin

=back

=end

}

# vim: ft=perl6
