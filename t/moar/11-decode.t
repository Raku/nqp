# XXX This can be moved when *conf ops are added to jvm and others
use nqpmo;
plan(9);

my sub create_buf($type) {
    my $buf := nqp::newtype(nqp::null(), 'VMArray');
    nqp::composetype($buf, nqp::hash('array', nqp::hash('type', $type)));
    $buf
}


my $buf8 := create_buf(uint8);
my $replaced_ascii := nqp::encoderepconf('åfooåbar', 'ascii', 'XXX', nqp::create($buf8), 0);
is(nqp::decode($replaced_ascii, "utf8"), 'XXXfooXXXbar', 'nqp::encoderep works with ascii');

my $replaced_latin1 := nqp::encoderep('☃foo☃barå', 'iso-8859-1', 'XXX', nqp::create($buf8));
is(nqp::decode($replaced_latin1, 'iso-8859-1'), 'XXXfooXXXbarå', 'nqp::encoderep works with latin1');

my $replaced_windows1252 := nqp::encoderep('☃foo☃barå', 'windows-1252', 'XXX', nqp::create($buf8));

my $replaced_w := nqp::encoderepconf("\c[129]åfooåbar→", 'windows-1252', 'XXX', nqp::create($buf8), 1);
is(nqp::decodeconf($replaced_w, "windows-1252", 1), "\c[129]åfooåbarXXX",
'nqp::encoderepconf(.., 1) only replaces things not fiting in one byte');
my $replaced_w2 := nqp::encoderepconf("\c[129]åfooåbar", 'windows-1252', 'XXX', nqp::create($buf8), 0);
is(nqp::decode($replaced_w2, "windows-1252"), "XXXåfooåbar",
'nqp::encoderepconf(…, 0) replaces anything not officially mapped.');
# Encode chr 129 using unstrict mode (invalid codepoint otherwise)
my $special_windows1252 := nqp::encodeconf(nqp::chr(129), 'windows-1252', nqp::create($buf8), 1);
# Test that it can be decoded unstrict
is(nqp::decodeconf($special_windows1252, 'windows-1252', 1), "\c[129]",
'nqp::encodeconf works with windows-1252 and non-strict. decodeconf works non-strict');
# Test we can decode invalid codepoint and it is replaced instead on strict mode
my $nspecial_windows_str := "//" ~ nqp::chr(129) ~ "//" ~ nqp::chr(129) ~ nqp::chr(129) ~ "//"; #"//$special_windows1252//$special_windows1252$special_windows1252//";
my $nspecial_windows := nqp::encodeconf($nspecial_windows_str, 'windows-1252', nqp::create($buf8), 1);

dies-ok({
  nqp::encodeconf(nqp::chr(129), 'windows-1252', nqp::create($buf8), 0);
}, 'nqp::encodeconf can\'t encode unmapped chars in strict mode');

dies-ok({
  nqp::encodeconf('☃', 'windows-1252', nqp::create($buf8), 1);
}, 'nqp::encodeconf only fudges unmapped chars in permissive mode');

is(nqp::decoderepconf($nspecial_windows, 'windows-1252', 'ABCDE', 0), "//ABCDE//ABCDEABCDE//",
"nqp::decoderepconf works on strict (does do replacement)");
# Test that if we use non-strict mode, it leaves things that fit into Unicode
# unchanged.
is(nqp::decoderepconf($special_windows1252, 'windows-1252', 'X', 1), "\c[129]",
"nqp::decoderepconf(…,1) doesn't replace if byte fits into unicode");
