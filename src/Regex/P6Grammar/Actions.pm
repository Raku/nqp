class Regex::P6Grammar::Actions is Regex::P6Regex::Actions;

method TOP($/) {
    my $past := PAST::Stmts.new();
    for $<regex_stmt> {
        $past.push( $_.ast );
    }
    make $past;
}


method regex_stmt($/) {
    my $rpast := $<nibbler>.ast;
    my $past := PAST::Block.new( $rpast, :name(~$<longname>),
                                 :blocktype('method') );
    make $past;
}
