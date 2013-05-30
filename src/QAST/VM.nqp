class QAST::VM is QAST::Node {
    has %!alternatives;
    
    method new(*@children, *%alternatives) {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, QAST::Node, '@!array', @children);
        nqp::bindattr($obj, QAST::Node, '%!hash', nqp::hash());
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
            nqp::push(@onto, nqp::x(' ', $indent));
            nqp::push(@onto, '[');
            nqp::push(@onto, $_.key);
            nqp::push(@onto, "]\n");

            if nqp::istype($_.value, QAST::Node) {
                nqp::push(@onto, $_.value.dump($indent+2));
            }
            else {
                nqp::push(@onto, nqp::x(' ', $indent+2));
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
