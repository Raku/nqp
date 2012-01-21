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

    method CAPHASH() {
        my $caps := nqp::hash();
        my %caplist := $!regexsub.nqpattr('caps');
        for %caplist {
            $caps{$_.key} := nqp::list() if $_.value >= 2;
        }
        if $!cstack {
            for $!cstack -> $subcur {
                my $submatch := $subcur.MATCH;
                my $name := nqp::getattr($subcur, $?CLASS, '$!name');
                if pir::defined($name) {
                    for nqp::split('=', $name) -> $name {
                        %caplist{$name} >= 2
                            ?? nqp::push($caps{$name}, $submatch)
                            !! nqp::bindkey($caps, $name, $submatch);
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
            if pir::can__IPS($actions, $name);
    }

    method !protoregex($name) {
        my $nfa := self.HOW.cache(self, $name, { self.'!protoregex_nfa'($name) });
        my @fatepos := $nfa.run($!target, $!pos);
        my $cur;
        if @fatepos {
            my $fate := 0;
            my @fatesort;
            my @rxfate := $nfa.states[0];
            while $fate < @fatepos {
                my $pos := @fatepos[$fate];
                if pir::defined($pos) {
                    my $n := nqp::elems(@fatesort) - 1;
                    while $n >= 0
                          && @fatepos[@fatesort[$n]] >= @fatepos[$fate] {
                        $n := $n - 1;
                    }
                    nqp::splice(@fatesort, [$fate], $n+1, 0);
                }
                $fate := $fate + 1;
            }
            while @fatesort {
                my $rxname := @rxfate[nqp::pop(@fatesort)];
                #nqp::say("invoking $rxname");
                $cur := self."$rxname"();
                last if nqp::getattr_i($cur, $?CLASS, '$!pos') >= 0;
            }
        }
        $cur // self."!cursor_start"();
    }

    method !protoregex_nfa($name) {
        my %protorx := self."!protoregex_table"();
        my $nfa := QRegex::NFA.new;
        my @fates := $nfa.states[0];
        my $start := 1;
        my $fate := 0;
        my $prefix      := $name ~ ':sym<';
        my $prefixchars := nqp::chars($prefix);
        for %protorx {
            my $rxname := $_.key;
            if nqp::substr($rxname, 0, $prefixchars) eq $prefix {
                $fate := $fate + 1;
                @fates[$fate] := $rxname;
                $nfa.mergesubrule($start, 0, $fate, self, $rxname);
            }
        }
        $nfa;
    }

    method !protoregex_table() {
        my %protorx;
        for self.HOW.methods(self, :local(0)) -> $meth {
            my $methname := ~$meth;
            %protorx{$methname} := $meth if nqp::index($methname, ':sym<') >0;
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

    method !LITERAL($str) {
        my $cur := self."!cursor_start"();
        my $litlen := nqp::chars($str);
        $cur."!cursor_pass"($!pos + $litlen)
          if nqp::substr($!target, $!pos, $litlen) eq $str;
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

    method FAILGOAL($goal) {
        my $sub := Q:PIR {
            %r = getinterp
            %r = %r['sub';1]
        };
        pir::die("Unable to parse " ~ ~$sub ~ ", couldn't find final $goal");
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
    method CURSOR() { $!cursor }
    method Str() is parrot_vtable('get_string')  { nqp::substr($!orig, $!from, $!to-$!from) }
    method ()    is parrot_vtable('get_integer') { +self.Str() }
    method ()    is parrot_vtable('get_number')  { +self.Str() }
    method Bool() { $!to >= $!from }
    method chars() { $!to >= $!from ?? $!to - $!from !! 0 }

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
            my $eos := pir::length($tgt);
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
                    my $len := pir::length($_);
                    $maxlen := $len if $len > $maxlen && $pos + $len <= $eos
                        && pir::substr($tgt, $pos, $len) eq $_;
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
            my $len := pir::length($var);
            my $adv := $pos + $len;
            return $cur if $adv > pir::length($tgt)
                || pir::substr($tgt, $pos, $len) ne $var;
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
