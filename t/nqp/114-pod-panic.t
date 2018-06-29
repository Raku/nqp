
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

# ensure we use the correct executable
my $cmd := (nqp::stat('./nqp', nqp::const::STAT_EXISTS) == 1) ?? './nqp'
  !! nqp::getcomp('nqp').backend.name eq 'jvm' ?? './nqp-j' !! './nqp-m';
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

nqp::unlink($fname);
