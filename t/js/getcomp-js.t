plan(3);
my $comp := nqp::getcomp('JavaScript');
my $helloworld := $comp.eval('"Hello " + "World"');
ok($helloworld eq 'Hello World',"getting a simple string from JavaScript");

my $square := $comp.eval('(function(num) {return num*num})');
ok($square(4) == 16, "passing integers to a js func");

my $twice := $comp.eval('(function(func) {return function(x) {return func(func(x))}})');
my $twiced := $twice(sub ($x) {"[$x]"})("abc");
ok($twiced eq '[[abc]]', 'passing and calling a NQP function on the JavaScript side');

