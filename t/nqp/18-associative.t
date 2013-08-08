#!./parrot nqp.pbc

# check hash access methods

plan(8);

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
