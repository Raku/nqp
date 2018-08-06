class HLL::Actions {
    method perl() { self.HOW.name(self) ~ '.new() #`[' ~ nqp::where(self) ~ ']' }

    method string_to_int($src, $base) {
        my $res := nqp::radix($base, $src, 0, 2);
        $src.panic("'$src' is not a valid number")
            unless nqp::atpos($res, 2) == nqp::chars($src);
        nqp::atpos($res, 0);
    }

    method ints_to_string($ints) {
        if nqp::islist($ints) {
            my $result := '';
            for $ints {
                $result := $result ~ nqp::chr($_.made);
            }
            $result;
        } else {
            nqp::chr($ints.made);
        }
    }
    
    method CTXSAVE() {
        QAST::Stmts.new(
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('ctxsave'), :scope('local'), :decl('var') ),
                QAST::Var.new( :name('$*CTXSAVE'), :scope('contextual') )
            ),
            QAST::Op.new(
                :op('unless'),
                QAST::Op.new(
                    :op('isnull'),
                    QAST::Var.new( :name('ctxsave'), :scope('local') )
                ),
                QAST::Op.new(
                    :op('if'),
                    QAST::Op.new(
                        :op('can'),
                        QAST::Var.new( :name('ctxsave'), :scope('local') ),
                        QAST::SVal.new( :value('ctxsave') )
                    ),
                    QAST::Op.new(
                        :op('callmethod'), :name('ctxsave'),
                        QAST::Var.new( :name('ctxsave'), :scope('local')
                    )))))
    }
   
    method SET_BLOCK_OUTER_CTX($block) {
        my $outer_ctx := %*COMPILING<%?OPTIONS><outer_ctx>;
        if nqp::defined($outer_ctx) {
            until nqp::isnull($outer_ctx) {
                my $pad := nqp::ctxlexpad($outer_ctx);
                unless nqp::isnull($pad) {
                    for $pad {
                        my str $key := ~$_;
                        unless $block.symbol($key) {
                            my $lextype := nqp::lexprimspec($pad, $key);
                            # obj
                            if $lextype == 0 {
                                $block.symbol($key, :scope<lexical>, :lazy_value_from($pad));
                            }
                            # int
                            elsif $lextype == 1 {
                                $block.symbol($key, :scope<lexical>, :value(nqp::atkey_i($pad, $key)), :type(int));
                            }
                            # num
                            elsif $lextype == 2 {
                                $block.symbol($key, :scope<lexical>, :value(nqp::atkey_n($pad, $key)), :type(num));
                            }
                            # str
                            elsif $lextype == 3 {
                                $block.symbol($key, :scope<lexical>, :value(nqp::atkey_s($pad, $key)), :type(str));
                            }
                            # int8
                            elsif $lextype == 4 {
                                $block.symbol($key, :scope<lexical>, :value(nqp::atkey_i($pad, $key)), :type(int8));
                            }
                            # int16
                            elsif $lextype == 5 {
                                $block.symbol($key, :scope<lexical>, :value(nqp::atkey_i($pad, $key)), :type(int16));
                            }
                            # int32
                            elsif $lextype == 6 {
                                $block.symbol($key, :scope<lexical>, :value(nqp::atkey_i($pad, $key)), :type(int32));
                            }
#?if moar
                            # uint8
                            elsif $lextype == 7 {
                                $block.symbol($key, :scope<lexical>, :value(nqp::atkey_u($pad, $key)), :type(uint8));
                            }
                            # uint16
                            elsif $lextype == 8 {
                                $block.symbol($key, :scope<lexical>, :value(nqp::atkey_u($pad, $key)), :type(uint16));
                            }
                            # uint32
                            elsif $lextype == 9 {
                                $block.symbol($key, :scope<lexical>, :value(nqp::atkey_u($pad, $key)), :type(uint32));
                            }
                            # uint64
                            elsif $lextype == 10 {
                                $block.symbol($key, :scope<lexical>, :value(nqp::atkey_u($pad, $key)), :type(uint64));
                            }
#?endif
                            else {
                                die("Unhandled lexical type")
                            }
                        }
                    }
                }
                $outer_ctx := nqp::ctxouter($outer_ctx);
            }
        }
    }

    method O($/) {
        make %*SPEC;
    }

    method EXPR($/, $key?) {
        unless $key { return 0; }
        my $ast := $/.ast // $<OPER>.ast;
        unless $ast {
            $ast := QAST::Op.new( :node($/) );
            if $<OPER><O>.made<op> {
                $ast.op( ~$<OPER><O>.made<op> );
            }
            if $key eq 'LIST' { $key := 'infix'; }
            my $name := nqp::lc($key) ~ ':' ~ ($<OPER><sym> ~~ /<[ < > ]>/ ?? '«' ~ $<OPER><sym> ~ '»' !! '<' ~ $<OPER><sym> ~ '>');
            $ast.name('&' ~ $name);
            unless $ast.op {
                $ast.op('call');
            }
        }
        if $key eq 'POSTFIX' {
            $ast.unshift($/[0].ast);
        }
        else {
            for $/.list { if nqp::defined($_.ast) { $ast.push($_.ast); } }
        }
        make $ast;
    }

    method term:sym<circumfix>($/) { make $<circumfix>.made }

    method termish($/) { make $<term>.made; }
    method nullterm($/) { make NQPMu; }
    method nullterm_alt($/) { make $<term>.made; }

    method integer($/) { make $<VALUE>.made; }

    method dec_number($/) { make +$/; }

    method decint($/) { make self.string_to_int( $/, 10); }
    method hexint($/) { make self.string_to_int( $/, 16); }
    method octint($/) { make self.string_to_int( $/, 8 ); }
    method binint($/) { make self.string_to_int( $/, 2 ); }

    method quote_EXPR($/) {
        my $ast := $<quote_delimited>.ast;
        if %*QUOTEMOD<w> {
            if nqp::istype($ast, QAST::SVal) {
                my @words := HLL::Grammar::split_words($/, $ast.value);
                if +@words != 1 {
                    $ast := QAST::Op.new( :op('list'), :node($/) );
                    for @words { $ast.push(QAST::SVal.new( :value($_) )); }
                }
                else {
                    $ast := QAST::SVal.new( :value(~@words[0]) );
                }
            }
            else {
                $/.panic("Can't form :w list from non-constant strings (yet)");
            }
        }
        make $ast;
    }

    method quote_delimited($/) {
        my @parts;
        my $lastlit := '';
        for $<quote_atom> {
            my $ast := $_.ast;
            if !nqp::istype($ast, QAST::Node) {
                $lastlit := $lastlit ~ $ast;
            }
            elsif nqp::istype($ast, QAST::SVal) {
                $lastlit := $lastlit ~ $ast.value;
            }
            else {
                if $lastlit gt '' {
                    @parts.push(QAST::SVal.new( :value($lastlit) ));
                }
                @parts.push(nqp::istype($ast, QAST::Node)
                    ?? $ast
                    !! QAST::SVal.new( :value($ast) ));
                $lastlit := '';
            }
        }
        if $lastlit gt '' { @parts.push(QAST::SVal.new( :value($lastlit) )); }
        my $ast := @parts ?? @parts.shift !! QAST::SVal.new( :value('') );
        while @parts {
            $ast := QAST::Op.new( $ast, @parts.shift, :op('concat') );
        }
        make $ast;
    }

    method quote_atom($/) {
        make $<quote_escape> ?? $<quote_escape>.made !! ~$/;
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
        make $<charspec>.made;
    }

    method quote_escape:sym<0>($/) {
        make "\c[0]";
    }

    method quote_escape:sym<misc>($/) {
        make $<textq> ?? '\\' ~ $<textq>.Str !! $<textqq>.Str;
    }

    method charname($/) {
        my $codepoint := $<integer>
                         ?? nqp::chr($<integer>.made)
                         !! nqp::strfromname(~$/);
        $/.panic("Unrecognized character name '$/'") if $codepoint eq '';
        make $codepoint;
    }

    method charnames($/) {
        my $str := '';
        for $<charname> { $str := $str ~ $_.made; }
        make $str;
    }

    method charspec($/) {
        make $<charnames>
             ?? $<charnames>.made
             !! nqp::chr($<control>
                         ?? nqp::ord($<control>) +^ 64
                         !! self.string_to_int( $/, 10 )
                        );
    }

    method comment:sym<line_directive>($/) {
        my $orig_line := HLL::Compiler.lineof($/.orig(), $/.from(), :cache(1), :directives(0));
        $*W.add_comp_line_directive([$orig_line, nqp::radix(10, $<line>, 0, 0)[0], $<filename>]);
    }
}
