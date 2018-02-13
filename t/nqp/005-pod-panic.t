
plan(2);

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

my $cmd     := './nqp';
my $cmdargs := $fname;
my $is-windows := nqp::backendconfig()<osname> eq 'MSWin32';
my $args := $is-windows ?? nqp::list(nqp::getenvhash()<ComSpec>, '/c', 'echo aardvarks')
                        !! nqp::list($cmd, $cmdargs);

# expected first line output to stderr:
#   Obsolete pod format, please use =begin/=end instead at line 4, near "\n"
my $regex1 := /^ \h* Obsolete \h+ pod \h+ format \h+ /;
my $regex2 := / please \h+ use \h+ '=begin/=end' \h+ instead \h+ /;

# running with only stderr capture"
my @arr := run-command($args, :stderr);
my @d2 := @arr[1];
my $os2 := nqp::shift(@d2);
ok($os2 ~~ $regex1, 'got the correct output');
ok($os2 ~~ $regex2, 'got the correct output');

nqp::unlink($fname);
