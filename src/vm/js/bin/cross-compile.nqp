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
    method js($qast, *%adverbs) {
        my $js_code := $!js.js(QASTWithMatch.new(ast=>$qast));
        say($js_code);
        $qast;
    }
}

# Shim that makes a compiler instance and uses it to drive compilation.
class FreshMonkeyPatchedCompiler {
    has $!instance;
    has $!operations;
    method to_mast(*@args) {
        my $new := $!instance.new;
        $new.HOW.mixin($new, SerializeOnce);
        $new.to_mast(|@args)
    }

    method operations() {
        $!operations;
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


    my $monkey_patched := FreshMonkeyPatchedCompiler.new(instance => $q.instance, operation => $q.operations);

    nqp::bindcomp('QAST', $monkey_patched);

    my $moar := $nqpcomp-cc.backend;
    my $js := JavaScriptBackend.new(compiler => $nqpcomp-cc);

    my $combined := HLL::Backend::JavaScriptAndMoar.new($js);


    $combined.HOW.reparent($combined, $moar);

    $nqpcomp-cc.backend($combined);
    $nqpcomp-cc.addstage('optimize', :after<ast>); # we need to re-add optimize after .backend removes it

    $nqpcomp-cc.command_line(@ARGS,:module-path('gen/js/stage2'),
        :setting-path('gen/js/stage2'),
        :bootstrap(1),
        :custom-regex-lib('QRegex'),
        :encoding('utf8'), :transcode('ascii iso-8859-1'));

}
