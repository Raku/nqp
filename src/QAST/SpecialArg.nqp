my class NO_VALUE { }

role QAST::SpecialArg {
    has $!named;
    has int $!flat;
    
    method named($value = NO_VALUE) {
        $!named := $value unless $value =:= NO_VALUE;
        $!named
    }

    method flat($value = NO_VALUE) {
        $!flat := $value unless $value =:= NO_VALUE;
        $!flat
    }

    method dump_extra_node_info() {
        my $info := {
            my @parents := self.HOW.parents(self);
            nqp::shift(@parents) if +@parents > 0;

            my $meth;
            my $invokable := 0;
            for @parents -> $p {
                $meth := $p.HOW.method_table($p)<dump_extra_node_info>;
                last if ( $invokable := nqp::isinvokable($meth) );
            }
            $invokable ?? $meth(self) !! ''
        }();

        $info := nqp::chars($info) ?? $info ~ " " !! "";

        if $!flat {
            $info ~ ":flat" ~ ($!named ?? " :named" !! "");
        } else {
            $info ~ ($!named ?? ":named<$!named>" !! "");
        }
    }
}
