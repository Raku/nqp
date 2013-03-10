my class NQPArray is repr('VMArray') {
    method push($value) { nqp::push(self, $value) }
    method pop() { nqp::pop(self) }
    method unshift($value) { nqp::unshift(self, $value) }
    method shift() { nqp::shift(self) }
}
