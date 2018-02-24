use nqpmo;

plan(27);


my sub create_buf($type) {
    my $buf := nqp::newtype(nqp::null(), 'VMArray');
    nqp::composetype($buf, nqp::hash('array', nqp::hash('type', $type)));
    nqp::setmethcache($buf, nqp::hash('new', method () {nqp::create($buf)}));
    $buf;
}


my $buf8 := create_buf(uint8);
my $buf16 := create_buf(uint16);


my $buf := nqp::encode('', 'utf8', $buf8.new);

ok(nqp::elems($buf) == 0, 'encoding empty string as UTF-8');
my $str := nqp::decode($buf, 'utf8');
is($str, '', 'decoding empty UTF-8 string into string');


# Test for a regression in the Parrot backend.
$buf := nqp::encode('a', 'utf16', $buf16.new);
$str := nqp::decode($buf, 'utf16');
is($str, 'a', 'round-tripping via UTF-16');

my $hello := nqp::encode('Hello World', 'utf8', $buf8.new);

sub buf_dump($buf) {
  my @parts;
  my $i := 0;
  while $i < nqp::elems($buf) {
    @parts.push(~nqp::atpos_i($buf, $i));
    $i := $i + 1;
  }
  nqp::join(",", @parts);
}

is(buf_dump($hello), "72,101,108,108,111,32,87,111,114,108,100", "Hello World is encoded to utf8 correctly");
is(nqp::decode($hello, "utf8"), "Hello World", "round-tripping Hello World");

my str $windows_1252_str := '€‚ƒ„…†‡ˆ‰Š‹ŒŽ';
my $windows_1252_encoded := nqp::encode($windows_1252_str, 'windows-1252', $buf8.new);
is(
    buf_dump($windows_1252_encoded),
    '128,130,131,132,133,134,135,136,137,138,139,140,142',
    'cp1252 encodes most C1 substitutes'
);

is(nqp::decode($windows_1252_encoded, 'windows-1252'), $windows_1252_str, "round-tripping windows-1252 str");

my $hello2 := $buf8.new;
nqp::encode('Hello World', 'utf8', $hello2);
is(buf_dump($hello2), "72,101,108,108,111,32,87,111,114,108,100", "the buf passed to nqp::encode is actually changed");

# encode/decode config tests
my $replaced_ascii := nqp::encoderepconf('åfooåbar', 'ascii', 'XXX', $buf8.new, 0);
is(nqp::decode($replaced_ascii, "utf8"), 'XXXfooXXXbar', 'nqp::encoderep works with ascii');

my $replaced_latin1 := nqp::encoderep('☃foo☃barå', 'iso-8859-1', 'XXX', $buf8.new);
is(nqp::decode($replaced_latin1, 'iso-8859-1'), 'XXXfooXXXbarå', 'nqp::encoderep works with latin1');

my $replaced_windows1252 := nqp::encoderep('☃foo☃barå', 'windows-1252', 'XXX', $buf8.new);

my $replaced_w := nqp::encoderepconf("\c[129]åfooåbar→", 'windows-1252', 'XXX', $buf8.new, 1);
is(nqp::decodeconf($replaced_w, "windows-1252", 1), "\c[129]åfooåbarXXX",
  'nqp::encoderepconf(.., 1) only replaces things not fiting in one byte');
my $replaced_w2 := nqp::encoderepconf("\c[129]åfooåbar", 'windows-1252', 'XXX', $buf8.new, 0);
is(nqp::decode($replaced_w2, "windows-1252"), "XXXåfooåbar",
  'nqp::encoderepconf(…, 0) replaces anything not officially mapped.');
# Encode chr 129 using unstrict mode (invalid codepoint otherwise)
my $special_windows1252 := nqp::encodeconf(nqp::chr(129), 'windows-1252', $buf8.new, 1);
# Test that it can be decoded unstrict
is(nqp::decodeconf($special_windows1252, 'windows-1252', 1), "\c[129]",
  'nqp::encodeconf works with windows-1252 and non-strict. decodeconf works non-strict');
# Test we can decode invalid codepoint and it is replaced instead on strict mode
is(nqp::decoderepconf($special_windows1252, 'windows-1252', 'X', 0), "X",
  "nqp::decoderepconf works on strict (does do replacement)");
# Test that if we use non-strict mode, it leaves things that fit into Unicode
# unchanged.
is(nqp::decoderepconf($special_windows1252, 'windows-1252', 'X', 1), "\c[129]",
  "nqp::decoderepconf(…,1) doesn't replace if byte fits into unicode");

is(nqp::decode($replaced_latin1, 'windows-1252'), 'XXXfooXXXbarå', 'nqp::encoderep works with windows-1252');



my $pi_unsigned := $buf8.new;
nqp::push_i($pi_unsigned, 207);
nqp::push_i($pi_unsigned, 128);
is(nqp::decode($pi_unsigned, "utf8"), 'π', 'nqp::decode with a buffer of unsigned ints');

my $pi_signed := create_buf(int8).new;
nqp::push_i($pi_signed, -49);
nqp::push_i($pi_signed, -128);
is(nqp::decode($pi_signed, "utf8"), 'π', 'nqp::decode with a buffer of signed ints');


if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip("utf8-c8 not yet implemented on the JVM", 1 + 4*2);
} else {
    my $composed := $buf8.new;
    nqp::push_i($composed, 0xc3);
    nqp::push_i($composed, 0x85);

    my $decomposed := $buf8.new;
    nqp::push_i($decomposed, 0x41);
    nqp::push_i($decomposed, 0xcc);
    nqp::push_i($decomposed, 0x8a);

    my $partial := $buf8.new;
    nqp::push_i($partial, 0xcc);


    my $wrong := $buf8.new;
    nqp::push_i($wrong, 0xFE);
    is(nqp::decode($composed, 'utf8-c8'), 'Å', 'NFC strings is read just like utf8');

    my sub test_encode($buf, $result, $desc) {
      is(buf_dump(nqp::encode(nqp::decode($buf, 'utf8-c8'), 'utf8-c8', $buf8.new)), $result, $desc);
      is(buf_dump(nqp::encoderep(nqp::decode($buf, 'utf8-c8'), 'utf8-c8', 'XXX', $buf8.new)), $result, $desc ~ ' - nqp::encoderep');
    }

    test_encode($partial, '204', 'partial utf8');
    test_encode($composed, '195,133', 'NFC string');
    test_encode($decomposed, '65,204,138', 'not normalized UTF8');
    test_encode($wrong, '254', 'not proper UTF8');
}
