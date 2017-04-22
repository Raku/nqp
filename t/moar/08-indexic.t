#!/usr/bin/env nqp
plan(117);
my @array :=
# (haystack, needle, result)
    # Make sure it doesn't find a partial match at end of the haystack and then
    # return a partial match.
    ('indexic bug MVM', 1),
    ('abcdefg', 'fghi', -1),
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
    # working TODO example: commented out in case someone else needs to todo one of these tests
    #('chars that expand on casefolding at the end are broken with equatic', 1),
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
todo("MVM indexic/equatic bug", 14);
test-it('stbbbbbbbbbbbbbbbbbbbbbb', 'st',  20, 2);

# Without codepoint which expand when casefolded
for (0,1,2,3,4,5,6) -> $val {
    my str $letter := nqp::chr($val + nqp::ord('A'));
    is( nqp::indexic('ABCDEFG', $letter, 0), $val, "nqp::indexic('ABCDEFG', '$letter', $val)");
}
# TODO comment on what the options for this function do…
# $opt: Bitfield type
# +1 causes an `x` of characters to be inserted at the end
# of the target needle inside the haystack to be searched
# +2 causes us to expect a failed match
sub test-it ($needle, $text, $max, $opt) {
    my int $i := 1;
    my $long-end := $opt +& 1;
    my $should-fail := $opt +& 2;
    while ($i < $max) {
        my str $str := nqp::x('a', $max - $i);
        $str := $str ~ $text;
        $str := $str ~ nqp::x('b', $i) if $long-end;
        my $expect := $should-fail ?? -1 !! $max - $i;
        is(
          nqp::indexic($str, $needle, 0),
          $expect,
          "nqp::indexic(haystack = '$str', needle = '$needle', 0) ==  " ~ $expect
        );
        $i++
    }
}
