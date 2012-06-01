class QRegex::P6Regex::Actions is HLL::Actions {
    method TOP($/) {
        make buildsub($<nibbler>.ast);
    }

    method nibbler($/) { make $<termaltseq>.ast }

    method termaltseq($/) {
        my $qast := $<termconjseq>[0].ast;
        if +$<termconjseq> > 1 {
            $qast := QAST::Regex.new( :rxtype<altseq>, :node($/) );
            for $<termconjseq> { $qast.push($_.ast) }
        }
        make $qast;
    }

    method termconjseq($/) {
        my $qast := $<termalt>[0].ast;
        if +$<termalt> > 1 {
            $qast := QAST::Regex.new( :rxtype<conjseq>, :node($/) );
            for $<termalt> { $qast.push($_.ast); }
        }
        make $qast;
    }

    method termalt($/) {
        my $qast := $<termconj>[0].ast;
        if +$<termconj> > 1 {
            $qast := QAST::Regex.new( :rxtype<alt>, :node($/) );
            for $<termconj> { $qast.push($_.ast) }
        }
        make $qast;
    }

    method termconj($/) {
        my $qast := $<termish>[0].ast;
        if +$<termish> > 1 {
            $qast := QAST::Regex.new( :rxtype<conj>, :node($/) );
            for $<termish> { $qast.push($_.ast); }
        }
        make $qast;
    }

    method termish($/) {
        my $qast := QAST::Regex.new( :rxtype<concat>, :node($/) );
        my $lastlit := 0;
        for $<noun> {
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

    method quantified_atom($/) {
        my $qast := $<atom>.ast;
        if $<quantifier> {
            my $ast := $<quantifier>[0].ast;
            $ast.unshift($qast);
            $qast := $ast;
        }
        if $<separator> {
            unless $qast.rxtype eq 'quant' {
                $/.CURSOR.panic("'" ~ $<separator>[0]<septype> ~
                    "' many only be used immediately following a quantifier")
            }
            $qast.push($<separator>[0].ast);
            if $<separator>[0]<septype> eq '%%' {
                $qast := QAST::Regex.new( :rxtype<concat>, $qast,
                    QAST::Regex.new( :rxtype<quant>, :min(0), :max(1), $<separator>[0].ast ));
            }
        }
        $qast.backtrack('r') if $qast && !$qast.backtrack &&
            (%*RX<r> || $<backmod> && ~$<backmod>[0] eq ':');
        make $qast;
    }
    
    method separator($/) {
        make $<quantified_atom>.ast;
    }

    method atom($/) {
        if $<metachar> {
            make $<metachar>.ast;
        }
        else {
            my $qast := QAST::Regex.new( ~$/, :rxtype<literal>, :node($/));
            $qast.subtype('ignorecase') if %*RX<i>;
            make $qast;
        }
    }

    method quantifier:sym<*>($/) {
        my $qast := QAST::Regex.new( :rxtype<quant>, :node($/) );
        make backmod($qast, $<backmod>);
    }

    method quantifier:sym<+>($/) {
        my $qast := QAST::Regex.new( :rxtype<quant>, :min(1), :node($/) );
        make backmod($qast, $<backmod>);
    }

    method quantifier:sym<?>($/) {
        my $qast := QAST::Regex.new( :rxtype<quant>, :min(0), :max(1), :node($/) );
        make backmod($qast, $<backmod>);
    }

    method quantifier:sym<**>($/) {
        my $qast;
        $qast := QAST::Regex.new( :rxtype<quant>, :min(+$<min>), :node($/) );
        if ! $<max> { $qast.max(+$<min>) }
        elsif $<max>[0] ne '*' { $qast.max(+$<max>[0]); }
        make backmod($qast, $<backmod>);
    }

    method metachar:sym<ws>($/) {
        my $qast := %*RX<s>
                    ?? QAST::Regex.new(PAST::Node.new('ws'), :rxtype<ws>, :subtype<method>, :node($/))
                    !! 0;
        make $qast;
    }

    method metachar:sym<[ ]>($/) {
        make $<nibbler>.ast;
    }

    method metachar:sym<( )>($/) {
        my $subpast := PAST::Node.new(buildsub($<nibbler>.ast, :anon(1)));
        my $qast := QAST::Regex.new( $subpast, $<nibbler>.ast, :rxtype('subrule'),
                                     :subtype('capture'), :node($/) );
        make $qast;
    }

    method metachar:sym<'>($/) {
        my $quote := $<quote_EXPR>.ast;
        if PAST::Val.ACCEPTS($quote) { $quote := $quote.value; }
        my $qast := QAST::Regex.new( $quote, :rxtype<literal>, :node($/) );
        $qast.subtype('ignorecase') if %*RX<i>;
        make $qast;
    }

    method metachar:sym<">($/) {
        my $quote := $<quote_EXPR>.ast;
        if PAST::Val.ACCEPTS($quote) { $quote := $quote.value; }
        my $qast := QAST::Regex.new( $quote, :rxtype<literal>, :node($/) );
        $qast.subtype('ignorecase') if %*RX<i>;
        make $qast;
    }

    method metachar:sym<.>($/) {
        make QAST::Regex.new( :rxtype<cclass>, :subtype<.>, :node($/) );
    }

    method metachar:sym<^>($/) {
        make QAST::Regex.new( :rxtype<anchor>, :subtype<bos>, :node($/) );
    }

    method metachar:sym<^^>($/) {
        make QAST::Regex.new( :rxtype<anchor>, :subtype<bol>, :node($/) );
    }

    method metachar:sym<$>($/) {
        make QAST::Regex.new( :rxtype<anchor>, :subtype<eos>, :node($/) );
    }

    method metachar:sym<$$>($/) {
        make QAST::Regex.new( :rxtype<anchor>, :subtype<eol>, :node($/) );
    }

    method metachar:sym<lwb>($/) {
        make QAST::Regex.new( :rxtype<anchor>, :subtype<lwb>, :node($/) );
    }

    method metachar:sym<rwb>($/) {
        make QAST::Regex.new( :rxtype<anchor>, :subtype<rwb>, :node($/) );
    }

    method metachar:sym<bs>($/) {
        make $<backslash>.ast;
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
            $qast := QAST::Regex.new( PAST::Node.new('!BACKREF', $name),
                         :rxtype<subrule>, :subtype<method>, :node($/));
        }
        make $qast;
    }

    method metachar:sym<~>($/) {
        make QAST::Regex.new(
            $<EXPR>.ast,
            QAST::Regex.new(
                $<GOAL>.ast,
                QAST::Regex.new( PAST::Node.new('FAILGOAL', ~$<GOAL>),
                                 :rxtype<subrule>, :subtype<method> ),
                :rxtype<altseq>
            ),
            :rxtype<concat>
        );
    }

    method backslash:sym<s>($/) {
        make QAST::Regex.new(:rxtype<cclass>, '.CCLASS_WHITESPACE', 
                             :subtype($<sym> eq 'n' ?? 'nl' !! ~$<sym>), 
                             :negate($<sym> le 'Z'), :node($/));
    }

    method backslash:sym<b>($/) {
        my $qast := QAST::Regex.new( "\b", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'B'), :node($/) );
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

    method backslash:sym<misc>($/) {
        my $qast := QAST::Regex.new( ~$/ , :rxtype('literal'), :node($/) );
        make $qast;
    }

    method assertion:sym<?>($/) {
        my $qast;
        if $<assertion> {
            $qast := $<assertion>.ast;
            $qast.subtype('zerowidth');
        }
        else {
            $qast := QAST::Regex.new( :rxtype<anchor>, :subtype<pass>, :node($/) );
        }
        make $qast;
    }

    method assertion:sym<!>($/) {
        my $qast;
        if $<assertion> {
            $qast := $<assertion>.ast;
            $qast.negate( !$qast.negate );
            $qast.subtype('zerowidth');
        }
        else {
            $qast := QAST::Regex.new( :rxtype<anchor>, :subtype<fail>, :node($/) );
        }
        make $qast;
    }

    method assertion:sym<|>($/) {
        my $qast;
        my $name := ~$<identifier>;
        if $name eq 'c' {
            # codepoint boundaries alway match in
            # our current Unicode abstraction level
            $qast := 0;
        }
        elsif $name eq 'w' {
            $qast := QAST::Regex.new(:rxtype<subrule>, :subtype<method>,
                                     :node($/), PAST::Node.new('wb'), 
                                     :name('') );
        }
        make $qast;
    }

    method assertion:sym<method>($/) {
        my $qast := $<assertion>.ast;
        $qast.subtype('method');
        $qast.name('');
        make $qast;
    }

    method assertion:sym<name>($/) {
        my $name := ~$<longname>;
        my $qast;
        if $<assertion> {
            $qast := $<assertion>[0].ast;
            self.subrule_alias($qast, $name);
        }
        elsif $name eq 'sym' {
            my $loc := nqp::index(%*RX<name>, ':sym<');
            $loc := nqp::index(%*RX<name>, ':sym«')
                if $loc < 0;
            my $rxname := pir::chopn__Ssi(nqp::substr(%*RX<name>, $loc + 5), 1);
            $qast := QAST::Regex.new(:name('sym'), :rxtype<subcapture>, :node($/),
                QAST::Regex.new(:rxtype<literal>, $rxname, :node($/)));
        }
        else {
            $qast := QAST::Regex.new(:rxtype<subrule>, :subtype<capture>,
                                     :node($/), PAST::Node.new($name), 
                                     :name($name) );
            if $<arglist> {
                for $<arglist>[0].ast.list { $qast[0].push( $_ ) }
            }
            elsif $<nibbler> {
                $name eq 'after' ??
                    $qast[0].push(buildsub(self.flip_ast($<nibbler>[0].ast), :anon(1))) !!
                    $qast[0].push(buildsub($<nibbler>[0].ast, :anon(1)));
            }
        }
        make $qast;
    }

    method assertion:sym<[>($/) {
        my $clist := $<cclass_elem>;
        my $qast  := $clist[0].ast;
        if $qast.negate && $qast.rxtype eq 'subrule' {
            $qast.subtype('zerowidth');
            $qast := QAST::Regex.new(:rxtype<concat>, :node($/),
                                     $qast, 
                                     QAST::Regex.new( :rxtype<cclass>, :subtype<.> ));
        }
        my $i := 1;
        my $n := +$clist;
        while $i < $n {
            my $ast := $clist[$i].ast;
            if $ast.negate {
                $ast.subtype('zerowidth');
                $qast := QAST::Regex.new( $ast, $qast, :rxtype<concat>, :node($/));
            }
            else {
                $qast := QAST::Regex.new( $qast, $ast, :rxtype<altseq>, :node($/));
            }
            $i++;
        }
        make $qast;
    }
    
    method arg($/) {
        make $<quote_EXPR> ?? $<quote_EXPR>.ast !! +$<val>;
    }

    method arglist($/) {
        my $past := PAST::Op.new( :pasttype('list') );
        for $<arg> { $past.push( $_.ast ); }
        make $past;
    }

    method cclass_elem($/) {
        my $str := '';
        my $qast;
        if $<name> {
            my $name := ~$<name>;
            $qast := QAST::Regex.new( PAST::Node.new($name), :rxtype<subrule>, :subtype<method>,
                                      :negate( $<sign> eq '-' ), :node($/) );
        }
        elsif $<uniprop> {
            my $uniprop := ~$<uniprop>;
            $qast := QAST::Regex.new( $uniprop, :rxtype<uniprop>,
                                      :negate( $<sign> eq '-' && $<invert> ne '!' # $<sign> ^^ $<invert>
                                        || $<sign> ne '-' && $<invert> eq '!' ), :node($/) );
        }
        else {
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
                    my $ord0 := nqp::ord($lhs);
                    my $ord1 := nqp::ord($rhs);
                    $/.CURSOR.panic("Illegal reversed character range in regex: " ~ ~$_)
                        if $ord0 > $ord1;
                    $str := nqp::concat($str, nqp::chr($ord0++)) while $ord0 <= $ord1;
                }
                elsif $_[0]<backslash> {
                    my $bs := $_[0]<backslash>.ast;
                    $bs.negate(!$bs.negate) if $<sign> eq '-';
                    @alts.push($bs);
                }
                else { $str := $str ~ ~$_[0]; }
            }
            @alts.push(QAST::Regex.new( $str, :rxtype<enumcharlist>, :node($/), :negate( $<sign> eq '-' ) ))
                if nqp::chars($str);
            $qast := +@alts == 1 ?? @alts[0] !!
                $<sign> eq '-' ??
                    QAST::Regex.new( :rxtype<concat>, :node($/),
                        QAST::Regex.new( :rxtype<conj>, :subtype<zerowidth>, |@alts ), 
                        QAST::Regex.new( :rxtype<cclass>, :subtype<.> ) ) !!
                    QAST::Regex.new( :rxtype<alt>, |@alts );
        }
        #$qast.negate( $<sign> eq '-' );
        make $qast;
    }

    method mod_internal($/) {
        my $n := $<n>[0] gt '' ?? +$<n>[0] !! 1;
        %*RX{ ~$<mod_ident><sym> } := $n;
        make 0;
    }

    sub backmod($ast, $backmod) {
        if $backmod eq ':' { $ast.backtrack('r') }
        elsif $backmod eq ':?' || $backmod eq '?' { $ast.backtrack('f') }
        elsif $backmod eq ':!' || $backmod eq '!' { $ast.backtrack('g') }
        $ast;
    }

    our sub buildsub($qast, $block = PAST::Block.new(:blocktype<method>), :$anon) {
        my $hashpast := PAST::Op.new( :pasttype<hash> );
        for capnames($qast, 0) {
            if $_.key gt '' { 
                $hashpast.push($_.key); 
                $hashpast.push(
                    nqp::iscclass(pir::const::CCLASS_NUMERIC, $_.key, 0) + ($_.value > 1) * 2); 
            }
        }
        my $initpast := PAST::Stmts.new();
        my $capblock := PAST::Block.new( :hll<nqp>, :namespace(['Sub']), :lexical(0),
                                         :name($block.subid ~ '_caps'),  $hashpast );
        $initpast.push(PAST::Stmt.new($capblock));

        my $nfapast := QRegex::NFA.new.addnode($qast).past;
        if $nfapast {
            my $nfablock := PAST::Block.new( 
                                :hll<nqp>, :namespace(['Sub']), :lexical(0),
                                :name($block.subid ~ '_nfa'), $nfapast);
            $initpast.push(PAST::Stmt.new($nfablock));
        alt_nfas($qast, $block.subid, $initpast);
        }

        unless $block.symbol('$¢') {
            $initpast.push(PAST::Var.new(:name<$¢>, :scope<lexical>, :isdecl(1)));
            $block.symbol('$¢', :scope<lexical>);
        }

        $block<orig_qast> := $qast;
        
        $qast := QAST::Regex.new( :rxtype<concat>,
                     QAST::Regex.new( :rxtype<scan> ),
                     $qast,
                     ($anon ??
                          QAST::Regex.new( :rxtype<pass> ) !!
                          QAST::Regex.new( :rxtype<pass>, :name(%*RX<name>) )));
        $block.push($initpast);
        $block.push(PAST::QAST.new($qast));
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
                $max := %x{''} if %x{''} > $max;
            }
            $count := $max;
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
            for nqp::split(' ', $ast.name) {
                if $_ eq '0' || $_ > 0 { $count := $_ + 1; }
                %capnames{$_} := 1;
            }
            my %x := capnames($ast[0], $count);
            for %x { %capnames{$_.key} := +%capnames{$_.key} + %x{$_.key} }
            $count := %x{''};
        }
        elsif $rxtype eq 'quant' {
            my %astcap := capnames($ast[0], $count);
            for %astcap { %capnames{$_} := 2 }
            $count := %astcap{''};
        }
        %capnames{''} := $count;
        %capnames;
    }
    
    sub alt_nfas($ast, $subid, $initpast) {
        my $rxtype := $ast.rxtype;
        if $rxtype eq 'alt' {
            my $nfapast := PAST::Op.new( :pasttype('list') );
            $ast.name(PAST::Node.unique('alt_nfa_'));
            for $ast.list {
                alt_nfas($_, $subid, $initpast);
                $nfapast.push(QRegex::NFA.new.addnode($_).past);
            }
            my $nfablock := PAST::Block.new(
                                :hll<nqp>, :namespace(['Sub']), :lexical(0),
                                :name($subid ~ '_' ~ $ast.name), $nfapast);
            $initpast.push(PAST::Stmt.new($nfablock));
        }
        elsif $rxtype eq 'subcapture' || $rxtype eq 'quant' {
            alt_nfas($ast[0], $subid, $initpast)
        }
        elsif $rxtype eq 'concat' || $rxtype eq 'altseq' || $rxtype eq 'conj' || $rxtype eq 'conjseq' {
            for $ast.list { alt_nfas($_, $subid, $initpast) }
        }
    }

    method subrule_alias($ast, $name) {
        if $ast.name gt '' { $ast.name( $name ~ '=' ~ $ast.name ); }
        else { $ast.name($name); }
        $ast.subtype('capture');
    }

    method flip_ast($qast) {
        return $qast unless nqp::istype($qast, QAST::Regex);
        if $qast.rxtype eq 'literal' {
            $qast[0] := $qast[0].reverse();
        }
        elsif $qast.rxtype eq 'concat' {
            my @tmp;
            while +@($qast) { @tmp.push(@($qast).shift) }
            while @tmp      { @($qast).push(self.flip_ast(@tmp.pop)) }
        }
        elsif $qast.rxtype eq 'pastnode' {
            # Don't go exploring these
        }
        else {
            for @($qast) { self.flip_ast($_) }
        }
        $qast
    }
}
