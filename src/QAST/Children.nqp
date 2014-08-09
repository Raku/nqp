role QAST::Children {
    has @!children is positional_delegate;

    method list()          { @!children }
    method pop()           { nqp::pop(@!children) }
    method push($value)    { nqp::push(@!children, $value) }
    method shift()         { nqp::shift(@!children) }
    method unshift($value) { nqp::unshift(@!children, $value) }

    method shallow_clone() {
        my $clone := nqp::clone(self);
        $clone.set_children(nqp::clone(@!children));
        $clone
    }

    method set_children(@children) {
        @!children := @children;
    }

    method dump_children(int $indent, @onto) {
        for @!children {
            if nqp::istype($_, QAST::Node) {
                nqp::push(@onto, $_.dump($indent));
            }
            else {
                nqp::push(@onto, nqp::x(' ', $indent));
                nqp::push(@onto, '- ');
                nqp::push(@onto, nqp::istype($_, NQPMu) ?? '(NQPMu)' !! ~$_);
                nqp::push(@onto, "\n");
            }
        }
    }
}
