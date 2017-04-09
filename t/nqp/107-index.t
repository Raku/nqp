# string indexing tests.
my int $x := 200;
plan(
    (26 * $x)
    + 26 * 8
    + 28
);
my int $j := 1;
#2**7 and then 2 ** 24 on little, and on big test 2**24, 2**0
while $j < 28 {
    my $big := "\x[80]\x[100000]🐧"; # Big endian
    my $little := "\x[100000]\x[1]🐧"; # Little endian
    my $string-big := nqp::x('A', $j) ~ $big;
    my $string-little := nqp::x('A', $j) ~ $little;
    is(nqp::index($string-big, "\x[0]", 0), -1, "Doesn't find big endian null byte incorrectly across 32 bit numbers");
    is(nqp::index($string-little, "\x[0]", 0), -1, "Doesn't find little endian null byte incorrectly across 32 bit numbers");
    #my str $one := nqp::x("\x[1]", $j);
    #my str $string := $one ~ $null ~ '🐧'; # High codepoint character to force >8bit representationn
    #is(nqp::index($string, "\x[0]", 0), $j, "nqp::index(\\x[1] x $j ~ \\x[0], 0) = $j");
    $j++;
}
# XXX TODO rework this stuff into indexic.t
# If changing this file, also add equivalent changes to moar/xx-indexic.t
my str $abc-string := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
my str $russian := 'АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩ';
my int $i := 0;

$i := 0;
# test that we can find A through Z with the needle at all possible points of
# a string of length 26 (the alphabet) from index 0
test-it($abc-string, 0, 'Finds the needle when starting at index 0 when needle in haystack at varying distances', "‘$abc-string’", :offset(0), :should-succeed);
# Russian text to force non-8bit representation XXX russian tests need to start with 'А' which is not the same as Latin 'A'!
test-it($russian, 0, 'Finds the needle when starting at index 0 when needle in haystack at varying distances', "‘$russian’", :offset(0), :should-succeed, :begin('А'));

test-it($abc-string, 1, "Finds needle when starting at index of the needle inside the haystack", "‘$abc-string’", :offset(0), :should-succeed);
test-it($russian, 1, "Finds needle when starting at index of the needle inside the haystack", "‘$russian’", :offset(0), :should-succeed, :begin('А'));

test-it($abc-string, 1, 'Does not find needle when starting one index after location of the needle inside the haystack', "‘$abc-string’", :offset(1), :should-succeed(0) );
test-it($russian, 1, 'Does not find needle when starting one index after location of the needle inside the haystack', "‘$russian’", :offset(1), :should-succeed(0), :begin('А') );
# Test that we can find a needle from offset 0 to offset 2599 that is placed
# at the requested offset
my str $abc-x-string := nqp::x($abc-string, $x);
# line below is not yet working replacement for the while loop below (so it can use the routine as well)
test-it($abc-x-string, 1, "Stresstest: Finds needle when needle at start point in haystack",  "'$abc-string' x $x", :offset(0), :should-succeed);
test-it($russian, 1, "Stresstest: Finds needle when needle at start point in haystack",  "'$russian' x $x", :offset(0), :should-succeed, :begin('А'));

sub test-it ($string, $range, $label, str $message, int :$offset, :$should-succeed, :$named, :$begin = 'A') {
    $message := "‘$string’" unless $message;
    say($label);
    my $i := 0;
    while ($i < nqp::chars($string)) {
        my int $j := $i % nqp::chars($abc-string);
        my str $letter := nqp::chr($j + nqp::ord($begin));
        my int $h_start := $range ?? $i + $offset !! $offset;
        my int $expected := $should-succeed ?? $i !! -1;

        my str $needle := $letter;
        is( nqp::index($string, $needle, $h_start), $expected, "nqp::index($message, $needle, $h_start) = $expected");
        $i++;
    }
}
