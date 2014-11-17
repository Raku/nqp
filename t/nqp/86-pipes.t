#! nqp

# Testing nqp::openpipe on JVM.

plan(14);

{
    my $p := nqp::openpipe('echo aardvarks', nqp::cwd(), nqp::getenvhash(), '');
    ok( nqp::defined($p) == 1, 'nqp::openpipe' );

    my $pstr := nqp::readallfh($p);
    ok( $pstr ~~ / 'aardvarks' /, 'nqp::readallfh with a pipe');

    # What should the return value of nqp::close be? MoarVM and JVM always return 1.
    nqp::closefh($p); ok( 1, 'nqp::closefh with a pipe');
    nqp::closefh($p); ok( 1, 'nqp::closefh with a pipe already closed');

    my $q := nqp::openpipe('doesnotexist', nqp::cwd(), nqp::getenvhash(), '');
    ok( nqp::defined($q) == 1, 'nqp::openpipe nonexistent cmd');

    my $qstr := nqp::readallfh($q);
    nqp::getcomp('nqp').backend.name eq 'moar' ??
        ok( $qstr eq '', 'nqp::readallfh with a pipe nonexistent command') !!
    nqp::getcomp('nqp').backend.name eq 'parrot' ??
        ok( $qstr ~~ / 'doesnotexist' /, 'nqp::readallfh with a pipe nonexistent command') !!
        ok( $qstr ~~ / 'not found' | 'not recognized' /, 'nqp::readallfh with a pipe nonexistent command');

    nqp::closefh($q); ok( 1, 'nqp::closefh with a pipe nonexistent command');
}

# same tests but do nqp::closefh_i instead of nqp::closefh
{
    my $p := nqp::openpipe('echo aardvarks', nqp::cwd(), nqp::getenvhash(), '');
    ok( nqp::defined($p) == 1, 'nqp::openpipe' );

    my $pstr := nqp::readallfh($p);
    ok( $pstr ~~ / 'aardvarks' /, 'nqp::readallfh with a pipe');

    ok( nqp::closefh_i($p) == 0, 'nqp::closefh_i with a pipe');
    ok( nqp::closefh_i($p) == 0, 'nqp::closefh_i with a pipe already closed');

    my $q := nqp::openpipe('doesnotexist', nqp::cwd(), nqp::getenvhash(), '');
    ok( nqp::defined($q) == 1, 'nqp::openpipe nonexistent cmd');

    my $qstr := nqp::readallfh($q);
    nqp::getcomp('nqp').backend.name eq 'moar' ??
        ok( $qstr eq '', 'nqp::readallfh with a pipe nonexistent command') !!
    nqp::getcomp('nqp').backend.name eq 'parrot' ??
        ok( $qstr ~~ / 'doesnotexist' /, 'nqp::readallfh with a pipe nonexistent command') !!
        ok( $qstr ~~ / 'not found' | 'not recognized' /, 'nqp::readallfh with a pipe nonexistent command');

    ok( nqp::closefh_i($q) != 0, 'nqp::closefh_i with a pipe nonexistent command');
}
