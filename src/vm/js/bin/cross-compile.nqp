use QAST::Compiler;
use HLL::Backend;
 
class HLL::Backend::JavaScriptAndMoar {
    has $!js;
    method BUILD($js) {
        $!js := $js;
    }
    method new($js) {
        my $obj := nqp::create(self);
        $obj.BUILD($js);
        $obj
    }
    method stages() {
        'js ' ~ 'mast mbc moar'
    }
    method js($qast) {
        my $js_code := $!js.js($qast);
        say($js_code);
        $qast;
    }
}

sub MAIN(*@ARGS, *%ARGS) {
    my $nqpcomp-orig := nqp::getcomp('nqp');
    my $nqpcomp-cc   := nqp::clone($nqpcomp-orig);
    $nqpcomp-cc.language('nqp-cc');

    my %*SC_CACHE;
    %*SC_CACHE<enabled> := 1;  

    # avoid serializing twice when we are running two backends
    my $q := nqp::getcomp('QAST');


    my $instance := $q.instance.new.HOW.mixin($q,SerializeOnce);
    nqp::bindcomp('QAST', $instance);

    my $moar := $nqpcomp-cc.backend;
    my $js := HLLBackend::JavaScript.new();

    my $combined := HLL::Backend::JavaScriptAndMoar.new($js);


    $combined.HOW.reparent($combined, $moar);

    $nqpcomp-cc.backend($combined);


    $nqpcomp-cc.command_line(@ARGS,|%ARGS, :encoding('utf8'), :transcode('ascii iso-8859-1'), :no-regex-lib(1), :precomp(1), :bootstrap(1));

#    old options - might be useful
#    $nqpcomp-cc.command_line(:target('pir'), :stable-sc(0), :no-regex-lib($no-regex-lib),
#        :setting-path('gen/js/stage2'),
#        :setting($setting),
#        :precomp(1),
#        :custom-regex-lib('QRegex'),
#        :module-path("gen/js/stage2"),

}
