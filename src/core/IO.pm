=begin

IO Methods and Functions

=end

=begin item open
Open file.
=end item

sub open($filename, :$r, :$w, :$a, :$bin) {
    my $mode := $w ?? 'w' !! ($a ?? 'wa' !! 'r');
    my $handle := pir::new__Ps('FileHandle');
    $handle.open($filename, $mode);
    $handle.encoding($bin ?? 'binary' !! 'utf8');
    $handle;
}

=begin item close
Close handle
=end item

sub close($handle) {
    $handle.close();
}

=begin item slurp
Returns the contents of C<$filename> as a single string.
=end item

sub slurp ($filename) {
    my $handle := open($filename, :r);
    my $contents := $handle.readall;
    $handle.close();
    $contents;
}


=begin item spew
Write the string value of C<$contents> to C<$filename>.
=end item

sub spew($filename, $contents) {
    my $handle := pir::new__Ps('FileHandle');
    $handle.open($filename, 'w');
    $handle.print($contents);
    $handle.close();
}

# vim: ft=perl6
