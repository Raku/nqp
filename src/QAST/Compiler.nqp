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
                $obj.BUILD(10, 10, 10, 10);
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
        
        method new($qast, $outer) {
            my $obj := nqp::create(self);
            $obj.BUILD($qast, $outer);
            $obj
        }
        
        method BUILD($qast, $outer) {
            $!qast := $qast;
            $!outer := $outer;
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
        
        method add_lexical($var) {
            self.register_lexical($var);
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
                pir::die("Lexical '$name' already declared");
            }
            %!lexical_types{$name} := $type;
            %!lexical_regs{$name} := $reg ?? $reg !! $*BLOCKRA."fresh_{nqp::lc($type)}"();
            %!reg_types{%!lexical_regs{$name}} := $type;
        }
        
        method register_local($var) {
            my $name := $var.name;
            if nqp::existskey(%!local_types, $name) {
                pir::die("Local '$name' already declared");
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
    }
    
    our $serno;
    INIT {
        $serno := 10; 
        Q:PIR {
            $P0 = find_lex '$?CLASS'
            set_root_global ['parrot';'QAST'], 'Compiler', $P0
        };
    }
    
    my @prim_to_reg := ['P', 'I', 'N', 'S'];
    sub type_to_register_type($type) {
        @prim_to_reg[pir::repr_get_primitive_type_spec__IP($type)]
    }
    method type_to_register_type($type) {
        type_to_register_type($type)
    }

    method unique($prefix = '') { $prefix ~ $serno++ }
    method escape($str) {
        my $esc := pir::escape__Ss($str);
        nqp::index($esc, '\x', 0) > 0 ??
            'utf8:"' ~ $esc ~ '"' !!
            '"' ~ $esc ~ '"'
    }
    method rxescape($str) { 'ucs4:"' ~ pir::escape__Ss($str) ~ '"' }

    proto method as_post(*@args, *%_) { * }
    
    multi method as_post(QAST::Block $node) {
        # Block gets completely fresh registers, and fresh BlockInfo.
        my $*REGALLOC := RegAlloc.new();
        my $*BLOCKRA  := $*REGALLOC;
        my $*BINDVAL  := 0;
        my $outer     := try $*BLOCK;
        my $block     := BlockInfo.new($node, $outer);
        
        # First need to compile all of the statements.
        my $stmts;
        {
            my $*BLOCK := $block;
            $stmts := self.compile_all_the_stmts($node.list);
        }
        
        # Generate parameter handling code.
        my $decls := self.post_new('Ops');
        my %lex_params;
        for $block.params {
            my @param := ['.param'];
            
            if $_.scope eq 'local'{
                nqp::push(@param, $block.local_type_long($_.name));
                nqp::push(@param, $_.name);
            }
            else {
                my $reg := $block.lex_reg($_.name);
                nqp::push(@param, $block.lexical_type_long($_.name));
                nqp::push(@param, $reg);
                %lex_params{$_.name} := $reg;
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
            
            $decls.push_pirop(pir::join(' ', @param));
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
        
        # Wrap all up in a POST::Sub.
        my $sub := self.post_new('Sub');
        $sub.push($decls);
        $sub.push($stmts);
        $sub.push_pirop(".return (" ~ $stmts.result ~ ")");
        
        # Set compilation unit ID and, if applicable, outer.
        $sub.subid($node.cuid);
        if nqp::istype($block.outer, BlockInfo) {
            $sub.pirflags(':anon :outer(' ~ self.escape($block.outer.qast.cuid) ~ ')');
        }
        else {
            $sub.pirflags(':anon');
        }
        
        $sub
    }
    
    multi method as_post(QAST::Stmts $node) {
        self.compile_all_the_stmts($node.list)
    }
    
    multi method as_post(QAST::Stmt $node) {
        my $orig_reg := $*REGALLOC;
        {
            my $*REGALLOC := RegAlloc.new($orig_reg);
            self.compile_all_the_stmts($node.list)
        }
    }
    
    method compile_all_the_stmts(@stmts) {
        my $last;
        my $ops := self.post_new('Ops');
        for @stmts {
            $last := self.as_post($_);
            $ops.push($last);
        }
        if $last {
            $ops.result($last.result);
        }
        $ops
    }
    
    multi method as_post(QAST::Op $node) {
        QAST::Operations.compile_op(self, '', $node)
    }
    
    multi method as_post(QAST::Var $node) {
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
                    pir::die("Parameter cannot have scope '$scope'; use 'local' or 'lexical'");
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
                    pir::die("Cannot declare variable with scope '$scope'; use 'local' or 'lexical'");
                }
            }
            else {
                pir::die("Don't understand declaration type '$decl'");
            }
        }
        
        # Now go by scope.
        my $name := $node.name;
        my $ops := self.post_new('Ops');
        if $scope eq 'local' {
            if $*BLOCK.local_type($name) -> $type {
                if $*BINDVAL {
                    my $valpost := self.coerce(self.as_post($*BINDVAL), nqp::lc($type));
                    $ops.push($valpost);
                    $ops.push_pirop('set', $name, $valpost.result);
                }
                $ops.result($name);
            }
            else {
                pir::die("Cannot reference undeclared local '$name'");
            }
        }
        elsif $scope eq 'lexical' {
            # If the lexical is directly declared in this block, we use the
            # register directly.
            if $*BLOCK.lexical_type($name) -> $type {
                my $reg := $*BLOCK.lex_reg($name);
                if $*BINDVAL {
                    my $valpost := self.coerce(self.as_post($*BINDVAL), nqp::lc($type));
                    $ops.push($valpost);
                    $ops.push_pirop('set', $reg, $valpost.result);
                }
                $ops.result($reg);
            }
            else {
                pir::die("Lexical lookup/bind NYI");
            }
        }
        else {
            pir::die("QAST::Var with scope '$scope' NYI");
        }
        
        $ops
    }
    
    multi method as_post(QAST::IVal $node) {
        self.post_new('Ops', :result(~$node.value))
    }
    
    multi method as_post(QAST::NVal $node) {
        my $val := ~$node.value;
        $val := $val ~ '.0' unless nqp::index($val, '.', 0) >= 0;
        self.post_new('Ops', :result($val))
    }
    
    multi method as_post(QAST::SVal $node) {
        self.post_new('Ops', :result(self.escape($node.value)))
    }
    
    multi method as_post(QAST::BVal $node) {
        my $cuid := self.escape($node.block.cuid);
        my $reg  := $*REGALLOC.fresh_p();
        my $ops  := self.post_new('Ops', :result($reg));
        $ops.push_pirop(".const 'Sub' $reg = '$cuid'");
        $ops;
    }
    
    multi method as_post(QAST::WVal $node) {
        my $val    := $node.value;
        my $sc     := pir::nqp_get_sc_for_object__PP($val);
        my $handle := $sc.handle;
        my $idx    := $sc.slot_index_for($val);
        my $reg    := $*REGALLOC.fresh_p();
        my $ops    := self.post_new('Ops', :result($reg));
        $ops.push_pirop('nqp_get_sc_object', $reg, self.escape($handle), ~$idx);
        $ops;
    }
    
    method coerce($post, $desired) {
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
        else {
            pir::die("Coercion from '$result' to '$desired' NYI");
        }
    }
    
    method infer_type($inferee) {
        if nqp::substr($inferee, 0, 1) eq '$' {
            nqp::substr($inferee, 1, 1)
        }
        elsif $*BLOCK.reg_type($inferee) -> $type {
            nqp::lc($type)
        }
        elsif nqp::substr($inferee, 0, 6) eq 'utf8:"'
              || nqp::substr($inferee, 0, 6) eq 'ucs4:"'
              || nqp::substr($inferee, 0, 1) eq '"' {
            "s"
        }
        elsif nqp::index($inferee, ".", 0) > 0 {
            "n"
        }
        elsif +$inferee eq $inferee {
            "i"
        }
        else {
            pir::die("Cannot infer type from '$inferee'");
        }
    }
    
    multi method as_post(QAST::Regex $node) {
        my $ops := self.post_new('Ops');
        my $prefix := self.unique('rx') ~ '_';
        my %*REG;

        # build the list of (unique) registers we need
        my $reglist := nqp::split(' ', 'tgt string pos int off int eos int rep int cur pmc curclass pmc bstack pmc cstack pmc');
        while $reglist {
            my $reg := nqp::shift($reglist);
            my $name := %*REG{$reg} := $prefix ~ $reg;
            $ops.push_pirop('.local ' ~ nqp::shift($reglist), $name);
        }

        # create our labels
        my $startlabel   := self.post_new('Label', :result($prefix ~ 'start'));
        my $donelabel    := self.post_new('Label', :result($prefix ~ 'done'));
        my $restartlabel := self.post_new('Label', :result($prefix ~ 'restart'));
        my $faillabel    := self.post_new('Label', :result($prefix ~ 'fail'));
        my $jumplabel    := self.post_new('Label', :result($prefix ~ 'jump'));
        my $cutlabel     := self.post_new('Label', :result($prefix ~ 'cut'));
        my $cstacklabel  := self.post_new('Label', :result($prefix ~ 'cstack_done'));
        %*REG<fail>      := $faillabel;

        # common prologue
        my $startreg := '(' ~ nqp::join(', ', [%*REG<cur>, %*REG<tgt>, %*REG<pos>, %*REG<curclass>, %*REG<bstack>, '$I19']) ~ ')';
        $ops.push_pirop('callmethod', '"!cursor_start"', 'self', :result($startreg));
        $ops.push_pirop('store_lex', 'unicode:"$\x{a2}"', %*REG<cur>);
        $ops.push_pirop('length', %*REG<eos>, %*REG<tgt>);
        $ops.push_pirop('eq', '$I19', 1, $restartlabel);
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
        $ops.push_pirop('if_null', %*REG<cstack>, $jumplabel);
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

    method post_children($node) {
        Q:PIR {
            $P0 = find_dynamic_lex '$*PASTCOMPILER'
            $P1 = find_lex '$node'
            (%r :slurpy) = $P0.'post_children'($P1)
        }
    }

    method regex_post($node) {
        return $*PASTCOMPILER.as_post($node) if $node ~~ PAST::Node;
        my $rxtype := $node.rxtype() // 'concat';
        self."$rxtype"($node);
    }

    method post_new($type, *@args, *%options) {
        Q:PIR {
            $P0 = find_lex '$type'
            $S0 = $P0
            $P0 = get_root_global ['parrot';'POST'], $S0
            $P1 = find_lex '@args'
            $P2 = find_lex '%options'
            %r = $P0.'new'($P1 :flat, $P2 :flat :named)
        }
    }

    method alt($node) { self.altseq($node) }

    method altseq($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $prefix := self.unique('alt') ~ '_';
        my $altcount := 0;
        my $iter     := nqp::iterator($node.list);
        my $endlabel := self.post_new('Label', :result($prefix ~ 'end'));
        my $altlabel := self.post_new('Label', :result($prefix ~ $altcount));
        my $apost    := self.regex_post(nqp::shift($iter));
        while $iter {
            $ops.push($altlabel);
            $altcount++;
            $altlabel := self.post_new('Label', :result($prefix ~ $altcount));
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
        my $donelabel := self.post_new('Label', :result(self.unique('rxanchor') ~ '_done'));
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

    our %cclass_code;
    INIT {
        %cclass_code<.>  := '.CCLASS_ANY';
        %cclass_code<d>  := '.CCLASS_NUMERIC';
        %cclass_code<s>  := '.CCLASS_WHITESPACE';
        %cclass_code<w>  := '.CCLASS_WORD';
        %cclass_code<n>  := '.CCLASS_NEWLINE';
        %cclass_code<nl> := '.CCLASS_NEWLINE';
    }

    method cclass($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $subtype := $node.subtype;
        $ops.push_pirop('ge', %*REG<pos>, %*REG<eos>, %*REG<fail>);
        my $cclass := %cclass_code{nqp::lc($subtype)};
        self.panic("Unrecognized subtype '$subtype' in QAST::Regex cclass")
            unless $cclass;
        if $cclass ne '.CCLASS_ANY' {
            my $testop := $node.negate ?? 'if' !! 'unless';
            $ops.push_pirop('is_cclass', '$I11', $cclass, %*REG<tgt>, %*REG<pos>);
            $ops.push_pirop($testop, '$I11', %*REG<fail>); 
            if $subtype eq 'nl' {
                $ops.push_pirop('substr', '$S10', %*REG<tgt>, %*REG<pos>, 2);
                $ops.push_pirop('iseq', '$I11', '$S10', '"\r\n"');
                $ops.push_pirop('add', %*REG<pos>, '$I11');
            } 
        }
        $ops.push_pirop('add', %*REG<pos>, 1);
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
        my $conjlabel := self.post_new('Label', :result($prefix ~ 'fail'));
        my $firstlabel := self.post_new('Label', :result($prefix ~ 'first'));
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
        $ops.push_pirop('substr', '$S10', %*REG<tgt>, %*REG<pos>, $litlen);
        $ops.push_pirop('downcase', '$S10', '$S10')
            if $node.subtype eq 'ignorecase';
        $ops.push_pirop($cmpop,   '$S10', $litpost, %*REG<fail>);
        $ops.push_pirop('add',    %*REG<pos>, $litlen);
        $ops;
    }

    method pass($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my @backtrack := ["'backtrack'=>1"]
            if $node.backtrack ne 'r';
        if $node.name() {
            my $name := $*PASTCOMPILER.as_post($node.name(), :rtype<~>);
            $ops.push_pirop('callmethod', '"!cursor_pass"', %*REG<cur>, %*REG<pos>, $name, |@backtrack);
        }
        else {
            $ops.push_pirop('callmethod', '"!cursor_pass"', %*REG<cur>, %*REG<pos>, |@backtrack);
        }
        $ops.push_pirop('return', %*REG<cur>);
        $ops;
    }

    method pastnode($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        $ops.push_pirop('repr_bind_attr_int', %*REG<cur>, %*REG<curclass>, '"$!pos"', %*REG<pos>);
        $ops.push_pirop('store_lex', 'unicode:"$\x{a2}"', %*REG<cur>);
        my $cpost := $*PASTCOMPILER.as_post($node[0], :rtype<P>);
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
        my $looplabel := self.post_new('Label', :result($prefix ~ '_loop'));
        my $donelabel := self.post_new('Label', :result($prefix ~ '_done'));
        my $rcslabel  := self.post_new('Label', :result($prefix ~ '_ratchet_cstack'));
        my $min       := $node.min || 0;
        my $max       := $node.max // -1;
        my $needrep   := $min > 1 || $max > 1;
        my $needmark  := $needrep || $backtrack eq 'r';

        $ops.push_pirop('inline', :inline('  # rx %0 ** %1..%2'), $prefix, $min, $max);

        if $backtrack eq 'f' {
            my $seplabel  := self.post_new('Label', :result($prefix ~ '_sep'));
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
            self.regex_mark($ops, $rcslabel, -1, 0) # to track cstack as we ratchet
                if $backtrack eq 'r' && $max != 1;
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
                $ops.push_pirop('nqp_rxsetcaps', %*REG<bstack>, %*REG<cstack>)
                    if $backtrack eq 'r';
                $ops.push(self.regex_post($sep)) if $sep;
                $ops.push_pirop('goto', $looplabel);
            }
            $ops.push($donelabel);
            if $backtrack eq 'r' && $max != 1 {
                self.regex_commit($ops, $rcslabel); # pop cstack/ratchet tracking mark
                $ops.push($rcslabel);
            }
            $ops.push_pirop('lt', %*REG<rep>, +$node.min, %*REG<fail>)
                if $min > 1;
        }
        $ops;
    }

    method scan($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $prefix := self.unique('rxscan');
        my $looplabel := self.post_new('Label', :result($prefix ~ '_loop'));
        my $scanlabel := self.post_new('Label', :result($prefix ~ '_scan'));
        my $donelabel := self.post_new('Label', :result($prefix ~ '_done'));
        $ops.push_pirop('repr_get_attr_int', '$I11', 'self', %*REG<curclass>, '"$!from"');
        $ops.push_pirop('ne', '$I11', -1, $donelabel);
        $ops.push_pirop('goto', $scanlabel);
        $ops.push($looplabel);
        $ops.push_pirop('inc', %*REG<pos>);
        $ops.push_pirop('gt', %*REG<pos>, %*REG<eos>, %*REG<fail>);
        $ops.push_pirop('repr_bind_attr_int', %*REG<cur>, %*REG<curclass>, '"$!from"', %*REG<pos>);
        $ops.push($scanlabel);
        self.regex_mark($ops, $looplabel, %*REG<pos>, 0);
        $ops.push($donelabel);
        $ops;
    }

    method subcapture($node) {
        my $ops := self.post_new('Ops', :result(%*REG<cur>));
        my $prefix := self.unique('rxcap');
        my $donelabel := self.post_new('Label', :result($prefix ~ '_done'));
        my $faillabel := self.post_new('Label', :result($prefix ~ '_fail'));
        my $name := $*PASTCOMPILER.as_post($node.name, :rtype<*>);
        self.regex_mark($ops, $faillabel, %*REG<pos>, 0);
        $ops.push(self.regex_post($node[0]));
        self.regex_peek($ops, $faillabel, '$I11');
        $ops.push($name);
        $ops.push_pirop('repr_bind_attr_int', %*REG<cur>, %*REG<curclass>, '"$!pos"', '$I11');
        $ops.push_pirop('callmethod', '"!cursor_start"', %*REG<cur>, :result<$P11>);
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
        my $name := $*PASTCOMPILER.as_post($node.name, :rtype<*>);
        my $subtype := $node.subtype;
        my $cpn := self.post_children($node[0]);
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
            my $passlabel := self.post_new('Label', :result($rxname ~ '_pass'));
            if $node.backtrack eq 'r' {
                unless $subtype eq 'method' {
                    self.regex_mark($ops, $passlabel, -1, 0);
                    $ops.push($passlabel);
                }
            }
            else {
                my $backlabel := self.post_new('Label', :result($rxname ~ '_back'));
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
        $ops.push_pirop('nqp_rxpeek', '$I11', %*REG<bstack>, $mark);
        $ops.push_pirop('assign', %*REG<bstack>, '$I11');
    }
}

