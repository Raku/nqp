# string indexing tests.
my int $x := 100;
plan(26 * $x + 26);
# XXX TODO rework this stuff into indexic.t
# If changing this file, also add equivalent changes to moar/xx-indexic.t
my str $abc-string := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
my int $i := 0;

$i := 0;
# test that we can find A through Z with the needle at all possible points of
# a string of length 26 (the alphabet)
test-it($abc-string, 0, False);
test-it($abc-string, 1, False);
#$string' x $x"
# Test that we can find a needle from offset 0 to offset 2599 that is placed
# at the requested offset
my str $abc-x-string := nqp::x($abc-string, $x);
#test-it($abc-x-string, 0);
#while ($i < nqp::chars($abc-x-string)) {
#    my int $j := $i % nqp::chars($abc-string);
#    my str $letter := nqp::chr($j + nqp::ord('A'));
#    is( nqp::index($abc-x-string, $letter, $i), $i, "nqp::index('$abc-string' x $x, '$letter', $i)");
#    $i++;
#}

sub test-it ($string, $offset, $range) {
    my $i := 0;
    while ($i < nqp::chars($abc-string)) {
        my $h_start := $offset;
        my int $j := $i % nqp::chars($string);
        my str $letter := nqp::chr($j + nqp::ord('A'));
        my $needle := $letter;
        is( nqp::index($string, $needle, $h_start), $i, "nqp::index('$string', $needle, $h_start) = $i");
        $i++;
    }
}
