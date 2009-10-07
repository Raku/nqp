class Regex::P6Regex::Actions;

method TOP($/) {
    my $past := PAST::Regex.new(
        $<nibbler>.ast,
        PAST::Regex.new( :pasttype('pass') ),
        :pasttype('concat')
    );
    make $past;
}

method nibbler($/) {
    my $past;
    if +$<termish> > 1 {
        $past := PAST::Regex.new( :pasttype('alt') );
        for $<termish> { $past.push($_.ast); }
    }
    else {
        $past := $<termish>[0].ast;
    }
    make $past;
}

method termish($/) {
    my $past := PAST::Regex.new( :pasttype('concat') );
    for $<noun> {
        $past.push($_.ast);
    }
    make $past;
}

method quantified_atom($/) {
    my $past := $<atom>.ast;
    if $<quantifier> {
       $<quantifier>[0].ast.unshift($past);
       $past := $<quantifier>[0].ast;
    }
    make $past;
}

method atom($/) {
    my $past := $<metachar>
                ?? $<metachar>.ast
                !! PAST::Regex.new( ~$/ , :pasttype('literal') );
    make $past;
}

method quantifier:sym<*>($/) {
    make $<quantmod>.ast;
}

method quantifier:sym<+>($/) {
    my $past := $<quantmod>.ast;
    $past.min(1);
    make $past;
}

method quantifier:sym<?>($/) {
    my $past := $<quantmod>.ast;
    $past.min(0);
    $past.max(1);
    make $past;
}

method quantmod($/) {
    my $past := PAST::Regex.new( :pasttype('quant') );
    my $str := ~$/;
    if    $str eq ':' { $past.backtrack('r'); }
    elsif $str eq ':?' or $str eq '?' { $past.backtrack('f') }
    elsif $str eq ':*' or $str eq '!' { $past.backtrack('g') }
    make $past;
}


method metachar:sym<[ ]>($/) {
    make $<nibbler>.ast;
}
