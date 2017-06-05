#! nqp

# Testing nqp::shell wrt capturing output.

plan(14);

my $read_out         := nqp::const::PIPE_INHERIT_IN + nqp::const::PIPE_CAPTURE_OUT + nqp::const::PIPE_INHERIT_ERR;
my $read_out_and_err := nqp::const::PIPE_INHERIT_IN + nqp::const::PIPE_CAPTURE_OUT + nqp::const::PIPE_CAPTURE_ERR;

{
    my $in  := nqp::null();
    my $out := nqp::syncpipe();
    my $err := nqp::null();
    my $out-wrap := NQPFileHandle.new.wrap($out);
    nqp::shell('echo aardvarks', nqp::cwd(), nqp::getenvhash(), $in, $out, $err, $read_out);

    ok( !$out-wrap.eof, 'eof on a pipe while it still has data' );

    my $pstr := $out-wrap.slurp;
    ok( $pstr ~~ / 'aardvarks' /, 'nqp::slurp with a pipe');

    ok( $out-wrap.eof, 'eof on a pipe we have read everything out of');

    # What should the return value of nqp::close be? MoarVM and JVM always return 1.
    nqp::closefh($out); ok( 1, 'nqp::closefh with a pipe');
    nqp::closefh($out); ok( 1, 'nqp::closefh with a pipe already closed');
}

{
    my $in  := nqp::null();
    my $out := nqp::syncpipe();
    my $err := nqp::syncpipe();
    my $out-wrap := NQPFileHandle.new.wrap($out);
    my $err-wrap := NQPFileHandle.new.wrap($err);
    nqp::shell('doesnotexist', nqp::cwd(), nqp::getenvhash(), $in, $out, $err, $read_out_and_err);

    my $str_out := $out-wrap.slurp;
    my $str_err := $err-wrap.slurp;
    is( $str_out, '' && $str_err ~~ / 'doesnotexist' /, 'nqp::slurp with a pipe nonexistent command');

    nqp::closefh($out); ok( 1, 'nqp::closefh with a pipe nonexistent command');
    nqp::closefh($err); ok( 1, 'nqp::closefh with a pipe nonexistent command');
}

# same tests but do nqp::closefh_i instead of nqp::closefh
{
    my $in  := nqp::null();
    my $out := nqp::syncpipe();
    my $err := nqp::null();
    my $out-wrap := NQPFileHandle.new.wrap($out);
    nqp::shell('echo aardvarks', nqp::cwd(), nqp::getenvhash(), $in, $out, $err, $read_out);

    my $str := $out-wrap.slurp;
    ok( $str ~~ / 'aardvarks' /, 'nqp::slurp with a pipe');

    ok( nqp::closefh_i($out) == 0, 'nqp::closefh_i with a pipe');
    ok( nqp::closefh_i($out) == 0, 'nqp::closefh_i with a pipe already closed');
}

{
    my $in  := nqp::null();
    my $out := nqp::syncpipe();
    my $err := nqp::syncpipe();
    my $out-wrap := NQPFileHandle.new.wrap($out);
    my $err-wrap := NQPFileHandle.new.wrap($err);
    nqp::shell('doesnotexist', nqp::cwd(), nqp::getenvhash(), $in, $out, $err, $read_out_and_err);

    my $str_out := $out-wrap.slurp;
    my $str_err := $err-wrap.slurp;
    is( $str_out, '' && $str_err ~~ / 'doesnotexist' /, 'nqp::slurp with a pipe nonexistent command');

    ok( nqp::closefh_i($out) != 0, 'nqp::closefh_i with a pipe nonexistent command');
}

{
    my $in  := nqp::null();
    my $out := nqp::syncpipe();
    my $err := nqp::syncpipe();
    my $out-wrap := NQPFileHandle.new.wrap($out);
    my $err-wrap := NQPFileHandle.new.wrap($err);
    nqp::shell('exit 42', nqp::cwd(), nqp::getenvhash(), $in, $out, $err, $read_out_and_err);

    my $str_out := $out-wrap.slurp;
    my $str_err := $err-wrap.slurp;

    is(nqp::bitshiftr_i(nqp::closefh_i($out), 8), 42, 'correct exit value from closefh_i');
}
