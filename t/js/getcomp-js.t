plan(4);
my $comp := nqp::getcomp('JavaScript');
my $helloworld := $comp.eval('return "Hello " + "World"');
ok($helloworld eq 'Hello World',"getting a simple string from JavaScript");

my $square := $comp.eval('return (function(num) {return num*num})');
ok($square(4) == 16, "passing integers to a js func");

my $twice := $comp.eval('return (function(func) {return function(x) {return func(func(x))}})');
my $twiced := $twice(sub ($x) {"[$x]"})("abc");
ok($twiced eq '[[abc]]', 'passing and calling a NQP function on the JavaScript side');

my $get_second := $comp.eval('return function(array) {return array[1]}');
is($get_second(nqp::list_s('First', 'Second', 'Third')), 'Second', 'passing list_s to js');
