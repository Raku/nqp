class Regex::P6Grammar::Actions is Regex::P6Regex::Actions;

method TOP($/) {
    my $past := PAST::Stmts.new();
    for $<regex_stmt> {
        $past.push( $_.ast );
    }
    make $past;
}


method regex_stmt($/, $key?) {
    my @MODIFIERS := Q:PIR { 
        %r = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    };
    if $key eq 'open' {
        my %h;
        if $<sym> eq 'token' { %h<r> := 1; }
        if $<sym> eq 'rule'  { %h<r> := 1;  %h<s> := 1; }
        @MODIFIERS.unshift(%h);
        return 0;
    }
    my $rpast := $<nibbler>.ast;
    my %capnames := Regex::P6Regex::Actions::capnames($rpast, 0);
    %capnames{''} := 0;
    $rpast := PAST::Regex.new(
                  $rpast, 
                  PAST::Regex.new( :pasttype('pass') ),
                  :pasttype('concat'),
                  :capnames(%capnames)
    );
    my $past := PAST::Block.new( $rpast, :name(~$<longname>), :blocktype('method') );
    @MODIFIERS.shift;
    make $past;
}
