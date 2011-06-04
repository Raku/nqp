package NQP::Configure;
use strict;
use warnings;

use base qw(Exporter);
our @EXPORT_OK = qw(cmp_rev read_parrot_config fill_template_file 
                    fill_template_text slurp system_or_die);

our $exe = $^O eq 'MSWin32' ? '.exe' : '';

sub parse_revision {
    my $rev = shift;
    my $sep = qr/[_.]/;
    $rev =~ /(\d+)$sep(\d+)(?:$sep(\d+))?(?:-(\d+)-g[a-f0-9]*)?$/
        or die "Unrecognized revision specifier '$rev'\n";
    return ($1, $2, $3 || 0, $4 || 0);
}


sub cmp_rev {
    my ($a, $b) = @_;
    my @a = parse_revision($a);
    my @b = parse_revision($b);
    my $cmp = 0;
    for (0..3) {
        $cmp = $a[$_] <=> $b[$_];
        last if $cmp;
    }
    $cmp;
}


sub read_parrot_config {
    my @parrot_config_src = @_;
    my %config = ();
    for my $file (@parrot_config_src) {
        no warnings;
        if (open my $PARROT, '-|', "$file tools/build/parrot-config.pir") {
            print "\nReading configuration information from $file ...\n";
            while (<$PARROT>) {
                if (/^([\w:]+)=(.*)/) { $config{$1} = $2 }
            }
            close($PARROT) or die $!;
        }
        elsif (-r $file && open my $PARROT_CONFIG, '<', $file) {
            print "\nReading configuration information from $file ...\n";
            while (<$PARROT_CONFIG>) {
                if (/P0\["(.*?)"\], "(.*?)"/) { $config{"parrot::$1"} = $2 }
            }
            close($PARROT_CONFIG) or die $!;
        }
        last if %config;
    }
    return %config;
}


sub fill_template_file {
    my $infile = shift;
    my $outfile = shift;
    my %config = @_;
    my $text = slurp( $infile );
    $text = fill_template_text($text, %config);
    print "\nCreating $outfile ...\n";
    open(my $OUT, '>', $outfile)
        or die "Unable to write $outfile\n";
    print $OUT $text;
    close($OUT) or die $!;
}


sub fill_template_text {
    my $text = shift;
    my %config = @_;

    $text =~ s/@([:\w]+)@/$config{$1} || $config{"parrot::$1"}/ge;
    if ($^O eq 'MSWin32' && $text =~ /win32paths/) {
        $text =~ s{/}{\\}g;
    }
    $text;
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


1;
