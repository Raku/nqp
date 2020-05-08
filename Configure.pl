#!/usr/bin/env perl
# Copyright (C) 2009-2019 The Perl Foundation

use 5.10.1;
use strict;
use warnings;
use Text::ParseWords;
use Getopt::Long;
use Cwd;
use File::Spec;
use File::Path;
use FindBin;

BEGIN {
    # Download / Update submodules
    my $set_config = !qx{git config nqp.initialized};
    if ( !-e '3rdparty/nqp-configure/LICENSE' ) {
        my $code = system($^X, 'tools/build/update-submodules.pl', Cwd::cwd(), @ARGV);
        exit 1 if $code >> 8 != 0;
        $set_config = 1;
    }
    if ($set_config) {
        system("git config submodule.recurse true");
        system("git config nqp.initialized 1");
    }
}

use lib ( "$FindBin::Bin/tools/lib",
    "$FindBin::Bin/3rdparty/nqp-configure/lib", );
use NQP::Config qw<system_or_die>;
use NQP::Config::NQP;

my $cfg = NQP::Config::NQP->new;

MAIN: {
    if ( -r "config.default" ) {
        unshift @ARGV, shellwords( slurp('config.default') );
    }

    $cfg->set( 'nqp_config_status', join( ' ', map { "\"$_\"" } @ARGV ) );

    GetOptions(
        $cfg->options,      'help!',
        'prefix=s',         'nqp-home=s',
        'sdkroot=s',        'sysroot=s',
        'backends=s',       'clean!',
        'with-moar=s',      'gen-moar:s',
        'moar-option=s@',   'with-asm=s',
        'with-asm-tree=s',  'with-jline=s',
        'with-jna=s',       'make-install!',
        'makefile-timing!', 'git-protocol=s',
        'ignore-errors!',   'link',
        'git-depth=s',      'git-cache-dir=s',
        'github-user=s',    'nqp-repo=s',
        'moar-repo=s',      'expand=s',
        'out=s',            'set-var=s@',
        'relocatable!',     'silent-build!',
        'force-rebuild!',   'git-reference=s'
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

    $cfg->configure_paths;
    $cfg->configure_from_options;
    $cfg->configure_relocatability;
    $cfg->configure_repo_urls;
    $cfg->configure_commands;
    $cfg->configure_jars;
    $cfg->configure_refine_vars;
    $cfg->configure_backends;
    $cfg->configure_misc;

    # XXX Why Windows only?
    my $prefix = $cfg->cfg('prefix');
    mkpath($prefix)
      if $prefix && $cfg->is_win && !-d $prefix;

    # Save options in config.status
    $cfg->save_config_status unless $cfg->has_option('expand');

    $cfg->configure_active_backends;

    $cfg->expand_template;

    unless ( $cfg->opt('expand') ) {
        my $make = $cfg->cfg('make');
        if ( $cfg->opt('clean') ) {
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
    --nqp-home=dir     Directory to install NQP files to
    --relocatable      Dynamically locate NQP home dir instead of
                       statically compiling it in. (On AIX and OpenBSD NQP
                       is always built non-relocatable, since both OSes miss a
                       necessary mechanism.)
    --backends=list    Backends to use: $backends
    --gen-moar         Download, build, and install a copy of MoarVM to use
                       before writing the Makefile
    --force-rebuild    Forces rebuild of moar if used with --gen-moar
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
    --moar-repo=<url>  User-defined URL to fetch corresponding components
                       from. The URL will also be used to setup git push.
    --git-protocol={ssh,https,git}
                       Protocol to use for git clone. Default: https
    --make-install     Immediately run `MAKE install` after configuring
    --git-depth=<number>
                       Use the --git-depth option for git clone with parameter
                       number
    --git-cache-dir=<path>
                       Use the given path as a git repository cache.
                       For example: --git-cache-dir=/home/user/git_cache_dir
                       Each repository ('nqp' and its submodules) will use a
                       separate subfolder.
                       If the subfolder does not exist, it will be cloned. If
                       it exists the contained repository will be updated.
    --ignore-errors    Can ignore errors such as what version MoarVM or the JVM
                       is. May not work for other errors currently.
    --expand=<template>
                       Expand template file. With this option Makefile is not
                       generated. The result is send to stdout unless --out
                       specified.
    --out=<file>       Filename to send output of --expand into.
    --set-var="config_variable=value"
                       Sets a config_variable to "value". Can be used multiple
                       times.
    --no-silent-build  Don't echo commands in Makefile target receipt.

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
