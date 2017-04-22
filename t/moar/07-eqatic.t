#!/usr/bin/env nqp
plan(100);
todo("MVM index/equatic bug", 1);
ok(!nqp::eqatic('b', 'bb', 0), "MVM index/equatic bug");
ok( nqp::eqatic('aBcdef', 'bcd', 1));
# With ligatures that expand under casefolding
ok( nqp::eqatic('aaﬆaa', 'ﬆ', 2) );
ok( nqp::eqatic('aastaa', 'ﬆ', 2) );
ok( nqp::eqatic('aaﬆaa', 'st', 2) );
ok( nqp::eqatic('aaﬆaaz', 'z', 5) );
ok( nqp::eqatic('aaﬆzaa', 'z', 3) );
ok( nqp::eqatic('aaaﬆ', 'st', 3) );
ok( nqp::eqatic('ﬆaaa', 'st', 0) );
ok( nqp::eqatic('st', 'ﬆ', 0) );
ok( nqp::eqatic('ﬆ', 'st', 0) );
ok( nqp::eqatic('aaaaﬆ', 'st', 4) );
ok( nqp::eqatic('AAAAﬆ', 'st', 4) );
test-it('ﬆ', 'st',  20, 1);
test-it('ﬆ', 'st',  20, 0);
test-it('st', 'ﬆ',  20, 1);
test-it('st', 'ﬆ',  20, 0);
# Without codepoint which expand when casefolded
for (0,1,2,3,4,5,6) -> $val {
    my str $letter := nqp::chr($val + nqp::ord('A'));
    ok( nqp::eqatic('ABCDEFG', $letter, $val), "nqp::equat(\$needle,  '$letter', $val)");
}

sub test-it ($needle, $text, $max, $opt) {
    my int $i := 0;
    while ($i < $max) {
        my str $str := nqp::x('a', $max - $i);
        $str := $str ~ $text;
        $str := $str ~ nqp::x('b', $i) if $opt;
        ok( nqp::eqatic($str, $needle, $max - $i), "eqatic haystack = '$str' needle = '$needle' $i");
        $i++
    }
}
