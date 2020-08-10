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
    our $StringHeap;
    our $Callsites;

    our %moar_config := nqp::backendconfig();
    
    my sub read_ui32($fh, $buf?) {
        unless $buf { $buf := nqp::create($NQPBuf) }
        nqp::readfh($fh, $buf, 4);
        nqp::readuint($buf, 0, nqp::const::BINARY_SIZE_32_BIT);
    }
    my sub read_i16($fh, $buf?) {
        unless $buf { $buf := nqp::create($NQPBuf) }
        nqp::readfh($fh, $buf, 2);
        nqp::readint($buf, 0, nqp::const::BINARY_SIZE_16_BIT);
    }
    my sub read_confprog($path, $immediately_install = 0) {
        my $fh := nqp::open($path, "r");
        my int $pos := 0;
        my str $comparison := "MOARVMCONFPROGVER001";

        my $buf := nqp::readfh($fh, nqp::create($NQPBuf), nqp::chars($comparison));

        while $pos < nqp::chars($comparison) {
            if nqp::atpos_i($buf, $pos) != nqp::ordbaseat($comparison, $pos) {
                nqp::die("Malformed confprog file, expected magic cookie at the start");
            }
            $pos++;
        }

        my $decoder := NQPDecoder.new("utf8");

        my @stringheap := nqp::list_s();

        my int $stringcount := read_ui32($fh);
        $pos := 0;
        while $pos < $stringcount {
            my int $strlen := read_ui32($fh);
            if $strlen == 0 {
                nqp::push_s(@stringheap, "");
            }
            else {
                my $strbuf := nqp::readfh($fh, nqp::create($NQPBuf), $strlen);
                $decoder.add-bytes($strbuf);
                nqp::push_s(@stringheap, my $str := $decoder.consume-all-chars());
                unless $decoder.is-empty() {
                    nqp::die("left-over bytes after decoding { nqp::elems(@stringheap) }st string");
                }
            }
            $pos++;
        }

        my int $entrypointcount := read_ui32($fh);
        my @entrypoints := nqp::list_i();

        $pos := 0;
        while $pos < $entrypointcount {
            nqp::push_i(@entrypoints, read_i16($fh));
            $pos++;
        }

        my int $bytecodesize := read_ui32($fh);
        $buf := nqp::readfh($fh, $buf, $bytecodesize);

        if $immediately_install {
#?if stage2
            nqp::installconfprog($buf, @stringheap, @entrypoints);
#?endif
        }
        else {
            return nqp::hash(
                "bytecode", $buf,
                "strings", @stringheap,
                "entrypoints", @entrypoints
            );
        }
    }

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

    method confprog($confprog-filename, *%adverbs) {
        read_confprog($confprog-filename, 1);
    }

    method profiler_snapshot(:$kind, :$filename) {
        if $kind eq "heap" {
            nqp::mvmstartprofile(nqp::hash("kind", "heap", "path", $filename));
            return nqp::mvmendprofile();
        }
        else {
            nqp::die("MoarVM's profiler_snapshot only supports kind => 'heap', not $kind");
        }
    }

    my $prof_start_sub;
    my $prof_end_sub;
    method ensure_prof_routines() {
        unless $prof_start_sub {
            my %*COMPILING;
            self.start('');
            $prof_start_sub := self.compunit_mainline(self.mbc(self.mast(QAST::CompUnit.new(
                QAST::Block.new(
                    QAST::Op.new( :op('mvmstartprofile'),
                        QAST::Var.new( :name('config'), :scope('local'), :decl('param') ) )
                )))));
            self.start('');
            $prof_end_sub := self.compunit_mainline(self.mbc(self.mast(QAST::CompUnit.new(
                QAST::Block.new(
                    QAST::Op.new( :op('mvmendprofile') )
                )))));
        }
    }
    method run_profiled($what, $filename, $kind) {
        unless $kind {
            if $filename ~~ / \. [ 'html' | 'json' | 'sql' ] $ / {
                $kind := 'instrumented';
            } elsif $filename ~~ / '.mvmheap' $ / {
                $kind := 'heap';
            } else {
                $kind := 'instrumented';
            }
        }

        self.ensure_prof_routines();

        my $conf-hash;

        if $kind eq "heap" {
            unless $filename {
                $filename := 'heap-snapshot-' ~ nqp::time_n() ~ '.mvmheap';
            }
            $conf-hash := nqp::hash('kind', $kind, 'path', $filename);
        } else {
            unless $filename {
                $filename := 'profile-' ~ nqp::time_n() ~ '.html';
            }
            $conf-hash := nqp::hash('kind', $kind);
        }

        my @END := nqp::gethllsym('Raku', '@END_PHASERS');
        @END.push(-> { self.dump_profile_data($prof_end_sub(), $kind, $filename) })
            if nqp::defined(@END);

        $prof_start_sub($conf-hash);

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
        note("Writing profiler output to $filename");
        my $profile_fh;
        my $want_json  := nqp::eqat($filename, '.json', -5);
        my $want_sql   := nqp::eqat($filename, '.sql', -4);

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

        my int $new-id-counter := -1;
        my $id_remap    := nqp::hash();
        my $id_to_thing := nqp::hash();

        my %type-info   := nqp::hash();

        my int $node-id-counter := -1;

        sub get_remapped_type_id($id) {
            my str $newkey;

            if nqp::existskey($id_remap, $id) {
                $newkey := $id_remap{$id};
            } else {
                $newkey := ~(++$new-id-counter);
                $id_remap{$id} := $newkey;
            }

            unless nqp::existskey($id_to_thing, $newkey) {
                my $typename;
                my $scdesc;
                try {
                    my $type := %type-info{$id}[1]<type>;
                    $typename := $type.HOW.name($type);
                }
                unless $typename {
                    $typename := "<unknown type>";
                }
                try {
                    my $type := %type-info{$id}[1]<type>;
                    my $sc := nqp::getobjsc($type);
                    if $sc {
                        $scdesc := nqp::scgetdesc($sc);
                    }
                }
                unless $scdesc {
                    $scdesc := "";
                }
                %type-info{$id}[1]<typename> := $typename;
                %type-info{$id}[1]<scdesc> := $scdesc;
                $id_to_thing{$newkey} := $typename;
                unless nqp::existskey(%type-info, $newkey) {
                    nqp::bindkey(%type-info, $newkey, nqp::list());
                }
                %type-info{$newkey}[1] := %type-info{$id}[1];
            }

            $newkey;
        }

        sub post_process_call_graph_node($node) {
            my $this-node-id := ++$node-id-counter;
            try {
                if nqp::existskey($id_remap, $node<id>) {
                    $node<id> := $id_remap{$node<id>};
                } else {
                    my str $newkey := ~(++$new-id-counter);
                    $id_remap{$node<id>} := $newkey;
                    $node<id> := $newkey;
                }
                if nqp::existskey($node, "allocations") {
                    for $node<allocations> -> %alloc_info {
                        %alloc_info<id> := get_remapped_type_id(%alloc_info<id>);
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
            $node<highest_child_id> := $node-id-counter;
        }

        sub post_process_thread_data($thread) {
            unless nqp::existskey($thread, 'gcs') {
                return
            }
            for $thread<gcs> -> $gc {
                if nqp::existskey($gc, 'deallocs') {
                    for $gc<deallocs> -> $dealloc {
                        $dealloc<id> := get_remapped_type_id($dealloc<id>);
                    }
                }
            }
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
                $profile_fh.print(nqp::join('', @pieces));
                nqp::setelems(@pieces, 0);
            }
        }

        sub to_sql_json($obj, $pieces?) {
            my $will-return := !nqp::isconcrete($pieces);
            unless nqp::isconcrete($obj) {
                if $will-return {
                    return "null";
                }
                nqp::push_s($pieces, "null");
                return;
            }
            unless nqp::isconcrete($pieces) {
                $pieces := nqp::list_s;
            }
            if nqp::islist($obj) {
                nqp::push_s($pieces, 'json_array(');
                my int $first := 1;
                for $obj {
                    if $first {
                        $first := 0;
                    }
                    else {
                        nqp::push_s($pieces, ',');
                    }
                    to_sql_json($_, $pieces);
                }
                nqp::push_s($pieces, ')');
            }
            elsif nqp::ishash($obj) {
                nqp::push_s($pieces, 'json_object(');
                my int $first := 1;
                for sorted_keys($obj) {
                    if $first {
                        $first := 0;
                    }
                    else {
                        nqp::push_s($pieces, ',');
                    }
                    nqp::push_s($pieces, "'");
                    nqp::push_s($pieces, $_);
                    nqp::push_s($pieces, "', ");
                    to_sql_json($obj{$_}, $pieces);
                }
                nqp::push_s($pieces, ')');
            }
            elsif nqp::isstr($obj) {
                if nqp::index($obj, '\\') {
                    $obj := literal_subst($obj, '\\', '\\\\');
                }
                if nqp::index($obj, '"') {
                    $obj := literal_subst($obj, '"', '\\"');
                }
                if nqp::index($obj, "'") {
                    $obj := literal_subst($obj, "'", "\\'");
                }
                nqp::push_s($pieces, "'");
                nqp::push_s($pieces, $obj);
                nqp::push_s($pieces, "'");
            }
            elsif nqp::isint($obj) || nqp::isnum($obj) {
                nqp::push_s($pieces, ~$obj);
            }
            elsif nqp::can($obj, 'Str') {
                to_sql_json(nqp::unbox_s($obj.Str), $pieces);
            }
            else {
                nqp::push_s($pieces, 'null');
            }
            if $will-return {
                return nqp::join("", $pieces);
            }
        }

        sub to_sql($obj) {
            my int $node_id := 0;
            #my %profile := nqp::hash();
            my $mapping := nqp::shift($obj);
            my $pieces := nqp::list_s();
            my $empty-array := nqp::list_s();

            nqp::push_s($pieces, "INSERT INTO routines VALUES ('");

            my $is-first := 1;

            for $mapping -> $k {
                my $v := $mapping{$k};
                if nqp::ishash($v) {
                    if !$is-first {
                        nqp::push_s($pieces, ", ('");
                    }
                    else { $is-first := 0 }
                    nqp::push_s($pieces,
                        nqp::join("','",
                                  nqp::list(
                                      nqp::iterkey_s($k),
                                      literal_subst(~$v<name>, "'", "''"),
                                      ~$v<line>,
                                      ~$v<file>))
                                  ~ "')");
                }
                if nqp::elems($pieces) > 500 {
                    $profile_fh.print(nqp::join("", $pieces));
                    nqp::splice($pieces, $empty-array, 0, nqp::elems($pieces));
                }
            }
            nqp::push_s($pieces, ";\n");

            $is-first := 1;

            nqp::push_s($pieces, "INSERT INTO types VALUES ('");

            for $mapping -> $k {
                my $v := $mapping{$k};
                if !nqp::ishash($v) {
                    if !$is-first {
                        nqp::push_s($pieces, ", ('");
                    }
                    else { $is-first := 0 }
                    my $type-info := %type-info{nqp::iterkey_s($k)};
                    nqp::push_s($pieces,
                        nqp::join("','",
                            nqp::list_s(
                                $k,
                                literal_subst(~$v, "'", "''"),
                            ))
                        ~ "',"
                        ~ to_sql_json($type-info[1])
                        ~ ","
                        ~ "json_object()"
                        ~ ")");
                }
                if nqp::elems($pieces) > 500 {
                    $profile_fh.print(nqp::join("", $pieces));
                    nqp::splice($pieces, $empty-array, 0, nqp::elems($pieces));
                }
            }
            nqp::push_s($pieces, ";\n");

            for $obj -> $thread {
                my $thisprof := nqp::list;
                $thisprof[4] := "NULL";
                $thisprof[5] := ~$thread<start_time>;
                for $thread -> $k {
                    my $v := $thread{$k};
                    if $k eq 'total_time' {
                        $thisprof[0] := ~$v;
                    }
                    elsif $k eq 'spesh_time' {
                        $thisprof[1] := ~$v;
                    }
                    elsif $k eq 'thread' {
                        $thisprof[2] := ~$v;
                    }
                    elsif $k eq 'gcs' {
                        my str $thread_id := $thread<thread>;
                        if nqp::elems($v) > 0 {
                            nqp::push_s($pieces, "INSERT INTO gcs VALUES (");
                        }

                        my $any-deallocs := 0;

                        my $is-first := 1;

                        for $v -> $gc {
                            if !$is-first {
                                nqp::push_s($pieces, ", (");
                            }
                            else { $is-first := 0 }
                            my @g := nqp::list_s();
                            for <time retained_bytes promoted_bytes gen2_roots stolen_gen2_roots full responsible cleared_bytes start_time sequence> -> $f {
                                nqp::push_s(@g, ~($gc{$f} // '0'));
                            }
                            nqp::push_s(@g, $thread_id);
                            nqp::push_s($pieces, nqp::join(',', @g) ~ ")");

                            if $any-deallocs == 0 && nqp::existskey($gc, 'deallocs') {
                                $any-deallocs := 1
                            }
                        }
                        if nqp::elems($v) > 0 {
                            nqp::push_s($pieces, ";\n");
                        }

                        if $any-deallocs {
                            nqp::push_s($pieces, "INSERT INTO deallocations VALUES (");
                            $is-first := 1;

                            for $v -> $gc {
                                if nqp::existskey($gc, 'deallocs') {
                                    my @g;
                                    my $deallocs := $gc<deallocs>;

                                    for $deallocs -> $entry {
                                        if !$is-first {
                                            nqp::push_s($pieces, ", (");
                                        }
                                        else { $is-first := 0 }
                                        @g := nqp::list_s($gc<sequence>, $thread_id);
                                        for <id nursery_fresh nursery_seen gen2> -> $f {
                                            nqp::push_s(@g, ~($entry{$f} // '0'));
                                        }

                                        nqp::push_s($pieces, nqp::join(',', @g) ~ ')');
                                    }
                                }
                            }
                            nqp::push_s($pieces, ";\n");
                        }
                    }
                    elsif $k eq 'parent' {
                        $thisprof[3] := ~$v;
                    }
                    elsif $k eq 'call_graph' {
                        my $is_first := 1;

                        my %call_rec_depth;
                        $thisprof[4] := ~$node_id;

                        my $allocation_pieces := nqp::list_s;
                        nqp::push_s($allocation_pieces, 'INSERT INTO allocations VALUES (');

                        sub collect_calls(str $parent_id, %call_graph) {
                            my str $call_id := ~$node_id;
                            $node_id++;
                            my @call := nqp::list_s($call_id, $parent_id);
                            for <id osr spesh_entries jit_entries inlined_entries inclusive_time exclusive_time entries deopt_one deopt_all> -> $f {
                                nqp::push_s(@call, ~(%call_graph{$f} // '0'));
                            }
                            if $is_first {
                                $is_first := 0;
                                nqp::push_s($pieces, 'INSERT INTO calls VALUES ');
                            }
                            else {
                                nqp::push_s($pieces, "), ");
                            }
                            my str $routine_id := ~%call_graph<id>;
                            %call_rec_depth{$routine_id} := 0 unless %call_rec_depth{$routine_id};
                            nqp::push_s(@call, ~%call_rec_depth{$routine_id});
                            nqp::push_s(@call, ~%call_graph<first_entry_time>);
                            nqp::push_s(@call, ~%call_graph<highest_child_id>);
                            nqp::push_s($pieces, "(" ~ nqp::join(',', @call));
                            if %call_graph<allocations> {
                                for %call_graph<allocations> -> $a {
                                    my @a := nqp::list_s($call_id);
                                    for <id spesh jit count replaced> -> $f {
                                        nqp::push_s(@a, ~($a{$f} // '0'));
                                    }
                                    if nqp::elems($allocation_pieces) > 1 {
                                        nqp::push_s($allocation_pieces, ", (");
                                    }
                                    nqp::push_s($allocation_pieces, nqp::join(',', @a) ~ ")");
                                }
                            }
                            if %call_graph<callees> {
                                %call_rec_depth{$routine_id}++;
                                for %call_graph<callees> -> $c {
                                    collect_calls(~$call_id, $c);
                                }
                                %call_rec_depth{$routine_id}--;
                            }
                            if nqp::elems($pieces) > 500 {
                                $profile_fh.print(nqp::join("", $pieces));
                                nqp::splice($pieces, $empty-array, 0, nqp::elems($pieces));
                                nqp::push_s($pieces, ");\n");
                                $is_first := 1;
                            }
                        }
                        collect_calls(~$node_id, $v);
                        if $is_first == 0 { # there are actual records we have to close
                            nqp::push_s($pieces, ");\n");
                        }
                        if nqp::elems($allocation_pieces) > 1 {
                            nqp::push_s($pieces, nqp::join('', $allocation_pieces) ~ ";\n");
                        }
                    }
                }
                nqp::push_s($pieces, 'INSERT INTO profile VALUES (');
                nqp::push_s($pieces, nqp::join(',', $thisprof) ~ ");\n");
                if nqp::elems($pieces) > 500 {
                    $profile_fh.print(nqp::join("", $pieces));
                    nqp::splice($pieces, $empty-array, 0, nqp::elems($pieces));
                }
            }
            $profile_fh.print(nqp::join("", $pieces));
            nqp::splice($pieces, $empty-array, 0, nqp::elems($pieces));
        }

        # The actual first entry in the profile data is an array that
        # stores type information as a list of hashes with a "key"
        # key.

        {
            my @type-infos := nqp::shift($data);
            for @type-infos {
                %type-info{$_[0]} := $_
            }
        }

        # Post-process the call data, turning objects into flat data.
        for $data {
            if nqp::existskey($_, "call_graph") {
                post_process_call_graph_node($_<call_graph>);
            }
            # Also make sure every gc entry has its deallocation types
            # remapped to the "new" (shorter) type IDs
            post_process_thread_data($_);
        }

        # The data array is normally a list of threads, but the first entry is
        # actually our mapping for filenames and type names and such.
        nqp::unshift($data, $id_to_thing);

        # First make sure the template file exists if we want html
        # if it doesn't exist, just spit out json instead.
        my str $template;

        if !$want_json && !$want_sql {
            my $temppath := nqp::gethllsym('default', 'SysConfig').nqp-home() ~ '/lib/profiler/template.html';
            $template := try slurp('src/vm/moar/profiler/template.html');
            unless $template {
                $template := try slurp($temppath);
            }
            unless $template {
                note("Could not locate profiler/template.html; should have been at $temppath; outputting sql data instead");
                $want_sql := 1;
                $filename := literal_subst($filename, ".html", ".sql");
                unless nqp::eqat($filename, '.sql', -4) {
                    $filename := $filename ~ '.sql';
                }
                note("Writing profiler output to $filename");
            }
        }

        $profile_fh := open($filename, :w);

        if $want_json {
            to_json($data);
            $profile_fh.print(nqp::join('', @pieces));
        }
        elsif $want_sql {
            $profile_fh.say('BEGIN;');
            $profile_fh.say('CREATE TABLE types(id INTEGER PRIMARY KEY ASC, name TEXT, extra_info JSON, type_links JSON);');
            $profile_fh.say('CREATE TABLE routines(id INTEGER PRIMARY KEY ASC, name TEXT, line INT, file TEXT);');
            $profile_fh.say('CREATE TABLE gcs(time INT, retained_bytes INT, promoted_bytes INT, gen2_roots INT, stolen_gen2_roots INT, full INT, responsible INT, cleared_bytes INT, start_time INT, sequence_num INT, thread_id INT, PRIMARY KEY(sequence_num, thread_id));');
            $profile_fh.say('CREATE TABLE calls(id INTEGER PRIMARY KEY ASC, parent_id INT, routine_id INT, osr INT, spesh_entries INT, jit_entries INT, inlined_entries INT, inclusive_time INT, exclusive_time INT, entries INT, deopt_one INT, deopt_all INT, rec_depth INT, first_entry_time INT, highest_child_id INT, FOREIGN KEY(routine_id) REFERENCES routines(id));');
            $profile_fh.say('CREATE TABLE profile(total_time INT, spesh_time INT, thread_id INT, parent_thread_id INT, root_node INT, first_entry_time INT, FOREIGN KEY(root_node) REFERENCES calls(id));');
            $profile_fh.say('CREATE TABLE allocations(call_id INT, type_id INT, spesh INT, jit INT, count INT, replaced INT, PRIMARY KEY(call_id, type_id), FOREIGN KEY(call_id) REFERENCES calls(id), FOREIGN KEY(type_id) REFERENCES types(id));');
            $profile_fh.say('CREATE TABLE deallocations(gc_seq_num INT, gc_thread_id INT, type_id INT, nursery_fresh INT, nursery_seen INT, gen2 INT, PRIMARY KEY(gc_seq_num, gc_thread_id, type_id), FOREIGN KEY(gc_seq_num, gc_thread_id) REFERENCES gcs(sequence_num, thread_id), FOREIGN KEY(type_id) REFERENCES types(id));');
            to_sql($data);
            $profile_fh.say('END;');
        }
        else {
            # Get profiler template, split it in half, and write those either
            # side of the JSON itself.
            my @tpl_pieces := nqp::split('{{{PROFILER_OUTPUT}}}', $template);

            $profile_fh.print(@tpl_pieces[0]);
            to_json($data);
            $profile_fh.print(nqp::join('', @pieces));
            $profile_fh.print(@tpl_pieces[1]);
        }
        $profile_fh.close;
    }

    method dump_heap_profile_data($data, $filename) {
        note("Heap snapshot written to $filename");
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

    method start($source, *%adverbs) {
        if nqp::existskey(%*COMPILING, 'moar') {
            nqp::push(%*COMPILING<moar><frames>, nqp::list);
        }
        else {
            %*COMPILING<moar> := my %moar := nqp::hash;
            %moar<mast_frames> := nqp::hash;
            %moar<sc_handles>  := nqp::list;
            %moar<sc_lookup>   := nqp::hash;
            %moar<string-heap> := $StringHeap.new;
            %moar<callsites>   := $Callsites.new(:string-heap(%moar<string-heap>));
            %moar<extop_sigs>  := nqp::list;
            %moar<extop_names> := nqp::list;
            %moar<extop_idx>   := nqp::hash;
            %moar<frames>      := [ nqp::list ];
        }
        $source
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
