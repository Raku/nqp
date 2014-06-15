class QAST::NodeList is QAST::Node does QAST::Children {
    method new(*@children, *%options) {
        my $new := nqp::create(self);
        $new.set_children(@children);
        nqp::bindattr($new, QAST::Node, '%!hash', nqp::hash());
        $new.set_options(%options) if %options;
        $new;
    }
}
