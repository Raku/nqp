class QAST::VM is QAST::Node does QAST::Children {
    has %!alternatives;
    
    method new(*@children, *%alternatives) {
        my $obj := nqp::create(self);
        nqp::bindattr_i($obj, QAST::Node, '$!flags', 0);
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
        for %!alternatives {
            nqp::push(@onto, self.dump_indent_string($indent));
            nqp::push(@onto, '[');
            nqp::push(@onto, $_.key);
            nqp::push(@onto, "]\n");

            if nqp::istype($_.value, QAST::Node) {
                nqp::push(@onto, $_.value.dump($indent+2));
            }
            else {
                nqp::push(@onto, self.dump_indent_string($indent+2));
                nqp::push(@onto, '- ');
                if $_.key eq 'loadlibs' {
                    nqp::push(@onto, nqp::join(' ',$_.value));
                }
                else {
                    nqp::push(@onto, ~$_.value);
                }
                nqp::push(@onto, "\n");
            }
        }
    }
}
