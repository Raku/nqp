class HLL::Actions {
    our sub string_to_int($src, $base) {
        my $res := nqp::radix($base, $src, 0, 2);
        $src.CURSOR.panic("'$src' is not a valid number")
            unless nqp::atkey($res, 2) == nqp::chars($src);
        nqp::atkey($res, 0);
    }

    method ints_to_string($ints) {
        if pir::does__IPs($ints, 'array') {
            my $result := '';
            for $ints {
                $result := $result ~ nqp::chr($_.ast);
            }
            $result;
        } else {
            nqp::chr($ints.ast);
        }
    }


    method CTXSAVE() {
        PAST::Op.new(
            :inline(
                '    $P0 = find_dynamic_lex "$*CTXSAVE"',
                '    if null $P0 goto ctxsave_done',
                '    $I0 = can $P0, "ctxsave"',
                '    unless $I0 goto ctxsave_done',
                '    $P0."ctxsave"()',
                '  ctxsave_done:'
            )
        );
    }


    method SET_BLOCK_OUTER_CTX($block) {
        my $outer_ctx := %*COMPILING<%?OPTIONS><outer_ctx>;
        if nqp::defined($outer_ctx) {
            for $outer_ctx.lexpad_full {
                $block.symbol($_.key, :scope<lexical>, :value($_.value));
            }
        }
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
                my $name := nqp::lc($key) ~ ':<' ~ $<OPER><sym> ~ '>';
                $past.name('&' ~ $name);
            }
        }
        if $key eq 'POSTFIX' { $past.unshift($/[0].ast); }
        else {
            for $/.list { if nqp::defined($_.ast) { $past.push($_.ast); } }
        }
        make $past;
    }

    method term:sym<circumfix>($/) { make $<circumfix>.ast }

    method termish($/) { make $<term>.ast; }
    method nullterm($/) { make pir::new__Ps('Undef') }
    method nullterm_alt($/) { make $<term>.ast; }

    method integer($/) { make $<VALUE>.ast; }

    method dec_number($/) { make +$/; }

    method decint($/) { make string_to_int( $/, 10); }
    method hexint($/) { make string_to_int( $/, 16); }
    method octint($/) { make string_to_int( $/, 8 ); }
    method binint($/) { make string_to_int( $/, 2 ); }

    method quote_EXPR($/) {
        my $past := $<quote_delimited>.ast;
        if %*QUOTEMOD<w> {
            if PAST::Node.ACCEPTS($past) {
                $/.CURSOR.panic("Can't form :w list from non-constant strings (yet)");
            }
            else {
                my @words := HLL::Grammar::split_words($/, $past);
                if +@words != 1 {
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
    method quote_escape:sym<esc>($/) { make "\c[27]"; }

    method quote_escape:sym<hex>($/) {
        make self.ints_to_string( $<hexint> ?? $<hexint> !! $<hexints><hexint> );
    }

    method quote_escape:sym<oct>($/) {
        make self.ints_to_string( $<octint> ?? $<octint> !! $<octints><octint> );
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
                         !! pir::find_codepoint__Is(
                                pir::trans_encoding__Ssi(~$/,
                                    pir::find_encoding__Is('utf8')) );
        $/.CURSOR.panic("Unrecognized character name $/") if $codepoint < 0;
        make nqp::chr($codepoint);
    }

    method charnames($/) {
        my $str := '';
        for $<charname> { $str := $str ~ $_.ast; }
        make $str;
    }

    method charspec($/) {
        make $<charnames> ?? $<charnames>.ast !! nqp::chr(string_to_int( $/, 10 ));
    }
}
