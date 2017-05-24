#!/usr/bin/env perl
# Copyright (C) 2009 The Perl Foundation

use 5.008;
use strict;
use warnings;
use Text::ParseWords;
use Getopt::Long;
use Cwd qw/abs_path cwd/;
use File::Spec;
use lib "tools/lib";
use NQP::Configure qw(cmp_rev gen_moar
                      fill_template_file fill_template_text
                      probe_node
                      slurp system_or_die verify_install sorry);

my @known_backends = qw/moar jvm js/;
my %known_backends = map { $_, 1; } @known_backends;
my %prefixes = ( moar => 'm', jvm => 'j', js => 'js' );
MAIN: {
    if (-r "config.default") {
        unshift @ARGV, shellwords(slurp('config.default'));
    }

    my $slash  = $^O eq 'MSWin32' ? '\\' : '/';
    my %config = (perl => $^X);
    $config{'nqp_config_status'} = join(' ', map { "\"$_\""} @ARGV);

    my $exe = $NQP::Configure::exe;

    my %options;
    GetOptions(\%options, 'help!', 'prefix=s', 'libdir=s',
               'sysroot=s', 'sdkroot=s',
               'backends=s',
               'no-clean',
               'with-moar=s', 'gen-moar:s', 'moar-option=s@',
               'with-asm=s', 'with-asm-tree=s', 'with-jline=s', 'with-jna=s',
               'make-install!', 'makefile-timing!',
               'git-protocol=s',
               'link',
               'git-depth=s', 'git-reference=s',);

    # Print help if it's requested
    if ($options{'help'}) {
        print_help();
        exit(0);
    }

    if ($options{'with-asm'}) {
        if ($options{'with-asm'} ne '-') {
            $config{'asm'} = $options{'with-asm'};
        }
    } else {
        $config{'asm'} = "3rdparty/asm/asm-4.1.jar";
    }
    if ($options{'with-asm-tree'}) {
        if ($options{'with-asm-tree'} ne '-') {
            $config{'asmtree'} = $options{'with-asm-tree'};
        }
    } else {
        $config{'asmtree'} = "3rdparty/asm/asm-tree-4.1.jar";
    }
    if ($options{'with-jline'}) {
        if ($options{'with-jline'} ne '-') {
            $config{'jline'} = $options{'with-jline'};
        }
    } else {
        $config{'jline'} = "3rdparty/jline/jline-1.0.jar";
    }
    if ($options{'with-jna'}) {
        if ($options{'with-jna'} ne '-') {
            $config{'jna'} = $options{'with-jna'};
        }
    } else {
        $config{'jna'} = "3rdparty/jna/jna.jar";
    }

    if ($^O eq 'MSWin32') {
        $config{'asmfile'} = $config{'asm'};
        $config{'asmfile'} =~ s/.*\\//;
        $config{'jlinefile'} = $config{'jline'};
        $config{'jlinefile'} =~ s/.*\\//;
    } else {
        $config{'asmfile'} = $config{'asm'};
        $config{'asmfile'} =~ s/.*\///;
        $config{'jlinefile'} = $config{'jline'};
        $config{'jlinefile'} =~ s/.*\///;
    }

    fill_template_file(
        'tools/build/install-jvm-runner.pl.in',
        'tools/build/install-jvm-runner.pl',
        %config,
    );

    my $default_backend;
    my @backends;
    my %backends;
    if ($options{backends}) {
        $options{backends} = join ',', @known_backends if lc($options{backends}) eq 'all';
        for my $be (split /,/, $options{backends}) {
            $be = lc $be;
            unless ($known_backends{$be}) {
                die "Unknown backend: '$be'; Known backends: " .
                    join(', ', sort keys %known_backends) . "\n";
            }
            $default_backend ||= $be;
            push @backends, $be unless $backends{$be};
            $backends{$be} = 1;
        }
    }
    if (defined $options{'gen-moar'}) {
        push @backends, 'moar' unless $backends{moar};
        $backends{moar} = 1;
        $default_backend ||= 'moar';
    }
    unless (%backends) {
        # TODO: come up with more sensible defaults
        $backends{moar} = 1;
        push @backends, 'moar';
        $default_backend = 'moar';
    }
    if ($backends{js} and !$backends{moar}) {
        print "===SORRY!===\nWhen building the js backend you must also build moar\nPlease build with -backends=moar,js\n";
        exit 1;
    }

    # XXX mkpath instead?
    mkdir($options{'prefix'}) if $options{'prefix'} && $^O =~ /Win32/ && !-d $options{'prefix'};
    my $prefix      = $options{'prefix'}
                    ? abs_path($options{'prefix'})
                    : ($options{sysroot}
		      ? '/usr'
		      : File::Spec->catdir(cwd, 'install'));
    $config{prefix}    = $prefix;
    $config{nqplibdir} = $options{libdir} ? "$options{libdir}/nqp" : '$(NQP_LANG_DIR)/lib';
    $config{sysroot}   = $options{sysroot};
    $config{sdkroot}   = $options{sdkroot};

    # Save options in config.status
    unlink('config.status');
    if (open(my $CONFIG_STATUS, '>', 'config.status')) {
        print $CONFIG_STATUS
            "$^X Configure.pl $config{'nqp_config_status'} \$*\n";
        close($CONFIG_STATUS);
    }
    $config{'makefile-timing'} = $options{'makefile-timing'};
    $config{'stagestats'} = '--stagestats' if $options{'makefile-timing'};
    $config{'shell'} = $^O eq 'MSWin32' ? 'cmd' : 'sh';
    $config{'bat'}   = $^O eq 'MSWin32' ? '.bat' : '';
    $config{'cpsep'} = $^O eq 'MSWin32' ? ';' : ':';
    $config{'slash'} = $slash;

    open my $MAKEFILE, '>', 'Makefile'
        or die "Cannot open 'Makefile' for writing: $!";

    my @prefixes = map { $prefixes{$_} } @backends;
    print $MAKEFILE "\n# Makefile code generated by Configure.pl:\n";

    my $launcher = $prefixes{$default_backend} . '-runner-default';
    print $MAKEFILE "all: ", join(' ', map("$_-all", @prefixes), $launcher), "\n";
    print $MAKEFILE "install: ", join(' ', map("$_-install", @prefixes), $launcher . '-install'), "\n";
    for my $t (qw/clean test qregex-test/) {
        print $MAKEFILE "$t: ", join(' ', map "$_-$t", @prefixes), "\n";
    }


    fill_template_file(
        'tools/build/Makefile-common.in',
        $MAKEFILE,
        %config,
    );

    if ($backends{moar}) {
        my @errors;
        my ($moar_want) = split(' ', slurp('tools/build/MOAR_REVISION'));
        my ($moar_path, @moar_errors) = gen_moar($moar_want, %config, %options);
        if (!$moar_path) {
            push @errors,
                "No suitable MoarVM (moar executable) found using the --prefix\n" .
                "(You can get a MoarVM built automatically with --gen-moar.)";
            unshift @errors, @moar_errors if @moar_errors;
        }
        sorry(@errors) if @errors;
        $config{'make'} = `$moar_path --libpath="src/vm/moar/stage0" "src/vm/moar/stage0/nqp.moarvm" -e "print(nqp::backendconfig()<make>)"`
                        || 'make';
        $config{moar} = $moar_path;
        $config{moar_prefix} = File::Spec->catpath((File::Spec->splitpath($moar_path))[0, 1], File::Spec->updir);
        fill_template_file(
            'tools/build/Makefile-Moar.in',
            $MAKEFILE,
            %config,
        );
    }

    if ($backends{js}) {
        system_or_die($config{moar}, '--libpath=src/vm/moar/stage0', 'src/vm/moar/stage0/nqp.moarvm', 'tools/build/gen-js-makefile.nqp', 'gen/js/Makefile-JS.in');
        $config{'make'}   = $^O eq 'MSWin32' ? 'nmake' : 'make';
        $config{link} = $options{link};
        my $node   = probe_node();

        if ($node eq 'nodejs') {
            sorry('You have a broken node.js. Please install node.js as node instead of nodejs.')
        }
        elsif (!$node) {
            sorry("You don't have node.js. Please install node.js.");
        }

        fill_template_file(
            'gen/js/Makefile-JS.in',
            $MAKEFILE,
            %config,
        );
    }

    if ($backends{jvm}) {
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

        $config{'make'} = $^O eq 'MSWin32' ? 'nmake' : 'make';
        $config{'runner'} = $^O eq 'MSWin32' ? 'nqp.bat' : 'nqp';

        fill_template_file(
            'tools/build/Makefile-JVM.in',
            $MAKEFILE,
            %config,
        );
    }

    my $ext = '';
    if ($^O eq 'MSWin32') {
        $ext = '.bat';
    }

    print $MAKEFILE qq[t/*/*.t: all\n\tprove -r -v --exec ./nqp$ext \$\@\n];

    close $MAKEFILE
        or die "Error while writing to 'Makefile': $!";

    my $make = fill_template_text('@make@', %config);
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
    my $backends = join ',',keys %known_backends;
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
    --git-protocol={ssh,https,git}
                       Protocol to use for git clone. Default: https
    --make-install     Immediately run `MAKE install` after configuring
    --git-depth=<number>
                       Use the --git-depth option for git clone with parameter number
    --git-reference=<path>
                       Use --git-reference option to identify local path where git repositories are stored
                       For example: --git-reference=/home/user/repo/for_perl6
                       Folders 'nqp', 'MoarVM' with corresponding git repos should be in for_perl6 folder

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
