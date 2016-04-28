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
        "JS"
    }
    
    method stages() {
        'js run'
    }
    
    method is_precomp_stage($stage) {
        # Currently, everything is pre-comp since we're a cross-compiler.
        $stage eq 'js' || (($stage eq '' || $stage eq 'run') && self.spawn_new_node);
    }
    
    method is_textual_stage($stage) {
        $stage eq 'js';
    }

    method spawn_new_node() {
        my $comp := nqp::getcomp('JavaScript');
        nqp::isnull($comp);
    }
    
    
    method js($qast, *%adverbs) {
        my $backend := QAST::CompilerJS.new(nyi=>%adverbs<nyi> // 'ignore', cps=>%adverbs<cps> // 'off');

        my $substagestats := nqp::defined(%adverbs<substagestats>);

        my $instant := %adverbs<target> eq 'js' || self.spawn_new_node();

        if %adverbs<source-map-debug> {
            $backend.emit_with_source_map_debug($qast, :$instant);
        } elsif %adverbs<source-map> {
            $backend.emit_with_source_map($qast, :$instant);
        } else {
            my $tmp_file := self.tmp_file();
            my $fh := nqp::open($tmp_file, 'w');
            $backend.emit($qast, :$instant, :$fh, :$substagestats);

            my $timestamp := nqp::time_n();
            my $code := slurp($tmp_file);
            nqp::printfh(nqp::getstderr(), nqp::sprintf("[slurp %.3f] ", [nqp::time_n() - $timestamp])) if $substagestats;

            nqp::unlink($tmp_file);
            $code := self.beautify($code) if %adverbs<beautify>;
            $code;
        }
    }

    method beautify($code) {
        my $tmp_file := self.tmp_file();


        my $fh := nqp::open($tmp_file, 'w');
        nqp::printfh($fh, $code);
        nqp::closefh($fh);

        my $pipe   := nqp::syncpipe();
        my $status := nqp::shell("js-beautify $tmp_file", nqp::cwd(), nqp::getenvhash(),
            nqp::null(), $pipe, nqp::null(),
            nqp::const::PIPE_INHERIT_IN + nqp::const::PIPE_CAPTURE_OUT + nqp::const::PIPE_INHERIT_ERR);
        my $beautified := nqp::readallfh($pipe);
        nqp::closefh($pipe);

        # TODO think about safety
        nqp::unlink($tmp_file);

        $beautified;
    }

    method tmp_file() {
        # TODO a better temporary file name
        'tmp-' ~ nqp::getpid() ~ '.js';
    }
    
    method run($js, *%adverbs) {
        # TODO source map support

        if !self.spawn_new_node {
            return nqp::getcomp('JavaScript').eval($js);
        }
        
        my $tmp_file := self.tmp_file;

        my $code := nqp::open($tmp_file, 'w');
        nqp::printfh($code, $js);
        nqp::closefh($code);

        sub (*@args) {
            my @cmd := ["node",$tmp_file];

            my $i := 1;
            while $i < nqp::elems(@args) {
                @cmd.push(@args[$i]);
                $i := $i + 1;
            }

            my $env := nqp::getenvhash();
            nqp::spawn(@cmd,nqp::cwd(),nqp::getenvhash(),
                nqp::null(), nqp::null(), nqp::null(),
                nqp::const::PIPE_INHERIT_IN + nqp::const::PIPE_INHERIT_OUT + nqp::const::PIPE_INHERIT_ERR);
        
            nqp::unlink($tmp_file); # TODO think about safety
        };
    }

    method node_module($js, *%adverbs) {
        my $module := %adverbs<output>;
        if nqp::stat($module, nqp::const::STAT_EXISTS) == 0 {
            nqp::mkdir($module, 0o777);
        }

        spew($module ~ "/main.js", $js);
        my $package_json := '{ "main": "main.js", "version": "0.0.0", "name": "'~ %adverbs<name> ~ '" }';
        spew($module ~ '/package.json', $package_json);
    }

    # When running on Moar a compunit is just a sub 

    method compunit_mainline($cu) {
        nqp::isinvokable($cu) ?? $cu !! nqp::compunitmainline($cu);
    }

    method compunit_coderefs($cu) {
        nqp::compunitcodes($cu);
    }

    method is_compunit($cuish) {
        nqp::isinvokable($cuish) || nqp::iscompunit($cuish);
    }
}

# Role specifying the default backend for this build.
role HLL::Backend::Default {
    method default_backend() { HLLBackend::JavaScript }
}
