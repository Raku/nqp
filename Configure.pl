#! perl
# Copyright (C) 2009 The Perl Foundation

use 5.008;
use strict;
use warnings;
use Text::ParseWords;
use Getopt::Long;
use Cwd;
use lib "tools/lib";
use NQP::Configure qw(cmp_rev read_parrot_config 
                      fill_template_file fill_template_text
                      slurp system_or_die verify_install sorry gen_parrot);

MAIN: {
    if (-r "config.default") {
        unshift @ARGV, shellwords(slurp('config.default'));
    }

    my %config;
    $config{'nqp_config_status'} = join(' ', map { "\"$_\""} @ARGV);

    my $exe = $NQP::Configure::exe;

    my %options;
    GetOptions(\%options, 'help!', 'prefix=s',
               'with-parrot=s', 'gen-parrot:s',
               'make-install!', 'makefile-timing!',
               'parrot-config=s');

    # Print help if it's requested
    if ($options{'help'}) {
        print_help();
        exit(0);
    }

    # Deprecated --parrot-config option
    if ($options{'parrot-config'}) {
        sorry "The --parrot-config option has been removed.",
              "Use --with-parrot to specify the parrot executable to use."
    }

    my $prefix      = $options{'prefix'} || cwd().'/install';
    my $with_parrot = $options{'with-parrot'};
    my $gen_parrot  = $options{'gen-parrot'};

    # Save options in config.status
    unlink('config.status');
    if (open(my $CONFIG_STATUS, '>', 'config.status')) {
        print $CONFIG_STATUS
            "$^X Configure.pl $config{'nqp_config_status'} \$*\n";
        close($CONFIG_STATUS);
    }

    my ($par_want) = split(' ', slurp('tools/build/PARROT_REVISION'));

    if (defined $gen_parrot) {
        $with_parrot = gen_parrot($par_want, %options, prefix => $prefix);
    }

    my @errors;

    my %par_config;
    if ($with_parrot) {
        %par_config = read_parrot_config($with_parrot)
          or push @errors, "Unable to read configuration from $with_parrot.";
    }
    else {
        %par_config = read_parrot_config("$prefix/bin/parrot$exe", "parrot$exe")
          or push @errors, "Unable to find parrot.";
        $with_parrot = fill_template_text('@bindir@/parrot@exe@', %par_config);
    }

    %config = (%config, %par_config);
    my $par_have = $config{'parrot::git_describe'} || '';
    if ($par_have && cmp_rev($par_have, $par_want) < 0) {
        push @errors, "Parrot revision $par_want required (currently $par_have).";
    }

    if (!@errors) {
        push @errors, verify_install([@NQP::Configure::required_parrot_files],
                                     %config);
        push @errors,
          "(Perhaps you need to 'make install', 'make install-dev',",
          "or install the 'devel' package for Parrot?)"
          if @errors;
    }

    if (@errors && !defined $gen_parrot) {
        push @errors,
          "\nTo automatically clone (git) and build a copy of Parrot $par_want,",
          "try re-running Configure.pl with the '--gen-parrot' option.",
          "Or, use '--with-parrot=' to explicitly specify the Parrot",
          "executable to use to build NQP.";
    }

    sorry(@errors) if @errors;

    print "Using $with_parrot (version $config{'parrot::git_describe'}).\n";

    $config{'makefile-timing'} = $options{'makefile-timing'};
    $config{'stagestats'} = '--stagestats' if $options{'makefile-timing'};
    $config{'shell'} = 'sh';
    if ($^O eq 'MSWin32') {
        $config{'shell'} = 'cmd';
        $config{'win32_libparrot_copy'} =
            'copy $(PARROT_BIN_DIR)\libparrot.dll .';
    }

    my $make = fill_template_text('@make@', %config);
    fill_template_file('tools/build/Makefile.in', 'Makefile', %config);

    {
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
    --with-parrot=path/to/bin/parrot
                       Parrot executable to use to build NQP
    --gen-parrot       Download and build a copy of Parrot to use
    --parrot-option='--option=value'
                       Options to pass to parrot configuration for --gen-parrot

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
