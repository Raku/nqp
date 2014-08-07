class QAST::ParamTypeCheck is QAST::Node does QAST::Children {
    method new(*@children, *%options) {
        my $node := nqp::create(self);
        nqp::bindattr($node, QAST::ParamTypeCheck, '@!children', @children);
        $node.set(%options) if %options;
        $node
    }
}
