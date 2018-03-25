# Backend class for compiling to JavaScript.
use QAST::Compiler;

my class Queue is repr('ConcBlockingQueue') { }

my sub create_buf($type) {
    my $buf := nqp::newtype(nqp::null(), 'VMArray');
    nqp::composetype($buf, nqp::hash('array', nqp::hash('type', $type)));
    nqp::setmethcache($buf, nqp::hash('new', method () {nqp::create($buf)}));
    $buf;
}

my sub run_command($command, :$stdout) {
  my @stdout_bytes;
  my $queue := nqp::create(Queue);

  my $done;
  my $read_all;

  my $config := nqp::hash(
      'done', -> $status {
          $done := $done + 1;
      }
  );

  if $stdout {
      $config<stdout_bytes> := -> $seq, $data, $err {
          if nqp::isconcrete($data) {
              @stdout_bytes[$seq] := $data;
          }
          else {
              $read_all := 1;
          }
      };
      $config<buf_type> := create_buf(uint8);
  } else {
      $read_all := 1;
  }

  my $task := nqp::spawnprocasync($queue, $command, nqp::cwd(), nqp::getenvhash(), $config);

  if $stdout {
      nqp::permit($task, 1, -1);
  }

  while !$done || !$read_all {
      if nqp::shift($queue) -> $task {
          if nqp::list($task) {
              my $code := nqp::shift($task);
              $code(|$task);
          }
          else {
              $task();
          }
      }
  }

  if $stdout {
      my class VMDecoder is repr('Decoder') {}
      my $dec := nqp::create(VMDecoder);
      nqp::decoderconfigure($dec, 'utf8', nqp::hash());
      for @stdout_bytes -> $bytes {
          nqp::decoderaddbytes($dec, $bytes);
      }
      nqp::decodertakeallchars($dec);
  } else {
      nqp::null();
  }
}

my class JSWithSourceMap {
    has $!js;
    has $!mapping;
    has $!p6-source;
    has $!file;
    has $!comp_line_directives;
    method js() {$!js}
    method mapping() {$!mapping}
    method p6-source() {$!p6-source}
    method file() {$!file}
    method comp_line_directives() {$!comp_line_directives}

    method dump() {
       "/* With sourcemap for $!file */\n" ~ $!js;
    }
}

class QASTWithMatch {
    has $!ast;
    has $!match;
    method ast() {$!ast}
    method match() {$!match}
    method dump() {$!ast.dump}
}

# It can be called HLL::Backend::JavaScript due to problems while merging namespaces
class JavaScriptBackend {
    has $!compiler;

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
        note("Writing profiling data to $filename");
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
        0;
    }

    method spawn_new_node() {
        my $comp := nqp::getcomp('JavaScript');
        nqp::isnull($comp);
    }

    method ast($source, *%adverbs) {
        QASTWithMatch.new(ast => $!compiler.ast($source, |%adverbs), match => $source);
    }

    method optimize($ast_with_match, *%adverbs) {
        nqp::istype($ast_with_match, QASTWithMatch) ?? QASTWithMatch.new(
            ast => $!compiler.optimize($ast_with_match.ast, |%adverbs),
            match => $ast_with_match.match) !! $ast_with_match;
    }

    method get_ast($got) {
        nqp::istype($got, QASTWithMatch) ?? $got.ast !! $got;
    }
    
    method js($parsed, *%adverbs) {
        my $backend := QAST::CompilerJS.new(nyi=>%adverbs<nyi> // 'ignore');

        my $substagestats := nqp::defined(%adverbs<substagestats>);

        my $instant := %adverbs<target> eq 'js' || self.spawn_new_node();

        my $shebang := nqp::defined(%adverbs<shebang>);

        my $nqp-runtime := %adverbs<nqp-runtime>;

        if %adverbs<source-map> {
            my @js := nqp::list_s();
            my @mapping := nqp::list_i();

            my $file := nqp::ifnull(nqp::getlexdyn('$?FILES'), "<unknown file>");
            $backend.emit_with_source_map($parsed.ast, @js, @mapping, :$instant, :$shebang, :$nqp-runtime);

            my $sourcemap_and_js := JSWithSourceMap.new(js => nqp::join('', @js), mapping => @mapping, p6-source => $parsed.match.orig, file => $file, comp_line_directives => @*comp_line_directives);

            %adverbs<output> ?? self.sourcemap_to_file($sourcemap_and_js, %adverbs<output>) !! $sourcemap_and_js;
        } else {
            my $code := $backend.emit(self.get_ast($parsed), :$instant, :$substagestats, :$shebang, :$nqp-runtime);
            $code := self.beautify($code) if %adverbs<beautify>;
            $code;
        }
    }

    method sourcemap_to_file($sourcemap_and_js, $output) {
        my str $sourcemap_file := "$output.map";

        my str $sourcemap_url;

        if nqp::isnull(nqp::getcomp('JavaScript')) {
            my @tmp_files;
            my sub as_tmp_file($content) {
                my $tmp_file := self.tmp_file();
                my $fh := open($tmp_file, :w);
                $fh.print($content);
                close($fh);

                @tmp_files.push($tmp_file);

                $tmp_file;
            }


            my $mapping := nqp::list_s();
            for $sourcemap_and_js.mapping -> $offset {
                nqp::push_s($mapping, ~$offset);
            }

            $sourcemap_url := run_command(:stdout, [
                'node',
                'src/vm/js/bin/build-sourcemap.js',
                as_tmp_file($sourcemap_and_js.js),
                as_tmp_file($sourcemap_and_js.p6-source),
                as_tmp_file(nqp::join(',', $mapping)),
                $output,
                $sourcemap_and_js.file,
                $sourcemap_file
            ]);


            for @tmp_files -> $tmp_file {
                nqp::unlink($tmp_file);
            }
        } else {
            my $sourcemap := nqp::getcomp('JavaScript').eval('nqp.buildSourceMap')(
                $sourcemap_and_js.js,
                $sourcemap_and_js.p6-source,
                $sourcemap_and_js.mapping,
                $output,
                $sourcemap_and_js.file,
                $sourcemap_and_js.comp_line_directives,
                $sourcemap_file
            );

            $sourcemap_url := $sourcemap<url>;
            spurt($sourcemap_file, $sourcemap<content>);
        }

        # HACK Add extra ~ so that the literal isn't used as the directive
        $sourcemap_and_js.js ~ "//# sourceMappingURL" ~ "=" ~ $sourcemap_url;
    }

    method beautify($code) {
        my $tmp_file := self.tmp_file();


        my $fh := open($tmp_file, :w);
        $fh.print($code);
        close($fh);

        my $beautified := run_command(:stdout, ['js-beautify', $tmp_file]);


        # TODO think about safety
        nqp::unlink($tmp_file);

        $beautified;
    }

    method tmp_file() {
        # TODO a better temporary file name
        'tmp-' ~ nqp::getpid() ~ nqp::rand_n(4) ~ '.js';
    }
    
    method run($js, *%adverbs) {

        if !self.spawn_new_node {
            if nqp::istype($js, JSWithSourceMap) {
                return nqp::getcomp('JavaScript').eval($js.js, :mapping($js.mapping), :p6-source($js.p6-source), :file($js.file), :comp_line_directives($js.comp_line_directives));
            } else {
                return nqp::getcomp('JavaScript').eval($js);
            }
        }
        
        my $tmp_file := self.tmp_file;

        my $code := open($tmp_file, :w);
        $code.print($js);
        close($code);

        sub (*@args) {
            # TODO source map support
            my @cmd := ["node",$tmp_file];

            my $i := 1;
            while $i < nqp::elems(@args) {
                @cmd.push(@args[$i]);
                $i := $i + 1;
            }

            run_command(@cmd);
        
            nqp::unlink($tmp_file); # TODO think about safety
        };
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
    method default_backend() { JavaScriptBackend.new(compiler=>self) }
}
