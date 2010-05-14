#! nqp

=begin

IO Methods and Functions

=end

=begin item slurp
Returns the contents of C<$filename> as a single string.
=end

sub slurp ($filename) {
    my $handle := pir::open__Pss($file, 'r');
    my $contents := $handle.readall;
    pir::close($handle);
    $contents;
}


=begin item spew
Write the string value of C<$contents> to C<$filename>.
=end item

sub spew($filename, $contents) {
    my $handle := pir::open__Pss($filename, 'w');
    $handle.print($contents);
    pir::close($handle);
}

# vim: ft=perl6
