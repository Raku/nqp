#! nqp

# interpolating quotes

plan(7);

my $abc := 'abc';

is( "xxx$abc", 'xxxabc', "basic scalar interpolation" );

is( qq{xxx $abc zzz}, 'xxx abc zzz', 'basic qq{} interpolation' );

my $num := 5;

is( "xxx {3+$num} zzz", 'xxx 8 zzz', "basic closure interpolation" );

is( qq{xxx {3+$num} zzz}, 'xxx 8 zzz', 'basic qq{} closure interpolation' );

is( < a >, 'a', 'spaces around individual element stripped');

ok( +< a b > == 2, 'angle quotes correctly produce list');

ok( nqp::islist(< >), 'empty angle quotes correctly produce list');
