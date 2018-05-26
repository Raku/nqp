#!/usr/bin/env nqp
## TODO XXX need MORE tests to check failures, not just succeses
plan(110);
ok(!nqp::eqatim('b', 'bb', 0), "MVM index/equatic bug");
ok(!nqp::eqatim('á', '`a`a', 0));
ok(!nqp::eqatim('á', 'aassssssss', 0));
ok(!nqp::eqatim('a', 'aasAsssss', 0));
ok( nqp::eqatim('abcdef', 'bcd', 1));
# With ligatures that expand under casefolding
ok( nqp::eqatim('aaaaa', 'a', 2) );
ok( nqp::eqatim('aaáaa', 'a', 2) );
ok( nqp::eqatim('aaaaa', 'á', 2) );
ok( nqp::eqatim('aaaaaz', 'z', 5) );
ok( nqp::eqatim('aaazaa', 'z', 3) );
ok( nqp::eqatim('aaaa', 'á', 3) );
ok( nqp::eqatim('aaaa', 'á', 0) );
ok( nqp::eqatim('á', 'a', 0) );
ok( nqp::eqatim('a', 'á', 0) );
ok( nqp::eqatim('aaaaa', 'á', 4) );
ok( nqp::eqatim('AAAAa', 'á', 4) );
test-it('a', 'á',  20, 1);
test-it('a', 'á',  20, 0);
test-it('á', 'a',  20, 1);
test-it('á', 'a',  20, 0);
# Without codepoint which expand when casefolded
for (0,1,2,3,4,5,6) -> $val {
    my str $letter := nqp::chr($val + nqp::ord('A'));
    my str $haystack := 'ABCDEFG';
    ok( nqp::eqatim($haystack, $letter, $val), "nqp::eqatim('$haystack',  '$letter', $val)");
    $haystack := nqp::lc($haystack);
    ok( !nqp::eqatim($haystack, $letter, $val), "!nqp::eqatim('$haystack',  '$letter', $val)");

}

sub test-it ($needle, $text, $max, $opt) {
    my int $i := 0;
    while ($i < $max) {
        my str $str := nqp::x('a', $max - $i);
        $str := $str ~ $text;
        $str := $str ~ nqp::x('b', $i) if $opt;
        ok( nqp::eqatim($str, $needle, $max - $i), "eqatim haystack = '$str' needle = '$needle' $i");
        $i++
    }
}
