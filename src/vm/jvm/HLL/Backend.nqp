# Backend class for the JVM.
use JASTNodes;

class HLL::Backend::JVM {
    our %jvm_config   := nqp::backendconfig();
    my $compile_count := 0;

    method apply_transcodings($s, $transcode) {
        $s
    }
    
    method config() {
        %jvm_config
    }
    
    method force_gc() {
        nqp::force_gc()
    }
    
    method name() {
        'jvm'
    }

    method nqpevent($spec?) {
        # Doesn't do anything just yet
    }
    
    method run_profiled($what, $kind, $filename?) {
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
            %*COMPILING<%?OPTIONS><javaclass> := nqp::sha1(nqp::sha1($source) ~ nqp::time_n() ~ $compile_count++);
        }
        $source
    }
    
    method jast($qast, *%adverbs) {
        my $classname := %*COMPILING<%?OPTIONS><javaclass> || nqp::sha1('eval-at-' ~ nqp::time_n() ~ $compile_count++);
        nqp::getcomp('QAST').jast($qast, :$classname);
    }

    method classfile($jast, *%adverbs) {
        # TODO: Direct compile ops have to take a hash of name-to-typeobj
        my %jastnodes := hash();
        %jastnodes<JAST::Class>  := JAST::Class;
        %jastnodes<JAST::Field>  := JAST::Field;
        %jastnodes<JAST::Method> := JAST::Method;
        %jastnodes<JAST::Label> := JAST::Label;
        %jastnodes<JAST::Instruction> := JAST::Instruction;
        %jastnodes<JAST::InvokeDynamic> := JAST::InvokeDynamic;
        %jastnodes<JAST::InstructionList> := JAST::InstructionList;
        %jastnodes<JAST::PushIVal> := JAST::PushIVal;
        %jastnodes<JAST::PushNVal> := JAST::PushNVal;
        %jastnodes<JAST::PushSVal> := JAST::PushSVal;
        %jastnodes<JAST::PushCVal> := JAST::PushCVal;
        %jastnodes<JAST::PushIndex> := JAST::PushIndex;
        %jastnodes<JAST::TryCatch> := JAST::TryCatch;
        %jastnodes<JAST::Annotation> := JAST::Annotation;
        if (%adverbs<target> eq 'classfile' || %adverbs<target> eq 'jar') && %adverbs<output> {
            nqp::compilejasttofile($jast, %jastnodes, %adverbs<output>);
            nqp::null()
        }
        else {
            nqp::compilejast($jast, %jastnodes);
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
