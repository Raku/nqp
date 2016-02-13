#use QAST;
use HLL::Backend;

sub MAIN(*@ARGS) {
    # Get original compiler, then re-register it as a cross compiler.
    my $nqpcomp-orig := nqp::getcomp('nqp');
    my $nqpcomp-cc   := nqp::clone($nqpcomp-orig);
    $nqpcomp-cc.language('nqp-cc');
    
    $nqpcomp-cc.backend(HLLBackend::JavaScript);
    
    #:custom-regex-lib('QRegex')

    my @clo := $nqpcomp-cc.commandline_options();
    @clo.push('source-map');
    @clo.push('source-map-debug');
    @clo.push('beautify');
    @clo.push('cps=s');
    @clo.push('nyi=s');

    $nqpcomp-cc.command_line(@ARGS,:module-path('gen/js/stage2'),
        :setting-path('gen/js/stage2'),
        :bootstrap(1),
        :custom-regex-lib('QRegex'),
        :no-regex-lib(0),
        :encoding('utf8'), :transcode('ascii iso-8859-1'));
}
