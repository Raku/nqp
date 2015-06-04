#! nqp

# Testing nqp::openpipe.

plan(16);

my $read_out         := nqp::const::PIPE_INHERIT_IN + nqp::const::PIPE_CAPTURE_OUT + nqp::const::PIPE_INHERIT_ERR;
my $read_out_and_err := nqp::const::PIPE_INHERIT_IN + nqp::const::PIPE_CAPTURE_OUT + nqp::const::PIPE_CAPTURE_ERR;

{
    my $in  := nqp::syncpipe();
    my $out := nqp::syncpipe();
    my $err := nqp::syncpipe();
    my $pid := nqp::openpipe('echo aardvarks', nqp::cwd(), nqp::getenvhash(), $in, $out, $err, $read_out);
    ok( $pid, 'nqp::openpipe' );

    my $pstr := nqp::readallfh($out);
    ok( $pstr ~~ / 'aardvarks' /, 'nqp::readallfh with a pipe');

    # What should the return value of nqp::close be? MoarVM and JVM always return 1.
    nqp::closefh($out); ok( 1, 'nqp::closefh with a pipe');
    nqp::closefh($out); ok( 1, 'nqp::closefh with a pipe already closed');
}

{
    my $in  := nqp::syncpipe();
    my $out := nqp::syncpipe();
    my $err := nqp::syncpipe();
    my $pid := nqp::openpipe('doesnotexist', nqp::cwd(), nqp::getenvhash(), $in, $out, $err, $read_out_and_err);
    ok( $pid, 'nqp::openpipe nonexistent cmd');

    my $str_out := nqp::readallfh($out);
    my $str_err := nqp::readallfh($err);
    nqp::getcomp('nqp').backend.name eq 'parrot' ??
        ok( $str_out ~~ / 'doesnotexist' /, 'nqp::readallfh with a pipe nonexistent command') !!
        ok( $str_out eq '' && $str_err ~~ / 'doesnotexist' /, 'nqp::readallfh with a pipe nonexistent command');

    nqp::closefh($out); ok( 1, 'nqp::closefh with a pipe nonexistent command');
    nqp::closefh($err); ok( 1, 'nqp::closefh with a pipe nonexistent command');
}

# same tests but do nqp::closefh_i instead of nqp::closefh
{
    my $in  := nqp::syncpipe();
    my $out := nqp::syncpipe();
    my $err := nqp::syncpipe();
    my $pid := nqp::openpipe('echo aardvarks', nqp::cwd(), nqp::getenvhash(), $in, $out, $err, $read_out);
    ok( $pid, 'nqp::openpipe' );

    my $str := nqp::readallfh($out);
    ok( $str ~~ / 'aardvarks' /, 'nqp::readallfh with a pipe');

    ok( nqp::closefh_i($out) == 0, 'nqp::closefh_i with a pipe');
    ok( nqp::closefh_i($out) == 0, 'nqp::closefh_i with a pipe already closed');
}

{
    my $in  := nqp::syncpipe();
    my $out := nqp::syncpipe();
    my $err := nqp::syncpipe();
    my $pid := nqp::openpipe('doesnotexist', nqp::cwd(), nqp::getenvhash(), $in, $out, $err, $read_out_and_err);
    ok( $pid, 'nqp::openpipe nonexistent cmd');

    my $str_out := nqp::readallfh($out);
    my $str_err := nqp::readallfh($err);
    nqp::getcomp('nqp').backend.name eq 'parrot' ??
        ok( $str_out ~~ / 'doesnotexist' /, 'nqp::readallfh with a pipe nonexistent command') !!
        ok( $str_out eq '' && $str_err ~~ / 'doesnotexist' /, 'nqp::readallfh with a pipe nonexistent command');

    # Only the first call to closefh_i returns the exit code.
    ok( nqp::closefh_i($out) != 0, 'nqp::closefh_i with a pipe nonexistent command');
    ok( nqp::closefh_i($err) == 0, 'nqp::closefh_i with a pipe nonexistent command');
}
