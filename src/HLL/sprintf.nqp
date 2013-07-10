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
        token directive:sym<d> { '%' <flags>* <size>? $<sym>=<[di]> }
        token directive:sym<e> { '%' <flags>* <size>? [ '.' <precision=.size> ]? $<sym>=<[eE]> }
        token directive:sym<f> { '%' <flags>* <size>? [ '.' <precision=.size> ]? $<sym>=<[fF]> }
        token directive:sym<g> { '%' <flags>* <size>? [ '.' <precision=.size> ]? $<sym>=<[gG]> }
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
            if (!$st<precision> && !has_flag($st, 'minus'))
            || $st<sym> ~~ /<[eEfFgG]>/ {
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
            make join('', @pieces)
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
            my $pad := padding_char($/);
            my $sign := $int < 0 ?? '-'
                !! has_flag($/, 'plus')
                    ?? '+' !! '';
            if $pad ne ' ' && $<size> {
                $int := nqp::abs_i($int);
                $int := $sign ~ infix_x($pad, $<size>.ast - nqp::chars($int) - 1) ~ $int
            }
            else {
                $int := $sign ~ nqp::abs_i($int)
            }
            make $int
        }

        sub pad-with-sign($sign, $num, $size, $pad) {
            if $pad ne ' ' && $size {
                $sign ~ infix_x($pad, $size - nqp::chars($num) - 1) ~ $num;
            } else {
                $sign ~ $num;
            }
        }
        sub stringify-to-precision($float, $precision) {
            $float := nqp::abs_n($float);
            my $lhs := nqp::floor_n($float);
            my $rhs := $float - $lhs;

            my $knowhow := nqp::knowhow().new_type(:repr("P6bigint"));
            my $int := nqp::fromnum_I($lhs, $knowhow);
            $lhs := nqp::tostr_I($int);

            $float := $rhs + 1;
            $float := $float * nqp::pow_n(10, $precision);
            $float := ~nqp::floor_n($float + 0.5);
            $float := $float - nqp::pow_n(10, $precision);

            $rhs := infix_x('0', $precision - nqp::chars($float)) ~ $float;
            $rhs := nqp::substr($rhs, nqp::chars($rhs) - $precision);

            $lhs ~ '.' ~ $rhs;
        }
        sub stringify-to-precision2($float, $precision) {
            my $exp := $float == 0.0 ?? 0 !! nqp::floor_n(nqp::log_n($float) / nqp::log_n(10));
            $float := nqp::abs_n($float) * nqp::pow_n(10, $precision - ($exp + 1)) + 0.5;
            $float := nqp::floor_n($float);
            $float := $float / nqp::pow_n(10, $precision - ($exp + 1));
            $exp == -4 ?? stringify-to-precision($float, $precision + 3) !! $float;
        }
        sub fixed-point($float, $precision, $size, $pad) {
            my $sign := $float < 0 ?? '-' !! '';
            $float := stringify-to-precision(nqp::abs_n($float), $precision);
            pad-with-sign($sign, $float, $size, $pad);
        }
        sub scientific($float, $e, $precision, $size, $pad) {
            my $sign := $float < 0 ?? '-' !! '';
            $float := nqp::abs_n($float);
            my $exp := $float == 0.0 ?? 0 !! nqp::floor_n(nqp::log_n($float) / nqp::log_n(10));
            $float := $float / nqp::pow_n(10, $exp);
            $float := stringify-to-precision($float, $precision);
            if $exp < 0 {
                $exp := -$exp;
                $float := $float ~ $e ~ '-' ~ ($exp < 10 ?? '0' !! '') ~ $exp;
            } else {
                $float := $float ~ $e ~ '+' ~ ($exp < 10 ?? '0' !! '') ~ $exp;
            }
            pad-with-sign($sign, $float, $size, $pad);
        }
        sub shortest($float, $e, $precision, $size, $pad) {
            my $sign := $float < 0 ?? '-' !! '';
            $float := nqp::abs_n($float);

            my $exp := $float == 0.0 ?? 0 !! nqp::floor_n(nqp::log_n($float) / nqp::log_n(10));

            if -2 - $precision < $exp && $exp < $precision {
                my $fixed-precision := $exp > $precision ?? 0 !! $precision - ($exp + 1);
                my $fixed := stringify-to-precision2($float, $precision);
                pad-with-sign($sign, $fixed, $size, $pad);
            } else {
                $float := $float / nqp::pow_n(10, $exp);
                $float := stringify-to-precision2($float, $precision);
                my $sci;
                if $exp < 0 {
                    $exp := -$exp;
                    $sci := $float ~ $e ~ '-' ~ ($exp < 10 ?? '0' !! '') ~ $exp;
                } else {
                    $sci := $float ~ $e ~ '+' ~ ($exp < 10 ?? '0' !! '') ~ $exp;
                }
                
                pad-with-sign($sign, $sci, $size, $pad);
            }
        }

        method directive:sym<e>($/) {
            my $float := next_argument();
            my $precision := $<precision> ?? $<precision>.ast !! 6;
            my $pad := padding_char($/);
            my $size := $<size> ?? $<size>.ast !! 0;
            make scientific($float, $<sym>, $precision, $size, $pad);
        }
        method directive:sym<f>($/) {
            my $int := next_argument();
            my $precision := $<precision> ?? $<precision>.ast !! 6;
            my $pad := padding_char($/);
            my $size := $<size> ?? $<size>.ast !! 0;
            make fixed-point($int, $precision, $size, $pad);
        }
        method directive:sym<g>($/) {
            my $float := next_argument();
            my $precision := $<precision> ?? $<precision>.ast !! 6;
            my $pad := padding_char($/);
            my $size := $<size> ?? $<size>.ast !! 0;
            make shortest($float, $<sym> eq 'G' ?? 'E' !! 'e', $precision, $size, $pad);
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

    sub sprintf($format, @arguments) {
        my @*ARGS_HAVE := @arguments;
        return Syntax.parse( $format, :actions($actions) ).ast;
    }

    nqp::bindcurhllsym('sprintf', &sprintf);
}
