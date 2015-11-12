class QRegex::P5Regex::Actions is HLL::Actions {
    method TOP($/) {
        make QAST::CompUnit.new(
            :hll('P5Regex'),
            :sc($*W.sc()),
            :code_ref_blocks($*W.code_ref_blocks()),
            :compilation_mode(0),
            :pre_deserialize($*W.load_dependency_tasks()),
            :post_deserialize($*W.fixup_tasks()),
            self.qbuildsub($<nibbler>.ast, :anon(1), :addself(1))
        );
    }

    method nibbler($/) { make $<alternation>.ast }

    method alternation($/) {
        my $qast := $<sequence>[0].ast;
        if +$<sequence> > 1 {
            $qast := QAST::Regex.new( :rxtype<altseq>, :node($/) );
            for $<sequence> { $qast.push($_.ast); }
        }
        make $qast;
    }

    method sequence($/) {
        if $<quantified_atom> {
            my $qast := QAST::Regex.new( :rxtype<concat>, :node($/) );
            my $lastlit := 0;
            for $<quantified_atom> {
                my $ast := $_.ast;
                if $ast {
                    if $lastlit && $ast.rxtype eq 'literal'
                            && !QAST::Node.ACCEPTS($ast[0]) {
                        $lastlit[0] := $lastlit[0] ~ $ast[0];
                    }
                    else {
                        $qast.push($_.ast);
                        $lastlit := $ast.rxtype eq 'literal' 
                                    && !QAST::Node.ACCEPTS($ast[0])
                                    ?? $ast !! 0;
                    }
                }
            }
            make $qast;
        }
        else {
            make QAST::Regex.new( :rxtype<anchor>, :name<pass>, :node($/) );
        }
    }

    method quantified_atom($/) {
        my $qast := $<atom>.ast;
        if $<quantifier> {
            my $ast := $<quantifier>[0].ast;
            $ast.unshift($qast || QAST::Regex.new( :rxtype<anchor>, :name<pass> ));
            $qast := $ast;
        }
        $qast.backtrack('r') if $qast && !$qast.backtrack && %*RX<r>;
        make $qast;
    }

    method atom($/) {
        if $<metachar> {
            make $<metachar>.ast;
        }
        elsif $<esc> {
            my $qast := QAST::Regex.new( ~$<esc>, :rxtype<literal>, :node($/));
            make $qast;
        }
        else {
            my $qast := QAST::Regex.new( ~$/, :rxtype<literal>, :node($/));
            $qast.subtype('ignorecase') if %*RX<i>;
            make $qast;
        }
    }
    
    method p5metachar:sym<bs>($/) {
        make $<backslash>.ast;
    }
    
    method p5metachar:sym<.>($/) {
        make %*RX<s>
            ?? QAST::Regex.new( :rxtype<cclass>, :name<.>, :node($/) )
            !! QAST::Regex.new( :rxtype<cclass>, :name<n>, :negate(1), :node($/) );
    }

    method p5metachar:sym<^>($/) {
        make QAST::Regex.new( :rxtype<anchor>, :subtype(%*RX<m> ?? 'bol' !! 'bos'), :node($/) );
    }

    method p5metachar:sym<$>($/) {
        make QAST::Regex.new(
            :rxtype('concat'),
            QAST::Regex.new(
                :rxtype('quant'), :min(0), :max(1),
                QAST::Regex.new( :rxtype('cclass'), :name<n> )
            ),
            QAST::Regex.new( :rxtype<anchor>, :subtype(%*RX<m> ?? 'eol' !! 'eos'), :node($/) )
        );
    }
    
    method p5metachar:sym<(? )>($/) { # like P6's $<name>=[ ... ]
        my $qast;
        if $<nibbler> {
            $qast := QAST::Regex.new( :rxtype<subcapture>, :name(~$<name>),
                $<nibbler>.ast, :node($/) );
        }
        else {
            $qast := $<assertion>.ast;
        }
        make $qast;
    }
    
    method p5metachar:sym<(?: )>($/) {
        make $<nibbler>.ast;
    }
    
    method p5metachar:sym<( )>($/) {
        make QAST::Regex.new( :rxtype<subcapture>, :node($/),
            $<nibbler>.ast );
    }
    
    method p5metachar:sym<[ ]>($/) {
        make $<cclass>.ast;
    }
    
    method cclass($/) {
        my $str := '';
        my $qast;
        my @alts;
        for $<charspec> {
            if $_[1] {
                my $node;
                my $lhs;
                my $rhs;
                if $_[0]<backslash> {
                    $node := $_[0]<backslash>.ast;
                    $/.CURSOR.panic("Illegal range endpoint in regex: " ~ ~$_)
                        if $node.rxtype ne 'literal' && $node.rxtype ne 'enumcharlist'
                            || $node.negate || nqp::chars($node[0]) != 1;
                    $lhs := $node[0];
                }
                else {
                    $lhs := ~$_[0][0];
                }
                if $_[1][0]<backslash> {
                    $node := $_[1][0]<backslash>.ast;
                    $/.CURSOR.panic("Illegal range endpoint in regex: " ~ ~$_)
                        if $node.rxtype ne 'literal' && $node.rxtype ne 'enumcharlist'
                            || $node.negate || nqp::chars($node[0]) != 1;
                    $rhs := $node[0];
                }
                else {
                    $rhs := ~$_[1][0][0];
                }
                sub add_range($from, $to) {
                    my int $ord0 := nqp::ord($from);
                    my int $ord1 := nqp::ord($to);
                    $/.CURSOR.panic("Illegal reversed character range in regex: " ~ ~$_)
                        if $ord0 > $ord1;
                    $str := nqp::concat($str, nqp::chr($ord0++)) while $ord0 <= $ord1;
                }
                if %*RX<i> {
                    add_range(nqp::lc($lhs), nqp::lc($rhs));
                    add_range(nqp::uc($lhs), nqp::uc($rhs));
                }
                else {
                    add_range($lhs, $rhs);
                }
            }
            elsif $_[0]<backslash> {
                my $bs := $_[0]<backslash>.ast;
                $bs.negate(!$bs.negate) if $<sign> eq '^';
                @alts.push($bs);
            }
            else {
                my $c := ~$_[0];
                $str := $str ~ (%*RX<i> ?? nqp::lc($c) ~ nqp::uc($c) !! $c);
            }
        }
        @alts.push(QAST::Regex.new( $str, :rxtype<enumcharlist>, :node($/), :negate( $<sign> eq '^' ) ))
            if nqp::chars($str);
        $qast := +@alts == 1 ?? @alts[0] !!
            $<sign> eq '^' ??
                QAST::Regex.new( :rxtype<concat>, :node($/),
                    QAST::Regex.new( :rxtype<conj>, :subtype<zerowidth>, |@alts ), 
                    QAST::Regex.new( :rxtype<cclass>, :name<.> ) ) !!
                QAST::Regex.new( :rxtype<altseq>, |@alts );
        make $qast;
    }

    method p5backslash:sym<A>($/) {
        make QAST::Regex.new( :rxtype<anchor>, :subtype<bos>, :node($/) );
    }

    method p5backslash:sym<b>($/) {
        make QAST::Regex.new(:rxtype<subrule>, :subtype<zerowidth>,
                             :node($/), :negate($<sym> eq 'B'), :name(''),
                             QAST::NodeList.new( QAST::SVal.new( :value('wb') ) ));
    }

    method p5backslash:sym<h>($/) {
        make QAST::Regex.new( "\x[09,20,a0,1680,180e,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,200a,202f,205f,3000]", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'H'), :node($/) );
    }

    method p5backslash:sym<r>($/) {
        make QAST::Regex.new( "\r", :rxtype('enumcharlist'), :node($/) );
    }

    method p5backslash:sym<R>($/) {
        make QAST::Regex.new( :rxtype<cclass>, :name( 'n' ), :node($/) );
    }

    method p5backslash:sym<s>($/) {
        make QAST::Regex.new(:rxtype<cclass>, :name( nqp::lc(~$<sym>) ),
                             :negate($<sym> le 'Z'), :node($/));
    }

    method p5backslash:sym<t>($/) {
        make QAST::Regex.new( "\t", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'T'), :node($/) );
    }

    method p5backslash:sym<v>($/) {
        make QAST::Regex.new( "\x[0a,0b,0c,0d,85,2028,2029]",
                        :rxtype('enumcharlist'),
                        :negate($<sym> eq 'V'), :node($/) );
    }

    method p5backslash:sym<x>($/) {
        my $hexlit := nqp::chars($<hexint>)
            ?? nqp::chr( self.string_to_int($<hexint>, 16) )
            !! nqp::chr(0);
        make QAST::Regex.new( $hexlit, :rxtype('literal'), :node($/) );
    }

    method p5backslash:sym<z>($/) {
        make QAST::Regex.new( :rxtype<anchor>, :subtype<eos>, :node($/) );
    }

    method p5backslash:sym<Z>($/) {
        make QAST::Regex.new(
            :rxtype('concat'),
            QAST::Regex.new(
                :rxtype('quant'), :min(0), :max(1),
                QAST::Regex.new( :rxtype('cclass'), :name<n> )
            ),
            QAST::Regex.new( :rxtype<anchor>, :subtype('eos'), :node($/) )
        );
    }

    method p5backslash:sym<misc>($/) {
        if $<litchar> {
            make QAST::Regex.new( ~$<litchar> , :rxtype('literal'), :node($/) );
        }
        else {
            make QAST::Regex.new( :rxtype<subrule>, :subtype<method>, :node($/),
                QAST::NodeList.new(
                    QAST::SVal.new( :value('!BACKREF-LATEST-CAPTURE') ),
                    QAST::SVal.new( :value(~$<number> - 1) ) ) );
        }
    }
    
    method p5assertion:sym«<»($/) {
        if $<nibbler> {
            make QAST::Regex.new(
                :rxtype<subrule>, :subtype<zerowidth>, :negate($<neg> eq '!'), :node($/),
                QAST::NodeList.new(
                    QAST::SVal.new( :value('after') ),
                    self.qbuildsub(self.flip_ast($<nibbler>.ast), :anon(1), :addself(1))
                ));
        }
        else {
            make 0;
        }
    }
   
    method p5assertion:sym<=>($/) {
        if $<nibbler> {
            make QAST::Regex.new(
                :rxtype<subrule>, :subtype<zerowidth>, :node($/),
                QAST::NodeList.new(
                    QAST::SVal.new( :value('before') ),
                    self.qbuildsub($<nibbler>.ast, :anon(1), :addself(1))
                ));
        }
        else {
            make 0;
        }
    }
    
    method p5assertion:sym<!>($/) {
        if $<nibbler> {
            make QAST::Regex.new(
                :rxtype<subrule>, :subtype<zerowidth>, :negate(1), :node($/),
                QAST::NodeList.new(
                    QAST::SVal.new( :value('before') ),
                    self.qbuildsub($<nibbler>.ast, :anon(1), :addself(1))
                ));
        }
        else {
            make 0;
        }
    }

    method p5mods($/) {
        for nqp::split('', ~$<on>) {
            %*RX{$_} := 1;
        }
        if $<off> {
            for nqp::split('', ~$<off>[0]) {
                %*RX{$_} := 0;
            }
        }
    }
    
    method p5assertion:sym<mod>($/) {
        if $<nibbler> {
            make $<nibbler>[0].ast;
        }
        else {
            for %*RX {
                %*OLDRX{$_.key} := $_.value;
            }
            make 0;
        }
    }
    
    method p5quantifier:sym<*>($/) {
        my $qast := QAST::Regex.new( :rxtype<quant>, :min(0), :max(-1), :node($/) );
        make quantmod($qast, $<quantmod>);
    }

    method p5quantifier:sym<+>($/) {
        my $qast := QAST::Regex.new( :rxtype<quant>, :min(1), :max(-1), :node($/) );
        make quantmod($qast, $<quantmod>);
    }

    method p5quantifier:sym<?>($/) {
        my $qast := QAST::Regex.new( :rxtype<quant>, :min(0), :max(1), :node($/) );
        make quantmod($qast, ~$<quantmod>);
    }
    
    method p5quantifier:sym<{ }>($/) {
        my $qast;
        $qast := QAST::Regex.new( :rxtype<quant>, :min(+$<start>), :node($/) );
        if $<end> && ~$<end>[0] ne '' { $qast.max(+$<end>[0]); }
        elsif $<comma>                { $qast.max(-1); }
        else                          { $qast.max($qast.min); }
        make quantmod($qast, $<quantmod>);
    }
    
    sub quantmod($ast, $mod) {
        if    $mod eq '?' { $ast.backtrack('f') }
        elsif $mod eq '+' { $ast.backtrack('g') }
        $ast;
    }
    
    method qbuildsub($qast, $block = QAST::Block.new(), :$anon, :$addself, *%rest) {
        my $code_obj := nqp::existskey(%rest, 'code_obj')
            ?? %rest<code_obj>
            !! self.create_regex_code_object($block);

        if $addself {
            $block.push(QAST::Var.new( :name('self'), :scope('local'), :decl('param') ));
        }
        unless $block.symbol('$¢') {
            $block.push(QAST::Var.new(:name<$¢>, :scope<lexical>, :decl('var')));
            $block.symbol('$¢', :scope<lexical>);
        }

        self.store_regex_caps($code_obj, $block, capnames($qast, 0));
        self.store_regex_nfa($code_obj, $block, QRegex::NFA.new.addnode($qast));

        $block.annotate('orig_qast', $qast);
        $qast := QAST::Regex.new( :rxtype<concat>,
                     QAST::Regex.new( :rxtype<scan> ),
                     $qast,
                     ($anon ??
                          QAST::Regex.new( :rxtype<pass> ) !!
                          QAST::Regex.new( :rxtype<pass>, :name(%*RX<name>) )));
        $block.push($qast);
        
        $block;
    }

    sub capnames($ast, $count) {
        my %capnames;
        my $rxtype := $ast.rxtype;
        if $rxtype eq 'concat' {
            for $ast.list {
                my %x := capnames($_, $count);
                for %x { %capnames{$_.key} := +%capnames{$_.key} + $_.value; }
                $count := %x{''};
            } 
        }
        elsif $rxtype eq 'altseq' || $rxtype eq 'alt' {
            my $max := $count;
            for $ast.list {
                my %x := capnames($_, $count);
                for %x {
                    %capnames{$_.key} := +%capnames{$_.key} < 2 && %x{$_.key} == 1 ?? 1 !! 2;
                }
                $count := %x{''};
            }
        }
        elsif $rxtype eq 'subrule' && $ast.subtype eq 'capture' {
            my $name := $ast.name;
            if $name eq '' { $name := $count; $ast.name($name); }
            my @names := nqp::split('=', $name);
            for @names {
                if $_ eq '0' || $_ > 0 { $count := $_ + 1; }
                %capnames{$_} := 1;
            }
        }
        elsif $rxtype eq 'subcapture' {
            my $name := $ast.name;
            if $name eq '' { $name := $count; $ast.name($name); }
            for nqp::split(' ', $name) {
                if $_ eq '0' || $_ > 0 { $count := $_ + 1; }
                %capnames{$_} := 1;
            }
            my %x := capnames($ast[0], $count);
            for %x { %capnames{$_.key} := +%capnames{$_.key} + %x{$_.key} }
            $count := %x{''};
        }
        elsif $rxtype eq 'quant' {
            my %astcap := capnames($ast[0], $count);
            $count := %astcap{''};
        }
        %capnames{''} := $count;
        nqp::deletekey(%capnames, '$!from');
        nqp::deletekey(%capnames, '$!to');
        %capnames;
    }
    
    method flip_ast($qast) {
        return $qast unless nqp::istype($qast, QAST::Regex);
        if $qast.rxtype eq 'literal' {
            $qast[0] := nqp::flip($qast[0]);
        }
        elsif $qast.rxtype eq 'concat' {
            my @tmp;
            while +@($qast) { @tmp.push(@($qast).shift) }
            while @tmp      { @($qast).push(self.flip_ast(@tmp.pop)) }
        }
        else {
            for @($qast) { self.flip_ast($_) }
        }
        $qast
    }
    
    # This is overridden by a compiler that wants to create code objects
    # for regexes. We just use the standard NQP one in standalone mode.
    method create_regex_code_object($block) {
        $*W.create_code($block, $block.name);
    }
    
    # Stores the captures info for a regex.
    method store_regex_caps($code_obj, $block, %caps) {
        $code_obj.SET_CAPS(%caps);
    }
    
    # Override this to store the overall NFA for a regex. (Standalone mode doesn't need
    # it, as it only supports executing individual regexes).
    method store_regex_nfa($code_obj, $block, $nfa) {
    }

    # XXX Below here copied from p6regex; needs review

    method metachar:sym<'>($/) {
        my $quote := $<quote_EXPR>.ast;
        if QAST::SVal.ACCEPTS($quote) { $quote := $quote.value; }
        my $qast := QAST::Regex.new( $quote, :rxtype<literal>, :node($/) );
        $qast.subtype('ignorecase') if %*RX<i>;
        make $qast;
    }

    method metachar:sym<">($/) {
        my $quote := $<quote_EXPR>.ast;
        if QAST::SVal.ACCEPTS($quote) { $quote := $quote.value; }
        my $qast := QAST::Regex.new( $quote, :rxtype<literal>, :node($/) );
        $qast.subtype('ignorecase') if %*RX<i>;
        make $qast;
    }

    method metachar:sym<lwb>($/) {
        make QAST::Regex.new( :rxtype<anchor>, :subtype<lwb>, :node($/) );
    }

    method metachar:sym<rwb>($/) {
        make QAST::Regex.new( :rxtype<anchor>, :subtype<rwb>, :node($/) );
    }

    method metachar:sym<from>($/) {
        make QAST::Regex.new( :rxtype<subrule>, :subtype<capture>,
            :backtrack<r>, :name<$!from>, :node($/),
            QAST::NodeList.new(
                QAST::SVal.new( :value('!LITERAL') ),
                QAST::SVal.new( :value('') ) ) );
    }

    method metachar:sym<to>($/) {
        make QAST::Regex.new( :rxtype<subrule>, :subtype<capture>,
            :backtrack<r>, :name<$!to>, :node($/),
            QAST::NodeList.new(
                QAST::SVal.new( :value('!LITERAL') ),
                QAST::SVal.new( :value('') ) ) );
    }

    method metachar:sym<assert>($/) {
        make $<assertion>.ast;
    }

    method metachar:sym<var>($/) {
        my $qast;
        my $name := $<pos> ?? +$<pos> !! ~$<name>;
        if $<quantified_atom> {
            $qast := $<quantified_atom>[0].ast;
            if $qast.rxtype eq 'quant' && $qast[0].rxtype eq 'subrule' {
                self.subrule_alias($qast[0], $name);
            }
            elsif $qast.rxtype eq 'subrule' { 
                self.subrule_alias($qast, $name); 
            }
            else {
                $qast := QAST::Regex.new( $qast, :name($name), 
                                          :rxtype<subcapture>, :node($/) );
            }
        }
        else {
            $qast := QAST::Regex.new( :rxtype<subrule>, :subtype<method>, :node($/),
                QAST::NodeList.new(
                    QAST::SVal.new( :value('!BACKREF-LATEST-CAPTURE') ),
                    QAST::SVal.new( :value($name) ) ) );
        }
        make $qast;
    }

    method backslash:sym<e>($/) {
        my $qast := QAST::Regex.new( "\c[27]", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'E'), :node($/) );
        make $qast;
    }

    method backslash:sym<f>($/) {
        my $qast := QAST::Regex.new( "\c[12]", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'F'), :node($/) );
        make $qast;
    }

    method backslash:sym<h>($/) {
        my $qast := QAST::Regex.new( "\x[09,20,a0,1680,180e,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,200a,202f,205f,3000]", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'H'), :node($/) );
        make $qast;
    }

    method backslash:sym<r>($/) {
        my $qast := QAST::Regex.new( "\r", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'R'), :node($/) );
        make $qast;
    }

    method backslash:sym<t>($/) {
        my $qast := QAST::Regex.new( "\t", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'T'), :node($/) );
        make $qast;
    }

    method backslash:sym<v>($/) {
        my $qast := QAST::Regex.new( "\x[0a,0b,0c,0d,85,2028,2029]",
                        :rxtype('enumcharlist'),
                        :negate($<sym> eq 'V'), :node($/) );
        make $qast;
    }

    method backslash:sym<o>($/) {
        my $octlit :=
            HLL::Actions.ints_to_string( $<octint> || $<octints><octint> );
        make $<sym> eq 'O'
             ?? QAST::Regex.new( $octlit, :rxtype('enumcharlist'),
                                  :negate(1), :node($/) )
             !! QAST::Regex.new( $octlit, :rxtype('literal'), :node($/) );
    }

    method backslash:sym<x>($/) {
        my $hexlit :=
            HLL::Actions.ints_to_string( $<hexint> || $<hexints><hexint> );
        make $<sym> eq 'X'
             ?? QAST::Regex.new( $hexlit, :rxtype('enumcharlist'),
                                  :negate(1), :node($/) )
             !! QAST::Regex.new( $hexlit, :rxtype('literal'), :node($/) );
    }

    method backslash:sym<c>($/) {
        make QAST::Regex.new( $<charspec>.ast, :rxtype('literal'), :node($/) );
    }

    method assertion:sym<name>($/) {
        my $name := ~$<longname>;
        my $qast;
        if $<assertion> {
            $qast := $<assertion>.ast;
            if $qast.rxtype eq 'subrule' {
                self.subrule_alias($qast, $name);
            }
            else {
                $qast := QAST::Regex.new( $qast, :name($name), 
                                          :rxtype<subcapture>, :node($/) );
            }
        }
        elsif $name eq 'sym' {
            my $loc := nqp::index(%*RX<name>, ':sym<');
            $loc := nqp::index(%*RX<name>, ':sym«')
                if $loc < 0;
            my $rxname := nqp::substr(%*RX<name>, $loc + 5);
            $rxname := nqp::substr($rxname, 0, nqp::chars($rxname) - 1);
            $qast := QAST::Regex.new(:name('sym'), :rxtype<subcapture>, :node($/),
                QAST::Regex.new(:rxtype<literal>, $rxname, :node($/)));
        }
        else {
            $qast := QAST::Regex.new(:rxtype<subrule>, :subtype<capture>,
                                     :node($/), :name($name),
                                     QAST::NodeList.new(QAST::SVal.new( :value($name) )));
            if $<arglist> {
                for $<arglist>.ast.list { $qast[0].push( $_ ) }
            }
            elsif $<nibbler> {
                $name eq 'after' ??
                    $qast[0].push(self.qbuildsub(self.flip_ast($<nibbler>.ast), :anon(1), :addself(1))) !!
                    $qast[0].push(self.qbuildsub($<nibbler>.ast, :anon(1), :addself(1)));
            }
        }
        make $qast;
    }
    
    method arg($/) {
        make $<quote_EXPR> ?? $<quote_EXPR>.ast !! +$<val>;
    }

    method arglist($/) {
        my $ast := QAST::Op.new( :op('list') );
        for $<arg> { $ast.push( $_.ast ); }
        make $ast;
    }

    method subrule_alias($ast, $name) {
        if $ast.name gt '' { $ast.name( $name ~ '=' ~ $ast.name ); }
        else { $ast.name($name); }
        $ast.subtype('capture');
    }
}
