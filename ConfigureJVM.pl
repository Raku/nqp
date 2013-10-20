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

    my %config;
    $config{'nqp_config_status'} = join(' ', map { "\"$_\""} @ARGV);

    my $exe = $NQP::Configure::exe;

    my %options;
    GetOptions(\%options, 'help!', 'prefix=s',
               'make-install!', 'makefile-timing!', 'no-clean!');

    # Print help if it's requested
    if ($options{'help'}) {
        print_help();
        exit(0);
    }

    my $prefix = $options{'prefix'} || cwd().'/install';
    $prefix    = realpath($prefix);

    # Save options in config.status
    unlink('config.status');
    if (open(my $CONFIG_STATUS, '>', 'config.status')) {
        print $CONFIG_STATUS
            "$^X Configure.pl $config{'nqp_config_status'} \$*\n";
        close($CONFIG_STATUS);
    }

    my @errors;

    my $got;
    if (!@errors) {
        my @jvm_info = `java -showversion 2>&1`;
        my $jvm_found = 0;
        my $jvm_ok = 0;
        for (@jvm_info) {
            if (/(?:java|jdk) version "(\d+)\.(\d+)/) {
                $jvm_found = 1;
                if ($1 > 1 || $1 == 1 && $2 >= 7) {
                    $jvm_ok = 1;
                }
                $got = $_;
                last;
            }
        }
        
        if (!$jvm_found) {
            push @errors,
                "No JVM (java executable) in path; cannot continue";
        }
        elsif (!$jvm_ok) {
            push @errors,
                "Need at least JVM 1.7 (got $got)";
        }
    }

    sorry(@errors) if @errors;

    print "Using $got\n";

    $config{'makefile-timing'} = $options{'makefile-timing'};
    $config{'stagestats'} = '--stagestats' if $options{'makefile-timing'};
    $config{'shell'} = $^O eq 'MSWin32' ? 'cmd' : 'sh';
    $config{'make'} = $^O eq 'MSWin32' ? 'nmake' : 'make';
    $config{'cpsep'} = $^O eq 'MSWin32' ? ';' : ':';
    $config{'slash'} = $^O eq 'MSWin32' ? '\\' : '/';
    $config{'runner'} = $^O eq 'MSWin32' ? 'nqp.bat' : 'nqp';
    $config{'prefix'} = $prefix;

    fill_template_file(
        ['tools/build/Makefile-common.in', 'tools/build/Makefile-JVM.in'],
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
    --prefix=dir       Install files in dir
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
