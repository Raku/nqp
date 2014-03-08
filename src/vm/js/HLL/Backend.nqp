# Backend class for compiling to JavaScript.
use QAST::Compiler;

# HACK work around for nqp namespace bug
class HLLBackend::JavaScript {
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
    
    method stages() {
        'js'
    }
    
    method is_precomp_stage($stage) {
        # Currently, everything is pre-comp since we're a cross-compiler.
        1
    }
    
    method is_textual_stage($stage) {
        1
    }
    
    
    method js($qast, *%adverbs) {
        my $backend := QAST::CompilerJS.new;
        $backend.emit($qast);
    }

    method node_module($js,*%adverbs) {
        my $module := %adverbs<output>;
        if nqp::stat($module, nqp::const::STAT_EXISTS) == 0 {
            nqp::mkdir($module, 0o777);
        }

        spew($module ~ "/main.js", $js);
        my $package_json := '{ "main": "main.js", "version": "0.0.0", "name": "placeholder" }';
        spew($module ~ '/package.json', $package_json);
    }
    
    method is_compunit($cuish) {
        !pir::isa__IPs($cuish, 'String')
    }
}
