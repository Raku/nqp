plan(9);
my @array;
@array.push("a");
is(@array.push("b"), 'b', 'push returns the right value');
@array.push("c");

is(nqp::join(",", @array), 'a,b,c', '...and inserts elements');
is('a', @array.shift, '.shift returns the right value');
is(nqp::join(",", @array), 'b,c', '...and removes the element');
is(@array.unshift('0'), '0', 'unshift returns the right value');
is(nqp::join(",", @array), '0,b,c', '...and inserts the element');
is('c', @array.pop, '.pop the right value');
is(nqp::join(",", @array), '0,b', '...and removes the element');

my $calculated := 'pu' ~ 'sh';
@array."$calculated"("e");

is(nqp::join(",", @array), '0,b,e', "calling a method with a runtime determined method name on an array");
