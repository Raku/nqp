plan(9);
my @array;
@array.push("a");
ok(@array.push("b") eq 'b', 'push returns the right value');
@array.push("c");

ok(nqp::join(",", @array) eq 'a,b,c', '...and inserts elements');
ok('a' eq @array.shift, '.shift returns the right value');
ok(nqp::join(",", @array) eq 'b,c', '...and removes the element');
ok(@array.unshift('0') eq '0', 'unshift returns the right value');
ok(nqp::join(",", @array) eq '0,b,c', '...and inserts the element');
ok('c' eq @array.pop, '.pop the right value');
ok(nqp::join(",", @array) eq '0,b', '...and removes the element');

my $calculated := 'pu' ~ 'sh';
@array."$calculated"("e");

ok(nqp::join(",", @array) eq '0,b,e', "calling a method with a runtime determined method name on an array");
