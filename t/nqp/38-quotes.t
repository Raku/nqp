#! nqp

# interpolating quotes

plan(2);

my $abc := 'abc';

ok( "xxx$abc" eq 'xxxabc', "basic scalar interpolation" );

ok( qq{xxx $abc zzz} eq 'xxx abc zzz', 'basic qq{} interpolation' );
