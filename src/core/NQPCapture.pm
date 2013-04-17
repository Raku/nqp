my class NQPCapture {
    has @!array is positional_delegate;
    has %!hash is associative_delegate;

    method new() {
        my $n := self.CREATE;
        $n.BUILD;
        $n
    }

    method BUILD() {
        @!array := nqp::qlist();
        %!hash := nqp::hash();
    }
    
    method list() { @!array }

    method hash() { %!hash }

}
