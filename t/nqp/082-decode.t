use nqpmo;

plan(46);

my sub create_buf($type) {
    my $buf := nqp::newtype(nqp::null(), 'VMArray');
    nqp::composetype($buf, nqp::hash('array', nqp::hash('type', $type)));
    $buf
}

my $buf8 := create_buf(uint8);
my $buf16 := create_buf(uint16);
my $buf32 := create_buf(uint32);
my $buf64 := create_buf(uint64);

my $buf := nqp::encode('', 'utf8', nqp::create($buf8));

ok(nqp::elems($buf) == 0, 'encoding empty string as UTF-8');
my $str := nqp::decode($buf, 'utf8');
is($str, '', 'decoding empty UTF-8 string into string');

# Test for a regression in the Parrot backend.
$buf := nqp::encode('a', 'utf16', nqp::create($buf16));
$str := nqp::decode($buf, 'utf16');
is($str, 'a', 'round-tripping via UTF-16');

my $hello := nqp::encode('Hello World', 'utf8', nqp::create($buf8));

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
my $windows_1252_encoded := nqp::encode($windows_1252_str, 'windows-1252', nqp::create($buf8));
is(
    buf_dump($windows_1252_encoded),
    '128,130,131,132,133,134,135,136,137,138,139,140,142',
    'cp1252 encodes most C1 substitutes'
);

is(nqp::decode($windows_1252_encoded, 'windows-1252'), $windows_1252_str, "round-tripping windows-1252 str");

my $hello2 := nqp::create($buf8);
nqp::encode('Hello World', 'utf8', $hello2);
is(buf_dump($hello2), "72,101,108,108,111,32,87,111,114,108,100", "the buf passed to nqp::encode is actually changed");

my $replaced_ascii := nqp::encoderep('åfooåbar', 'ascii', 'XXX', nqp::create($buf8));
is(nqp::decode($replaced_ascii, "utf8"), 'XXXfooXXXbar', 'nqp::encoderep works with ascii');

my $replaced_latin1 := nqp::encoderep('☃foo☃barå', 'iso-8859-1', 'XXX', nqp::create($buf8));
is(nqp::decode($replaced_latin1, 'iso-8859-1'), 'XXXfooXXXbarå', 'nqp::encoderep works with latin1');

my $replaced_windows1252 := nqp::encoderep('☃foo☃barå', 'windows-1252', 'XXX', nqp::create($buf8));
is(nqp::decode($replaced_latin1, 'windows-1252'), 'XXXfooXXXbarå', 'nqp::encoderep works with windows-1252');


my $pi_unsigned := nqp::create($buf8);
nqp::push_i($pi_unsigned, 207);
nqp::push_i($pi_unsigned, 128);
is(nqp::decode($pi_unsigned, "utf8"), 'π', 'nqp::decode with a buffer of unsigned ints');

my $pi_signed := nqp::create(create_buf(int8));
nqp::push_i($pi_signed, -49);
nqp::push_i($pi_signed, -128);
is(nqp::decode($pi_signed, "utf8"), 'π', 'nqp::decode with a buffer of signed ints');

{
  my $malformed_utf16be := nqp::create($buf8);
  nqp::push_i($malformed_utf16be, 0);
  nqp::push_i($malformed_utf16be, 72);
  nqp::push_i($malformed_utf16be, 0);

  dies-ok({
      nqp::decode($malformed_utf16be, 'utf16be')
  }, 'nqp::decode dies with utf16be and an odd number of bytes');
}

my $hello_utf16be := nqp::encode('Hello', 'utf16be', nqp::create($buf8));
is(buf_dump($hello_utf16be), '0,72,0,101,0,108,0,108,0,111', 'encoding as utf16be works');
is(nqp::decode($hello_utf16be, 'utf16be'), 'Hello', 'decoding utf16be works');


if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip("utf8-c8 not yet implemented on the JVM", 1 + 4*2);
} else {
    my $composed := nqp::create($buf8);
    nqp::push_i($composed, 0xc3);
    nqp::push_i($composed, 0x85);

    my $decomposed := nqp::create($buf8);
    nqp::push_i($decomposed, 0x41);
    nqp::push_i($decomposed, 0xcc);
    nqp::push_i($decomposed, 0x8a);

    my $partial := nqp::create($buf8);
    nqp::push_i($partial, 0xcc);


    my $wrong := nqp::create($buf8);
    nqp::push_i($wrong, 0xFE);
    is(nqp::decode($composed, 'utf8-c8'), 'Å', 'NFC strings is read just like utf8');

    my sub test_encode($buf, $result, $desc) {
      is(buf_dump(nqp::encode(nqp::decode($buf, 'utf8-c8'), 'utf8-c8', nqp::create($buf8))), $result, $desc);
      is(buf_dump(nqp::encoderep(nqp::decode($buf, 'utf8-c8'), 'utf8-c8', 'XXX', nqp::create($buf8))), $result, $desc ~ ' - nqp::encoderep');
    }

    test_encode($partial, '204', 'partial utf8');
    test_encode($composed, '195,133', 'NFC string');
    test_encode($decomposed, '65,204,138', 'not normalized UTF8');
    test_encode($wrong, '254', 'not proper UTF8');
}

{
  my $encoded_ascii := nqp::encoderep('foobarr', 'ascii', nqp::null_s, nqp::create($buf8));
  is(buf_dump($encoded_ascii), '102,111,111,98,97,114,114', 'nqp::encoderep with null_s without replacements');

  dies-ok({
    nqp::encoderep('åfooåbar', 'ascii', nqp::null_s, nqp::create($buf8));
  }, 'encoderep dies instead of replacing with a null_s replacement');
}

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip("JVM doesn't support windows-932", 3);
}
else {
    {
      my $original := 'foobar';
      my $buf := nqp::encode($original, 'windows-932', nqp::create($buf8));
      my $str := nqp::decode($buf, 'windows-932');
      is($str, $original, 'round-tripping via shiftjis');
    }

    {
      my $original := 'åfooåbar';
      my $buf := nqp::encoderep($original, 'windows-932', 'replacement', nqp::create($buf8));
      my $str := nqp::decode($buf, 'windows-932');
      is($str, 'replacementfooreplacementbar', 'encoderep with shiftjis');
    }

    {

      my $original := 'åfooåbar';
      dies-ok({
        nqp::encode($original, 'windows-932', nqp::create($buf8));
      }, 'encode dies with missing character');
    }
}

$buf := nqp::encode('abc', 'utf16', nqp::create($buf8));
is(buf_dump($buf), '97,0,98,0,99,0', 'nqp::encode 3-chars ascii string with utf16 using buffer of type uint8');
is(nqp::decode($buf, "utf16"), 'abc', 'nqp::decode gives original string back');

$buf := nqp::encode('abc', 'utf16', nqp::create($buf16));
is(buf_dump($buf), '97,98,99', 'nqp::encode 3-chars ascii string with utf16 using buffer of type uint16');
is(nqp::decode($buf, "utf16"), 'abc', 'nqp::decode gives original string back');

$buf := nqp::encode('abc', 'utf16', nqp::create($buf32));
if nqp::getcomp('nqp').backend.name eq 'moar' {
    todo('trailing character is dropped, https://github.com/MoarVM/MoarVM/issues/1606', 1);
    ok(0);
}
else {
    is(buf_dump($buf), ~(97 + 98 * 2**16) ~ ',99', 'nqp::encode 3-chars ascii string with utf16 using buffer of type uint32');
    ## TODO This returns "abc\0". Maybe that's just correct?
    #is(nqp::decode($buf, "utf16"), 'abc', 'nqp::decode gives original string back');
}

$buf := nqp::encode('abcd', 'utf16', nqp::create($buf64));
is(buf_dump($buf), (97 + 98 * 2**16 + 99 * 2**32 + 100 * 2**48), 'nqp::encode 4-chars ascii string with utf16 using buffer of type uint64');
if nqp::getcomp('nqp').backend.name eq 'jvm' {
    todo('Unknown buf type in nqp::decode', 1);
    ok(0);
}
else {
    is(nqp::decode($buf, "utf16"), 'abcd', 'nqp::decode gives original string back');
}

## "\x1F63E" 'POUNTING CAT FACE' is a code point from supplemantary planes and requires two 16-bit code units (0xD83D,0xDE3E)
$buf := nqp::encode("\x1F63E", 'utf16', nqp::create($buf8));
is(buf_dump($buf), '61,216,62,222', 'nqp::encode 1-char surrogate pair with utf16 using buffer of type uint8');
is(nqp::decode($buf, "utf16"), "\x1F63E", 'nqp::decode gives original string back');

$buf := nqp::encode("\x1F63E", 'utf16', nqp::create($buf16));
is(buf_dump($buf), '55357,56894', 'nqp::encode 1-char surrogate pair with utf16 using buffer of type uint16');
is(nqp::decode($buf, "utf16"), "\x1F63E", 'nqp::decode gives original string back');

$buf := nqp::encode("\x1F63E", 'utf16', nqp::create($buf32));
is(buf_dump($buf), ~(55357 + 56894 * 2**16), 'nqp::encode 1-char surrogate pair with utf16 using buffer of type uint32');
if nqp::getcomp('nqp').backend.name eq 'jvm' {
    todo('java.lang.IllegalArgumentException: Not a valid Unicode code point: 0xFFFFDE3E', 1);
    ok(0);
}
else {
    is(nqp::decode($buf, "utf16"), "\x1F63E", 'nqp::decode gives original string back');
}

$buf := nqp::encode('a' ~ "\x1F63E" ~ 'bcd', 'utf16', nqp::create($buf32));
is(buf_dump($buf), (97 + 55357 * 2**16) ~ ',' ~ (56894 + 98 * 2**16) ~ ',' ~ (99 + 100 * 2**16),
    'nqp::encode mixed string with ascii and surrogate pair with utf16 using buffer of type uint32');
if nqp::getcomp('nqp').backend.name eq 'jvm' {
    todo('java.lang.IllegalArgumentException: Not a valid Unicode code point: 0xFFFFD83D', 1);
    ok(0);
}
else {
    is(nqp::decode($buf, "utf16"), 'a' ~ "\x1F63E" ~ 'bcd', 'nqp::decode gives original string back');
}

$buf := nqp::encode('a' ~ "\x1F63E" ~ 'bcd', 'utf16', nqp::create($buf64));
if nqp::getcomp('nqp').backend.name eq 'moar' {
    todo('trailing character is dropped, https://github.com/MoarVM/MoarVM/issues/1606', 1);
    ok(0);
}
else {
    is(buf_dump($buf), (97 + 55357 * 2**16 + 56894 * 2**32 + 98 * 2**48) ~ ',' ~ (99 + 100 * 2**16),
        'nqp::encode mixed string with ascii and surrogate pair with utf16 using buffer of type uint64');
}
