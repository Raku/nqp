#! perl

=head1 TITLE

gen-version.l -- script to generate version information for HLL compilers

=cut

use POSIX 'strftime';

open(my $fh, '<', 'VERSION') or die $!;
my $VERSION = <$fh>;
close($fh);

if (-d '.git' && open(my $GIT, '-|', "git describe --tags")) {
    $VERSION = <$GIT>;
    close($GIT);
}

chomp $VERSION;

my $builddate = strftime('%Y-%m-%dT%H:%M:%SZ', gmtime);

print <<"END_VERSION";
sub hll-config(\$config) {
    \$config<version>    := '$VERSION';
    \$config<build-date> := '$builddate';
}
END_VERSION

0;

