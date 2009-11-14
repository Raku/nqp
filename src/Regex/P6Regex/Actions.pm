class Regex::P6Regex::Actions is HLL::Actions;

## this will eventually be handled using contextuals
our @MODIFIERS;

sub INIT() {
    @MODIFIERS := Q:PIR {
        %r = new ['ResizablePMCArray']
        $P0 = new ['Hash']
        push %r, $P0
    };
}

method arg($/) {
    make $<quote> ?? ~$<quote><val> !! +$<val>;
}

method arglist($/) {
    my $past := PAST::Op.new( :pasttype('list') );
    for $<arg> { $past.push( $_.ast ); }
    make $past;
}

method TOP($/) {
    my $past := buildsub( $<nibbler>.ast );
    $past.node($/);
    make $past;
}

method nibbler($/, $key?) {
    if $key eq 'open' {
        my %old := @MODIFIERS[0];
        my %new := Q:PIR {
                       $P0 = find_lex '%old'
                       %r = clone $P0
                   };
        @MODIFIERS.unshift(%new);
        return 1;
    }

    @MODIFIERS.shift;
    my $past;
    if +$<termish> > 1 {
        $past := PAST::Regex.new( :pasttype('alt'), :node($/) );
        for $<termish> {
            $past.push($_.ast);
        }
    }
    else {
        $past := $<termish>[0].ast;
    }
    make $past;
}

method termish($/) {
    my $past := PAST::Regex.new( :pasttype('concat'), :node($/) );
    my $lastlit := 0;
    for $<noun> {
        my $ast := $_.ast;
        if !$ast { }
        elsif $lastlit && $ast.pasttype eq 'literal' {
            $lastlit[0] := $lastlit[0] ~ $ast[0];
        }
        else {
            $past.push($ast);
            $lastlit := $ast.pasttype eq 'literal' ?? $ast !! 0;
        }
    }
    make $past;
}

method quantified_atom($/) {
    my $past := $<atom>.ast;
    if $<quantifier> {
        if !$past { $/.panic("Can't quantify zero-width atom"); }
        my $qast := $<quantifier>[0].ast;
        $qast.unshift($past);
        $past := $qast;
    }
    elsif $<backmod>[0] { backmod($past, $<backmod>[0]); }
    if $past && !$past.backtrack && @MODIFIERS[0]<r> {
        $past.backtrack('r');
    }
    make $past;
}

method atom($/) {
    my $past;
    if $<metachar> { $past := $<metachar>.ast }
    else {
        $past := PAST::Regex.new( ~$/ , :pasttype('literal'), :node($/) );
        if @MODIFIERS[0]<i> { $past.subtype('ignorecase'); }
    }
    make $past;
}

method quantifier:sym<*>($/) {
    my $past := PAST::Regex.new( :pasttype('quant'), :node($/) );
    make backmod($past, $<backmod>);
}

method quantifier:sym<+>($/) {
    my $past := PAST::Regex.new( :pasttype('quant'), :min(1), :node($/) );
    make backmod($past, $<backmod>);
}

method quantifier:sym<?>($/) {
    my $past := PAST::Regex.new( :pasttype('quant'), :min(0), :max(1), :node($/) );
    make backmod($past, $<backmod>);
    make $past;
}

method quantifier:sym<**>($/) {
    my $past;
    if $<quantified_atom> {
        $past := PAST::Regex.new( :pasttype('quant'), :min(1),
                                  :sep( $<quantified_atom>.ast ), :node($/) );
    }
    else {
        $past := PAST::Regex.new( :pasttype('quant'), :min(+$<min>), :node($/) );
        if ! $<max> { $past.max(+$<min>); }
        elsif $<max>[0] ne '*' { $past.max(+$<max>[0]); }
    }
    make backmod($past, $<backmod>);
}

method metachar:sym<ws>($/) {
    my $past := @MODIFIERS[0]<s>
                ?? PAST::Regex.new( 'ws', :pasttype('subrule'),
                                    :subtype('method'), :node($/) )
                !! 0;
    make $past;
}


method metachar:sym<[ ]>($/) {
    make $<nibbler>.ast;
}

method metachar:sym<( )>($/) {
    my $subpast := buildsub($<nibbler>.ast);
    my $past := PAST::Regex.new( $subpast, :pasttype('subrule'),
                                 :subtype('capture'), :node($/) );
    make $past;
}

method metachar:sym<'>($/) {
    my $past := PAST::Regex.new( ~$<quote><val>, :pasttype('literal'), :node($/) );
    make $past;
}

method metachar:sym<.>($/) {
    my $past := PAST::Regex.new( :pasttype('charclass'), :subtype('.'), :node($/) );
    make $past;
}

method metachar:sym<^>($/) {
    my $past := PAST::Regex.new( :pasttype('anchor'), :subtype('bos'), :node($/) );
    make $past;
}

method metachar:sym<^^>($/) {
    my $past := PAST::Regex.new( :pasttype('anchor'), :subtype('bol'), :node($/) );
    make $past;
}

method metachar:sym<$>($/) {
    my $past := PAST::Regex.new( :pasttype('anchor'), :subtype('eos'), :node($/) );
    make $past;
}

method metachar:sym<$$>($/) {
    my $past := PAST::Regex.new( :pasttype('anchor'), :subtype('eol'), :node($/) );
    make $past;
}

method metachar:sym<:::>($/) {
    my $past := PAST::Regex.new( :pasttype('cut'), :node($/) );
    make $past;
}

method metachar:sym<lwb>($/) {
    my $past := PAST::Regex.new( :pasttype('anchor'), :subtype('lwb'), :node($/) );
    make $past;
}

method metachar:sym<rwb>($/) {
    my $past := PAST::Regex.new( :pasttype('anchor'), :subtype('rwb'), :node($/) );
    make $past;
}

method metachar:sym<bs>($/) {
    make $<backslash>.ast;
}

method metachar:sym<mod>($/) {
    make $<mod_internal>.ast;
}

method metachar:sym<assert>($/) {
    make $<assertion>.ast;
}

method metachar:sym<~>($/) {
    make PAST::Regex.new(
        $<EXPR>.ast,
        PAST::Regex.new(
            $<GOAL>.ast,
            PAST::Regex.new( 'FAILGOAL', ~$<GOAL>, :pasttype('subrule'),
                             :subtype('method') ),
            :pasttype('alt')
        ),
        :pasttype('concat')
    );
}

method metachar:sym<{*}>($/) {
    my $past := $<key>
                ?? PAST::Regex.new( ~$<key>[0], :pasttype('reduce'), :node($/) )
                !! 0;
    make $past;
}

method metachar:sym<var>($/) {
    my $past;
    my $name := $<pos> ?? +$<pos> !! ~$<name>;
    if $<quantified_atom> {
        $past := $<quantified_atom>[0].ast;
        if $past.pasttype eq 'quant' && $past[0].pasttype eq 'subrule' {
            subrule_alias($past[0], $name);
        }
        elsif $past.pasttype eq 'subrule' { subrule_alias($past, $name); }
        else {
            $past := PAST::Regex.new( $past, :name($name), :pasttype('subcapture'), :node($/) );
        }
    }
    else {
        $past := PAST::Regex.new( '!BACKREF', $name, :pasttype('subrule'),
                                  :subtype('method'), :node($/) );
    }
    make $past;
}

method metachar:sym<PIR>($/) {
    make PAST::Regex.new(
             PAST::Op.new( :inline(~$<pir>), :pasttype('inline'), ),
             :pasttype('pastnode'), :node($/)
         );
}


method backslash:sym<w>($/) {
    my $subtype := ~$<sym> eq 'n' ?? 'nl' !! ~$<sym>;
    my $past := PAST::Regex.new( :pasttype('charclass'), :subtype($subtype), :node($/) );
    make $past;
}

method backslash:sym<b>($/) {
    my $past := PAST::Regex.new( "\b", :pasttype('enumcharlist'),
                    :negate($<sym> eq 'B'), :node($/) );
    make $past;
}

method backslash:sym<e>($/) {
    my $past := PAST::Regex.new( "\e", :pasttype('enumcharlist'),
                    :negate($<sym> eq 'E'), :node($/) );
    make $past;
}

method backslash:sym<f>($/) {
    my $past := PAST::Regex.new( "\f", :pasttype('enumcharlist'),
                    :negate($<sym> eq 'F'), :node($/) );
    make $past;
}

method backslash:sym<h>($/) {
    my $past := PAST::Regex.new( "\x[09,20,a0,1680,180e,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,200a,202f,205f,3000]", :pasttype('enumcharlist'),
                    :negate($<sym> eq 'H'), :node($/) );
    make $past;
}

method backslash:sym<r>($/) {
    my $past := PAST::Regex.new( "\r", :pasttype('enumcharlist'),
                    :negate($<sym> eq 'R'), :node($/) );
    make $past;
}

method backslash:sym<t>($/) {
    my $past := PAST::Regex.new( "\t", :pasttype('enumcharlist'),
                    :negate($<sym> eq 'T'), :node($/) );
    make $past;
}

method backslash:sym<v>($/) {
    my $past := PAST::Regex.new( "\x[0a,0b,0c,0d,85,2028,2029]",
                    :pasttype('enumcharlist'),
                    :negate($<sym> eq 'V'), :node($/) );
    make $past;
}

method backslash:sym<o>($/) {
    my $octlit :=
        HLL::Actions::ints_to_string( $<octint> || $<octints><octint> );
    make $<sym> eq 'O'
         ?? PAST::Regex.new( $octlit, :pasttype('enumcharlist'),
                              :negate(1), :node($/) )
         !! PAST::Regex.new( $octlit, :pasttype('literal'), :node($/) );
}

method backslash:sym<x>($/) {
    my $hexlit :=
        HLL::Actions::ints_to_string( $<hexint> || $<hexints><hexint> );
    make $<sym> eq 'X'
         ?? PAST::Regex.new( $hexlit, :pasttype('enumcharlist'),
                              :negate(1), :node($/) )
         !! PAST::Regex.new( $hexlit, :pasttype('literal'), :node($/) );
}

method backslash:sym<misc>($/) {
    my $past := PAST::Regex.new( ~$/ , :pasttype('literal'), :node($/) );
    make $past;
}


method assertion:sym<?>($/) {
    my $past;
    if $<assertion> {
        $past := $<assertion>.ast;
        $past.subtype('zerowidth');
    }
    else { $past := 0; }
    make $past;
}

method assertion:sym<!>($/) {
    my $past;
    if $<assertion> {
        $past := $<assertion>.ast;
        $past.negate( !$past.negate );
        $past.subtype('zerowidth');
    }
    else {
        $past := PAST::Regex.new( :pasttype('anchor'), :subtype('fail'), :node($/) );
    }
    make $past;
}

method assertion:sym<method>($/) {
    my $past := $<assertion>.ast;
    $past.subtype('method');
    $past.name('');
    make $past;
}

method assertion:sym<name>($/) {
    my $name := ~$<longname>;
    my $past;
    if $<assertion> {
        $past := $<assertion>[0].ast;
        subrule_alias($past, $name);
    }
    elsif $name eq 'sym' {
        my $regexsym := Q:PIR {
            $P0 = get_global '$REGEXNAME'
            $S0 = $P0
            $I0 = index $S0, ':sym<'
            add $I0, 5
            $S0 = substr $S0, $I0
            chopn $S0, 1
            %r = box $S0
        };
        $past := PAST::Regex.new(
            PAST::Regex.new( $regexsym, :pasttype('literal') ),
            :name($name), :pasttype('subcapture'), :node($/)
        );
    }
    else {
        $past := PAST::Regex.new( $name, :name($name),
                                  :pasttype('subrule'), :subtype('capture'), :node($/) );
        if $<nibbler> {
            $past.push( buildsub($<nibbler>[0].ast) );
        }
        elsif $<arglist> {
            for $<arglist>[0].ast.list { $past.push( $_ ); }
        }
    }
    make $past;
}

method assertion:sym<[>($/) {
    my $clist := $<cclass_elem>;
    my $past := $clist[0].ast;
    if $past.negate && $past.pasttype eq 'subrule' {
        $past.subtype('zerowidth');
        $past := PAST::Regex.new(
                     $past,
                     PAST::Regex.new( :pasttype('charclass'), :subtype('.') ),
                     :node($/)
                 );
    }
    my $i := 1;
    my $n := +$clist;
    while $i < $n {
        my $ast := $clist[$i].ast;
        if $ast.negate {
            $ast.subtype('zerowidth');
            $past := PAST::Regex.new( $ast, $past, :pasttype('concat'), :node($/) );
        }
        else {
            $past := PAST::Regex.new( $past, $ast, :pasttype('alt'), :node($/) );
        }
        $i := $i + 1;
    }
    make $past;
}

method cclass_elem($/) {
    my $str := '';
    my $past;
    if $<name> {
        my $name := ~$<name>;
        $past := PAST::Regex.new( $name, :pasttype('subrule'), :subtype('method'), :node($/) );
    } else {
        for $<charspec> {
            if $_[1] {
                my $a := $_[0];
                my $b := $_[1][0];
                my $c := Q:PIR {
                             $P0 = find_lex '$a'
                             $S0 = $P0
                             $I0 = ord $S0
                             $P1 = find_lex '$b'
                             $S1 = $P1
                             $I1 = ord $S1
                             $S2 = ''
                           cclass_loop:
                             if $I0 > $I1 goto cclass_done
                             $S0 = chr $I0
                             $S2 .= $S0
                             inc $I0
                             goto cclass_loop
                           cclass_done:
                             %r = box $S2
                         };
                $str := $str ~ $c;
            }
            else { $str := $str ~ $_[0]; }
        }
        $past := PAST::Regex.new( $str, :pasttype('enumcharlist'), :node($/) );
    }
    $past.negate( $<sign> eq '-' );
    make $past;
}

method mod_internal($/) {
    my %mods := @MODIFIERS[0];
    my $n := $<n>[0] gt '' ?? +$<n>[0] !! 1;
    %mods{ ~$<mod_ident><sym> } := $n;
    make 0;
}

sub buildsub($rpast) {
    my %capnames := capnames($rpast, 0);
    %capnames{''} := 0;
    $rpast := PAST::Regex.new(
        PAST::Regex.new( :pasttype('scan') ),
        $rpast,
        PAST::Regex.new( :pasttype('pass') ),
        :pasttype('concat'),
        :capnames(%capnames)
    );
    PAST::Block.new( $rpast, :blocktype('method'));
}

sub capnames($ast, $count) {
    my %capnames;
    my $pasttype := $ast.pasttype;
    if $pasttype eq 'alt' {
        my $max := $count;
        for $ast.list {
            my %x := capnames($_, $count);
            for %x {
                %capnames{$_} := +%capnames{$_} < 2 && %x{$_} == 1
                                 ?? 1
                                 !! 2;
            }
            if %x{''} > $max { $max := %x{''}; }
        }
        $count := $max;
    }
    elsif $pasttype eq 'concat' {
        for $ast.list {
            my %x := capnames($_, $count);
            for %x {
                %capnames{$_} := +%capnames{$_} + %x{$_};
            }
            $count := %x{''};
        }
    }
    elsif $pasttype eq 'subrule' && $ast.subtype eq 'capture' {
        my $name := $ast.name;
        if $name eq '' { $name := $count; $ast.name($name); }
        my @names := Q:PIR {
            $P0 = find_lex '$name'
            $S0 = $P0
            %r = split '=', $S0
        };
        for @names {
            if $_ eq '0' || $_ > 0 { $count := $_ + 1; }
            %capnames{$_} := 1;
        }
    }
    elsif $pasttype eq 'subcapture' {
        my $name := $ast.name;
        my @names := Q:PIR {
            $P0 = find_lex '$name'
            $S0 = $P0
            %r = split '=', $S0
        };
        for @names {
            if $_ eq '0' || $_ > 0 { $count := $_ + 1; }
            %capnames{$_} := 1;
        }
        my %x := capnames($ast[0], $count);
        for %x {
            %capnames{$_} := +%capnames{$_} + %x{$_};
        }
        $count := %x{''};
    }
    elsif $pasttype eq 'quant' {
        my %astcap := capnames($ast[0], $count);
        for %astcap {
            %capnames{$_} := 2;
        }
        $count := %astcap{''};
    }
    %capnames{''} := $count;
    %capnames;
}

sub backmod($ast, $backmod) {
    if $backmod eq ':' { $ast.backtrack('r') }
    elsif $backmod eq ':?' || $backmod eq '?' { $ast.backtrack('f') }
    elsif $backmod eq ':!' || $backmod eq '!' { $ast.backtrack('g') }
    $ast;
}

sub subrule_alias($past, $name) {
    if $past.name gt '' { $past.name( $name ~ '=' ~ $past.name ); }
    else { $past.name($name); }
    $past.subtype('capture');
}
