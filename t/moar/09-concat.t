plan(22);
sub concat-test ($a, $b, $result, $chars, $message) {
    is(nqp::concat($a, $b), $result, "nqp::concat return value: " ~ $message );
    is(nqp::chars(nqp::concat($a, $b)), $chars, "nqp::concat final char count = $chars: " ~ $message);
}
is(nqp::concat("\x[0061]", "\x[0304]"), nqp::chr(0x101), 'concat letter + diacritic becomes correct NFC form');
is(nqp::chars(nqp::concat("\x[0061]", "\x[0304]")), 1, 'concat letter + diacritic shows right char count');
my int $i := 0;
while $i < 10 {
    my $gend-string := nqp::x('a', $i);
    concat-test(
        $gend-string ~ "\r", "\n",
        $gend-string ~ "\r\n", $i + 1,
        $gend-string ~ "\\r\\n"
    );
    $i++;
}
