#!/usr/bin/env perl
# Copyright (C) 2009-2019 The Perl Foundation

use 5.10.1;
use strict;
use warnings;
use Text::ParseWords;
use Getopt::Long;
use Cwd qw/abs_path cwd/;
use File::Spec;
use File::Path;
use FindBin;

BEGIN {
    unless ( -e '3rdparty/nqp-configure/LICENSE' ) {
        print "Updating nqp-configure submodule...\n";
        my $msg =
qx{git submodule sync --quiet 3rdparty/nqp-configure && git submodule --quiet update --init 3rdparty/nqp-configure 2>&1};
        if ( $? >> 8 == 0 ) { print "OK\n" }
        else {
            if ( $msg =~ /[']([^']+)[']\s+already exists and is not an empty/ )
            {
                print
"\n===SORRY=== ERROR: Cannot update submodule because directory exists and is not empty.\n"
                  . ">>> Please delete the following folder and try again:\n$1\n\n";
                exit 1;
            }
        }
    }
}

use lib ( "$FindBin::Bin/tools/lib",
    "$FindBin::Bin/3rdparty/nqp-configure/lib" );
use NQP::Config qw<nfp system_or_die>;
use NQP::Config::NQP;

my $cfg = NQP::Config::NQP->new;

MAIN: {
    if ( -r "config.default" ) {
        unshift @ARGV, shellwords( slurp('config.default') );
    }

    $cfg->set( 'nqp_config_status', join( ' ', map { "\"$_\"" } @ARGV ) );

    GetOptions(
        $cfg->options,      'help!',
        'prefix=s',         'libdir=s',
        'sysroot=s',        'sdkroot=s',
        'backends=s',       'no-clean',
        'with-moar=s',      'gen-moar:s',
        'moar-option=s@',   'with-asm=s',
        'with-asm-tree=s',  'with-jline=s',
        'with-jna=s',       'make-install!',
        'makefile-timing!', 'git-protocol=s',
        'ignore-errors',    'link',
        'git-depth=s',      'git-reference=s',
        'github-user=s',    'nqp-repo=s',
        'moar-repo=s',      'expand=s',
        'out=s',
      )
      or do {
        print_help();
        exit(1);
      };

    # Print help if it's requested
    if ( $cfg->opt('help') ) {
        print_help();
        exit(0);
    }
    if ( $cfg->opt('ignore-errors') ) {
        print
"===WARNING!===\nErrors are being ignored.\nIn the case of any errors the script may behave unexpectedly.\n";
    }

    $cfg->configure_from_options;
    $cfg->configure_refine_vars;
    $cfg->configure_relocatability;
    $cfg->configure_repo_urls;
    $cfg->configure_commands;
    $cfg->configure_jars;

    $cfg->configure_backends;
    $cfg->configure_misc;

    if ( $cfg->active_backend('jvm') ) {
        $cfg->fill_template_file(
            $cfg->base_path('tools/build/install-jvm-runner.pl.in'),
            $cfg->base_path('tools/build/install-jvm-runner.pl'),
        );
    }

    # XXX Why Windows only?
    my $prefix = $cfg->cfg('prefix');
    mkpath($prefix)
      if $prefix && $cfg->is_win && !-d $prefix;

    # Save options in config.status
    $cfg->save_config_status;

    $cfg->configure_active_backends;

    $cfg->expand_template;

    unless ( $cfg->opt('expand') ) {
        my $make = $cfg->cfg('make');
        unless ( $cfg->opt('no-clean') ) {
            no warnings;
            print "Cleaning up ...\n";
            if ( open my $CLEAN, '-|', "$make clean" ) {
                my @slurp = <$CLEAN>;
                close($CLEAN);
            }
        }

        if ( $cfg->opt('make-install') ) {
            system_or_die($make);
            system_or_die( $make, 'install' );
            print "\nNQP has been built and installed.\n";
        }
        else {
            print "You can now use '$make' to build NQP.\n";
            print "After that, '$make test' will run some tests and\n";
            print "'$make install' will install NQP.\n";
        }
    }

    exit 0;
}

#  Print some help text.
sub print_help {
    my $backends = join ',', $cfg->known_backends;
    print <<"END";
Configure.pl - NQP Configure

General Options:
    --help             Show this text
    --prefix=dir       Install files in dir
    --sdkroot=dir      When given, use for searching build tools here, e.g.
                       nqp, java etc.
    --sysroot=dir      When given, use for searching runtime components here
    --backends=list    Backends to use: $backends
    --gen-moar         Download, build, and install a copy of MoarVM to use before writing the Makefile
    --moar-option='--option=value'
                       Options to pass to MoarVM configuration for --gen-moar
    --with-moar='/path/to/moar'
                       Provide path to already installed moar binary
    --with-asm='/path/to/jar'
    --with-asm-tree='/path/to/jar'
    --with-jline='/path/to/jar'
    --with-jna='/path/to/jar'
                       Provide paths to already installed jars
    --github-user=<user>
                       Fetch all repositories (rakudo, nqp, roast, MoarVM) from
                       this github user. Note that the user must have all
                       required repos forked from the originals.
    --nqp-repo=<url>
    --moar-repo=<url>
                       User specified URL to fetch corresponding components
                       from. The URL will also be used to setup git push.
    --git-protocol={ssh,https,git}
                       Protocol to use for git clone. Default: https
    --make-install     Immediately run `MAKE install` after configuring
    --git-depth=<number>
                       Use the --git-depth option for git clone with parameter number
    --git-reference=<path>
                       Use --git-reference option to identify local path where git repositories are stored
                       For example: --git-reference=/home/user/repo/for_perl6
                       Folders 'nqp', 'MoarVM' with corresponding git repos should be in for_perl6 folder
    --ignore-errors
                       Can ignore errors such as what version MoarVM or the JVM is. May not work for other
                       errors currently.
    --expand=<template>
                       Expand template file. With this option Makefile is not
                       generated. The result is send to stdout unless --out
                       specified.
    --out=<file>       Filename to send output of --expand into.

Please note that the --gen-moar option is there for convenience only and will
actually immediately - at Configure time - compile and install moar. Moar will
live under the path given to --prefix, unless other targeting options are used.

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
