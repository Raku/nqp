# We only really need to keep hold of a name for the most basic attribute
# meta-class class, so we just use the string representation.
# XXX Use nqp::foo stuff to get this neater when it's in.
knowhow KnowHOWAttribute is repr('P6str') {
    method new(:$name) {
        pir::repr_box_str__psp($name, KnowHOWAttribute)
    }
    method name() {
        pir::repr_unbox_str__sp(self)
    }
}
