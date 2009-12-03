#! nqp

P6metaclass.register('Integer');
P6metaclass.register('ResizablePMCArray');

plan(8);
ok(3 ~~ Integer, "smartmatch of Integer works");
ok(!(4.5 ~~ Integer), "negative smartmatch of Integer works");

ok(<a b c> ~~ ResizablePMCArray, "smartmatch of RPA works");
ok(!(3 ~~ ResizablePMCArray), "negative smartmatch of RPA works");

my $match := 'abcdef' ~~ regex abc { c(.)e };

ok( $match, "simple smart match" );
ok( $match.from == 2, "match has correct .from" );
ok( $match.to == 5, "match has correct .to");
ok( $match eq 'cde', "match has correct string value" );

