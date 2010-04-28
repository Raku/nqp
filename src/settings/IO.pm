=begin

=head1 NAME

IO.nqp - IO related functions for NQP.

=head1 SYNOPSIS

    # I/O
    print('things', ' to ', 'print', ...);
    say(  'things', ' to ', 'say',   ...);
    $contents := slurp($filename);
    spew(  $filename, $contents);
    append($filename, $contents);

=head1 I/O Functions

Basic stdio and file I/O functions.

=over 4

=item $contents := slurp($filename)

Read the C<$contents> of a file as a single string.

=end

sub slurp ($filename) {
    my $fh       := pir::open__Pss($filename, 'r');
    my $contents := $fh.readall;
    pir::close($fh);

    return $contents;
}


=begin

=item spew($filename, $contents)

Write the string C<$contents> to a file.

=end

sub spew ($filename, $contents) {
    my $fh := pir::open__Pss($filename, 'w');
    $fh.print($contents);
    pir::close($fh);
}


=begin

=item append($filename, $contents)

Append the string C<$contents> to a file.

=end

sub append ($filename, $contents) {
    my $fh := pir::open__Pss($filename, 'a');
    $fh.print($contents);
    pir::close($fh);
}


=begin

=back

=end

# vim: ft=perl6
