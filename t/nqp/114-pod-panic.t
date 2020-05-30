plan(1);

# exec nqp commands to test known bad pod
my $pod := Q{
=pod
text...
=cut
};

my $fname := 'pod-test.nqp';
my $fh    := open($fname, :w);
$fh.print($pod);
close($fh);

my $cmd;
my $comp := nqp::getcomp("nqp");
if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip('neither nqp::execname() nor perl6.execname are available on NQP', 1);
    #try {
    #    $comp.eval("nqp::die(nqp::jvmgetproperties()<perl6.execname>)");
    #    CATCH { $cmd := ~$_ }
    #}
}
else {
    try {
        $comp.eval("nqp::die(nqp::execname())");
        CATCH { $cmd := ~$_ }
    }

    my $cmdargs := $fname;
    my $args := nqp::list($cmd, $cmdargs);

    # expected first line output to stderr:
    #   Obsolete pod format ... , please use =begin/=end instead at line 4, near "\n"
    my $regex := /^ \h* Obsolete \h+ pod \h+ format \h+ .+ ',' \h+ please \h+ use \h+ '=begin/=end' \h+ instead \h+ /;

    # running with only stderr capture"
    my @arr := run-command($args, :stderr);
    my $err := @arr[2];

    if nqp::getcomp('nqp').backend.name eq 'jvm' {
        skip('local tests good, failing on travis-ci on the jvm', 1);
    }
    else {
        ok($err ~~ $regex, 'got the correct output from stderr');
    }
}

nqp::unlink($fname);
