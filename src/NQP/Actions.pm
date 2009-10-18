class NQP::Actions;

method TOP($/, $key?) {
    make PAST::Val.new( :value($<integer>.ast) );
}

method integer($/) {
    make 
      $<hexint> 
         ?? $<hexint>.ast
         !! $<octint>
            ?? $<octint>.ast
            !! string_to_int( $<digits>, $<base> eq 'b' ?? 2 !! 10 );
}

method hexint($/) {
    make string_to_int( $/, 16 );
}

method octint($/) {
    make string_to_int( $/, 8 );
}

method quote_delimited($/) {
    my $str := '';
    for $<quote_atom> {
        $str := $str ~ $_.ast;
    }
    make PAST::Val.new(:value($str), :node($/));
}

method quote_atom($/) {
    make $<escape> ?? $<escape>.ast !! ~$/;
}
    
method escape:sym<nl>($/) { make "\n"; }
method escape:sym<bs>($/) { make "\b"; }
method escape:sym<tab>($/) { make "\t"; }

sub string_to_int($src, $base) {
    Q:PIR {
        .local string src
        $P0 = find_lex '$src'
        src = $P0
        .local int base, pos, eos, result
        $P0 = find_lex '$base'
        base = $P0
        pos = 0
        eos = length src
        result = 0
      str_loop:
        unless pos < eos goto str_done
        .local string char
        char = substr src, pos, 1
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
        die "Invalid radix conversion"
      str_done:
        %r = box result
    };
}
