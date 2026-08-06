plan(12);

# Lookbehind is compiled by reversing its pattern and matching against the
# reversed target.  Pattern nodes whose compiled bodies always match
# left-to-right (subrule calls, and zero-width checks other than anchors)
# cannot be reversed that way, so lookbehinds containing them scan for a
# match that ends at the current position instead.

grammar Subrule {
    token ab  { ab }
    token TOP { .. <?after <.ab>> .* }
}
ok( ?Subrule.parse('abba'), 'lookbehind calling a subrule matches the text behind');
ok( !Subrule.parse('baab'), 'lookbehind calling a subrule fails on other text behind');

grammar SubruleNeg {
    token ab  { ab }
    token TOP { .. <!after <.ab>> .* }
}
ok( ?SubruleNeg.parse('baab'), 'negated lookbehind with a subrule matches when the subrule cannot end here');
ok( !SubruleNeg.parse('abba'), 'negated lookbehind with a subrule fails when the subrule ends here');

grammar SubruleAnchor {
    token ab  { ab }
    token TOP { .* <?after ^ <.ab>> .* }
}
ok( ?SubruleAnchor.parse('ab'),  'anchor inside a scanning lookbehind holds at the start of the target');
ok( !SubruleAnchor.parse('xab'), 'anchor inside a scanning lookbehind fails away from the start');

grammar PeekAhead {
    token TOP { ab <?after a <?[b]> b> }
}
ok( ?PeekAhead.parse('ab'), 'zero-width peek inside a lookbehind checks the character ahead');

grammar PeekAheadWrong {
    token TOP { ab <?after a <?[a]> b> }
}
ok( !PeekAheadWrong.parse('ab'), 'zero-width peek inside a lookbehind does not check the character behind');

grammar Capture {
    token ab  { ab }
    token TOP { .. <after <.ab>> .* }
}
my $m := Capture.parse('abba');
ok( ?$m, 'capturing lookbehind with a subrule matches');
ok( $m<after>.from == 2 && $m<after>.pos == 2, 'capturing lookbehind produces a zero-width match at the current position');

grammar CaptureFlip {
    token TOP { ... <after a+ b> }
}
$m := CaptureFlip.parse('aab');
ok( ?$m, 'capturing lookbehind on the flipped-match path matches');
ok( $m<after>.from == 3 && $m<after>.pos == 3, 'flipped-match capturing lookbehind also produces a zero-width match at the current position');
