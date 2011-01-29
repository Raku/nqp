class NQPMu {
    method CREATE() {
        pir::repr_instance_of__PP(self)
    }

    method new() {
        self.CREATE()
    }

    proto method Str() { * }
    multi method Str(Mu:U $self:) {
        self.HOW.name(self) ~ '()'
    }

    proto method ACCEPTS($topic) { * }
    multi method ACCEPTS(NQPMu:U $self: $topic) {
        pir::type_check__IPP($topic, self.WHAT)
    }

    method isa($type) {
        self.HOW.isa(self, $type)
    }

}
