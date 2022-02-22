#!/usr/bin/env perl

=head1 TITLE

gen-version.pl -- script to generate version information for HLL compilers

=cut

use 5.008;
use strict;
use warnings;

use Digest::SHA;
use File::Find;
use File::Spec;
use POSIX 'strftime';

my $prefix = shift // '';
my $static_nqp_home = shift // '';
my $libdir = shift // '';
my $backend = shift // '';

open(my $fh, '<', 'VERSION') or die $!;
my $VERSION = <$fh>;
close($fh);

# .git is a file and not a directory in submodule
if (-e '.git' && open(my $GIT, '-|', 'git describe --tags "--match=20*"')) {
    $VERSION = <$GIT>;
    close($GIT);
}

chomp $VERSION;

my $sha = Digest::SHA->new;
find(sub { return unless /\.nqp\z/; $sha->addfile($_) }, "src");
if ($backend eq 'moar') {
    $sha->addfile(File::Spec->catfile($libdir, 'MAST', $_)) for qw(Nodes.nqp Ops.nqp);
}
my $source_digest = $sha->hexdigest;

print <<"END_VERSION";
sub hll-config(\$config) {
    \$config<version>         := '$VERSION';
    \$config<prefix>          := '$prefix';
    \$config<static-nqp-home> := '$static_nqp_home';
    \$config<nqp-home>        := '$static_nqp_home';
    \$config<libdir>          := '$libdir';
    \$config<source-digest>   := '$source_digest';
}
END_VERSION

0;

