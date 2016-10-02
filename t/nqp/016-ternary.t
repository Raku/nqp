# the ternary ?? !! operator

plan(8);

ok( 1 ?? 1 !! 0 );
ok( 0 ?? 0 !! 1 );

my $a := 1 ?? 'yes' !! 'no';
is( $a, 'yes' );

my $b := 0 ?? 'yes' !! 'no';
is( $b, 'no' );

my $c := 1 ?? 'yes' !! ( $a := 'no' );
is( $c, 'yes' );
is( $a, 'yes' );

my $d := 0 ?? ( $a := 'no' ) !! 'yes';
is( $d, 'yes' );
is( $a, 'yes' );

