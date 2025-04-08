#- ParseShared -----------------------------------------------------------------
# Some things that all cursors involved in a given parse share.
my class ParseShared is export {
    has $!CUR_CLASS;           # the class of the cursor object
    has $!orig;                # the string being parsed
    has str $!target;          # optimised version of string
    has int $!highwater;       # current high water mark
    has @!highexpect;          # strings
    has %!marks;               # hash
    has $!fail_cursor;         # cursor to be used when parse failed
    has str $!target_flipped;  # nqp::flipped version of $!target (if any)

    # Follow is a little simple usage tracing infrastructure, used by the
    # !cursor_start_* methods when uncommented.
    my %cursors_created;
    my $cursors_total;
    method log_cc($name) {
        ++%cursors_created{$name};
        $cursors_total++;
    }
    method log_dump() {
        for %cursors_created {
            say($_.value ~ "\t" ~ $_.key);
        }
        say("TOTAL: " ~ $cursors_total);
    }
}

#- Braid -----------------------------------------------------------------------
my class Braid is export {
    has $!grammar;
    has $!actions;
    has $!package;
    has $!slangs;

    method !braid_init(:$grammar, :$actions, :$package, *%ignore) {
        my $new := nqp::create(self);
        nqp::bindattr($new, Braid, '$!grammar', nqp::decont($grammar));
        nqp::bindattr($new, Braid, '$!actions', nqp::decont($actions));
        nqp::bindattr($new, Braid, '$!package', $package);
        nqp::bindattr($new, Braid, '$!slangs', nqp::hash());
        $new
    }
    method !clone() {
        my $new := nqp::create(self);
        nqp::bindattr($new, Braid, '$!grammar', $!grammar);
        nqp::bindattr($new, Braid, '$!actions', $!actions);
        nqp::bindattr($new, Braid, '$!package', $!package);
        nqp::bindattr($new, Braid, '$!slangs', nqp::clone($!slangs));
        $new
    }
    method !switch($name) {
        nqp::bindattr(self, Braid, '$!grammar', nqp::decont($!slangs{$name}));
        nqp::bindattr(self, Braid, '$!actions', nqp::decont($!slangs{$name ~ '-actions'}));
        self
    }
    method !dump($tag) {
        note(nqp::sprintf("Braid %x in %s", [nqp::objectid(self), $tag]));
        note("  grammar: " ~ $!grammar.HOW.name($!grammar));
        note("  actions: " ~ $!actions.HOW.name($!actions));
        note("  package: " ~ $!package.HOW.name($!package));
        for $!slangs {
            note("    " ~ $_.key ~ ' ' ~ $_.value.HOW.name($_.value) ~ (nqp::isconcrete($_.value) ?? ":D" !! ":U"));
        }
        self
    }
}

#- NQPdidMATCH -----------------------------------------------------------------
my class NQPdidMATCH is export { method Bool() { 1 } }

#- NQPMatchRole ----------------------------------------------------------------
role NQPMatchRole is export {
    has int $!from;  # start position of match
    has int $!pos;   # current cursor position
    has int $!to;    # (if negative, use $!pos)
    has $!shared;    # shared parse attributes, see ParseShared
    has $!braid;     # current braid
    has $!bstack;    # backtracking stack
    has $!cstack;    # captures stack
    has $!regexsub;  # actual sub for running the regex
    has $!restart;   # sub for restarting a search
    has $!made;      # value set by "make"
    has $!match;     # flag indicating Match object set up (NQPdidMATCH)
    has str $!name;  # name if named capture

    method orig()   { nqp::getattr($!shared, ParseShared, '$!orig') }
    method target() { nqp::getattr_s($!shared, ParseShared, '$!target') }
    method from()   { $!from }
    method pos()    { $!pos }
    method to()     { $!to < 0 ?? $!pos !! $!to }
    method CURSOR() { self }

    method PRECURSOR() {
        self."!cursor_init"(
          nqp::getattr_s($!shared, ParseShared, '$!target'), :p($!from)
        )
    }

    method Str() {
        my int $from := $!from;
        $!pos >= $from
          ?? nqp::substr(
               nqp::getattr_s($!shared, ParseShared, '$!target'),
               $from,
               nqp::sub_i(self.to, $from)
             )
          !! ''
    }
    method chars() {
        my int $from := $!from;
        $!pos >= $from ?? nqp::sub_i(self.to, $from) !! 0
    }

    method Num()  { nqp::numify(self.Str) }
    method Int()  { self.Str.Int }
    method Bool() { $!pos >= $!from }

    method make($made)  { $!made := $made }
    method made()       { $!made }
    method ast()        { $!made }  # for historical reasons

    method dump($indent?) {
        $indent := 0 unless nqp::defined($indent);

        if self.Bool {
            my $chunks := nqp::list_s;

            my sub dump_match($key, $value) {
                nqp::push_s($chunks, nqp::x(' ', $indent));
                nqp::push_s($chunks, '- ');
                nqp::push_s($chunks, ~$key);
                nqp::push_s($chunks, ': ');

                nqp::push_s($chunks, nqp::can($value, 'Str')
                  ?? $value.Str
                  !! $value.HOW.name($value) eq 'BOOTStr'
                    ?? $value
                    !! '<object> isa ' ~ $value.HOW.name($value)
                );

                nqp::push_s($chunks, "\n");
                if nqp::can($value, 'dump') {
                    nqp::push_s($chunks, nqp::eqaddr($value, self)
                      ?? nqp::x(' ', $indent + 2) ~ "- <self-reference>\n"
                      !! $value.dump($indent + 2));
                }
            }

            my sub dump_match_array($key, @matches) {
                nqp::push_s($chunks, nqp::x(' ', $indent));
                nqp::push_s($chunks, '- ');
                nqp::push_s($chunks, ~$key);
                nqp::push_s($chunks, ': ');
                nqp::push_s($chunks, ~+@matches);
                nqp::push_s($chunks, " matches\n");
                for @matches {
                    nqp::push_s($chunks, $_.dump($indent + 2));
                }
            }

            my int $i;
            for self.list {
                $_
                  ?? nqp::islist($_)
                    ?? dump_match_array($i, $_)
                    !! dump_match($i, $_)
                  !! dump_match($i, ' isa ' ~ $_.HOW.name($_));
                ++$i;
            }

            for self.hash {
                my $k := $_.key;
                my $v := $_.value;
                $v
                  ?? nqp::islist($v)
                    ?? dump_match_array($k, $v)
                    !! dump_match($k, $v)
                  !! dump_match($k, ' isa ' ~ $v.HOW.name($v));
            }

            nqp::join('', $chunks);
        }
        else {
            nqp::x(' ', $indent) ~ "- NO MATCH\n";
        }
    }

    method !dump_str($key) {

        my $chunks := nqp::list_s(
          $key, ': ', nqp::escape(self.Str), ' @ ',  self.from,  "\n"
        );

        sub dump_array($key, $item) {
            if nqp::istype($item, NQPCapture) {
                nqp::push_s($chunks, $item."!dump_str"($key));
            }
            elsif nqp::islist($item) {
                nqp::push_s($chunks, "$key: list\n");
                my int $n;
                for $item {
                    dump_array($key ~ "[$n]", $_);
                    ++$n;
                }
            }
        }

        my int $n;
        for self.list {
            dump_array($key ~ '[' ~ $n ~ ']', $_);
            ++$n;
        }
        for self.hash {
            dump_array($key ~ '<' ~ $_.key ~ '>', $_.value);
        }
        
        nqp::join("", $chunks)
    }

    # delegations to braid
    method slangs() {
#        nqp::die("No braid in slangs!") unless $!braid;
        nqp::getattr($!braid, Braid, '$!slangs')
    }

    method slang_grammar($name) {
#        nqp::die("No braid in grammar!") unless $!braid;
        nqp::atkey(nqp::getattr($!braid, Braid, '$!slangs'),$name);
    }

    method slang_actions($name) {
#        nqp::die("No braid in actions!") unless $!braid;
        nqp::atkey(nqp::getattr($!braid, Braid, '$!slangs'),$name ~ "-actions");
    }

    method define_slang($name,$grammar,$actions = nqp::null) {
#        nqp::die("No braid in define_slang!") unless $!braid;
        nqp::bindkey(nqp::getattr($!braid, Braid, '$!slangs'),$name, $grammar);
        nqp::bindkey(nqp::getattr($!braid, Braid, '$!slangs'),$name ~ "-actions", $actions) unless nqp::isnull($actions);
        self
    }

    method refine_slang($name,$grole,$arole = nqp::null) {
        # nqp::die("No braid in define_slang!") unless $!braid;
	    my $slangs := nqp::getattr($!braid, Braid, '$!slangs');
	    my $tmp := nqp::atkey($slangs,$name);
        nqp::bindkey($slangs,$name, $tmp.HOW.mixin($tmp, $grole));

        unless nqp::isnull($arole) {
            $name := $name ~ '-actions';
	        $tmp  := nqp::atkey($slangs,$name);
	        nqp::bindkey($slangs,$name, $tmp.HOW.mixin($tmp, $arole));
        }
        self
    }

    method switch_to_slang($name) {
#        nqp::die("No braid in switch_to_slang!") unless $!braid;
        $!braid."!switch"($name);
        self
    }

    method check_PACKAGE_oopsies($tag?) {
        nqp::die("No braid!") unless $!braid;
        my $value := $*PACKAGE;
        my $bvalue := nqp::getattr($!braid, Braid, '$!package');
        if nqp::isnull($bvalue) || nqp::objectid($bvalue) != nqp::objectid($value) {
            my $target := nqp::getattr_s($!shared, ParseShared, '$!target');
            my $ERR := NQPFileHandle.new.wrap(nqp::getstderr());
            $ERR.say("Out-of-sync package detected in " ~ ($tag || '') ~ " at " ~ nqp::substr($target, $!pos-10, 30) ~ "");
            $ERR.say("  (value in braid: " ~ $bvalue.HOW.name($bvalue) ~ ", value in \$*PACKAGE: " ~ $value.HOW.name($value) ~ ")")
                unless nqp::isnull($bvalue);
            # nqp::die("croak");
            nqp::bindattr($!braid, Braid, '$!package', $value);
        }
        self
    }

    method check_LANG_oopsies($tag?) {
        nqp::die("No braid!") unless $!braid;
        for %*LANG {
            my $name := $_.key;
            my $value := $_.value;
            my $bvalue := nqp::atkey(nqp::getattr($!braid, Braid, '$!slangs'),$name);
            if nqp::isnull($bvalue) || nqp::objectid($bvalue) != nqp::objectid($value) {
                my $ERR := NQPFileHandle.new.wrap(nqp::getstderr());
                $ERR.say("Deprecated use of %*LANG\<$name> assignment detected in " ~ ($tag || '') ~ "; module should export syntax using \$*LANG.define_slang(\"$name\",<grammar>,<actions>) instead")
                    unless nqp::index($name,"-actions") > 0;
                $ERR.say("  (value in braid: " ~ $bvalue.HOW.name($bvalue) ~ ", value in %*LANG: " ~ $value.HOW.name($value) ~ ")")
                    unless nqp::isnull($bvalue);
            }
        }
        self
    }

    method grammar() {
#        nqp::die("No braid!") unless $!braid;
        nqp::getattr($!braid, Braid, '$!grammar')
    }

    method actions() {
#        nqp::die("No braid!") unless $!braid;
        nqp::getattr($!braid, Braid, '$!actions')
    }

    method set_actions($actions) {
#        nqp::die("No braid in set_actions!") unless $!braid;
        nqp::bindattr($!braid, Braid, '$!grammar', self);
        nqp::bindattr($!braid, Braid, '$!actions', nqp::decont($actions));
        self
    }

    method package() {
#        nqp::die("No braid!") unless $!braid;
#        self.check_PACKAGE_oopsies('package');
        nqp::getattr($!braid, Braid, '$!package');
    }

    method set_package($package) {
#        nqp::die("No braid!") unless $!braid;
        nqp::bindattr($!braid, Braid, '$!package', $package);
    }

    # For now, we simply forbid overlap between slang and pragma names.
    # Could do some namespace isolation here if it ever becomes an issue.
    method pragma($name) {
        nqp::atkey(nqp::getattr($!braid, Braid, '$!slangs'),$name);
    }

    method set_pragma($name,$value) {
        nqp::bindkey(nqp::getattr($!braid, Braid, '$!slangs'),$name, $value);
        self;
    }

    method how($name) {
        nqp::atkey(nqp::getattr($!braid, Braid, '$!slangs'),"H:$name");
    }

    method set_how($name,$value) {
        nqp::bindkey(nqp::getattr($!braid,Braid,'$!slangs'), "H:$name", $value);
        self
    }

    method know_how($name) {
        nqp::existskey(nqp::getattr($!braid, Braid, '$!slangs'),"H:$name");
    }

    method braid() { $!braid }
    method set_braid_from($other) {
        nqp::bindattr(self, $?CLASS, '$!braid', $other.braid);
        self
    }
    method clone_braid_from($other) {
        nqp::bindattr(self, $?CLASS, '$!braid', $other.braid."!clone"());
        self
    }

    method snapshot_braid() { $!braid."!clone"() }
    method set_braid($braid) {
        nqp::bindattr(self, $?CLASS, '$!braid', $braid);
        self
    }

    method prune() {
#        $!match    := NQPMu;
        $!bstack   := NQPMu;
#        $!cstack   := NQPMu;
        $!regexsub := NQPMu;
    }

#    method AOK($actions, $where) {
#        my $got := self.actions();
#        if nqp::objectid($got) != nqp::objectid($actions) {
#            note("actions bad in $where (expected " ~ $actions.HOW.name($actions) ~ " but got " ~ $got.HOW.name($got) ~ ")");
#        }
#        self;
#    }

    method !cursor_init(
      $orig,
      :$p = 0,
      :$c,
      :$shared,
      :$braid,
      :$build,
      :$fail_cursor,
      *%ignore
    ) {
        my $new := $build ?? self !! nqp::create(self);
        unless $shared {
            $shared := nqp::create(ParseShared);
            nqp::bindattr($shared, ParseShared, '$!CUR_CLASS', $?CLASS);
            nqp::bindattr($shared, ParseShared, '$!orig', nqp::decont($orig));
            nqp::bindattr_s($shared, ParseShared, '$!target', nqp::indexingoptimized($orig));
            nqp::bindattr_i($shared, ParseShared, '$!highwater', 0);
            nqp::bindattr($shared, ParseShared, '@!highexpect', nqp::list_s);
            nqp::bindattr($shared, ParseShared, '%!marks', nqp::hash);
        }
        nqp::bindattr($new, $?CLASS, '$!shared', $shared);
        nqp::bindattr($new, $?CLASS, '$!braid',
          $braid
            ?? $braid
            !! nqp::isconcrete(self) && $!braid
              # usually called when switching into a slang
              ?? $!braid."!clone"()
              !! Braid."!braid_init"(:grammar(self))
        );

        if nqp::isconcrete($c) {
            nqp::bindattr_i($new, $?CLASS, '$!from', -1);
            nqp::bindattr_i($new, $?CLASS, '$!pos', nqp::unbox_i($c));
        }
        elsif nqp::isconcrete($p) {
            nqp::bindattr_i($new, $?CLASS, '$!from', nqp::unbox_i($p));
            nqp::bindattr_i($new, $?CLASS, '$!pos', nqp::unbox_i($p));
        }
        elsif $build {
            nqp::bindattr_i($new, $?CLASS, '$!from', 0);
            nqp::bindattr_i($new, $?CLASS, '$!pos', 0);
        }

        # delegates to $!pos if negative
        nqp::bindattr_i($new, $?CLASS, '$!to', -1);

        nqp::bindattr($shared, ParseShared, '$!fail_cursor',
          nqp::isconcrete($fail_cursor)
            ?? $fail_cursor
            !! $new.'!cursor_start_cur'()
        );

        $new
    }

    # Starts a new Cursor, returning all information relating to it in an
    # array.  The array is valid until the next call to !cursor_start_all.
    my $NO_RESTART := 0;
    my $RESTART    := 1;

    method !cursor_start_all() {
        my $new := nqp::create(self);
        my $sub := nqp::callercode;

        # Uncomment following to log cursor creation.
        #$!shared.log_cc(nqp::getcodename($sub));
        nqp::bindattr($new, $?CLASS, '$!shared', $!shared);

        nqp::bindattr($new, $?CLASS, '$!braid', nqp::isconcrete(self)
          ?? $!braid
          !! Braid."!braid_init"()
        );
        nqp::bindattr($new, $?CLASS, '$!regexsub', nqp::ifnull(
          nqp::getcodeobj($sub),
          $sub
        ));

        if nqp::defined($!restart) {
            nqp::bindattr_i($new, $?CLASS, '$!pos', $!pos);
            nqp::bindattr_i($new, $?CLASS, '$!to', -1);
            nqp::bindattr(  $new, $?CLASS, '$!cstack', nqp::clone($!cstack))
              if $!cstack;

            nqp::list(
              $new,
              nqp::getattr_s($!shared, ParseShared, '$!target'),
              nqp::bindattr_i($new, $?CLASS, '$!from', $!from),
              $?CLASS,
              nqp::bindattr($new, $?CLASS, '$!bstack', nqp::clone($!bstack)),
              $RESTART
            )
        }

        else {
            nqp::bindattr_i($new, $?CLASS, '$!pos', -3);
            nqp::bindattr_i($new, $?CLASS, '$!to', -1);

            nqp::list(
              $new,
              nqp::getattr_s($!shared, ParseShared, '$!target'),
              nqp::bindattr_i($new, $?CLASS, '$!from', $!pos),
              $?CLASS,
              nqp::bindattr($new, $?CLASS, '$!bstack', nqp::list_i),
              $NO_RESTART
            )
        }
    }

    # Starts a new Cursor or restarts an existing one. Returns the newly
    # created Cursor.
    method !cursor_start() {
        my $new := nqp::create(self);
        my $sub := nqp::callercode();

        # Uncomment following to log cursor creation.
        #$!shared.log_cc(nqp::getcodename($sub));

        nqp::bindattr($new, $?CLASS, '$!shared', $!shared);
        nqp::bindattr($new, $?CLASS, '$!braid',  $!braid);
        nqp::bindattr($new, $?CLASS, '$!regexsub',
          nqp::ifnull(nqp::getcodeobj($sub), $sub)
        );

        if nqp::defined($!restart) {
            nqp::bindattr_i($new, $?CLASS, '$!from',   $!from);
            nqp::bindattr_i($new, $?CLASS, '$!pos',    $!pos);
            nqp::bindattr(  $new, $?CLASS, '$!bstack', $!bstack);
            nqp::bindattr(  $new, $?CLASS, '$!cstack', nqp::clone($!cstack))
              if $!cstack;

            nqp::bindattr(  self, $?CLASS, '$!bstack', nqp::null);
        }
        else {
            nqp::bindattr_i($new, $?CLASS, '$!from',   $!pos      );
            nqp::bindattr_i($new, $?CLASS, '$!pos',    -3         );
            nqp::bindattr(  $new, $?CLASS, '$!bstack', nqp::list_i);
        }

        nqp::bindattr_i($new, $?CLASS, '$!to', -1);
        $new
    }

    # Starts a new cursor, returning nothing but the cursor.
    method !cursor_start_cur() {
        nqp::die("!cursor_start_cur cannot restart a cursor")
          if nqp::defined($!restart);

        my $new := nqp::create(self);
        my $sub := nqp::callercode();

        # Uncomment following to log cursor creation.
        #$!shared.log_cc(nqp::getcodename($sub));

        nqp::bindattr($new, $?CLASS, '$!shared', $!shared);
        nqp::bindattr($new, $?CLASS, '$!braid',  $!braid);
        nqp::bindattr($new, $?CLASS, '$!regexsub',
          nqp::ifnull(nqp::getcodeobj($sub), $sub)
        );
        nqp::bindattr_i($new, $?CLASS, '$!from',   $!pos);
        nqp::bindattr_i($new, $?CLASS, '$!pos',    -3);
        nqp::bindattr_i($new, $?CLASS, '$!to',     -1);
        nqp::bindattr(  $new, $?CLASS, '$!bstack', nqp::list_i);
        $new
    }

    method !cursor_start_fail() {
        nqp::getattr($!shared, ParseShared, '$!fail_cursor');
    }

    method !cursor_start_subcapture($from) {
        my $new := nqp::create(self);
        nqp::bindattr(  $new, $?CLASS, '$!shared', $!shared);
        nqp::bindattr(  $new, $?CLASS, '$!braid',  $!braid);
        nqp::bindattr_i($new, $?CLASS, '$!from',   $from);
        nqp::bindattr_i($new, $?CLASS, '$!pos',    -3);
        nqp::bindattr_i($new, $?CLASS, '$!to',     -1);
        $new;
    }

    method !cursor_capture($capture, str $name) {
        $!match  := nqp::null();
        my $cstack := nqp::defined($!cstack)
          ?? $!cstack
          !! ($!cstack := nqp::list);

        nqp::push($cstack, $capture);
        nqp::bindattr_s($capture, $?CLASS, '$!name', $name);

        my $bstack := $!bstack;
        nqp::push_i($bstack, 0);
        nqp::push_i($bstack, $!pos);
        nqp::push_i($bstack, 0);
        nqp::push_i($bstack, nqp::elems($cstack));

        $cstack
    }

    method !cursor_push_cstack($capture) {
        my $cstack := $!cstack;

        if nqp::not_i(nqp::defined($cstack)) {
            $cstack := $!cstack := nqp::list($capture);
        }
        elsif nqp::elems($cstack) == 0 {
            nqp::push($cstack, $capture);
        }
        elsif nqp::not_i(nqp::isnull($capture)) {
            if nqp::isnull_s(nqp::getattr_s($capture, $?CLASS, '$!name')) {
                 nqp::isnull_s(
                  nqp::getattr_s(nqp::atpos($cstack,-1), $?CLASS, '$!name')
                )
                  # $top anon capture just used for pos advancement, so
                  # update it in place.  We replace the whole capture
                  # because jvm can't seem to copy only the pos, and
                  # because the chances are that both captures are in
                  # the nursury anyway.
                  ?? nqp::bindpos($cstack, -1, $capture)
                  # top capture anonymous enough to be reused
                  !! nqp::push($cstack, $capture);
            }

            # capture has a name
            else {
                nqp::push($cstack, $capture);
            }
        }

        $cstack
    }

    my $pass_mark := 1; # NQP has no constant table yet
    method !cursor_pass(int $pos, str $name = '', :$backtrack) {
        $!match   := $pass_mark;
        $!pos     := $pos;
        $backtrack
          ?? ($!restart := $!regexsub)
          !! ($!bstack   := nqp::null);
        $name
          ?? self.'!reduce'($name)
          !! self
    }

    # Version of !cursor_pass where we don't do the reduce, because it is
    # separately code-gen'd
    method !cursor_pass_no_reduce(int $pos, :$backtrack) {
        $!match   := $pass_mark;
        $!pos     := $pos;
        $backtrack
          ?? ($!restart := $!regexsub)
          !! ($!bstack   := nqp::null);
        self
    }

    # Reduced functionality version of !cursor_pass
    method !cursor_pass_quick(int $pos) {
        $!match  := $pass_mark;
        $!pos    := $pos;
        $!bstack := nqp::null;
        self;
    }

    # A cursor that always fails
    method !cursor_fail() {
        $!match    :=
        $!bstack   :=
        $!cstack   :=
        $!regexsub := nqp::null;
        $!pos      := -3;
    }

    method !cursor_pos(int $pos) {
        $!pos := $pos;
    }

    method !cursor_next() {
        if nqp::defined($!restart) {
            $!restart(self);
        }
        else {
            my $cur := self."!cursor_start_cur"();
            $cur."!cursor_fail"();
            $cur
        }
    }

    method !cursor_more(*%opts) {
        if nqp::atkey(%opts, 'ex') {
            self."!cursor_next"()
        }
        else {
            my $new := self.CREATE();
            nqp::bindattr(  $new, $?CLASS, '$!shared', $!shared);
            nqp::bindattr(  $new, $?CLASS, '$!braid',  $!braid);
            nqp::bindattr_i($new, $?CLASS, '$!from',   -1);
            nqp::bindattr_i($new, $?CLASS, '$!pos',
              nqp::atkey(%opts, 'ov') || $!from >= $!pos
                ?? $!from + 1
                !! $!pos
            );
            nqp::bindattr_i($new, $?CLASS, '$!to', -1);
            $!regexsub($new)
        }
    }

    method !clone_match_at($term, int $pos) {
        my $new := self.'!cursor_start_cur'();
        $new.'!cursor_pass_quick'($pos);

        nqp::bindattr_i($new, NQPMatch,   '$!pos',
          $pos);
        nqp::bindattr_i($new, NQPMatch,   '$!from',
          nqp::getattr_i($term, NQPMatch, '$!from'));
        nqp::bindattr_i($new, NQPMatch,   '$!to',
          nqp::getattr_i($term, NQPMatch, '$!to' ));
        nqp::bindattr(  $new, NQPMatch,   '$!made',
          nqp::getattr($term, NQPMatch,   '$!made'));
        nqp::bindattr(  $new, NQPCapture, '@!list',
          nqp::getattr($term, NQPCapture, '@!list'));
        nqp::bindattr(  $new, NQPCapture, '%!hash',
          nqp::getattr($term, NQPCapture, '%!hash' ));
        nqp::bindattr(  $new, NQPMatch,   '$!match',
          nqp::getattr($term, NQPMatch,   '$!match'));

        $new
    }

    method !reduce(str $name) {
        my $actions := self.actions;
        unless nqp::isnull($actions) {
            my $method := nqp::tryfindmethod($actions, $name);
            $method($actions, self.MATCH) unless nqp::isnull($method);
        }
        self
    }

    method !reduce_with_match(str $name, str $key, $match) {
        my $actions := self.actions;
        unless nqp::isnull($actions) {
            my $method := nqp::tryfindmethod($actions, $name);
            $method($actions, $match, $key) unless nqp::isnull($method);
        }
        self
    }

    method !shared_type() { ParseShared }
    method !shared()      { $!shared    }
    method !braid()       { $!braid     }

    my $EMPTY := nqp::list;
    method !protoregex($name) {
        # Obtain and run NFA.
        my $shared  := $!shared;
        my int $pos := $!pos;
        my $nfa     := self.HOW.cache_get(self, $name);

        if nqp::isnull($nfa) {
            $nfa := self.'!protoregex_nfa'($name);
            self.HOW.cache_add(self, $name, $nfa);
        }

        my @fates := $nfa.run(
          nqp::getattr_s($shared, ParseShared, '$!target'), $pos
        );

        # Update highwater mark.
        nqp::bindattr_i($shared, ParseShared, '$!highwater', $pos)
          if $pos > nqp::getattr_i($shared, ParseShared, '$!highwater');

        # Visit rules in fate order.
        my @rxfate := nqp::atpos($nfa.states, 0);
        my $cur;
        my $rxname;

        # Check all the fates
        while nqp::elems(@fates) {
            $rxname := nqp::atpos(@rxfate, nqp::pop_i(@fates));
            # note("invoking $rxname");
            $cur    := self."$rxname"();
            @fates  := $EMPTY if nqp::getattr_i($cur, $?CLASS, '$!pos') >= 0;
        }

        $cur // nqp::getattr($shared, ParseShared, '$!fail_cursor');
    }

    method !protoregex_nfa($name) {
        my $protorx := self.HOW.cache(
          self, "!protoregex_table", { self."!protoregex_table"() }
        );
        my $nfa   := QRegex::NFA.new;
        my @fates := nqp::atpos($nfa.states, 0);

        my int $start := 1;
        my int $fate;
        my $rxes := nqp::atkey($protorx, $name);
        unless nqp::isnull($rxes) {
            my int $m := nqp::elems($rxes);
            my int $i;
            while $i < $m {
                my $rxname := nqp::atpos($rxes, $i);
                ++$fate;
                $nfa.mergesubrule($start, 0, $fate, self, $rxname);
                nqp::bindpos(@fates, $fate, $rxname);  # override default fate #
                ++$i;
            }
        }

        $nfa.optimize
    }

    method !protoregex_table() {
        my %protorx;
        my $methods := self.HOW.methods(self);

        my int $m := nqp::elems($methods);
        my int $i;
        while $i < $m {
            my str $name   := nqp::atpos($methods, $i).name;
            my int $sympos := nqp::index($name, ':');
            if $sympos > 0 {
                my str $prefix := nqp::substr($name, 0, $sympos);
                nqp::push(
                  nqp::ifnull(
                    nqp::atkey(%protorx, $prefix),
                    nqp::bindkey(%protorx, $prefix, nqp::list)
                  ),
                  $name
                );
            }
            ++$i;
        }
        %protorx;
    }

    method !alt(int $pos, str $name, @labels = []) {
        # Update highwater mark.
        my $shared := $!shared;
        nqp::bindattr_i($shared, ParseShared, '$!highwater', $pos)
          if $pos > nqp::getattr_i($shared, ParseShared, '$!highwater');

        # Evaluate the alternation.
        nqp::ifnull(
          self.HOW.cache_get(self, $name),
          self.HOW.cache_add(self, $name, self.'!alt_nfa'($!regexsub, $name))
        ).run_alt(
          nqp::getattr_s($shared, ParseShared, '$!target'),
          $pos, $!bstack, $!cstack, @labels
        )
    }

    method !alt_nfa($regex, str $name) {
        my $nfa     := QRegex::NFA.new;
        my $altnfas := $regex.ALT_NFA($name);

        my int $start := 1;
        my int $m     := nqp::elems($altnfas);
        my int $fate;
        while $fate < $m {
            $nfa.mergesubstates(
              $start, 0, $fate, nqp::atpos($altnfas, $fate), self
            );
            ++$fate;
        }

        $nfa.optimize
    }

    method !precompute_nfas() {
        # Pre-compute all of the proto-regex NFAs.
        my %protorx := self.HOW.cache(
          self, "!protoregex_table", { self."!protoregex_table"() }
        );
        for %protorx {
            self.HOW.cache(self, $_.key, { self.'!protoregex_nfa'($_.key) });
        }

        # Pre-compute all the alternation NFAs.
        sub precomp_alt_nfas($method) {
            if nqp::can($method, 'ALT_NFAS') {
                for $method.ALT_NFAS -> $name {
                    self.HOW.cache(
                       self, ~$name, { self.'!alt_nfa'($method, $name.key) }
                    );
                }
            }
        }

        my $methods := self.HOW.methods(self);
        my int $m   := nqp::elems($methods);
        my int $i;
        while $i < $m {
            my $method := nqp::atpos($methods, $i);
            precomp_alt_nfas($method);

            if nqp::can($method, 'NESTED_CODES') {
                my $codes := $method.NESTED_CODES;
                my int $n := nqp::elems($codes);
                my int $j;
                while $j < $n {
                    precomp_alt_nfas(nqp::atpos($codes, $j));
                    ++$j;
                }
            }
            ++$i;
        }
    }

    method !dba(int $pos, str $dba) {
        my $shared        := $!shared;
        my int $highwater := nqp::getattr_i($shared,ParseShared,'$!highwater');
        if $pos >= $highwater {
            my $highexpect := nqp::getattr($shared,ParseShared,'@!highexpect');
            if $pos > $highwater {
                nqp::setelems($highexpect, 0);
                nqp::bindattr_i($shared, ParseShared, '$!highwater', $pos);
            }
            nqp::push_s($highexpect, $dba);
        }
        NQPMu
    }

    method !highwater() {
        nqp::getattr_i($!shared, ParseShared, '$!highwater')
    }

    method !highexpect() {
        nqp::getattr($!shared, ParseShared, '@!highexpect')
    }

    method !fresh_highexpect() {
        my @old := nqp::getattr($!shared, ParseShared, '@!highexpect');
        nqp::bindattr($!shared, ParseShared, '@!highexpect', nqp::list_s);
        @old
    }

    method !set_highexpect(@highexpect) {
        nqp::bindattr($!shared, ParseShared, '@!highexpect', @highexpect)
    }

    method !clear_highwater() {
        nqp::setelems(
          nqp::getattr($!shared, ParseShared, '@!highexpect'), 0
        );
        nqp::bindattr_i($!shared, ParseShared, '$!highwater', -1)
    }

    method !BACKREF($name) {
        my $cursor := self."!cursor_start_cur"();
        my $cstack := $!cstack;

        my int $n := $cstack ?? nqp::elems($cstack) !! 0;
        my $last;
        my $first;
        while --$n >= 0 {
            my     $cs_cursor := nqp::atpos($cstack, $n);
            my str $cs_name   := nqp::getattr_s($cs_cursor, $?CLASS, '$!name');
#?if jvm
            # https://github.com/Raku/nqp/issues/808: Inline functionality
            # of &has_aliased_name to avoid error "Can not invoke object".
            my int $found_name := 0;
            if !nqp::isnull_s($cs_name) {
                if $cs_name eq $name {
                    $found_name := 1;
                }
                elsif nqp::index($cs_name, '=') {
                    my @names := nqp::split('=', $cs_name);
                    for @names {
                        if $_ eq $name {
                            $found_name := 1;
                            last;
                        }
                    }
                }
            }
            if $found_name {
#?endif
#?if !jvm
            if nqp::not_i(nqp::isnull_s($cs_name))
              && ($cs_name eq $name
                   || nqp::index($cs_name, '=') > 0
                   && has_aliased_name($cs_name, $name)
                 ) {
#?endif
                if nqp::isconcrete($last) {
                    last unless $cs_cursor.pos == $first.from;
                }
                else {
                    $last := $cs_cursor;
                }
                $first := $cs_cursor;
            }
        }

        if nqp::isconcrete($last) {
            my int $from   := $first.from;
            my int $litlen := $last.pos - $from;
            my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');

            $cursor."!cursor_pass_quick"($!pos + $litlen)
              if nqp::substr($target, $!pos, $litlen)
                   eq nqp::substr($target, $from, $litlen);
        }

        $cursor
    }

    method !BACKREF-LATEST-CAPTURE($name) {
        my $cursor := self."!cursor_start_cur"();
        my $cstack := $!cstack;

        my int $n := $cstack ?? nqp::elems($cstack) !! 0;
        my $subcursor;

        while --$n >= 0 {
            $subcursor := nqp::atpos($cstack, $n);
            my str $cs_name := nqp::getattr_s($subcursor, $?CLASS, '$!name');
            last if nqp::not_i(nqp::isnull_s($cs_name))
                 && $cs_name eq $name;
        }

        if $n >= 0 {
            my int $litlen := $subcursor.pos - $subcursor.from;
            my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');

            $cursor."!cursor_pass_quick"($!pos + $litlen)
              if nqp::substr($target, $!pos, $litlen)
                   eq nqp::substr($target, $subcursor.from, $litlen);
        }

        $cursor
    }

    method !LITERAL($strish, int $i = 0) {

        if nqp::isconcrete($strish) {
            my str $str    := $strish;
            my int $litlen := nqp::chars($str);
            my int $pos    := $!pos;
            my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');

            if $litlen < 1 ||
#?if jvm
                ($i ?? nqp::lc(nqp::substr($target, $pos, $litlen)) eq nqp::lc($str)
#?endif
#?if js
                ($i ?? nqp::lc(nqp::substr($target, $pos, $litlen)) eq nqp::lc($str)
#?endif
#?if moar
                ($i ?? nqp::eqatic($target, $str, $pos)
#?endif
                    !! nqp::eqat($target, $str, $pos)) {
                self."!cursor_start_cur"()."!cursor_pass_quick"($pos + $litlen);
            }
            else {
                nqp::getattr($!shared, ParseShared, '$!fail_cursor');
            }
        }
        else {
            nqp::getattr($!shared, ParseShared, '$!fail_cursor');
        }
    }

    method !DYNQUANT_LIMITS($mm) {
        if nqp::islist($mm) {
            +$mm > 1 ?? nqp::list_i($mm[0], $mm[1]) !! nqp::list_i($mm[0], $mm[0])
        }
        else {
            nqp::list_i($mm, $mm)
        }
    }

    method !DELEGATE_ACCEPTS($obj, $arg) {
        (my $delegate-override := nqp::findmethod($?CLASS, 'DELEGATE-ACCEPTS'))
            ?? $delegate-override($?CLASS, $obj, $arg)
            !! $obj.ACCEPTS($arg) ?? 1 !! 0
    }

    method at(int $pos) {
        my $cursor := self."!cursor_start_cur"();
        $pos == $!pos
          ?? $cursor."!cursor_pass_quick"($pos)
          !! $cursor
    }

    method same() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        # no other side to compare to
        if $pos < 1 || $pos >= nqp::chars($target) {
            nqp::getattr($!shared, ParseShared, '$!fail_cursor');
        }

        # same char on both sides
        elsif nqp::eqat($target, nqp::substr($target, $pos, 1), $pos - 1) {
            self."!cursor_start_cur"()."!cursor_pass"($pos, 'same');
        }

        # different chars on both sides
        else {
            nqp::getattr($!shared, ParseShared, '$!fail_cursor');
        }
    }

    method before($regex, $off = 0) {
        my $*SUPPOSING := 1;

        my $shared  := $!shared;
        my int $pos := $!pos;

        # Save and clear current expectations
        my int $orig_highwater :=
          nqp::getattr_i($shared, ParseShared, '$!highwater');
        my $orig_highexpect :=
          nqp::getattr($shared, ParseShared, '@!highexpect');
        nqp::bindattr($shared, ParseShared, '@!highexpect', nqp::list_s);

        my $cursor  := self."!cursor_start_cur"();
        nqp::bindattr_i($cursor, $?CLASS, '$!pos', $pos - $off);

        $pos >= $off
          && nqp::getattr_i($regex($cursor), $?CLASS, '$!pos') >= 0
          ?? $cursor."!cursor_pass"($pos, 'before')
          !! nqp::bindattr_i($cursor, $?CLASS, '$!pos', -3);

        # Restore expectations
        nqp::bindattr_i($shared, ParseShared, '$!highwater',  $orig_highwater);
        nqp::bindattr(  $shared, ParseShared, '@!highexpect', $orig_highexpect);

        $cursor
    }

    # Expects to get a regex whose syntax tree was flipped during the
    # compile.
    method after($regex) {
        my $*SUPPOSING         := 1;

        my $shared  := $!shared;
        my int $pos := $!pos;

        # Save and clear current expectations
        my int $orig_highwater :=
          nqp::getattr_i($shared, ParseShared, '$!highwater');
        my $orig_highexpect :=
          nqp::getattr($shared, ParseShared, '@!highexpect');
        nqp::bindattr($shared, ParseShared, '@!highexpect', nqp::list_s);

        # Make sure we have a flipped string
        my str $flipped :=
          nqp::getattr_s($shared, ParseShared, '$!target_flipped');
        $flipped := nqp::bindattr_s(
          $shared, ParseShared, '$!target_flipped',
          nqp::flip(nqp::getattr_s($shared, ParseShared, '$!target'))
        ) if nqp::isnull_s($flipped);

        # Set up cursor with  updated shared info with flipped string
        my $cursor := self."!cursor_start_cur"();
        my $cursor_shared := nqp::clone($shared);
        nqp::bindattr_s($cursor_shared,ParseShared,'$!target', $flipped);
        nqp::bindattr($cursor, $?CLASS, '$!shared', $cursor_shared);

        # Update positions to match flipped
        my int $cursor_pos := nqp::chars($flipped) - $pos;
        nqp::bindattr_i($cursor, $?CLASS, '$!from', $cursor_pos);
        nqp::bindattr_i($cursor, $?CLASS, '$!pos',  $cursor_pos);
        nqp::getattr_i($regex($cursor), $?CLASS, '$!pos') >= 0
          ?? $cursor."!cursor_pass"($pos, 'after')
          !! nqp::bindattr_i($cursor, $?CLASS, '$!pos', -3);

        # Restore expectations
        nqp::bindattr_i($shared, ParseShared, '$!highwater',  $orig_highwater);
        nqp::bindattr(  $shared, ParseShared, '@!highexpect', $orig_highexpect);

        $cursor
    }

    method ws() {
        # skip over any whitespace, fail if between two word chars
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my $cursor     := self."!cursor_start_cur"();
        my int $pos    := $!pos;

        if $pos >= nqp::chars($target) {
            $cursor."!cursor_pass"($pos, 'ws')
        }
        else {
          $pos < 1
            || nqp::not_i(nqp::iscclass(nqp::const::CCLASS_WORD,$target,$pos))
            || nqp::not_i(nqp::iscclass(nqp::const::CCLASS_WORD,$target,$pos-1))
            ?? $cursor."!cursor_pass"(
                 nqp::findnotcclass(
                   nqp::const::CCLASS_WHITESPACE,
                   $target, $pos, nqp::chars($target)
                 ),
                 'ws'
               )
            !! $cursor
        }
    }

    method ww() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        $pos > 0
          && $pos != nqp::chars($target)
          && nqp::iscclass(nqp::const::CCLASS_WORD, $target, $pos)
          && nqp::iscclass(nqp::const::CCLASS_WORD, $target, $pos - 1)
          ?? self."!cursor_start_cur"()."!cursor_pass"($pos, "ww")
          !! nqp::getattr($!shared, ParseShared, '$!fail_cursor')
    }

    method wb() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        my $cursor := self."!cursor_start_cur"();
        ($pos == 0 && nqp::iscclass(nqp::const::CCLASS_WORD, $target, $pos))
          || ($pos == nqp::chars($target)
                && nqp::iscclass(nqp::const::CCLASS_WORD, $target, $pos - 1))
          || nqp::iscclass(nqp::const::CCLASS_WORD, $target, $pos - 1)
               != nqp::iscclass(nqp::const::CCLASS_WORD, $target, $pos)
          ?? $cursor."!cursor_pass"($pos, "wb")
          !! $cursor
    }

    method ident() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        $pos < nqp::chars($target)
          && (nqp::ord($target, $pos) == 95
               || nqp::iscclass(nqp::const::CCLASS_ALPHABETIC, $target, $pos)
             )
          ?? self."!cursor_start_cur"()."!cursor_pass_quick"(
               nqp::findnotcclass(
                 nqp::const::CCLASS_WORD,
                 $target, $pos, nqp::chars($target)
               )
             )
          !! nqp::getattr($!shared, ParseShared, '$!fail_cursor')
    }

    method alpha() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        my $cursor := self."!cursor_start_cur"();
        $pos < nqp::chars($target)
           && (nqp::iscclass(nqp::const::CCLASS_ALPHABETIC, $target, $pos)
                 || nqp::ord($target, $pos) == 95
              )
           ?? $cursor."!cursor_pass"($pos + 1, 'alpha')
           !! $cursor
    }

    method alnum() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        my $cursor := self."!cursor_start_cur"();
        $pos < nqp::chars($target)
          && nqp::iscclass(nqp::const::CCLASS_WORD, $target, $pos)
          ?? $cursor."!cursor_pass"($pos + 1, 'alnum')
          !! $cursor
    }

    method upper() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        my $cursor := self."!cursor_start_cur"();
        $pos < nqp::chars($target)
          && nqp::iscclass(nqp::const::CCLASS_UPPERCASE, $target, $pos)
          ?? $cursor."!cursor_pass"($pos + 1, 'upper')
          !! $cursor
    }

    method lower() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        my $cursor := self."!cursor_start_cur"();
        $pos < nqp::chars($target)
          && nqp::iscclass(nqp::const::CCLASS_LOWERCASE, $target, $pos)
          ?? $cursor."!cursor_pass"($pos + 1, 'lower')
          !! $cursor
    }

    method digit() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        my $cursor := self."!cursor_start_cur"();
        $pos < nqp::chars($target)
          && nqp::iscclass(nqp::const::CCLASS_NUMERIC, $target, $pos)
          ?? $cursor."!cursor_pass"($pos + 1, 'digit')
          !! $cursor
    }

    method xdigit() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        my $cursor := self."!cursor_start_cur"();
        $pos < nqp::chars($target)
          && nqp::iscclass(nqp::const::CCLASS_HEXADECIMAL, $target, $pos)
          ?? $cursor."!cursor_pass"($pos + 1, 'xdigit')
          !! $cursor
    }

    method space() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        my $cursor := self."!cursor_start_cur"();
        $pos < nqp::chars($target)
          && nqp::iscclass(nqp::const::CCLASS_WHITESPACE, $target, $pos)
          ?? $cursor."!cursor_pass"($pos + 1, 'space')
          !! $cursor
    }

    method blank() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        my $cursor := self."!cursor_start_cur"();
        $pos < nqp::chars($target)
          && nqp::iscclass(nqp::const::CCLASS_BLANK, $target, $pos)
          ?? $cursor."!cursor_pass"($pos + 1, 'blank')
          !! $cursor
    }

    method print() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        my $cursor := self."!cursor_start_cur"();
        $pos < nqp::chars($target)
          && nqp::iscclass(nqp::const::CCLASS_PRINTING, $target, $pos)
          ?? $cursor."!cursor_pass"($pos + 1, 'print')
          !! $cursor
    }

    method cntrl() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        my $cursor := self."!cursor_start_cur"();
        $pos < nqp::chars($target)
          && nqp::iscclass(nqp::const::CCLASS_CONTROL, $target, $pos)
          ?? $cursor."!cursor_pass"($pos + 1, 'cntrl')
          !! $cursor
    }

    method punct() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        my $cursor := self."!cursor_start_cur"();
        $pos < nqp::chars($target)
          && nqp::iscclass(nqp::const::CCLASS_PUNCTUATION, $target, $pos)
          ?? $cursor."!cursor_pass"($pos + 1, 'punct')
          !! $cursor
    }

    method graph() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my int $pos    := $!pos;

        my $cursor := self."!cursor_start_cur"();
        $pos < nqp::chars($target)
          && (nqp::iscclass(nqp::const::CCLASS_ALPHANUMERIC, $target, $pos)
               || nqp::iscclass(nqp::const::CCLASS_PUNCTUATION, $target, $pos)
             )
          ?? $cursor."!cursor_pass"($pos + 1, 'graph')
          !! $cursor
    }

    method FAILGOAL($goal, $dba?) { self."!cursor_start_cur"() }
}

sub has_aliased_name(str $got, str $wanted) {
    my @names := nqp::split('=', $got);
    my int $m := nqp::elems(@names);
    my int $i;
    while $i < $m {
        nqp::atpos(@names, $i) eq $wanted
          ?? (return 1)
          !! ++$i;
    }
    0
}

#- NQPMatch --------------------------------------------------------------------
class NQPMatch is NQPCapture does NQPMatchRole {
    my @EMPTY_LIST := nqp::list;
    my %EMPTY_HASH := nqp::hash;
    my $DID_MATCH  := nqp::create(NQPdidMATCH);

    method MATCH() {
        my $match := nqp::getattr(self, NQPMatch, '$!match');
        return self unless nqp::isnull($match)
          || nqp::not_i(nqp::istype($match, NQPdidMATCH));

        # Set up basic state of (old) Match.  Internal method
        nqp::bindattr(self, NQPMatch, '$!match',
          nqp::getattr_i(self, NQPMatch, '$!pos')
            >= nqp::getattr_i(self, NQPMatch, '$!from')
            ?? $DID_MATCH
            !! nqp::null
        );

        # For captures with lists, initialize the lists.
        my $rxsub := nqp::getattr(self, NQPMatch, '$!regexsub');
        my $list  := @EMPTY_LIST;
        my $hash  := %EMPTY_HASH;
        my str $onlyname;
        my int $hascaps;
        if nqp::defined($rxsub) {
            if nqp::can($rxsub, 'CAPS') {
                my $capdesc := $rxsub.CAPS;

                if $hascaps := $capdesc.has-captures {
                    $list     := $capdesc.prepare-list;
                    $hash     := $capdesc.prepare-hash;
                    $onlyname := $capdesc.onlyname;
                }
            }
        }

        # Walk the Cursor stack and populate the Cursor.
        my $cstack := nqp::getattr(self, NQPMatch, '$!cstack');
        if nqp::isnull($cstack)
          || nqp::not_i(nqp::isconcrete($cstack))
          || nqp::elems($cstack) == 0 {
            # nothing to be done
        }

        # If there's only one destination, avoid repeated hash lookups
        elsif $onlyname {
            my int $m := nqp::elems($cstack);
            my int $i;
            my $dest :=  nqp::ord($onlyname) != 38
              && nqp::ord($onlyname) < 58
              ?? nqp::atpos($list, $onlyname)  # positional
              !! nqp::atkey($hash, $onlyname); # named

            while $i < $m {
                my $subcursor := nqp::atpos($cstack, $i);
                nqp::push($dest,$subcursor.MATCH) unless nqp::isnull_s(
                  nqp::getattr_s($subcursor, $?CLASS, '$!name')
                );
                ++$i;
            }
        }

        # Mixed captures
        elsif $hascaps {
            my int $m := nqp::elems($cstack);
            my int $i;
            while $i < $m {
                my $subcursor := nqp::atpos($cstack, $i);
                my str $name  := nqp::getattr_s($subcursor, $?CLASS, '$!name');

                if $name {
                    $subcursor.MATCH;  # setup match info

                    # <( and )> captures, yuck!
                    if $name eq '$!from' || $name eq '$!to' {
                        nqp::bindattr_i(self, NQPMatch, $name, $subcursor.from);
                    }

                    # Only a single name / index
                    elsif nqp::index($name, '=') < 0 {

                        # Positional capture.  Note that although $name is
                        # a string, it will automagically coerce to int
                        if nqp::ord($name) < 58 {
                            my $entry := nqp::atpos($list, $name);
                            nqp::islist($entry)
                              ?? nqp::push($entry, $subcursor)
                              !! nqp::bindpos($list, $name, $subcursor);
                        }

                        # Named capture
                        else {
                            my $entry := nqp::atkey($hash, $name);
                            nqp::islist($entry)
                              ?? nqp::push($entry, $subcursor)
                              !! nqp::bindkey($hash, $name, $subcursor);
                        }
                    }

                    # More than one name
                    else {
                        my $names := nqp::split('=', $name);
                        my int $n := nqp::elems($names);
                        my int $j;
                        while $j < $n {
                            my str $subname := nqp::atpos($names, $j);

                            # Positional capture.  Note that although $subname
                            # is a string, it will automagically coerce to int
                            if nqp::ord($subname) < 58 {
                                my $entry := nqp::atpos($list, $subname);
                                nqp::islist($entry)
                                  ?? nqp::push($entry, $subcursor)
                                  !! nqp::bindpos($list, $subname, $subcursor);
                            }

                            # Named capture
                            else {
                                my $entry := nqp::atkey($hash, $subname);
                                nqp::islist($entry)
                                  ?? nqp::push($entry, $subcursor)
                                  !! nqp::bindkey($hash, $subname, $subcursor);
                            }
                            ++$j;
                        }
                    }
                }
                ++$i;
            }
        }

        # Finalize the captures
        nqp::bindattr(self, NQPCapture, '@!list', $list);
        nqp::bindattr(self, NQPCapture, '%!hash', $hash);

        # Once we've produced the captures, and if we know we're finished
        # and will never be backtracked into, we can release cstack and
        # regexsub.
        unless nqp::defined(nqp::getattr(self, NQPMatch, '$!bstack')) {
            nqp::bindattr(self, NQPMatch, '$!cstack',   nqp::null);
            nqp::bindattr(self, NQPMatch, '$!regexsub', nqp::null);
        }

        self
    }

    method Bool() {
        nqp::not_i(nqp::isnull(nqp::getattr(self, $?CLASS, '$!match')))
          && nqp::istrue(nqp::getattr(self, $?CLASS, '$!match'));
    }

    method Int() {
        # XXX need a better way to do this
        my int $i := +self.Str
    }

    method parse($target, :$rule = 'TOP', :$actions, *%options) {
        my $braid := Braid.'!braid_init'(
          :grammar(self), :actions($actions), :package($*PACKAGE)
        );
        my $cursor := self.'!cursor_init'($target, :braid($braid), |%options);

#        note("Cursor.parse grammar " ~ $cur.HOW.name($cur) ~ " actions " ~ $actions.HOW.name($actions) ~ ")");
        (nqp::isinvokable($rule)
          ?? $rule($cursor).MATCH
          !! nqp::findmethod($cursor, $rule)($cursor)
        ).MATCH
    }

    method !INTERPOLATE($var, $s = 0) {

        if nqp::isinvokable($var) {
            $var(self)
        }
        else {
            my $cursor     := self.'!cursor_start_cur'();
            my int $pos    := nqp::getattr_i($cursor, $?CLASS, '$!from');
            my str $target := $cursor.target;

            if nqp::islist($var) {
                my int $maxlen := -1;
                my int $eos    := nqp::chars($target);

                my int $m := nqp::elems($var);
                my int $i;
                while $i < $m {
                    my $entry := nqp::atpos($var, $i);

                    if nqp::isinvokable($entry) {
                        if $entry(self) -> $result {
                            my int $adv :=
                              nqp::getattr_i($result, $?CLASS, '$!pos');
                            $adv    := $adv - $pos;
                            $maxlen := $adv if $adv > $maxlen;
                        }
                    }
                    else {
                        my int $len := nqp::chars($entry);
                        $maxlen := $len
                          if $len > $maxlen
                          && $pos + $len <= $eos
                          && nqp::eqat($target, $entry, $pos);
                    }

                    $s && $maxlen > -1
                      ?? (last)
                      !! ++$i;
                }
                $maxlen >= 0
                  ?? $cursor.'!cursor_pass_quick'($pos + $maxlen)
                  !! $cursor
            }

            else {
                my int $len := nqp::chars($var);
                my int $adv := $pos + $len;

                $adv > nqp::chars($target)
                  || nqp::substr($target, $pos, $len) ne $var
                  ?? $cursor
                  !! $cursor.'!cursor_pass_quick'($adv)
            }
        }
    }

    method !INTERPOLATE_REGEX($regex) {
        unless nqp::isinvokable($regex) {
            my $rxcompiler := nqp::getcomp('QRegex::P6Regex');

            if nqp::islist($regex) {
                my @result;

                my int $m  := nqp::elems($regex);
                my int $i;
                while $i < $m {
                    my $elem := nqp::atpos($regex, $i);
                    $elem := $rxcompiler.compile($elem)
                      unless nqp::isinvokable($elem);
                    nqp::push(@result, $elem);
                    ++$i;
                }
                $regex := @result;
            }
            else {
                $regex := $rxcompiler.compile($regex);
            }
        }
        self.'!INTERPOLATE'($regex);
    }
}

#- NQPRegexMethod --------------------------------------------------------------
class NQPRegexMethod {
    has $!code;

    method new($code) {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, NQPRegexMethod, '$!code', $code);
        $obj
    }
    multi method ACCEPTS(NQPRegexMethod:D $self: $target) {
        NQPMatch.parse($target, :rule(self))
    }
    multi method NOT-ACCEPTS(NQPRegexMethod:D $self: $target) {
        nqp::isfalse(NQPMatch.parse($target, :rule(self)))
    }
    method name() { nqp::getcodename($!code) }
    method Str()  { self.name                }
}

#?if !moar
nqp::setinvokespec(NQPRegexMethod, NQPRegexMethod, '$!code', nqp::null);
#?endif

#- NQPRegex --------------------------------------------------------------------
class NQPRegex is NQPRegexMethod {
    multi method ACCEPTS(NQPRegex:D $self: $target) {
        NQPMatch.parse($target, :rule(self), :c(0))
    }
    multi method NOT-ACCEPTS(NQPRegex:D $self: $target) {
        nqp::isfalse(NQPMatch.parse($target, :rule(self), :c(0)))
    }
}

#?if !moar
nqp::setinvokespec(NQPRegex, NQPRegexMethod, '$!code', nqp::null);
#?endif
