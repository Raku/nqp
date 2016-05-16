#!./parrot nqp.pbc

# check hash access methods

plan(15);

my %h;

%h<a> := 1;
ok(1,"# hash assignment with numeric value works");

ok(%h<a> + 1 == 2, 'hash access to numeric value');

%h<a> := 'ok 3';
ok(%h<a> eq 'ok 3', 'hash access to string value');

%h{1} := '4';
ok(%h{1} == 4, 'numeric hash access');

ok(%h<1> + 1 eq "5", 'numbers stringify');

%h{'b'} := 'ok 6';
ok(%h{'b'} eq 'ok 6',"curly braces and single quotes work");

%h{"foo"} := "ok 7";
ok(%h{"foo"} eq "ok 7","curly braces and double quotes work");

%h<a> := 0;
ok(%h<a> eq '0',"we can fetch false values");

ok(%h<c> eq '',"a missing key behaves properly when used as string");
ok(%h<c> == 0,"a missing key behaves properly when used as number");

my $h := nqp::hash('foo', 123,'bar','hello');
ok($h<foo> == 123, 'hash access on a hash created with nqp::hash');
ok($h<bar> eq 'hello', 'hash access on a hash created with nqp::hash');

ok(nqp::elems($h) == 2, 'nqp::elems on a hash');

ok(nqp::istrue(nqp::hash('foo', 1, 'bar', 2)) == 1, 'a hash with 2 elements is true');
ok(nqp::istrue(nqp::hash()) == 0, 'a hash with 0 elements is false');
