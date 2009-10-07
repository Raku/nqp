class Regex::P6Regex::Actions;

method TOP($/) {
    my $regex := PAST::Regex.new(
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
    make $past;
}

method atom($/) {
    my $past := PAST::Regex.new( ~$/ , :pasttype('literal') );
    make $past;
}

