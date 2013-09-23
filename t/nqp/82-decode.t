plan(2);

class int8 is repr('P6int') {}
class buf8 is repr('VMArray') {}

nqp::composetype(int8, nqp::hash('integer', nqp::hash('bits', 8)));
nqp::composetype(buf8, nqp::hash('array', nqp::hash('type', int8)));

my $buf := nqp::encode('', 'utf8', buf8.new);
ok(1, 'encoding empty string as UTF-8');
my $str := nqp::decode($buf, 'utf8');
ok(1, 'decoding empty UTF-8 string into string');
