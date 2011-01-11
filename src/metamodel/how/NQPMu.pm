class NQPMu {
    method CREATE() {
        pir::repr_instance_of__PP(self)
    }
    
    method new() {
        self.CREATE()
    }

    # XXX This should have siggy (self:U: $topic) and be multi.
    method ACCEPTS($topic) {
        pir::type_check__IPP($topic, self.WHAT)
    }
}
