my class NQPCapture {
    has @!array is positional_delegate;
    has %!hash is associative_delegate;

    method new() {
        my $n := self.CREATE;
        $n.BUILD;
        $n
    }

    method BUILD() {
        @!array := nqp::list();
        %!hash := nqp::hash();
    }
    
    method list() { @!array }

    method hash() { %!hash }

    method capture_prune() {
        @!array := nqp::list();
        %!hash := nqp::hash();
    }

}
