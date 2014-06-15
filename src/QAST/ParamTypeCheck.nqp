class QAST::ParamTypeCheck is QAST::Node does QAST::Children {
    method new($check) {
        my $new := nqp::create(self);
        $new.set_children([$check]);
        nqp::bindattr($new, QAST::Node, '%!hash', nqp::hash());
        $new
    }
}
