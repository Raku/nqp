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

    method dump_node_list(int $indent, @onto, @node_list) {
        # Guide lines are triggered from here - if this is a Block
        # node, then we request a guide line next to its children
        my $guide-requested := nqp::istype(self, QAST::Block) ;

        for @node_list {
            if nqp::istype($_, QAST::Node) {
                nqp::push(@onto, $_.dump($indent, :guide-line($guide-requested) ));
            }
            else {
                nqp::push(@onto, self.dump_indent_string($indent, :guide-line($guide-requested) )) ;
                nqp::push(@onto, '- ');
                nqp::istype($_, NQPMu)
                    ?? nqp::push(@onto, '(NQPMu)')
                    !! $_.HOW.name($_) eq 'Sub' || $_.HOW.name($_) eq 'Regex'
                        ?? nqp::push(@onto, $_.name)
                        !! nqp::push(@onto, ~$_ );
                nqp::push(@onto, "\n");
            }
        }
	CATCH { nqp::push(@onto, "Oops!!! {nqp::getmessage($_)}\n") }
    }

    method extra_children() {
        [];
    }

    method dump_children(int $indent, @onto) {
        my $extra := 0;
        for self.extra_children -> $tag, $nodes {
            if $nodes {
                nqp::push(@onto, self.dump_indent_string($indent));
                nqp::push(@onto, "[" ~ $tag ~ "]");
                nqp::push(@onto, "\n");
                self.dump_node_list($indent+2, @onto, nqp::islist($nodes) ?? $nodes !! [$nodes]);
            }
            $extra := $extra + nqp::elems($nodes);
        }

        if $extra && @!children {
            nqp::push(@onto, self.dump_indent_string($indent) ~ "[children]\n");
            self.dump_node_list($indent+2, @onto, @!children);
        } else {
            self.dump_node_list($indent, @onto, @!children);
        }
    }
}
