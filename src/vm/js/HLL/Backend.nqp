# Backend class for compiling to JavaScript.
use QAST::Compiler;

# It can be called HLL::Backend::JavaScript due to problems while merging namespaces
class JavaScriptBackend {
    method apply_transcodings($s, $transcode) {
        $s
    }
    
    method config() {
        nqp::backendconfig()
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


    method fresh_profile_filename() {
        my $filename := 'profile-' ~ nqp::time_n() ~ '.cpuprofile';
        nqp::sayfh(nqp::getstderr(), "Writing profiling data to $filename");
        $filename;
    }

    method v8-profiler($comp) {
        my $v8-profiler := $comp.eval('
            var v8profiler = null;
            try {
              v8profiler = require(\'v8-profiler\');
            } catch (e) {
              if (e.message == "Cannot find module \'v8-profiler\'") {
                null;
              } else {
                throw e;
              }
            }
            v8profiler;
        ');

        if nqp::isnull($v8-profiler) {
            say("Cannot find module 'v8-profiler'. Install it from npm to enable profiling.");
            nqp::exit(1);
        }
        $v8-profiler;
    }

    method run_profiled($what, $kind, $filename?) {
        my $comp := nqp::getcomp('JavaScript');

        my $v8-profiler := self.v8-profiler($comp);

        my &start := $comp.eval('(function(profiler, name) {profiler.startProfiling(name)})');
        my &write := $comp.eval('(function(profiler, name, filename) {
            var profile = profiler.stopProfiling(name);
            var fs = require("fs");
            fs.writeFileSync(filename, JSON.stringify(profile));
            profile.delete();
        })');


        start($v8-profiler, '');

        my $result := $what();

        write($v8-profiler, '', $filename || self.fresh_profile_filename);

        $result;
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
        my $backend := QAST::CompilerJS.new(nyi=>%adverbs<nyi> // 'ignore');

        my $substagestats := nqp::defined(%adverbs<substagestats>);

        my $instant := %adverbs<target> eq 'js' || self.spawn_new_node();

        my $shebang := nqp::defined(%adverbs<shebang>);

        my $nqp-runtime := %adverbs<nqp-runtime>;

        if %adverbs<source-map-debug> {
            $backend.emit_with_source_map_debug($qast, :$instant, :$shebang, :$nqp-runtime);
        } elsif %adverbs<source-map> {
            $backend.emit_with_source_map($qast, :$instant, :$shebang, :$nqp-runtime);
        } else {
            my $code := $backend.emit($qast, :$instant, :$substagestats, :$shebang, :$nqp-runtime);
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
    method default_backend() { JavaScriptBackend }
}
