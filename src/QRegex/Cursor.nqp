role QRegex::Cursor {
    has $!target;
    has $!from;
    has $!pos;
    has $!match;
    has $!bstack;

    method target() { $!target }
    method from() { $!from }
    method pos() { $!pos }

    method MATCH() {
        my $mclass := self.match_class();
        $!match := nqp::create($mclass);
        nqp::bindattr($!match, $mclass, '$!target', $!target);
        nqp::bindattr_i($!match, $mclass, '$!from', $!from);
        nqp::bindattr_i($!match, $mclass, '$!to', $!pos);
        $!match;
    }

    method !cursor_init($target, :$p = 0) {
        my $new := self.CREATE();
        nqp::bindattr($new, $?CLASS, '$!target', $target);
        nqp::bindattr($new, $?CLASS, '$!from', $p);
        nqp::bindattr($new, $?CLASS, '$!pos', $p);
        $new;
    }

    method !cursor_start() {
        my $new := self.CREATE();
        nqp::bindattr($new, $?CLASS, '$!pos', $!pos);
        pir::return__vPsiPP(
            $new, 
            nqp::bindattr($new, $?CLASS, '$!target', $!target),
            nqp::bindattr($new, $?CLASS, '$!from', $!pos),
            $?CLASS,
            nqp::bindattr($new, $?CLASS, '$!bstack', pir::new__Ps('ResizableIntegerArray'))
        )
    }

    method !cursor_pass($pos) {
        $!match := 1;
        $!pos := $pos;
    }

}

class NQPMatch is NQPCapture {
    has $!target;
    has int $!from;
    has int $!to;
    has $!ast;
    has $!cursor;
}

class NQPCursor does QRegex::Cursor {
    method match_class() { NQPMatch }
}

