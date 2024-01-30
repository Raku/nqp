class QAST::VarWithFallback is QAST::Var {
    has $!fallback;

    method fallback($value = NO_VALUE) {
        $value =:= NO_VALUE
          ?? $!fallback
          !! ($!fallback := $value)
    }

    method extra_children() {
        $!fallback ?? ['fallback', [$!fallback]] !! [];
    }
}
