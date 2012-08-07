class QAST::VarWithFallback is QAST::Var {
    has $!fallback;
    method fallback(*@value) { $!fallback := @value[0] if @value; $!fallback }
}
