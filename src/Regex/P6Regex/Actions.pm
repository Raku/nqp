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
    make $<termish>[0].ast;
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
    my $past := PAST::Regex.new( ~$/ , :pasttype('literal') );
    make $past;
}

method quantifier:sym<*>($/) {
    my $past := PAST::Regex.new( :pasttype('quant') );
    make $past;
}

method quantifier:sym<+>($/) {
    my $past := PAST::Regex.new( :pasttype('quant'), :min(1) );
    make $past;
}

method quantifier:sym<?>($/) {
    my $past := PAST::Regex.new( :pasttype('quant'), :min(0), :max(1) );
    make $past;
}
