class QAST::VM is QAST::Node does QAST::Children {
    has %!alternatives;

    method new(*@children, *%alternatives) {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, QAST::VM, '@!children', @children);
        nqp::bindattr($obj, QAST::VM, '%!alternatives', %alternatives);
        $obj
    }

    method supports($option) {
        nqp::existskey(%!alternatives, $option)
    }

    method alternative($option) {
        nqp::atkey(%!alternatives, $option)
    }

    method dump_children(int $indent, @onto) {
        for sorted_keys(%!alternatives) -> $k {
            my $v := %!alternatives{$k};
            nqp::push(@onto, self.dump_indent_string($indent));
            nqp::push(@onto, '[');
            nqp::push(@onto, $k);
            nqp::push(@onto, "]\n");

            if nqp::istype($v, QAST::Node) {
                nqp::push(@onto, $v.dump($indent+2));
            }
            else {
                nqp::push(@onto, self.dump_indent_string($indent+2));
                nqp::push(@onto, '- ');
                if $k eq 'loadlibs' {
                    nqp::push(@onto, nqp::join(' ',$v));
                }
                else {
                    nqp::push(@onto, ~$v);
                }
                nqp::push(@onto, "\n");
            }
        }
    }
}
