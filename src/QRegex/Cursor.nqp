role NQPCursorRole {
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

    method CAPHASH() {
        my $caps := nqp::hash();
        if $!cstack {
            my %caplist := $!regexsub.nqpattr('caps');
            for %caplist {
                $caps{$_.key} := nqp::list() if $_.value >= 2;
            }
            for $!cstack -> $subcur {
                my $submatch := $subcur.MATCH;
                for nqp::split('=', nqp::getattr($subcur, $?CLASS, '$!name')) -> $name {
                    %caplist{$name} >= 2
                      ?? nqp::push($caps{$name}, $submatch)
                      !! nqp::bindkey($caps, $name, $submatch);
                }
            }
        } 
        $caps;
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
        nqp::bindattr_i($new, $?CLASS, '$!pos', -3);
        nqp::bindattr($new, $?CLASS, '$!regexsub', Q:PIR {
            $P0 = getinterp
            %r = $P0['sub';1]
        });
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
        pir::push__vPi($!bstack, 0);
        pir::push__vPi($!bstack, $!pos);
        pir::push__vPi($!bstack, 0);
        pir::push__vPi($!bstack, nqp::elems($!cstack));
        $!cstack;
    }

    method !cursor_pass($pos, $name?) {
        $!match := 1;
        $!pos := $pos;
        $!regexsub := Q:PIR {
            $P0 = getinterp
            %r = $P0['sub';1]
        };
        self.'!reduce'($name) if $name;
    }

    method !cursor_fail() {
        $!match  := nqp::null();
        $!bstack := nqp::null();
        $!pos    := -3;
    }

    method !reduce($name) {
        my $actions := pir::find_dynamic_lex__Ps('$*ACTIONS');
        pir::find_method__PPs($actions, $name)($actions, self.MATCH)
            if pir::can__IPS($actions, $name);
    }

    method !protoregex($name) {
        pir::say($name);
    }

    method !BACKREF($name) {
        my $cur := self."!cursor_start"();
        my $n := $!cstack ?? nqp::elems($!cstack) - 1 !! -1;
        $n-- while $n >= 0 && nqp::getattr($!cstack[$n], $?CLASS, '$!name') ne $name;
        if $n >= 0 {
            my $subcur := $!cstack[$n];
            my $litlen := $subcur.pos - $subcur.from;
            $cur."!cursor_pass"($!pos + $litlen, '')
              if nqp::substr($!target, $!pos, $litlen) 
                   eq nqp::substr($!target, $subcur.from, $litlen);
        }
        else { $cur."!cursor_pass"($!pos, '') }
        $cur;
    }

    method !LITERAL($str) {
        my $cur := self."!cursor_start"();
        my $litlen := nqp::chars($str);
        $cur."!cursor_pass"($!pos + $litlen)
          if nqp::substr($!target, $!pos, $litlen) eq $str;
        $cur;
    }
                 
    method ws() {
        # skip over any whitespace, fail if between two word chars
        my $cur := self."!cursor_start"();
        $!pos >= nqp::chars($!target)
          ?? $cur."!cursor_pass"($!pos, 'ws')
          !! ($!pos < 1
              || !nqp::iscclass(pir::const::CCLASS_WORD, $!target, $!pos)
              || !nqp::iscclass(pir::const::CCLASS_WORD, $!target, $!pos-1)
             ) && $cur."!cursor_pass"(
                      pir::find_not_cclass__Iisii(
                          pir::const::CCLASS_WHITESPACE, $!target, $!pos, nqp::chars($!target)),
                      'ws');
        $cur;
    }

    method wb() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos, "wb")
            if $!pos == 0
               || $!pos == nqp::chars($!target)
               || nqp::iscclass(pir::const::CCLASS_WORD, $!target, $!pos-1)
                  != nqp::iscclass(pir::const::CCLASS_WORD, $!target, $!pos);
        $cur;
    }

    method ident() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"(
                pir::find_not_cclass__Iisii(
                    pir::const::CCLASS_WORD,
                    $!target, $!pos, nqp::chars($!target)))
            if nqp::ord($!target, $!pos) == 95
               || nqp::iscclass(pir::const::CCLASS_ALPHABETIC, $!target, $!pos);
        $cur;
    }

    method alpha() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1, 'alpha')
          if $!pos < nqp::chars($!target)
             && (nqp::iscclass(pir::const::CCLASS_ALPHABETIC, $!target, $!pos)
                 || nqp::ord($!target, $!pos) == 95);
        $cur;
    }

    method alnum() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1, 'alnum')
          if $!pos < nqp::chars($!target)
             && (nqp::iscclass(pir::const::CCLASS_ALPHANUMERIC, $!target, $!pos)
                 || nqp::ord($!target, $!pos) == 95);
        $cur;
    }

    method upper() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1, 'upper')
          if $!pos < nqp::chars($!target)
             && nqp::iscclass(pir::const::CCLASS_UPPERCASE, $!target, $!pos);
        $cur;
    }

    method lower() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1, 'lower')
          if $!pos < nqp::chars($!target)
             && nqp::iscclass(pir::const::CCLASS_LOWERCASE, $!target, $!pos);
        $cur;
    }

    method digit() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1, 'digit')
          if $!pos < nqp::chars($!target)
             && nqp::iscclass(pir::const::CCLASS_NUMERIC, $!target, $!pos);
        $cur;
    }

    method xdigit() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1, 'xdigit')
          if $!pos < nqp::chars($!target)
             && nqp::iscclass(pir::const::CCLASS_HEXADECIMAL, $!target, $!pos);
        $cur;
    }

    method space() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1, 'space')
          if $!pos < nqp::chars($!target)
             && nqp::iscclass(pir::const::CCLASS_WHITESPACE, $!target, $!pos);
        $cur;
    }

    method blank() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1, 'blank')
          if $!pos < nqp::chars($!target)
             && nqp::iscclass(pir::const::CCLASS_BLANK, $!target, $!pos);
        $cur;
    }

    method cntrl() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1, 'cntrl')
          if $!pos < nqp::chars($!target)
             && nqp::iscclass(pir::const::CCLASS_CONTROL, $!target, $!pos);
        $cur;
    }

    method punct() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos+1, 'punct')
          if $!pos < nqp::chars($!target)
             && nqp::iscclass(pir::const::CCLASS_PUNCTUATION, $!target, $!pos);
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
    method Bool() { $!to >= $!from }

    method !dump_str($key) {
        sub dump_array($key, $item) {
            my $str := '';
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

class NQPCursor does NQPCursorRole {
    method MATCH() {
        unless nqp::istype(nqp::getattr(self, NQPCursor, '$!match'), NQPMatch) {
            my $match := NQPMatch.new();
            nqp::bindattr(self, NQPCursor, '$!match', $match);
            nqp::bindattr($match, NQPMatch, '$!orig', nqp::getattr(self, NQPCursor, '$!orig'));
            nqp::bindattr_i($match, NQPMatch, '$!from', nqp::getattr_i(self, NQPCursor, '$!from'));
            nqp::bindattr_i($match, NQPMatch, '$!to', nqp::getattr_i(self, NQPCursor, '$!pos'));
            my $list := $match.list;
            my $hash := $match.hash;
            for self.CAPHASH {
                my $key := $_.key;
                nqp::iscclass(pir::const::CCLASS_NUMERIC, $key, 0)
                  ?? nqp::bindpos($list, $key, $_.value)
                  !! nqp::bindkey($hash, $key, $_.value);
            }
        }
        nqp::getattr(self, NQPCursor, '$!match');
    }

    method Bool() {
        !nqp::isnull(nqp::getattr(self, $?CLASS, '$!match'))
          && nqp::istrue(nqp::getattr(self, $?CLASS, '$!match'));
    }

    method parse($target, :$rule = 'TOP', :$actions, *%options) {
        my $*ACTIONS := $actions;
        my $cur := self.'!cursor_init'($target, |%options);
        pir::find_method__PPs($cur, $rule)($cur).MATCH()
    }
}


my module EXPORT {
    our module DEFAULT {
        $?PACKAGE.WHO<NQPCursorRole> := NQPCursorRole;
    }
}
