#! perl
# Copyright (C) 2009 The Perl Foundation

use 5.008;
use strict;
use warnings;
use Getopt::Long;
use Cwd;
use lib "tools/lib";
use NQP::Configure qw(cmp_rev read_parrot_config fill_template_file
                      slurp system_or_die);

MAIN: {
    my $exe = $NQP::Configure::exe;

    my %config;
    $config{'nqp_config_status'} = join(' ', map { "\"$_\""} @ARGV);

    my %options;
    GetOptions(\%options, 'help!', 'prefix=s',
               'with-parrot=s', 'parrot-config=s',
               'gen-parrot!', 'parrot-option=s@', 'min-parrot-revision=s',
               'make-install!');

    # Print help if it's requested
    if ($options{'help'}) {
        print_help();
        exit(0);
    }

    # Deprecated --parrot-config option
    if ($options{'parrot-config'}) {
        die "===SORRY!===\n"
            . "The --parrot-config option has been removed.\n"
            . "Use --with-parrot to specify the parrot executable to use.\n";
    }

    # Save options in config.status
    if (open(my $CONFIG_STATUS, '>', 'config.status')) {
        print $CONFIG_STATUS
            "$^X Configure.pl $config{'nqp_config_status'} \$*\n";
        close($CONFIG_STATUS);
    }

    my $parrot_exe = $options{'with-parrot'};

    if ($options{'gen-parrot'}) {
        my @opts = @{ $options{'parrot-option'} || [] };
        push @opts, "--min-parrot-revision=$options{'min-parrot-revision'}"
            if $options{'min-parrot-revision'};
        my $prefix = $options{'prefix'} || cwd()."/install";
        my @cmd = ($^X, "tools/build/gen-parrot.pl", "--prefix=$prefix",
                   "--optimize", @opts);
        print "Generating Parrot ...\n";
        print "@cmd\n\n";
        system_or_die(@cmd);
        # use the newly-built parrot config
        $parrot_exe= "$prefix/bin/parrot$exe";
    }

    my %parrot_config;
    if ($parrot_exe) {
        %parrot_config = read_parrot_config($parrot_exe);
    }
    else {
        # look in some standard locations
        %parrot_config = read_parrot_config(
                             ( "install/bin/parrot$exe", "parrot" )
                         );
    }

    my $errors;
    if (!%parrot_config) {
        $errors .= "Unable to locate parrot\n";
    }
    %config = (%config, %parrot_config);
    $config{'win32_libparrot_copy') =
        $^O eq 'MSWin32'
        ? 'copy $(PARROT_BIN_DIR)\libparrot.dll .'
        : '';

    my ($revision_want) = $options{'min_parrot-revision'}
                          || split(' ', slurp("tools/build/PARROT_REVISION"));
    my $revision_have   = $config{'parrot::git_describe'} || '';

    if ($revision_have && cmp_rev($revision_have, $revision_want) < 0) {
        $errors .= "Parrot revision $revision_want required"
                   . " (currently $revision_have)\n";
    }

    if ($errors) {
        die <<"END";
===SORRY!===
$errors
To automatically checkout (git) and build a copy of parrot $revision_want,
try re-running Configure.pl with the '--gen-parrot' option.
Or, use the the '--with-parrot=' option to explicitly specify
the location of the parrot executable to be used to build NQP.

END
    }

    # Verify the Parrot installation is sufficient for building NQP
    verify_install(%config);

    # Create the Makefile using the information we just got
    fill_template_file('tools/build/Makefile.in', 'Makefile', %config);

    my $make = $config{'parrot::make'};

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


sub verify_install {
    my %config = @_;
    print "Verifying installation...\n";
    my $EXE = $config{'parrot::exe'};
    my $PARROT_BIN_DIR = $config{'parrot::bindir'};
    my $PARROT_VERSION = $config{'parrot::versiondir'};
    my $PARROT_LIB_DIR = $config{'parrot::libdir'}.$PARROT_VERSION;
    my $PARROT_SRC_DIR = $config{'parrot::srcdir'}.$PARROT_VERSION;
    my $PARROT_TOOLS_DIR = "$PARROT_LIB_DIR/tools";
    my $PARROT_INCLUDE_DIR = $config{'parrot::includedir'}.$PARROT_VERSION;
    my @required_files = (
        "$PARROT_BIN_DIR/parrot$EXE",
        "$PARROT_BIN_DIR/pbc_to_exe$EXE",
        "$PARROT_BIN_DIR/ops2c$EXE",
        "$PARROT_TOOLS_DIR/build/pmc2c.pl",
        "$PARROT_SRC_DIR",
        "$PARROT_SRC_DIR/pmc",
        "$PARROT_INCLUDE_DIR",
        "$PARROT_INCLUDE_DIR/pmc",
    );
    my @missing;
    for my $reqfile (@required_files) {
        push @missing, "    $reqfile" unless -e $reqfile;
    }
    if (@missing) {
        my $missing = join("\n", @missing);
        die <<"END";

===SORRY!===
I'm missing some needed files in the install directory:
$missing
(Perhaps you need to use Parrot's "make install-dev" target or
install the "parrot-devel" package for your system?)

END
    }
    1;
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
END

    return;
}

# Local Variables:
#   mode: cperl
#   cperl-indent-level: 4
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4:
