class QAST::VarWithFallback is QAST::Var {
    has $!fallback;
    method fallback($value = NO_VALUE) { $!fallback := $value unless $value =:= NO_VALUE; $!fallback }
}
