my module sprintf {
    my @handlers;
    my $assert_used_args;

    grammar Syntax {
        token TOP {
            :my $*ARGS_USED := 0;
            ^ <statement>* $
        }

        method panic($message, $payload) {
            my $ex := nqp::newexception();
            nqp::setmessage($ex, $message);
            nqp::setpayload($ex, $payload);
            nqp::throw($ex);
        }

        token statement {
            [
            | <?[%]> [ [ <directive> | <escape> ]
                || <.panic("'" ~ nqp::substr(self.orig,1) ~ "' is not valid in sprintf format sequence '" ~ self.orig ~ "'", nqp::hash('BAD_DIRECTIVE', nqp::hash('DIRECTIVE', nqp::substr(self.orig, 1), 'SEQUENCE', self.orig)))> ]
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

            if ($assert_used_args && $*ARGS_USED < +@*ARGS_HAVE) || ($*ARGS_USED > +@*ARGS_HAVE) {
                panic("Your printf-style directives specify "
                    ~ ($*ARGS_USED == 1 ?? "1 argument, but "
                                        !! "$*ARGS_USED arguments, but ")
                    ~ (+@*ARGS_HAVE < 1      ?? "no argument was"
                        !! +@*ARGS_HAVE == 1 ?? "1 argument was"
                                             !! +@*ARGS_HAVE ~ " arguments were")
                    ~ " supplied", nqp::hash('DIRECTIVES_COUNT',
                            nqp::hash('ARGS_HAVE', +@*ARGS_HAVE, 'ARGS_USED', $*ARGS_USED)))
            }
            make nqp::join('', @statements);
        }

        sub panic($message, $payload) {
            my $ex := nqp::newexception();
            nqp::setmessage($ex, $message);
            nqp::setpayload($ex, $payload);
            nqp::throw($ex);
        }

        sub bad-type-for-directive($type, $directive, $value) {
            my $message := "Directive $directive not applicable for value of type " ~
                $type.HOW.name($type);
            my $payload := nqp::hash('BAD_TYPE_FOR_DIRECTIVE',
                nqp::hash('TYPE', $type.HOW.name($type), 'DIRECTIVE', $directive, 'VALUE', $value));
            panic($message, $payload);
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

        sub floatify($n) {
            unless $n =:= NQPMu {
                for @handlers {
                    return $_.float: $n if $_.mine: $n;
                }
            }
            $n
        }

        sub intify($number_representation) {
            if $number_representation =:= NQPMu {
                return $zero;   ## missing argument is handled in method TOP
            }
            for @handlers -> $handler {
                if $handler.mine($number_representation) {
                    return $handler.int($number_representation);
                }
            }

            if nqp::isint($number_representation) {
                nqp::box_i($number_representation, $knowhow);
            } else {
                if nqp::isstr($number_representation) {
                    $number_representation := nqp::numify($number_representation);
                }
                if nqp::isnum($number_representation) {
                    if nqp::isgt_n($number_representation, 0.0) {
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
            if !$st<precision> && !is_minus($st)
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

        sub is_minus($st) {
            has_flag($st, 'minus') || $st<size> && $st<size>.made < 0
        }

        method statement($/){
            my $st;
            if $<directive> { $st := $<directive> }
            elsif $<escape> { $st := $<escape> }
            else { $st := $<literal> }
            my @pieces;
            # Adds padding chars on in certain cases
            @pieces.push: infix_x(padding_char($st), nqp::abs_i($st<size>.made) - nqp::chars($st.made))
                if $st<size>;
            is_minus($st)
                ?? @pieces.unshift: $st.made
                !! @pieces.push:    $st.made;
            make join('', @pieces)
        }

        method directive:sym<b>($/) {
            my $next := next_argument($/);
            CATCH {
                bad-type-for-directive($next, 'b', @*ARGS_HAVE);
            }
            my $int := intify($next);
            my $pad := padding_char($/);
            my $sign := nqp::islt_I($int, $zero) ?? '-'
                     !! has_flag($/, 'plus') ?? '+'
                     !! has_flag($/, 'space') ?? ' '
                     !! '';
            my $b := nqp::base_I(nqp::abs_I($int, $knowhow), 2);
            my $size := $<size> ?? $<size>.made !! 0;
            my $pre := '';
            $pre := ($<sym> eq 'b' ?? '0b' !! '0B') if $b ne '0' && has_flag($/, 'hash');
            if nqp::chars($<precision>) {
                $b := ($<precision>.made == 0 && +$b == 0) ?? ''
                     !! $sign ~ $pre ~ infix_x('0', $<precision>.made - nqp::chars($b)) ~ $b;
            }
            else {
                if $pad ne ' ' && $size {
                    my $chars_sign_pre := $sign ?? nqp::chars($pre) + 1 !! nqp::chars($pre);
                    $b := $sign ~ $pre ~ infix_x($pad, $size - $chars_sign_pre - nqp::chars($b)) ~ $b;
                } else {
                    $b := $sign ~ $pre ~ $b;
                }
            }
            make $b;
        }

        method directive:sym<c>($/) {
            my $next := next_argument($/);
            CATCH {
                bad-type-for-directive($next, 'c', @*ARGS_HAVE);
            }
            make nqp::chr(intify($next))
        }

        method directive:sym<d>($/) {
            my $next := next_argument($/);
            CATCH {
                bad-type-for-directive($next, 'd', @*ARGS_HAVE);
            }
            my $int := intify($next);
            my $pad := padding_char($/);
            my $sign := nqp::islt_I($int, $zero) ?? '-'
                     !! has_flag($/, 'plus') ?? '+'
                     !! has_flag($/, 'space') ?? ' '
                     !! '';
            my $d := nqp::tostr_I(nqp::abs_I($int, $knowhow));

            # For `d`, precision is how many digits long the number should be,
            # prefixing it with zeros, as needed. If precision is zero and
            # our number is zero, then the result is an empty string.
            if nqp::chars($<precision>) {
                if my $prec := +$<precision>.made {
                    if (my $rep := $prec - nqp::chars($int)) > 0 {
                        $d := infix_x('0', $rep) ~ $d;
                    }
                }
                else {
                    $d := '' if $int == 0;
                }
            }

            if $pad ne ' ' && $<size> {
                $d := $sign ~ infix_x($pad, $<size>.made - nqp::chars($d) - 1) ~ $d;
            }
            else {
                $d := $sign ~ $d;
            }
            make $d
        }

        sub pad-with-sign($sign, $num, $size, $pad) {
            if $pad ne ' ' && $size {
                $sign ~ infix_x($pad, $size - nqp::chars($num) - 1) ~ $num;
            } else {
                $sign ~ $num;
            }
        }

        sub normalize(num $float) {
            my @parts := nqp::split('e', nqp::lc($float));
            my $sign := '';
            if nqp::eqat(@parts[0], '-', 0) {
                $sign := '-';
                @parts[0] := nqp::substr(@parts[0], 1);
            }

            my @num := nqp::split('.', @parts[0]);
            my $radix-point := nqp::chars(@num[0]);

            my $new-radix-point := $radix-point + @parts[1];

            my $num := @num[0] ~ @num[1];
            my $n := nqp::chars($num);
            if $new-radix-point > $n {
                $num := $num ~ infix_x('0', $new-radix-point - $n);
            } elsif $new-radix-point < 0 {
                $num := "0." ~ infix_x('0', nqp::abs_n($new-radix-point)) ~ $num;
            } else {
                $num := nqp::substr($num,0,$new-radix-point) ~ '.' ~ nqp::substr($num,$new-radix-point);
            }
            $sign ~ $num;
        }

        sub stringify-to-precision(num $float, $precision) {
            my $float_str := ~$float;
            $float_str := normalize($float)
                if nqp::index($float_str, "e") || nqp::index($float_str, "E");

            my @number := nqp::split('.', $float_str);
            my $lhs_s := @number[0];
            my $rhs_s := @number[1];

            my $d := nqp::chars($rhs_s);      # digits after decimal

            my $zeroes := infix_x("0", 1 + ($precision > $d ?? $precision - $d  !! 0));

            $lhs_s := nqp::substr($lhs_s, 1) if nqp::eqat($lhs_s, '-', 0);
            my $lhs_I := nqp::fromstr_I($lhs_s, $knowhow);
            my $rhs_I := nqp::fromstr_I("1" ~ $rhs_s ~ $zeroes, $knowhow);      # The leading 1 is to preserve leading zeroes
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

        # Initialisers for a lookup table to calculate 10.0 ** $i accurately.
        # See tools/generate-sprintf-pow10-table.raku
        my @offset := [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15,
                       15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15,
                       15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 14, 14,
                       15, 15, 13, 15, 14, 15, 15, 15, 14, 15, 15, 15, 13, 14,
                       15, 15, 15, 15, 14, 14, 15, 15, 15, 15, 15, 15, 14, 15,
                       15, 15, 14, 15, 15, 15, 15, 15, 15, 14, 15, 15, 15, 15,
                       15, 15, 15, 15, 15, 15, 15, 15, 13, 14, 15, 14, 15, 15,
                       15, 15, 15, 15, 15, 15, 15, 15, 15, 13, 14, 15, 15, 15,
                       15, 14, 15, 15, 15, 15, 15, 15, 15, 14, 15, 15, 15, 15,
                       15, 13, 15, 15, 15, 15, 15, 15, 15, 11, 13, 14, 14, 15,
                       15, 13, 15, 15, 15, 13, 15, 15, 15, 15, 15, 15, 15, 15,
                       13, 15, 15, 14, 15, 13, 15, 15, 15, 15, 15, 14, 15, 15,
                       12, 15, 14, 15, 15, 13, 14, 15, 13, 15, 15, 15, 15, 15,
                       15, 12, 15, 15, 14, 15, 15, 15, 15, 15, 15, 14, 14, 15,
                       15, 15, 15, 15, 15, 13, 15, 15, 14, 11, 15, 15, 15, 15,
                       14, 15, 15, 15, 15, 15, 15, 15, 15, 14, 14, 15, 15, 11,
                       15, 15, 14, 15, 14, 15, 15, 15, 15, 13, 15, 15, 15, 14,
                       15, 14, 14, 15, 15, 14, 14, 15, 13, 15, 14, 14, 15, 15,
                       15, 15, 15, 12, 15, 14, 15, 15, 13, 14, 15, 14, 15, 14,
                       15, 15, 15, 14, 15, 14, 14, 15, 15, 15, 15, 15, 15, 15,
                       15, 14, 15, 15, 15, 14, 14, 14, 15, 15, 15, 15, 15, 15,
                       15, 15, 15, 15, 15, 15, 13, 14, 15, 15, 15];

        class Lookup is repr('VMArray') is array_type(uint8) {
        }

        class Nums is repr('VMArray') is array_type(num) {
        }

        # Pack the lookup table into a byte array, and the floating point values
        # into a native num array
        my $pow_hop := Lookup.new;
        my $pow_lookup := Nums.new;

        my $pow := nqp::elems(@offset) - 1;
        while $pow {
            nqp::bindpos_i($pow_hop, $pow, @offset[$pow]);
            $pow := $pow - 1;
        }

        $pow := 16; # 1 + max hop (values in @offset above)
        while $pow {
            $pow := $pow - 1;
            my num $val := nqp::pow_i(10, $pow);
            nqp::bindpos_n($pow_lookup, $pow, $val);
        }

        sub pow10(int $pow) {
            # We don't handle negative powers. Should we throw instead?
            if ($pow < 0) {
                return nqp::nan();
            }
            if ($pow > nqp::elems($pow_hop) - 1) {
                return nqp::inf();
            }

            my $factors := nqp::list();
            my int $i := $pow;
            while 1 {
                my $hop := nqp::atpos_i($pow_hop, $i);
                if (!$hop) {
                    # When we reach a hop of zero that means that we have a list
                    # of factors to multiply together. So do this and return:
                    my num $result := nqp::atpos_n($pow_lookup, $i);
                    while (nqp::elems($factors)) {
                        $result := nqp::mul_n($result, nqp::atpos_n($pow_lookup, nqp::pop($factors)));
            }
                    return $result
                }
                nqp::push($factors, $hop);
                $i := $i - $hop;
            }
        }

        sub stringify-to-precision2(num $float, $precision) {
            my int $exp := nqp::iseq_n($float, 0.0) ?? 0 !! nqp::floor_n(nqp::div_n(nqp::log_n($float), nqp::log_n(10.0)));
            my int $to_the := $precision - ($exp + 1);
            if ($to_the >= 0) {
                my num $ten_to_the := pow10($to_the);
                $float := nqp::add_n(nqp::mul_n(nqp::abs_n($float), $ten_to_the), 0.5);
                $float := nqp::floor_n($float);
                $float := nqp::div_n($float, $ten_to_the);
            }
            else {
                my num $ten_to_the := pow10(-$to_the);
                $float := nqp::add_n(nqp::div_n(nqp::abs_n($float), $ten_to_the), 0.5);
                $float := nqp::floor_n($float);
                $float := nqp::mul_n($float, $ten_to_the);
            }
#?if jvm
            if $exp == -4 {
                my $float_str := stringify-to-precision($float, $precision + 3);
                $float_str := nqp::substr($float_str, 0, nqp::chars($float_str) - 1) if nqp::chars($float_str) > 1 && $float_str ~~ /\.\d**4 0+$/;
                $float_str := nqp::substr($float_str, 0, nqp::chars($float_str) - 1) if nqp::chars($float_str) > 1 && $float_str ~~ /\.\d**4 0+$/;
                $float_str
            }
            else {
                $float
            }
#?endif
        }
        sub fixed-point(num $float, $precision, $size, $pad, $/) {
            # if we have zero; handle its sign: 1/0e0 == +Inf, 1/-0e0 == -Inf
            my $sign := nqp::islt_n($float, 0.0)
                || ( nqp::iseq_n($float, 0.0) && nqp::islt_n(nqp::div_n(1.0, $float), 0.0) )
                ?? '-'
                     !! has_flag($/, 'plus') ?? '+'
                     !! has_flag($/, 'space') ?? ' '
                     !! '';
            $float := nqp::abs_n($float);
            my $float_str := nqp::isnanorinf($float) ?? ~$float !! stringify-to-precision($float, $precision);
            pad-with-sign($sign, $float_str, $size, $pad);
        }
        sub scientific(num $float, $e, $precision, $size, $pad, $/) {
            # if we have zero; handle its sign: 1/0e0 == +Inf, 1/-0e0 == -Inf
            my $sign := nqp::islt_n($float, 0.0)
                || ( nqp::iseq_n($float, 0.0) && nqp::islt_n(nqp::div_n(1.0, $float), 0.0) )
                ?? '-'
                     !! has_flag($/, 'plus') ?? '+'
                     !! has_flag($/, 'space') ?? ' '
                     !! '';
            $float := nqp::abs_n($float);
            my $float_str;
            if nqp::isnanorinf($float) {
                $float_str := ~$float;
            }
            else {
                my int $exp := nqp::iseq_n($float, 0.0) ?? 0 !! nqp::floor_n(nqp::div_n(nqp::log_n($float), nqp::log_n(10.0)));
                if $exp < 0 {
                    $exp := -$exp;
                    $float := nqp::mul_n($float, pow10($exp));
                    $float_str := stringify-to-precision($float, $precision);
                    $float_str := $float_str ~ $e ~ '-' ~ ($exp < 10 ?? '0' !! '') ~ $exp;
                } else {
                    $float := nqp::div_n($float, pow10($exp));
                    $float_str := stringify-to-precision($float, $precision);
                    $float_str := $float_str ~ $e ~ '+' ~ ($exp < 10 ?? '0' !! '') ~ $exp;
                }
            }
            pad-with-sign($sign, $float_str, $size, $pad);
        }
        sub shortest(num $float, $e, $precision, $size, $pad, $/) {
            # if we have zero; handle its sign: 1/0e0 == +Inf, 1/-0e0 == -Inf
            my $sign := nqp::islt_n($float, 0.0)
                || ( nqp::iseq_n($float, 0.0) && nqp::islt_n(nqp::div_n(1.0, $float), 0.0) )
                ?? '-'
                     !! has_flag($/, 'plus') ?? '+'
                     !! has_flag($/, 'space') ?? ' '
                     !! '';
            $float := nqp::abs_n($float);

            return pad-with-sign($sign, ~$float, $size, $pad) if nqp::isnanorinf($float);

            my int $exp := nqp::iseq_n($float, 0.0) ?? 0 !! nqp::floor_n(nqp::div_n(nqp::log_n($float), nqp::log_n(10.0)));

            if (-2 - $precision) < $exp && $exp < $precision {
                my $fixed-precision := $precision - ($exp + 1);
                my $fixed := stringify-to-precision2($float, $precision);
                pad-with-sign($sign, $fixed, $size, $pad);
            } else {
                my $sci;
                if $exp < 0 {
                    $exp := -$exp;
                    $float := nqp::mul_n($float, pow10($exp));
                    my $float_str := stringify-to-precision2($float, $precision);
                    $sci := $float_str ~ $e ~ '-' ~ ($exp < 10 ?? '0' !! '') ~ $exp;
                } else {
                    $float := nqp::div_n($float, pow10($exp));
                    my $float_str := stringify-to-precision2($float, $precision);
                    $sci := $float_str ~ $e ~ '+' ~ ($exp < 10 ?? '0' !! '') ~ $exp;
                }

                pad-with-sign($sign, $sci, $size, $pad);
            }
        }

        method directive:sym<e>($/) {
            my $next := next_argument($/);
            CATCH {
                bad-type-for-directive($next, 'e', @*ARGS_HAVE);
            }
            my num $float := floatify($next);
            my $precision := $<precision> ?? $<precision>.made !! 6;
            my $pad := padding_char($/);
            my $size := $<size> ?? $<size>.made !! 0;
            make scientific($float, $<sym>, $precision, $size, $pad, $/);
        }
        method directive:sym<f>($/) {
            my $next := next_argument($/);
            CATCH {
                bad-type-for-directive($next, 'f', @*ARGS_HAVE);
            }
            my num $float := floatify($next);
            my $precision := $<precision> ?? $<precision>.made !! 6;
            my $pad := padding_char($/);
            my $size := $<size> ?? $<size>.made !! 0;
            make fixed-point($float, $precision, $size, $pad, $/);
        }
        method directive:sym<g>($/) {
            my $next := next_argument($/);
            CATCH {
                bad-type-for-directive($next, 'g', @*ARGS_HAVE);
            }
            my num $float := floatify($next);
            my $precision := $<precision> ?? $<precision>.made !! 6;
            my $pad := padding_char($/);
            my $size := $<size> ?? $<size>.made !! 0;
            make shortest($float, $<sym> eq 'G' ?? 'E' !! 'e', $precision, $size, $pad, $/);
        }
        method directive:sym<o>($/) {
            my $next := next_argument($/);
            CATCH {
                bad-type-for-directive($next, 'o', @*ARGS_HAVE);
            }
            my $int := nqp::base_I(intify($next), 8);
            my $pre := '0' if $int ne '0' && has_flag($/, 'hash');
            if nqp::chars($<precision>) {
                $int := '' if $<precision>.made == 0 && +$int == 0;
                $pre := '' if $<precision>.made > nqp::chars($int);
                $int := $pre ~ infix_x('0', intify($<precision>.made) - nqp::chars($int)) ~ $int;
            }
            else {
                $int := $pre ~ $int
            }
            make $int
        }

        method directive:sym<s>($/) {
            my $next := next_argument($/);
            CATCH {
                bad-type-for-directive($next, 's', @*ARGS_HAVE);
            }
            my $string := $next;
            if nqp::chars($<precision>) && nqp::chars($string) > $<precision>.made {
                $string := nqp::substr($string, 0, $<precision>.made);
            }
            make $string
        }
        # XXX: Should we emulate an upper limit, like 2**64?
        # XXX: Should we emulate p5 behaviour for negative values passed to %u ?
        method directive:sym<u>($/) {
            my $next := next_argument($/);
            CATCH {
                bad-type-for-directive($next, 'u', @*ARGS_HAVE);
            }
            my $int := intify($next);
            if nqp::islt_I($int, $zero) {
                    note("negative value '$int' for %u in sprintf");
                    $int := 0;
            }

            # Go through tostr_I to avoid scientific notation.
            make nqp::tostr_I($int)
        }
        method directive:sym<x>($/) {
            my $next := next_argument($/);
            CATCH {
                bad-type-for-directive($next, 'x', @*ARGS_HAVE);
            }
            my $int := nqp::base_I(intify($next), 16);
            my $pre := '0X' if $int ne '0' && has_flag($/, 'hash');
            if nqp::chars($<precision>) {
                $int := '' if $<precision>.made == 0 && +$int == 0;
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
            my $index := nqp::radix(10, $<param_index>, 0, 0)[0] - 1;
            nqp::die("Parameter index starts to count at 1 but 0 was passed") if $index < 0;
            make $index
        }

        method size($/) {
            make $<star> ?? next_argument({}) !! ~nqp::radix(10, $/, 0, 0)[0]
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
