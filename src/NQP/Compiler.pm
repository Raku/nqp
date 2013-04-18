class NQP::Compiler is HLL::Compiler {
}

# Create and configure compiler object.
my $nqpcomp := NQP::Compiler.new();
$nqpcomp.language('nqp');
$nqpcomp.parsegrammar(NQP::Grammar);
$nqpcomp.parseactions(NQP::Actions);
hll-config($nqpcomp.config);

# Add extra command line options.
my @clo := $nqpcomp.commandline_options();
nqp::push(@clo, 'parsetrace');
nqp::push(@clo, 'setting=s');
nqp::push(@clo, 'setting-path=s');
nqp::push(@clo, 'module-path=s');
nqp::push(@clo, 'vmlibs=s');
nqp::push(@clo, 'no-regex-lib');
nqp::push(@clo, 'dynext=s');
nqp::push(@clo, 'stable-sc');

sub MAIN(@ARGS) {
    # Enter the compiler.
    $nqpcomp.command_line(@ARGS, :encoding('utf8'), :transcode('ascii iso-8859-1'));

    # Close event logging
    $nqpcomp.nqpevent();
}
