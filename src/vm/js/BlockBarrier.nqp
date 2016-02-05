my class BlockBarrier {
    has $!block;
    has $!outer;

    method new($block, $outer) {
        my $obj := nqp::create(self);
        $obj.BUILD($block, $outer);
        $obj
    }
    method BUILD($block, $outer) {
        $!block := $block;
        $!outer := $outer;
    }
    method outer() { $!outer }
}

