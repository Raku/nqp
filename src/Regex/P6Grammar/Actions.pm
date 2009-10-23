class Regex::P6Grammar::Actions is Regex::P6Regex::Actions;

method TOP($/) {
    my $past := $<grammar_stmt>.ast;
    for $<regex_stmt> {
        $past.push( $_.ast );
    }
    $past.node($/);
    make $past;
}


method grammar_stmt($/) {
    my @ns := Regex::P6Grammar::Compiler.parse_name( ~$<name> );
    my $past := PAST::Block.new( :namespace(@ns), :node($/) );
    my $parent := $<base> ?? ~$<base>[0] !! 'Regex::Cursor';
    my $init := 
        PAST::Op.new(
            PAST::Var.new( :name('P6metaclass'), :scope('package'),
                           :namespace('') ),
            ~$<name>,
            PAST::Val.new( :value($parent), :named('parent') ),
            :pasttype('callmethod'), :name('new_class'), :node($/)
        );
    $past.loadinit($init);
    make $past;
}


method regex_stmt($/, $key?) {
    my @MODIFIERS := Q:PIR { 
        %r = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    };
    my $name := ~$<longname>;
    if $key eq 'open' {
        my %h;
        if $<sym> eq 'token' { %h<r> := 1; }
        if $<sym> eq 'rule'  { %h<r> := 1;  %h<s> := 1; }
        @MODIFIERS.unshift(%h);
        Q:PIR { 
            $P0 = find_lex '$name'
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        };
        return 0;
    }
    my $past;
    if $<proto> {
        $past := 
            PAST::Stmts.new(
                PAST::Block.new( :name($name),
                    PAST::Op.new( 
                        PAST::Var.new( :name('self'), :scope('register') ),
                        $name,
                        :name('!protoregex'),
                        :pasttype('callmethod'),
                    ),
                    :blocktype('method'),
                    :lexical(0),
                    :node($/)
                ),
                PAST::Block.new( :name('!PREFIX__' ~ $name),
                    PAST::Op.new( 
                        PAST::Var.new( :name('self'), :scope('register') ),
                        $name,
                        :name('!PREFIX__!protoregex'),
                        :pasttype('callmethod'),
                    ),
                    :blocktype('method'),
                    :lexical(0),
                    :node($/)
                )
            );
    }
    else {
        my $rpast := $<nibbler>.ast;
        my %capnames := Regex::P6Regex::Actions::capnames($rpast, 0);
        %capnames{''} := 0;
        $rpast := PAST::Regex.new(
                      $rpast, 
                      PAST::Regex.new( :pasttype('pass') ),
                      :pasttype('concat'),
                      :capnames(%capnames)
        );
        $past := PAST::Block.new( $rpast, :name($name), 
                     :blocktype('method'), :node($/) );
        @MODIFIERS.shift;
    }
    make $past;
}

