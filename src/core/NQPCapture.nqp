my class NQPCapture {
    has @!list is positional_delegate;
    has %!hash is associative_delegate;

    method new() {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, NQPCapture, '@!list', nqp::list);
        nqp::bindattr($obj, NQPCapture, '%!hash', nqp::hash);
        $obj
    }

    method list() { @!list }
    method hash() { %!hash }

    method capture_prune() { @!list := %!hash := NQPMu }
}
