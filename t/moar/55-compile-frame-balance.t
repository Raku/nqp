plan(4);

my $comp := nqp::getcomp('nqp');
my $backend := $comp.backend;

# HLL::Backend on MoarVM pushes a per-compile frame list onto
# %COMPILING<moar><frames> at the 'start' stage and pops it at the
# 'mast' stage (QASTCompilerMAST.to_mast). A compile that stops short
# of 'mast' (e.g. `:target('ast')`), or one whose stages unwind via an
# exception, leaves the push dangling. HLL::Compiler.compile rebalances
# via compile_snapshot / compile_cleanup hooks on the backend.

ok(nqp::can($backend, 'compile_snapshot'),
    'MoarVM backend exposes compile_snapshot');
ok(nqp::can($backend, 'compile_cleanup'),
    'MoarVM backend exposes compile_cleanup');

# Drive an outer compile whose BEGIN body runs several :target('ast')
# compiles. Inner and outer share %*COMPILING. If the inner compiles
# leak their start() push, the depth grows. The rebalance must keep
# pre- and post-depth equal.
my $caught := '';
try {
    $comp.compile(q|BEGIN {
        my $inner := nqp::getcomp("nqp");
        my $before := nqp::elems(%*COMPILING<moar><frames>);
        $inner.compile("1", :target("ast"), :compunit_ok(1));
        $inner.compile("2", :target("ast"), :compunit_ok(1));
        $inner.compile("3", :target("ast"), :compunit_ok(1));
        $inner.compile("4", :target("ast"), :compunit_ok(1));
        $inner.compile("5", :target("ast"), :compunit_ok(1));
        my $after := nqp::elems(%*COMPILING<moar><frames>);
        if $before != $after {
            nqp::die(":target('ast') leaked " ~
                ($after - $before) ~ " frame level(s) onto " ~
                "%COMPILING<moar><frames>");
        }
    };|);
    CATCH { $caught := ~$!; }
}
is($caught, '',
    "multiple :target('ast') compiles inside an outer compile's BEGIN " ~
    "leave %COMPILING<moar><frames> balanced");

# Stage exception path: an inner compile that throws during 'parse'
# must run compile_cleanup before the rethrow, so the outer caller sees
# the original exception and a balanced frame stack.
my $caught2 := '';
try {
    $comp.compile(q|BEGIN {
        my $inner := nqp::getcomp("nqp");
        my $before := nqp::elems(%*COMPILING<moar><frames>);
        my $threw := 0;
        try {
            $inner.compile("\"unterminated", :target("parse"), :compunit_ok(1));
            CATCH { $threw := 1 }
        }
        my $after := nqp::elems(%*COMPILING<moar><frames>);
        unless $threw {
            nqp::die("inner compile did not throw on invalid source");
        }
        if $before != $after {
            nqp::die("exception during 'parse' stage leaked " ~
                ($after - $before) ~ " frame level(s) onto " ~
                "%COMPILING<moar><frames>");
        }
    };|);
    CATCH { $caught2 := ~$!; }
}
is($caught2, '',
    "an exception during a stage runs compile_cleanup and rethrows " ~
    "the original exception");
