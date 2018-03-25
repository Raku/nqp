#! perl

=head1 TITLE

gen-version.pl -- script to generate version information for HLL compilers

=cut

use Digest::SHA;
use File::Find;
use POSIX 'strftime';

my $prefix = shift;
my $libdir = shift;

open(my $fh, '<', 'VERSION') or die $!;
my $VERSION = <$fh>;
close($fh);

# .git is a file and not a directory in submodule
if (-e '.git' && open(my $GIT, '-|', 'git describe --tags "--match=20*"')) {
    $VERSION = <$GIT>;
    close($GIT);
}

chomp $VERSION;

my $builddate = strftime('%Y-%m-%dT%H:%M:%SZ', gmtime);

my $sha = Digest::SHA->new;
find(sub { next unless /\.nqp\z/; $sha->addfile($_) }, "src");
my $source_digest = $sha->hexdigest;

print <<"END_VERSION";
sub hll-config(\$config) {
    \$config<version>       := '$VERSION';
    \$config<build-date>    := '$builddate';
    \$config<prefix>        := '$prefix';
    \$config<libdir>        := '$libdir';
    \$config<source-digest> := '$source_digest';
}
END_VERSION

0;

