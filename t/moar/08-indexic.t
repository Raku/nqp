#!/usr/bin/env nqp
plan(97);
my @array :=
# (haystack, needle, result)
    ('aBcdef', 'bcd', 1),
    # With ligatures that expand under casefolding
    ('aaﬆaa', 'ﬆ', 2),
    ('aaﬆaa', 'ﬆ', 2),
    ('aastaa', 'ﬆ',  2 ),
    ('aastaa', 'ﬆ', 2 ),
    ('aaﬆaa', 'st', 2 ),
    ('aaﬆaaz', 'z', 5 ),
    ('aaﬆzaa', 'z', 3 ),
    ('aaaﬆ', 'st', 3 ),
    # TODO
    ('chars that expand on casefolding at the end are broken with equatic', 1),
    ('ﬆ', 'st', 0),
    ('aaaaﬆ', 'st', 4 ),
    ('AAAAﬆ', 'st', 4),
    #
    ('ﬆaaa', 'st', 0 ),
    ('st', 'ﬆ', 0),
;
for @array -> $elem {
    if nqp::elems($elem) < 3 {
        todo($elem[0], $elem[1]);
    }
    else {
        is( nqp::indexic($elem[0], $elem[1], 0), $elem[2],
            "nqp::indexic('" ~ $elem[0] ~ "', " ~ $elem[1] ~ "', 0)");
    }
}
test-it('ﬆ', 'st',  20, 1);
test-it('ﬆ', 'st',  20, 0);
test-it('st', 'ﬆ',  20, 1);
test-it('st', 'ﬆ',  20, 0);

# Without codepoint which expand when casefolded
for (0,1,2,3,4,5,6) -> $val {
    my str $letter := nqp::chr($val + nqp::ord('A'));
    is( nqp::indexic('ABCDEFG', $letter, 0), $val, "nqp::indexic('ABCDEFG', '$letter', $val)");
}

sub test-it ($needle, $text, $max, $opt) {
    my int $i := 1;
    while ($i < $max) {
        my str $str := nqp::x('a', $max - $i);
        $str := $str ~ $text;
        $str := $str ~ nqp::x('b', $i) if $opt;
        is( nqp::indexic($str, $needle, 0), $max - $i, "nqp::indexic(haystack = '$str', needle = '$needle',0) =  $i");
        $i++
    }
}
