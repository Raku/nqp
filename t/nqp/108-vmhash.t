plan(54);

my $backend := nqp::getcomp('nqp').backend.name;

class NQPHashClass is repr('VMHash') {
}

my $hash := NQPHashClass.new;

$hash<a> := 1;
$hash<b> := 2;

ok(nqp::existskey($hash, 'a'), 'nqp::existskey - key exists');
ok(!nqp::existskey($hash, 'no_such'), 'nqp::existskey - key does not exist');

my $clone := nqp::clone($hash);
$clone<b> := 3;
is($hash<b>, 2, "changing clone doesn't modify orignal");
is($clone<a>, 1, 'clone has value taken from orginal');
is($clone<b>, 3, 'clone has a value of its own');

is(nqp::elems($hash), 2, 'nqp::elems on hash');
is(0+$hash, 2, 'numifing a hash');

nqp::deletekey($hash, 'a');
ok(!nqp::existskey($hash, 'a'), 'nqp::deletekey deletes element');

ok(nqp::ishash($hash), 'nqp::ishash on VMHash class');

my @kv;
for $hash -> $kv {
    nqp::push(@kv, $kv);
}

is(@kv[0].key, 'b', 'got correct kv key when iterating');
is(@kv[0].value, 2, 'got correct kv value when iterating');
is(nqp::elems(@kv), 1, 'just one kv when iteratring');

my $iter := nqp::iterator($clone);

todo('Exceptions for iterators before start NYI on ' ~ $backend, 4)
    unless $backend eq 'moar';

my $msg;
try {
    my $key := nqp::iterkey_s($iter);
    CATCH {
        $msg := nqp::getmessage($_);
    }
}

ok($msg ne "", 'iterkey throws before start');
is(nqp::index($msg, 'You have not advanced to the first item of the hash iterator'), 0, 'iterkey throws correct exception before start');

$msg := "";
try {
    my $val := nqp::iterval($iter);
    CATCH {
        $msg := nqp::getmessage($_);
    }
}

ok($msg ne "", 'iterval throws before start');
is(nqp::index($msg, 'You have not advanced to the first item of the hash iterator'), 0, 'iterval throws correct exception before start');

while ($iter) {
    nqp::shift($iter);
    my $key := nqp::iterkey_s($iter);
    ok(nqp::existskey($clone, $key), 'key from iterator exists');
    is(nqp::iterval($iter), $clone{$key}, 'value from iterator is consistent');
};
is(nqp::elems($clone), 2, 'hash still has 2 keys');

$msg := "";
try {
    nqp::shift($iter);
    CATCH {
      $msg := nqp::getmessage($_);
    }
}

todo('Exceptions for iterators NYI on js', 2)
    if $backend eq 'js';
ok($msg ne "", 'iterator throws after end');
# As per comments on https://github.com/Raku/nqp/pull/657
# the JVM backend should be changed to throw the same error text
todo('Error message not yet consistent on the JVM', 1)
    if $backend eq 'jvm';
is($msg, 'Iteration past end of iterator', 'iterator throws correct exception after end');

todo('Exceptions for iterators after end NYI on ' ~ $backend, 4)
    unless $backend eq 'moar';

$msg := "";
try {
    my $key := nqp::iterkey_s($iter);
    CATCH {
        $msg := nqp::getmessage($_);
    }
}

ok($msg ne "", 'iterkey throws after end');
is(nqp::index($msg, 'You have not advanced to the first item of the hash iterator'), 0, 'iterkey throws correct exception after end');

$msg := "";
try {
    my $val := nqp::iterval($iter);
    CATCH {
        $msg := nqp::getmessage($_);
    }
}

ok($msg ne "", 'iterval throws after end');
is(nqp::index($msg, 'You have not advanced to the first item of the hash iterator'), 0, 'iterval throws correct exception after end');



# And now delete while iterating:

$iter := nqp::iterator($clone);

todo('Exceptions for iterators before start NYI on ' ~ $backend, 4)
    unless $backend eq 'moar';

$msg := "";
try {
    my $key := nqp::iterkey_s($iter);
    CATCH {
        $msg := nqp::getmessage($_);
    }
}

ok($msg ne "", 'iterkey throws before start');
is(nqp::index($msg, 'You have not advanced to the first item of the hash iterator'), 0, 'iterkey throws correct exception before start');

$msg := "";
try {
    my $val := nqp::iterval($iter);
    CATCH {
        $msg := nqp::getmessage($_);
    }
}

ok($msg ne "", 'iterval throws before start');
is(nqp::index($msg, 'You have not advanced to the first item of the hash iterator'), 0, 'iterval throws correct exception before start');

while ($iter) {
    nqp::shift($iter);
    my $key := nqp::iterkey_s($iter);
    ok(nqp::existskey($clone, $key), 'key from iterator exists');
    is(nqp::iterval($iter), $clone{$key}, 'value from iterator is consistent');
    # Can we delete the entries at the iterator?
    nqp::deletekey($clone, $key);
    ok(!nqp::existskey($clone, $key), 'key from iterator no longer exists');
};
is(nqp::elems($clone), 0, 'empty hash');

$msg := "";
try {
    nqp::shift($iter);
    CATCH {
      $msg := nqp::getmessage($_);
    }
}

todo('Exceptions for iterators NYI on js', 2)
    if $backend eq 'js';
ok($msg ne "", 'iterator throws after end');
# As per comments on https://github.com/Raku/nqp/pull/657
# the JVM backend should be changed to throw the same error text
todo('Error message not yet consistent on the JVM', 1)
    if $backend eq 'jvm';
is($msg, 'Iteration past end of iterator', 'iterator throws correct exception after end');




$hash<a> := 1;
is(nqp::elems($hash), 2, 'hash has 2 elements once more');

$iter := nqp::iterator($hash);

nqp::shift($iter);
my $key := nqp::iterkey_s($iter);
ok(nqp::existskey($hash, $key), 'first key from iterator exists');
nqp::deletekey($hash, $key);
ok(!nqp::existskey($hash, $key), 'first key from iterator no longer exists');
# This test with the loop unrolled calls nqp::shift immediately after deleting
# the key at the iterator position, *without* an intervening call to the $iter
# in boolean context. It takes a different path through the MoarVM ops, meaning
# that shift in MVMIter.c is called with the iterator in the "just deleted"
# state. The loop above calls MVM_iter_istrue_hash first, and instead that gets
# to handle the iterator in the "just deleted" state.
nqp::shift($iter);
$key := nqp::iterkey_s($iter);
ok(nqp::existskey($hash, $key), 'second key from iterator exists');
nqp::deletekey($hash, $key);
ok(!nqp::existskey($hash, $key), 'second key from iterator no longer exists');
is(nqp::elems($hash), 0, 'hash has no elements');

my %empty;
is(nqp::elems(%empty), 0, 'empty hash has no elements');

$iter := nqp::iterator(%empty);

$msg := "";
try {
    my $key := nqp::iterkey_s($iter);
    CATCH {
        $msg := nqp::getmessage($_);
    }
}

todo('Exceptions for iterators before start NYI on ' ~ $backend, 4)
    unless $backend eq 'moar';
ok($msg ne "", 'iterkey on empty hash throws before start');
is(nqp::index($msg, 'You have not advanced to the first item of the hash iterator'), 0, 'iterkey throws correct exception before start');


$msg := "";
try {
    my $key := nqp::iterval($iter);
    CATCH {
        $msg := nqp::getmessage($_);
    }
}

ok($msg ne "", 'iterval on empty hash throws before start');
is(nqp::index($msg, 'You have not advanced to the first item of the hash iterator'), 0, 'iterval throws correct exception before start');

ok(!$iter, "iterator on empty hash is false on creation");

$msg := "";
try {
    nqp::shift($iter);
    CATCH {
      $msg := nqp::getmessage($_);
    }
}

todo('Exceptions for iterators NYI on js', 2)
    if $backend eq 'js';
ok($msg ne "", 'iterator throws after end');
# As per comments on https://github.com/Raku/nqp/pull/657
# the JVM backend should be changed to throw the same error text
todo('Error message not yet consistent on the JVM', 1)
    if $backend eq 'jvm';
is($msg, 'Iteration past end of iterator', 'iterator throws correct exception after end');
