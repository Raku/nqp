class QRegex::P6Regex::Actions is HLL::Actions {
    method TOP($/) {
        make buildsub($<nibbler>.ast);
    }

    method nibbler($/) {
        my $qast := $<termconj>[0].ast;
        if +$<termconj> > 1 {
            $qast := QAST::Regex.new( :rxtype<altseq>, :node($/) );
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
        $qast.backtrack('r') if $qast && !$qast.backtrack && %*RX<r>;
        make $qast;
    }

    method atom($/) {
        make $<metachar>
               ?? $<metachar>.ast
               !! QAST::Regex.new( ~$/, :rxtype<literal>, :node($/));
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
        if $<quantified_atom> { 
            my $ast := $<quantified_atom>.ast;
            $qast := QAST::Regex.new( :rxtype<quant>, :min(1), $ast);
        }
        else {
            $qast := QAST::Regex.new( :rxtype<quant>, :min(+$<min>), :node($/) );
            if ! $<max> { $qast.max(+$<min>) }
            elsif $<max>[0] ne '*' { $qast.max(+$<max>[0]); }
        }
        make backmod($qast, $<backmod>);
    }

    method metachar:sym<ws>($/) {
        make 0;
    }

    method metachar:sym<[ ]>($/) {
        make $<nibbler>.ast;
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
            HLL::Actions::ints_to_string( $<octint> || $<octints><octint> );
        make $<sym> eq 'O'
             ?? QAST::Regex.new( $octlit, :rxtype('enumcharlist'),
                                  :negate(1), :node($/) )
             !! QAST::Regex.new( $octlit, :rxtype('literal'), :node($/) );
    }

    method backslash:sym<x>($/) {
        my $hexlit :=
            HLL::Actions::ints_to_string( $<hexint> || $<hexints><hexint> );
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

    method assertion:sym<[>($/) {
        my $clist := $<cclass_elem>;
        my $qast  := $clist[0].ast;
        make $qast;
    }

    method cclass_elem($/) {
        my $str := '';
        my $qast;
        {
            for $<charspec> {
                if $_[1] {
                    my $ord0 := nqp::ord($_[0]);
                    my $ord1 := nqp::ord($_[1][0]);
                    $str := nqp::concat($str, nqp::chr($ord0++)) while $ord0 <= $ord1;
                }
                else { $str := $str ~ $_[0]; }
            }
            $qast := QAST::Regex.new( $str, :rxtype<enumcharlist>, :node($/) );
        }
        $qast.negate( $<sign> eq '-' );
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

    sub buildsub($qast, $block = PAST::Block.new()) {
        $qast := QAST::Regex.new( :rxtype<concat>,
                     QAST::Regex.new( :rxtype<scan> ),
                     $qast,
                     QAST::Regex.new( :rxtype<pass> ));
        $block.push(PAST::QAST.new($qast));
        $block.blocktype('method');
        $block;
    }

}


