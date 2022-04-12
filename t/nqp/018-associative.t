# check hash access methods

plan(23);

my %h;

%h<a> := 1;
ok(1,"# hash assignment with numeric value works");

ok(%h<a> + 1 == 2, 'hash access to numeric value');

%h<a> := 'ok 3';
is(%h<a>, 'ok 3', 'hash access to string value');

%h{1} := '4';
ok(%h{1} == 4, 'numeric hash access');

is(%h<1> + 1, "5", 'numbers stringify');

%h{'b'} := 'ok 6';
is(%h{'b'}, 'ok 6',"curly braces and single quotes work");

%h{"foo"} := "ok 7";
is(%h{"foo"}, "ok 7","curly braces and double quotes work");

%h<a> := 0;
is(%h<a>, '0',"we can fetch false values");

is(%h<c>, '',"a missing key behaves properly when used as string");
ok(%h<c> == 0,"a missing key behaves properly when used as number");

my $h := nqp::hash('foo', 123,'bar','hello');
ok($h<foo> == 123, 'hash access on a hash created with nqp::hash');
is($h<bar>, 'hello', 'hash access on a hash created with nqp::hash');

ok(nqp::isnull($h<foo> := nqp::null()), 'when binding the null results the fallback does not happen');
ok(nqp::eqaddr($h<foo>, NQPMu), 'when getting a null from a hash it\'s turned into a NQPMu');

ok(nqp::elems($h) == 2, 'nqp::elems on a hash');

ok($h == 2, 'hash can be converted to number');

ok(nqp::istrue(nqp::hash('foo', 1, 'bar', 2)) == 1, 'a hash with 2 elements is true');
ok(nqp::istrue(nqp::hash()) == 0, 'a hash with 0 elements is false');

sub as_return_value() {
  %h<missing>;
}

ok(nqp::eqaddr(as_return_value(), NQPMu), 'getting a NQPMu for a missing hash member when used a s return value');

my @keys := <a b c d e f g h i j>;
my @values := 1,2,3,4,5,6,7,8,9,10;

my %sh;
for @values {
    %sh{@keys[$_-1]} := $_;
}

is(nqp::join("",sorted_keys(%sh)), nqp::flip(nqp::join("",@keys)), 'did we get sorted keys');

my %eh;
is(nqp::join("",sorted_keys(%eh)), "", 'did we get no keys');

%eh<a> := 1;
is(nqp::join("",sorted_keys(%eh)), "a", 'did we get one key');

%eh<b> := 1;
is(nqp::join("",sorted_keys(%eh)), "ba", 'did we get two keys');
