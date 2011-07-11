class QRegex::P6Regex::Actions is HLL::Actions {
    method TOP($/) {
        make buildsub($<nibbler>.ast);
    }

    method nibbler($/) {
        my $qast;
        if +$<termconj> > 1 {
            $qast := QAST::Regex.new( :rxtype<altseq>, :node($/) );
            for $<termconj> { $qast.push($_.ast) }
        }
        else {
            $qast := $<termconj>[0].ast;
        }
        make $qast;
    }

    method termconj($/) {
        my $qast := $<termish>[0].ast;
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
        make $qast;
    }

    method atom($/) {
        make $<metachar>
               ?? $<metachar>.ast
               !! QAST::Regex.new( ~$/, :rxtype<literal>, :node($/));
    }

    method quantifier:sym<+>($/) {
        my $past := QAST::Regex.new( :rxtype<quant>, :min(1), :node($/) );
        make $past;
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

    method metachar:sym<ws>($/) {
        make 0;
    }

    method backslash:sym<s>($/) {
        make QAST::Regex.new(:rxtype<cclass>, '.CCLASS_WHITESPACE', 
                             :subtype($<sym> eq 'n' ?? 'nl' !! ~$<sym>), 
                             :negate($<sym> le 'Z'), :node($/));
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


