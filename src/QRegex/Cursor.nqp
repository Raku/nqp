role QRegex::Cursor {
    has $!orig;
    has str $!target;
    has int $!from;
    has int $!pos;
    has $!match;
    has $!name;
    has $!bstack;
    has $!cstack;
    has $!regexsub;

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

    method !cursor_capture($capture, $name) {
        $!cstack := [] unless pir::defined($!cstack);
        nqp::push($!cstack, $capture);
        nqp::bindattr($capture, $?CLASS, '$!name', $name);
        nqp::elems($!cstack);
    }

    method !cursor_pass($pos) {
        $!match := 1;
        $!pos := $pos;
        $!regexsub := Q:PIR {
            $P0 = getinterp
            %r = $P0['sub';1]
        };
    }

    method !cursor_fail() {
        $!match  := nqp::null();
        $!bstack := nqp::null();
        $!pos    := -3;
    }

    method alpha() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1)
          if pir::is_cclass__Iisi(pir::const::CCLASS_ALPHABETIC, $!target, $!pos);
        $cur;
    }

    method upper() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1)
          if pir::is_cclass__Iisi(pir::const::CCLASS_UPPERCASE, $!target, $!pos);
        $cur;
    }

    method lower() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1)
          if pir::is_cclass__Iisi(pir::const::CCLASS_LOWERCASE, $!target, $!pos);
        $cur;
    }

    method digit() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1)
          if pir::is_cclass__Iisi(pir::const::CCLASS_NUMERIC, $!target, $!pos);
        $cur;
    }

    method xdigit() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1)
          if pir::is_cclass__Iisi(pir::const::CCLASS_HEXADECIMAL, $!target, $!pos);
        $cur;
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

    method !dump_str($key) {
        sub dump_array($key, $item) {
            my $str;
            if $item ~~ NQPCapture {
                $str := $str ~ $item."!dump_str"($key)
            }
            else {
                my $n := 0;
                for $item { $str := $str ~ dump_array($key ~ "[$n]", $_); $n++ }
            }
            $str;
        }
        my $str := $key ~ ': ' ~ pir::escape__Ss(self.Str) ~ ' @ ' ~ self.from ~ "\n";
        $str := $str ~ dump_array($key, self.list);
        for self.hash { $str := $str ~ dump_array($key ~ '<' ~ $_.key ~ '>', $_.value); }
        $str;
    }
}

class NQPCursor does QRegex::Cursor {
    method match_class() { NQPMatch }
    method Bool() is parrot_vtable('get_bool') {
        nqp::istrue(nqp::getattr(self, $?CLASS, '$!match'));
    }
}

