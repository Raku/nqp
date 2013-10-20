#! perl
# Copyright (C) 2009-2013 The Perl Foundation

use 5.008;
use strict;
use warnings;
use Text::ParseWords;
use Getopt::Long;
use Cwd qw(cwd realpath);
use lib "tools/lib";
use NQP::Configure qw(fill_template_file fill_template_text
                      slurp system_or_die sorry);

MAIN: {
    if (-r "config.default") {
        unshift @ARGV, shellwords(slurp('config.default'));
    }

    my %config = ( perl => $^X );
    $config{'nqp_config_status'} = join(' ', map { "\"$_\""} @ARGV);

    my %options;
    GetOptions(\%options, 'help!', 'prefix=s',
               'make-install!', 'makefile-timing!', 'no-clean!');

    # Print help if it's requested
    if ($options{'help'}) {
        print_help();
        exit(0);
    }

    my $prefix = $options{'prefix'} || die "--prefix is required";
    $prefix    = realpath($prefix);
    my $slash  = $^O eq 'MSWin32' ? '\\' : '/';

    # Save options in config.status
    unlink('config.status');
    if (open(my $CONFIG_STATUS, '>', 'config.status')) {
        print $CONFIG_STATUS
            "$^X Configure.pl $config{'nqp_config_status'} \$*\n";
        close($CONFIG_STATUS);
    }

    my @errors;

    my $moar_path = "$prefix${slash}bin${slash}moar" . ($^O =~ /MSWin32/ ? '.exe' : '');
    my @moar_info = `$moar_path --help`;
    my $moar_found = 0;
    for (@moar_info) {
        if (/USAGE: moar/) {
            $moar_found = 1;
            last;
        }
    }
    if (!$moar_found) {
        push @errors,
            "No MoarVM (moar executable) found using the --prefix";
    }

    sorry(@errors) if @errors;

    $config{'makefile-timing'} = $options{'makefile-timing'};
    $config{'stagestats'} = '--stagestats' if $options{'makefile-timing'};
    $config{'shell'} = $^O eq 'MSWin32' ? 'cmd' : 'sh';
    $config{'make'} = $^O eq 'MSWin32' ? 'nmake' : 'make';
    $config{'cpsep'} = $^O eq 'MSWin32' ? ';' : ':';
    $config{'slash'} = $slash;
    $config{'runner'} = $^O eq 'MSWin32' ? 'nqp.bat' : 'nqp';
    $config{'prefix'} = $prefix;

    fill_template_file(
        ['tools/build/Makefile-common.in', 'tools/build/Makefile-Moar.in'],
        'Makefile',
        %config,
    );

    my $make = $config{'make'};
    unless ($options{'no-clean'}) {
        no warnings;
        print "Cleaning up ...\n";
        if (open my $CLEAN, '-|', "$make clean") {
            my @slurp = <$CLEAN>;
            close($CLEAN);
        }
    }

    if ($options{'make-install'}) {
        system_or_die($make);
        system_or_die($make, 'install');
        print "\nNQP has been built and installed.\n";
    }
    else {
        print "You can now use '$make' to build NQP.\n";
        print "After that, '$make test' will run some tests and\n";
        print "'$make install' will install NQP.\n";
    }

    exit 0;
}


#  Print some help text.
sub print_help {
    print <<'END';
Configure.pl - NQP Configure

General Options:
    --help             Show this text
    --prefix=dir       Indicates prefix of MoarVM installation
    --make-install     Automatically run make & make install
    --makefile-timing  Enable timing of individual makefile commands
    --no-clean         Do not run make clean

Configure.pl also reads options from 'config.default' in the current directory.
END

    return;
}

# Local Variables:
#   mode: cperl
#   cperl-indent-level: 4
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4:
