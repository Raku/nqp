class QRegex::P6Regex::Actions is HLL::Actions {
    method TOP($/) {
        make PAST::QAST.new( $<nibbler>.ast );
    }

    method nibbler($/) {
        my $qast := $<termconj>[0].ast;
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
        make QAST::Regex.new( ~$/, :rxtype<literal>, :node($/));
    }

    method quantifier:sym<+>($/) {
        my $past := QAST::Regex.new( :rxtype<quant>, :min(1), :node($/) );
        make $past;
    }

}
