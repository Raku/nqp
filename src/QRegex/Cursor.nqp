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
    has $!restart;

    method target() { $!target }
    method from() { $!from }
    method pos() { $!pos }

    my $NO_CAPS := nqp::hash();
    method CAPHASH() {
        my $caps    := nqp::hash();
        my %caplist := $NO_CAPS;
        my $iter;
        my $curcap;
        my $subcur;
        my $submatch;
        my $name;
        
        if $!regexsub {
            %caplist := $!regexsub.nqpattr('caps');
            if %caplist {
                $iter := nqp::iterator(%caplist);
                while $iter {
                    $curcap := ~nqp::shift($iter);
                    $caps{$curcap} := nqp::list() if %caplist{$curcap} >= 2;
                }
            }
        }
        if $!cstack {
            $iter := nqp::iterator($!cstack);
            while $iter {
                $subcur := nqp::shift($iter);
                $submatch := $subcur.MATCH;
                $name := nqp::getattr($subcur, $?CLASS, '$!name');
                if pir::defined($name) {
                    if nqp::index($name, '=') < 0 {
                        %caplist{$name} >= 2
                            ?? nqp::push($caps{$name}, $submatch)
                            !! nqp::bindkey($caps, $name, $submatch);
                    }
                    else {
                        for nqp::split('=', $name) -> $name {
                            %caplist{$name} >= 2
                                ?? nqp::push($caps{$name}, $submatch)
                                !! nqp::bindkey($caps, $name, $submatch);
                        }
                    }
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
        my $new := nqp::create(self);
        nqp::bindattr($new, $?CLASS, '$!orig', $!orig);
        nqp::bindattr($new, $?CLASS, '$!regexsub', Q:PIR {
            $P0 = getinterp
            %r = $P0['sub';1]
        });
        if $!restart {
            nqp::bindattr_i($new, $?CLASS, '$!pos', $!pos);
            nqp::bindattr($new, $?CLASS, '$!cstack', nqp::clone($!cstack)) if $!cstack;
            pir::return__vPsiPPi(
                $new,
                nqp::bindattr_s($new, $?CLASS, '$!target', $!target),
                nqp::bindattr_i($new, $?CLASS, '$!from', $!from),
                $?CLASS,
                nqp::bindattr($new, $?CLASS, '$!bstack', nqp::clone($!bstack)),
                1);
        }
        nqp::bindattr_i($new, $?CLASS, '$!pos', -3);
        pir::return__vPsiPPi(
            $new, 
            nqp::bindattr_s($new, $?CLASS, '$!target', $!target),
            nqp::bindattr_i($new, $?CLASS, '$!from', $!pos),
            $?CLASS,
            nqp::bindattr($new, $?CLASS, '$!bstack', pir::new__Ps('ResizableIntegerArray')),
            0
        )
    }

    method !cursor_start_subcapture($from) {
        my $new := nqp::create(self);
        nqp::bindattr($new, $?CLASS, '$!orig', $!orig);
        nqp::bindattr_s($new, $?CLASS, '$!target', $!target);
        nqp::bindattr_i($new, $?CLASS, '$!from', $from);
        nqp::bindattr_i($new, $?CLASS, '$!pos', -3);
        $new;
    }

    method !cursor_capture($capture, $name) {
        $!match  := nqp::null();
        $!cstack := [] unless pir::defined($!cstack);
        nqp::push($!cstack, $capture);
        nqp::bindattr($capture, $?CLASS, '$!name', $name);
        pir::push__vPi($!bstack, 0);
        pir::push__vPi($!bstack, $!pos);
        pir::push__vPi($!bstack, 0);
        pir::push__vPi($!bstack, nqp::elems($!cstack));
        $!cstack;
    }
    
    method !cursor_push_cstack($capture) {
        $!cstack := [] unless pir::defined($!cstack);
        nqp::push($!cstack, $capture);
        $!cstack;
    }

    my $pass_mark := 1; # NQP has no constant table yet
    method !cursor_pass($pos, $name?, :$backtrack) {
        $!match := $pass_mark;
        $!pos := $pos;
        $!restart := $!regexsub
            if $backtrack;
        self.'!reduce'($name) if $name;
    }

    method !cursor_fail() {
        $!match  := nqp::null();
        $!bstack := nqp::null();
        $!pos    := -3;
    }

    method !cursor_next() {
        if $!restart {
            $!restart(self);
        }
        else {
            my $cur := self."!cursor_start"();
            $cur."!cursor_fail"();
            $cur
        }
    }

    method !reduce($name) {
        my $actions := pir::find_dynamic_lex__Ps('$*ACTIONS');
        pir::find_method__PPs($actions, $name)($actions, self.MATCH)
            if nqp::can($actions, $name);
    }

    method !reduce_with_match($name, $key, $match) {
        my $actions := pir::find_dynamic_lex__Ps('$*ACTIONS');
        pir::find_method__PPs($actions, $name)($actions, $match, $key)
            if nqp::can($actions, $name);
    }

    method !protoregex($name) {
        # Obtain and run NFA.
        my $nfa := self.HOW.cache(self, $name, { self.'!protoregex_nfa'($name) });
        my @fates := $nfa.run($!target, $!pos);
        
        # Visit rules in fate order.
        my @rxfate := $nfa.states[0];
        my $cur;
        my $rxname;
        my $i := nqp::elems(@fates);
        while $i > 0 {
            $i := $i - 1;
            $rxname := nqp::atpos(@rxfate, nqp::atpos_i(@fates, $i));
            #nqp::say("invoking $rxname");
            $cur := self."$rxname"();
            last if nqp::getattr_i($cur, $?CLASS, '$!pos') >= 0;
        }
        $cur // self."!cursor_start"();
    }

    method !protoregex_nfa($name) {
        my %protorx := self.HOW.cache(self, "!protoregex_table", { self."!protoregex_table"() });
        my $nfa := QRegex::NFA.new;
        my @fates := $nfa.states[0];
        my $start := 1;
        my $fate := 0;
        if nqp::existskey(%protorx, $name) {
            for %protorx{$name} -> $rxname {
                $fate := $fate + 1;
                @fates[$fate] := $rxname;
                $nfa.mergesubrule($start, 0, $fate, self, $rxname);
            }
        }
        $nfa;
    }

    method !protoregex_table() {
        my %protorx;
        for self.HOW.methods(self) -> $meth {
            my $methname := ~$meth;
            my $sympos   := nqp::index($methname, ':sym<');
            if $sympos > 0 {
                my $prefix := nqp::substr($methname, 0, $sympos);
                %protorx{$prefix} := [] unless nqp::existskey(%protorx, $prefix);
                nqp::push(%protorx{$prefix}, $methname);
            }
        }
        %protorx;
    }

    method !BACKREF($name) {
        my $cur := self."!cursor_start"();
        my $n := $!cstack ?? nqp::elems($!cstack) - 1 !! -1;
        $n-- while $n >= 0 && (nqp::isnull(nqp::getattr($!cstack[$n], $?CLASS, '$!name')) ||
                               nqp::getattr($!cstack[$n], $?CLASS, '$!name') ne $name);
        if $n >= 0 {
            my $subcur := $!cstack[$n];
            my $litlen := $subcur.pos - $subcur.from;
            $cur."!cursor_pass"($!pos + $litlen, '')
              if nqp::substr($!target, $!pos, $litlen) 
                   eq nqp::substr($!target, $subcur.from, $litlen);
        }
        $cur;
    }

    method !LITERAL($str, $i = 0) {
        my $cur := self."!cursor_start"();
        my $litlen := nqp::chars($str);
        $cur."!cursor_pass"($!pos + $litlen)
          if $i
            ?? nqp::lc(nqp::substr($!target, $!pos, $litlen)) eq nqp::lc($str)
            !! nqp::substr($!target, $!pos, $litlen) eq $str;
        $cur;
    }

    method at($pos) {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos) if +$pos == $!pos;
        $cur;
    }

    method before($regex) {
        my $cur := self."!cursor_start"();
        nqp::bindattr_i($cur, $?CLASS, '$!pos', $!pos);
        nqp::getattr_i($regex($cur), $?CLASS, '$!pos') >= 0 ??
            $cur."!cursor_pass"($!pos, 'before') !!
            nqp::bindattr_i($cur, $?CLASS, '$!pos', -3);
        $cur;
    }

    # Expects to get a regex whose syntax tree was flipped during the
    # compile.
    method after($regex) {
        my $cur := self."!cursor_start"();
        nqp::bindattr_s($cur, $?CLASS, '$!target', $!target.reverse());
        nqp::bindattr_i($cur, $?CLASS, '$!from', nqp::chars($!target) - $!pos);
        nqp::bindattr_i($cur, $?CLASS, '$!pos', nqp::chars($!target) - $!pos);
        nqp::getattr_i($regex($cur), $?CLASS, '$!pos') >= 0 ??
            $cur."!cursor_pass"($!pos, 'after') !!
            nqp::bindattr_i($cur, $?CLASS, '$!pos', -3);
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
    
    method ww() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos, "ww")
            if $!pos > 0
            && $!pos != nqp::chars($!target)
            && nqp::iscclass(pir::const::CCLASS_WORD, $!target, $!pos)
            && nqp::iscclass(pir::const::CCLASS_WORD, $!target, $!pos-1);
        $cur;
    }

    method wb() {
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"($!pos, "wb")
            if ($!pos == 0 && nqp::iscclass(pir::const::CCLASS_WORD, $!target, $!pos))
               || ($!pos == nqp::chars($!target)
                   && nqp::iscclass(pir::const::CCLASS_WORD, $!target, $!pos-1))
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
            if $!pos < nqp::chars($!target) &&
                (nqp::ord($!target, $!pos) == 95
                 || nqp::iscclass(pir::const::CCLASS_ALPHABETIC, $!target, $!pos));
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

    method FAILGOAL($goal) {
        my $sub := Q:PIR {
            %r = getinterp
            %r = %r['sub';1]
        };
        nqp::die("Unable to parse " ~ ~$sub ~ ", couldn't find final $goal");
    }
}


class NQPMatch is NQPCapture {
    has $!orig;
    has int $!from;
    has int $!to;
    has $!ast;
    has $!cursor;

    method from() { $!from }
    method orig() { $!orig }
    method to()   { $!to }
    method CURSOR() { $!cursor }
    method Str() is parrot_vtable('get_string')  { nqp::substr($!orig, $!from, $!to-$!from) }
    method ()    is parrot_vtable('get_integer') { +self.Str() }
    method ()    is parrot_vtable('get_number')  { +self.Str() }
    method Bool() { $!to >= $!from }
    method chars() { $!to >= $!from ?? $!to - $!from !! 0 }
    
    method !make($ast) { $!ast := $ast }
    method ast()       { $!ast }

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
    my $EMPTY_MATCH_LIST := nqp::list();
    my $EMPTY_MATCH_HASH := nqp::hash();
    method MATCH() {
        my $match := nqp::getattr(self, NQPCursor, '$!match');
        unless nqp::istype($match, NQPMatch) || pir::isa($match, 'Hash') {
            my $list := $EMPTY_MATCH_LIST;
            my $hash := $EMPTY_MATCH_HASH;
            $match := nqp::create(NQPMatch);
            nqp::bindattr(self, NQPCursor, '$!match', $match);
            nqp::bindattr($match, NQPMatch, '$!cursor', self);
            nqp::bindattr($match, NQPMatch, '$!orig', nqp::getattr(self, NQPCursor, '$!orig'));
            nqp::bindattr_i($match, NQPMatch, '$!from', nqp::getattr_i(self, NQPCursor, '$!from'));
            nqp::bindattr_i($match, NQPMatch, '$!to', nqp::getattr_i(self, NQPCursor, '$!pos'));
            my %ch := self.CAPHASH;
            my $key;
            my $iter := nqp::iterator(%ch);
            while $iter {
                $key := ~nqp::shift($iter);
                if nqp::iscclass(pir::const::CCLASS_NUMERIC, $key, 0) {
                    $list := nqp::list() unless $list;
                    nqp::bindpos($list, $key, %ch{$key});
                }
                else {
                    $hash := nqp::hash() unless $hash;
                    nqp::bindkey($hash, $key, %ch{$key});
                }
            }
            nqp::bindattr($match, NQPCapture, '@!array', $list);
            nqp::bindattr($match, NQPCapture, '%!hash', $hash);
        }
        $match
    }

    method Bool() {
        !nqp::isnull(nqp::getattr(self, $?CLASS, '$!match'))
          && nqp::istrue(nqp::getattr(self, $?CLASS, '$!match'));
    }

    method parse($target, :$rule = 'TOP', :$actions, *%options) {
        my $*ACTIONS := $actions;
        my $cur := self.'!cursor_init'($target, |%options);
        pir::is_invokable__IP($rule) ??
            $rule($cur).MATCH() !!
            pir::find_method__PPs($cur, $rule)($cur).MATCH()
    }

    method !INTERPOLATE($var) {
        if pir::does($var, 'array') {
            my $maxlen := -1;
            my $cur := self.'!cursor_start'();
            my $pos := nqp::getattr_i($cur, $?CLASS, '$!from');
            my $tgt := $cur.target;
            my $eos := nqp::chars($tgt);
            for $var {
                if pir::is_invokable__IP($_) {
                    my $res := $_(self);
                    if $res {
                        my $adv := nqp::getattr_i($res, $?CLASS, '$!pos');
                        $adv := $adv - $pos;
                        $maxlen := $adv if $adv > $maxlen;
                    }
                }
                else {
                    my $len := nqp::chars($_);
                    $maxlen := $len if $len > $maxlen && $pos + $len <= $eos
                        && nqp::substr($tgt, $pos, $len) eq $_;
                }
            }
            $cur.'!cursor_pass'($pos + $maxlen, '') if $maxlen >= 0;
            return $cur;
        }
        else {
            return $var(self) if pir::is_invokable__IP($var);
            my $cur := self.'!cursor_start'();
            my $pos := nqp::getattr_i($cur, $?CLASS, '$!from');
            my $tgt := $cur.target;
            my $len := nqp::chars($var);
            my $adv := $pos + $len;
            return $cur if $adv > nqp::chars($tgt)
                || nqp::substr($tgt, $pos, $len) ne $var;
            $cur.'!cursor_pass'($adv, '');
            return $cur;
        }
    }

    method !INTERPOLATE_REGEX($var) {
        unless pir::is_invokable__IP($var) {
            my $rxcompiler := pir::compreg__Ps('QRegex::P6Regex');
            if pir::does($var, 'array') {
                my $res := [];
                for $var {
                    my $elem := $_;
                    $elem := $rxcompiler.compile($elem) unless pir::is_invokable__IP($elem);
                    nqp::push($res, $elem);
                }
                $var := $res;
            }
            else {
                $var := $rxcompiler.compile($var);
            }
        }
        return self.'!INTERPOLATE'($var);
    }
}

class NQPRegexMethod {
    has $!code is parrot_vtable_handler('invoke');
    method new($code) {
        self.bless(:code($code));
    }
    method ACCEPTS($target) {
        NQPCursor.parse($target, :rule(self))
    }
    method Str() is parrot_vtable('get_string') {
        ~$!code
    }
}

class NQPRegex is NQPRegexMethod {
    method ACCEPTS($target) {
        NQPCursor.parse($target, :rule(self), :c(0))
    }
}

my module EXPORT {
    our module DEFAULT {
        $?PACKAGE.WHO<NQPCursorRole> := NQPCursorRole;
    }
}
