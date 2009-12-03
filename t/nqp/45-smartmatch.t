#! nqp

P6metaclass.register('Integer');
P6metaclass.register('ResizablePMCArray');

plan(4);
ok(3 ~~ Integer, "smartmatch of Integer works");
ok(!(4.5 ~~ Integer), "negative smartmatch of Integer works");

ok(<a b c> ~~ ResizablePMCArray, "smartmatch of RPA works");
ok(!(3 ~~ ResizablePMCArray), "negative smartmatch of RPA works");

