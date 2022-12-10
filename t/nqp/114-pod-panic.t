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
try {
    $comp.eval("nqp::die(nqp::execname())");
    CATCH { $cmd := ~$_ }
}

my $cmdargs := $fname;
my $args := nqp::list($cmd, $cmdargs);

# expected first line output to stderr:
#   Obsolete pod format ... , please use =begin/=end instead at line 4, near "\n"
my $regex := /^ '===SORRY!=== Error while compiling pod-test.nqp' \n \h*
                Obsolete \h+ pod \h+ format \h+ .+ ',' \h+ please \h+ use \h+ '=begin/=end' \h+ instead \h+ /;

# running with only stderr capture"
my @arr := run-command($args, :stderr);
my $err := @arr[2];

ok($err ~~ $regex, 'got the correct output from stderr');

nqp::unlink($fname);
