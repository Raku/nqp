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
        my $last_noun;
        for $<noun> {
            my $ast := $_.ast;
            if $ast {
                if $lastlit && $ast.rxtype eq 'literal'
                        && !QAST::Node.ACCEPTS($ast[0])
                        && $lastlit.subtype eq $ast.subtype {
                    $lastlit[0] := $lastlit[0] ~ $ast[0];
                }
                elsif $last_noun && $last_noun eq '\r' && $_ eq '\n' &&
                        !$ast.negate && !$last_noun.ast.negate {
                    $qast.pop();
                    $qast.push(QAST::Regex.new( :rxtype<literal>, "\r\n" ));
                }
                else {
                    $qast.push($_.ast);
                    $lastlit := $ast.rxtype eq 'literal'
                                && !QAST::Node.ACCEPTS($ast[0])
                                  ?? $ast !! 0;
                }
            }
            $last_noun := $_;
        }
        make $qast;
    }

    method quantified_atom($/) {
        my $qast := $<atom>.ast;

        my $sigmaybe := $<sigmaybe>.ast if $<sigmaybe>;
        $qast := QAST::Regex.new(:rxtype<concat>, $qast, $sigmaybe) if $sigmaybe;

        if $<quantifier> {
            $/.panic('Quantifier quantifies nothing')
                unless $qast;
            my str $rxtype := $qast.rxtype;
            $/.throw_non_quantifiable()
                if $rxtype eq 'qastnode' || $rxtype eq 'anchor';
            my $ast := $<quantifier>.ast;
            $ast.unshift($qast);
            $qast := $ast;
        }
        if $<separator> {
            if $qast.rxtype ne 'quant' && $qast.rxtype ne 'dynquant' {
                $/.panic("'" ~ $<separator><septype> ~
                    "' may only be used immediately following a quantifier")
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
            $qast.backtrack('r') if !$qast.backtrack && nqp::if($<backmod>, (~$<backmod> eq ':'), %*RX<r>);
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
            make self.apply_literal_modifiers($qast);
        }
    }

    method sigmaybe:sym<sigwhite>($/) {
        make QAST::Regex.new(
                :rxtype<subrule>,
                :subtype<method>,
                :node($/),
                :name<ws>,
                QAST::NodeList.new(QAST::SVal.new( :value('ws') )) );
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
        if $<codeblock> {
            $qast := QAST::Regex.new( :rxtype<dynquant>, :node($/),
                QAST::Op.new( :op('callmethod'), :name('!DYNQUANT_LIMITS'),
                    QAST::Var.new( :name('$¢'), :scope('lexical') ),
                    $<codeblock>.ast
                ),
            );
        }
        else {
            my $min := 0;
            if $<min> { $min := nqp::radix(10, $<min>, 0, 0)[0]; }

            my $max := -1;
            my $upto := $<upto>;

            if $<from> eq '^' { $min++ }

            if ! $<max> {
                $max := $min
            }
            elsif $<max> ne '*' {
                $max := nqp::radix(10, $<max>, 0, 0)[0];
                if $<upto> eq '^' {
                    $max--;
                }
                $/.panic("Empty range") if $min > $max;
            }
            $qast := QAST::Regex.new( :rxtype<quant>, :min($min), :max($max), :node($/) );
        }
        make backmod($qast, $<backmod>);
    }

    method codeblock($/) {
        my $block := $<block>.ast;
        $block.blocktype('immediate');
        my $ast :=
            QAST::Stmts.new(
                QAST::Op.new(
                    :op('bind'),
                    QAST::Var.new( :name('$/'), :scope('lexical') ),
                    QAST::Op.new(
                        QAST::Var.new( :name('$¢'), :scope('lexical') ),
                        :name('MATCH'),
                        :op('callmethod')
                    )
                ),
                $block
            );
        make $ast;
    }

    method metachar:sym<[ ]>($/) {
        make $<nibbler>.ast;
    }

    method metachar:sym<( )>($/) {
        my $sub_ast := QAST::NodeList.new(self.qbuildsub($<nibbler>.ast, :anon(1), :addself(1)));
        my $ast := QAST::Regex.new( $sub_ast, $<nibbler>.ast, :rxtype('subrule'),
                                     :subtype('capture'), :node($/) );
        make $ast;
    }

    method metachar:sym<'>($/) {
        my $quote := $<quote_EXPR>.ast;
        if QAST::SVal.ACCEPTS($quote) { $quote := $quote.value; }
        my $qast := QAST::Regex.new( $quote, :rxtype<literal>, :node($/) );
        make self.apply_literal_modifiers($qast);
    }

    method metachar:sym<">($/) {
        my $quote := $<quote_EXPR>.ast;
        if QAST::SVal.ACCEPTS($quote) { $quote := $quote.value; }
        my $qast := QAST::Regex.new( $quote, :rxtype<literal>, :node($/) );
        make self.apply_literal_modifiers($qast);
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

    method metachar:sym<bs>($/) {
        make $<backslash>.ast;
    }

    method metachar:sym<assert>($/) {
        make $<assertion>.ast;
    }

    method metachar:sym<var>($/) {
        my $qast;
        my $name := $<pos> ?? nqp::radix(10, $<pos>, 0, 0)[0] !! ~$<name>;
        if $<quantified_atom> {
            $qast := $<quantified_atom>[0].ast;
            if ($qast.rxtype eq 'quant' || $qast.rxtype eq 'dynquant') && $qast[0].rxtype eq 'subrule' {
                self.subrule_alias($qast[0], $name);
            }
            elsif $qast.rxtype eq 'subrule' {
                self.subrule_alias($qast, $name);
                $qast := QAST::Regex.new( :rxtype<quant>, :min(1), :max(1), $qast) if $<wantarray>;
            }
            else {
                $qast := QAST::Regex.new( $qast, :name($name),
                                          :rxtype<subcapture>, :node($/) );
            }
        }
        else {
            $qast := QAST::Regex.new( :rxtype<subrule>, :subtype<method>, :node($/),
                QAST::NodeList.new(
                    QAST::SVal.new( :value('!BACKREF') ),
                    QAST::SVal.new( :value($name) ) ) );
        }
        make $qast;
    }

    method metachar:sym<~>($/) {
        my @dba := [QAST::SVal.new(:value(%*RX<dba>))] if nqp::existskey(%*RX, 'dba');
        make QAST::Regex.new(
            :rxtype<goal>,
            $<GOAL>.ast,
            $<EXPR>.ast,
            QAST::Regex.new(
                :rxtype<subrule>, :subtype<method>,
                QAST::NodeList.new(
                    QAST::SVal.new( :value('FAILGOAL') ),
                    QAST::SVal.new( :value(~$<GOAL>) ),
                    |@dba) ) );
    }

    method metachar:sym<mod>($/) { make $<mod_internal>.ast; }

    method backslash:sym<s>($/) {
        make QAST::Regex.new(:rxtype<cclass>, :name( nqp::lc(~$<sym>) ),
                             :negate($<sym> le 'Z'), :node($/));
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

        my $qast := QAST::Regex.new(
#?if js
            nqp::chr(0x2000) ~ nqp::chr(0x2001) ~ # HACK workaround for a cross compiling problem
#?endif
            "\x[09,20,a0,1680,180e,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,200a,202f,205f,3000]",
            :rxtype('enumcharlist'),
            :negate($<sym> eq 'H'),
            :node($/)
        );
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
        my $qast := QAST::Regex.new( "\x[0a,0b,0c,0d,85,2028,2029]\r\n",
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

    method backslash:sym<0>($/) {
        make QAST::Regex.new( "\0", :rxtype('literal'), :node($/) );
    }

    method backslash:sym<misc>($/) {
        my $qast := QAST::Regex.new( ~$/ , :rxtype('literal'), :node($/) );
        make self.apply_literal_modifiers($qast);
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
        my $qast := QAST::Regex.new(
#?if js
            nqp::chr(0x2000) ~ nqp::chr(0x2001) ~ # HACK workaround for a cross compiling problem
#?endif
            "\x[09,20,a0,1680,180e,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,200a,202f,205f,3000]",
            :rxtype('enumcharlist'),
            :negate($<sym> eq 'H'),
            :node($/) );
        make $qast;
    }

    method cclass_backslash:sym<n>($/) {
        my $qast := QAST::Regex.new( "\n", :rxtype('enumcharlist'),
                        :negate($<sym> eq 'N'), :node($/) );
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
        make ($<sym> eq 'O'
          ?? QAST::Regex.new( $octlit, :rxtype('enumcharlist'),
                              :negate(1), :node($/) )
          !! QAST::Regex.new( $octlit, :rxtype('literal'), :node($/) )
        ).annotate_self('codepoint', $<octint>
          ?? $<octint>.ast !! $<octints><octint>[0].ast)
    }

    method cclass_backslash:sym<x>($/) {
        my $hexlit :=
            HLL::Actions.ints_to_string( $<hexint> || $<hexints><hexint> );
        make ($<sym> eq 'X'
          ?? QAST::Regex.new( $hexlit, :rxtype('enumcharlist'),
                              :negate(1), :node($/) )
          !! QAST::Regex.new( $hexlit, :rxtype('literal'), :node($/) )
        ).annotate_self('codepoint', $<hexint>
          ?? $<hexint>.ast !! $<hexints><hexint>[0].ast)
    }

    method cclass_backslash:sym<c>($/) {
        make $<sym> eq 'C' ??
            QAST::Regex.new( $<charspec>.ast, :rxtype('enumcharlist'), :negate(1), :node($/) ) !!
            QAST::Regex.new( $<charspec>.ast, :rxtype('literal'), :node($/) )
    }

    method cclass_backslash:sym<0>($/) {
        make QAST::Regex.new( "\0", :rxtype('literal'), :node($/) );
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
            # codepoint boundaries always match in
            # our current Unicode abstraction level
            $qast := 0;
        }
        elsif $name eq 'w' {
            $qast := QAST::Regex.new(:rxtype<subrule>, :subtype<method>,
                                     :node($/), :name(''),
                                     QAST::NodeList.new(QAST::SVal.new( :value('wb') )) );
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
            my $loc := nqp::index(%*RX<name>, ':sym');
            if $loc >= 0 {
                $rxname := nqp::substr(%*RX<name>, $loc + 5 );
                $rxname := nqp::substr( $rxname, 0, nqp::chars($rxname) - 1);
            }
            else {
                $loc := nqp::index(%*RX<name>, ':');
                my $angleloc := nqp::index(%*RX<name>, '<', $loc);
		$angleloc := nqp::index(%*RX<name>, '«', $loc) if $angleloc < 0;
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
                                     QAST::NodeList.new(QAST::SVal.new( :value($name) )));
            if $<arglist> {
                for $<arglist>.ast.list { $qast[0].push( $_ ) }
            }
            elsif $<nibbler> {
                if $name eq 'after' {
                    my int $litlen := self.offset_ast($<nibbler>.ast);
                    if $litlen >= 0 {
                        $qast[0][0].value('before');
                        $qast[0].push(self.qbuildsub($<nibbler>.ast, :anon(1), :addself(1)));
                        $qast[0].push(QAST::IVal.new( :value($litlen) ));  # optional offset to before
                    }
                    else {
                        $qast[0].push(self.qbuildsub(self.flip_ast($<nibbler>.ast), :anon(1), :addself(1)));
                    }
                }
                else {
                    $qast[0].push(self.qbuildsub($<nibbler>.ast, :anon(1), :addself(1)));
                }
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

        my int $i := 1;
        my int $n := nqp::elems($clist);
        while $i < $n {
	    unless ~$clist[$i]<sign> {
		my $curse := $clist[$i]<sign>;
		$curse."!clear_highwater"();
		$curse.panic('Missing + or - between character class elements')
	    }
            my $ast := $clist[$i].ast;
            if $ast.negate || $ast.rxtype eq 'cclass' && ~$ast.node le 'Z' {
                $ast.subtype('zerowidth');
                $qast := QAST::Regex.new( :rxtype<concat>, :node($/), :subtype<zerowidth>, :negate(1),
                        QAST::Regex.new( :rxtype<conj>, :subtype<zerowidth>, $ast ),
                        $qast );
            }
            else {
                $qast := QAST::Regex.new( $qast, $ast, :rxtype<alt>, :node($/));
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
        my $ast := QAST::Op.new( :op('list') );
        for $<arg> { $ast.push( $_.ast ); }
        make $ast;
    }

    method cclass_elem($/) {
        my $str := '';
        my $qast;
        if $<name> {
            my $name := ~$<name>;
            $qast := QAST::Regex.new( :rxtype<subrule>, :subtype<method>,
                                      :negate( $<sign> eq '-' ), :node($/),
                                      QAST::NodeList.new(QAST::SVal.new( :value($name) )) );
        }
        # <:Letter>
        elsif $<identifier> {
            $qast := QAST::Regex.new( $*key, :rxtype<uniprop>,
                                      :negate( $<sign> eq '-' && $<invert> ne '!' # $<sign> ^^ $<invert>
                                        || $<sign> ne '-' && $<invert> eq '!' ), :node($/) );

            # <:NumericValue(0 ^..^ 1)>
            $qast.push($<coloncircumfix>.ast) if $<coloncircumfix>;
        }
        else {
            my @alts;
            my $RXi := %*RX<i>;
            my $RXm := %*RX<m>;
            my $RXim := $RXi && $RXm;
            for $<charspec> {
                if $_[1] {
                    my $node;
                    my $ord0;
                    my $ord1;
                    sub non_synth_ord($chr) {
                        my int $ord := nqp::ord($chr);
                        if nqp::chr($ord) ne $chr {
                            $/.panic("Cannot use $chr as a range endpoint, as it is not a single codepoint");
                        }
                        $ord
                    }
                    if $_[0]<cclass_backslash> {
                        $node := $_[0]<cclass_backslash>.ast;
                        $/.panic("Illegal range endpoint in regex: " ~ ~$_)
                            if $node.rxtype ne 'literal' && $node.rxtype ne 'enumcharlist'
                                || $node.negate || nqp::chars($node[0]) != 1;
                        $ord0 := $node.ann('codepoint') // ($RXm
                            ?? nqp::ordbaseat($node[0], 0)
                            !! non_synth_ord($node[0]));
                    }
                    else {
                        $ord0 := $RXm
                            ?? nqp::ordbaseat(~$_[0][0], 0)
                            !! non_synth_ord(~$_[0][0]);
                    }
                    if $_[1][0]<cclass_backslash> {
                        $node := $_[1][0]<cclass_backslash>.ast;
                        $/.panic("Illegal range endpoint in regex: " ~ ~$_)
                            if $node.rxtype ne 'literal' && $node.rxtype ne 'enumcharlist'
                                || $node.negate || nqp::chars($node[0]) != 1;
                        $ord1 := $node.ann('codepoint') // ($RXm
                            ?? nqp::ordbaseat($node[0], 0)
                            !! non_synth_ord($node[0]));
                    }
                    else {
                        $ord1 := $RXm
                            ?? nqp::ordbaseat(~$_[1][0][0], 0)
                            !! non_synth_ord(~$_[1][0][0]);
                    }
                    $/.panic("Illegal reversed character range in regex: " ~ ~$_)
                        if $ord0 > $ord1;
                    @alts.push(QAST::Regex.new(
                        $RXim ?? 'ignorecase+ignoremark' !!
                        $RXi  ?? 'ignorecase' !!
                        $RXm  ?? 'ignoremark' !! '',
                        QAST::IVal.new( :value($ord0) ),
                        QAST::IVal.new( :value($ord1) ),
                        :negate( $<sign> eq '-' ),
                        :rxtype<charrange>, :node($/) ));
                }
                elsif $_[0]<cclass_backslash> {
                    my $bs := $_[0]<cclass_backslash>.ast;
                    if $bs.rxtype eq 'enumcharlist' && !$bs.negate || $bs.rxtype eq 'literal' {
                        $str := $str ~ $bs[0];
                    }
                    else {
                        $bs.negate(!$bs.negate) if $<sign> eq '-';
                        @alts.push($bs);
                    }
                }
                elsif $RXim {
                    my $c := nqp::chr(nqp::ordbaseat(~$_[0], 0));
                    $str := $str ~ nqp::fc($c) ~ nqp::uc($c);
                }
                elsif $RXi {
                    my $c := ~$_[0];
                    $str := $str ~ nqp::fc($c) ~ nqp::uc($c);
                }
                elsif $RXm {
                    $str := $str ~ nqp::chr(nqp::ordbaseat(~$_[0], 0));
                }
                else {
                    $str := $str ~ ~$_[0];
                }
            }
            @alts.push(QAST::Regex.new( $str, :rxtype<enumcharlist>, :node($/), :negate( $<sign> eq '-' ),
                                        :subtype($RXm ?? 'ignoremark' !! '') ))
                if nqp::chars($str);
            $qast := ( my $num := +@alts ) == 1 ?? @alts[0] !!
                0 < $num && $<sign> eq '-' ??
                    QAST::Regex.new( :rxtype<concat>, :node($/), :negate(1),
                        QAST::Regex.new( :rxtype<conj>, :subtype<zerowidth>, |@alts ),
                        QAST::Regex.new( :rxtype<cclass>, :name<.> ) ) !!
                    QAST::Regex.new( :rxtype<alt>, |@alts );
        }
        make $qast;
    }

    method mod_internal($/) {
        if $<quote_EXPR> {
            if nqp::istype($<quote_EXPR>[0].ast, QAST::SVal) {
                my $key := ~$<mod_ident><sym>;
                my $val := $<quote_EXPR>[0].ast.value;
                %*RX{$key} := $val;
                make $key eq 'dba'
                    ?? QAST::Regex.new( :rxtype('dba'), :name($val) )
                    !! 0;
            }
            else {
                $/.panic("Internal modifier strings must be literals");
            }
        }
    }

    sub backmod($ast, $backmod) {
        if $backmod eq ':' { $ast.backtrack('r') }
        elsif $backmod eq ':?' || $backmod eq '?' { $ast.backtrack('f') }
        elsif $backmod eq ':!' || $backmod eq '!' { $ast.backtrack('g') }
        $ast;
    }

    method apply_literal_modifiers($qast) {
        if %*RX<i> && %*RX<m> { # >
            $qast.subtype('ignorecase+ignoremark')
        }
        elsif %*RX<i> {
            $qast.subtype('ignorecase')
        }
        elsif %*RX<m> { # >
            $qast.subtype('ignoremark')
        }
        return $qast
    }

    method qbuildsub($qast, $block = QAST::Block.new(), :$anon, :$addself, *%rest) {
	my $*LANG := $qast.node;
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

        $block.annotate('orig_qast', $qast);
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

        self.set_cursor_type($qast);

        $block;
    }

    # A hook point that subclasses can set to the cursor type
    method set_cursor_type($qast) {
    }

    sub capnames($ast, int $count) {
        my %capnames;
        my $rxtype := $ast.rxtype;
        if $rxtype eq 'concat' || $rxtype eq 'goal' || $rxtype eq 'conjseq' {
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
                my $n := nqp::radix(10, $_, 0, 0)[0];
                if $_ eq '0' || $n > 0 {
                    $count := $n + 1;
                    %capnames{$n} := 1
                }
                else {
                    %capnames{$_} := 1;
                }
            }
        }
        elsif $rxtype eq 'subcapture' {
            for nqp::split(' ', $ast.name) {
                my $n := nqp::radix(10, $_, 0, 0)[0];
                if $_ eq '0' || $n > 0 {
                    $count := $n + 1;
                    %capnames{$n} := 1
                }
                else {
                    %capnames{$_} := 1;
                }
            }
            my %x := capnames($ast[0], $count);
            for %x { %capnames{$_.key} := +%capnames{$_.key} + %x{$_.key} }
            $count := %x{''};
        }
        elsif $rxtype eq 'quant' || $rxtype eq 'dynquant' {
            my $ilist := ($ast.subtype eq 'item');
            my %astcap := capnames($ast[0], $count);
            for %astcap { %capnames{$_.key} := $ilist ?? $_.value !! 2 }
            $count := %astcap{''};
            my $sep_ast := $ast[$rxtype eq 'quant' ?? 1 !! 2];
            if $sep_ast {
                # handle any separator quantification
                my %astcap := capnames($sep_ast, $count);
                for %astcap { %capnames{$_.key} := $ilist ?? $_.value !! 2 }
                $count := %astcap{''};
            }
        }
        %capnames{''} := $count;  # will be deleted in SET_CAPS
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
            $ast.name(QAST::Node.unique('alt_nfa_') ~ '_' ~ $*W.handle());
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

    method offset_ast($qast) {
        return -1 unless nqp::istype($qast, QAST::Regex);
        if $qast.rxtype eq 'literal' {
            return nqp::chars($qast[0]);
        }
        elsif $qast.rxtype eq 'cclass' {
            return 1;
        }
        elsif $qast.rxtype eq 'anchor' {
            return 0;
        }
        elsif $qast.rxtype eq 'concat' {
            my int $litlen;
            for @($qast) {
                my int $ll := self.offset_ast($_);
                return -1 if $ll < 0;
                $litlen := $litlen + $ll;
            }
            return $litlen;
        }
        return -1;
    }

    method flip_ast($qast) {
        return $qast unless nqp::istype($qast, QAST::Regex);
        if $qast.rxtype eq 'literal' {
            $qast[0] := nqp::flip($qast[0]);
        }
        elsif $qast.rxtype eq 'concat' {
            my @tmp;
            while nqp::elems(@($qast)) { @tmp.push(@($qast).shift) }
            while @tmp { @($qast).push(self.flip_ast(@tmp.pop)) }
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
