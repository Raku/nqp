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

=item $string := @array.join($join_string)

Join C<@array> using C<$join_string>

=end

    method join ($join_string) {
        return Q:PIR{
            $P0 = find_lex '$join_string'
            $S0 = $P0
            $S1 = join $S0, self
            %r  = box $S1
        }
    }

=begin

=back

=end

}

sub join($join_string, *@list) { @list.join($join_string) }

sub list(*@list) { @list };



# vim: ft=perl6
