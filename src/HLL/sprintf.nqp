my module sprintf {
    my @handlers;
    my $assert_used_args;

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
        token directive:sym<b> { '%' <idx>? <flags>* <size>? [ '.' <precision=.size> ]? $<sym>=<[bB]> }
        token directive:sym<c> { '%' <idx>? <flags>* <size>? <sym> }
        token directive:sym<d> { '%' <idx>? <flags>* <size>? [ '.' <precision=.size> ]? $<sym>=<[di]> }
        token directive:sym<e> { '%' <idx>? <flags>* <size>? [ '.' <precision=.size> ]? $<sym>=<[eE]> }
        token directive:sym<f> { '%' <idx>? <flags>* <size>? [ '.' <precision=.size> ]? $<sym>=<[fF]> }
        token directive:sym<g> { '%' <idx>? <flags>* <size>? [ '.' <precision=.size> ]? $<sym>=<[gG]> }
        token directive:sym<o> { '%' <idx>? <flags>* <size>? [ '.' <precision=.size> ]? <sym> }
        token directive:sym<s> { '%' <idx>? <flags>* <size>? [ '.' <precision=.size> ]? <sym> }
        token directive:sym<u> { '%' <idx>? <flags>* <size>? <sym> }
        token directive:sym<x> { '%' <idx>? <flags>* <size>? [ '.' <precision=.size> ]? $<sym>=<[xX]> }

        proto token escape { <...> }
        token escape:sym<%> { '%' <flags>* <size>? <sym> }
        
        token literal { <-[%]>+ }
        
        token idx {
            $<param_index>=[\d+] '$'
        }
        
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
        my $knowhow := nqp::knowhow().new_type(:repr("P6bigint"));
        my $zero    := nqp::box_i(0, $knowhow);
        method TOP($/) {
            my @statements;
            @statements.push( $_.made ) for $<statement>;

            if $assert_used_args && $*ARGS_USED < +@*ARGS_HAVE {
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
            my int $i := 0;
            @strings.push($s) while $i++ < $n;
            nqp::join('', @strings);
        }

        sub next_argument($/) {
            if $<idx> {
                $assert_used_args := 0;
                @*ARGS_HAVE[$<idx>.made]
            }
            else {
                @*ARGS_HAVE[$*ARGS_USED++]
            }
        }

        sub intify($number_representation) {
            for @handlers -> $handler {
                if $handler.mine($number_representation) {
                    return $handler.int($number_representation);
                }
            }

            if nqp::isint($number_representation) {
                nqp::box_i($number_representation, $knowhow);
            } else {
                if nqp::isnum($number_representation)
                || nqp::isstr($number_representation) {
                    if $number_representation > 0 {
                        nqp::fromnum_I(nqp::floor_n($number_representation), $knowhow);
                    }
                    else {
                        nqp::fromnum_I(nqp::ceil_n($number_representation), $knowhow);
                    }
                } else {
                    $number_representation;
                }
            }
        }

        sub padding_char($st) {
            my $padding_char := ' ';
            if (!$st<precision> && !has_flag($st, 'minus'))
            || $st<sym> ~~ /<[eEfFgG]>/ {
                $padding_char := '0' if $_<zero> for $st<flags>;
            }
            $padding_char
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
            @pieces.push: infix_x(padding_char($st), $st<size>.made - nqp::chars($st.made)) if $st<size>;
            has_flag($st, 'minus')
                ?? @pieces.unshift: $st.made
                !! @pieces.push:    $st.made;
            make join('', @pieces)
        }

        method directive:sym<b>($/) {
            my $int := intify(next_argument($/));
            $int := nqp::base_I($int, 2);
            my $pre := ($<sym> eq 'b' ?? '0b' !! '0B') if $int && has_flag($/, 'hash');
            if nqp::chars($<precision>) {
                $int := '' if $<precision>.made == 0 && $int == 0;
                $int := $pre ~ infix_x('0', $<precision>.made - nqp::chars($int)) ~ $int;
            }
            else {
                $int := $pre ~ $int
            }
            make $int;
        }
        method directive:sym<c>($/) {
            make nqp::chr(next_argument($/))
        }

        method directive:sym<d>($/) {
            my $int := intify(next_argument($/));
            my $pad := padding_char($/);
            my $sign := nqp::islt_I($int, $zero) ?? '-'
                     !! has_flag($/, 'plus') ?? '+' 
                     !! has_flag($/, 'space') ?? ' ' 
                     !! '';
            $int := nqp::tostr_I(nqp::abs_I($int, $knowhow));
            $int := nqp::substr($int, 0, $<precision>.made) if nqp::chars($<precision>);
            if $pad ne ' ' && $<size> {
                $int := $sign ~ infix_x($pad, $<size>.made - nqp::chars($int) - 1) ~ $int;
            }
            else {
                $int := $sign ~ $int;
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
            my @number := nqp::split('.', $float);
            my $lhs_s := @number[0];
            my $rhs_s := @number[1];

            my $d := nqp::chars($rhs_s);      # digits after decimal

            my $zeroes := infix_x("0", 1 + ($precision > $d ?? $precision - $d  !! 0));

            $lhs_s := nqp::substr($lhs_s, 1) if nqp::substr($lhs_s, 0, 1) eq '-';
            my $lhs_I := nqp::fromstr_I($lhs_s, $knowhow);
            my $rhs_I := nqp::fromstr_I("1" ~ $rhs_s ~ $zeroes, $knowhow);      # to preserve leading zeroes
            my $cc := nqp::chars(nqp::tostr_I($rhs_I));

            my $e := nqp::fromnum_I($d > $precision ?? $d - $precision !! 0, $knowhow);
            my $pot := nqp::pow_I(nqp::fromnum_I(10, $knowhow), $e, $knowhow, $knowhow);   # power of ten
            my $rounder := nqp::mul_I(nqp::fromnum_I(5, $knowhow), $pot, $knowhow);          

            $rhs_I := nqp::add_I($rhs_I, $rounder, $knowhow);
            $rhs_s := nqp::tostr_I($rhs_I);

            $lhs_I := nqp::add_I($lhs_I, nqp::fromnum_I(1,$knowhow), $knowhow) 
                if nqp::substr($rhs_s,0,1) ne '1';          # we had a carry

            $lhs_s := nqp::tostr_I($lhs_I);
            $rhs_s := nqp::substr($rhs_s,1,$precision);     # skip the leading char we added.

            my $return := $lhs_s;
            $return := $return ~ "." ~ $rhs_s if $rhs_s ne "";
            $return;
        }

        sub stringify-to-precision2($float, $precision) {
            my $exp := $float == 0.0 ?? 0 !! nqp::floor_n(nqp::log_n($float) / nqp::log_n(10));
            $float := nqp::abs_n($float) * nqp::pow_n(10, $precision - ($exp + 1)) + 0.5;
            $float := nqp::floor_n($float);
            $float := $float / nqp::pow_n(10, $precision - ($exp + 1));
#?if jvm
            if $exp == -4 {
                $float := stringify-to-precision($float, $precision + 3);
                $float := nqp::substr($float, 0, nqp::chars($float) - 1) if nqp::chars($float) > 1 && $float ~~ /\.\d**4 0+$/;
                $float := nqp::substr($float, 0, nqp::chars($float) - 1) if nqp::chars($float) > 1 && $float ~~ /\.\d**4 0+$/;
            }
            $float
#?endif
        }
        sub fixed-point($float, $precision, $size, $pad, $/) {
            my $sign := $float < 0 ?? '-' 
                     !! has_flag($/, 'plus') ?? '+' 
                     !! has_flag($/, 'space') ?? ' ' 
                     !! '';
            $float := stringify-to-precision($float, $precision);
            pad-with-sign($sign, $float, $size, $pad);
        }
        sub scientific($float, $e, $precision, $size, $pad, $/) {
            my $sign := $float < 0 ?? '-' 
                     !! has_flag($/, 'plus') ?? '+' 
                     !! has_flag($/, 'space') ?? ' ' 
                     !! '';
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
        sub shortest($float, $e, $precision, $size, $pad, $/) {
            my $sign := $float < 0 ?? '-' 
                     !! has_flag($/, 'plus') ?? '+' 
                     !! has_flag($/, 'space') ?? ' ' 
                     !! '';
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
            my $float := next_argument($/);
            my $precision := $<precision> ?? $<precision>.made !! 6;
            my $pad := padding_char($/);
            my $size := $<size> ?? $<size>.made !! 0;
            make scientific($float, $<sym>, $precision, $size, $pad, $/);
        }
        method directive:sym<f>($/) {
            my $int := next_argument($/);
            my $precision := $<precision> ?? $<precision>.made !! 6;
            my $pad := padding_char($/);
            my $size := $<size> ?? $<size>.made !! 0;
            make fixed-point($int, $precision, $size, $pad, $/);
        }
        method directive:sym<g>($/) {
            my $float := next_argument($/);
            my $precision := $<precision> ?? $<precision>.made !! 6;
            my $pad := padding_char($/);
            my $size := $<size> ?? $<size>.made !! 0;
            make shortest($float, $<sym> eq 'G' ?? 'E' !! 'e', $precision, $size, $pad, $/);
        }
        method directive:sym<o>($/) {
            my $int := intify(next_argument($/));
            $int := nqp::base_I($int, 8);
            my $pre := '0' if $int && has_flag($/, 'hash');
            if nqp::chars($<precision>) {
                $int := '' if $<precision>.made == 0 && $int == 0;
                $int := $pre ~ infix_x('0', intify($<precision>.made) - nqp::chars($int)) ~ $int;
            }
            else {
                $int := $pre ~ $int
            }
            make $int
        }

        method directive:sym<s>($/) {
            my $string := next_argument($/);
            if nqp::chars($<precision>) && nqp::chars($string) > $<precision>.made {
                $string := nqp::substr($string, 0, $<precision>.made);
            }
            make $string
        }
        # XXX: Should we emulate an upper limit, like 2**64?
        # XXX: Should we emulate p5 behaviour for negative values passed to %u ?
        method directive:sym<u>($/) {
            my $int := intify(next_argument($/));
            if nqp::islt_I($int, $zero) {
                    my $err := nqp::getstderr();
                    nqp::printfh($err, "negative value '" 
                                    ~ $int
                                    ~ "' for %u in sprintf");
                    $int := 0;
            }

            # Go through tostr_I to avoid scientific notation.
            make nqp::tostr_I($int)
        }
        method directive:sym<x>($/) {
            my $int := intify(next_argument($/));
            $int := nqp::base_I($int, 16);
            my $pre := '0X' if $int && has_flag($/, 'hash');
            if nqp::chars($<precision>) {
                $int := '' if $<precision>.made == 0 && $int == 0;
                $int := $pre ~ infix_x('0', $<precision>.made - nqp::chars($int)) ~ $int;
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

        method idx($/) {
            my $index := $<param_index> - 1;
            nqp::die("Parameter index starts to count at 1 but 0 was passed") if $index < 0;
            make $index
        }

        method size($/) {
            make $<star> ?? next_argument({}) !! ~$/
        }
    }

    my $actions := Actions.new();

    sub sprintf($format, @arguments) {
        my @*ARGS_HAVE := @arguments;
        $assert_used_args := 1;
        return Syntax.parse( $format, :actions($actions) ).made;
    }

    nqp::bindcurhllsym('sprintf', &sprintf);

    class Directives {
        method TOP($/) {
            my $count := 0;
            $count := nqp::add_i($count, $_.made) for $<statement>;
            make $count
        }

        method statement($/) {
            make $<directive> && !$<directive><idx> ?? 1 !! 0
        }
    }
    
    my $directives := Directives.new();
    
    sub sprintfdirectives($format) {
        return Syntax.parse( $format, :actions($directives) ).made;
    }

    nqp::bindcurhllsym('sprintfdirectives', &sprintfdirectives);

    sub sprintfaddargumenthandler($interface) {
        @handlers.push($interface);
        "Added!"; # return meaningless string
    }

    nqp::bindcurhllsym('sprintfaddargumenthandler', &sprintfaddargumenthandler);

}
