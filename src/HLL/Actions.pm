class HLL::Actions;

our sub string_to_int($src, $base) {
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
        if digitval >= base goto err_base
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

our sub ints_to_string($ints) {
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


method EXPR($/, $key?) {
    unless $key { return 0; }
    my $past := $/.ast // $<OPER>.ast;
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
            $past.name('&' ~ $name);
        }
    }
    if $key eq 'POSTFIX' { $past.unshift($/[0].ast); }
    else {
        for $/.list { if pir::defined__IP($_.ast) { $past.push($_.ast); } }
    }
    make $past;
}

method term:sym<circumfix>($/) { make $<circumfix>.ast }

method termish($/) { make $<term>.ast; }
method nullterm($/) { make Q:PIR { %r = new ['Undef'] }; }
method nullterm_alt($/) { make $<term>.ast; }

method integer($/) { make $<VALUE>.ast; }

method dec_number($/) { make +$/; }

method decint($/) { make string_to_int( $/, 10); }
method hexint($/) { make string_to_int( $/, 16); }
method octint($/) { make string_to_int( $/, 8 ); }
method binint($/) { make string_to_int( $/, 2 ); }

method quote_EXPR($/) {
    my $past := $<quote_delimited>.ast;
    if $/.CURSOR.quotemod_check('w') {
        if PAST::Node.ACCEPTS($past) {
            $/.CURSOR.panic("Can't form :w list from non-constant strings (yet)");
        }
        else {
            my @words := HLL::Grammar::split_words($/, $past);
            if +@words > 1 {
                $past := PAST::Op.new( :pasttype('list'), :node($/) );
                for @words { $past.push($_); }
            }
            else {
                $past := ~@words[0];
            }
        }
    }
    if !PAST::Node.ACCEPTS($past) {
        $past := PAST::Val.new( :value(~$past) );
    }
    make $past;
}

method quote_delimited($/) {
    my @parts;
    my $lastlit := '';
    for $<quote_atom> {
        my $ast := $_.ast;
        if !PAST::Node.ACCEPTS($ast) {
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
    make $<quote_escape> ?? $<quote_escape>.ast !! ~$/;
}

method quote_escape:sym<backslash>($/) { make "\\"; }
method quote_escape:sym<stopper>($/) { make ~$<stopper> }

method quote_escape:sym<bs>($/)  { make "\b"; }
method quote_escape:sym<nl>($/)  { make "\n"; }
method quote_escape:sym<cr>($/)  { make "\r"; }
method quote_escape:sym<tab>($/) { make "\t"; }
method quote_escape:sym<ff>($/)  { make "\c[12]"; }

method quote_escape:sym<hex>($/) {
    make ints_to_string( $<hexint> ?? $<hexint> !! $<hexints><hexint> );
}

method quote_escape:sym<oct>($/) {
    make ints_to_string( $<octint> ?? $<octint> !! $<octints><octint> );
}

method quote_escape:sym<chr>($/) {
    make $<charspec>.ast;
}

method quote_escape:sym<0>($/) {
    make "\c[0]";
}

method quote_escape:sym<misc>($/) {
    make $<textq> ?? '\\' ~ $<textq>.Str !! $<textqq>.Str;
}

method charname($/) {
    my $codepoint := $<integer>
                     ?? $<integer>.ast
                     !!  Q:PIR { %r = new ['CodeString'] }.charname_to_ord( ~$/ );
    $/.CURSOR.panic("Unrecognized character name $/") if $codepoint < 0;
    make pir::chr($codepoint);
}

method charnames($/) {
    my $str := '';
    for $<charname> { $str := $str ~ $_.ast; }
    make $str;
}

method charspec($/) {
    make $<charnames> ?? $<charnames>.ast !! pir::chr(string_to_int( $/, 10 ));
}
