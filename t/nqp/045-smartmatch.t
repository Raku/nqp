plan(12);

my $match := 'cde' ~~ regex abc { c(.)e };

ok( $match, "simple smart match" );
ok( $match.from == 0, "match has correct .from" );
ok( $match.to == 3, "match has correct .to");
is( $match, 'cde', "match has correct string value" );

$match := 'abcdef' ~~ regex abc { c(.)e };
ok( !$match, "'regex' form doesn't do :c-like scanning" );

$match := 'abcdef' ~~ / c(.)e /;
ok( $match, "simple smart match, scanning form" );
ok( $match.from == 2, "match has correct .from" );
ok( $match.to == 5, "match has correct .to");
is( $match, 'cde', "match has correct string value" );

$match := 'abcdef' ~~ / '' /;
ok( $match, "successfully match empty string (TT #1376)");

$match := '42' !~~ / 0 /;
is( $match, 1, "negate smartmatch can work 0" );

$match := '42' !~~ / 42 /;
is( $match, 0, "negate smartmatch can work 1" );
