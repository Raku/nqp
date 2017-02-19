plan(6);

class int8 is repr('P6int') {}
class buf8 is repr('VMArray') {}

nqp::composetype(int8, nqp::hash('integer', nqp::hash('bits', 8)));
nqp::composetype(buf8, nqp::hash('array', nqp::hash('type', int8)));

class int16 is repr('P6int') {}
class buf16 is repr('VMArray') {}

nqp::composetype(int16, nqp::hash('integer', nqp::hash('bits', 16)));
nqp::composetype(buf16, nqp::hash('array', nqp::hash('type', int16)));

my $buf := nqp::encode('', 'utf8', buf8.new);
ok(nqp::elems($buf) == 0, 'encoding empty string as UTF-8');
my $str := nqp::decode($buf, 'utf8');
is($str, '', 'decoding empty UTF-8 string into string');


# Test for a regression in the Parrot backend.
$buf := nqp::encode('a', 'utf16', buf16.new);
$str := nqp::decode($buf, 'utf16');
is($str, 'a', 'round-tripping via UTF-16');

my $hello := nqp::encode('Hello World', 'utf8', buf8.new);

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

my $hello2 := buf8.new;
nqp::encode('Hello World', 'utf8', $hello2);
is(buf_dump($hello2), "72,101,108,108,111,32,87,111,114,108,100", "the buf passed to nqp::encode is actually changed");
