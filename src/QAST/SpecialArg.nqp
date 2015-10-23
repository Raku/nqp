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
        my $parent := self.HOW.parents(self, :local(1))[0];
        my $info := $parent.HOW.method_table($parent)<dump_extra_node_info>(self);

        $info := nqp::chars($info) ?? $info ~ " " !! "";

        if $!flat {
            $info ~ ":flat" ~ ($!named ?? " :named" !! "");
        } else {
            $info ~ ($!named ?? ":named<$!named>" !! "");
        }
    }
}
