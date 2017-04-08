# string indexing tests.
my int $x := 100;
plan(26 * $x);
# XXX TODO rework this stuff into indexic.t
# If changing this file, also add equivalent changes to moar/xx-indexic.t
my str $abc-string := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
my int $i := 0;
my str $abc-x-string := nqp::x($abc-string, $x);
while ($i < nqp::chars($abc-x-string)) {
    my int $j := $i % nqp::chars($abc-string);
    my str $letter := nqp::chr($j + nqp::ord('A'));
    is( nqp::index($abc-x-string, $letter, 0), $j, "nqp::index('$abc-string' x $x, '$letter', $j)");
    $i++;
}
