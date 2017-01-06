my class ReturnInfo {
    has $!block;
    has int $!used;
    method mark_used() {
        $!used := 1;
    }
    method is_used() {
        $!used;
    }
    method as_return() {
        return nqp::eqaddr($!block, $*BLOCK);
    }
}

