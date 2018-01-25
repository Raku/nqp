#! perl

# NOTE: this is Perl 5 code

use strict;
use warnings;
use autodie qw(open close);
use feature 'say';

use Test;

BEGIN { plan tests => 1 }

# exec nqp commands to test known bad pod
my $pod =<<HERE;
=pod
text...
=cut
HERE

my $fname = 'pod-test.nqp';
open my $fh, '>', $fname;
print $fh $pod;
close $fh;

my $nqp = "./nqp";
my $stderr = "$fname.stderr";
my $cmd = "$nqp $fname 2>$stderr";
system($cmd);

# expected first line output to stderr:
#   Obsolete pod format, please use =begin/=end instead at line 4, near "\n"
my $errmsg = qr/Obsolete \s+ pod \s+ format\, \s+ please \s+ use \s+ =begin\/=end \s+ instead/x;

open $fh, '<', $stderr;
my $line = readline $fh;
close $fh;

if ($line =~ /$errmsg/ ) {
    ok(1);
}
else {
    ok(0);
}

unlink $fname;
unlink $stderr;
