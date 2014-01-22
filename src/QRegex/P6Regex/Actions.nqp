class QRegex::P6Regex::Actions is HLL::Actions {
    method TOP($/) {
        make QAST::CompUnit.new(
            :hll('P6Regex'),
            :sc($*W.sc()),
            :code_ref_blocks($*W.code_ref_blocks()),
            :compilation_mode(0),
            :pre_deserialize($*W.load_dependency_tasks()),
            :post_deserialize($*W.fixup_tasks()),
            self.qbuildsub($<nibbler>.ast, :anon(1), :addself(1))
        );
    }

    method nibbler($/) { make $<termseq>.ast }

    method termseq($/) {
        make $<termaltseq>.ast if $<termaltseq>
    }
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

        my $sigmaybe := $<sigmaybe>.ast if $<sigmaybe>;
        $qast := QAST::Regex.new(:rxtype<concat>, $qast, $sigmaybe) if $sigmaybe;

        if $<quantifier> {
            $/.CURSOR.panic('Quantifier quantifies nothing')
                unless $qast;
            my $ast := $<quantifier>.ast;
            $ast.unshift($qast);
            $qast := $ast;
        }
        if $<separator> {
            unless $qast.rxtype eq 'quant' {
                $/.CURSOR.panic("'" ~ $<separator>[0]<septype> ~
                    "' many only be used immediately following a quantifier")
            }
            $qast.push($<separator>.ast);
            if $<separator><septype> eq '%%' {
                $qast := QAST::Regex.new( :rxtype<concat>, $qast,
                    QAST::Regex.new( :rxtype<quant>, :min(0), :max(1), $<separator>.ast ));
            }
        }

        my $sigfinal := $<sigfinal>.ast if $<sigfinal>;
        $qast := QAST::Regex.new(:rxtype<concat>, $qast, $sigfinal) if $sigfinal;

        if $qast {
            $qast.backtrack('r') if !$qast.backtrack && (%*RX<r> || $<backmod> && ~$<backmod> eq ':');
            $qast.node($/);
        }
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

    method sigmaybe:sym<sigwhite>($/) {
        make QAST::Regex.new(
                :rxtype<subrule>,
                :subtype<method>,
                :node($/),
                :name<ws>,
                QAST::Node.new(QAST::SVal.new( :value('ws') )) );
    }

    method quantifier:sym<*>($/) {
        my $qast := QAST::Regex.new( :rxtype<quant>, :min(0), :max(-1), :node($/) );
        make backmod($qast, $<backmod>);
    }

    method quantifier:sym<+>($/) {
        my $qast := QAST::Regex.new( :rxtype<quant>, :min(1), :max(-1), :node($/) );
        make backmod($qast, $<backmod>);
    }

    method quantifier:sym<?>($/) {
        my $qast := QAST::Regex.new( :rxtype<quant>, :subtype<item>, :min(0), :max(1), :node($/) );
        make backmod($qast, $<backmod>);
    }

    method quantifier:sym<**>($/) {
        my $qast;
        my $min := $<min>.ast;
        my $max := -1;
        if ! $<max> { $max := $min }
        elsif $<max> ne '*' {
            $max := $<max>.ast;
            $/.CURSOR.panic("Empty range") if $min > $max;
        }
        $qast := QAST::Regex.new( :rxtype<quant>, :min($min), :max($max), :node($/) );
        make backmod($qast, $<backmod>);
    }

    method metachar:sym<[ ]>($/) {
        make $<nibbler>.ast;
    }

    method metachar:sym<( )>($/) {
        my $subpast := QAST::Node.new(self.qbuildsub($<nibbler>.ast, :anon(1), :addself(1)));
        my $qast := QAST::Regex.new( $subpast, $<nibbler>.ast, :rxtype('subrule'),
                                     :subtype('capture'), :node($/) );
        make $qast;
    }

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

    method metachar:sym<.>($/) {
        make QAST::Regex.new( :rxtype<cclass>, :name<.>, :node($/) );
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

    method metachar:sym<from>($/) {
        make QAST::Regex.new( :rxtype<subrule>, :subtype<capture>,
            :backtrack<r>, :name<$!from>, :node($/),
            QAST::Node.new(
                QAST::SVal.new( :value('!LITERAL') ),
                QAST::SVal.new( :value('') ) ) );
    }

    method metachar:sym<to>($/) {
        make QAST::Regex.new( :rxtype<subrule>, :subtype<capture>,
            :backtrack<r>, :name<$!to>, :node($/),
            QAST::Node.new(
                QAST::SVal.new( :value('!LITERAL') ),
                QAST::SVal.new( :value('') ) ) );
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
            $qast := QAST::Regex.new( :rxtype<subrule>, :subtype<method>, :node($/),
                QAST::Node.new(
                    QAST::SVal.new( :value('!BACKREF') ),
                    QAST::SVal.new( :value($name) ) ) );
        }
        make $qast;
    }

    method metachar:sym<~>($/) {
        my @dba := [QAST::SVal.new(:value(%*RX<dba>))] if nqp::existskey(%*RX, 'dba');
        make QAST::Regex.new(
            $<EXPR>.ast,
            QAST::Regex.new(
                $<GOAL>.ast,
                QAST::Regex.new( :rxtype<subrule>, :subtype<method>,
                    QAST::Node.new(
                        QAST::SVal.new( :value('FAILGOAL') ),
                        QAST::SVal.new( :value(~$<GOAL>) ),
                        |@dba) ),
                :rxtype<altseq>
            ),
            :rxtype<concat>
        );
    }
    
    method metachar:sym<mod>($/) { make $<mod_internal>.ast; }

    method backslash:sym<s>($/) {
        make QAST::Regex.new(:rxtype<cclass>, :name( nqp::lc(~$<sym>) ),
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
        make $<sym> eq 'C' ??
            QAST::Regex.new( $<charspec>.ast, :rxtype('enumcharlist'), :negate(1), :node($/) ) !!
            QAST::Regex.new( $<charspec>.ast, :rxtype('literal'), :node($/) )
    }

    method backslash:sym<misc>($/) {
        my $qast := QAST::Regex.new( ~$/ , :rxtype('enumcharlist'), :node($/) );
        make $qast;
    }

    method cclass_backslash:sym<s>($/) {
        make QAST::Regex.new(:rxtype<cclass>, :name( nqp::lc(~$<sym>) ),
                             :negate($<sym> le 'Z'), :node($/));
    }

    method cclass_backslash:sym<b>($/) {
        my $qast := QAST::Regex.new( "\b", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'B'), :node($/) );
        make $qast;
    }

    method cclass_backslash:sym<e>($/) {
        my $qast := QAST::Regex.new( "\c[27]", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'E'), :node($/) );
        make $qast;
    }

    method cclass_backslash:sym<f>($/) {
        my $qast := QAST::Regex.new( "\c[12]", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'F'), :node($/) );
        make $qast;
    }

    method cclass_backslash:sym<h>($/) {
        my $qast := QAST::Regex.new( "\x[09,20,a0,1680,180e,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,200a,202f,205f,3000]", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'H'), :node($/) );
        make $qast;
    }

    method cclass_backslash:sym<r>($/) {
        my $qast := QAST::Regex.new( "\r", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'R'), :node($/) );
        make $qast;
    }

    method cclass_backslash:sym<t>($/) {
        my $qast := QAST::Regex.new( "\t", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'T'), :node($/) );
        make $qast;
    }

    method cclass_backslash:sym<v>($/) {
        my $qast := QAST::Regex.new( "\x[0a,0b,0c,0d,85,2028,2029]",
                        :rxtype('enumcharlist'),
                        :negate($<sym> eq 'V'), :node($/) );
        make $qast;
    }

    method cclass_backslash:sym<o>($/) {
        my $octlit :=
            HLL::Actions.ints_to_string( $<octint> || $<octints><octint> );
        make $<sym> eq 'O'
             ?? QAST::Regex.new( $octlit, :rxtype('enumcharlist'),
                                  :negate(1), :node($/) )
             !! QAST::Regex.new( $octlit, :rxtype('literal'), :node($/) );
    }

    method cclass_backslash:sym<x>($/) {
        my $hexlit :=
            HLL::Actions.ints_to_string( $<hexint> || $<hexints><hexint> );
        make $<sym> eq 'X'
             ?? QAST::Regex.new( $hexlit, :rxtype('enumcharlist'),
                                  :negate(1), :node($/) )
             !! QAST::Regex.new( $hexlit, :rxtype('literal'), :node($/) );
    }

    method cclass_backslash:sym<c>($/) {
        make QAST::Regex.new( $<charspec>.ast, :rxtype('literal'), :node($/) );
    }

    method cclass_backslash:sym<any>($/) {
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
                                     :node($/), :name(''),
                                     QAST::Node.new(QAST::SVal.new( :value('wb') )) );
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
            my $rxname := "";
            my $loc := nqp::index(%*RX<name>, ':sym<');
            if $loc >= 0 {
                $rxname := nqp::substr(%*RX<name>, $loc + 5 );
                $rxname := nqp::substr( $rxname, 0, nqp::chars($rxname) - 1);
            }
            else {
                $loc := nqp::index(%*RX<name>, ':');
                my $angleloc := nqp::index(%*RX<name>, '<', $loc);
                $rxname := nqp::substr(%*RX<name>, $loc + 1, $angleloc - $loc - 1) unless $loc < 0;
            }
            if $loc >= 0 {
                $qast := QAST::Regex.new(:name('sym'), :rxtype<subcapture>, :node($/),
                    QAST::Regex.new(:rxtype<literal>, $rxname, :node($/)));
            }
            else {
                self.panic("<sym> is only valid in multiregexes");
            }
        }
        else {
            $qast := QAST::Regex.new(:rxtype<subrule>, :subtype<capture>,
                                     :node($/), :name($name),
                                     QAST::Node.new(QAST::SVal.new( :value($name) )));
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

    method assertion:sym<[>($/) {
        my $clist := $<cclass_elem>;
        my $qast  := $clist[0].ast;
        if $qast.negate && $qast.rxtype eq 'subrule' {
            $qast.subtype('zerowidth');
            $qast := QAST::Regex.new(:rxtype<concat>, :node($/),
                                     $qast, 
                                     QAST::Regex.new( :rxtype<cclass>, :name<.> ));
        }
        
        my $i := 1;
        my $n := +$clist;
        while $i < $n {
            my $ast := $clist[$i].ast;
            if $ast.negate || $ast.rxtype eq 'cclass' && ~$ast.node le 'Z' {
                $ast.subtype('zerowidth');
                $qast := QAST::Regex.new( :rxtype<concat>, :node($/), :subtype<zerowidth>, :negate(1),
                        QAST::Regex.new( :rxtype<conj>, :subtype<zerowidth>, $ast ), 
                        $qast );
            }
            else {
                $qast := QAST::Regex.new( $qast, $ast, :rxtype<altseq>, :node($/));
            }
            $i++;
        }
        make $qast;
    }
    
    method arg($/) {
        make $<quote_EXPR>
            ?? $<quote_EXPR>.ast
            !! QAST::NVal.new( :value(+$<val>) );
    }

    method arglist($/) {
        my $past := QAST::Op.new( :op('list') );
        for $<arg> { $past.push( $_.ast ); }
        make $past;
    }

    method cclass_elem($/) {
        my $str := '';
        my $qast;
        if $<name> {
            my $name := ~$<name>;
            $qast := QAST::Regex.new( :rxtype<subrule>, :subtype<method>,
                                      :negate( $<sign> eq '-' ), :node($/),
                                      QAST::Node.new(QAST::SVal.new( :value($name) )) );
        }
        elsif $<uniprop> {
            my $uniprop := ~$<uniprop>;
            $qast := QAST::Regex.new( $uniprop, :rxtype<uniprop>,
                                      :negate( $<sign> eq '-' && $<invert> ne '!' # $<sign> ^^ $<invert>
                                        || $<sign> ne '-' && $<invert> eq '!' ), :node($/) );
        }
        else {
            my @alts;
            my $lower;
            my $upper;
            my $use-range := 0;
            for $<charspec> {
                if $_[1] {
                    my $node;
                    my $lhs;
                    my $rhs;
                    if $_[0]<cclass_backslash> {
                        $node := $_[0]<cclass_backslash>.ast;
                        $/.CURSOR.panic("Illegal range endpoint in regex: " ~ ~$_)
                            if $node.rxtype ne 'literal' && $node.rxtype ne 'enumcharlist'
                                || $node.negate || nqp::chars($node[0]) != 1;
                        $lhs := $node[0];
                    }
                    else {
                        $lhs := ~$_[0][0];
                    }
                    if $_[1][0]<cclass_backslash> {
                        $node := $_[1][0]<cclass_backslash>.ast;
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
                    if %*RX<i> {
                        while $ord0 <= $ord1 {
                            my $c := nqp::chr($ord0++);
                            $str := nqp::concat($str, nqp::lc($c) ~ nqp::uc($c));
                        }
                        $use-range := $use-range + 9000;
                    }
                    else {
                        $lower := $ord0;
                        $upper := $ord1;
                        $str := nqp::concat($str, nqp::chr($ord0++)) while $ord0 <= $ord1;
                        $use-range := $use-range + 1;
                    }
                }
                elsif $_[0]<cclass_backslash> {
                    my $bs := $_[0]<cclass_backslash>.ast;
                    if $bs.rxtype eq 'enumcharlist' && !$bs.negate || $bs.rxtype eq 'literal' {
                        $str := $str ~ $bs[0];
                        $use-range := $use-range + 9000;
                    }
                    else {
                        $bs.negate(!$bs.negate) if $<sign> eq '-';
                        @alts.push($bs);
                    }
                }
                else {
                    my $c := ~$_[0];
                    $str := $str ~ (%*RX<i> ?? nqp::lc($c) ~ nqp::uc($c) !! $c);
                    $use-range := $use-range + 9000;
                }
            }
            if nqp::elems(@alts) == 0 && $use-range == 1 && nqp::chars($str) {
                $qast := QAST::Regex.new(
                                  $str,
                                  QAST::IVal.new( :value($lower) ),
                                  QAST::IVal.new( :value($upper) ),
                                  :negate( $<sign> eq '-' ),
                                  :rxtype<charrange>, :node($/) );
            } else {
                @alts.push(QAST::Regex.new( $str, :rxtype<enumcharlist>, :node($/), :negate( $<sign> eq '-' ) ))
                    if nqp::chars($str);
                $qast := +@alts == 1 ?? @alts[0] !!
                    $<sign> eq '-' ??
                        QAST::Regex.new( :rxtype<concat>, :node($/), :negate(1),
                            QAST::Regex.new( :rxtype<conj>, :subtype<zerowidth>, |@alts ),
                            QAST::Regex.new( :rxtype<cclass>, :name<.> ) ) !!
                        QAST::Regex.new( :rxtype<altseq>, |@alts );
            }
        }
        make $qast;
    }

    method mod_internal($/) {
        if $<quote_EXPR> {
            if $<quote_EXPR>[0].ast ~~ QAST::SVal {
                my $key := ~$<mod_ident><sym>;
                my $val := $<quote_EXPR>[0].ast.value;
                %*RX{$key} := $val;
                make $key eq 'dba'
                    ?? QAST::Regex.new( :rxtype('dba'), :name($val) )
                    !! 0;
            }
            else {
                $/.CURSOR.panic("Internal modifier strings must be literals");
            }
        }
    }

    sub backmod($ast, $backmod) {
        if $backmod eq ':' { $ast.backtrack('r') }
        elsif $backmod eq ':?' || $backmod eq '?' { $ast.backtrack('f') }
        elsif $backmod eq ':!' || $backmod eq '!' { $ast.backtrack('g') }
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
        self.alt_nfas($code_obj, $block, $qast);

        my $scan := QAST::Regex.new( :rxtype<scan> );
        {
            my $q := $qast;
            if $q.rxtype eq 'concat' && $q[0] {
                $q := $q[0]
            }
            if $q.rxtype eq 'literal' {
                nqp::push($scan, $q[0]);
                $scan.subtype($q.subtype);
            }
        }

        $block<orig_qast> := $qast;
        $qast := QAST::Regex.new( :rxtype<concat>,
                     $scan,
                     $qast,
                     ($anon
                          ?? QAST::Regex.new( :rxtype<pass> )
                          !! (nqp::substr(%*RX<name>, 0, 12) ne '!!LATENAME!!'
                                ?? QAST::Regex.new( :rxtype<pass>, :name(%*RX<name>) )
                                !! QAST::Regex.new( :rxtype<pass>,
                                       QAST::Var.new(
                                           :name(nqp::substr(%*RX<name>, 12)),
                                           :scope('lexical')
                                       ) 
                                   )
                              )));
        if %*RX<r> {
            $qast[2].backtrack('r');
        }
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
            my $ilist := ($ast.subtype eq 'item');
            my %astcap := capnames($ast[0], $count);
            for %astcap { %capnames{$_.key} := $ilist ?? $_.value !! 2 }
            $count := %astcap{''};
            if $ast[1] {
                # handle any separator quantification
                my %astcap := capnames($ast[1], $count);
                for %astcap { %capnames{$_.key} := $ilist ?? $_.value !! 2 }
                $count := %astcap{''};
            }
        }
        %capnames{''} := $count;
        nqp::deletekey(%capnames, '$!from');
        nqp::deletekey(%capnames, '$!to');
        %capnames;
    }
    
    method alt_nfas($code_obj, $block, $ast) {
        my $rxtype := $ast.rxtype;
        if $rxtype eq 'alt' {
            my @alternatives;
            for $ast.list {
                self.alt_nfas($code_obj, $block, $_);
                nqp::push(@alternatives, QRegex::NFA.new.addnode($_));
            }
            $ast.name(QAST::Node.unique('alt_nfa_') ~ '_' ~ ~nqp::time_n());
            self.store_regex_alt_nfa($code_obj, $block, $ast.name, @alternatives);
        }
        elsif $rxtype eq 'subcapture' || $rxtype eq 'quant' {
            self.alt_nfas($code_obj, $block, $ast[0])
        }
        elsif $rxtype eq 'concat' || $rxtype eq 'altseq' || $rxtype eq 'conj' || $rxtype eq 'conjseq' {
            for $ast.list { self.alt_nfas($code_obj, $block, $_) }
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
    
    # Stores the NFA for the regex overall.
    method store_regex_nfa($code_obj, $block, $nfa) {
        $code_obj.SET_NFA($nfa.save);
    }
    
    # Stores the NFA for a regex alternation.
    method store_regex_alt_nfa($code_obj, $block, $key, @alternatives) {
        my @saved;
        for @alternatives {
            @saved.push($_.save(:non_empty));
        }
        $code_obj.SET_ALT_NFA($key, @saved);
    }
}
