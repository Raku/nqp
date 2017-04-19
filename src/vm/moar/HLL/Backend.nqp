# Backend class for the MoarVM.

my sub literal_subst(str $source, str $pattern, $replacement) {
    my $where := 0;
    my $result := $source;
    while (my $found := nqp::index($result, $pattern, $where)) != -1 {
        $where := $found + nqp::chars($replacement);
        $result := nqp::replace($result, $found, nqp::chars($pattern), $replacement);
    };
    $result;
}

class HLL::Backend::MoarVM {
    our %moar_config := nqp::backendconfig();

    method apply_transcodings($s, $transcode) {
        $s
    }

    method config() {
        %moar_config
    }

    method force_gc() {
        nqp::force_gc();
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
    method run_profiled($what, $kind, $filename?) {
        $kind := 'instrumented' unless $kind;

        my @END := nqp::gethllsym('perl6', '@END_PHASERS');
        @END.push(-> { self.dump_profile_data($prof_end_sub(), $kind, $filename) })
            if nqp::defined(@END);

        self.ensure_prof_routines();
        $prof_start_sub(nqp::hash('kind', $kind));
        my $res  := $what();
        unless nqp::defined(@END) {
            my $data := $prof_end_sub();
            self.dump_profile_data($data, $kind, $filename);
        }
        $res;
    }

    method dump_profile_data($data, $kind, $filename) {
        if $kind eq 'instrumented' {
            self.dump_instrumented_profile_data($data, $filename);
        }
        elsif $kind eq 'heap' {
            self.dump_heap_profile_data($data, $filename);
        }
        else {
            nqp::die("Don't know how to dump data for $kind profile");
        }
    }

    method dump_instrumented_profile_data($data, $filename) {
        my @pieces := nqp::list_s();

        unless nqp::defined($filename) {
            $filename := 'profile-' ~ nqp::time_n() ~ '.html';
        }
        nqp::sayfh(nqp::getstderr(), "Writing profiler output to $filename");
        my $profile_fh := open($filename, :w);
        my $want_json  := nqp::substr($filename, -5) eq '.json';
        my $want_sql   := nqp::substr($filename, -4) eq '.sql';

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

        my int $new-id-counter := 0;
        my $id_remap    := nqp::hash();
        my $id_to_thing := nqp::hash();

        sub post_process_call_graph_node($node) {
            try {
                if nqp::existskey($id_remap, $node<id>) {
                    $node<id> := $id_remap{$node<id>};
                } else {
                    my str $newkey := ~($new-id-counter++);
                    $id_remap{$node<id>} := $newkey;
                    $node<id> := $newkey;
                }
                if nqp::existskey($node, "allocations") {
                    for $node<allocations> -> %alloc_info {
                        if nqp::existskey($id_remap, %alloc_info<id>) {
                            %alloc_info<id> := $id_remap{%alloc_info<id>};
                        } else {
                            my str $newkey := ~($new-id-counter++);
                            $id_remap{%alloc_info<id>} := $newkey;
                            %alloc_info<id> := $newkey;
                        }
                        unless nqp::existskey($id_to_thing, %alloc_info<id>) {
                            my $typename;
                            try {
                                my $type := %alloc_info<type>;
                                $typename := $type.HOW.name($type);
                            }
                            unless $typename {
                                $typename := "<unknown type>";
                            }
                            $id_to_thing{%alloc_info<id>} := $typename;
                        }
                        nqp::deletekey(%alloc_info, "type");
                    }
                }
                unless nqp::existskey($id_to_thing, $node<id>) {
                    my $shared_data := nqp::hash(
                        "file", $node<file>,
                        "line", $node<line>,
                        "name", $node<name>,
                    );
                    $id_to_thing{$node<id>} := $shared_data;
                }
                nqp::deletekey($node, "file");
                nqp::deletekey($node, "line");
                nqp::deletekey($node, "name");
                if nqp::existskey($node, "callees") {
                    for $node<callees> {
                        post_process_call_graph_node($_);
                    }
                }
                CATCH {
                    note("profiler caught an error during post_process_call_graph_node:");
                    note(nqp::getmessage($!));
                }
            }
        }

        sub sift_down(@a, int $start, int $end) {
            my int $root := $start;

            while 2*$root + 1 <= $end {
                my $child := 2*$root + 1;
                my $swap := $root;

                if @a[$swap] gt @a[$child] {
                    $swap := $child;
                }
                if $child + 1 <= $end && @a[$swap] ge @a[$child + 1] {
                    $swap := $child + 1;
                }
                if $swap == $root {
                    return;
                } else {
                    my str $tmp := @a[$root];
                    @a[$root] := @a[$swap];
                    @a[$swap] := $tmp;
                    $root := $swap;
                }
            }
        }

        # Usually only a small number of keys are seen,
		# so a bubble sort would be fine. However, the
		# number can get much larger (e.g., when profiling
		# a build of the Rakudo settings), so use a heapsort
		# instead.
        sub sorted_keys($hash) {
            my @keys;
            for $hash {
                nqp::push(@keys, $_.key);
            }

            my int $count := +@keys;
            my int $start := $count / 2 - 1;
            while $start >= 0 {
                sift_down(@keys, $start, $count - 1);
                $start := $start - 1;
            }

            my int $end := +@keys - 1;
            while $end > 0 {
                my str $swap := @keys[$end];
                @keys[$end] := @keys[0];
                @keys[0] := $swap;
                $end := $end - 1;
                sift_down(@keys, 0, $end);
            }

            return @keys;
        }

        sub to_json($obj) {
            if nqp::islist($obj) {
                nqp::push_s(@pieces, '[');
                my int $first := 1;
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
                my int $first := 1;
                for sorted_keys($obj) {
                    if $first {
                        $first := 0;
                    }
                    else {
                        nqp::push_s(@pieces, ',');
                    }
                    nqp::push_s(@pieces, '"');
                    nqp::push_s(@pieces, $_);
                    nqp::push_s(@pieces, '":');
                    to_json($obj{$_});
                }
                nqp::push_s(@pieces, '}');
            }
            elsif nqp::isstr($obj) {
                if nqp::index($obj, '\\') {
                    $obj := literal_subst($obj, '\\', $escaped_backslash);
                }
                if nqp::index($obj, '"') {
                    $obj := literal_subst($obj, '"', $escaped_dquote);
                }
                if nqp::defined($escaped_squote) && nqp::index($obj, "'") {
                    $obj := literal_subst($obj, "'", $escaped_squote);
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

        sub to_sql($obj) {
            my @profile;
            for $obj[0] -> $k {
                my $v := $obj[0]{$k};
                if nqp::ishash($v) {
                    nqp::sayfh($profile_fh, "INSERT INTO routines VALUES ('" ~ nqp::join("','", nqp::list(nqp::iterkey_s($k), literal_subst(~$v<name>, "'", "''"), ~$v<line>, ~$v<file>)) ~ "');");
                }
                else {
                    nqp::sayfh($profile_fh, "INSERT INTO types VALUES ('" ~ nqp::join("','", nqp::list(nqp::iterkey_s($k), literal_subst(~$v, "'", "''"))) ~ "');");
                }
            }
            for $obj[1] -> $k {
                my $v := $obj[1]{$k};
                if $k eq 'total_time' {
                    @profile[0] := ~$v;
                }
                elsif $k eq 'spesh_time' {
                    @profile[1] := ~$v;
                }
                elsif $k eq 'gcs' {
                    for $v -> $gc {
                        my @g := nqp::list_s();
                        for <time retained_bytes promoted_bytes gen2_roots full cleared_bytes> -> $f {
                            nqp::push_s(@g, ~($gc{$f} // '0'));
                        }
                        nqp::sayfh($profile_fh, 'INSERT INTO gcs VALUES (' ~ nqp::join(',', @g) ~ ');');
                    }
                }
                elsif $k eq 'call_graph' {
                    my %callee_rec_depth;
                    sub collect_callees($caller, %call_graph) {
                        my @callee := nqp::list_s(~$caller);
                        for <id osr spesh_entries jit_entries inlined_entries inclusive_time exclusive_time entries deopt_one> -> $f {
                            nqp::push_s(@callee, ~(%call_graph{$f} // '0'));
                        }
                        my str $id := ~$caller;
                        %callee_rec_depth{$id} := 0 unless %callee_rec_depth{$id};
                        nqp::push_s(@callee, ~%callee_rec_depth{$id});
                        nqp::sayfh($profile_fh, 'INSERT INTO callees VALUES (' ~ nqp::join(',', @callee) ~ ');');
                        if %call_graph<allocations> {
                            for %call_graph<allocations> -> $a {
                                my @a := nqp::list_s();
                                for <id spesh jit count> -> $f {
                                    nqp::push_s(@a, ~($a{$f} // '0'));
                                }
                                nqp::sayfh($profile_fh, 'INSERT INTO allocations VALUES (' ~ nqp::join(',', @a) ~ ');');
                            }
                        }
                        if %call_graph<callees> {
                            %callee_rec_depth{$id}++;
                            for %call_graph<callees> -> $c {
                                collect_callees($id, $c);
                            }
                            %callee_rec_depth{$id}--;
                        }
                    }
                    collect_callees(-1, $v);
                }
            }
            nqp::sayfh($profile_fh, 'INSERT INTO profile VALUES (' ~ nqp::join(',', @profile) ~ ');');
        }

        # Post-process the call data, turning objects into flat data.
        for $data {
            post_process_call_graph_node($_<call_graph>);
        }

        nqp::unshift($data, $id_to_thing);

        if $want_json {
            to_json($data);
            nqp::printfh($profile_fh, nqp::join('', @pieces));
        }
        elsif $want_sql {
            nqp::sayfh($profile_fh, 'BEGIN;');
            nqp::sayfh($profile_fh, 'CREATE TABLE types(id INTEGER PRIMARY KEY ASC, name TEXT);');
            nqp::sayfh($profile_fh, 'CREATE TABLE routines(id INTEGER PRIMARY KEY ASC, name TEXT, line INT, file TEXT);');
            nqp::sayfh($profile_fh, 'CREATE TABLE profile(total_time INT, spesh_time INT);');
            nqp::sayfh($profile_fh, 'CREATE TABLE gcs(time INT, retained_bytes INT, promoted_bytes INT, gen2_roots INT, full INT, cleared_bytes INT);');
            nqp::sayfh($profile_fh, 'CREATE TABLE callees(caller_id INT, id INT, osr INT, spesh_entries INT, jit_entries INT, inlined_entries INT, inclusive_time INT, exclusive_time INT, entries INT, deopt_one INT, rec_depth INT);');
            nqp::sayfh($profile_fh, 'CREATE TABLE allocations(type_id INT, spesh INT, jit INT, count INT);');
            to_sql($data);
            nqp::sayfh($profile_fh, 'END;');
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

    method dump_heap_profile_data($data, $filename) {
        unless nqp::defined($filename) {
            $filename := 'heap-snapshot-' ~ nqp::time_n();
        }
        nqp::sayfh(nqp::getstderr(), "Writing heap snapshot to $filename");
        my $hs_fh := open($filename, :w);

        sub write_json($obj) {
            my $escaped_backslash := q{\\\\};
            my $escaped_dquote := q{\\"};
            my @pieces := nqp::list_s();
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
                    for sorted_keys($obj) {
                        if $first {
                            $first := 0;
                        }
                        else {
                            nqp::push_s(@pieces, ',');
                        }
                        nqp::push_s(@pieces, '"');
                        nqp::push_s(@pieces, $_);
                        nqp::push_s(@pieces, '":');
                        to_json($obj{$_});
                    }
                    nqp::push_s(@pieces, '}');
                }
                elsif nqp::isstr($obj) {
                    if nqp::index($obj, '\\') {
                        $obj := literal_subst($obj, '\\', $escaped_backslash);
                    }
                    if nqp::index($obj, '"') {
                        $obj := literal_subst($obj, '"', $escaped_dquote);
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
                    nqp::printfh($hs_fh, nqp::join('', @pieces));
                    nqp::setelems(@pieces, 0);
                }
            }
            to_json($obj);
            nqp::printfh($hs_fh, nqp::join('', @pieces));
        }

        nqp::printfh($hs_fh, 'strings: ');
        write_json($data<strings>);
        nqp::printfh($hs_fh, "\ntypes: ");
        nqp::printfh($hs_fh, $data<types>);
        nqp::printfh($hs_fh, "\nstatic_frames: ");
        nqp::printfh($hs_fh, $data<static_frames>);
        nqp::printfh($hs_fh, "\n\n");

        my int $i := 0;
        for $data<snapshots> {
            nqp::printfh($hs_fh, "snapshot $i\n");
            nqp::printfh($hs_fh, "collectables: " ~ $_<collectables> ~ "\n");
            nqp::printfh($hs_fh, "references: " ~ $_<references> ~ "\n");
            nqp::printfh($hs_fh, "\n");
            $i++;
        }

        nqp::closefh($hs_fh);
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
        nqp::getcomp('QAST').to_mast($qast, %adverbs<mast_frames> // nqp::hash());
    }

    method mbc($mast, *%adverbs) {
        my $assmblr := nqp::getcomp('MAST');
        if %adverbs<target> eq 'mbc' && %adverbs<output> {
            $assmblr.assemble_to_file($mast, %adverbs<output>);
            nqp::null()
        }
        else {
            my $boot_mode := %adverbs<bootstrap> ?? 1 !! 0;
            nqp::usecompileehllconfig() if $boot_mode;
            my $result := $assmblr.assemble_and_load($mast);
            nqp::usecompilerhllconfig() if $boot_mode;
            $result
        }
    }

    method moar($cu, *%adverbs) {
        $cu
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
    method default_backend() { HLL::Backend::MoarVM }
}
