role QRegex::Cursor {
    has $!orig;
    has str $!target;
    has int $!from;
    has int $!pos;
    has $!match;
    has $!bstack;

    method target() { $!target }
    method from() { $!from }
    method pos() { $!pos }

    method MATCH() {
        my $mclass := self.match_class();
        $!match := nqp::create($mclass);
        nqp::bindattr($!match, $mclass, '$!orig', $!orig);
        nqp::bindattr_i($!match, $mclass, '$!from', $!from);
        nqp::bindattr_i($!match, $mclass, '$!to', $!pos);
        $!match;
    }

    method !cursor_init($target, :$p = 0, :$c) {
        my $new := self.CREATE();
        nqp::bindattr($new, $?CLASS, '$!orig', $target);
        $target := pir::trans_encoding__Ssi($target, pir::find_encoding__Is('ucs4'));
        nqp::bindattr_s($new, $?CLASS, '$!target', $target);
        if pir::defined($c) {
            nqp::bindattr_i($new, $?CLASS, '$!from', -1);
            nqp::bindattr_i($new, $?CLASS, '$!pos', $c);
        }
        else {
            nqp::bindattr_i($new, $?CLASS, '$!from', $p);
            nqp::bindattr_i($new, $?CLASS, '$!pos', $p);
        }
        $new;
    }

    method !cursor_start() {
        my $new := self.CREATE();
        nqp::bindattr($new, $?CLASS, '$!orig', $!orig);
        nqp::bindattr_i($new, $?CLASS, '$!pos', $!pos);
        pir::return__vPsiPP(
            $new, 
            nqp::bindattr_s($new, $?CLASS, '$!target', $!target),
            nqp::bindattr_i($new, $?CLASS, '$!from', $!pos),
            $?CLASS,
            nqp::bindattr($new, $?CLASS, '$!bstack', pir::new__Ps('ResizableIntegerArray'))
        )
    }

    method !cursor_pass($pos) {
        $!match := 1;
        $!pos := $pos;
    }

    method !cursor_fail() {
        $!match  := nqp::null();
        $!bstack := nqp::null();
        $!pos    := -3;
    }

}

class NQPMatch is NQPCapture {
    has $!orig;
    has int $!from;
    has int $!to;
    has $!ast;
    has $!cursor;

    method from() { $!from }
    method to()   { $!to }
    method Str() is parrot_vtable('get_string') { nqp::substr($!orig, $!from, $!to-$!from) }
    method Bool() is parrot_vtable('get_bool') { $!to >= $!from }
}

class NQPCursor does QRegex::Cursor {
    method match_class() { NQPMatch }
}

