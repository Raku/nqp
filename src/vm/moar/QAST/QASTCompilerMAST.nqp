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
            else { nqp::die("unhandled reg kind $kind") }

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

        method release_register($reg, $kind, $force = 0) {
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
            nqp::die("unhandled reg kind $kind");
        }
    }

    # Holds information about the QAST::Block we're currently compiling.
    my class BlockInfo {
        has $!qast;                 # The QAST::Block
        has $!outer;                # Outer block's BlockInfo
        has %!local_names_by_index; # Locals' names by their indexes
        has %!locals;               # Mapping of local names to locals
        has %!local_kinds;          # Mapping of local registers to kinds
        has %!localrefs;            # Mapping of localref names to locals
        has %!localref_kinds;       # Mapping of localref registers to kinds
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
            %!localrefs := nqp::hash();
            %!localref_kinds := nqp::hash();
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
            if nqp::existskey(%!locals, $name) || nqp::existskey(%!localrefs, $name) ||
                    $temporary && nqp::existskey(%*STMTTEMPS, $name) {
                nqp::die("Local (or localref) '$name' already declared");
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

        method register_localref($var) {
            my $name := $var.name;
            my $temporary := ?$*INSTMT;
            if nqp::existskey(%!localrefs, $name) || nqp::existskey(%!locals, $name) ||
                    $temporary && nqp::existskey(%*STMTTEMPS, $name) {
                nqp::die("Localref (or local) '$name' already declared");
            }
            my $kind := $!compiler.type_to_register_kind($var.returns);
            %!localref_kinds{$name} := $kind;
            # pass a 1 meaning get a Totally New MAST::Local
            my $localref := $*REGALLOC.fresh_register($MVM_reg_obj, !$temporary);
            %!localrefs{$name} := $localref;
            %!local_names_by_index{$localref.index} := $name;
            if $temporary {
                %*STMTTEMPS{$name} := $localref;
            }
            $localref;
        }

        # returns whether a MAST::Local is a variable in this block
        method is_var($local) {
            nqp::existskey(%!local_names_by_index, $local.index)
        }

        method return_kind(*@value) {
            if @value {
                nqp::die("inconsistent immediate block return type")
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
        method localref($name) { %!localrefs{$name} }
        method localref_kind($name) { %!localref_kinds{$name} }
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
            nqp::die("could not resolve lexical $name");
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
                else {
                    nqp::die("Unknown coercion case for num; got: "~$got);
                }
            }
            elsif $desired == $MVM_reg_str {
                if $got == $MVM_reg_int64 {
                    push_op($il, 'coerce_is', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_num64 {
                    push_op($il, 'coerce_ns', $res_reg, $reg);
                }
                elsif $got == $MVM_reg_void {
                    push_op($il, 'const_s', $res_reg, MAST::SVal.new( :value('') ));
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

    method as_mast($qast, :$want) {
        my $*WANT;
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
        # Should have a single child which is the outer block.
        if +@($cu) != 1 || !nqp::istype($cu[0], QAST::Block) {
            nqp::die("QAST::CompUnit should have one child that is a QAST::Block");
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

            # Set exit handler and thunk flags if needed.
            if $node.has_exit_handler {
                $frame.has_exit_handler(1);
            }
            if $node.is_thunk {
                $frame.is_thunk(1);
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
                for $block.cloned_inners() {
                    my $frame := %!mast_frames{$_.key};
                    my $reg   := $_.value;
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
                        nqp::die("Param scope must be 'local' or 'lexical'")
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
                                    nqp::die("Can only support a single fallback name for a named parameter");
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
        nqp::die("resultchild out of range")
            if (nqp::defined($resultchild) && $resultchild >= +@($node));
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
        nqp::die("resultchild out of range")
            if (nqp::defined($resultchild) && $resultchild >= +@($node));
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
                $last_stmt := nqp::defined($WANT)
                    ?? self.as_mast($_, :want($WANT))
                    !! self.as_mast($_);
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
                my $line := HLL::Compiler.lineof($node.orig(), $node.from(), :cache(1));
                nqp::push(@all_ins, MAST::Annotated.new(
                    :$!file, :$line, :instructions($last_stmt.instructions) ));
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
        nqp::die("register types $a and $b don't match") unless $a == $b;
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

    my @localref_opnames := [
        '',
        'getregref_i8',
        'getregref_i16',
        'getregref_i32',
        'getregref_i',
        'getregref_n32',
        'getregref_n',
        'getregref_s',
        '', '',  '',  '',  '',  '',  '',  '',  '',
        'getregref_u8',
        'getregref_u16',
        'getregref_u32',
        'getregref_u'
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
                elsif $scope eq 'localref' {
                    $*BLOCK.register_localref($node);
                }
                else {
                    nqp::die("Cannot declare variable with scope '$scope'; use one of 'local', 'lexical', 'localref' or 'lexicalref'");
                }
            }
            elsif $decl eq 'static' {
                if $scope ne 'lexical' {
                    nqp::die("Can only use 'static' decl with scope 'lexical'");
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
                    nqp::die("Can only use 'contvar' decl with scope 'lexical' or 'local'");
                }
            }
            elsif $decl eq 'statevar' {
                if $scope ne 'lexical' {
                    nqp::die("Can only use 'statevar' decl with scope 'lexical'");
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

        # Now go by scope.
        my $name := $node.name;
        my @ins;
        if $scope eq 'local' {
            my $local := $*BLOCK.local($name);
            my $localref := $*BLOCK.localref($name);

            if $local {
                $res_kind := $*BLOCK.local_kind($name);
                if $*BINDVAL {
                    my $valmast := self.as_mast_clear_bindval($*BINDVAL, :want($res_kind));
                    push_ilist(@ins, $valmast);
                    push_op(@ins, 'set', $local, $valmast.result_reg);
                    $*REGALLOC.release_register($valmast.result_reg, $res_kind);
                }
                $res_reg := $local;
            } elsif $localref {
                if $*BINDVAL {
                    nqp::die('Cannot bind to QAST::Var resolving to a localref');
                }
                $res_kind := $*BLOCK.localref_kind($name);
                $res_reg := $*REGALLOC.fresh_register($res_kind);
                push_op(@ins, @decont_opnames[@kind_to_op_slot[$res_kind]], $res_reg, $localref);
            }
            else {
                nqp::die("Cannot reference undeclared local '$name'");
            }
        }
        elsif $scope eq 'localref' {
            my $localref := $*BLOCK.localref($name);
            my $local    := $*BLOCK.local($name);
            if $localref {
                $res_kind := $MVM_reg_obj;
                if $*BINDVAL {
                    my $valmast := self.as_mast_clear_bindval($*BINDVAL, :want($MVM_reg_obj));
                    push_ilist(@ins, $valmast);
                    push_op(@ins, 'set', $localref, $valmast.result_reg);
                    $*REGALLOC.release_register($valmast.result_reg, $MVM_reg_obj);
                }
                $res_reg := $localref;
            }
            elsif $local {
                if $*BINDVAL {
                    nqp::die('Cannot bind to a local resolving to a localref');
                }
                my $local_kind := $*BLOCK.local_kind($name);
                if $local_kind == $MVM_reg_obj {
                    nqp::die('Cannot take a reference to non-native local ' ~ $name);
                }
                $res_reg := $*REGALLOC.fresh_register($MVM_reg_obj);
                $res_kind := $MVM_reg_obj;
                push_op(@ins, @localref_opnames[$local_kind], $res_reg, $local);
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
                nqp::die("An attribute lookup needs an object and a class handle");
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
                nqp::die("An attribute reference needs an object and a class handle");
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
        nqp::die("expected QAST constant; got op " ~ $op.op);
    }
    multi method as_mast_constant(QAST::Node $qast) {
        nqp::die("expected QAST constant; didn't get one");
    }

    multi method compile_node(QAST::Want $node, :$want) {
        # If we're not in a coercive context, take the default.
        self.as_mast($node[0])
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
                    else { nqp::die("Unknown int size $size") }
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
        nqp::masttocu($mast, self.node_hash())
    }
}

if nqp::isnull(nqp::getcomp('MAST')) {
    nqp::bindcomp('MAST', MASTBytecodeAssembler);
}
 
