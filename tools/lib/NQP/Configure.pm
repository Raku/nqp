package NQP::Configure;
use strict;
use warnings;
use Cwd;
use File::Copy qw(copy);

use base qw(Exporter);
our @EXPORT_OK = qw(sorry slurp system_or_die
                    cmp_rev
                    read_config
                    fill_template_file fill_template_text
                    git_checkout
                    verify_install gen_moar
                    github_url
                    probe_node
                    gen_nqp);

our $exe = $^O eq 'MSWin32' ? '.exe' : '';
our $bat = $^O eq 'MSWin32' ? '.bat' : '';

our @required_nqp_files = qw(
    @bindir@/nqp-p@exe@
);

sub sorry {
    my @msg = @_;
    die join("\n", '', '===SORRY!===', @msg, "\n");
}

sub slurp {
    my $filename = shift;
    open my $fh, '<', $filename
        or die "Unable to read $filename\n";
    local $/ = undef;
    my $text = <$fh>;
    close $fh or die $!;
    return $text;
}


sub system_or_die {
    my @cmd = @_;
    system( @cmd ) == 0
        or die "Command failed (status $?): @cmd\n";
}


sub parse_revision {
    my $rev = shift;
    my $what = shift;
    my $sep = qr/[_.]/;
    $rev =~ /(\d+)$sep(\d+)(?:$sep(\d+))?(?:-(\d+)-g[a-f0-9]*)?$/
        or die "Unrecognized revision specifier '$rev' $what\n";
    return ($1, $2, $3 || 0, $4 || 0);
}


sub cmp_rev {
    my ($a, $b, $what) = @_;
    my @a = parse_revision($a, "$what have");
    my @b = parse_revision($b, "$what want");
    my $cmp = 0;
    for (0..3) {
        $cmp = $a[$_] <=> $b[$_];
        last if $cmp;
    }
    $cmp;
}


sub read_config {
    my @config_src = @_;
    my %config = ();
    local $_;
    for my $file (@config_src) {
        no warnings;
        if (open my $CONFIG, '-|', "\"$file\" --show-config") {
            while (<$CONFIG>) {
                if (/^([^\s=]+)=(.*)/) { $config{$1} = $2 }
            }
            close($CONFIG);
        }
        last if %config;
    }
    return %config;
}


sub fill_template_file {
    my $infile = shift;
    my $outfile = shift;
    my %config = @_;

    my $OUT;
    if (ref $outfile) {
        $OUT = $outfile;
    }
    else {
        print "\nCreating $outfile ...\n";
        open($OUT, '>', $outfile)
            or die "Unable to write $outfile\n";
    }

    my @infiles = ref($infile) ? @$infile : $infile;
    for my $if (@infiles) {
        my $text = slurp( $if );
        $text = fill_template_text($text, %config);
        print $OUT $text;
    }
    unless (ref $outfile) {
        close($OUT) or die "Error while writing '$outfile': $!";
    }
}


sub fill_template_text {
    my $text = shift;
    my %config = @_;

    my $escape = sub {
        my $str = $_[0];
        $str =~ s{ }{\\ }g;
        $str;
    };

    $text =~ s/@@([:\w]+)@@/$escape->($config{$1} || '')/ge;
    $text =~ s/@([:\w]+)@/$config{$1} || ''/ge;
    if ($text =~ /nqp::makefile/) {
        if ($^O eq 'MSWin32') {
            $text =~ s{/}{\\}g;
            $text =~ s{\\\*}{\\\\*}g;
            $text =~ s{(?:git|http):\S+}{ do {my $t = $&; $t =~ s'\\'/'g; $t} }eg;
            $text =~ s/.*curl.*/do {my $t = $&; $t =~ s'%'%%'g; $t}/meg;
        }
        if ($config{'makefile-timing'}) {
            $text =~ s{ (?<!\\\n)        # not after line ending in '\'
                        ^                # beginning of line
                        (\t(?>@?[ \t]*)) # capture tab, optional @, and hspace
                        (?!-)            # not before - (ignore error) lines
                        (?!cd)           # not before cd lines
                        (?!echo)         # not before echo lines
                        (?=\S)           # must be before non-blank
                      }
                      {$1time\ }mgx;
        }
    }
    $text;
}


sub git_checkout {
    my $repo = shift;
    my $dir  = shift;
    my $checkout = shift;
    my $pushurl = shift;
    my $depth = shift;
    my $reference = shift;
    my $pwd = cwd();

    # get an up-to-date repository
    if (! -d $dir) {
        my @args = ('git', 'clone');
        push @args, $reference if $reference ne '';
        push @args, $depth if $depth ne '';
        push @args, $repo;
        push @args, $dir;
        system_or_die(@args);
        chdir($dir);
        system('git', 'config', 'remote.origin.pushurl', $pushurl)
            if defined $pushurl && $pushurl ne $repo;
    }
    else {
        chdir($dir);
        system_or_die('git', 'fetch');
    }

    if ($checkout) {
        system_or_die('git', 'checkout', $checkout);
        system_or_die('git', 'pull')
            if slurp('.git/HEAD') =~ /^ref:/;
    }

    my $git_describe;
    if (open(my $GIT, '-|', 'git describe --tags "--match=20*"')) {
        $git_describe = <$GIT>;
        close($GIT);
        chomp $git_describe;
    }
    chdir($pwd);
    $git_describe;
}


sub verify_install {
    my $files = shift;
    my %config = @_;
    print "Verifying installation ...\n";
    my @missing;
    for my $reqfile ( @{$files} ) {
        my $f = fill_template_text($reqfile, %config);
        push @missing, "    $f" unless -e $f;
    }
    if (@missing) {
        unshift @missing, "I'm missing some needed files:";
    }
    @missing;
}


sub gen_nqp {
    my $nqp_want = shift;
    my %options  = @_;

    my $backends    = $options{'backends'};
    my $gen_nqp     = $options{'gen-nqp'};
    my $prefix      = $options{'prefix'} || cwd().'/install';
    my $startdir    = cwd();
    my $git_protocol = $options{'git-protocol'} || 'https';

    my (%impls, %need);

    for my $b (qw/jvm moar/) {
        if ($backends =~ /$b/) {
            my $postfix = substr $b, 0, 1;
            my $bin = "$prefix/bin/nqp-$postfix$bat";
            $impls{$b}{bin} = $bin;
            my %c = read_config($bin);
            my $nqp_have = $c{'nqp::version'} || '';
            my $nqp_ok   = $nqp_have && cmp_rev($nqp_have, $nqp_want, "nqp") >= 0;
            if ($nqp_ok) {
                $impls{$b}{config} = \%c;
            }
            else {
                $need{$b} = 1;
            }
        }
    }

    return %impls unless %need;

    if (defined $gen_nqp) {
        git_checkout(
            github_url($git_protocol, 'perl6', 'nqp'),
            'nqp', $nqp_want,
            github_url('ssh', 'perl6', 'nqp'),
            $options{'git-depth'} ? "--depth=$options{'git-depth'}" : '',
            $options{'git-reference'} ? "--reference=$options{'git-reference'}/nqp" : '',
        );
    }

    return %impls unless defined($gen_nqp);

    my $backends_to_build = join ',', sort keys %need;
    my @cmd = ($^X, 'Configure.pl', "--prefix=$prefix",
               "--backends=$backends", "--make-install");
    print "Building NQP ...\n";
    chdir("$startdir/nqp");
    print "@cmd\n";
    system_or_die(@cmd);
    chdir($startdir);

    for my $k (keys %need) {
        my %c = read_config($impls{$k}{bin});
        %c = (%{ $impls{$k}{config} || {} }, %c);
        $impls{$k}{config} = \%c;
    }
    return %impls;
}

sub gen_moar {
    my $moar_want = shift;
    my $moar_have;
    my @errors;
    my %options  = @_;

    my $prefix     = $options{'prefix'} || cwd()."/install";
    my $sdkroot    = $options{'sdkroot'} || '';
    my $gen_moar   = $options{'gen-moar'};
    my @opts       = @{ $options{'moar-option'} || [] };
    push @opts, "--optimize";
    my $startdir   = cwd();
    my $git_protocol = $options{'git-protocol'} || 'https';
    my $moar_exe   = $options{'with-moar'} || (
        $sdkroot
            ? File::Spec->catfile( $sdkroot, $prefix, 'bin', "moar$exe" )
            : File::Spec->catfile( $prefix, 'bin', "moar$exe" ));
    my $moar_version_output  = qx{ $moar_exe --version };
    if ($moar_version_output) {
        $moar_have = $moar_version_output =~ /version (\S+)/ ? $1 : undef;
    }

    my $moar_ok   = $moar_have && cmp_rev($moar_have, $moar_want, "moar") >= 0;
    if ($moar_ok) {
        push @errors, "Found $moar_exe version $moar_have, which is new enough.\n";
        return ($moar_exe, @errors);
    }
    elsif ($moar_have) {
        push @errors, "Found $moar_exe version $moar_have, which is too old. Wanted at least $moar_want\n";
    }
    elsif ($moar_version_output =~ /This is MoarVM version/i ) {
        push @errors, "Found a MoarVM binary but was not able to get its version number.\n"
        . "If running `git describe` inside the MoarVM repository does not work,\n"
        . "you need to make sure to checkout tags of the repository and run \nConfigure.pl and make install again\n";
    }

    return ($gen_moar, @errors) unless defined $gen_moar;

    my $moar_repo = git_checkout(
        github_url($git_protocol, 'MoarVM', 'MoarVM'),
        'MoarVM', $gen_moar || $moar_want,
        github_url('ssh', 'MoarVM', 'MoarVM'),
        $options{'git-depth'} ? "--depth=$options{'git-depth'}" : '',
        $options{'git-reference'} ? "--reference=$options{'git-reference'}/MoarVM" : '',
    );

    unless (cmp_rev($moar_repo, $moar_want, "moar") >= 0) {
        die "You asked me to build $gen_moar, but $moar_repo is not new enough to satisfy version $moar_want\n";
    }

    chdir("$startdir/MoarVM") or die $!;

    $prefix =~ s{\\}{/}g;
    print "\nConfiguring and building MoarVM ...\n";
    my @cmd = ($^X, "Configure.pl", @opts, "--prefix=$prefix", '--make-install');
    print "@cmd\n";
    system_or_die(@cmd);

    chdir($startdir);

    return ($moar_exe, @errors);
}

sub github_url {
    my ($protocol, $user, $repo) = @_;
    $protocol = lc $protocol;
    if ($protocol eq 'https' || $protocol eq 'git') {
        return sprintf '%s://github.com/%s/%s.git', $protocol, $user, $repo;
    }
    elsif ($protocol eq 'ssh') {
        return sprintf 'git@github.com:%s/%s.git', $user, $repo;
    }
    else {
        die "Unknown protocol '$protocol' (fine are: ssh, https, git)";
    }
}

sub probe_node {
    # Debian ships a 'node' binary that is related to amateur radio.
    # the javascript thingy is called 'nodejs' there
    for my $binary (qw/node nodejs /) {
        my $version_str = qx/$binary -v 2>&1/;
        if ($version_str =~ /^v\d/) {
            return $binary;
        }
    }
    return;
}


1;
