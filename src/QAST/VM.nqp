class QAST::VM is QAST::Node {
    has %!alternatives;
    
    method new(*@children, *%alternatives) {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, NQPCapture, '@!array', @children);
        nqp::bindattr($obj, NQPCapture, '%!hash', nqp::hash());
        nqp::bindattr($obj, QAST::VM, '%!alternatives', %alternatives);
        $obj
    }
    
    method supports($option) {  
        nqp::existskey(%!alternatives, $option)
    }
    
    method alternative($option) {
        nqp::atkey(%!alternatives, $option)
    }
}
