role QAST::Children {
    has @!array is positional_delegate;

    method set_children(@children) {
        @!array := @children;
    }

    method list()          { @!array }
    method pop()           { nqp::pop(@!array) }
    method push($value)    { nqp::push(@!array, $value) }
    method shift()         { nqp::shift(@!array) }
    method unshift($value) { nqp::unshift(@!array, $value) }
}
