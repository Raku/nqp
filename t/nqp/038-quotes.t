#! nqp

# interpolating quotes

plan(17);

my $abc := 'abc';

is( "xxx$abc", 'xxxabc', "basic scalar interpolation" );

is( qq{xxx $abc zzz}, 'xxx abc zzz', 'basic qq{} interpolation' );

my $num := 5;

is( "xxx {3+$num} zzz", 'xxx 8 zzz', "basic closure interpolation" );

is( qq{$abc xxx {3+$num} zzz$num}, 'abc xxx 8 zzz5', 'qq{} closure interpolation' );
is( qq ($abc xxx {3+$num} zzz$num), 'abc xxx 8 zzz5', 'qq () closure interpolation' );
is( qq/$abc xxx {3+$num} zzz$num/, 'abc xxx 8 zzz5', 'qq// closure interpolation' );

is( q{$abc xxx {3+$num} zzz},  '$abc xxx {3+$num} zzz', 'basic q{}  closure without interpolation' );
is( q ($abc xxx {3+$num} zzz), '$abc xxx {3+$num} zzz', 'basic q () closure without interpolation' );
is( q/$abc xxx {3+$num} zzz/,  '$abc xxx {3+$num} zzz', 'basic q//  closure without interpolation' );

is( q ($hi), '$hi', "basic q () doesn't interpolate.");
is( q/$hi/, '$hi', "basic q// doesn't interpolate.");
is( q{$hi}, '$hi', "basic q{} doesn't interpolate.");
is( q ($num), '$num', "basic q () doesn't interpolate.");
is( q/$num/, '$num', "basic q// doesn't interpolate.");
is( < a >, 'a', 'spaces around individual element stripped');

ok( +< a b > == 2, 'angle quotes correctly produce list');

ok( nqp::islist(< >), 'empty angle quotes correctly produce list');
