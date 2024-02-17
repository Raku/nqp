my class NO_VALUE { }

role QAST::SpecialArg {
    has $!named;
    has int $!flat;

    method named($value = NO_VALUE) {
        $value =:= NO_VALUE
          ?? $!named
          !! ($!named := $value)
    }

    method flat($value = NO_VALUE) {
        $value =:= NO_VALUE
          ?? $!flat
          !! ($!flat := $value)
    }

    method dump_extra_node_info() {
        my $info := {
            my @parents := self.HOW.parents(self);
            my $i := 0;

            my $meth;
            my $invokable := 0;
            while ++$i < +@parents {
                $meth := @parents[$i].HOW.method_table<dump_extra_node_info>;
                last if ( $invokable := nqp::isinvokable($meth) );
            }
            $invokable ?? $meth(self) !! ''
        }();

        $info := nqp::chars($info) ?? $info ~ " " !! "";

        if $!flat {
            $info ~ ":flat" ~ ($!named ?? " :named" !! "");
        } else {
            my $named-str;
            my @vstr;
            if nqp::islist($!named) {
                my @n := $!named;
                for @n -> $v {
                    nqp::push(@vstr, self.stringify_value($v));
                }
            }
            else {
                nqp::push(@vstr, self.stringify_value($!named))
            }
            $info ~ ($!named ?? ":named<" ~ nqp::join(" ", @vstr) ~ ">" !! "");
        }
    }
}
