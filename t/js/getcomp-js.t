plan(1);
my $comp := nqp::getcomp('JavaScript');
my $helloworld := $comp.eval('"Hello " + "World"');
ok($helloworld eq 'Hello World',"getting a simple string from JavaScript");
