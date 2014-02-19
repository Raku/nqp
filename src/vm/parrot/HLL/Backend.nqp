# Backend class for Parrot.
class HLL::Backend::Parrot {
    our %parrot_config := nqp::backendconfig();
    
    method apply_transcodings($s, $transcode) {
        for nqp::split(' ', $transcode) {
            try {
                $s := pir::trans_encoding__Ssi($s,
                        pir::find_encoding__Is($_));
            }
        }
        return $s;
    }
    
    method config() {
        %parrot_config
    }
    
    method force_gc() {
        pir::sweep__0i(1)
    }
    
    method name() {
        'parrot'
    }

    method nqpevent($spec?) {
        ## close out the current event log, if any
        pir::nqpevent__vs('nqpevent: log finished');
        my $fh := pir::nqpevent_fh__PP(nqp::null());
        $fh.flush() if !nqp::isnull($fh) && $fh;

        ## start a new event log
        if $spec {
            $spec := nqp::split(';', $spec);
            my $file := $spec[0];
            my $flags := $spec[1];
            if $file gt '' {
                my $fh := nqp::open($file, 'w') || self.panic("Cannot write to $file");
                pir::nqpevent_fh__PP($fh);
            }
            else {
                pir::nqpevent_fh__PP(nqp::getstderr());
            }
            pir::nqpdebflags__Ii($flags eq '' ?? 0x1f !! $flags);
            pir::nqpevent__0s("nqpevent: log started");
        }
    }
    
    method run_profiled($what) {
        my $old_runcore := pir::interpinfo__Si(pir::const::INTERPINFO_CURRENT_RUNCORE);
        pir::set_runcore__0s("subprof_hll");
        my $res := $what();
        pir::set_runcore__vs($old_runcore);
        $res
    }
    
    method run_traced($level, $what) {
        pir::trace__vI($level);
        my $res := $what();
        pir::trace__0i(0);
        $res
    }
    
    method version_string() {
        my $parver  := %parrot_config<VERSION>;
        my $parrev  := %parrot_config<git_describe> // '(unknown)';
        return "parrot $parver revision $parrev";
    }
    
    method vmstat() {
        nqp::sprintf(" %11d %11d %9d %9d",
            [ pir::interpinfo__Ii(pir::const::INTERPINFO_TOTAL_MEM_ALLOC),
            pir::interpinfo__Ii(pir::const::INTERPINFO_TOTAL_MEM_USED),
            pir::interpinfo__Ii(pir::const::INTERPINFO_TOTAL_PMCS),
            pir::interpinfo__Ii(pir::const::INTERPINFO_ACTIVE_PMCS),
            ]);
    }
    
    method stages() {
        'post pir evalpmc'
    }
    
    method is_precomp_stage($stage) {
        # XXX PBC goes here also in the future
        $stage eq 'pir'
    }
    
    method is_textual_stage($stage) {
        $stage eq 'pir'
    }
    
    method post($source, *%adverbs) {
        nqp::getcomp('QAST').post($source)
    }

    method pirbegin() {
        ".include 'cclass.pasm'\n"
        ~ ".include 'except_severity.pasm'\n"
        ~ ".include 'except_types.pasm'\n"
        ~ ".include 'iglobals.pasm'\n"
        ~ ".include 'interpinfo.pasm'\n"
        ~ ".include 'iterator.pasm'\n"
        ~ ".include 'sysinfo.pasm'\n"
        ~ ".include 'stat.pasm'\n"
        ~ ".include 'datatypes.pasm'\n"
        ~ ".include 'libpaths.pasm'\n"
        ~ ".include 'nqp_const.pir'\n"
    }
  
    method pir($source, *%adverbs) {
        self.pirbegin() ~ $source.pir()
    }

    method evalpmc($source, *%adverbs) {
        my $compiler := nqp::getcomp('PIR');
        my $pbc := $compiler($source);
        unless $pbc.is_initialized('init') {
            for $pbc.subs_by_tag('init') -> $sub { $sub() }
            $pbc.mark_initialized('init');
        }
        $pbc
    }
    
    method is_compunit($cuish) {
        !pir::isa__IPs($cuish, 'String')
    }
    
    method compunit_mainline($cu) {
        $cu.all_subs()[0]
    }
    
    method compunit_coderefs($cu) {
        $cu.all_subs();
    }
    
    method recursion_limit($limit) {
        pir::getinterp__P().recursion_limit($limit);
    }
}

# Role specifying the default backend for this build.
role HLL::Backend::Default {
    method default_backend() { HLL::Backend::Parrot }
}
