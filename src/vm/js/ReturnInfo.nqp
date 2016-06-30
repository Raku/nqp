my class ReturnInfo {
    has int $!used;
    method mark_used() {
        $!used := 1;
    }
    method is_used() {
        $!used;
    }
}

my class TopLevelInBlock is ReturnInfo {
    has $!block;
    method as_return() {
        return nqp::eqaddr($!block, $*BLOCK);
    }
}

my class NotTopLevel is ReturnInfo {
    method as_return() {
        return 0;
    }
}
