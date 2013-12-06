my class NO_VALUE { }

role QAST::SpecialArg {
    has str $!named;
    has int $!flat;
    
    method named($value = NO_VALUE) {
        $!named := $value unless $value =:= NO_VALUE;
        !nqp::isnull_s($!named) ?? $!named !! ""
    }

    method flat($value = NO_VALUE) {
        $!flat := $value unless $value =:= NO_VALUE;
        $!flat
    }
}
