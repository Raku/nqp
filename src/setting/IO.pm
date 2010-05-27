#! nqp

=begin

IO Methods and Functions

=end

=begin item slurp
Returns the contents of C<$filename> as a single string.
=end

our sub slurp ($filename) {
    my $handle := FileHandle.new();
    $handle.open($file, 'r');
    my $contents := $handle.readall;
    $handle.close();
    $contents;
}


=begin item spew
Write the string value of C<$contents> to C<$filename>.
=end item

our sub spew($filename, $contents) {
    my $handle := FileHandle.new();
    $handle.open($filename, 'w');
    $handle.print($contents);
    $handle.close();
}

# vim: ft=perl6
