class QAST::Compiler is HLL::Compiler {
    # Holds information about the current register usage, for when
    # we're allocating tempories.
    my class RegAlloc {
        has int $!cur_p;
        has int $!cur_s;
        has int $!cur_i;
        has int $!cur_n;
        
        method new($cur?) {
            my $obj := nqp::create(self);
            $cur ??
                $obj.BUILD($cur.cur_p, $cur.cur_s, $cur.cur_i, $cur.cur_n) !!
                $obj.BUILD(5000, 5000, 5000, 5000);
            $obj
        }
        
        method handler_allocator() {
            my $obj := nqp::create(self);
            $obj.BUILD(10000, 10000, 10000, 10000);
            $obj
        }
        
        method BUILD($p, $s, $i, $n) {
            $!cur_p := $p;
            $!cur_s := $s;
            $!cur_i := $i;
            $!cur_n := $n;
        }
        
        method fresh_p() {
            $!cur_p := $!cur_p + 1;
            '$P' ~ $!cur_p
        }
        method fresh_s() {
            $!cur_s := $!cur_s + 1;
            '$S' ~ $!cur_s
        }
        method fresh_i() {
            $!cur_i := $!cur_i + 1;
            '$I' ~ $!cur_i
        }
        method fresh_n() {
            $!cur_n := $!cur_n + 1;
            '$N' ~ $!cur_n
        }
        
        method cur_p() { $!cur_p }
        method cur_s() { $!cur_s }
        method cur_i() { $!cur_i }
        method cur_n() { $!cur_n }
    }
    
    # Holds information about the QAST::Block we're currently compiling.
    my class BlockInfo {
        has $!qast;             # The QAST::Block
        has $!outer;            # Outer block's BlockInfo
        has @!params;           # QAST::Var nodes of params
        has @!locals;           # QAST::Var nodes of declared locals
        has @!lexicals;         # QAST::Var nodes of declared lexicals
        has %!local_types;      # Mapping of local registers to type names
        has %!lexical_types;    # Mapping of lexical names to types
        has %!lexical_regs;     # Mapping of lexical names to registers
        has %!reg_types;        # Mapping of all registers to types
        has int $!param_idx;    # Current lexical parameter index
        has @!loadlibs;         # Libraries to load for the target POST::Block.
        has int $!cur_lex_p;    # Current lexical register (P)
        has int $!cur_lex_s;    # Current lexical register (S)
        has int $!cur_lex_i;    # Current lexical register (I)
        has int $!cur_lex_n;    # Current lexical register (N)
        
        method new($qast, $outer) {
            my $obj := nqp::create(self);
            $obj.BUILD($qast, $outer);
            $obj
        }
        
        method BUILD($qast, $outer) {
            $!qast := $qast;
            $!outer := $outer;
            @!params := nqp::list();
            @!locals := nqp::list();
            @!lexicals := nqp::list();
            %!local_types := nqp::hash();
            %!lexical_types := nqp::hash();
            %!lexical_regs := nqp::hash();
            %!reg_types := nqp::hash();
            @!loadlibs := nqp::list();
            $!cur_lex_p := 100;
            $!cur_lex_s := 100;
            $!cur_lex_i := 100;
            $!cur_lex_n := 100;
        }
        
        method add_param($var) {
            if $var.scope eq 'local' {
                self.register_local($var);
            }
            else {
                my $reg := '_lex_param_' ~ $!param_idx;
                $!param_idx := $!param_idx + 1;
                self.register_lexical($var, $reg);
            }
            @!params[+@!params] := $var;
        }
        
        method add_lexical($var, :$is_static, :$is_cont, :$is_state) {
            self.register_lexical($var);
            if $is_static || $is_cont || $is_state {
                my %blv := %*BLOCK_LEX_VALUES;
                unless nqp::existskey(%blv, $!qast.cuid) {
                    %blv{$!qast.cuid} := [];
                }
                my $flags := $is_static ?? 0 !!
                             $is_cont   ?? 1 !! 2;
                nqp::push(%blv{$!qast.cuid}, [$var.name, $var.value, $flags]);
            }
            @!lexicals[+@!lexicals] := $var;
        }
        
        method add_local($var) {
            self.register_local($var);
            @!locals[+@!locals] := $var;
        }
        
        method register_lexical($var, $reg?) {
            my $name := $var.name;
            my $type := type_to_register_type($var.returns);
            if nqp::existskey(%!lexical_types, $name) {
                nqp::die("Lexical '$name' already declared");
            }
            %!lexical_types{$name} := $type;
            %!lexical_regs{$name} := $reg ?? $reg !! self."fresh_lex_{nqp::lc($type)}"();
            %!reg_types{%!lexical_regs{$name}} := $type;
        }
        
        method register_local($var) {
            my $name := $var.name;
            if nqp::existskey(%!local_types, $name) {
                nqp::die("Local '$name' already declared");
            }
            %!local_types{$name} := type_to_register_type($var.returns);
            %!reg_types{$name} := %!local_types{$name};
        }
        
        method qast() { $!qast }
        method outer() { $!outer }
        method params() { @!params }
        method lexicals() { @!lexicals }
        method locals() { @!locals }
        
        method lex_reg($name) { %!lexical_regs{$name} }
        
        my %longnames := nqp::hash('P', 'pmc', 'I', 'int', 'N', 'num', 'S', 'string');
        method local_type($name) { %!local_types{$name} }
        method local_type_long($name) { %longnames{%!local_types{$name}} }
        method lexical_type($name) { %!lexical_types{$name} }
        method lexical_type_long($name) { %longnames{%!lexical_types{$name}} }
        method reg_type($name) { %!reg_types{$name} }
        
        method add_loadlibs(@libs) {
            for @libs {
                @!loadlibs[+@!loadlibs] := $_;
            }
        }
        method loadlibs() {
            @!loadlibs
        }
        
        method fresh_lex_p() {
            $!cur_lex_p := $!cur_lex_p + 1;
            '$P' ~ $!cur_lex_p
        }
        method fresh_lex_s() {
            $!cur_lex_s := $!cur_lex_s + 1;
            '$S' ~ $!cur_lex_s
        }
        method fresh_lex_i() {
            $!cur_lex_i := $!cur_lex_i + 1;
            '$I' ~ $!cur_lex_i
        }
        method fresh_lex_n() {
            $!cur_lex_n := $!cur_lex_n + 1;
            '$N' ~ $!cur_lex_n
        }
    }
    
    our $serno;
    INIT {
        $serno := 10; 
        Q:PIR {
            $P0 = get_root_global ['parrot';'QAST'], 'Compiler'
            unless null $P0 goto have_qastcomp
            $P0 = find_lex '$?CLASS'
            set_root_global ['parrot';'QAST'], 'Compiler', $P0
            compreg 'QAST', $P0
          have_qastcomp:
        };
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

    method post($source, *%adverbs) {
        # Ensure we have a QAST::CompUnit that in turn contains a QAST::Block.
        unless nqp::istype($source, QAST::CompUnit) {
            $source := QAST::Block.new($source) unless nqp::istype($source, QAST::Block);
            $source := QAST::CompUnit.new($source);
        }

        # Now compile $source and return the result.
        self.as_post($source);
    }
    
    my @prim_to_reg := ['P', 'I', 'N', 'S'];
    sub type_to_register_type($type) {
        @prim_to_reg[nqp::objprimspec($type)]
    }
    method type_to_register_type($type) {
        type_to_register_type($type)
    }
    
    my @prim_to_lookup_name := ['obj', 'int', 'num', 'str'];
    sub type_to_lookup_name($type) {
        @prim_to_lookup_name[nqp::objprimspec($type)]
    }
    
    my %hll_force_return_boxing;
    method force_return_boxing_for_hll($hll) {
        %hll_force_return_boxing{$hll} := 1;
    }

    method unique($prefix = '') { $prefix ~ $serno++ }
    method escape($str) {
        my $esc := nqp::escape($str);
        nqp::index($esc, '\x', 0) >= 0 ??
            'utf8:"' ~ $esc ~ '"' !!
                (nqp::index($esc, '\u', 0) >= 0 ??
                 'unicode:"' ~ $esc ~ '"' !!
                 '"' ~ $esc ~ '"')
    }
    method rxescape($str) { 'ucs4:"' ~ nqp::escape($str) ~ '"' }

    proto method as_post($node, :$want) {
        my $*WANT := $want;
        if $want {
            if nqp::istype($node, QAST::Want) {
                self.coerce(self.as_post(want($node, $want)), $want)
            }
            else {
                self.coerce({*}, $want)
            }
        }
        else {
            {*}
        }
    }
    
    multi method as_post(QAST::CompUnit $cu, :$want) {
        # Set HLL.
        my $*HLL := '';
        if $cu.hll {
            $*HLL := $cu.hll;
        }
        
        # Should have a single child which is the outer block.
        if +@($cu) != 1 || !nqp::istype($cu[0], QAST::Block) {
            nqp::die("QAST::CompUnit should have one child that is a QAST::Block");
        }
        
        # Hash mapping blocks with static lexicals to an array of arrays. Each
        # of the sub-arrays has the form [$name, $value, $flags], where flags
        # are 0 = static lex, 1 = container, 2 = state container.
        my %*BLOCK_LEX_VALUES;

        # Compile the block.
        my $*QAST_BLOCK_NO_CLOSE := 1;
        my $block_post := self.as_post($cu[0]);
        
        # If we are in compilation mode, or have pre-deserialization or
        # post-deserialization tasks, handle those. Overall, the process
        # is to desugar this into simpler QAST nodes, then compile those.
        my $comp_mode := $cu.compilation_mode;
        my @pre_des   := $cu.pre_deserialize;
        my @post_des  := $cu.post_deserialize;
        self.block_lex_values_to_post_des(@post_des, %*BLOCK_LEX_VALUES);
        if $comp_mode || @pre_des || @post_des {
            # Create a block into which we'll install all of the other
            # pieces.
            my $block := QAST::Block.new( :blocktype('raw') );
            
            # Add pre-deserialization tasks, each as a QAST::Stmt.
            for @pre_des {
                $block.push(QAST::Stmt.new($_));
            }
            
            # If we need to do deserialization, emit code for that.
            if $comp_mode {
                $block.push(self.deserialization_code($cu.sc(), $cu.code_ref_blocks(),
                    $cu.repo_conflict_resolver()));
            }
            
            # Add post-deserialization tasks.
            for @post_des {
                $block.push(QAST::Stmt.new($_));
            }
            
            # Compile to POST and add in the flags to load it.
            my $sc_post := self.as_post($block);
            $sc_post.pirflags(':load :init');
            $block_post.push($sc_post);
        }
        
        # Compile and include load-time logic, if any.
        if nqp::defined($cu.load) {
            my $load_post := self.as_post(QAST::Block.new( :blocktype('raw'), $cu.load ));
            $load_post.pirflags(':load');
            $block_post.push($load_post);
        }
        
        # Compile and include main-time logic, if any.
        if nqp::defined($cu.main) {
            my $main_post := self.as_post(QAST::Block.new( :blocktype('raw'), $cu.main ));
            $main_post.pirflags(':main');
            $block_post.push($main_post);
        }

        $block_post
    }
    
    method serialize_sc($sc) {
        # Serialize it.
        my $sh := nqp::list_s();
        my $serialized := nqp::serialize($sc, $sh);
        
        # Now it's serialized, pop this SC off the compiling SC stack.
        nqp::popcompsc();

        [$serialized,$sh];
    }

    method deserialization_code($sc, @code_ref_blocks, $repo_conf_res) {
        my $sc_tuple := self.serialize_sc($sc);
        my $serialized := $sc_tuple[0];
        my $sh := $sc_tuple[1];
        
        # String heap QAST.
        my $sh_ast := QAST::Op.new( :op('list_s') );
        my $sh_elems := nqp::elems($sh);
        my $i := 0;
        while $i < $sh_elems {
            $sh_ast.push(nqp::isnull_s($sh[$i])
                ?? QAST::Op.new( :op('null_s') )
                !! QAST::SVal.new( :value($sh[$i]) ));
            $i := $i + 1;
        }
        
        # Code references.
        my $cr_past := QAST::Op.new( :op('list_b'), |@code_ref_blocks );
        
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
        QAST::Stmt.new(
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('cur_sc'), :scope('local'), :decl('var') ),
                QAST::Op.new( :op('createsc'), QAST::SVal.new( :value($sc.handle()) ) )
            ),
            QAST::Op.new(
                :op('scsetdesc'),
                QAST::Var.new( :name('cur_sc'), :scope('local') ),
                QAST::SVal.new( :value($sc.description) )
            ),
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('conflicts'), :scope('local'), :decl('var') ),
                QAST::Op.new( :op('list') )
            ),
            QAST::Op.new(
                :op('deserialize'),
                QAST::SVal.new( :value($serialized) ),
                QAST::Var.new( :name('cur_sc'), :scope('local') ),
                $sh_ast,
                QAST::Block.new( :blocktype('immediate'), $cr_past ),
                QAST::Var.new( :name('conflicts'), :scope('local') )
            ),
            QAST::Op.new(
                :op('if'),
                QAST::Var.new( :name('conflicts'), :scope('local') ),
                $repo_conf_res
            )
        )
    }
    
    method block_lex_values_to_post_des(@post_des, %blv) {
        for %blv {
            my $cuid   := $_.key;
            my $names  := QAST::Op.new( :op('list_s') );
            my $values := QAST::Op.new( :op('list') );
            my $flags  := QAST::Op.new( :op('list_i') );
            for $_.value -> @lex {
                $names.push(QAST::SVal.new( :value(@lex[0]) ));
                $values.push(QAST::WVal.new( :value(@lex[1]) ));
                $flags.push(QAST::IVal.new( :value(@lex[2]) ));
            }
            nqp::push(@post_des, QAST::Op.new(
                :op('callmethod'), :name('setup_static_lexpad'),
                QAST::VM.new(
                    pir => '    .const "LexInfo" %r = "' ~ $cuid ~ '"'
                ),
                $names, $values, $flags
            ));
        }
    }

    multi method as_post(QAST::Block $node, :$want) {
        # Build the POST::Sub.
        my $sub;
        {
            # Block gets completely fresh registers, and fresh BlockInfo.
            my $*REGALLOC := RegAlloc.new();
            my $*BLOCKRA  := $*REGALLOC;
            my $*BINDVAL  := 0;
            my $outer     := try $*BLOCK;
            my $block     := BlockInfo.new($node, $outer);
            my @inners;
            
            # First need to compile all of the statements.
            my $stmts;
            {
                my $*BLOCK := $block;
                my @*INNERS := @inners;
                my $*HAVE_IMM_ARG := 0;
                my $*QAST_BLOCK_NO_CLOSE := 0;
                my $*WANT;
                $stmts := self.compile_all_the_stmts($node.list);
            }
            
            # Generate parameter handling code.
            my $decls := PIRT::Ops.new();
            my $opts := PIRT::Ops.new();
            $decls.node($node.node) if $node.node;
            my %lex_params;
            if $node.custom_args {
                $decls.push_pirop('.param pmc CALL_SIG :call_sig');
            }
            else {
                my @pos_params;
                my @named_params;
                my $slurpy_pos;
                my $slurpy_named;
                for $block.params {
                    if $_.slurpy && $_.named {
                        $slurpy_named := $_;
                    }
                    elsif $_.slurpy {
                        $slurpy_pos := $_;
                    }
                    elsif $_.named {
                        nqp::push(@named_params, $_);
                    }
                    else {
                        nqp::push(@pos_params, $_);
                    }
                }
                my @sorted_params;
                nqp::push(@sorted_params, $_) for @pos_params;
                nqp::push(@sorted_params, $slurpy_pos) if $slurpy_pos;
                nqp::push(@sorted_params, $_) for @named_params;
                nqp::push(@sorted_params, $slurpy_named) if $slurpy_named;
                for @sorted_params {
                    my @param := ['.param'];
                    
                    my $reg_type;
                    if $_.scope eq 'local'{
                        nqp::push(@param, $block.local_type_long($_.name));
                        nqp::push(@param, $_.name);
                        $reg_type := $block.local_type($_.name);
                    }
                    else {
                        my $reg := $block.lex_reg($_.name);
                        nqp::push(@param, $block.lexical_type_long($_.name));
                        nqp::push(@param, $reg);
                        %lex_params{$_.name} := $reg;
                        $reg_type := $block.lexical_type($_.name);
                    }
                    
                    if $_.slurpy {
                        nqp::push(@param, ':slurpy');
                        if $_.named {
                            nqp::push(@param, ':named');
                        }
                    }
                    elsif $_.named {
                        nqp::push(@param, ':named(' ~ self.escape($_.named) ~ ')');
                    }
                    
                    if $_.default {
                        # Add an optional to the parameter and add it.
                        nqp::push(@param, ':optional');
                        $decls.push_pirop(nqp::join(' ', @param));
                        
                        # Add an optional flag.
                        my $o_flag := QAST::Node.unique('haz_param');
                        $decls.push_pirop('.param int ' ~ $o_flag ~ ' :opt_flag');
                        
                        # Generate code to set the default if nothing was passed.
                        my $lbl := PIRT::Label.new( :name('default') );
                        my $def;
                        {
                            my $*BLOCK := $block;
                            $def := self.as_post($_.default, :want($reg_type));
                        }
                        $opts.push_pirop('if', $o_flag, $lbl);
                        $opts.push($def);
                        $opts.push_pirop('set', @param[2], $def.result);
                        $opts.push($lbl);
                    }
                    else {
                        $decls.push_pirop(nqp::join(' ', @param));
                    }
                }
            }
            
            # Capture lexicals.
            my $cap_lex_reg := $*REGALLOC.fresh_p();
            for @inners {
                $decls.push_pirop(".const 'Sub' $cap_lex_reg = '$_'");
                $decls.push_pirop("capture_lex $cap_lex_reg");
            }

            # Generate declarations.
            for $block.lexicals {
                $decls.push_pirop('.lex ' ~ self.escape($_.name) ~ ', ' ~ $block.lex_reg($_.name));
            }
            for %lex_params {
                $decls.push_pirop('.lex ' ~ self.escape($_.key) ~ ', ' ~ $_.value);
            }
            for $block.locals {
                $decls.push_pirop('.local ' ~ $block.local_type_long($_.name) ~ ' ' ~ $_.name);
            }
            
            # Add optionals handling code.
            $decls.push($opts);
            
            # Create a PIRT::Sub and apply HLL if any.
            $sub := PIRT::Sub.new();
            my $hll := '';
            try $hll := $*HLL;
            if $hll {
                $sub.hll($hll);
            }
            
            # Emit declarations, statements and and emit return instruction.
            $sub.push($decls);
            {
                my $*BLOCK := $block;
                my $ret_type := 'P';
                try $ret_type := self.infer_type($stmts.result);
                if $ret_type ne 'P' && %hll_force_return_boxing{$hll} {
                    my $boxed := self.coerce($stmts, 'P');
                    $sub.push($boxed);
                    $sub.push_pirop(".return (" ~ $boxed.result ~ ")");
                }
                else {
                    $sub.push($stmts);
                    $sub.push_pirop(".return (" ~ $stmts.result ~ ")");
                }
            }
            
            # Set compilation unit ID, name and, if applicable, outer.
            $sub.subid($node.cuid);
            if nqp::istype($block.outer, BlockInfo) {
                $sub.pirflags(':anon :lex :outer(' ~ self.escape($block.outer.qast.cuid) ~ ')');
            }
            else {
                $sub.pirflags(':anon :lex');
            }
            $sub.name($node.name);
            
            # Set loadlibs if applicable.
            my @loadlibs := $block.loadlibs();
            $sub.loadlibs(@loadlibs) if @loadlibs;
            
            # Close it to further modifications.
            unless $*QAST_BLOCK_NO_CLOSE {
                $sub.close_sub();
            }
        }
        
        # If we are at the top level, we'll immediately return.
        unless nqp::istype((try $*BLOCK), BlockInfo) {
            return $sub;
        }
        
        # What we evaluate to depends on whether it's a declaration or an
        # immediate.
        my $ops := PIRT::Ops.new();
        $ops.push($sub);
        my $blocktype := $node.blocktype;
        if $blocktype eq 'immediate' || $blocktype eq 'immediate_static' {
            # Look up and capture the block.
            try @*INNERS.push($node.cuid());
            my $breg := $*REGALLOC.fresh_p();
            $ops.push_pirop(".const 'Sub' $breg = '" ~ $node.cuid() ~ "'");
            $ops.push_pirop("capture_lex", $breg);
            
            # Pick a result register.
            my $rtype := nqp::lc(type_to_register_type($node.returns));
            my $rreg := $*REGALLOC."fresh_$rtype"();
            
            # Emit call now, unless something else wants to emit with an
            # argument.
            my $im_arg := 0;
            try $im_arg := $*HAVE_IMM_ARG;
            if $im_arg {
                $*IMM_ARG := -> $arg {
                    $ops.push_pirop('call', $breg, $arg, :result($rreg));
                };
            }
            else {
                $ops.push_pirop('call', $breg, :result($rreg));
            }
            $ops.result($rreg);
        }
        elsif $blocktype eq 'declaration' || $blocktype eq 'declaration_static' || $blocktype eq '' {
            # Get the block and newclosure it.
            try @*INNERS.push($node.cuid());
            my $breg := $*REGALLOC.fresh_p();
            $ops.push_pirop(".const 'Sub' $breg = '" ~ $node.cuid() ~ "'");
            $ops.push_pirop("capture_lex", $breg);
            $ops.result($breg);
        }
        $ops
    }

    multi method as_post(QAST::Stmts $node, :$want) {
        self.compile_all_the_stmts($node.list, $node.resultchild, :node($node.node))
    }
    
    multi method as_post(QAST::Stmt $node, :$want) {
        my $orig_reg := $*REGALLOC;
        {
            my $*REGALLOC := RegAlloc.new($orig_reg);
            self.compile_all_the_stmts($node.list, $node.resultchild, :node($node.node))
        }
    }
    
    method compile_all_the_stmts(@stmts, $resultchild?, :$node) {
        my $last;
        my $ops := PIRT::Ops.new();
        $ops.node($node) if $node;
        my int $i := 0;
        my int $n := +@stmts;
        my $all_void := $*WANT eq 'v';
        unless nqp::defined($resultchild) {
            $resultchild := $n - 1;
        }
        for @stmts {
            my $void := $all_void || $i != $resultchild;
            if $void {
                if nqp::istype($_, QAST::Want) {
                    $_ := want($_, 'v');
                }
                $last := self.as_post($_, :want('v'));
            }
            else {
                $last := self.as_post($_);
            }
            $ops.push($last)
                unless $void && nqp::istype($_, QAST::Var);
            if $resultchild == $i {
                $ops.result($last.result);
            }
            $i := $i + 1;
        }
        $ops
    }
    
    method apply_context($node, $type) {
        nqp::istype($node, QAST::Want) ??
            want($node, $type) !!
            $node
    }
    
    sub want($node, $type) {
        my @possibles := nqp::clone($node.list);
        my $best := @possibles.shift;
        for @possibles -> $sel, $ast {
            if nqp::index($sel, $type) >= 0 {
                $best := $ast;
            }
        }
        $best
    }
    
    multi method as_post(QAST::Op $node, :$want) {
        my $hll := '';
        my $result;
        my $err;
        try $hll := $*HLL;
        try {
            $result := QAST::Operations.compile_op(self, $hll, $node);
            CATCH { $err := $! }
        }
        if $err {
            nqp::die($err) if nqp::index($err, "Error while compiling op ") == 0;
            my $source := self.source_for_node($node);
            nqp::die("Error while compiling op " ~ $node.op ~ "$source: $err");
        }
        $result
    }
    
    multi method as_post(QAST::VM $node, :$want) {
        if $node.supports('parrot') {
            return self.as_post($node.alternative('parrot'))
        }
        elsif $node.supports('pirop') {
            QAST::Operations.compile_pirop(self, $node.alternative('pirop'), $node.list)
        }
        elsif $node.supports('pir') {
            my $ops := PIRT::Ops.new();
            $ops.node($node.node) if $node.node;
            my $pir := $node.alternative('pir');
            if nqp::index($pir, '%r') >= 0 {
                my $reg := $*REGALLOC.fresh_p();
                $ops.push_pirop('inline', $pir, result => $reg);
                $ops.result($reg);
            }
            else {
                $ops.push_pirop('inline', $pir);
            }
            return $ops;
        }
        elsif $node.supports('pirconst') {
            my $ops := PIRT::Ops.new();
            $ops.node($node.node) if $node.node;
            my $name := $node.alternative('pirconst');
            $ops.result('.' ~ $name);
            return $ops;
        }
        elsif $node.supports('loadlibs') {
            $*BLOCK.add_loadlibs($node.alternative('loadlibs'));
            PIRT::Ops.new();
        }
        else {
            nqp::die("To compile on the Parrot backend, QAST::VM must have an alternative 'parrot', 'pirop', 'pir', 'pircosnt' or 'loadlibs'");
        }
    }
    
    multi method as_post(QAST::Var $node, :$want) {
        self.compile_var($node)
    }
    
    multi method as_post(QAST::VarWithFallback $node, :$want) {
        if $*BINDVAL {
            self.compile_var($node)
        }
        elsif $node.scope ne 'positional' && $node.scope ne 'associative' {
            my $post := self.compile_var($node);
            my $lbl := PIRT::Label.new(:name('fallback'));
            my $result := PIRT::Ops.new(:result($post));
            $result.push($post);
            if nqp::lc(self.infer_type($post)) eq 'p' {
                my $fbpost := self.as_post($node.fallback, :want('P'));
                $result.push_pirop('unless_null', $post, $lbl);
                $result.push($fbpost);
                $result.push_pirop('set', $post, $fbpost);
                $result.push($lbl);
            }
            $result
        }
        else {
            my $fb_temp := $node.unique('fb_tmp');
            self.as_post(QAST::Op.new(
                :op('ifnull'),
                QAST::Op.new(
                    :op('if'),
                    QAST::Op.new(
                        :op('isconcrete'),
                        QAST::Op.new(
                            :op('bind'),
                            QAST::Var.new( :name($fb_temp), :scope('local'), :decl('var') ),
                            $node[0]
                        )
                    ),
                    QAST::Var.new(
                        :scope($node.scope),
                        QAST::Var.new( :name($fb_temp), :scope('local') ),
                        $node[1]
                    ),
                    QAST::Op.new( :op('null') )
                 ),
                $node.fallback
            ))
        }
    }
    
    method compile_var($node) {
        my $scope := $node.scope;
        my $decl  := $node.decl;
        
        # Handle any declarations; after this, we call through to the
        # lookup code.
        if $decl {
            # If it's a parameter, add it to the things we should bind
            # at block entry.
            if $decl eq 'param' {
                if $scope eq 'local' || $scope eq 'lexical' {
                    $*BLOCK.add_param($node);
                }
                else {
                    nqp::die("Parameter cannot have scope '$scope'; use 'local' or 'lexical'");
                }
            }
            elsif $decl eq 'var' {
                if $scope eq 'local' {
                    $*BLOCK.add_local($node);
                }
                elsif $scope eq 'lexical' {
                    $*BLOCK.add_lexical($node);
                }
                else {
                    nqp::die("Cannot declare variable with scope '$scope'; use 'local' or 'lexical'");
                }
            }
            elsif $decl eq 'static' {
                if $scope ne 'lexical' {
                    nqp::die("Can only use 'static' decl with scope 'lexical'");
                }
                $*BLOCK.add_lexical($node, :is_static);
            }
            elsif $decl eq 'contvar' {
                if $scope ne 'lexical' {
                    nqp::die("Can only use 'contvar' decl with scope 'lexical'");
                }
                $*BLOCK.add_lexical($node, :is_cont);
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
        
        # If there's no scope, figure it out from the symbol tables if
        # possible.
        my $name := $node.name;
        if $scope eq '' {
            my $cur_block := $*BLOCK;
            while nqp::istype($cur_block, BlockInfo) {
                my %sym := $cur_block.qast.symbol($name);
                if %sym {
                    $scope := %sym<scope>;
                    $cur_block := NQPMu;
                }
                else {
                    $cur_block := $cur_block.outer();
                }
            }
            if $scope eq '' {
                nqp::die("No scope specified or locatable in the symbol table for '$name'");
            }
        }
        
        # Now go by scope.
        my $ops := PIRT::Ops.new();
        $ops.node($node.node) if $node.node;
        if $scope eq 'local' {
            if $*BLOCK.local_type($name) -> $type {
                if $*BINDVAL {
                    my $valpost := self.as_post_clear_bindval($*BINDVAL, :want(nqp::lc($type)));
                    $ops.push($valpost);
                    $ops.push_pirop('set', $name, $valpost.result);
                }
                $ops.result($name);
            }
            else {
                nqp::die("Cannot reference undeclared local '$name'");
            }
        }
        elsif $scope eq 'lexical' || $scope eq 'contextual' {
            # If the lexical is directly declared in this block, we use the
            # register directly.
            my %sym := $*BLOCK.qast.symbol($name);
            if $*BLOCK.lexical_type($name) -> $type {
                my $reg := $*BLOCK.lex_reg($name);
                if $*BINDVAL {
                    my $valpost := self.as_post_clear_bindval($*BINDVAL, :want(nqp::lc($type)));
                    $ops.push($valpost);
                    $ops.push_pirop('set', $reg, $valpost.result);
                }
                $ops.result($reg);
            }
            else {
                # Does the node have a native type marked on it?
                my $type := type_to_register_type($node.returns);
                if $type eq 'P' {
                    # Consider the blocks for a declared native type.
                    my $cur_block := $*BLOCK;
                    while nqp::istype($cur_block, BlockInfo) {
                        my %sym := $cur_block.qast.symbol($name);
                        if %sym {
                            $type := type_to_register_type(%sym<type>);
                            $cur_block := NQPMu;
                        }
                        else {
                            $cur_block := $cur_block.outer();
                        }
                    }
                }
                
                # Emit the lookup or bind.
                if $scope eq 'lexical' {
                    if $*BINDVAL {
                        my $valpost := self.as_post_clear_bindval($*BINDVAL, :want(nqp::lc($type)));
                        $ops.push($valpost);
                        $ops.push_pirop('store_lex', self.escape($node.name), $valpost.result);
                        $ops.result($valpost.result);
                    }
                    else {
                        my $res_reg := $*REGALLOC."fresh_{nqp::lc($type)}"();
                        $ops.push_pirop('find_lex', $res_reg, self.escape($node.name));
                        $ops.result($res_reg);
                    }
                }
                else {
                    if $*BINDVAL {
                        my $valpost := self.as_post_clear_bindval($*BINDVAL, :want('P'));
                        $ops.push($valpost);
                        $ops.push_pirop('store_dynamic_lex', self.escape($name), $valpost.result);
                        $ops.result($valpost.result);
                    }
                    else {
                        my $res_reg := $*REGALLOC."fresh_p"();
                        $ops.push_pirop('find_dynamic_lex', $res_reg, self.escape($name));
                        $ops.result($res_reg);
                    }
                }
            }
        }
        elsif $scope eq 'attribute' {
            # Ensure we have object and class handle.
            my @args := $node.list();
            if +@args != 2 {
                nqp::die("An attribute lookup needs an object and a class handle");
            }
            
            # Compile object and handle.
            my $obj := self.as_post_clear_bindval(@args[0], :want('P'));
            my $han := self.as_post_clear_bindval(@args[1], :want('P'));
            $ops.push($obj);
            $ops.push($han);
            
            # Get lookup hint if possible.
            my $hint := -1;
            if @args[1].has_compile_time_value {
                $hint := pir::repr_hint_for__IPs(@args[1].compile_time_value, $name);
            }
            
            # Go by whether it's a bind or lookup.
            my $type    := type_to_register_type($node.returns);
            my $op_type := type_to_lookup_name($node.returns);
            if $*BINDVAL {
                my $valpost := self.as_post_clear_bindval($*BINDVAL, :want(nqp::lc($type)));
                $ops.push($valpost);
                if $hint == -1 {
                    $ops.push_pirop("repr_bind_attr_$op_type", $obj.result, $han.result,
                        self.escape($name), $valpost.result);
                } else {
                    $ops.push_pirop("repr_bind_attr_$op_type", $obj.result, $han.result,
                        self.escape($name), $hint, $valpost.result);
                }
                $ops.result($valpost.result);
            }
            else {
                my $res_reg := $*REGALLOC."fresh_{nqp::lc($type)}"();
                if $hint == -1 {
                    $ops.push_pirop("repr_get_attr_$op_type", $res_reg, $obj.result, $han.result,
                        self.escape($name));
                } else {
                    $ops.push_pirop("repr_get_attr_$op_type", $res_reg, $obj.result, $han.result,
                        self.escape($name), $hint);
                }
                $ops.result($res_reg);
            }
        }
        elsif $scope eq 'positional' {
            $ops := self.as_post_clear_bindval($*BINDVAL
                ?? QAST::Op.new( :op('positional_bind'), |$node.list, $*BINDVAL)
                !! QAST::Op.new( :op('positional_get'), |$node.list));
        }
        elsif $scope eq 'associative' {
            $ops := self.as_post_clear_bindval($*BINDVAL
                ?? QAST::Op.new( :op('associative_bind'), |$node.list, $*BINDVAL)
                !! QAST::Op.new( :op('associative_get'), |$node.list));
        }
        else {
            nqp::die("QAST::Var with scope '$scope' NYI");
        }
        
        $ops
    }
    
    method as_post_clear_bindval($node, :$want) {
        my $*BINDVAL := 0;
        $want ?? self.as_post($node, :$want) !! self.as_post($node)
    }
    
    multi method as_post(QAST::Want $node, :$want) {
        # If we're not in a coercive context, take the default.
        self.as_post($node[0])
    }
    
    multi method as_post(QAST::IVal $node, :$want) {
        PIRT::Ops.new(:result(~$node.value))
    }
    
    multi method as_post(QAST::NVal $node, :$want) {
        my $val := ~$node.value;
        $val := $val ~ '.0' unless nqp::index($val, '.', 0) >= 0 ||
                                   nqp::index($val, 'e', 0) > 0;
        PIRT::Ops.new(:result($val))
    }
    
    multi method as_post(QAST::SVal $node, :$want) {
        PIRT::Ops.new(:result(self.escape($node.value)))
    }
    
    multi method as_post(QAST::BVal $node, :$want) {
        my $cuid := self.escape($node.value.cuid);
        my $reg  := $*REGALLOC.fresh_p();
        my $ops  := PIRT::Ops.new(:result($reg));
        $ops.push_pirop(".const 'Sub' $reg = $cuid");
        $ops;
    }
    
    multi method as_post(QAST::WVal $node, :$want) {
        my $val    := $node.value;
        my $sc     := nqp::getobjsc($val);
        my $handle := nqp::scgethandle($sc);
        my $idx    := nqp::scgetobjidx($sc, $val);
        my $reg    := $*REGALLOC.fresh_p();
        my $ops    := PIRT::Ops.new(:result($reg));
        $ops.push_pirop('nqp_get_sc_object', $reg, self.escape($handle), ~$idx);
        $ops;
    }
    
    method coerce($post, $desired) {
        return $post if $desired eq 'v';
        my $result := self.infer_type($post.result());
        if $result eq $desired {
            # Exact match
            return $post;
        }
        elsif nqp::lc($result) eq $desired {
            # The result is in a register, and our desired type allows
            # both registers and literals.
            return $post;
        }
        elsif $result eq 'p' && $desired eq 'P' {
            # PMCs are always in a register anyway
            return $post;
        }
        elsif $result eq nqp::lc($desired) {
            # Correct type, but we need a register.
            my $ops := PIRT::Ops.new();
            my $reg := $*REGALLOC."fresh_$result"();
            $ops.push($post);
            $ops.push_pirop('set', $reg, $post);
            $ops.result($reg);
            return $ops;
        }
        elsif $desired eq 'P' || $desired eq 'p' {
            my $hll := '';
            try $hll := $*HLL;
            return QAST::Operations.box(self, $hll, nqp::lc($result), $post);
        }
        elsif $result eq 'P' || $result eq 'p' {
            my $hll := '';
            try $hll := $*HLL;
            return QAST::Operations.unbox(self, $hll, nqp::lc($desired), $post);
        }
        elsif nqp::index('IiNnSs', $result) >= 0 && nqp::index('IiNnSs', $desired) >= 0 {
            # Coercion that we have an op for
            my $ops := PIRT::Ops.new();
            my $rtype := nqp::lc($desired);
            my $reg := $*REGALLOC."fresh_$rtype"();
            $ops.push($post);
            $ops.push_pirop('set', $reg, $post);
            $ops.result($reg);
            return $ops;
        }
        else {
            nqp::die("Coercion from '$result' to '$desired' NYI");
        }
    }
    
    method infer_type($inferee) {
        if nqp::substr($inferee, 0, 1) eq '$' {
            nqp::substr($inferee, 1, 1)
        }
        elsif $*BLOCK.reg_type($inferee) -> $type {
            nqp::lc($type)
        }
        elsif nqp::substr($inferee, 0, 1) eq '"'
              || nqp::substr($inferee, 0, 6) eq 'utf8:"'
              || nqp::substr($inferee, 0, 6) eq 'ucs4:"'
              || nqp::substr($inferee, 0, 9) eq 'unicode:"' {
            "s"
        }
        elsif nqp::substr($inferee, 0, 6) eq '.const' {
            "P"
        }
        elsif nqp::substr($inferee, 0, 1) eq '.' {
            "i"
        }
        elsif nqp::index($inferee, ".", 0) > 0 {
            "n"
        }
        elsif +$inferee eq $inferee {
            "i"
        }
        else {
            nqp::die("Cannot infer type from '$inferee'");
        }
    }
    
    multi method as_post(QAST::Regex $node, :$want) {
        my $ops := self.post_new('Ops');
        $ops.node($node.node) if $node.node;
        my $prefix := self.unique('rx') ~ '_';
        my %*REG;

        # build the list of (unique) registers we need
        my $reglist := nqp::split(' ', 'start pmc tgt string pos int off int eos int rep int cur pmc curclass pmc bstack pmc cstack pmc');
        while $reglist {
            my $reg := nqp::shift($reglist);
            my $name := %*REG{$reg} := $prefix ~ $reg;
            $ops.push_pirop('.local ' ~ nqp::shift($reglist), $name);
        }

        # create our labels
        my $startlabel   := self.post_new('Label', :name($prefix ~ 'start'));
        my $donelabel    := self.post_new('Label', :name($prefix ~ 'done'));
        my $restartlabel := self.post_new('Label', :name($prefix ~ 'restart'));
        my $faillabel    := self.post_new('Label', :name($prefix ~ 'fail'));
        my $jumplabel    := self.post_new('Label', :name($prefix ~ 'jump'));
        my $cutlabel     := self.post_new('Label', :name($prefix ~ 'cut'));
        my $cstacklabel  := self.post_new('Label', :name($prefix ~ 'cstack_done'));
        %*REG<fail>      := $faillabel;

        # common prologue
        $ops.push_pirop('callmethod', '"!cursor_start_all"', 'self', :result(%*REG<start>));
        $ops.push_pirop('set', %*REG<cur>, %*REG<start> ~ '[0]');
        $ops.push_pirop('set', %*REG<tgt>, %*REG<start> ~ '[1]');
        $ops.push_pirop('set', %*REG<pos>, %*REG<start> ~ '[2]');
        $ops.push_pirop('set', %*REG<curclass>, %*REG<start> ~ '[3]');
        $ops.push_pirop('set', %*REG<bstack>, %*REG<start> ~ '[4]');
        $ops.push_pirop('set', '$I19', %*REG<start> ~ '[5]');
        $ops.push_pirop('store_lex', 'unicode:"$\x{a2}"', %*REG<cur>);
        $ops.push_pirop('length', %*REG<eos>, %*REG<tgt>);
        $ops.push_pirop('eq', '$I19', 1, $restartlabel);
        $ops.push_pirop('gt', %*REG<pos>, %*REG<eos>, %*REG<fail>);
        $ops.push(self.regex_post($node));
        $ops.push($restartlabel);
        $ops.push_pirop('repr_get_attr_obj', %*REG<cstack>, %*REG<cur>, %*REG<curclass>, '"$!cstack"');
        $ops.push($faillabel);
        $ops.push_pirop('unless', %*REG<bstack>, $donelabel);
        $ops.push_pirop('pop', '$I19', %*REG<bstack>);
        $ops.push_pirop('if_null', %*REG<cstack>, $cstacklabel);
        $ops.push_pirop('unless', %*REG<cstack>, $cstacklabel);
        $ops.push_pirop('dec', '$I19');
        $ops.push_pirop('set', '$P11', %*REG<cstack> ~ '[$I19]');
        $ops.push($cstacklabel);
        $ops.push_pirop('pop', %*REG<rep>, %*REG<bstack>);
        $ops.push_pirop('pop', %*REG<pos>, %*REG<bstack>);
        $ops.push_pirop('pop', '$I19', %*REG<bstack>);
        $ops.push_pirop('lt', %*REG<pos>, -1, $donelabel);
        $ops.push_pirop('lt', %*REG<pos>, 0, $faillabel);
        $ops.push_pirop('eq', '$I19', 0, $faillabel);
        # backtrack the cursor stack
        $ops.push_pirop('nqp_islist', '$I20', %*REG<cstack>);
        $ops.push_pirop('unless', '$I20', $jumplabel);
        $ops.push_pirop('elements', '$I18', %*REG<bstack>);
        $ops.push_pirop('le', '$I18', 0, $cutlabel);
        $ops.push_pirop('dec', '$I18');
        $ops.push_pirop('set', '$I18', %*REG<bstack>~'[$I18]');
        $ops.push($cutlabel);
        $ops.push_pirop('assign', %*REG<cstack>, '$I18');
        $ops.push($jumplabel);
        $ops.push_pirop('jump', '$I19');
        $ops.push($donelabel);
        $ops.push_pirop('callmethod', '"!cursor_fail"', %*REG<cur>);

        $ops.result(%*REG<cur>);
        $ops;
    }
    
    method children($node) {
        my $posts := PIRT::Ops.new();
        my @results;
        for @($node) {
            my $post := self.as_post($_);
            $posts.push($post);
            @results.push($post.result);
        }
        [$posts, @results, []]
    }

    method regex_post($node) {
        my $rxtype := $node.rxtype() || 'concat';
        self."$rxtype"($node);
    }

    method post_new($type, *@args, *%options) {
        (PIRT.WHO){$type}.new(|@args, |%options)
    }

    method alt($node) {
        unless $node.name {
            return self.altseq($node);
        }

        # Calculate all the branches to try, which populates the bstack
        # with the options. Then immediately fail to start iterating it.
        my $prefix   := self.unique('alt') ~ '_';
        my $endlabel := self.post_new('Label', :name($prefix ~ 'end'));
        my $label_list_ops := self.post_new('Ops', :result<$P11>);
        $label_list_ops.push_pirop('new', '$P11', '"ResizableIntegerArray"');
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        $ops.push($label_list_ops);
        self.regex_mark($ops, $endlabel, -1, 0);
        $ops.push_pirop('callmethod', '"!alt"', %*REG<cur>, %*REG<pos>,
            self.escape($node.name), $label_list_ops.result);
        $ops.push_pirop('goto', %*REG<fail>);

        # Emit all the possible alternations.
        my $altcount := 0;
        my $iter     := nqp::iterator($node.list);
        while $iter {
            my $altlabel := self.post_new('Label', :name($prefix ~ $altcount));
            my $apost    := self.regex_post(nqp::shift($iter));
            $ops.push($altlabel);
            $ops.push($apost);
            $ops.push_pirop('goto', $endlabel);
            $label_list_ops.push_pirop('nqp_push_label', $label_list_ops.result, $altlabel.result);
            $altcount++;
        }
        $ops.push($endlabel);
        self.regex_commit($ops, $endlabel) if $node.backtrack eq 'r';
        $ops;
    }

    method altseq($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $prefix := self.unique('alt') ~ '_';
        my $altcount := 0;
        my $iter     := nqp::iterator($node.list);
        my $endlabel := self.post_new('Label', :name($prefix ~ 'end'));
        my $altlabel := self.post_new('Label', :name($prefix ~ $altcount));
        my $apost    := self.regex_post(nqp::shift($iter));
        while $iter {
            $ops.push($altlabel);
            $altcount++;
            $altlabel := self.post_new('Label', :name($prefix ~ $altcount));
            self.regex_mark($ops, $altlabel, %*REG<pos>, 0);
            $ops.push($apost);
            $ops.push_pirop('goto', $endlabel);
            $apost := self.regex_post(nqp::shift($iter));
        }
        $ops.push($altlabel);
        $ops.push($apost);
        $ops.push($endlabel);
        $ops;
    }

    method anchor($node) {
        my $ops       := self.post_new('Ops', :result(%*REG<cur>));
        my $subtype   := $node.subtype;
        my $donelabel := self.post_new('Label', :name(self.unique('rxanchor') ~ '_done'));
        if $subtype eq 'bos' {
            $ops.push_pirop('ne', %*REG<pos>, 0, %*REG<fail>);
        }
        elsif $subtype eq 'eos' {
            $ops.push_pirop('lt', %*REG<pos>, %*REG<eos>, %*REG<fail>);
        }
        elsif $subtype eq 'lwb' {
            $ops.push_pirop('ge', %*REG<pos>, %*REG<eos>, %*REG<fail>);
            $ops.push_pirop('is_cclass', '$I11', '.CCLASS_WORD', %*REG<tgt>, %*REG<pos>);
            $ops.push_pirop('unless', '$I11', %*REG<fail>);
            $ops.push_pirop('sub', '$I11', %*REG<pos>, 1);
            $ops.push_pirop('is_cclass', '$I11', '.CCLASS_WORD', %*REG<tgt>, '$I11');
            $ops.push_pirop('if', '$I11', %*REG<fail>);
        }
        elsif $subtype eq 'rwb' {
            $ops.push_pirop('le', %*REG<pos>, 0, %*REG<fail>);
            $ops.push_pirop('is_cclass', '$I11', '.CCLASS_WORD', %*REG<tgt>, %*REG<pos>);
            $ops.push_pirop('if', '$I11', %*REG<fail>);
            $ops.push_pirop('sub', '$I11', %*REG<pos>, 1);
            $ops.push_pirop('is_cclass', '$I11', '.CCLASS_WORD', %*REG<tgt>, '$I11');
            $ops.push_pirop('unless', '$I11', %*REG<fail>);
        }
        elsif $subtype eq 'bol' {
            $ops.push_pirop('eq', %*REG<pos>, 0, $donelabel);
            $ops.push_pirop('ge', %*REG<pos>, %*REG<eos>, %*REG<fail>);
            $ops.push_pirop('sub', '$I11', %*REG<pos>, 1);
            $ops.push_pirop('is_cclass', '$I11', '.CCLASS_NEWLINE', %*REG<tgt>, '$I11');
            $ops.push_pirop('unless', '$I11', %*REG<fail>);
            $ops.push($donelabel);
        }
        elsif $subtype eq 'eol' {
            $ops.push_pirop('is_cclass', '$I11', '.CCLASS_NEWLINE', %*REG<tgt>, %*REG<pos>);
            $ops.push_pirop('if', '$I11', $donelabel);
            $ops.push_pirop('ne', %*REG<pos>, %*REG<eos>, %*REG<fail>);
            $ops.push_pirop('eq', %*REG<pos>, 0, $donelabel);
            $ops.push_pirop('sub', '$I11', %*REG<pos>, 1);
            $ops.push_pirop('is_cclass', '$I11', '.CCLASS_NEWLINE', %*REG<tgt>, '$I11');
            $ops.push_pirop('if', '$I11', %*REG<fail>);
            $ops.push($donelabel);
        }
        elsif $subtype eq 'fail' {
            $ops.push_pirop('goto', %*REG<fail>);
        }

        $ops;
    }
    
    method dba($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        $ops.push_pirop('callmethod', '"!dba"', %*REG<cur>, %*REG<pos>, self.escape($node.name));
        $ops
    }

    my %cclass_code;
    INIT {
        %cclass_code<.>  := '.CCLASS_ANY';
        %cclass_code<d>  := '.CCLASS_NUMERIC';
        %cclass_code<s>  := '.CCLASS_WHITESPACE';
        %cclass_code<w>  := '.CCLASS_WORD';
        %cclass_code<n>  := '.CCLASS_NEWLINE';
    }

    method cclass($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $subtype := $node.name;
        $ops.push_pirop('ge', %*REG<pos>, %*REG<eos>, %*REG<fail>);
        my $cclass := %cclass_code{ $subtype };
        self.panic("Unrecognized subtype '$subtype' in QAST::Regex cclass")
            unless $cclass;
        if $cclass ne '.CCLASS_ANY' {
            my $testop := $node.negate ?? 'if' !! 'unless';
            $ops.push_pirop('is_cclass', '$I11', $cclass, %*REG<tgt>, %*REG<pos>);
            $ops.push_pirop($testop, '$I11', %*REG<fail>); 
            if $cclass eq '.CCLASS_NEWLINE' && $node.subtype ne 'zerowidth' && !$node.negate {
                $ops.push_pirop('nqp_string_equal_at', '$I11', %*REG<tgt>, '"\r\n"', %*REG<pos>);
                $ops.push_pirop('add', %*REG<pos>, '$I11');
            }
        }
        $ops.push_pirop('add', %*REG<pos>, 1) unless $node.subtype eq 'zerowidth';
        $ops;
    }

    method concat($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        for $node.list { $ops.push(self.regex_post($_)); }
        $ops;
    }

    method conj($node) { self.conjseq($node) }

    method conjseq($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $prefix := self.unique('rxconj') ~ '_';
        my $conjlabel := self.post_new('Label', :name($prefix ~ 'fail'));
        my $firstlabel := self.post_new('Label', :name($prefix ~ 'first'));
        my $iter := nqp::iterator($node.list);
        # make a mark that holds our starting position in the pos slot
        self.regex_mark($ops, $conjlabel, %*REG<pos>, 0);
        $ops.push_pirop('goto', $firstlabel);
        $ops.push($conjlabel);
        $ops.push_pirop('goto', %*REG<fail>);
        # call the first child
        $ops.push($firstlabel);
        $ops.push(self.regex_post(nqp::shift($iter)));
        # use previous mark to make one with pos=start, rep=end
        self.regex_peek($ops, $conjlabel, '$I11');
        self.regex_mark($ops, $conjlabel, '$I11', %*REG<pos>);

        while $iter {
            $ops.push_pirop('set', %*REG<pos>, '$I11');
            $ops.push(self.regex_post(nqp::shift($iter)));
            self.regex_peek($ops, $conjlabel, '$I11', '$I12');
            $ops.push_pirop('ne', %*REG<pos>, '$I12', %*REG<fail>);
        }
        $ops.push_pirop('set', %*REG<pos>, '$I11') if $node.subtype eq 'zerowidth';
        $ops;
    }

    method enumcharlist($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $charlist := self.rxescape($node[0]);
        my $testop := $node.negate ?? 'ge' !! 'lt';
        $ops.push_pirop('ge', %*REG<pos>, %*REG<eos>, %*REG<fail>);
        $ops.push_pirop('substr', '$S11', %*REG<tgt>, %*REG<pos>, 1);
        $ops.push_pirop('index', '$I11', $charlist, '$S11');
        $ops.push_pirop($testop, '$I11', 0, %*REG<fail>);
        $ops.push_pirop('inc', %*REG<pos>) unless $node.subtype eq 'zerowidth';
        $ops;
    }

    method charrange($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        $ops.push_pirop('ge', %*REG<pos>, %*REG<eos>, %*REG<fail>);
        if $node.negate {
            my $succeed  := self.post_new('Label', :name(self.unique('succeed_')));
            $ops.push_pirop('ord', '$I11', %*REG<tgt>, %*REG<pos>);
            $ops.push_pirop('gt', '$I11', $node[2].value, $succeed);
            $ops.push_pirop('lt', '$I11', $node[1].value, $succeed);
            $ops.push_pirop('goto', %*REG<fail>);
            $ops.push($succeed);
        } else {
            $ops.push_pirop('ord', '$I11', %*REG<tgt>, %*REG<pos>);
            $ops.push_pirop('lt', '$I11', $node[1].value, %*REG<fail>);
            $ops.push_pirop('gt', '$I11', $node[2].value, %*REG<fail>);
        }
        $ops.push_pirop('inc', %*REG<pos>) unless $node.subtype eq 'zerowidth';
        $ops;
    }

    method literal($node) {
        my $ops := self.post_new('Ops');
        my $litconst := $node[0];
        $litconst := nqp::lc($litconst)
            if $node.subtype eq 'ignorecase';
        my $litlen := nqp::chars($litconst);
        my $litpost := self.rxescape($litconst);
        my $cmpop := $node.negate ?? 'eq' !! 'ne';
        $ops.push_pirop('add',    '$I11', %*REG<pos>, $litlen);
        $ops.push_pirop('gt',     '$I11', %*REG<eos>, %*REG<fail>);
        if $node.subtype eq 'ignorecase' {
            $ops.push_pirop('substr', '$S10', %*REG<tgt>, %*REG<pos>, $litlen);
            $ops.push_pirop('downcase', '$S10', '$S10');
            $ops.push_pirop($cmpop,   '$S10', $litpost, %*REG<fail>);
        } elsif $litlen == 1 {
            $ops.push_pirop('ord', '$I11', %*REG<tgt>, %*REG<pos>);
            $ops.push_pirop($cmpop,   '$I11', nqp::ord($litconst), %*REG<fail>);
        } else {
            $ops.push_pirop('nqp_string_equal_at', '$I11', %*REG<tgt>, $litpost, %*REG<pos>);
            $ops.push_pirop($cmpop,   '$I11', 1, %*REG<fail>);
        }
        $ops.push_pirop('add',    %*REG<pos>, $litlen);
        $ops;
    }

    method pass($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my @backtrack := ["'backtrack'=>1"]
            if $node.backtrack ne 'r';
        if $node.name() {
            my $name := self.escape($node.name());
            $ops.push_pirop('callmethod', '"!cursor_pass"', %*REG<cur>, %*REG<pos>, $name, |@backtrack);
        }
        elsif +@($node) == 1 {
            my $dynname := self.coerce(self.as_post($node[0]), 'S');
            $ops.push($dynname);
            $ops.push_pirop('callmethod', '"!cursor_pass"', %*REG<cur>, %*REG<pos>, $dynname, |@backtrack);
        }
        else {
            $ops.push_pirop('callmethod', '"!cursor_pass"', %*REG<cur>, %*REG<pos>, |@backtrack);
        }
        $ops.push_pirop('return', %*REG<cur>);
        $ops;
    }

    method qastnode($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        $ops.push_pirop('repr_bind_attr_int', %*REG<cur>, %*REG<curclass>, '"$!pos"', %*REG<pos>);
        $ops.push_pirop('store_lex', 'unicode:"$\x{a2}"', %*REG<cur>);
        my $cpost := self.coerce(self.as_post($node[0]), 'P');
        $ops.push($cpost);
        if $node.subtype eq 'zerowidth' {
            $ops.push_pirop($node.negate ?? 'if' !! 'unless', $cpost, %*REG<fail>);
        }
        $ops;
    }

    method quant($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $backtrack := $node.backtrack || 'g';
        my $sep       := $node[1];
        my $prefix    := self.unique('rxquant' ~ $backtrack);
        my $looplabel := self.post_new('Label', :name($prefix ~ '_loop'));
        my $donelabel := self.post_new('Label', :name($prefix ~ '_done'));
        my $min       := $node.min;
        my $max       := $node.max;
        my $needrep   := $min > 1 || $max > 1;
        my $needmark  := $needrep || $backtrack eq 'r';

        #$ops.push_pirop('inline', '  # rx %0 ** %1..%2', $prefix, $min, $max);

        if $min == 0 && $max == 0 {
            # Nothing to do, and nothing to backtrack into.
        }
        elsif $backtrack eq 'f' {
            my $seplabel  := self.post_new('Label', :name($prefix ~ '_sep'));
            my $ireg := '$I12';
            $ops.push_pirop('set', %*REG<rep>, 0);
            if $min < 1 {
                self.regex_mark($ops, $looplabel, %*REG<pos>, %*REG<rep>);
                $ops.push_pirop('goto', $donelabel);
            }
            $ops.push_pirop('goto', $seplabel) if $sep;
            $ops.push($looplabel);
            $ops.push_pirop('set', $ireg, %*REG<rep>);
            $ops.push(self.regex_post($sep)) if $sep;
            $ops.push($seplabel) if $sep;
            $ops.push(self.regex_post($node[0]));
            $ops.push_pirop('set', %*REG<rep>, $ireg);
            $ops.push_pirop('inc', %*REG<rep>);
            $ops.push_pirop('lt', %*REG<rep>, $min, $looplabel) if $min > 1;
            $ops.push_pirop('ge', %*REG<rep>, $max, $donelabel) if $max > 1;
            self.regex_mark($ops, $looplabel, %*REG<pos>, %*REG<rep>) if $max != 1;
            $ops.push($donelabel);
        }
        else {
            if $min == 0 { self.regex_mark($ops, $donelabel, %*REG<pos>, 0); }
            elsif $needmark { self.regex_mark($ops, $donelabel, -1, 0); }
            $ops.push($looplabel);
            $ops.push(self.regex_post($node[0]));
            if $needmark {
                self.regex_peek($ops, $donelabel, '*', %*REG<rep>);
                self.regex_commit($ops, $donelabel) if $backtrack eq 'r';
                $ops.push_pirop('inc', %*REG<rep>);
                $ops.push_pirop('ge', %*REG<rep>, $node.max, $donelabel)
                    if $max > 1;
            }
            unless $max == 1 {
                self.regex_mark($ops, $donelabel, %*REG<pos>, %*REG<rep>);
                $ops.push(self.regex_post($sep)) if $sep;
                $ops.push_pirop('goto', $looplabel);
            }
            $ops.push($donelabel);
            $ops.push_pirop('lt', %*REG<rep>, +$node.min, %*REG<fail>)
                if $min > 1;
        }
        $ops;
    }

    method scan($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $prefix := self.unique('rxscan');
        my $looplabel := self.post_new('Label', :name($prefix ~ '_loop'));
        my $scanlabel := self.post_new('Label', :name($prefix ~ '_scan'));
        my $donelabel := self.post_new('Label', :name($prefix ~ '_done'));
        $ops.push_pirop('repr_get_attr_int', '$I11', 'self', %*REG<curclass>, '"$!from"');
        $ops.push_pirop('ne', '$I11', -1, $donelabel);
        $ops.push_pirop('goto', $scanlabel);
        $ops.push($looplabel);
        $ops.push_pirop('inc', %*REG<pos>);
        if nqp::elems($node.list) && $node.subtype ne 'ignorecase' {
            $ops.push_pirop('index', %*REG<pos>, %*REG<tgt>, self.rxescape($node[0]), %*REG<pos>);
            $ops.push_pirop('eq', %*REG<pos>, -1, %*REG<fail>);
        }
        else {
            $ops.push_pirop('gt', %*REG<pos>, %*REG<eos>, %*REG<fail>);
        }
        $ops.push_pirop('repr_bind_attr_int', %*REG<cur>, %*REG<curclass>, '"$!from"', %*REG<pos>);
        $ops.push($scanlabel);
        self.regex_mark($ops, $looplabel, %*REG<pos>, 0);
        $ops.push($donelabel);
        $ops;
    }

    method subcapture($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $prefix := self.unique('rxcap');
        my $donelabel := self.post_new('Label', :name($prefix ~ '_done'));
        my $faillabel := self.post_new('Label', :name($prefix ~ '_fail'));
        my $name := self.escape($node.name);
        self.regex_mark($ops, $faillabel, %*REG<pos>, 0);
        $ops.push(self.regex_post($node[0]));
        self.regex_peek($ops, $faillabel, '$I11');
        $ops.push_pirop('repr_bind_attr_int', %*REG<cur>, %*REG<curclass>, '"$!pos"', %*REG<pos>);
        $ops.push_pirop('callmethod', '"!cursor_start_subcapture"', %*REG<cur>, '$I11', :result<$P11>);
        $ops.push_pirop('callmethod', '"!cursor_pass"', '$P11', %*REG<pos>);
        $ops.push_pirop('callmethod', '"!cursor_capture"', %*REG<cur>, 
                        '$P11', $name, :result(%*REG<cstack>));
        $ops.push_pirop('goto', $donelabel);
        $ops.push($faillabel);
        $ops.push_pirop('goto', %*REG<fail>);
        $ops.push($donelabel);
        $ops;
    }

    method subrule($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $name := nqp::defined($node.name) ?? self.escape($node.name) !! '';
        my $subtype := $node.subtype;
        my $cpn := self.children($node[0]);
        my @pargs := $cpn[1] // [];
        my @nargs := $cpn[2] // [];
        my $subpost := nqp::shift(@pargs);
        my $testop := $node.negate ?? 'ge' !! 'lt';
        my $captured := 0;
        $ops.push($cpn[0]);
        $ops.push_pirop('repr_bind_attr_int', %*REG<cur>, %*REG<curclass>, '"$!pos"', %*REG<pos>);
        $ops.push_pirop('callmethod', $subpost, %*REG<cur>, |@pargs, |@nargs, :result<$P11>);
        $ops.push_pirop('repr_get_attr_int', '$I11', '$P11', %*REG<curclass>, '"$!pos"');
        $ops.push_pirop($testop, '$I11', '0', %*REG<fail>);
        if $subtype ne 'zerowidth' {
            my $rxname := self.unique('rxsubrule');
            my $passlabel := self.post_new('Label', :name($rxname ~ '_pass'));
            if $node.backtrack eq 'r' {
                unless $subtype eq 'method' {
                    self.regex_mark($ops, $passlabel, -1, 0);
                    $ops.push($passlabel);
                }
            }
            else {
                my $backlabel := self.post_new('Label', :name($rxname ~ '_back'));
                $ops.push_pirop('goto', $passlabel);
                $ops.push($backlabel);
                $ops.push_pirop('callmethod', '"!cursor_next"', '$P11', :result('$P11'));
                $ops.push_pirop('repr_get_attr_int', '$I11', '$P11', %*REG<curclass>, '"$!pos"');
                $ops.push_pirop($testop, '$I11', '0', %*REG<fail>);
                $ops.push($passlabel);
                if $subtype eq 'capture' {
                    $ops.push_pirop('callmethod', '"!cursor_capture"', %*REG<cur>, 
                                    '$P11', $name, :result(%*REG<cstack>));
                    $captured := 1;
                }
                else {
                    $ops.push_pirop('callmethod', '"!cursor_push_cstack"', %*REG<cur>, 
                                    '$P11', :result(%*REG<cstack>));
                }
                $ops.push_pirop('set_addr', '$I11', $backlabel);
                $ops.push_pirop('push', %*REG<bstack>, '$I11');
                $ops.push_pirop('push', %*REG<bstack>, 0);
                $ops.push_pirop('push', %*REG<bstack>, %*REG<pos>);
                $ops.push_pirop('elements', '$I11', %*REG<cstack>);
                $ops.push_pirop('push', %*REG<bstack>, '$I11');
            }
        }
        $ops.push_pirop('callmethod', '"!cursor_capture"', %*REG<cur>, 
                        '$P11', $name, :result(%*REG<cstack>))
          if !$captured && $subtype eq 'capture';
        $ops.push_pirop('repr_get_attr_int', %*REG<pos>, '$P11', %*REG<curclass>, '"$!pos"')
          unless $subtype eq 'zerowidth';
        $ops;
    }

    method uniprop($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $cmpop := $node.negate ?? 'ne' !! 'eq';
        $ops.push_pirop('ge', %*REG<pos>, %*REG<eos>, %*REG<fail>);
        $ops.push_pirop('assign', '$S10', '"' ~ $node[0] ~ '"');
        $ops.push_pirop('is_uprop', '$I11', '$S10', %*REG<tgt>, %*REG<pos>);
        $ops.push_pirop($cmpop, '$I11', 0, %*REG<fail>);
        $ops.push_pirop('inc', %*REG<pos>) unless $node.subtype eq 'zerowidth';
        $ops;
    }

    # a :rxtype<ws> node is a normal subrule call
    method ws($node) { self.subrule($node) }
 
    method regex_mark($ops, $mark, $pos, $rep) {
        $ops.push_pirop('nqp_rxmark', %*REG<bstack>, $mark, $pos, $rep);
    }

    method regex_peek($ops, $mark, *@regs) {
        $ops.push_pirop('nqp_rxpeek', '$I19', %*REG<bstack>, $mark);
        for @regs {
            $ops.push_pirop('inc', '$I19');
            $ops.push_pirop('set', $_, %*REG<bstack>~'[$I19]') if $_ ne '*';
        }
    }

    method regex_commit($ops, $mark) {
        $ops.push_pirop('nqp_rxcommit', %*REG<bstack>, $mark);
    }

    multi method as_post($unknown, :$want) {
        nqp::die("Unknown QAST node type " ~ $unknown.HOW.name($unknown));
    }
    
    method operations() { QAST::Operations }
}

