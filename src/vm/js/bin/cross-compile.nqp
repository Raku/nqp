use QAST::Compiler;
use HLL::Backend;

class HLL::Backend::JavaScriptAndParrot {
    has $!parrot;
    has $!js;
    has $!js_filename;
    has $!pir_filename;
    has $!name;
    method new($js,$parrot,$js_filename,$pir_filename,$name) {
        my $obj := nqp::create(self);
        $obj.BUILD($js,$parrot,$js_filename,$pir_filename,$name);
        $obj
    }
    method BUILD($js,$parrot,$js_filename,$pir_filename,$name) {
        $!js := $js;
        $!parrot := $parrot;
        $!js_filename := $js_filename;
        $!pir_filename := $pir_filename;
        $!name := $name;
    }
    method is_precomp_stage($stage) {
        # Currently, everything is pre-comp since we're a cross-compiler.
        1
    }
    method stages() {
       'js post pir evalpmc'
    }
    method js($qast, *%named) {
        my $js := $!js.js($qast);
        $!js.node_module($js,:output($!js_filename),:name($!name));
        return $qast;
    }
    method post(*@pos, *%named) {
        $!parrot.post(|@pos,|%named);
    }
    method evalpmc(*@pos, *%named) {
        $!parrot.evalpmc(|@pos,|%named);
    }
    method pir(*@pos, *%named) {
        my $pir := $!parrot.pir(|@pos,|%named);
        spew($!pir_filename,$pir);
        "";
    }

    method apply_transcodings($s, $transcode) {
        $s
    }
    
    method config() {
        nqp::hash()
    }
    
    method force_gc() {
        nqp::die("Cannot force GC on JVM backend yet");
    }
    
    method name() {
        'js'
    }

    method nqpevent($spec?) {
        # Doesn't do anything just yet
    }
    
    method run_profiled($what) {
        nqp::printfh(nqp::getstderr(),
            "Attach a profiler (e.g. JVisualVM) and press enter");
        nqp::readlinefh(nqp::getstdin());
        $what();
    }
    
    method run_traced($level, $what) {
        nqp::die("No tracing support");
    }
    
    method version_string() {
        "JS"
    }
    
    method is_textual_stage($stage) {
        1
    }

    method is_compunit($cuish) {
        !pir::isa__IPs($cuish, 'String')
    }
}


sub MAIN($binary,$filename,$output_dir,$name,$setting='NQPCORE',$no-regex-lib=1) {
    # Get original compiler, then re-register it as a cross compiler.
    my $nqpcomp-orig := nqp::getcomp('nqp');
    my $nqpcomp-cc   := nqp::clone($nqpcomp-orig);
    $nqpcomp-cc.language('nqp-cc');

    my $output_js := $output_dir~'/'~$name;
    my $output_pir := $output_dir~'/'~$name~'.pir';
    
    my $js := HLLBackend::JavaScript.new;
    my $backend := HLL::Backend::JavaScriptAndParrot.new($js,$nqpcomp-cc.backend,$output_js,$output_pir,$name);
    $nqpcomp-cc.backend($backend);
    
    my @ARGS;
    nqp::push(@ARGS,$binary);
    nqp::push(@ARGS,$filename);
    
    # avoid serializing twice when we are running two backends
    my $q := nqp::getcomp('QAST');
    nqp::bindcomp('QAST',$q.HOW.mixin($q,SerializeOnce));

    my %*SC_CACHE;

    $nqpcomp-cc.command_line(:target('pir'), :stable-sc(0), :no-regex-lib($no-regex-lib),
        :setting-path('gen/js/stage2'),
        :setting($setting),
        :precomp(1),
        :custom-regex-lib('QRegex'),
        :module-path("gen/js/stage2"),
        :encoding('utf8'), :transcode('ascii iso-8859-1'),@ARGS);
}
