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
    
#    method run_profiled($what, $filename?) {
#        nqp::printfh(nqp::getstderr(),
#            "Attach a profiler (e.g. JVisualVM) and press enter");
#        nqp::readlinefh(nqp::getstdin());
#        $what();
#    }

    method run_profiled($what, $filename?) {
        my @END := nqp::gethllsym('perl6', '@END_PHASERS');
        @END.push: -> { self.dump_profile_data(nqp::endprofile(), $filename) } if nqp::defined(@END);
        nqp::startprofile(nqp::hash());
        my $res  := $what();
        unless nqp::defined(@END) {
            my $data := nqp::endprofile();
            self.dump_profile_data($data, $filename);
        }
        $res;
    }
    method dump_profile_data($data, $filename) {
        my @pieces := nqp::list_s();

        unless nqp::defined($filename) {
            $filename := 'profile-' ~ nqp::time_n() ~ '.html';
        }
        nqp::sayfh(nqp::getstderr(), "Writing profiler output to $filename");
        my $profile_fh := open($filename, :w);
        my $want_json  := ?($filename ~~ /'.json'$/);

        my $escaped_backslash;
        my $escaped_dquote;
        my $escaped_squote;
        if $want_json {
            # Single quotes don't require escaping here
            $escaped_backslash := q{\\\\};
            $escaped_dquote    := q{\\"};
        }
        else {
            # Here we're creating a double-quoted JSON string destined for the
            # inside of a single-quoted JS string. Ouch.
            $escaped_backslash := q{\\\\\\\\};
            $escaped_dquote    := q{\\\\"};
            $escaped_squote    := q{\\'};
        }

        sub post_process_call_graph_node($node) {
            if $node<allocations> {
                for $node<allocations> -> %alloc_info {
                    my $type := %alloc_info<type>;
                    %alloc_info<type> := $type.HOW.name($type);
                }
            }
            if $node<callees> {
                for $node<callees> {
                    post_process_call_graph_node($_);
                }
            }
        }

        sub to_json($obj) {
            if nqp::islist($obj) {
                nqp::push_s(@pieces, '[');
                my $first := 1;
                for $obj {
                    if $first {
                        $first := 0;
                    }
                    else {
                        nqp::push_s(@pieces, ',');
                    }
                    to_json($_);
                }
                nqp::push_s(@pieces, ']');
            }
            elsif nqp::ishash($obj) {
                nqp::push_s(@pieces, '{');
                my $first := 1;
                for $obj {
                    if $first {
                        $first := 0;
                    }
                    else {
                        nqp::push_s(@pieces, ',');
                    }
                    nqp::push_s(@pieces, '"');
                    nqp::push_s(@pieces, $_.key);
                    nqp::push_s(@pieces, '":');
                    to_json($_.value);
                }
                nqp::push_s(@pieces, '}');
            }
            elsif nqp::isstr($obj) {
                if nqp::index($obj, '\\') {
                    $obj := subst($obj, /'\\'/, $escaped_backslash, :global);
                }
                if nqp::index($obj, '"') {
                    $obj := subst($obj, /'"'/, $escaped_dquote, :global);
                }
                if nqp::defined($escaped_squote) && nqp::index($obj, "'") {
                    $obj := subst($obj, /"'"/, $escaped_squote, :global);
                }
                nqp::push_s(@pieces, '"');
                nqp::push_s(@pieces, $obj);
                nqp::push_s(@pieces, '"');
            }
            elsif nqp::isint($obj) || nqp::isnum($obj) {
                nqp::push_s(@pieces, ~$obj);
            }
            elsif nqp::can($obj, 'Str') {
                to_json(nqp::unbox_s($obj.Str));
            }
            else {
                nqp::die("Don't know how to dump a " ~ $obj.HOW.name($obj));
            }
            if nqp::elems(@pieces) > 4096 {
                nqp::printfh($profile_fh, nqp::join('', @pieces));
                nqp::setelems(@pieces, 0);
            }
        }

        # Post-process the call data, turning objects into flat data.
        for $data {
            post_process_call_graph_node($_<call_graph>);
        }

        if $want_json {
            to_json($data);
            nqp::printfh($profile_fh, nqp::join('', @pieces));
        }
        else {
            # Get profiler template, split it in half, and write those either
            # side of the JSON itself.
            my $template := try slurp('src/vm/moar/profiler/template.html');
            unless $template {
                $template := slurp(nqp::backendconfig()<prefix> ~ '/share/nqp/lib/profiler/template.html');
            }
            my @tpl_pieces := nqp::split('{{{PROFILER_OUTPUT}}}', $template);

            nqp::printfh($profile_fh, @tpl_pieces[0]);
            to_json($data);
            nqp::printfh($profile_fh, nqp::join('', @pieces));
            nqp::printfh($profile_fh, @tpl_pieces[1]);
        }
        nqp::closefh($profile_fh);
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
