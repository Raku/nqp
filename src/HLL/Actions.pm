class HLL::Actions;

method EXPR($/, $key?) {
    unless $key { return 0; }
    my $past := $<OPER>.peek_ast;
    unless $past { 
        $past := PAST::Op.new( :node($/) );
        if $<OPER><O><pasttype> { $past.pasttype( ~$<OPER><O><pasttype> ); }
        elsif $<OPER><O><pirop>    { $past.pirop( ~$<OPER><O><pirop> ); }
        unless $past.name {
            if $key eq 'LIST' { $key := 'infix'; }
            my $name := Q:PIR {
                $P0 = find_lex '$key'
                $S0 = $P0
                $S0 = downcase $S0
                %r = box $S0
            } ~ ':<' ~ $<OPER><sym> ~ '>';
            $past.name($name);
        }
    }
    if $key eq 'POSTFIX' { $past.unshift($/[0].ast); }
    else {
        for $/.list { if $_.ast { $past.push($_.ast); } }
    }
    make $past;
}

method termish($/) {
    make $<noun>.ast;
}

method noun:sym<term>($/) { make $<term>.ast }
method noun:sym<circumfix>($/) { make $<circumfix>.ast }

method integer($/) {
    make $<decint> 
         ?? string_to_int( $<decint>, 10)
         !! ( $<hexint> 
              ?? $<hexint>.ast
              !! ( $<octint> 
                   ?? $<octint>.ast
                   !! string_to_int( $<binint>, 2)
                 )
            );
}

method hexint($/) {
    make string_to_int( $/, 16 );
}

method octint($/) {
    make string_to_int( $/, 8 );
}

method quote_EXPR($/) {
    my $past := $<quote_delimited>.ast;
    if HLL::Grammar::quotemod_check($/, 'w') {
        if isaPAST($past) { 
            $/.panic("Can't form :w list from non-constant strings (yet)");
        }
        else {
            my @words := HLL::Grammar::split_words($/, $past);
            if +@words > 1 {
                $past := PAST::Op.new( :pasttype('list'), :node($/) );
                for @words { $past.push($_); }
            }
        }
    }
    if !isaPAST($past) {
        $past := PAST::Val.new( :value(~$past) );
    }
    make $past;
}

method quote_delimited($/) {
    my @parts;
    my $lastlit := '';
    for $<quote_atom> {
        my $ast := $_.ast;
        if !isaPAST($ast) {
            $lastlit := $lastlit ~ $ast;
        }
        elsif $ast.isa(PAST::Val) {
            $lastlit := $lastlit ~ $ast.value;
        }
        else {
            if $lastlit gt '' { @parts.push($lastlit); }
            @parts.push($ast);
            $lastlit := '';
        }
    }
    if $lastlit gt '' { @parts.push($lastlit); }
    my $past := @parts ?? @parts.shift !! '';
    while @parts {
        $past := PAST::Op.new( $past, @parts.shift, :pirop('concat') );
    }
    make $past;
}

method quote_atom($/) {
    make $<escape> ?? $<escape>.ast !! ~$/;
}

method escape:sym<backslash>($/) { make "\\"; }
method escape:sym<stopper>($/) { make ~$<stopper> }
    
method escape:sym<bs>($/)  { make "\b"; }
method escape:sym<nl>($/)  { make "\n"; }
method escape:sym<cr>($/)  { make "\r"; }
method escape:sym<tab>($/) { make "\t"; }

method escape:sym<hex>($/) {
    make ints_to_string( $<hexint> ?? $<hexint> !! $<hexints><hexint> );
}

method escape:sym<oct>($/) {
    make ints_to_string( $<octint> ?? $<octint> !! $<octints><octint> );
}

sub string_to_int($src, $base) {
    Q:PIR {
        .local pmc src
        .local string src_s
        src = find_lex '$src'
        src_s = src
        .local int base, pos, eos, result
        $P0 = find_lex '$base'
        base = $P0
        pos = 0
        eos = length src_s
        result = 0
      str_loop:
        unless pos < eos goto str_done
        .local string char
        char = substr src_s, pos, 1
        if char == '_' goto str_next
        .local int digitval
        digitval = index "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", char
        if digitval < 0 goto err_base
        digitval >>= 1
        if digitval > base goto err_base
        result *= base
        result += digitval
      str_next:
        inc pos
        goto str_loop
      err_base:
	src.'panic'('Invalid radix conversion of "', char, '"')
      str_done:
        %r = box result
    };
}

sub ints_to_string($ints) {
    Q:PIR {
        .local string result
        result = ''
        .local pmc ints, ints_it
        ints = find_lex '$ints'
        $I0 = does ints, 'array'
        unless $I0 goto ints_1
        ints_it = iter ints
      ints_loop:
        unless ints_it goto ints_done
        $P0 = shift ints_it
        $I0 = $P0.'ast'()
        $S0 = chr $I0
        concat result, $S0
        goto ints_loop
      ints_1:
        $I0 = ints.'ast'()
        result = chr $I0
      ints_done:
        %r = box result
    };
}

sub isaPAST($x) {
    Q:PIR {
        $P0 = find_lex '$x'
        $I0 = isa $P0, ['PAST';'Node']
        %r = box $I0
    }
}
