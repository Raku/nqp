# Per-compilation instance of the MAST compiler, holding state and driving the
# compilation.

my class MASTCompilerInstance {
    # The HLL that we're compiling.
    has $!hll;

    # The MAST compilation unit we're compiling it into.
    has $!mast_compunit;

    # MAST frames lookup hash.
    has %!mast_frames;

    # The filename we're compiling.
    has $!file;

    # The serialization context of the code we're compiling, if we have one.
    has $!sc;

    # The most recent op we tried to compile, for error reporting.
    has $!last_op;

    # This uses a very simple scheme. Write registers are assumed
    # to be write-once, read-once.  Therefore, if a QAST control
    # structure wants to reuse the intermediate result of an
    # expression, it must `set` the result to other registers before
    # using the result as an arg to another op.
    my class RegAlloc {
        has $!frame;
        has @!objs;
        has @!int64s;
        has @!int32s;
        has @!int16s;
        has @!int8s;
        has @!num64s;
        has @!num32s;
        has @!strs;
        has @!uint64s;
        has @!uint32s;
        has @!uint16s;
        has @!uint8s;
        has %!released_indexes;

        method new($frame) {
            my $obj := nqp::create(self);
            nqp::bindattr($obj, RegAlloc, '$!frame', $frame);
            nqp::bindattr($obj, RegAlloc, '@!objs', []);
            nqp::bindattr($obj, RegAlloc, '@!int64s', []);
            nqp::bindattr($obj, RegAlloc, '@!int32s', []);
            nqp::bindattr($obj, RegAlloc, '@!int16s', []);
            nqp::bindattr($obj, RegAlloc, '@!int8s', []);
            nqp::bindattr($obj, RegAlloc, '@!num64s', []);
            nqp::bindattr($obj, RegAlloc, '@!num32s', []);
            nqp::bindattr($obj, RegAlloc, '@!strs', []);
            nqp::bindattr($obj, RegAlloc, '@!uint64s', []);
            nqp::bindattr($obj, RegAlloc, '@!uint32s', []);
            nqp::bindattr($obj, RegAlloc, '@!uint16s', []);
            nqp::bindattr($obj, RegAlloc, '@!uint8s', []);
            nqp::bindattr($obj, RegAlloc, '%!released_indexes', {});
            $obj
        }

        method fresh_i() { self.fresh_register($MVM_reg_int64) }
        method fresh_n() { self.fresh_register($MVM_reg_num64) }
        method fresh_s() { self.fresh_register($MVM_reg_str) }
        method fresh_o() { self.fresh_register($MVM_reg_obj) }

        # QAST::Vars need entirely new MAST::Locals all to themselves,
        # so a Local can't be a non-Var for the first half of a block and
        # then a Var the second half, but then control returns to the first half
        method fresh_register($kind, $new = 0) {
            my @arr; my $type;
            # set $new to 1 here if you suspect a problem with the allocator,
            # or if you suspect a register is being double-released somewhere.
            # $new := 1;
               if $kind == $MVM_reg_int64  { @arr := @!int64s; $type := int }
            elsif $kind == $MVM_reg_num64  { @arr := @!num64s; $type := num }
            elsif $kind == $MVM_reg_str    { @arr := @!strs; $type := str }
            elsif $kind == $MVM_reg_obj    { @arr := @!objs; $type := NQPMu }
            elsif $kind == $MVM_reg_int32  { @arr := @!int32s; $type := int32 }
            elsif $kind == $MVM_reg_int16  { @arr := @!int16s; $type := int16 }
            elsif $kind == $MVM_reg_int8   { @arr := @!int8s; $type := int8 }
            elsif $kind == $MVM_reg_num32  { @arr := @!num32s; $type := num32 }
            elsif $kind == $MVM_reg_uint64 { @arr := @!uint64s; $type := uint64 }
            elsif $kind == $MVM_reg_uint32 { @arr := @!uint32s; $type := uint32 }
            elsif $kind == $MVM_reg_uint16 { @arr := @!uint16s; $type := uint16 }
            elsif $kind == $MVM_reg_uint8  { @arr := @!uint8s; $type := uint8 }
            else { nqp::die("Unhandled reg kind $kind") }

            my $reg;
            if nqp::elems(@arr) && !$new {
                $reg := nqp::pop(@arr);
                nqp::deletekey(%!released_indexes, $reg.index);
            }
            else {
                $reg := MAST::Local.new(:index($!frame.add_local($type)));
            }
            $reg
        }

        method release_i($reg) { self.release_register($reg, $MVM_reg_int64) }
        method release_n($reg) { self.release_register($reg, $MVM_reg_num64) }
        method release_s($reg) { self.release_register($reg, $MVM_reg_str) }
        method release_o($reg) { self.release_register($reg, $MVM_reg_obj) }

        method release_register($reg, int $kind, int $force = 0) {
            return 1 if $kind == $MVM_reg_void || !$force && $*BLOCK.is_var($reg)
                || nqp::existskey(%!released_indexes, $reg.index);
            %!released_indexes{$reg.index} := 1;
            return nqp::push(@!int64s, $reg) if $kind == $MVM_reg_int64;
            return nqp::push(@!num64s, $reg) if $kind == $MVM_reg_num64;
            return nqp::push(@!strs, $reg) if $kind == $MVM_reg_str;
            return nqp::push(@!objs, $reg) if $kind == $MVM_reg_obj;
            return nqp::push(@!int32s, $reg) if $kind == $MVM_reg_int32;
            return nqp::push(@!int16s, $reg) if $kind == $MVM_reg_int16;
            return nqp::push(@!int8s, $reg) if $kind == $MVM_reg_int8;
            return nqp::push(@!num32s, $reg) if $kind == $MVM_reg_num32;
            return nqp::push(@!uint64s, $reg) if $kind == $MVM_reg_uint64;
            return nqp::push(@!uint32s, $reg) if $kind == $MVM_reg_uint32;
            return nqp::push(@!uint16s, $reg) if $kind == $MVM_reg_uint16;
            return nqp::push(@!uint8s, $reg) if $kind == $MVM_reg_uint8;
            nqp::die("Unhandled reg kind $kind");
        }
    }

    # Holds information about the QAST::Block we're currently compiling.
    my class BlockInfo {
        has $!qast;                 # The QAST::Block
        has $!outer;                # Outer block's BlockInfo
        has %!local_names_by_index; # Locals' names by their indexes
        has %!locals;               # Mapping of local names to locals
        has %!local_kinds;          # Mapping of local registers to kinds
        has %!lexicals;             # Mapping of lexical names to lexicals
        has %!lexical_kinds;        # Mapping of lexical names to kinds
        has %!lexical_params;       # Mapping of lexical param names to their initial result reg
        has %!lexicalrefs;          # Mapping of lexical reference names to lexicals
        has %!lexicalref_kinds;     # Mapping of lexical reference names to kinds
        has int $!param_idx;        # Current lexical parameter index
        has $!compiler;             # The QAST::MASTCompiler
        has @!params;               # List of QAST::Var param nodes
        has $!return_kind;          # Kind of return, tracked while emitting
        has @!captured_inners;      # List of CUIDs of blocks we statically capture
        has %!cloned_inners;        # Mapping of CUIDs of blocks we clone to register with the clone
        has @!contvar_locals;       # Locals with a contvar that needs allocating.

        method new($qast, $outer, $compiler) {
            my $obj := nqp::create(self);
            $obj.BUILD($qast, $outer, $compiler);
            $obj
        }

        method BUILD($qast, $outer, $compiler) {
            $!qast := $qast;
            $!outer := $outer;
            $!compiler := $compiler;
            %!local_names_by_index := nqp::hash();
            %!locals := nqp::hash();
            %!local_kinds := nqp::hash();
            %!lexicals := nqp::hash();
            %!lexical_kinds := nqp::hash();
            %!lexical_params := nqp::hash();
            %!lexicalrefs := nqp::hash();
            %!lexicalref_kinds := nqp::hash();
            @!params := nqp::list();
            @!captured_inners := nqp::list();
            %!cloned_inners := nqp::hash();
            @!contvar_locals := nqp::list();
        }

        method add_param($var) {
            @!params[+@!params] := $var;
            if $var.scope eq 'local' {
                self.register_local($var);
            }
            else {
                my $res_kind := self.add_lexical($var);
                my $res_reg := $*REGALLOC.fresh_register($res_kind);
                %!lexical_params{$var.name} := $res_reg;
                [$res_kind, $res_reg]
            }
        }

        method add_lexical($var, :$is_static, :$is_cont, :$is_state) {
            my $mf    := $*MAST_FRAME;
            my $type  := $var.returns;
            my $kind  := $!compiler.type_to_register_kind($type);
            my $index := $mf.add_lexical($type, $var.name);
            self.register_lexical($var.name, $index, $kind);
            if $is_static || $is_cont || $is_state {
                my int $flags := $is_static ?? 0 !!
                                 $is_cont   ?? 1 !! 2;
                my $val       := $var.value;
                my $sc        := nqp::getobjsc($val);
                if nqp::isnull($sc) {
                    nqp::die("Object of type " ~ $val.HOW.name($val) ~
                        " in QAST::Var value, but not in SC");
                }
                my int $idx    := nqp::scgetobjidx($sc, $val);
                my int $sc_idx := $!compiler.mast_compunit.sc_idx($sc);
                $mf.add_static_lex_value($index, $flags, $sc_idx, $idx);
            }
            $kind;
        }

        method register_lexical(str $name, $index, $kind) {
            if nqp::existskey(%!lexicals, $name) || nqp::existskey(%!lexicalrefs, $name) {
                nqp::die("Lexical '$name' already declared");
            }
            my $lex := MAST::Lexical.new( :index($index), :frames_out(0) );
            %!lexicals{$name} := $lex;
            %!lexical_kinds{$name} := $kind;
            $lex;
        }

        method add_lexicalref($var) {
            my $mf   := $*MAST_FRAME;
            my $type := $var.returns;
            my $kind := $!compiler.type_to_register_kind($type);
            unless nqp::objprimspec($type) {
                nqp::die("lexicalref declaration must have a native type");
            }
            my $index := $mf.add_lexical(NQPMu, $var.name);
            self.register_lexicalref($var.name, $index, $kind);
            $MVM_reg_obj
        }

        method register_lexicalref(str $name, $index, $kind) {
            if nqp::existskey(%!lexicals, $name) || nqp::existskey(%!lexicalrefs, $name) {
                nqp::die("Lexical '$name' already declared");
            }
            my $lex := MAST::Lexical.new( :index($index), :frames_out(0) );
            %!lexicalrefs{$name} := $lex;
            %!lexicalref_kinds{$name} := $kind;
            $lex;
        }

        method register_local($var, :$is_cont) {
            my $name := $var.name;
            my $temporary := ?$*INSTMT;
            if nqp::existskey(%!locals, $name) ||
                    $temporary && nqp::existskey(%*STMTTEMPS, $name) {
                nqp::die("Local '$name' already declared");
            }
            my $kind := $!compiler.type_to_register_kind($var.returns);
            %!local_kinds{$name} := $kind;
            # pass a 1 meaning get a Totally New MAST::Local
            my $local := $*REGALLOC.fresh_register($kind, !$temporary);
            %!locals{$name} := $local;
            %!local_names_by_index{$local.index} := $name;
            if $temporary {
                %*STMTTEMPS{$name} := $local;
            }
            if $is_cont {
                nqp::push(@!contvar_locals, $var);
            }
            $local;
        }

        # returns whether a MAST::Local is a variable in this block
        method is_var($local) {
            nqp::existskey(%!local_names_by_index, $local.index)
        }

        method return_kind(*@value) {
            if @value {
                nqp::die("Inconsistent immediate block return type")
                    if ($!qast.blocktype eq 'immediate' || $!qast.blocktype eq 'immediate_static') &&
                        nqp::defined($!return_kind) && @value[0] != $!return_kind;
                $!return_kind := @value[0];
            }
            $!return_kind
        }

        method release_temp($name) {
            my $local := %!locals{$name};
            my $index := $local.index();
            my $kind := %!local_kinds{$name};
            $*REGALLOC.release_register($local, $kind, 1);
            nqp::deletekey(%!local_names_by_index, $index);
            nqp::deletekey(%!locals, $name);
            nqp::deletekey(%!local_kinds, $name);
        }

        method qast() { $!qast }
        method outer() { $!outer }
        method lexical($name) { %!lexicals{$name} }
        method lexicals() { %!lexicals }
        method lexicalref($name) { %!lexicalrefs{$name} }
        method lexicalrefs() { %!lexicalrefs }
        method local($name) { %!locals{$name} }
        method local_kind($name) { %!local_kinds{$name} }
        method lexical_kind($name) { %!lexical_kinds{$name} }
        method lexical_kinds() { %!lexical_kinds }
        method lexicalref_kind($name) { %!lexicalref_kinds{$name} }
        method lexicalref_kinds() { %!lexicalref_kinds }
        method params() { @!params }
        method lexical_param($name) { %!lexical_params{$name} }

        method resolve_lexical($name) {
            my $block := self;
            my $out := 0;
            while $block {
                my $lex := ($block.lexicals()){$name};
                return MAST::Lexical.new( :index($lex.index), :frames_out($out) ) if $lex;
                $out++;
                $block := $block.outer;
            }
            nqp::die("Could not resolve lexical $name");
        }

        method capture_inner($block) {
            nqp::push(@!captured_inners, $block.cuid)
        }
        method clone_inner($block) {
            my $cuid    := $block.cuid;
            my $already := %!cloned_inners{$cuid};
            if $already {
                $already
            }
            else {
                my $reg  := $*REGALLOC.fresh_register($MVM_reg_obj, 1);
                %!cloned_inners{$cuid} := $reg;
                %!local_names_by_index{$reg.index} := $cuid;
                $reg
            }
        }
        method captured_inners() { @!captured_inners }
        method cloned_inners() { %!cloned_inners }

        method contvar_locals() { @!contvar_locals }
    }

    method source_for_node($node) {
        my $source := $node.node
                        ?? ~ nqp::escape($node.node.Str)
                        !! '';
        if nqp::chars($source) > 103 {
            $source := nqp::substr($source, 0, 100) ~ '...';
        }
        if nqp::chars($source) {
            $source := qq[ (source text: "$source")];
        }
        $source;
    }

    my int $serno := 0;
    method unique($prefix = '') { $prefix ~ $serno++ }

    method mast_compunit() { $!mast_compunit }
    method mast_frames() { %!mast_frames }
    method sc() { $!sc }

    method to_mast($qast, %mast_frames = nqp::hash()) {
        # Set up compilation state.
        $!hll := '';
        $!mast_compunit := MAST::CompUnit.new();
        %!mast_frames := %mast_frames;
        $!file := nqp::ifnull(nqp::getlexdyn('$?FILES'), "<unknown file>");
        $!sc := NQPMu;

        # Compile, and evaluate to compilation unit.
        self.as_mast($qast);
        #CATCH {
        #    my $err    := $!;
        #    my $source := self.source_for_node($!last_op);
        #    nqp::die("QAST -> MAST failed while compiling op " ~ $!last_op.op ~ "$source: $err");
        #}

        $!mast_compunit
    }

    method coerce($res, $desired) {
        my $got := $res.result_kind;
        if $got != $desired {
            $res.append(self.coercion($res, $desired));
        }
        $res
    }

    # Expects that the value in need of coercing has already been
    # obtained. Produces instructions to coerce it.
    method coercion($res, $desired) {
        my $il := nqp::list();
        my $got := $res.result_kind;
        my $reg := $res.result_reg;
        if $got == $desired {
            # Nothing to do.
        }
        elsif $desired == $MVM_reg_void {
            $reg := MAST::VOID;
        }
        elsif $desired == $MVM_reg_obj {
            # See if we already have full-width native.
            if $got == $MVM_reg_int64 || $got == $MVM_reg_num64 ||
                    $got == $MVM_reg_str || $got == $MVM_reg_void ||
                    $got == $MVM_reg_uint64 {
                return QAST::MASTOperations.box(self, $!hll, $got, $reg);
            }
            elsif $got == $MVM_reg_num32 {
                my $grow := self.coercion($res, $MVM_reg_num64);
                my $box := QAST::MASTOperations.box(self, $!hll, $MVM_reg_num64,
                    $grow.result_reg);
                $il := $grow.instructions;
                push_ilist($il, $box);
                $reg := $box.result_reg;
            }
            elsif $got == $MVM_reg_int32 || $got == $MVM_reg_int16 || $got == $MVM_reg_int8 {
                my $grow := self.coercion($res, $MVM_reg_int64);
                my $box := QAST::MASTOperations.box(self, $!hll, $MVM_reg_int64,
                    $grow.result_reg);
                $il := $grow.instructions;
                push_ilist($il, $box);
                $reg := $box.result_reg;
            }
            elsif $got == $MVM_reg_uint32 || $got == $MVM_reg_uint16 || $got == $MVM_reg_uint8 {
                my $grow := self.coercion($res, $MVM_reg_uint64);
                my $box := QAST::MASTOperations.box(self, $!hll, $MVM_reg_uint64,
                    $grow.result_reg);
                $il := $grow.instructions;
                push_ilist($il, $box);
                $reg := $box.result_reg;
            }
            else {
                nqp::die("Unknown boxing case; got: " ~ $got);
            }
        }
        elsif $got == $MVM_reg_obj {
            # See if we want a full-width native.
            if $desired == $MVM_reg_int64 || $desired == $MVM_reg_num64 ||
                    $desired == $MVM_reg_str || $desired == $MVM_reg_uint64 {
                return QAST::MASTOperations.unbox(self, $!hll, $desired, $reg);
            }
            elsif $desired == $MVM_reg_num32 {
                my $unbox := QAST::MASTOperations.unbox(self, $!hll, $MVM_reg_num64, $reg);
                my $shrink := self.coercion($unbox, $desired);
                $il := $unbox.instructions;
                push_ilist($il, $shrink);
                $reg := $shrink.result_reg;
            }
            elsif $desired == $MVM_reg_int32 || $desired == $MVM_reg_int16 || $desired == $MVM_reg_int8 {
                my $unbox := QAST::MASTOperations.unbox(self, $!hll, $MVM_reg_int64, $reg);
                my $shrink := self.coercion($unbox, $desired);
                $il := $unbox.instructions;
                push_ilist($il, $shrink);
                $reg := $shrink.result_reg;
            }
            elsif $desired == $MVM_reg_uint32 || $desired == $MVM_reg_uint16 || $desired == $MVM_reg_uint8 {
                my $unbox := QAST::MASTOperations.unbox(self, $!hll, $MVM_reg_uint64, $reg);
                my $shrink := self.coercion($unbox, $desired);
                $il := $unbox.instructions;
                push_ilist($il, $shrink);
                $reg := $shrink.result_reg;
            }
            else {
                nqp::die("Unknown unboxing case; desired: " ~ $desired);
            }
        }
        else {
            my $res_reg := $*REGALLOC.fresh_register($desired);
            my $release_type := $got;
            if $desired == $MVM_reg_int64 {
                if $got == $MVM_reg_num64 {
                    push_op($il, 'coerce_ni', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_str {
                    push_op($il, 'coerce_si', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_void {
                    push_op($il, 'const_i64', $res_reg, MAST::IVal.new( :value(0) ));
                }
                elsif $got == $MVM_reg_int32 {
                    push_op($il, 'extend_i32', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_int16 {
                    push_op($il, 'extend_i16', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_int8 {
                    push_op($il, 'extend_i8', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_uint64 {
                    push_op($il, 'coerce_ui', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_uint32 || $got == $MVM_reg_uint16 || $got == $MVM_reg_uint8 {
                    my $uint64 := self.coercion($res, $MVM_reg_uint64);
                    $il := $uint64.instructions;
                    $reg := $uint64.result_reg;
                    $release_type := $uint64.result_kind;
                    push_op($il, 'coerce_ui', $res_reg, $reg);
                }
                else {
                    nqp::die("Unknown coercion case for int; got: "~$got);
                }
            }
            elsif $desired == $MVM_reg_num64 {
                if $got == $MVM_reg_int64 {
                    push_op($il, 'coerce_in', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_str {
                    push_op($il, 'coerce_sn', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_num32 {
                    push_op($il, 'extend_n32', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_void {
                    push_op($il, 'const_n64', $res_reg, MAST::NVal.new( :value(0) ));
                }
                elsif $got == $MVM_reg_int32 || $got == $MVM_reg_int16 || $got == $MVM_reg_int8 || $got == $MVM_reg_uint32 || $got == $MVM_reg_uint16 || $got == $MVM_reg_uint8 {
                    my $int64 := self.coercion($res, $MVM_reg_int64);
                    $il := $int64.instructions;
                    $reg := $int64.result_reg;
                    $release_type := $int64.result_kind;
                    push_op($il, 'coerce_in', $res_reg, $reg);
                }
                else {
                    nqp::die("Unknown coercion case for num; got: "~$got);
                }
            }
            elsif $desired == $MVM_reg_str {
                if $got == $MVM_reg_int64 {
                    push_op($il, 'coerce_is', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_int32 {
                    my $int64 := self.coercion($res, $MVM_reg_int64);
                    $il := $int64.instructions;
                    $reg := $int64.result_reg;
                    $release_type := $int64.result_kind;
                    push_op($il, 'coerce_is', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_num64 {
                    push_op($il, 'coerce_ns', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_void {
                    push_op($il, 'const_s', $res_reg, MAST::SVal.new( :value('') ));
                }
                elsif $got == $MVM_reg_uint64 {
                    push_op($il, 'coerce_us', $res_reg, $reg);
                }
                else {
                    nqp::die("Unknown coercion case for str; got: "~$got);
                }
            }
            elsif $desired == $MVM_reg_num32 {
                if $got == $MVM_reg_num64 {
                    push_op($il, 'trunc_n32', $res_reg, $reg);
                }
                else {
                    nqp::die("Unknown coercion case for num32; got: "~$got);
                }
            }
            elsif $desired == $MVM_reg_int32 {
                if $got == $MVM_reg_int64 {
                    push_op($il, 'trunc_i32', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_num64 {
                    my $int64 := self.coercion($res, $MVM_reg_int64);
                    $il := $int64.instructions;
                    $reg := $int64.result_reg;
                    $release_type := $int64.result_kind;
                    push_op($il, 'trunc_i32', $res_reg, $reg);
                }
                else {
                    nqp::die("Unknown coercion case for int32; got: " ~ $got);
                }
            }
            elsif $desired == $MVM_reg_int16 {
                if $got == $MVM_reg_int64 {
                    push_op($il, 'trunc_i16', $res_reg, $reg);
                }
                else {
                    nqp::die("Unknown coercion case for int16; got: " ~ $got);
                }
            }
            elsif $desired == $MVM_reg_int8 {
                if $got == $MVM_reg_int64 {
                    push_op($il, 'trunc_i8', $res_reg, $reg);
                }
                else {
                    nqp::die("Unknown coercion case for int8; got: " ~ $got);
                }
            }
            elsif $desired == $MVM_reg_uint64 {
                if $got == $MVM_reg_uint32 {
                    push_op($il, 'extend_u32', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_uint16 {
                    push_op($il, 'extend_u16', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_uint8 {
                    push_op($il, 'extend_u8', $res_reg, $reg);
                }
                else {
                    unless $got == $MVM_reg_int64 {
                        my $int64 := self.coercion($res, $MVM_reg_int64);
                        $il := $int64.instructions;
                        $reg := $int64.result_reg;
                        $release_type := $int64.result_kind;
                    }
                    push_op($il, 'coerce_iu', $res_reg, $reg);
                }
            }
            elsif $desired == $MVM_reg_uint32 {
                unless $got == $MVM_reg_uint64 {
                    my $uint64 := self.coercion($res, $MVM_reg_uint64);
                    $il := $uint64.instructions;
                    $reg := $uint64.result_reg;
                    $release_type := $uint64.result_kind;
                }
                push_op($il, 'trunc_u32', $res_reg, $reg);
            }
            elsif $desired == $MVM_reg_uint16 {
                unless $got == $MVM_reg_uint64 {
                    my $uint64 := self.coercion($res, $MVM_reg_uint64);
                    $il := $uint64.instructions;
                    $reg := $uint64.result_reg;
                    $release_type := $uint64.result_kind;
                }
                push_op($il, 'trunc_u16', $res_reg, $reg);
            }
            elsif $desired == $MVM_reg_uint8 {
                unless $got == $MVM_reg_uint64 {
                    my $uint64 := self.coercion($res, $MVM_reg_uint64);
                    $il := $uint64.instructions;
                    $reg := $uint64.result_reg;
                    $release_type := $uint64.result_kind;
                }
                push_op($il, 'trunc_u8', $res_reg, $reg);
            }
            else {
                nqp::die("Coercion from type '$got' to '$desired' NYI");
            }
            $*REGALLOC.release_register($reg, $release_type);
            $reg := $res_reg;
        }
        MAST::InstructionList.new($il, $reg, $desired)
    }

    method as_mast($qast, :$want, :$want-decont) {
        my $*WANT;
        my $*WANT-DECONT := $want-decont;
        if nqp::defined($want) {
            $*WANT := $want;
            if nqp::istype($qast, QAST::Want) {
                self.coerce(self.compile_node(want($qast, $want), :$want), $want)
            }
            else {
                self.coerce(self.compile_node($qast, :$want), $want)
            }
        }
        else {
            self.compile_node($qast)
        }
    }

    sub want($node, $type) {
        my @possibles := $node.list;
        my $best      := nqp::atpos(@possibles, 0);
        if $type != $MVM_reg_obj {
            my $char := $type == $MVM_reg_void  ?? 'v' !!
                        $type == $MVM_reg_int64 ?? 'I' !!
                        $type == $MVM_reg_num64 ?? 'N' !!
                        $type == $MVM_reg_str   ?? 'S' !!
                                                   'X';
            my int $i := 1;
            my int $n := nqp::elems(@possibles);
            while $i < $n {
                if nqp::index(nqp::atpos(@possibles, $i), $char) >= 0 {
                    $best := nqp::atpos(@possibles, $i + 1);
                    last;
                }
                $i := $i + 2;
            }
        }
        $best
    }

    my @return_opnames := [
        'return',
        'return_i',
        'return_i',
        'return_i',
        'return_i',
        'return_n',
        'return_n',
        'return_s',
        'return_o'
    ];

    my @type_initials := [
        '', 'i', 'i', 'i', 'i', 'n', 'n', 's', 'o'
    ];

    my @attr_opnames := [
        '',
        'attr_i',
        'attr_i',
        'attr_i',
        'attr_i',
        'attr_n',
        'attr_n',
        'attr_s',
        'attr_o'
    ];

    my @attrref_opnames := [
        '',
        'getattrref_i',
        'getattrref_i',
        'getattrref_i',
        'getattrref_i',
        'getattrref_n',
        'getattrref_n',
        'getattrref_s',
        '', '',  '',  '',  '',  '',  '',  '',  '',
        # XXX Want a getattrref_u in the end
        'getattrref_i',
        'getattrref_i',
        'getattrref_i',
        'getattrref_i'
    ];

    my @kind_to_op_slot := [
        0, 0, 0, 0, 0, 1, 1, 2, 3, -1, -1, -1, -1, -1, -1, -1, -1, 4, 4, 4, 4
    ];

    my @param_opnames := [
        'param_rp_i',
        'param_rp_n',
        'param_rp_s',
        'param_rp_o',
        'param_rp_u',
        'param_op_i',
        'param_op_n',
        'param_op_s',
        'param_op_o',
        'param_op_u',
        'param_rn_i',
        'param_rn_n',
        'param_rn_s',
        'param_rn_o',
        'param_rn_u',
        'param_on_i',
        'param_on_n',
        'param_on_s',
        'param_on_o',
        'param_on_u',
        'param_rn2_i',
        'param_rn2_n',
        'param_rn2_s',
        'param_rn2_o',
        'param_rn2_u',
        'param_on2_i',
        'param_on2_n',
        'param_on2_s',
        'param_on2_o',
        'param_on2_u'
    ];

    my @return_types := [ NQPMu, int, int, int, int, num, num, str, NQPMu ];

    method register_kind_to_type($kind) { @return_types[$kind] }

    proto method compile_node($node, :$want) { * }

    multi method compile_node(QAST::CompUnit $cu, :$want) {
        # Should have a single child
        if nqp::elems(@($cu)) != 1 {
            nqp::die("QAST::CompUnit should have 1 child, got "
                ~ nqp::elems(@($cu)));
        }

        # Which is the outer block.
        if !nqp::istype($cu[0], QAST::Block) {
            nqp::die("QAST::CompUnit should have 1 child that is a QAST::Block, got " ~ $cu[0].HOW.name($cu[0]));
        }

        # Set HLL and serialization context.
        if $cu.hll {
            $!hll := $cu.hll;
            $!mast_compunit.hll($!hll);
        }
        if $cu.sc {
            $!sc := $cu.sc;
        }

        # Blocks we've seen while compiling.
        my %*BLOCKS_DONE;

        # Compile the block; make sure $*BLOCK is clear.
        my $*BLOCK;
        self.as_mast($cu[0]);

        # If we are in compilation mode, or have pre-deserialization or
        # post-deserialization tasks, handle those. Overall, the process
        # is to desugar this into simpler QAST nodes, then compile those.
        my $is_nested := $cu.is_nested;
        my $comp_mode := $cu.compilation_mode;
        my @pre_des   := $cu.pre_deserialize;
        my @post_des  := $cu.post_deserialize;
        if $comp_mode || @pre_des || @post_des {
            # Create a block into which we'll install all of the other
            # pieces.
            my $block := QAST::Block.new( :blocktype('raw'), :name('<dependencies+deserialize>') );

            # Add pre-deserialization tasks, each as a QAST::Stmt.
            for @pre_des {
                $block.push(QAST::Stmt.new($_));
            }

            # If we need to do deserialization, emit code for that.
            if $comp_mode && !$is_nested {
                $block.push(self.deserialization_code($cu.sc(), $cu.code_ref_blocks(),
                    $cu.repo_conflict_resolver()));
            }

            # Provided we have a serialization context,, pop it off the
            # compiling SC stack.
            unless $is_nested {
                nqp::popcompsc() if $cu.sc;
            }

            # Add post-deserialization tasks.
            for @post_des {
                $block.push(QAST::Stmt.new($_));
            }

            # Compile to MAST and register this block as the deserialization
            # handler.
            self.as_mast($block);
            $!mast_compunit.deserialize_frame(%!mast_frames{$block.cuid});
        }

        # Compile and include load-time logic, if any.
        if nqp::defined($cu.load) {
            my $load_block := QAST::Block.new(
                :blocktype('raw'), :name('<load>'),
                $cu.load
            );
            self.as_mast($load_block);
            $!mast_compunit.load_frame(%!mast_frames{$load_block.cuid});
        }

        # Compile and include main-time logic, if any, and wrap it up so that we
        # pass command line arguments.
        if nqp::defined($cu.main) {
            my $main_block := QAST::Block.new(
                :blocktype('raw'), :name('<entry>'),
                QAST::Op.new(
                    :op('call'),
                    QAST::Block.new(
                        :blocktype('declaration'), :name('<main>'),
                        $cu.main
                    ),
                    QAST::VM.new( :moarop('clargs'), :flat(1) )
                ));
            self.as_mast($main_block);
            $!mast_compunit.main_frame(%!mast_frames{$main_block.cuid});
        }
    }

    # This method is a hook point so that we can override serialization when cross-compiling
    method serialize_sc($sc) {
        my $sh := nqp::list_s();
        my str $serialized := nqp::serialize($sc, $sh);
        [$serialized, nqp::null()];
    }

    method deserialization_code($sc, @code_ref_blocks, $repo_conf_res) {
        my $sc_tuple := self.serialize_sc($sc);
        my str $serialized := $sc_tuple[0];
        my $sh := $sc_tuple[1];

        # String heap QAST.
        my $sh_ast;

        if nqp::islist($sh) {
            $sh_ast := QAST::Op.new( :op('list_s') );
            my $sh_elems := nqp::elems($sh);
            my $i := 0;
            while $i < $sh_elems {
                $sh_ast.push(nqp::isnull_s(nqp::atpos_s($sh, $i))
                    ?? QAST::Op.new( :op('null_s') )
                    !! QAST::SVal.new( :value(nqp::atpos_s($sh, $i)) ));
                $i := $i + 1;
            }
        }
        else {
            $sh_ast := QAST::Op.new( :op('null') );
        }

        # Code references.
        my $cr_ast := QAST::Op.new( :op('list_b'), |@code_ref_blocks );

        # Handle repossession conflict resolution code, if any.
        if $repo_conf_res {
            $repo_conf_res.push(QAST::Var.new( :name('conflicts'), :scope('local') ));
        }
        else {
            $repo_conf_res := QAST::Op.new(
                :op('die_s'),
                QAST::SVal.new( :value('Repossession conflicts occurred during deserialization') )
            );
        }

        # Overall deserialization QAST.
        QAST::Stmts.new(
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('cur_sc'), :scope('local'), :decl('var') ),
                QAST::Op.new( :op('createsc'), QAST::SVal.new( :value(nqp::scgethandle($sc)) ) )
            ),
            QAST::Op.new(
                :op('scsetdesc'),
                QAST::Var.new( :name('cur_sc'), :scope('local') ),
                QAST::SVal.new( :value(nqp::scgetdesc($sc)) )
            ),
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('conflicts'), :scope('local'), :decl('var') ),
                QAST::Op.new( :op('list') )
            ),
            QAST::Op.new(
                :op('deserialize'),
                nqp::isnull_s($serialized)
                    ?? QAST::Op.new( :op('null_s') )
                    !! QAST::SVal.new( :value($serialized) ),
                QAST::Var.new( :name('cur_sc'), :scope('local') ),
                $sh_ast, # XXX I had to leave this in, otherwise the JS backend doesn't build.
                         #     I would love some help figuring out why!
                QAST::Block.new( :blocktype('immediate'), $cr_ast ),
                QAST::Var.new( :name('conflicts'), :scope('local') )
            ),
            QAST::Op.new(
                :op('if'),
                QAST::Op.new(
                    :op('elems'),
                    QAST::Var.new( :name('conflicts'), :scope('local') )
                ),
                $repo_conf_res
            )
        )
    }

    multi method compile_node(QAST::Block $node, :$want) {
        my $cuid := $node.cuid();
        my $block;
        my $outer;
        if %*BLOCKS_DONE{$cuid} -> @already {
            $block := @already[0];
            $outer := @already[1];
        }
        else {
            my $outer_frame := try $*MAST_FRAME;

            # Create an empty frame and add it to the compilation unit.
            my $frame := MAST::Frame.new(
                :name($node.name),
                :cuuid($cuid));

            $!mast_compunit.add_frame($frame);
            try $outer := $*BLOCK;
            $block     := BlockInfo.new($node, (nqp::defined($outer) ?? $outer !! NQPMu), self);
            %*BLOCKS_DONE{$cuid} := [$block, $outer];

            # stash the frame by the block's cuid so other references
            # by this block can find it.
            %!mast_frames{$cuid} := $frame;

            # Set the outer if it exists
            $frame.set_outer($outer_frame)
                if $outer_frame && $outer_frame ~~ MAST::Frame;

            # Set exit handler, thunk, and no-inline flags if needed.
            if $node.has_exit_handler {
                $frame.has_exit_handler(1);
            }
            if $node.is_thunk {
                $frame.is_thunk(1);
            }
            if $node.no_inline {
                $frame.no_inline(1);
            }

            # Set code object, if any.
            my $code_obj := $node.code_object;
            if nqp::isconcrete($code_obj) {
                my $sc := nqp::getobjsc($code_obj);
                if nqp::isnull($sc) {
                    nqp::die("Object of type " ~ $code_obj.HOW.name($code_obj) ~
                        " is QAST::Block code object, but not in SC");
                }
                my int $idx    := nqp::scgetobjidx($sc, $code_obj);
                my int $sc_idx := $!mast_compunit.sc_idx($sc);
                $frame.set_code_object_idxs($sc_idx, $idx);
            }

            # Compile all the substatements.
            my $ins;
            {
                my $*BINDVAL := 0;

                # Create a register allocator for this frame.
                my $*REGALLOC := RegAlloc.new($frame);

                # when we enter a QAST::Stmt, the contextual will be cloned, and the locals of
                # newly declared QAST::Vars of local scope inside the Stmt will be stashed here,
                # so they can be released at the end of the QAST::Stmt in which they were
                # declared.  Inability to declare duplicate names is still enforced, and types are
                # still enforced.
                my %*STMTTEMPS := nqp::hash();
                my $*INSTMT := 0;

                my $*BLOCK := $block;
                my $*MAST_FRAME := $frame;

                my $*WANT;
                if $node.blocktype eq 'immediate' || $node.blocktype eq 'immediate_static' {
                    $*WANT := $want;
                }
                $ins := self.compile_all_the_stmts(@($node));

                # Ensure we return full-width.
                my $ins_result_kind := $ins.result_kind;
                if $ins_result_kind == $MVM_reg_num32 {
                    $ins := self.coerce($ins, $MVM_reg_num64);
                }
                elsif $ins_result_kind == $MVM_reg_int32 || $ins_result_kind == $MVM_reg_int16 ||
                        $ins_result_kind == $MVM_reg_int8 || $ins_result_kind == $MVM_reg_uint64 ||
                        $ins_result_kind == $MVM_reg_uint32 || $ins_result_kind == $MVM_reg_uint16 ||
                        $ins_result_kind == $MVM_reg_uint8 {
                    $ins := self.coerce($ins, $MVM_reg_int64);
                }

                # Add to instructions list for this block.
                nqp::splice($frame.instructions, $ins.instructions, +$frame.instructions, 0);

                $block.return_kind($ins.result_kind);
                # generate a return statement
                # get the return op name
                my $ret_op := @return_opnames[$ins.result_kind];
                my @ret_args := nqp::list();

                # provide the return arg register if needed
                nqp::push(@ret_args, $ins.result_reg) unless $ret_op eq 'return';

                # fixup the end of this frame's instruction list with the return
                push_op($frame.instructions, $ret_op, |@ret_args);

                # Build up the frame prologue. Start with lexical captures and clones.
                my @pre := nqp::list();
                my $capture_reg := $*REGALLOC.fresh_register($MVM_reg_obj);
                for $block.captured_inners() {
                    push_op(@pre, 'getcode', $capture_reg, %!mast_frames{$_});
                    push_op(@pre, 'capturelex', $capture_reg);
                }
                $*REGALLOC.release_register($capture_reg, $MVM_reg_obj);
                my %cloned_inners := $block.cloned_inners();
                for sorted_keys(%cloned_inners) {
                    my $frame := %!mast_frames{$_};
                    my $reg   := %cloned_inners{$_};
                    push_op(@pre, 'getcode', $reg, $frame);
                    push_op(@pre, 'takeclosure', $reg, $reg);
                }

                # Set up for any contvar locals.
                for $block.contvar_locals() {
                    my $value_mast := self.as_mast(
                        QAST::WVal.new( :value($_.value) ),
                        :want($MVM_reg_obj));
                    push_ilist(@pre, $value_mast);
                    push_op(@pre, 'clone', $block.local($_.name), $value_mast.result_reg);
                }

                if $node.custom_args {
                    # The block does the arg processing by itself, so we accept any number
                    # of args here.
                    push_op(@pre, 'checkarity',
                        MAST::IVal.new( :size(16), :value(0)),
                        MAST::IVal.new( :size(16), :value(-1)));
                }
                else {
                    # Analyze parameters to get count of required/optional and make sure
                    # all is in order.
                    my $param_index := 0;
                    my int $pos_required := 0;
                    my int $pos_optional := 0;
                    my int $pos_slurpy   := 0;
                    my int $named_slurpy := 0;
                    for $block.params {
                        if $_.slurpy {
                            if $_.named {
                                $named_slurpy := 1
                            }
                            else {
                                if $pos_slurpy {
                                    nqp::die("Only one slurpy positional allowed");
                                }
                                $pos_slurpy := 1;
                            }
                        }
                        elsif nqp::defined($_.named) {
                            # Don't count towards arity or count.
                        }
                        elsif $_.default {
                            if $pos_slurpy {
                                nqp::die("Optional positionals must come before all slurpy positionals");
                            }
                            $pos_optional++;
                        }
                        else {
                            if $pos_optional {
                                nqp::die("Required positionals must come before all optional positionals");
                            }
                            if $pos_slurpy {
                                nqp::die("Required positionals must come before all slurpy positionals");
                            }
                            $pos_required++;
                        }
                    }

                    # check the arity
                    push_op(@pre, 'checkarity',
                        MAST::IVal.new( :size(16), :value($pos_required)),
                        MAST::IVal.new( :size(16), :value($pos_slurpy ?? -1 !! $pos_required + $pos_optional)));

                    # build up instructions to bind the params
                    for $block.params -> $var {
                        my $scope := $var.scope;
                        nqp::die("Param scope must be 'local' or 'lexical', got '$scope'")
                            if $scope ne 'lexical' && $scope ne 'local';

                        my $param_kind := self.type_to_register_kind($var.returns);
                        my $opslot := @kind_to_op_slot[$param_kind];

                        my $opname_index := (nqp::defined($var.named)
                                ?? (nqp::islist($var.named) ?? 20 !! 10)
                                !! 0)
                            + ($var.default ?? 5 !! 0) + $opslot;
                        my $opname := @param_opnames[$opname_index];

                        # what will be put in the value register
                        my $val;
                        my $val2;

                        if $var.slurpy {
                            if $var.named {
                                $opname := "param_sn";
                            }
                            else {
                                $opname := "param_sp";
                            }
                        }
                        elsif nqp::defined($var.named) {
                            my $name := $var.named;
                            if nqp::islist($name) {
                                unless nqp::elems($name) == 2 {
                                    nqp::die("Can only support 1 fallback name for a named parameter, '" ~ $name[0] ~ "' has " ~ nqp::elems($name) - 1);
                                }
                                $val := MAST::SVal.new( :value($name[0]) );
                                $val2 := MAST::SVal.new( :value($name[1]) );
                            }
                            else {
                                $val := MAST::SVal.new( :value($name) );
                            }
                        }
                        else { # positional
                            $val := MAST::IVal.new( :size(16), :value($param_index));
                        }

                        # Parameter passing is always at full width. In the best
                        # case the register we target is already full-width, but
                        # if not we need a truncation op.
                        my $targetreg := $scope eq 'lexical'
                            ?? $block.lexical_param($var.name)
                            !! $block.local($var.name);
                        my $valreg;
                        my $valreg_kind;
                        my $truncop;

                        if $param_kind == $MVM_reg_obj || $param_kind == $MVM_reg_int64 ||
                                $param_kind == $MVM_reg_num64 || $param_kind == $MVM_reg_str ||
                                $param_kind == $MVM_reg_uint64 {
                            $valreg_kind := $param_kind;
                            $valreg := $targetreg;
                        }
                        elsif $param_kind == $MVM_reg_num32 {
                            $valreg_kind := $MVM_reg_num64;
                            $truncop := 'trunc_n32';
                        }
                        elsif $param_kind == $MVM_reg_int32 {
                            $valreg_kind := $MVM_reg_int64;
                            $truncop := 'trunc_i32';
                        }
                        elsif $param_kind == $MVM_reg_int16 {
                            $valreg_kind := $MVM_reg_int64;
                            $truncop := 'trunc_i16';
                        }
                        elsif $param_kind == $MVM_reg_int8 {
                            $valreg_kind := $MVM_reg_int64;
                            $truncop := 'trunc_i8';
                        }
                        elsif $param_kind == $MVM_reg_uint32 {
                            $valreg_kind := $MVM_reg_uint64;
                            $truncop := 'trunc_u32';
                        }
                        elsif $param_kind == $MVM_reg_uint16 {
                            $valreg_kind := $MVM_reg_uint64;
                            $truncop := 'trunc_u16';
                        }
                        elsif $param_kind == $MVM_reg_uint8 {
                            $valreg_kind := $MVM_reg_uint64;
                            $truncop := 'trunc_u8';
                        }

                        # Get a fresh register to store the result of the
                        # truncation, but only if needed
                        if $valreg_kind != $param_kind {
                            $valreg := $*REGALLOC.fresh_register($valreg_kind);
                        }

                        # NQP->QAST always provides a default value for optional NQP params
                        # even if no default initializer expression is provided.
                        if $var.default {
                            # generate end label to skip initialization code
                            my $endlbl := MAST::Label.new();

                            # generate default initialization code. Could also be
                            # wrapped in another QAST::Block.
                            my $default_mast := self.as_mast($var.default, :want($valreg_kind));

                            # emit param grabbing op
                            $val2
                                ?? push_op(@pre, $opname, $valreg, $val, $val2, $endlbl)
                                !! push_op(@pre, $opname, $valreg, $val, $endlbl);

                            # emit default initialization code
                            push_ilist(@pre, $default_mast);

                            # put the initialization result in the variable register
                            push_op(@pre, 'set', $valreg, $default_mast.result_reg);
                            $*REGALLOC.release_register($default_mast.result_reg, $default_mast.result_kind);

                            # end label to skip initialization code
                            nqp::push(@pre, $endlbl);
                        }
                        elsif $var.slurpy {
                            if $var.named {
                                push_op(@pre, $opname, $valreg);
                            }
                            else {
                                push_op(@pre, $opname, $valreg, MAST::IVal.new( :value($pos_required + $pos_optional) ));
                            }
                        }
                        else {
                            # emit param grabbing op
                            $val2
                                ?? push_op(@pre, $opname, $valreg, $val, $val2)
                                !! push_op(@pre, $opname, $valreg, $val);
                        }

                        if $truncop {
                            push_op(@pre, $truncop, $targetreg, $valreg);
                        }

                        if $scope eq 'lexical' {
                            # emit the op to bind the lexical to the result register
                            push_op(@pre, 'bindlex', $block.lexical($var.name), $targetreg);
                        }

                        # Emit any additional tasks and typechecks.
                        for $var.list {
                            if nqp::istype($_, QAST::ParamTypeCheck) {
                                my $tc_mast := self.as_mast($_[0], :want($MVM_reg_int64));
                                push_ilist(@pre, $tc_mast);
                                push_op(@pre, 'assertparamcheck', $tc_mast.result_reg);
                                $*REGALLOC.release_register($tc_mast.result_reg, $MVM_reg_int64);
                            }
                            else {
                                push_ilist(@pre, self.as_mast($_, :want($MVM_reg_void)));
                            }
                        }

                        $param_index++;
                    }

                    # If we didn't slurp all the names, check there are no
                    # unexpected ones.
                    push_op(@pre, 'paramnamesused') unless $named_slurpy;
                }

                nqp::splice($frame.instructions, @pre, 0, 0);
            }
        }

        if $node.blocktype eq 'raw' || !nqp::istype($outer, BlockInfo) {
            MAST::InstructionList.new(nqp::list(), MAST::VOID, $MVM_reg_void);
        }
        elsif $node.blocktype eq 'immediate' {
            my $clone_reg := $*BLOCK.clone_inner($node);
            if nqp::defined($want) && $want == $MVM_reg_void {
                my @ins;
                nqp::push(@ins, MAST::Call.new( :target($clone_reg), :flags([]) ));
                MAST::InstructionList.new(@ins, MAST::VOID, $MVM_reg_void);
            }
            else {
                my $res_reg   := $*REGALLOC.fresh_register($block.return_kind);
                my @ins;
                nqp::push(@ins, MAST::Call.new(
                    :target($clone_reg), :flags([]), :result($res_reg)
                ));
                MAST::InstructionList.new(@ins, $res_reg, $block.return_kind)
            }
        }
        elsif $node.blocktype eq 'immediate_static' {
            $*BLOCK.capture_inner($node);
            my $code_reg := $*REGALLOC.fresh_register($MVM_reg_obj);
            my @ins;
            push_op(@ins, 'getcode', $code_reg, %!mast_frames{$node.cuid});
            if nqp::defined($want) && $want == $MVM_reg_void {
                nqp::push(@ins, MAST::Call.new( :target($code_reg), :flags([]) ));
                MAST::InstructionList.new(@ins, MAST::VOID, $MVM_reg_void);
            } else {
                my $res_reg  := $*REGALLOC.fresh_register($block.return_kind);
                nqp::push(@ins, MAST::Call.new(
                    :target($code_reg), :flags([]), :result($res_reg)
                ));
                MAST::InstructionList.new(@ins, $res_reg, $block.return_kind)
            }
        }
        elsif $node.blocktype eq '' || $node.blocktype eq 'declaration' {
            my $clone_reg := $*BLOCK.clone_inner($node);
            MAST::InstructionList.new(nqp::list(), $clone_reg, $MVM_reg_obj)
        }
        elsif $node.blocktype eq 'declaration_static' {
            $*BLOCK.capture_inner($node);
            if nqp::defined($want) && $want == $MVM_reg_void {
                my $code_reg := $*REGALLOC.fresh_register($MVM_reg_obj);
                my @ins;
                push_op(@ins, 'getcode', $code_reg, %!mast_frames{$node.cuid});
                MAST::InstructionList.new(@ins, $code_reg, $MVM_reg_obj)
            }
            else {
                my $clone_reg := $*BLOCK.clone_inner($node);
                MAST::InstructionList.new(nqp::list(), $clone_reg, $MVM_reg_obj)
            }
        }
        else {
            nqp::die("Unhandled blocktype " ~ $node.blocktype);
        }
    }

    multi method compile_node(QAST::Stmts $node, :$want) {
        my $resultchild := $node.resultchild;
        nqp::die("resultchild out of range, max allowed is "
            ~ nqp::elems(@($node)) - 1 ~ ", got $resultchild")
        if (nqp::defined($resultchild) && $resultchild >= nqp::elems(@($node)));
        self.compile_all_the_stmts(@($node), $resultchild)
    }

    multi method compile_node(QAST::Stmt $node, :$want) {
        my %stmt_temps := nqp::clone(%*STMTTEMPS); # guaranteed to be initialized
        my $result     := self.compile_with_stmt_temps($node, %stmt_temps);
        for %stmt_temps -> $temp_key {
            if !nqp::existskey(%*STMTTEMPS, $temp_key) &&
                    !nqp::eqaddr($*BLOCK.local($temp_key), $result.result_reg) {
                $*BLOCK.release_temp($temp_key);
            }
        }
        $result
    }
    method compile_with_stmt_temps($node, %stmt_temps) {
        my %*STMTTEMPS  := %stmt_temps;
        my $*INSTMT     := 1;
        my $resultchild := $node.resultchild;
        nqp::die("resultchild out of range, max allowed is "
            ~ nqp::elems(@($node)) - 1 ~ ", got $resultchild")
        if (nqp::defined($resultchild) && $resultchild >= nqp::elems(@($node)));
        self.compile_all_the_stmts(@($node), $resultchild);
    }

    # This takes any node that is a statement list of some kind and compiles
    # all of the statements within it.
    method compile_all_the_stmts(@stmts, $resultchild?) {
        my @all_ins;
        # the most recent statement mast
        my $last_stmt;
        my $result_stmt;
        my $result_count := 0;
        $resultchild := $resultchild // -1;
        my $final_stmt_idx := +@stmts - 1;
        my $WANT := $*WANT;
        my $all_void := nqp::defined($WANT) && $WANT == $MVM_reg_void;
        for @stmts {
            my int $use_result := 0;
            # Compile this child to MAST, and add its instructions to the end
            # of our instruction list. Also track the last statement.
            # if this is the statement we've been asked to make the result
            if !$all_void && ($result_count == $resultchild
            # or if we weren't given a particular result statement and we're on
            # the last statement,
                    || $resultchild == -1 && $result_count == $final_stmt_idx) {
                # compile $_ with an explicit $want, either what's given or obj
                my $want-decont := $*WANT-DECONT;
                $last_stmt := nqp::defined($WANT)
                    ?? self.as_mast($_, :want($WANT), :$want-decont)
                    !! self.as_mast($_, :$want-decont);
                if $last_stmt.result_kind == $MVM_reg_void {
                    $last_stmt := self.coerce($last_stmt, $MVM_reg_obj);
                }
                $use_result := 1;
            }
            else {
                $last_stmt := self.as_mast($_, :want($MVM_reg_void));
            }

            # Annotate with line number if we have one.
            my $node := $_.node;
            if nqp::isconcrete($node) && nqp::can($node,'orig') {
                my @line_file := HLL::Compiler.linefileof($node.orig(), $node.from(), :cache(1), :directives(1));
                my $line := @line_file[0];
                my $file := @line_file[1] || $!file;
                nqp::push(@all_ins, MAST::Annotated.new(
                    :$file, :$line, :instructions($last_stmt.instructions) ));
            }
            else {
                nqp::splice(@all_ins, $last_stmt.instructions, +@all_ins, 0);
            }

            if $use_result {
                $result_stmt := $last_stmt;
            }
            else {
                # release top-level results (since they can't be used by anything anyway)
                $*REGALLOC.release_register($last_stmt.result_reg, $last_stmt.result_kind);
            }
            $result_count++;
        }
        if $result_stmt && $result_stmt.result_kind != $MVM_reg_void {
            MAST::InstructionList.new(@all_ins, $result_stmt.result_reg, $result_stmt.result_kind);
        }
        else {
            MAST::InstructionList.new(@all_ins, MAST::VOID, $MVM_reg_void);
        }
    }

    multi method compile_node(QAST::Op $node, :$want) {
        $!last_op := $node;
        QAST::MASTOperations.compile_op(self, $!hll, $node)
    }

    multi method compile_node(QAST::VM $node, :$want) {
        if $node.supports('moar') {
            return nqp::defined($want)
                ?? self.as_mast($node.alternative('moar'), :$want)
                !! self.as_mast($node.alternative('moar'));
        }
        elsif $node.supports('moarop') {
            return nqp::defined($want)
                ?? QAST::MASTOperations.compile_mastop(self, $node.alternative('moarop'), $node.list, [], :$want)
                !! QAST::MASTOperations.compile_mastop(self, $node.alternative('moarop'), $node.list, []);
        }
        elsif $node.supports('mast') {
            return $node.alternative('mast');
        }
        else {
            nqp::die("To compile on the MoarVM backend, QAST::VM must have an alternative 'moar' or 'moarop'");
        }
    }

    sub check_kinds($a, $b) {
        nqp::die("Register types $a and $b don't match") unless $a == $b;
    }

    my @lex_n_opnames := [
        'lex_ni',
        'lex_nn',
        'lex_ns',
        'lex_no',
        'lex_nu'
    ];

    my @lexref_opnames := [
        '',
        'getlexref_i8',
        'getlexref_i16',
        'getlexref_i32',
        'getlexref_i',
        'getlexref_n32',
        'getlexref_n',
        'getlexref_s',
        '', '',  '',  '',  '',  '',  '',  '',  '',
        'getlexref_u8',
        'getlexref_u16',
        'getlexref_u32',
        'getlexref_u'
    ];

    my @lexref_n_opnames := [
        'getlexref_ni',
        'getlexref_nn',
        'getlexref_ns',
        '',
        'getlexref_nu',
    ];

    my @decont_opnames := [
        'decont_i',
        'decont_n',
        'decont_s',
        'decont',
        'decont_u'
    ];

    multi method compile_node(QAST::Var $node, :$want) {
        self.compile_var($node, :$want)
    }

    multi method compile_node(QAST::VarWithFallback $node, :$want) {
        my $var_res := self.compile_var($node, :$want);
        if $*BINDVAL || $var_res.result_kind != $MVM_reg_obj {
            $var_res
        }
        else {
            my $il := nqp::list();
            push_ilist($il, $var_res);

            my $fallback_if_nonnull := MAST::Label.new();
            my $fallback_end := MAST::Label.new();
            my $res_reg := $*REGALLOC.fresh_o();
            push_op($il, 'ifnonnull', $var_res.result_reg, $fallback_if_nonnull);

            my $fallback_res := self.as_mast($node.fallback, :want($MVM_reg_obj));
            push_ilist($il, $fallback_res);
            push_op($il, 'set', $res_reg, $fallback_res.result_reg);
            push_op($il, 'goto', $fallback_end);
            nqp::push($il, $fallback_if_nonnull);
            push_op($il, 'set', $res_reg, $var_res.result_reg);
            nqp::push($il, $fallback_end);
            $*REGALLOC.release_register($var_res.result_reg, $MVM_reg_obj);
            $*REGALLOC.release_register($fallback_res.result_reg, $MVM_reg_obj);

            MAST::InstructionList.new($il, $res_reg, $MVM_reg_obj)
        }
    }

    method compile_var($node, :$want) {
        my $scope := $node.scope;
        my $decl  := $node.decl;

        my $res_reg;
        my $res_kind;

        # Handle any declarations; after this, we call through to the
        # lookup code.
        if $decl {
            # If it's a parameter, add it to the things we should bind
            # at block entry.
            if $decl eq 'param' {
                if $scope eq 'local' {
                    $*BLOCK.add_param($node);
                }
                elsif $scope eq 'lexical' {
                    my @details := $*BLOCK.add_param($node);
                    $res_kind := @details[0];
                    $res_reg := @details[1];
                }
                else {
                    nqp::die("Parameter cannot have scope '$scope'; use 'local' or 'lexical'");
                }
            }
            elsif $decl eq 'var' {
                if $scope eq 'local' {
                    $*BLOCK.register_local($node);
                }
                elsif $scope eq 'lexical' {
                    $*BLOCK.add_lexical($node);
                }
                elsif $scope eq 'lexicalref' {
                    $*BLOCK.add_lexicalref($node);
                }
                else {
                    nqp::die("Cannot declare variable with scope '$scope'; use one of 'local', 'lexical', or 'lexicalref'");
                }
            }
            elsif $decl eq 'static' {
                if $scope ne 'lexical' {
                    nqp::die("Can only use 'static' decl with scope 'lexical', got scope '$scope'");
                }
                $*BLOCK.add_lexical($node, :is_static);
            }
            elsif $decl eq 'contvar' {
                if $scope eq 'local' {
                    $*BLOCK.register_local($node, :is_cont);
                }
                elsif $scope eq 'lexical' {
                    $*BLOCK.add_lexical($node, :is_cont);
                }
                else {
                    nqp::die("Can only use 'contvar' decl with scope 'lexical' or 'local', got scope '$scope'");
                }
            }
            elsif $decl eq 'statevar' {
                if $scope ne 'lexical' {
                    nqp::die("Can only use 'statevar' decl with scope 'lexical', got scope '$scope'");
                }
                $*BLOCK.add_lexical($node, :is_state);
            }
            else {
                nqp::die("Don't understand declaration type '$decl'");
            }
        }

        # If we know what we're after, some opts:
        if nqp::isconcrete($want) {
            # Declaration in void context need generate no code.
            if $want == $MVM_reg_void {
                return MAST::InstructionList.new([], MAST::VOID, $MVM_reg_void);
            }

            # Both lexicalref and attributeref in the context we want a
            # non-object devolve to lexical and attribute, since we'd only
            # de-ref right away anyway.
            if $want != $MVM_reg_obj {
                $scope := 'lexical'   if $scope eq 'lexicalref';
                $scope := 'attribute' if $scope eq 'attributeref';
            }
        }

        # If we want a decontainerized value, then we don't ever need a
        # reference in this context either.
        if $*WANT-DECONT {
            $scope := 'lexical'   if $scope eq 'lexicalref';
            $scope := 'attribute' if $scope eq 'attributeref';
        }

        # Now go by scope.
        my $name := $node.name;
        my @ins;
        if $scope eq 'local' {
            my $local := $*BLOCK.local($name);
            if $local {
                $res_kind := $*BLOCK.local_kind($name);
                if $*BINDVAL {
                    my $valmast := self.as_mast_clear_bindval($*BINDVAL, :want($res_kind));
                    push_ilist(@ins, $valmast);
                    push_op(@ins, 'set', $local, $valmast.result_reg);
                    $*REGALLOC.release_register($valmast.result_reg, $res_kind);
                }
                $res_reg := $local;
            }
            else {
                nqp::die("Cannot reference undeclared local '$name'");
            }
        }
        elsif $scope eq 'lexical' {
            my $lex;
            my $lexref;
            my $outer := 0;
            my $block := $*BLOCK;
            # find the block where the lexical was declared, if any
            while nqp::istype($block, BlockInfo) {
                last if $block.qast.ann('DYN_COMP_WRAPPER');
                $lex := $block.lexical($name);
                last if $lex;
                $lexref := $block.lexicalref($name);
                last if $lexref;
                $block := $block.outer;
                $outer++;
            }
            if $lex {
                $res_kind := $block.lexical_kind($name);
                if $outer {
                    # need to create lex that knows how many frames to go out
                    $lex := MAST::Lexical.new( :index($lex.index), :frames_out($outer) );
                }
                if $*BINDVAL {
                    my $valmast := self.as_mast_clear_bindval($*BINDVAL, :want($res_kind));
                    $res_reg := $valmast.result_reg;
                    push_ilist(@ins, $valmast);
                    push_op(@ins, 'bindlex', $lex, $res_reg);
                }
                elsif $decl ne 'param' {
                    $res_reg := $*REGALLOC.fresh_register($res_kind);
                    push_op(@ins, 'getlex', $res_reg, $lex);
                }
                else {
                    # for lexical param declarations, we don't actually have a result value,
                    # since the param bindlex may be stale by the time the result register
                    # could be used, since the bindlex always occurs at the very top,
                    # so turn around and release the temp register already preallocated.
                    $*REGALLOC.release_register($res_reg, $res_kind);
                    # get another one in case someone is using it...
                    $res_reg := $*REGALLOC.fresh_register($res_kind);
                    push_op(@ins, 'getlex', $res_reg, $lex);
                }
            }
            elsif $lexref {
                if $*BINDVAL {
                    nqp::die('Cannot bind to QAST::Var resolving to a lexicalref');
                }
                $res_kind := $block.lexicalref_kind($name);
                if $outer {
                    $lexref := MAST::Lexical.new( :index($lexref.index), :frames_out($outer) );
                }
                my $tmp_reg := $*REGALLOC.fresh_register($MVM_reg_obj);
                $res_reg := $*REGALLOC.fresh_register($res_kind);
                push_op(@ins, 'getlex', $tmp_reg, $lexref);
                push_op(@ins, @decont_opnames[@kind_to_op_slot[$res_kind]], $res_reg, $tmp_reg);
                $*REGALLOC.release_register($tmp_reg, $MVM_reg_obj);
            }
            else {
                $res_kind := self.type_to_register_kind($node.returns);
                if $*BINDVAL {
                    my $valmast := self.as_mast_clear_bindval($*BINDVAL, :want($res_kind));
                    $res_reg := $valmast.result_reg;
                    push_ilist(@ins, $valmast);
                    push_op(@ins, "bind"~@lex_n_opnames[@kind_to_op_slot[$res_kind]], MAST::SVal.new( :value($name) ), $res_reg);
                    $res_kind := $valmast.result_kind;
                }
                else {
                    $res_reg := $*REGALLOC.fresh_register($res_kind);
                    push_op(@ins, "get"~@lex_n_opnames[@kind_to_op_slot[$res_kind]],
                        $res_reg, MAST::SVal.new( :value($name) ));
                }
            }
        }
        elsif $scope eq 'lexicalref' {
            my $lex;
            my $lexref;
            my $outer := 0;
            my $block := $*BLOCK;
            # find the block where the lexical was declared, if any
            while nqp::istype($block, BlockInfo) {
                last if $block.qast.ann('DYN_COMP_WRAPPER');
                $lex := $block.lexical($name);
                last if $lex;
                $lexref := $block.lexicalref($name);
                last if $lexref;
                $block := $block.outer;
                $outer++;
            }
            $res_kind := $MVM_reg_obj;
            $res_reg := $*REGALLOC.fresh_register($res_kind);
            if $lex {
                # We need to take a reference to the lexical.
                if $*BINDVAL {
                    nqp::die("Cannot bind to non-reference QAST::Var '{$name}'");
                }
                if $outer {
                    $lex := MAST::Lexical.new( :index($lex.index), :frames_out($outer) );
                }
                my $lex_kind := $block.lexical_kind($name);
                if $lex_kind == $MVM_reg_obj {
                    nqp::die('Cannot take a reference to a non-native lexical');
                }
                push_op(@ins, @lexref_opnames[$lex_kind], $res_reg, $lex);
            }
            elsif $lexref {
                # We want a reference, the register contains a reference, so
                # just do the lookup.
                if $outer {
                    $lexref := MAST::Lexical.new( :index($lexref.index), :frames_out($outer) );
                }
                if $*BINDVAL {
                    my $valmast := self.as_mast_clear_bindval($*BINDVAL, :want($MVM_reg_obj));
                    $res_reg := $valmast.result_reg;
                    push_ilist(@ins, $valmast);
                    push_op(@ins, 'bindlex', $lexref, $res_reg);
                }
                else {
                    push_op(@ins, 'getlex', $res_reg, $lexref);
                }
            }
            else {
                if $*BINDVAL {
                    nqp::die('Cannot bind to late-bound QAST::Var with scope lexicalref');
                }
                my $lex_kind := self.type_to_register_kind($node.returns);
                push_op(@ins, @lexref_n_opnames[@kind_to_op_slot[$lex_kind]],
                    $res_reg, MAST::SVal.new( :value($name) ));
            }
        }
        elsif $scope eq 'typevar' {
            if $*BINDVAL {
                nqp::die('Cannot bind to QAST::Var with scope typevar');
            }
            my $name_reg := $*REGALLOC.fresh_s();
            $res_reg     := $*REGALLOC.fresh_o();
            $res_kind    := $MVM_reg_obj;
            push_op(@ins, 'const_s', $name_reg, MAST::SVal.new( :value($name) ));
            push_op(@ins, 'getlexperinvtype_o', $res_reg, $name_reg);
            $*REGALLOC.release_register($name_reg, $MVM_reg_str);
        }
        elsif $scope eq 'contextual' {
            my $name_const := const_s($name);
            my $lex := $*BLOCK.lexical($name);
            if $lex {
                # In current frame; do as lexical does.
                $res_kind := $*BLOCK.lexical_kind($name);
                if $*BINDVAL {
                    my $valmast := self.as_mast_clear_bindval($*BINDVAL, :want($res_kind));
                    $res_reg := $valmast.result_reg;
                    push_ilist(@ins, $valmast);
                    push_op(@ins, 'bindlex', $lex, $res_reg);
                }
                elsif $decl ne 'param' {
                    $res_reg := $*REGALLOC.fresh_register($res_kind);
                    push_op(@ins, 'getlex', $res_reg, $lex);
                }
                else {
                    $*REGALLOC.release_register($res_reg, $res_kind);
                    $res_reg := $*REGALLOC.fresh_register($res_kind);
                    push_op(@ins, 'getlex', $res_reg, $lex);
                }
            }
            else {
                # Need lookup.
                if $*BINDVAL {
                    my $valmast := self.as_mast_clear_bindval($*BINDVAL, :want($MVM_reg_obj));
                    $res_reg := $valmast.result_reg;
                    push_ilist(@ins, $valmast);
                    push_ilist(@ins, $name_const);
                    push_op(@ins, 'binddynlex', $name_const.result_reg, $res_reg);
                }
                else {
                    push_ilist(@ins, $name_const);
                    $res_reg := $*REGALLOC.fresh_register($MVM_reg_obj);
                    push_op(@ins, 'getdynlex', $res_reg, $name_const.result_reg);
                }
            }
            $*REGALLOC.release_register($name_const.result_reg, $MVM_reg_str);
            $res_kind := $MVM_reg_obj;
        }
        elsif $scope eq 'attribute' {
            # Ensure we have object and class handle.
            my @args := $node.list();
            if +@args != 2 {
                nqp::die("An attribute lookup needs 2 args (an object and a class handle), got " ~ +@args);
            }

            # Compile object and handle.
            my $obj := self.as_mast_clear_bindval(@args[0], :want($MVM_reg_obj));
            my $han := self.as_mast_clear_bindval(@args[1], :want($MVM_reg_obj));
            push_ilist(@ins, $obj);
            push_ilist(@ins, $han);

            my int $hint := -1;

            if nqp::istype(@args[1], QAST::WVal) {
                $hint := nqp::hintfor(@args[1].value, $name);
            }

            # Go by whether it's a bind or lookup. We always access the
            # attributes at full-width from the VM op interface.
            my $kind := self.type_to_register_kind($node.returns);
            if $kind == $MVM_reg_num32 {
                $kind := $MVM_reg_num64;
            }
            elsif $kind == $MVM_reg_int32 || $kind == $MVM_reg_int16 ||
                    $kind == $MVM_reg_int8 {
                $kind := $MVM_reg_int64;
            }
            elsif $kind == $MVM_reg_uint64 || $kind == $MVM_reg_uint32 ||
                    $kind == $MVM_reg_uint16 || $kind == $MVM_reg_uint8 {
                # For now compile as signed
                $kind := $MVM_reg_int64;
            }
            if $*BINDVAL {
                my $valmast := self.as_mast_clear_bindval($*BINDVAL, :want($kind));
                push_ilist(@ins, $valmast);
                push_op(@ins, 'bind' ~ @attr_opnames[$kind], $obj.result_reg,
                    $han.result_reg, MAST::SVal.new( :value($name) ), $valmast.result_reg,
                        MAST::IVal.new( :value($hint) ) );
                $res_reg := $valmast.result_reg;
                $res_kind := $valmast.result_kind;
            }
            else {
                $res_reg := $*REGALLOC.fresh_register($kind);
                $res_kind := $kind;
                push_op(@ins, 'get' ~ @attr_opnames[$kind], $res_reg, $obj.result_reg,
                    $han.result_reg, MAST::SVal.new( :value($name) ),
                        MAST::IVal.new( :value($hint) ) );
            }
            $*REGALLOC.release_register($obj.result_reg, $MVM_reg_obj);
            $*REGALLOC.release_register($han.result_reg, $MVM_reg_obj);
        }
        elsif $scope eq 'attributeref' {
            # Ensure we have object and class handle, and aren't binding.
            my @args := $node.list();
            if +@args != 2 {
                nqp::die("An attribute reference needs 2 args (an object and a class handle), got" ~ +@args);
            }
            if $*BINDVAL {
                nqp::die("Cannot bind to QAST::Var '{$name}' with scope attributeref");
            }

            # Ensure we've a natively typed attribute to take a ref to.
            my $kind := self.type_to_register_kind($node.returns);
            if $kind == $MVM_reg_obj {
                nqp::die("Attribute references can only be to native types");
            }

            # Compile object and handle, and get hint.
            my $obj := self.as_mast_clear_bindval(@args[0], :want($MVM_reg_obj));
            my $han := self.as_mast_clear_bindval(@args[1], :want($MVM_reg_obj));
            push_ilist(@ins, $obj);
            push_ilist(@ins, $han);
            my int $hint := -1;
            if nqp::istype(@args[1], QAST::WVal) {
                $hint := nqp::hintfor(@args[1].value, $name);
            }

            # Emit lookup.
            $res_reg := $*REGALLOC.fresh_register($MVM_reg_obj);
            $res_kind := $MVM_reg_obj;
            push_op(@ins, @attrref_opnames[$kind], $res_reg, $obj.result_reg,
                $han.result_reg, MAST::SVal.new( :value($name) ),
                    MAST::IVal.new( :value($hint) ) );
            $*REGALLOC.release_register($obj.result_reg, $MVM_reg_obj);
            $*REGALLOC.release_register($han.result_reg, $MVM_reg_obj);
        }
        elsif $scope eq 'positional' {
            return self.as_mast_clear_bindval($*BINDVAL
                ?? QAST::Op.new( :op('positional_bind'), |$node.list, $*BINDVAL)
                !! QAST::Op.new( :op('positional_get'), |$node.list));
        }
        elsif $scope eq 'associative' {
            return self.as_mast_clear_bindval($*BINDVAL
                ?? QAST::Op.new( :op('associative_bind'), |$node.list, $*BINDVAL)
                !! QAST::Op.new( :op('associative_get'), |$node.list));
        }
        else {
            nqp::die("QAST::Var with scope '$scope' NYI");
        }

        MAST::InstructionList.new(@ins, $res_reg, $res_kind)
    }

    multi method compile_node(MAST::InstructionList $ilist, :$want) {
        $ilist
    }

    multi method compile_node(MAST::Node $node, :$want) {
        MAST::InstructionList.new([$node], MAST::VOID, $MVM_reg_void)
    }

    method as_mast_clear_bindval($node, :$want) {
        my $*BINDVAL := 0;
        nqp::defined($want) ?? self.as_mast($node, :$want) !! self.as_mast($node)
    }

    proto method as_mast_constant($qast) { * }

    multi method as_mast_constant(QAST::IVal $iv) {
        MAST::IVal.new( :value($iv.value) )
    }
    multi method as_mast_constant(QAST::SVal $sv) {
        MAST::SVal.new( :value($sv.value) )
    }
    multi method as_mast_constant(QAST::NVal $nv) {
        MAST::NVal.new( :value($nv.value) )
    }
    multi method as_mast_constant(QAST::Want $want) {
        my int $finger := 1;
        my @children := $want.list;
        while $finger < nqp::elems(@children) {
            my str $got := @children[$finger];
            if $got eq 'Ss' || $got eq 'Ii' || $got eq 'Nn' {
                return self.as_mast_constant(@children[$finger + 1]);
            }
            $finger := $finger + 2;
        }
        return self.as_mast_constant(@children[0]);
    }
    multi method as_mast_constant(QAST::Op $op) {
        if $op.op eq 'const' && nqp::existskey(%const_map, $op.name) {
            return MAST::IVal.new( :value(%const_map{$op.name}) );
        }
        nqp::die("Expected QAST constant, got op '" ~ $op.op ~ "'");
    }
    multi method as_mast_constant(QAST::Node $qast) {
        nqp::die("Expected QAST constant, got QAST::Node");
    }

    multi method compile_node(QAST::Want $node, :$want) {
        # If we're not in a coercive context, take the default.
        self.as_mast($node[0], :want-decont($*WANT-DECONT))
    }

    multi method compile_node(QAST::IVal $iv, :$want) {
        my $reg := $*REGALLOC.fresh_i();
        MAST::InstructionList.new(
            [MAST::Op.new(
                :op('const_i64'),
                $reg,
                MAST::IVal.new( :value($iv.value) )
            )],
            $reg,
            $MVM_reg_int64)
    }

    multi method compile_node(QAST::NVal $nv, :$want) {
        my $reg := $*REGALLOC.fresh_n();
        MAST::InstructionList.new(
            [MAST::Op.new(
                :op('const_n64'),
                $reg,
                MAST::NVal.new( :value($nv.value) )
            )],
            $reg,
            $MVM_reg_num64)
    }

    sub const_s($val) {
        my $reg := $*REGALLOC.fresh_s();
        MAST::InstructionList.new(
            [MAST::Op.new(
                :op('const_s'),
                $reg,
                MAST::SVal.new( :value($val) )
            )],
            $reg,
            $MVM_reg_str)
    }

    multi method compile_node(QAST::SVal $sv, :$want) {
        const_s($sv.value)
    }

    multi method compile_node(QAST::BVal $bv, :$want) {
        my $block := $bv.value;
        my $cuid  := $block.cuid();
        my $frame := %!mast_frames{$cuid};
        nqp::die("QAST::Block with cuid $cuid has not appeared")
            unless $frame && $frame ~~ MAST::Frame;

        my $reg := $*REGALLOC.fresh_o();
        MAST::InstructionList.new(
            [MAST::Op.new(
                :op('getcode'),
                $reg,
                $frame
            )],
            $reg,
            $MVM_reg_obj)
    }

    multi method compile_node(QAST::WVal $node, :$want) {
        if nqp::isconcrete($want) && $want == $MVM_reg_void {
            MAST::InstructionList.new([], MAST::VOID, $MVM_reg_void);
        }
        else {
            my $val    := $node.value;
            my $sc     := nqp::getobjsc($val);
            if nqp::isnull($sc) {
                nqp::die("Object of type " ~ $val.HOW.name($val) ~ " in QAST::WVal, but not in SC");
            }
            my $idx    := nqp::scgetobjidx($sc, $val);
            my $sc_idx := $!mast_compunit.sc_idx($sc);
            my $reg    := $*REGALLOC.fresh_o();
            my $op     := $idx < 32768 ?? 'wval' !! 'wval_wide';
            MAST::InstructionList.new(
                [MAST::Op.new(
                    :op($op),
                    $reg,
                    MAST::IVal.new( :value($sc_idx) ),
                    MAST::IVal.new( :value($idx) )
                )],
                $reg,
                $MVM_reg_obj)
        }
    }

    multi method compile_node(QAST::Regex $node, :$want) {
        my $rxcomp := QAST::MASTRegexCompiler.new(:qastcomp(self), :regalloc($*REGALLOC));
        nqp::defined($want)
            ?? $rxcomp.as_mast($node, :want($want))
            !! $rxcomp.as_mast($node)
    }

    multi method compile_node($unknown, :$want) {
        nqp::die("Unknown QAST node type " ~ $unknown.HOW.name($unknown));
    }

    method annotated($ilist, $file, $line) {
        MAST::InstructionList.new([
            MAST::Annotated.new(:file($file), :line($line),
                :instructions($ilist.instructions))],
            $ilist.result_reg, $ilist.result_kind)
    }

    method type_to_register_kind($type) {
        if nqp::isnull($type) {
            $MVM_reg_obj
        }
        else {
            my int $primspec := nqp::objprimspec($type);
            if $primspec == 0 {
                $MVM_reg_obj
            }
            elsif $primspec == 1 {
                my int $size := nqp::objprimbits($type);
                if nqp::objprimunsigned($type) {
                    if $size == 64    { $MVM_reg_uint64 }
                    elsif $size == 32 { $MVM_reg_uint32 }
                    elsif $size == 16 { $MVM_reg_uint16 }
                    elsif $size == 8  { $MVM_reg_uint8 }
                    else { nqp::die("Unknown uint size $size") }
                }
                else {
                    if $size == 64    { $MVM_reg_int64 }
                    elsif $size == 32 { $MVM_reg_int32 }
                    elsif $size == 16 { $MVM_reg_int16 }
                    elsif $size == 8  { $MVM_reg_int8 }
                    else { nqp::die("Unknown int size $size") }
                }
            }
            elsif $primspec == 2 {
                my int $size := nqp::objprimbits($type);
                if $size == 64    { $MVM_reg_num64 }
                elsif $size == 32 { $MVM_reg_num32 }
                else { nqp::die("Unknown num size $size") }
            }
            else {
                $MVM_reg_str
            }
        }
    }
}

# Shim that makes a compiler instance and uses it to drive compilation.
class QAST::MASTCompiler {
    method to_mast($qast, %mast_frames = nqp::hash()) {
        MASTCompilerInstance.new.to_mast($qast, %mast_frames)
    }

    method operations() {
        QAST::MASTOperations
    }

    method instance() {
        MASTCompilerInstance
    }
}

# Register as the QAST compiler.
if nqp::isnull(nqp::getcomp('QAST')) {
    nqp::bindcomp('QAST', QAST::MASTCompiler);
}

my $buf := nqp::newtype(nqp::null(), 'VMArray');
nqp::composetype($buf, nqp::hash('array', nqp::hash('type', uint8)));
nqp::setmethcache($buf, nqp::hash(
    'new', method () {
        nqp::create($buf)
    },
    'push', method (uint8 $value) {
        nqp::push_i(self, $value)
    },
    'write_s', method (str $s) {
        my @subbuf := nqp::encode($s, 'utf8', nqp::create($buf));
        self.write_buf(@subbuf);
    },
    'write_double', method (num $n) {
        nqp::writenum(self, nqp::elems(self), $n, 0);
    },
    'write_uint32', method (uint32 $i) {
        self.push($i +& 0xFF);
        self.push(nqp::bitshiftr_i($i +& 0xFF00, 8));
        self.push(nqp::bitshiftr_i($i +& 0xFF0000, 16));
        self.push(nqp::bitshiftr_i($i +& 0xFF000000, 24));
    },
    'write_uint64', method (uint64 $i) {
        self.push($i +& 0xFF);
        self.push(nqp::bitshiftr_i($i +& 0xFF00, 8));
        self.push(nqp::bitshiftr_i($i +& 0xFF0000, 16));
        self.push(nqp::bitshiftr_i($i +& 0xFF000000, 24));
        self.push(nqp::bitshiftr_i($i +& 0xFF00000000, 32));
        self.push(nqp::bitshiftr_i($i +& 0xFF0000000000, 40));
        self.push(nqp::bitshiftr_i($i +& 0xFF000000000000, 48));
        self.push(nqp::bitshiftr_i($i +& 0xFF00000000000000, 56));
    },
    'write_uint32_at', method (uint32 $i, uint16 $pos) {
        nqp::bindpos_i(self, $pos, $i +& 0xFF);
        nqp::bindpos_i(self, $pos + 1, nqp::bitshiftr_i($i +& 0xFF00, 8));
        nqp::bindpos_i(self, $pos + 2, nqp::bitshiftr_i($i +& 0xFF0000, 16));
        nqp::bindpos_i(self, $pos + 3, nqp::bitshiftr_i($i +& 0xFF000000, 24));
    },
    'write_uint16', method (uint16 $i) {
        self.push($i +& 0xFF);
        self.push(nqp::bitshiftr_i($i +& 0xFF00, 8));
    },
    'write_uint8', method (uint8 $i) {
        self.push($i);
    },
    'write_buf', method (@buf) {
        for @buf {
            self.push($_);
        }
    },
    'dump', method () {
        note(nqp::elems(self) ~ " bytes");
        for self {
            note($_);
        }
    }
));

my %uint_map;
my %int_map;
my %num_map;
%int_map<8> := 1;
%int_map<16> := 2;
%int_map<32> := 3;
%int_map<64> := 4;
%num_map<32> := 5;
%num_map<64> := 6;
%uint_map<8> := 17;
%uint_map<16> := 18;
%uint_map<32> := 19;
%uint_map<64> := 20;
sub type_to_local_type($t) {
    my $spec := nqp::objprimspec($t);
    if $spec == 0 {
        8
    }
    elsif $spec == 1 {
        (nqp::objprimunsigned($t) ?? %uint_map !! %int_map){nqp::objprimbits($t)}
    }
    elsif $spec == 2 {
        %num_map{nqp::objprimbits($t)}
    }
    elsif $spec == 3 {
        7
    }
    else {
        nqp::die("Unknwon local type: " ~ $t.HOW.name($t) ~ ": " ~ $spec);
    }
}

class MoarVM::Callsites {
    has $!callsites;
    has %!callsites;
    has $!string-heap;
    has $!done;
    method BUILD(:$string-heap) {
        $!string-heap := $string-heap;
        $!callsites   := $buf.new;
        %!callsites   := nqp::hash;
        $!done        := 0;
    }

    my $callsite_arg_named := 32;
    method get_callsite_id(@flags, @args) {
        nqp::die('get_callsite_id after serialization!') if $!done;
        my uint16 $elems := nqp::elems(@flags);
        my uint16 $align := $elems % 2;
        my @named_idxs := nqp::list;
        my int $num_nameds := 0;
        my int $i := 0;
        for @flags {
            if $_ +& $callsite_arg_named {
                my $name := @args[$i + $num_nameds++];
                nqp::push(@named_idxs, $!string-heap.add(nqp::getattr($name, MAST::SVal, '$!value')));
            }
            $i++;
        }

        my $identifier := $buf.new;
        $identifier.write_buf(@flags);
        for @named_idxs {
            $identifier.write_uint16($_);
        }
        my $identifier_s := nqp::decode($identifier, 'iso-8859-1'); # just turn the buf into a str without real interpretation
        if nqp::existskey(%!callsites, $identifier_s) {
            return %!callsites{$identifier_s};
        }

        my $callsite-idx := nqp::elems(%!callsites);
        %!callsites{$identifier_s} := $callsite-idx;
        $!callsites.write_uint16($elems);
        for @flags {
            $!callsites.write_uint8($_);
        }
        if $align > 0 {
            $!callsites.write_uint8(0);
        }
        for @named_idxs {
            $!callsites.write_uint32($_);
        }
        $callsite-idx
    }

    method elems() {
        nqp::elems(%!callsites)
    }

    method size() {
        $!done := 1;
        nqp::elems($!callsites)
    }

    method bytecode() {
        $!callsites
    }
}

class MoarVM::Handler {
    has $!start_offset;
    has $!end_offset;
    has $!category_mask;
    has $!action;
    has $!label;
    has $!label_reg;
    has $!local;
    method BUILD(:$start_offset, :$end_offset, :$category_mask, :$action, :$label) {
        $!start_offset  := $start_offset;
        $!end_offset    := $end_offset;
        $!category_mask := $category_mask;
        $!action        := $action;
        $!label         := $label;
    }
    method start_offset()    { $!start_offset }
    method end_offset()      { $!end_offset }
    method category_mask()   { $!category_mask }
    method action()          { $!action }
    method label()           { $!label }
    method label_reg()       { $!label_reg }
    method set_label_reg($l) { $!label_reg := $l }
    method local()           { $!local }
    method set_local($l)     { $!local := $l }
}

class MoarVM::Frame {
    has str $!cuuid;
    has uint32 $!cuuid-idx;
    has str $!name;
    has uint32 $!name-idx;
    has $!writer;
    has $!mast;
    has $!bytecode;
    has uint32 $!bytecode-offset;
    has $!string-heap;
    has %!labels;
    has %!label-fixups;
    has $!callsites;
    has @!lexical-names;
    has $!annotations;
    has $!annotations-offset;
    has $!num-annotations;
    has @!handlers;

    method BUILD(:$cuuid, :$name, :$string-heap, :$callsites, :$annotations, :$writer, :$mast) {
        $!cuuid              := $cuuid;
        $!name               := $name;
        $!writer             := $writer;
        $!mast               := $mast;
        $!bytecode           := $buf.new;
        $!string-heap        := $string-heap;
        $!cuuid-idx          := $string-heap.add($!cuuid);
        $!name-idx           := $string-heap.add($!name);
        $!callsites          := $callsites;
        $!annotations        := $annotations;
        $!num-annotations    := 0;
        @!handlers           := nqp::list;
        %!labels             := nqp::hash;
        %!label-fixups       := nqp::hash;
        @!lexical-names      := nqp::list;
        $!annotations-offset := nqp::elems($!annotations);

        for nqp::getattr($!mast, MAST::Frame, '@!lexical_names') {
            nqp::push(@!lexical-names, self.add-string($_));
        }
        for $mast.instructions -> $i {
            self.write_instruction($i);
        }
    }
    method cuuid() { $!cuuid }
    method name() { $!name }
    method mast() { $!mast }
    method cuuid-idx() { $!cuuid-idx }
    method name-idx() { $!name-idx }
    method bytecode() { $!bytecode }
    method bytecode-length() { nqp::elems($!bytecode) }
    method bytecode-offset() { $!bytecode-offset }
    method annotations-offset() { $!annotations-offset }
    method set-bytecode-offset($offset) { $!bytecode-offset := $offset }
    method local_types() {
        nqp::getattr($!mast, MAST::Frame, '@!local_types')
    }
    method lexical_types() {
        nqp::getattr($!mast, MAST::Frame, '@!lexical_types')
    }
    method lexical-name-idxs() { @!lexical-names }
    method static_lex_values() {
        nqp::getattr($!mast, MAST::Frame, '@!static_lex_values')
    }
    method flags() {
        nqp::getattr($!mast, MAST::Frame, '$!flags');
    }
    method code_obj_sc_dep_idx() {
        nqp::getattr($!mast, MAST::Frame, '$!code_obj_sc_dep_idx');
    }
    method code_obj_sc_idx() {
        nqp::getattr($!mast, MAST::Frame, '$!code_obj_sc_idx');
    }
    method num-annotations() { $!num-annotations }
    method handlers() { @!handlers }
    method size() {
        my uint32 $size := 50
            + 2  * nqp::elems(self.local_types)
            + 6  * nqp::elems(self.lexical_types)
            + 12 * nqp::elems(self.static_lex_values) / 4;
        for @!handlers {
            $size := $size + 20;
            if $_.category_mask +& 4096 {
                $size := $size + 2;
            }
        }
        $size
    }

    method add-string(str $s) {
        $!string-heap.add($s);
    }
    method resolve-label($label) {
        %!labels{nqp::objectid($label)}
    }

    proto method write_instruction($i) { * }
    multi method write_instruction(MAST::Op $i) {
        if $i.op == %MAST::Ops::codes<const_i64> {
            my $value := nqp::getattr($i.operands[1], MAST::IVal, '$!value');
            if -32767 < $value && $value < 32768 {
                $!bytecode.write_uint16(%MAST::Ops::codes<const_i64_16>);
                self.write_operand($i, 0, $i.operands[0]);
                $!bytecode.write_uint16($value);
                return;
            }
            elsif -2147483647 < $value && $value < 2147483647 {
                $!bytecode.write_uint16(%MAST::Ops::codes<const_i64_16>);
                self.write_operand($i, 0, $i.operands[0]);
                $!bytecode.write_uint32($value);
                return;
            }
        }
        $!bytecode.write_uint16($i.op);
        my int $idx := 0;
        for $i.operands -> $o {
            self.write_operand($i, $idx++, $o);
        }
    }
    multi method write_instruction(MAST::Label $i) {
        my $pos := nqp::elems($!bytecode);
        my $key := nqp::objectid($i);
        if %!labels{$key} {
            nqp::die("Duplicate label at $pos");
        }
        %!labels{$key} := $pos;
        if nqp::existskey(%!label-fixups, $key) {
            for %!label-fixups{$key} {
                $!bytecode.write_uint32_at($pos, $_);
            }
        }
    }

    my $MVM_reg_int8  := 1;
    my $MVM_reg_int16 := 2;
    my $MVM_reg_int32 := 3;
    my $MVM_reg_int64 := 4;
    my $MVM_reg_num32 := 5;
    my $MVM_reg_num64 := 6;
    my $MVM_reg_str   := 7;
    my $MVM_reg_obj   := 8;

    my $MVM_operand_literal := 0;
    my $MVM_operand_read_reg := 1;
    my $MVM_operand_write_reg := 2;
    my $MVM_operand_read_lex := 3;
    my $MVM_operand_write_lex := 4;
    my $MVM_operand_rw_mask := 7;
    my $MVM_operand_int8 := 8;
    my $MVM_operand_int16 := 16;
    my $MVM_operand_int32 := 24;
    my $MVM_operand_int64 := 32;
    my $MVM_operand_num32 := 40;
    my $MVM_operand_num64 := 48;
    my $MVM_operand_str := 56;
    my $MVM_operand_obj := 64;
    my $MVM_operand_ins := 72;
    my $MVM_operand_type_var := 80;
    my $MVM_operand_lex_outer := 88;
    my $MVM_operand_coderef := 96;
    my $MVM_operand_callsite := 104;
    my $MVM_operand_type_mask := 120;
    my $MVM_operand_spesh_slot := 128;
    my $MVM_operand_uint8 := 136;
    my $MVM_operand_uint16 := 144;
    my $MVM_operand_uint32 := 152;
    my $MVM_operand_uint64 := 160;

    my @kind_to_args := [0,
        $Arg::int,  # $MVM_reg_int8            := 1;
        $Arg::int,  # $MVM_reg_int16           := 2;
        $Arg::int,  # $MVM_reg_int32           := 3;
        $Arg::int,  # $MVM_reg_int64           := 4;
        $Arg::num,  # $MVM_reg_num32           := 5;
        $Arg::num,  # $MVM_reg_num64           := 6;
        $Arg::str,  # $MVM_reg_str             := 7;
        $Arg::obj   # $MVM_reg_obj             := 8;
    ];
    method compile_operand($rw, $type, $arg) {
        if $rw == $MVM_operand_literal {
            if $type == $MVM_operand_int64 {
                $!bytecode.write_uint64(nqp::getattr($arg, MAST::IVal, '$!value'));
            }
            elsif $type == $MVM_operand_int16 {
                my $value := nqp::getattr($arg, MAST::IVal, '$!value');
                if $value < -32768 || 32767 < $value {
                    nqp::die("Value outside range of 16-bit MAST::IVal");
                }
                $!bytecode.write_uint16($value);
            }
            elsif $type == $MVM_operand_num64 {
                $!bytecode.write_double(nqp::getattr($arg, MAST::NVal, '$!value'));
            }
            elsif $type == $MVM_operand_str {
                $!bytecode.write_uint32(self.add-string(nqp::getattr($arg, MAST::SVal, '$!value')));
            }
            elsif $type == $MVM_operand_ins {
                my $key := nqp::objectid($arg);
                if nqp::existskey(%!labels, $key) {
                    $!bytecode.write_uint32(%!labels{$key});
                }
                else {
                    my @fixups := nqp::existskey(%!label-fixups, $key)
                        ?? %!label-fixups{$key}
                        !! (%!label-fixups{$key} := nqp::list);
                    nqp::push(@fixups, nqp::elems($!bytecode));
                    $!bytecode.write_uint32(0);
                }
            }
            elsif $type == $MVM_operand_coderef {
                nqp::die("Expected MAST::Frame, but didn't get one")
                    unless $arg.isa(MAST::Frame);
                $!bytecode.write_uint16($!writer.get_frame_index($arg));
            }
            else {
                nqp::die("literal operand type $type NYI");
            }
        }
        elsif $rw == $MVM_operand_read_reg || $rw == $MVM_operand_write_reg {
            nqp::die("Expected MAST::Local, but didn't get one")
                unless $arg.isa(MAST::Local);

            my @local_types := self.local_types;
            my $index := $arg.index;
            if $arg.index > nqp::elems(self.local_types) {
                nqp::die("MAST::Local index out of range");
            }
            my $local_type := @local_types[$index];
            if ($type != nqp::bitshiftl_i(type_to_local_type($local_type), 3) && $type != $MVM_operand_type_var) {
                nqp::die("MAST::Local of wrong type specified");
            }

            $!bytecode.write_uint16($index);
        }
        elsif $rw == $MVM_operand_read_lex || $rw == $MVM_operand_write_lex {
            nqp::die("Expected MAST::Lexical, but didn't get one")
                unless $arg.isa(MAST::Lexical);
            $!bytecode.write_uint16($arg.index);
            $!bytecode.write_uint16(nqp::getattr($arg, MAST::Lexical, '$!frames_out'));
        }
        else {
            nqp::die("Unknown operand mode $rw cannot be compiled");
        }
    }
    multi method write_instruction(MAST::Call $i) {
        my $target := nqp::getattr($i, MAST::Call, '$!target');
        my @flags  := nqp::getattr($i, MAST::Call, '@!flags');
        my @args   := nqp::getattr($i, MAST::Call, '@!args');
        my $result := nqp::getattr($i, MAST::Call, '$!result');
        my $op     := nqp::getattr($i, MAST::Call, '$!op');
        my $callsite-id := $!callsites.get_callsite_id(@flags, @args);

        $!bytecode.write_uint16(%MAST::Ops::codes<prepargs>);
        $!bytecode.write_uint16($callsite-id);

        my $call_op :=
            $op == 1
                ?? %MAST::Ops::codes<nativeinvoke_v>
                !! $op == 2
                    ?? %MAST::Ops::codes<speshresolve>
                    !! %MAST::Ops::codes<invoke_v>;

        my uint16 $arg_pos := $op == 1 ?? 1 !! 0;
        my uint16 $arg_out_pos := 0;
        for @flags -> $flag {
            if $flag +& $Arg::named {
                $!bytecode.write_uint16(%MAST::Ops::codes<argconst_s>);
                $!bytecode.write_uint16($arg_out_pos);
                self.compile_operand(0, $MVM_operand_str, @args[$arg_pos], $i);
                $arg_pos++;
                $arg_out_pos++;
            }
            elsif $flag +& $Arg::flat {
                nqp::die("Illegal flat arg to speshresolve") if $op == 2;
            }

            if $op == 2 && !($flag +& $Arg::obj) {
                nqp::die("Illegal non-object arg to speshresolve:\n" ~ $i.dump);
            }
            if $flag +& $Arg::obj {
                $!bytecode.write_uint16(%MAST::Ops::codes<arg_o>);
                $!bytecode.write_uint16($arg_out_pos);
                self.compile_operand($MVM_operand_read_reg, $MVM_operand_obj, @args[$arg_pos]);
            }
            elsif $flag +& $Arg::str {
                $!bytecode.write_uint16(%MAST::Ops::codes<arg_s>);
                $!bytecode.write_uint16($arg_out_pos);
                self.compile_operand($MVM_operand_read_reg, $MVM_operand_str, @args[$arg_pos]);
            }
            elsif $flag +& $Arg::int {
                nqp::die("int arg NYI");
            }
            elsif $flag +& $Arg::num {
                nqp::die("num arg NYI");
            }
            else {
                nqp::die("Unhandled arg type $flag");
            }
            $arg_pos++;
            $arg_out_pos++;
        }

	my $res_type;
        if $op == 2 {
            nqp::die("op 2 NYI");
        }
        elsif $result.isa(MAST::Local) {
            my @local_types := self.local_types;
            my $index := $result.index;
            if $result.index > nqp::elems(self.local_types) {
                nqp::die("MAST::Local index out of range");
            }
            my $op_name := $op == 0 ?? 'invoke_' !! 'nativeinvoke_';
            if @local_types[$index].isa(int) {
                $op_name := $op_name ~ 'i';
                $res_type := $MVM_operand_int64;
            }
            elsif @local_types[$index].isa(num) {
                $op_name := $op_name ~ 'n';
                $res_type := $MVM_operand_num64;
            }
            elsif @local_types[$index].isa(str) {
                $op_name := $op_name ~ 's';
                $res_type := $MVM_operand_str;
            }
            elsif nqp::objprimspec(@local_types[$index]) == 0 { # object
                $op_name := $op_name ~ 'o';
                $res_type := $MVM_operand_obj;
            }
            else {
                nqp::die('Invalid MAST::Local type ' ~ @local_types[$index] ~ ' for return value ' ~ $index);
            }
            $call_op := %MAST::Ops::codes{$op_name};
        }

        $!bytecode.write_uint16($call_op);
        if $call_op != %MAST::Ops::codes<invoke_v> && $call_op != %MAST::Ops::codes<nativeinvoke_v> {
            self.compile_operand($MVM_operand_read_reg, $res_type, $result);
        }
        if $op == 2 {
            self.compile_operand($MVM_operand_literal, $MVM_operand_str, $target);
        }
        else {
            self.compile_operand($MVM_operand_read_reg, $MVM_operand_obj, $target);
        }
        if $op == 1 {
            self.compile_operand($MVM_operand_read_reg, $MVM_operand_obj, @args[0]);
        }
    }
    multi method write_instruction(MAST::Annotated $i) {
        $!annotations.write_uint32(nqp::elems($!bytecode));
        $!annotations.write_uint32(self.add-string(nqp::getattr($i, MAST::Annotated, '$!file')));
        $!annotations.write_uint32(nqp::getattr($i, MAST::Annotated, '$!line'));
        for nqp::getattr($i, MAST::Annotated, '@!instructions') {
            self.write_instruction($_);
        }
        $!num-annotations++;
    }
    multi method write_instruction(MAST::HandlerScope $i) {
        my $start := nqp::elems($!bytecode);
        for nqp::getattr($i, MAST::HandlerScope, '@!instructions') {
            self.write_instruction($_);
        }
        my $category_mask := nqp::getattr($i, MAST::HandlerScope, '$!category_mask');
        my $action := nqp::getattr($i, MAST::HandlerScope, '$!action');
        my $handler := MoarVM::Handler.new(
            :start_offset($start),
            :end_offset(nqp::elems($!bytecode)),
            :$category_mask,
            :$action,
            :label(nqp::getattr($i, MAST::HandlerScope, '$!goto_label')),
        );
        nqp::push(@!handlers, $handler);
        if $category_mask +& 4096 { # MVM_EX_CATEGORY_LABELED
            my $l := nqp::getattr($i, MAST::HandlerScope, '$!label_local');
            nqp::die('MAST::Local required for HandlerScope with loop label')
                unless $l.isa(MAST::Local);
            nqp::die('MAST::Local index out of range in HandlerScope')
                if $l.index >= nqp::elems(self.local_types);
            nqp::die('MAST::Local for HandlerScope must be an object')
                if type_to_local_type(self.local_types()[$l.index]) != $MVM_reg_obj;
            $handler.set_label_reg($l.index);
        }
        if $action == 2 { # HANDLER_INVOKE
            $handler.set_local(nqp::getattr(
                nqp::getattr($i, MAST::HandlerScope, '$!block_local'),
                MAST::Local,
                '$!index'
            ));
        }
        elsif $action == 0 || $action == 1 { # HANDLER_UNWIND_GOTO || HANDLER_UNWIND_GOTO_OBJ 
            $handler.set_local(0);
        }
        else {
            nqp::die('Invalid action code for handler scope');
        }
    }
    multi method write_instruction($i) {
        note("Instruction " ~ $i.HOW.name($i) ~ " NYI");
        note($i.dump);
    }
    method write_operand($i, $idx, $o) {
        my $flags := nqp::atpos_i(@MAST::Ops::values, nqp::atpos_i(@MAST::Ops::offsets, $i.op) + $idx);
        my $rw    := $flags +& $MVM_operand_rw_mask;
        my $type  := $flags +& $MVM_operand_type_mask;
        self.compile_operand($rw, $type, $o);
    }
}

class MoarVM::StringHeap {
    has @!strings;
    has %!strings;
    has $!done;
    method BUIILD() {
        @!strings := list();
        $!done := 0;
    }
    method add(str $s) {
        if $!done {
            nqp::die("add after size!");
        }
        if nqp::existskey(%!strings, $s) {
            return %!strings{$s};
        }

        my int $utf8 := 0;
        my int $i := 0;
        my $chars := nqp::chars($s);
        while $i < $chars {
            my $g := nqp::getcp_s($s, $i);
            if $g < 0 || $g >= 0xff || $g == 0x0d {
                $utf8 := 1;
                last;
            }
            $i++;
        }

        my $encoded := nqp::encode($s, ($utf8 ?? "utf8" !! "iso-8859-1"), nqp::create($buf));

        my $str := $buf.new;
        $str.write_uint32(nqp::elems($encoded) * 2 + $utf8); # LSB is UTF-8 flag
        my $pad := 4 - nqp::elems($encoded) % 4;
        $pad := 0 if $pad == 4;
        $encoded.push(0) while $pad--;
        $str.write_buf($encoded);
        nqp::push(@!strings, $str);

        %!strings{$s} := nqp::elems(@!strings) - 1
    }
    method size() {
        $!done := 1;
        my uint32 $size := 0;
        for @!strings {
            $size := $size + nqp::elems($_);
        }
        $size
    }
    method elems() {
        nqp::elems(@!strings)
    }
    method strings() {
        @!strings
    }
}

sub align_section($size) {
    my uint32 $aligned := nqp::ceil_n($size / 8) * 8;
    $aligned
}
class MoarVM::BytecodeWriter {
    has $!mbc;
    has $!string-heap;
    has $!callsites;
    has $!annotations;
    has $!compunit;
    has @!frames;
    has $!bytecode;
    has @!sc_handle_idxs;
    method BUILD(:$string-heap, :$callsites, :$annotations, :$compunit) {
        $!mbc            := $buf.new;
        $!bytecode       := $buf.new;
        $!string-heap    := $string-heap;
        $!callsites      := $callsites;
        $!annotations    := $annotations;
        $!compunit       := $compunit;
        @!frames         := nqp::list;
        @!sc_handle_idxs := nqp::list;
        self.collect_sc_deps;
    }
    method add-string(str $s) {
        $!string-heap.add($s);
    }
    method add-frame(MoarVM::Frame $f) {
        nqp::push(@!frames, $f);
    }
    method write_header() {
        # 92 bytes
        my $hll := self.add-string($!compunit.hll);

        my uint32 $header_size := +align_section(8 + 21 * 4);
        my uint32 $frames := nqp::elems(@!frames);
        my uint32 $frames_size := 0;
        for @!frames {
            my uint32 $size := +$_.size;
            $frames_size := $frames_size + $size;
        }
        $frames_size := +align_section($frames_size);
        my uint32 $callsites_size := +align_section($!callsites.size);
        my uint32 $string_heap_size := +align_section($!string-heap.size);
        my @sc_handles := nqp::getattr($!compunit, MAST::CompUnit, '@!sc_handles');
        my uint32 $sc_deps_size := +align_section(nqp::elems(@sc_handles) * 4);
        my uint32 $extops_size := 0;
        my uint32 $bytecode_size := +align_section(nqp::elems($!bytecode));
        my uint32 $annotations_size := nqp::elems($!annotations);

        my uint32 $offset := $header_size;
        $!mbc.write_s("MOARVM\r\n");
        $!mbc.write_uint32(5); # Version

        $!mbc.write_uint32($offset); # Offset of SC dependencies table
        $!mbc.write_uint32(nqp::elems(@sc_handles)); # Number of entries in SC dependencies table
        $offset := $offset + $sc_deps_size;

        $!mbc.write_uint32($offset); # Offset of extension ops table
        $!mbc.write_uint32(0); # Number of entries in extension ops table
        $offset := $offset + $extops_size;

        $!mbc.write_uint32($offset); # Offset of frames segment
        $!mbc.write_uint32($frames); # Number of frames
        $offset := $offset + $frames_size;

        $!mbc.write_uint32($offset); # Offset of callsites segment
        $!mbc.write_uint32($!callsites.elems); # Number of callsites
        $offset := $offset + $callsites_size;

        $!mbc.write_uint32($offset); # Offset of strings heap
        $!mbc.write_uint32($!string-heap.elems); # Number of strings in heap
        $offset := $offset + $string_heap_size;

        $!mbc.write_uint32(0); # Offset of SC data segment
        $!mbc.write_uint32(0); # Number of entries in SC data segment

        $!mbc.write_uint32($offset); # Offset of bytecode segment
        $!mbc.write_uint32(nqp::elems($!bytecode)); # Length of bytecode segment
        $offset := $offset + $bytecode_size;

        $!mbc.write_uint32($offset); # Offset of annotation segment
        $!mbc.write_uint32($annotations_size); # Length of annotation segment

        $!mbc.write_uint32($hll); # HLL Name
        my $main_frame := $!compunit.main_frame;
        if $main_frame {
            my uint32 $main_frame_idx := self.get_frame_index($main_frame) + 1;
            $!mbc.write_uint32($main_frame_idx); # Main entry point frame index + 1
        }
        else {
            $!mbc.write_uint32(0); # No main entry point frame
        }
        my $load_frame := $!compunit.load_frame;
        if $load_frame {
            my uint32 $load_frame_idx := self.get_frame_index($load_frame) + 1;
            $!mbc.write_uint32($load_frame_idx); # Library load frame index + 1
        }
        else {
            $!mbc.write_uint32(0); # No library load frame
        }
        my $deserialize_frame := $!compunit.deserialize_frame;
        if $deserialize_frame {
            my uint32 $deserialize_frame_idx := self.get_frame_index($deserialize_frame) + 1;
            $!mbc.write_uint32($deserialize_frame_idx); # Deserialization frame index + 1
        }
        else {
            $!mbc.write_uint32(0); # No deserialize frame
        }
    }
    method write_frame(MoarVM::Frame $f, int $idx) {
        # 11 * 4 + 3 * 2 = 50
        my @local_types := $f.local_types;
        my @lexical_types := $f.lexical_types;
        my @lexical_names := $f.lexical-name-idxs;
        my @static_lex_values := $f.static_lex_values;
        my uint16 $num_static_lex_values := nqp::elems(@static_lex_values) / 4;
        my @handlers := $f.handlers;
        $!mbc.write_uint32($f.bytecode-offset); # Bytecode segment offset
        $!mbc.write_uint32($f.bytecode-length); # Bytecode length in bytes
        $!mbc.write_uint32(nqp::elems(@local_types)); # Number of locals/registers
        $!mbc.write_uint32(nqp::elems(@lexical_types)); # Number of lexicals
        $!mbc.write_uint32($f.cuuid-idx); # Compilation unit unique ID (string heap index)
        $!mbc.write_uint32($f.name-idx); # Name (string heap index)
        my $outer := nqp::getattr($f.mast, MAST::Frame, '$!outer');
        if nqp::defined($outer) {
            $!mbc.write_uint16(self.get_frame_index($outer)); # Outer
        }
        else {
            $!mbc.write_uint16($idx); # Outer
        }
        $!mbc.write_uint32($f.annotations-offset); # Annotation segment offset
        $!mbc.write_uint32($f.num-annotations); # Number of annotations
        $!mbc.write_uint32(nqp::elems(@handlers)); # Number of handlers
        $!mbc.write_uint16($f.flags); # Frame flag bits
        $!mbc.write_uint16($num_static_lex_values); # Number of entries in static lexical values table
        if $f.flags +& 4 { # FRAME_FLAG_HAS_CODE_OBJ
            $!mbc.write_uint32(nqp::add_i($f.code_obj_sc_dep_idx, 1)); # Code object SC dependency index + 1
            $!mbc.write_uint32($f.code_obj_sc_idx); # SC object index
        }
        else {
            $!mbc.write_uint32(0); # No code object SC dependency index
            $!mbc.write_uint32(0); # No SC object index
        }
        for @local_types {
            $!mbc.write_uint16(type_to_local_type($_));
        }
        my int $i := 0;
        for @lexical_types {
            $!mbc.write_uint16(type_to_local_type($_));
            $!mbc.write_uint32(@lexical_names[$i++]);
        }
        for @handlers {
            $!mbc.write_uint32($_.start_offset);
            $!mbc.write_uint32($_.end_offset);
            $!mbc.write_uint32($_.category_mask);
            $!mbc.write_uint16($_.action);
            $!mbc.write_uint16($_.local);
            $!mbc.write_uint32($f.resolve-label($_.label));
            if $_.category_mask +& 4096 { # MVM_EX_CATEGORY_LABELED
                $!mbc.write_uint16($_.label_reg);
            }
        }
        $i := 0;
        while ($i < $num_static_lex_values) {
            $!mbc.write_uint16(nqp::atpos_i(@static_lex_values, 4 * $i));
            $!mbc.write_uint16(nqp::atpos_i(@static_lex_values, 4 * $i + 1));
            $!mbc.write_uint32(nqp::atpos_i(@static_lex_values, 4 * $i + 2));
            $!mbc.write_uint32(nqp::atpos_i(@static_lex_values, 4 * $i + 3));
            $i++;
        }
    }
    method collect_bytecode() {
        for @!frames {
            $_.set-bytecode-offset(nqp::elems($!bytecode));
            $!bytecode.write_buf($_.bytecode);
        }
    }
    method write_callsites() {
        $!mbc.write_buf($!callsites.bytecode);
    }
    method write_string_heap() {
        for $!string-heap.strings {
            $!mbc.write_buf($_);
        }
    }
    method collect_sc_deps() {
        my @sc_handles := nqp::getattr($!compunit, MAST::CompUnit, '@!sc_handles');
        for @sc_handles {
            nqp::push(@!sc_handle_idxs, self.add-string($_));
        }
    }
    method write_sc_deps_table() {
        for @!sc_handle_idxs {
            $!mbc.write_uint32($_);
        }
    }
    method write_annotations() {
        $!mbc.write_buf($!annotations);
    }
    method align() {
        my $off := nqp::elems($!mbc) % 8;
        if $off == 0 {
            return;
        }
        $off := 8 - $off;
        while $off-- > 0 {
            $!mbc.write_uint8(0);
        }
    }
    method assemble() {
        self.collect_bytecode;

        self.write_header;
        self.align;
        self.write_sc_deps_table;
        self.align;
        my int $idx := 0;
        for @!frames {
            self.write_frame($_, $idx++);
        }
        self.align;
        self.write_callsites;
        self.align;
        self.write_string_heap;
        self.align;
        $!mbc.write_buf($!bytecode);
        self.align;
        self.write_annotations;
        self.align;
    }
    method get_frame_index(MAST::Frame $f) {
        my $idx := 0;
        for nqp::getattr($!compunit, MAST::CompUnit, '@!frames') {
            return $idx if nqp::objectid($_) eq nqp::objectid($f);
            $idx++;
        }
        nqp::die("Could not find frame " ~ $f.name);
    }
    method save($filename) {
        my $io := nqp::open($filename, 'w');
        nqp::writefh($io, $!mbc);
        nqp::closefh($io);
    }
    method bytecode() {
        $!mbc
    }
}

class MASTBytecodeAssembler {
    method node_hash() {
        nqp::hash(
            'CompUnit',         MAST::CompUnit,
            'Frame',            MAST::Frame,
            'Op',               MAST::Op,
            'ExtOp',            MAST::ExtOp,
            'SVal',             MAST::SVal,
            'IVal',             MAST::IVal,
            'NVal',             MAST::NVal,
            'Label',            MAST::Label,
            'Local',            MAST::Local,
            'Lexical',          MAST::Lexical,
            'Call',             MAST::Call,
            'Annotated',        MAST::Annotated,
            'HandlerScope',     MAST::HandlerScope
        )
    }

    method assemble_to_file($mast, $file) {
        nqp::masttofile($mast, self.node_hash(), $file)
    }

    method assemble_and_load($mast) {
        my @cu_frames := nqp::getattr($mast, MAST::CompUnit, '@!frames');
        my $string-heap := MoarVM::StringHeap.new;
        my $callsites := MoarVM::Callsites.new(:$string-heap);
        my $annotations := $buf.new;
        my $writer := MoarVM::BytecodeWriter.new(:$string-heap, :$callsites, :$annotations, :compunit($mast));
        my $i := 0;
        for @cu_frames {
            note("Adding frame " ~ $_.name);
            note($_.dump);
            my $frame := MoarVM::Frame.new(
                :cuuid($_.cuuid),
                :name($_.name),
                :mast($_),
                :$string-heap,
                :$callsites,
                :$annotations,
                :$writer,
            );
            $writer.add-frame($frame);
        }
        $writer.assemble;
        nqp::buffertocu($writer.bytecode);
    }
}

if nqp::isnull(nqp::getcomp('MAST')) {
    nqp::bindcomp('MAST', MASTBytecodeAssembler);
}
