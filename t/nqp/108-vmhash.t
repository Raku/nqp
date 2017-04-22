plan(10);
class NQPHashClass is repr('VMHash') {
}

my $hash := NQPHashClass.new;

$hash<a> := 1;
$hash<b> := 2;

ok(nqp::existskey($hash, 'a'), 'nqp::existskey - key exists');
ok(!nqp::existskey($hash, 'no_such'), 'nqp::existskey - key does not exists');

my $clone := nqp::clone($hash);
$clone<b> := 3;
is($hash<b>, 2, "changing clone doesn't modify orignal");
is($clone<a>, 1, 'clone has value taken from orginal');
is($clone<b>, 3, "clone has a value of it's own");

is(nqp::elems($hash), 2, 'nqp::elems on hash');
is(0+$hash, 2, 'numifing a hash');

nqp::deletekey($hash, 'a');
ok(!nqp::existskey($hash, 'a'), 'nqp::deletekey deletes element');

ok(nqp::ishash($hash), 'nqp::ishash on VMHash class');

my @kv;
for $hash -> $kv {
    nqp::push(@kv, $kv);
}

ok(@kv[0].key eq 'b' && @kv[0].value == 2, 'got correct kv when iterating');
