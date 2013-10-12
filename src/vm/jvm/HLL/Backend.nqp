# Backend class for the JVM.
class HLL::Backend::JVM {
    method apply_transcodings($s, $transcode) {
        $s
    }
    
    method config() {
        nqp::jvmgetconfig()
    }
    
    method force_gc() {
        nqp::die("Cannot force GC on JVM backend yet");
    }
    
    method name() {
        'jvm'
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
        "JVM"
    }
    
    method stages() {
        'jast classfile jar jvm'
    }
    
    method is_precomp_stage($stage) {
        $stage eq 'classfile' || $stage eq 'jar'
    }
    
    method is_textual_stage($stage) {
        0
    }
    
    method classname($source, *%adverbs) {
        unless %*COMPILING<%?OPTIONS><javaclass> {
            %*COMPILING<%?OPTIONS><javaclass> := nqp::sha1(nqp::sha1($source) ~ nqp::time_n());
        }
        $source
    }
    
    method jast($qast, *%adverbs) {
        my $classname := %*COMPILING<%?OPTIONS><javaclass> || nqp::sha1('eval-at-' ~ nqp::time_n());
        nqp::getcomp('QAST').jast($qast, :$classname);
    }
    
    method classfile($jast, *%adverbs) {
        if (%adverbs<target> eq 'classfile' || %adverbs<target> eq 'jar') && %adverbs<output> {
            nqp::compilejastlinestofile($jast.dump(), %adverbs<output>);
            nqp::null()
        }
        else {
            nqp::compilejastlines($jast.dump());
        }
    }

    method jar($cu, *%adverbs) {
        $cu; # the actual work is done in classfile and compilejast...
    }
    
    method jvm($cu, *%adverbs) {
        nqp::loadcompunit($cu, , %adverbs<bootstrap> ?? 1 !! 0)
    }
    
    method is_compunit($cuish) {
        nqp::iscompunit($cuish)
    }
    
    method compunit_mainline($cu) {
        nqp::compunitmainline($cu)
    }
    
    method compunit_coderefs($cu) {
        nqp::compunitcodes($cu)
    }
}

# Role specifying the default backend for this build.
role HLL::Backend::Default {
    method default_backend() { HLL::Backend::JVM }
}
