#! perl
# Copyright (C) 2011 The Perl Foundation

use 5.008;
use strict;
use warnings;
use Getopt::Long qw(:config pass_through);
use Cwd;
use lib "tools/lib";
use NQP::Configure qw(cmp_rev read_parrot_config slurp system_or_die);

MAIN: {
    my %options;
    GetOptions(\%options, 'help!', 'prefix=s', 'min-parrot-revision=s');

    my $exe = $NQP::Configure::exe;

    # Print help if it's requested
    if ($options{'help'}) {
        print_help();
        exit(0);
    }

    my $prefix        = $options{'prefix'} || cwd()."/install";
    my $revision_want = $options{'min-parrot-revision'};
    if (!defined $revision_want) {
        ($revision_want) = split(' ', slurp("tools/build/PARROT_REVISION"));
    }
    my $parrot_exe    = "$options{'prefix'}/bin/parrot$exe";
    my %parrot_config = read_parrot_config($parrot_exe);
    my $revision_have = %parrot_config 
                        && $parrot_config{'parrot::git_describe'};

    if ($revision_have && cmp_rev($revision_have, $revision_want) >= 0) {
        print "Parrot $revision_have already available",
              " ($revision_want required)\n";
        exit(0);
    }

    print "Checking out Parrot $revision_want via git...\n";

    # get an up-to-date parrot repository
    if (! -d 'parrot') {
        system_or_die(qw(git clone git://github.com/parrot/parrot.git parrot));
        chdir('parrot') or die "Can't chdir to 'parrot': $!";
    }
    else {
        chdir('parrot') or die "Can't chdir to 'parrot': $!";
        system_or_die(qw(git fetch));
    }

    # move to desired parrot revision
    system_or_die(qw(git checkout), $revision_want);

    # if there's a Makefile from a previous build, do a 'make realclean'
    if (-f 'Makefile') {
        %parrot_config = read_parrot_config('config_lib.pir');
        my $make = $parrot_config{'parrot::make'};
        if ($make) {
            print "\nPerforming '$make realclean' ...\n";
            system_or_die($make, 'realclean');
        }
    }

    # parrot's Configure.pl mishandles win32 backslashes in --prefix
    $prefix =~ s{\\}{/}g;

    print "\nConfiguring Parrot ...\n";
    my @config_cmd = ($^X, 'Configure.pl', "--prefix=$prefix", @ARGV);
    print "@config_cmd\n";
    system_or_die( @config_cmd );

    print "\nBuilding Parrot ...\n";
    %parrot_config = read_parrot_config('config_lib.pir');
    my $make = $parrot_config{'parrot::make'} or
        die "Unable to determine value for 'make' from parrot config\n";
    system_or_die($make, 'install-dev');

    print "Parrot $revision_want installed.\n";
    0;
}


#  Print some help text.
sub print_help {
    print <<'END';
gen_parrot.pl - Generate a local copy of parrot
END

    return;
}

# Local Variables:
#   mode: cperl
#   cperl-indent-level: 4
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4:
