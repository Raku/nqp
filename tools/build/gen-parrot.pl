#! perl
# Copyright (C) 2011 The Perl Foundation

use 5.008;
use strict;
use warnings;
use Getopt::Long qw(:config pass_through);
use Cwd;
use lib "tools/lib";
use NQP::Configure qw(cmp_rev read_parrot_config git_checkout 
                      slurp system_or_die);

MAIN: {
    my %options;
    GetOptions(\%options, 'help!', 'prefix=s', 'min-parrot-revision=s',
                          'checkout=s');

    my $exe = $NQP::Configure::exe;

    # Print help if it's requested
    if ($options{'help'}) {
        print_help();
        exit(0);
    }

    my $prefix        = $options{'prefix'} || cwd()."/install";
    my $checkout      = $options{'checkout'};
    my $parrot_exe    = "$options{'prefix'}/bin/parrot$exe";
    my $revision_want = $options{'min-parrot-revision'};
    if (!defined $revision_want) {
        ($revision_want) = split(' ', slurp("tools/build/PARROT_REVISION"));
    }
    my %parrot_config = read_parrot_config($parrot_exe);
    my $revision_have = %parrot_config 
                        && $parrot_config{'parrot::git_describe'};

    if (!$checkout && $revision_have
            && cmp_rev($revision_have, $revision_want) >= 0) {
        print "Parrot $revision_have already available",
              " ($revision_want required)\n";
        exit(0);
    }

    my $co = $checkout || $revision_want;
    print "Checking out Parrot $co via git...\n";
    my $git_describe = git_checkout('git://github.com/parrot/parrot.git', 
                                    'parrot', $co);

    if ($checkout && $git_describe eq $revision_have) {
        print "Parrot $checkout ($revision_have) already available\n";
        exit(0);
    }

    chdir('parrot') or die "$!\n";

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

    print "Parrot $co installed.\n";
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
