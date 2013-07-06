my module sprintf {
    grammar Syntax {
        token TOP {
            :my $*ARGS_USED := 0;
            ^ <statement>* $
        }
        
        method panic($msg) { nqp::die($msg) }
        
        token statement {
            [
            | <?[%]> [ [ <directive> | <escape> ]
                || <.panic("'" ~ nqp::substr(self.orig,1) ~ "' is not valid in sprintf format sequence '" ~ self.orig ~ "'")> ]
            | <![%]> <literal>
            ]
        }

        proto token directive { <...> }
        token directive:sym<b> { '%' <flags>* <size>? [ '.' <precision=.size> ]? $<sym>=<[bB]> }
        token directive:sym<c> { '%' <flags>* <size>? <sym> }
        token directive:sym<d> { '%' <flags>* <size>? <sym> }
        token directive:sym<o> { '%' <flags>* <size>? [ '.' <precision=.size> ]? <sym> }
        token directive:sym<s> { '%' <flags>* <size>? <sym> }
        token directive:sym<u> { '%' <flags>* <size>? <sym> }
        token directive:sym<x> { '%' <flags>* <size>? [ '.' <precision=.size> ]? $<sym>=<[xX]> }

        proto token escape { <...> }
        token escape:sym<%> { '%' <flags>* <size>? <sym> }
        
        token literal { <-[%]>+ }
        
        token flags {
            | $<space> = ' '
            | $<plus>  = '+'
            | $<minus> = '-'
            | $<zero>  = '0'
            | $<hash>  = '#'
        }
        
        token size {
            \d* | $<star>='*'
        }
    }

    class Actions {
        method TOP($/) {
            my @statements;
            @statements.push( $_.ast ) for $<statement>;

            if $*ARGS_USED < +@*ARGS_HAVE {
                nqp::die("Too few directives: found $*ARGS_USED,"
                ~ " fewer than the " ~ +@*ARGS_HAVE ~ " arguments after the format string")
            }
            if $*ARGS_USED > +@*ARGS_HAVE {
                nqp::die("Too many directives: found $*ARGS_USED, but "
                ~ (+@*ARGS_HAVE > 0 ?? "only " ~ +@*ARGS_HAVE !! "no")
                ~ " arguments after the format string")
            }
            make nqp::join('', @statements);
        }

        sub infix_x($s, $n) {
            my @strings;
            my $i := 0;
            @strings.push($s) while $i++ < $n;
            nqp::join('', @strings);
        }

        sub next_argument() {
            @*ARGS_HAVE[$*ARGS_USED++]
        }

        sub intify($number_representation) {
            my $result;
            if $number_representation > 0 {
                $result := nqp::floor_n($number_representation);
            }
            else {
                $result := nqp::ceil_n($number_representation);
            }
            $result;
        }

        sub padding_char($st) {
            my $padding_char := ' ';
            unless $st<precision> || has_flag($st, 'minus') {
                $padding_char := '0' if $_<zero> for $st<flags>;
            }
            make $padding_char
        }

        sub has_flag($st, $key) {
            my $ok := 0;
            if $st<flags> {
                $ok := 1 if $_{$key} for $st<flags>
            }
            $ok
        }

        method statement($/){
            my $st;
            if $<directive> { $st := $<directive> }
            elsif $<escape> { $st := $<escape> }
            else { $st := $<literal> }
            my @pieces;
            @pieces.push: infix_x(padding_char($st), $st<size>.ast - nqp::chars($st.ast)) if $st<size>;
            has_flag($st, 'minus')
                ?? @pieces.unshift: $st.ast
                !! @pieces.push:    $st.ast;
            make nqp::join('', @pieces)
        }

        method directive:sym<b>($/) {
            my $int := intify(next_argument());
            my $knowhow := nqp::knowhow().new_type(:repr("P6bigint"));
            $int := nqp::base_I(nqp::box_i($int, $knowhow), 2);
            my $pre := ($<sym> eq 'b' ?? '0b' !! '0B') if $int && has_flag($/, 'hash');
            if nqp::chars($<precision>) {
                $int := '' if $<precision>.ast == 0 && $int == 0;
                $int := $pre ~ infix_x('0', intify($<precision>.ast) - nqp::chars($int)) ~ $int;
            }
            else {
                $int := $pre ~ $int
            }
            make $int;
        }
        method directive:sym<c>($/) {
            make nqp::chr(next_argument())
        }
        method directive:sym<d>($/) {
            my $int := intify(next_argument());
            if $<size> {
                my $sign := $int < 0 ?? '-' !! '';
                $int := nqp::abs_i($int);
                $int := $sign ~ infix_x(padding_char($/), $<size>.ast - nqp::chars($int) - 1) ~ $int
            }
            make $int
        }
        method directive:sym<o>($/) {
            my $int := intify(next_argument());
            my $knowhow := nqp::knowhow().new_type(:repr("P6bigint"));
            $int := nqp::base_I(nqp::box_i($int, $knowhow), 8);
            my $pre := '0' if $int && has_flag($/, 'hash');
            if nqp::chars($<precision>) {
                $int := '' if $<precision>.ast == 0 && $int == 0;
                $int := $pre ~ infix_x('0', intify($<precision>.ast) - nqp::chars($int)) ~ $int;
            }
            else {
                $int := $pre ~ $int
            }
            make $int
        }

        method directive:sym<s>($/) {
            make next_argument()
        }
        # XXX: Should we emulate an upper limit, like 2**64?
        # XXX: Should we emulate p5 behaviour for negative values passed to %u ?
        method directive:sym<u>($/) {
            my $int := intify(next_argument());
            my $knowhow := nqp::knowhow().new_type(:repr("P6bigint"));
            if $int < 0 {
                    my $err := nqp::getstderr();
                    nqp::printfh($err, "negative value '" 
                                    ~ $int
                                    ~ "' for %u in sprintf");
                    $int := 0;
            }

            my $chars := nqp::chars($int);

            # Go throught tostr_I to avoid scientific notation.
            $int := nqp::box_i($int, $knowhow);
            make nqp::tostr_I($int)
        }
        method directive:sym<x>($/) {
            my $int := intify(next_argument());
            my $knowhow := nqp::knowhow().new_type(:repr("P6bigint"));
            $int := nqp::base_I(nqp::box_i($int, $knowhow), 16);
            my $pre := '0X' if $int && has_flag($/, 'hash');
            if nqp::chars($<precision>) {
                $int := '' if $<precision>.ast == 0 && $int == 0;
                $int := $pre ~ infix_x('0', intify($<precision>.ast) - nqp::chars($int)) ~ $int;
            }
            else {
                $int := $pre ~ $int
            }
            make $<sym> eq 'x' ?? nqp::lc($int) !! $int
        }

        method escape:sym<%>($/) {
            make '%'
        }

        method literal($/) {
            make ~$/
        }

        method size($/) {
            make $<star> ?? next_argument() !! ~$/
        }
    }

    my $actions := Actions.new();

    sub sprintf($format, *@arguments) {
        my @*ARGS_HAVE := @arguments;
        return Syntax.parse( $format, :actions($actions) ).ast;
    }

    nqp::bindcurhllsym('sprintf', &sprintf);
}
