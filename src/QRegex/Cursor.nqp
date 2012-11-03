role NQPCursorRole is export {
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

    method orig() { $!orig }
    method target() { $!target }
    method from() { $!from }
    method pos() { $!pos }

    my $NO_CAPS := nqp::hash();
    method CAPHASH() {
        my $caps    := nqp::hash();
        my %caplist := $NO_CAPS;
        my $iter;
        my str $curcap;
        my $cs;
        my int $csi;
        my int $cselems;
        my $subcur;
        my $submatch;
        my $name;
        
        if !nqp::isnull($!regexsub) && nqp::defined($!regexsub) {
            %caplist := nqp::can($!regexsub, 'CAPS') ?? $!regexsub.CAPS() !! nqp::null();
            if !nqp::isnull(%caplist) && %caplist {
                $iter := nqp::iterator(%caplist);
                while $iter {
                    $curcap := nqp::shift_s($iter);
                    $caps{$curcap} := nqp::list() if %caplist{$curcap} >= 2;
                }
            }
        }
        if !nqp::isnull($!cstack) && $!cstack {
            $cs      := $!cstack;
            $cselems := nqp::elems($cs);
            while $csi < $cselems {
                $subcur := nqp::atpos($cs, $csi);
                $submatch := $subcur.MATCH;
                $name := nqp::getattr($subcur, $?CLASS, '$!name');
                if !nqp::isnull($name) && nqp::defined($name) {
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
                $csi++;
            }
        } 
        $caps;
    }

    method !cursor_init($orig, :$p = 0, :$c, :$target) {
        my $new := self.CREATE();
        nqp::bindattr($new, $?CLASS, '$!orig', $orig);
        nqp::bindattr_s($new, $?CLASS, '$!target', $target
            ?? $target
            !! pir::trans_encoding__Ssi($orig, pir::find_encoding__Is('ucs4')));
        if nqp::defined($c) {
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
        my $sub := nqp::callercode();
        nqp::bindattr($new, $?CLASS, '$!orig', $!orig);
        nqp::bindattr($new, $?CLASS, '$!regexsub', nqp::ifnull(nqp::getcodeobj($sub), $sub));
        if nqp::defined($!restart) {
            nqp::bindattr_i($new, $?CLASS, '$!pos', $!pos);
            nqp::bindattr($new, $?CLASS, '$!cstack', nqp::clone($!cstack)) if $!cstack;
            pir::return__0PsiPPi(
                $new,
                nqp::bindattr_s($new, $?CLASS, '$!target', $!target),
                nqp::bindattr_i($new, $?CLASS, '$!from', $!from),
                $?CLASS,
                nqp::bindattr($new, $?CLASS, '$!bstack', nqp::clone($!bstack)),
                1);
        }
        nqp::bindattr_i($new, $?CLASS, '$!pos', -3);
        pir::return__0PsiPPi(
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
        $!cstack := [] unless nqp::defined($!cstack);
        nqp::push($!cstack, $capture);
        nqp::bindattr($capture, $?CLASS, '$!name', $name);
        nqp::push_i($!bstack, 0);
        nqp::push_i($!bstack, $!pos);
        nqp::push_i($!bstack, 0);
        nqp::push_i($!bstack, nqp::elems($!cstack));
        $!cstack;
    }
    
    method !cursor_push_cstack($capture) {
        $!cstack := [] unless nqp::defined($!cstack);
        nqp::push($!cstack, $capture);
        $!cstack;
    }

    my $pass_mark := 1; # NQP has no constant table yet
    method !cursor_pass(int $pos, $name?, :$backtrack) {
        $!match := $pass_mark;
        $!pos := $pos;
        $!restart := $!regexsub
            if $backtrack;
        $!bstack := nqp::null()
            unless $backtrack;
        self.'!reduce'($name) if $name;
    }

    method !cursor_fail() {
        $!match  := nqp::null();
        $!bstack := nqp::null();
        $!pos    := -3;
    }
    
    method !cursor_pos(int $pos) {
        $!pos := $pos;
    }

    method !cursor_next() {
        if nqp::defined($!restart) {
            $!restart(self);
        }
        else {
            my $cur := self."!cursor_start"();
            $cur."!cursor_fail"();
            $cur
        }
    }

    method !cursor_more(*%opts) {
        return self."!cursor_next"() if %opts<ex>;
        my $new := self.CREATE();
        nqp::bindattr($new, $?CLASS, '$!orig', $!orig);
        nqp::bindattr_s($new, $?CLASS, '$!target', $!target);
        nqp::bindattr_i($new, $?CLASS, '$!from', -1);
        nqp::bindattr_i($new, $?CLASS, '$!pos',
            (%opts<ov> || $!from >= $!pos) ?? $!from+1 !! $!pos);
        $!regexsub($new);
    }

    method !reduce(str $name) {
        my $actions := nqp::getlexdyn('$*ACTIONS');
        nqp::findmethod($actions, $name)($actions, self.MATCH)
            if !nqp::isnull($actions) && nqp::can($actions, $name);
    }

    method !reduce_with_match($name, $key, $match) {
        my $actions := nqp::getlexdyn('$*ACTIONS');
        nqp::findmethod($actions, $name)($actions, $match, $key)
            if !nqp::isnull($actions) && nqp::can($actions, $name);
    }

    my @EMPTY := [];
    method !protoregex($name) {
        # Obtain and run NFA.
        my $nfa := self.HOW.cache(self, $name, { self.'!protoregex_nfa'($name) });
        my @fates := $nfa.run($!target, $!pos);
        
        # Visit rules in fate order.
        my @rxfate := $nfa.states[0];
        my $cur;
        my $rxname;
        while @fates {
            $rxname := nqp::atpos(@rxfate, nqp::pop_i(@fates));
            #nqp::say("invoking $rxname");
            $cur := self."$rxname"();
            @fates := @EMPTY if nqp::getattr_i($cur, $?CLASS, '$!pos') >= 0;
        }
        $cur // self."!cursor_start"();
    }

    method !protoregex_nfa($name) {
        my %protorx := self.HOW.cache(self, "!protoregex_table", { self."!protoregex_table"() });
        my $nfa := QRegex::NFA.new;
        my @fates := $nfa.states[0];
        my int $start := 1;
        my int $fate := 0;
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
            my str $methname := ~$meth;
            my int $sympos   := nqp::index($methname, ':sym<');
            if $sympos > 0 {
                my str $prefix := nqp::substr($methname, 0, $sympos);
                %protorx{$prefix} := [] unless nqp::existskey(%protorx, $prefix);
                nqp::push(%protorx{$prefix}, $methname);
            }
        }
        %protorx;
    }

    method !alt(int $pos, str $name, @labels = []) {
        my $nfa := self.HOW.cache(self, $name, { self.'!alt_nfa'($!regexsub, $name) });
        $nfa.run_alt($!target, $pos, $!bstack, $!cstack, @labels);
    }

    method !alt_nfa($regex, str $name) {
        my $nfa := QRegex::NFA.new;
        my @fates := $nfa.states[0];
        my int $start := 1;
        my int $fate := 0;
        for $regex.ALT_NFA($name) {
            @fates[$fate] := $fate;
            $nfa.mergesubstates($start, 0, $fate, $_, self);
            $fate++;
        }
        $nfa
    }

    method !precompute_nfas() {
        # Pre-compute all of the proto-regex NFAs.
        my %protorx := self.HOW.cache(self, "!protoregex_table", { self."!protoregex_table"() });
        for %protorx {
            self.HOW.cache(self, $_.key, { self.'!protoregex_nfa'($_.key) });
        }

        # Pre-compute all the alternation NFAs.
        sub precomp_alt_nfas($meth) {
            if nqp::can($meth, 'ALT_NFAS') {
                for $meth.ALT_NFAS -> $name {
                    self.HOW.cache(self, $name, { self.'!alt_nfa'($meth, $name) });
                }
            }
        }
        for self.HOW.methods(self) -> $meth {
            precomp_alt_nfas($meth);
            if nqp::can($meth, 'NESTED_CODES') {
                for $meth.NESTED_CODES -> $code {
                    precomp_alt_nfas($code);
                }
            }
        }
    }

    method !BACKREF($name) {
        my $cur   := self."!cursor_start"();
        my int $n := $!cstack ?? nqp::elems($!cstack) - 1 !! -1;
        $n-- while $n >= 0 && (nqp::isnull(nqp::getattr($!cstack[$n], $?CLASS, '$!name')) ||
                               nqp::getattr($!cstack[$n], $?CLASS, '$!name') ne $name);
        if $n >= 0 {
            my $subcur := $!cstack[$n];
            my int $litlen := $subcur.pos - $subcur.from;
            $cur."!cursor_pass"($!pos + $litlen, '')
              if nqp::substr($!target, $!pos, $litlen) 
                   eq nqp::substr($!target, $subcur.from, $litlen);
        }
        $cur;
    }

    method !LITERAL(str $str, int $i = 0) {
        my $cur := self."!cursor_start"();
        my int $litlen := nqp::chars($str);
        $cur."!cursor_pass"($!pos + $litlen)
          if $litlen < 1 
              ||  ($i ?? nqp::lc(nqp::substr($!target, $!pos, $litlen)) eq nqp::lc($str)
                      !! nqp::substr($!target, $!pos, $litlen) eq $str);
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
                      nqp::findnotcclass(
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
                nqp::findnotcclass(
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

    method FAILGOAL($goal, $dba?) {
        unless $dba {
            $dba := ~nqp::callercode();
        }
        nqp::die("Unable to parse expression in $dba; couldn't find final $goal");
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
            elsif !nqp::isnull($item) {
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
        unless nqp::istype($match, NQPMatch) || pir::nqp_ishash__IP($match) {
            my $list := $EMPTY_MATCH_LIST;
            my $hash := $EMPTY_MATCH_HASH;
            $match := nqp::create(NQPMatch);
            nqp::bindattr(self, NQPCursor, '$!match', $match);
            nqp::bindattr($match, NQPMatch, '$!cursor', self);
            nqp::bindattr($match, NQPMatch, '$!orig', nqp::getattr(self, NQPCursor, '$!orig'));
            nqp::bindattr_i($match, NQPMatch, '$!from', nqp::getattr_i(self, NQPCursor, '$!from'));
            nqp::bindattr_i($match, NQPMatch, '$!to', nqp::getattr_i(self, NQPCursor, '$!pos'));
            my %ch := self.CAPHASH;
            my str $key;
            my $iter := nqp::iterator(%ch);
            while $iter {
                $key := ~nqp::shift($iter);
                if $key eq '$!from' || $key eq '$!to' {
                    nqp::bindattr_i($match, NQPMatch, $key, %ch{$key}.from);
                }
                elsif nqp::iscclass(pir::const::CCLASS_NUMERIC, $key, 0) {
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
            nqp::findmethod($cur, $rule)($cur).MATCH()
    }

    method !INTERPOLATE($var) {
        if nqp::islist($var) {
            my int $maxlen := -1;
            my $cur := self.'!cursor_start'();
            my int $pos := nqp::getattr_i($cur, $?CLASS, '$!from');
            my str $tgt := $cur.target;
            my int $eos := nqp::chars($tgt);
            for $var {
                if pir::is_invokable__IP($_) {
                    my $res := $_(self);
                    if $res {
                        my int $adv := nqp::getattr_i($res, $?CLASS, '$!pos');
                        $adv := $adv - $pos;
                        $maxlen := $adv if $adv > $maxlen;
                    }
                }
                else {
                    my int $len := nqp::chars($_);
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
            my int $pos := nqp::getattr_i($cur, $?CLASS, '$!from');
            my str $tgt := $cur.target;
            my int $len := nqp::chars($var);
            my int $adv := $pos + $len;
            return $cur if $adv > nqp::chars($tgt)
                || nqp::substr($tgt, $pos, $len) ne $var;
            $cur.'!cursor_pass'($adv, '');
            return $cur;
        }
    }

    method !INTERPOLATE_REGEX($var) {
        unless pir::is_invokable__IP($var) {
            my $rxcompiler := pir::compreg__Ps('QRegex::P6Regex');
            if nqp::islist($var) {
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
 