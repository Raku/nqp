# Backend class for the MoarVM.
class HLL::Backend::MoarVM {
    our %moar_config := nqp::backendconfig();

    method apply_transcodings($s, $transcode) {
        $s
    }

    method config() {
        %moar_config
    }

    method force_gc() {
        nqp::die("Cannot force GC on Moar backend yet");
    }

    method name() {
        %moar_config<name>
    }

    method nqpevent($spec?) {
        # Doesn't do anything just yet
    }

    my $prof_start_sub;
    my $prof_end_sub;
    method ensure_prof_routines() {
        unless $prof_start_sub {
            $prof_start_sub := self.compunit_mainline(self.mbc(self.mast(QAST::CompUnit.new(
                QAST::Block.new(
                    QAST::Op.new( :op('mvmstartprofile'),
                        QAST::Var.new( :name('config'), :scope('local'), :decl('param') ) )
                )))));
            $prof_end_sub := self.compunit_mainline(self.mbc(self.mast(QAST::CompUnit.new(
                QAST::Block.new(
                    QAST::Op.new( :op('mvmendprofile') )
                )))));
        }
    }
    method run_profiled($what) {
        self.ensure_prof_routines();
        $prof_start_sub(nqp::hash());
        my $res  := $what();
        my $data := $prof_end_sub();
        self.dump_profile_data($data);
        $res;
    }
    method dump_profile_data($data) {
        my @pieces;

        sub to_json($obj) {
            if nqp::islist($obj) {
                nqp::push(@pieces, '[');
                my $first := 1;
                for $obj {
                    if $first {
                        $first := 0;
                    }
                    else {
                        nqp::push(@pieces, ',');
                    }
                    to_json($_);
                }
                nqp::push(@pieces, ']');
            }
            elsif nqp::ishash($obj) {
                nqp::push(@pieces, '{');
                my $first := 1;
                for $obj {
                    if $first {
                        $first := 0;
                    }
                    else {
                        nqp::push(@pieces, ',');
                    }
                    nqp::push(@pieces, '"');
                    nqp::push(@pieces, $_.key);
                    nqp::push(@pieces, '":');
                    to_json($_.value);
                }
                nqp::push(@pieces, '}');
            }
            elsif nqp::isstr($obj) {
                nqp::push(@pieces, '"');
                nqp::push(@pieces, $obj);
                nqp::push(@pieces, '"');
            }
            elsif nqp::isint($obj) || nqp::isnum($obj) {
                nqp::push(@pieces, ~$obj);
            }
            else {
                nqp::die("Don't know how to dump a " ~ $obj.HOW.name($obj));
            }
        }

        # JSONify the data.
        to_json($data);
        my $json := nqp::join('', @pieces);

        # Insert it into a template and write it.
        my $template := slurp('src/vm/moar/profiler/template.html');
        my $results  := subst($template, /'{{{PROFIELR_OUTPUT}}}'/, $json);
        my $filename := 'profile-' ~ nqp::time_n() ~ '.html';
        spew($filename, $results);
        nqp::sayfh(nqp::getstderr(), "Wrote profiler output to $filename");
    }

    method run_traced($level, $what) {
        nqp::die("No tracing support");
    }

    method version_string() {
        my $rev := %moar_config<version> // '(unknown)';
        return "MoarVM version $rev";
    }

    method stages() {
        'mast mbc moar'
    }

    method is_precomp_stage($stage) {
        $stage eq 'mbc'
    }

    method is_textual_stage($stage) {
        0
    }

    method mast($qast, *%adverbs) {
        nqp::getcomp('QAST').to_mast($qast);
    }

    method mbc($mast, *%adverbs) {
        my $assmblr := nqp::getcomp('MAST');
        if %adverbs<target> eq 'mbc' && %adverbs<output> {
            $assmblr.assemble_to_file($mast, %adverbs<output>);
            nqp::null()
        }
        else {
            my $boot_mode := %adverbs<bootstrap> ?? 1 !! 0;
            __MVM__usecompileehllconfig() if $boot_mode;
            my $result := $assmblr.assemble_and_load($mast);
            __MVM__usecompilerhllconfig() if $boot_mode;
            $result
        }
    }

    method moar($cu, *%adverbs) {
        $cu
    }

    method is_compunit($cuish) {
        __MVM__iscompunit($cuish)
    }

    method compunit_mainline($cu) {
        __MVM__compunitmainline($cu)
    }

    method compunit_coderefs($cu) {
        __MVM__compunitcodes($cu)
    }
}

# Role specifying the default backend for this build.
role HLL::Backend::Default {
    method default_backend() { HLL::Backend::MoarVM }
}
