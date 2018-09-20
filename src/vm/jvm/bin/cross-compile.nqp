use Truffle;
 
class HLL::Backend::TruffleAndJVM {
    has $!truffle;
    method BUILD($truffle) {
        $!truffle := $truffle;
    }
    method new($truffle) {
        my $obj := nqp::create(self);
        $obj.BUILD($truffle);
        $obj
    }

    method stages() {
        'truffle-bytecode jast classfile jar jvm'
    }

    method truffle-bytecode($qast, *%adverbs) {
        say('writing truffle bytecode to ' ~ %adverbs<truffle-output>);
        my $tast := $!truffle.tast($qast);
        say(%adverbs<truffle-output>.HOW.name(%adverbs<truffle-output>));
        $!truffle.bytecode($tast, :output(%adverbs<truffle-output>), :target('bytecode'));
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
    $q.HOW.mixin($q, SerializeOnce);

    my $jvm := $nqpcomp-cc.backend;
    my $truffle := TruffleBackend.new();

    my $combined := HLL::Backend::TruffleAndJVM.new($truffle);


    $combined.HOW.reparent($combined, $jvm);

    my @clo := $nqpcomp-cc.commandline_options();
    @clo.push('truffle-output=s');

    $nqpcomp-cc.backend($combined);
    $nqpcomp-cc.addstage('optimize', :after<ast>); # we need to re-add optimize after .backend removes it

    $nqpcomp-cc.command_line(@ARGS,:module-path('gen/truffle/stage2'),
        :setting-path('gen/truffle/stage2'),
        :bootstrap(1),
        :custom-regex-lib('QRegex'),
        :encoding('utf8'), :transcode('ascii iso-8859-1'));

}
