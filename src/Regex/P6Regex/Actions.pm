class Regex::P6Regex::Actions;

## this will eventually be handled using contextuals
our @MODIFIERS := Q:PIR { 
        %r = new ['ResizablePMCArray'] 
        $P0 = new ['Hash']
        push %r, $P0
    };

method TOP($/) {
    make buildsub( $<nibbler>.ast );
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
        $past := PAST::Regex.new( :pasttype('alt') );
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
    my $past := PAST::Regex.new( :pasttype('concat') );
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
        $past := PAST::Regex.new( ~$/ , :pasttype('literal') );
        if @MODIFIERS[0]<i> { $past.subtype('ignorecase'); }
    }
    make $past;
}

method quantifier:sym<*>($/) {
    my $past := PAST::Regex.new( :pasttype('quant') );
    make backmod($past, $<backmod>);
}

method quantifier:sym<+>($/) {
    my $past := PAST::Regex.new( :pasttype('quant'), :min(1) );
    make backmod($past, $<backmod>);
}

method quantifier:sym<?>($/) {
    my $past := PAST::Regex.new( :pasttype('quant'), :min(0), :max(1) );
    make backmod($past, $<backmod>);
    make $past;
}

method quantifier:sym<**>($/) {
    my $past;
    if $<quantified_atom> {
        $past := PAST::Regex.new( :pasttype('quant'), :min(1),
                                  :sep( $<quantified_atom>.ast ) );
    }
    else {
        $past := PAST::Regex.new( :pasttype('quant'), :min(+$<min>) );
        if ! $<max> { $past.max(+$<min>); }
        elsif $<max>[0] ne '*' { $past.max(+$<max>[0]); }
    }
    make backmod($past, $<backmod>);
}

method metachar:sym<ws>($/) { 
    my $past := @MODIFIERS[0]<s>
                ?? PAST::Regex.new( 'ws', :pasttype('subrule'), 
                                    :subtype('method') )
                !! 0;
    make $past; 
}


method metachar:sym<[ ]>($/) {
    make $<nibbler>.ast;
}

method metachar:sym<( )>($/) {
    my $subpast := buildsub($<nibbler>.ast);
    my $past := PAST::Regex.new( $subpast, :pasttype('subrule'),
                                 :subtype('capture') );
    make $past;
}

method metachar:sym<.>($/) {
    my $past := PAST::Regex.new( :pasttype('charclass'), :subtype('.') );
    make $past;
}

method metachar:sym<^>($/) {
    my $past := PAST::Regex.new( :pasttype('anchor'), :subtype('bos') );
    make $past;
}

method metachar:sym<^^>($/) {
    my $past := PAST::Regex.new( :pasttype('anchor'), :subtype('bol') );
    make $past;
}

method metachar:sym<$>($/) {
    my $past := PAST::Regex.new( :pasttype('anchor'), :subtype('eos') );
    make $past;
}

method metachar:sym<$$>($/) {
    my $past := PAST::Regex.new( :pasttype('anchor'), :subtype('eol') );
    make $past;
}

method metachar:sym<:::>($/) {
    my $past := PAST::Regex.new( :pasttype('cut') );
    make $past;
}

method metachar:sym<lwb>($/) {
    my $past := PAST::Regex.new( :pasttype('anchor'), :subtype('lwb') );
    make $past;
}

method metachar:sym<rwb>($/) {
    my $past := PAST::Regex.new( :pasttype('anchor'), :subtype('rwb') );
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

method metachar:sym<var>($/) {
    my $past;
    my $name := $<pos> ?? +$<pos> !! ~$<name>;
    if $<quantified_atom> {
        $past := $<quantified_atom>[0].ast;
        if $past.pasttype eq 'subrule' { 
            $past.subtype('capture');
            $past.name($name); 
        }
        else {
            $past := PAST::Regex.new( $past, :name($name), :pasttype('subcapture'));
        }
    }
    else {
        $past := PAST::Regex.new( '!BACKREF', $name, :pasttype('subrule'),
                                  :subtype('method') );
    }
    make $past;
}

method backslash:sym<w>($/) {
    my $subtype := ~$<sym> eq 'n' ?? 'nl' !! ~$<sym>;
    my $past := PAST::Regex.new( :pasttype('charclass'), :subtype($subtype) );
    make $past;
}

method backslash:sym<b>($/) {
    my $past := PAST::Regex.new( "\b", :pasttype('enumcharlist'),
                    :negate($<sym> eq 'B'));
    make $past;
}

method backslash:sym<e>($/) {
    my $past := PAST::Regex.new( "\e", :pasttype('enumcharlist'),
                    :negate($<sym> eq 'E'));
    make $past;
}

method backslash:sym<f>($/) {
    my $past := PAST::Regex.new( "\f", :pasttype('enumcharlist'), 
                    :negate($<sym> eq 'F'));
    make $past;
}

method backslash:sym<h>($/) {
    my $past := PAST::Regex.new( "\x[09,20,a0,1680,180e,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,200a,202f,205f,3000]", :pasttype('enumcharlist'),
                    :negate($<sym> eq 'H'));
    make $past;
}

method backslash:sym<r>($/) {
    my $past := PAST::Regex.new( "\r", :pasttype('enumcharlist'), 
                    :negate($<sym> eq 'R'));
    make $past;
}

method backslash:sym<t>($/) {
    my $past := PAST::Regex.new( "\t", :pasttype('enumcharlist'), 
                    :negate($<sym> eq 'T'));
    make $past;
}

method backslash:sym<v>($/) {
    my $past := PAST::Regex.new( "\x[0a,0b,0c,0d,85,2028,2029]", :pasttype('enumcharlist'),
                    :negate($<sym> eq 'V'));
    make $past;
}


method backslash:sym<misc>($/) {
    my $past := PAST::Regex.new( ~$/ , :pasttype('literal') );
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
        $past := PAST::Regex.new( :pasttype('anchor'), :subtype('fail') );
    }
    make $past;
}

method assertion:sym<method>($/) {
    my $past := $<assertion>.ast;
    $past.subtype('method');
    make $past;
}

method assertion:sym<name>($/) {
    my $name := ~$<longname>;
    my $past;
    if $<nibbler> {
        my $subpast := buildsub($<nibbler>[0].ast);
        $past := PAST::Regex.new( $name, $subpast, :name($name),
                                  :pasttype('subrule'), :subtype('capture') );
    }
    elsif $<assertion> {
        $past := $<assertion>[0].ast;
        $past.name($name);
    }
    else {
        $past := PAST::Regex.new( $name, :name($name) , :pasttype('subrule'),
                                  :subtype('capture') );
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
                     PAST::Regex.new( :pasttype('charclass'), :subtype('.') ) 
                 );
    }
    my $i := 1;
    my $n := +$clist;
    while $i < $n {
        my $ast := $clist[$i].ast;
        if $ast.negate {
            $past.subtype('zerowidth');
            $past := PAST::Regex.new( $ast, $past, :pasttype('concat') );
        }
        else {
            $past := PAST::Regex.new( $past, $ast, :pasttype('alt') );
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
        $past := PAST::Regex.new( $name, :pasttype('subrule'), :subtype('method') );
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
        $past := PAST::Regex.new( $str, :pasttype('enumcharlist') );
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
    PAST::Block.new( $rpast, :blocktype('method') );
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
        if $ast.name eq '' { 
            $ast.name($count);
            $count := $count + 1;
        }
        elsif $ast.name eq '0' || $ast.name > 0 { $count := $ast.name + 1; }
        %capnames{$ast.name} := 1;
    }
    elsif $pasttype eq 'subcapture' {
        if $ast.name eq '0' || $ast.name > 0 { $count := $ast.name + 1; }
        my %x := capnames($ast[0], $count);
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
