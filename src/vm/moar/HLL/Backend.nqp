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
        $res;
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
