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

my class NQPdidMATCH is export { method Bool() { 1 } }

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
    method PRECURSOR() { self."!cursor_init"(nqp::getattr_s($!shared, ParseShared, '$!target'), :p($!from)) }
    method Str()       { $!pos >= $!from ?? nqp::substr(nqp::getattr_s($!shared, ParseShared, '$!target'), $!from, nqp::sub_i(self.to, $!from)) !! '' }
    method Num()       { nqp::numify(self.Str()) }
    method Int()       { self.Str().Int }
    method Bool()      { $!pos >= $!from }
    method chars()     { $!pos >= $!from ?? nqp::sub_i(self.to, $!from) !! 0 }

    method make($made)  { $!made := $made }
    method made()       { $!made }
    method ast()        { $!made }  # for historical reasons

    method dump($indent?) {
        unless nqp::defined($indent) {
            $indent := 0;
        }
        if self.Bool() {
            my @chunks;

            my sub dump_match(@chunks, $indent, $key, $value) {
                nqp::push(@chunks, nqp::x(' ', $indent));
                nqp::push(@chunks, '- ');
                nqp::push(@chunks, ~$key);
                nqp::push(@chunks, ': ');
                if nqp::can($value, 'Str') {
                    nqp::push(@chunks, $value.Str());
                }
                elsif $value.HOW.name($value) eq 'BOOTStr' {
                    nqp::push(@chunks, $value);
                }
                else {
                    nqp::push(@chunks, '<object> isa ' ~ $value.HOW.name($value));
                }
                nqp::push(@chunks, "\n");
                if nqp::can($value, 'dump') {
                    nqp::push(@chunks, nqp::eqaddr($value, self)
                        ?? nqp::x(' ', $indent + 2) ~ "- <self-reference>\n"
                        !! $value.dump($indent + 2));
                }
            }

            my sub dump_match_array(@chunks, $indent, $key, @matches) {
                nqp::push(@chunks, nqp::x(' ', $indent));
                nqp::push(@chunks, '- ');
                nqp::push(@chunks, ~$key);
                nqp::push(@chunks, ': ');
                nqp::push(@chunks, ~+@matches);
                nqp::push(@chunks, " matches\n");
                for @matches {
                    nqp::push(@chunks, $_.dump($indent + 2));
                }
            }

            my int $i := 0;
            if self.list() {
                for self.list() {
                    if $_ {
                        nqp::islist($_)
                            ?? dump_match_array(@chunks, $indent, $i, $_)
                            !! dump_match(@chunks, $indent, $i, $_);
                    }
                    else {
                        dump_match(@chunks, $indent, $i, ' isa ' ~ $_.HOW.name($_));
                    }
                    $i := $i + 1;
                }
            }
            if self.hash() {
                for self.hash() {
                    my $k := $_.key;
                    my $v := $_.value;
                    if $v {
                        nqp::islist($v)
                            ?? dump_match_array(@chunks, $indent, $k, $v)
                            !! dump_match(@chunks, $indent, $k, $v);
                    }
                    else {
                        dump_match(@chunks, $indent, $k, ' isa ' ~ $v.HOW.name($v));
                    }
                }
            }
            nqp::join('', @chunks);
        }
        else {
            nqp::x(' ', $indent) ~ "- NO MATCH\n";
        }
    }

    method !dump_str($key) {
        sub dump_array($key, $item) {
            my $str := '';
            if nqp::istype($item, NQPCapture) {
                $str := $str ~ $item."!dump_str"($key)
            }
            elsif nqp::islist($item) {
                $str      := $str ~ "$key: list\n";
                my int $n := 0;
                for $item {
                    $str := $str ~ dump_array($key ~ "[$n]", $_);
                    ++$n
                }
            }
            $str;
        }
        my $str   := $key ~ ': ' ~ nqp::escape(self.Str) ~ ' @ ' ~ self.from ~ "\n";
        my int $n := 0;
        for self.list {
            $str := $str ~ dump_array($key ~ '[' ~ $n ~ ']', $_);
            ++$n
        }
        for self.hash {
            $str := $str ~ dump_array($key ~ '<' ~ $_.key ~ '>', $_.value);
        }
        $str;
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
        nqp::bindkey(nqp::getattr($!braid, Braid, '$!slangs'),"H:$name", $value);
        self;
    }
    method know_how($name) {
        nqp::existskey(nqp::getattr($!braid, Braid, '$!slangs'),"H:$name");
    }

    method braid() { $!braid }
    method set_braid_from($other) { nqp::bindattr(self, $?CLASS, '$!braid', $other.braid); self }
    method clone_braid_from($other) { nqp::bindattr(self, $?CLASS, '$!braid', $other.braid."!clone"()); self }

    method snapshot_braid() { $!braid."!clone"() }
    method set_braid($braid) { nqp::bindattr(self, $?CLASS, '$!braid', $braid); self }

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

    method !cursor_init($orig, :$p = 0, :$c, :$shared, :$braid, :$build, :$fail_cursor, *%ignore) {
        my $new := $build ?? self !! nqp::create(self);
        unless $shared {
            $shared := nqp::create(ParseShared);
            nqp::bindattr($shared, ParseShared, '$!CUR_CLASS', $?CLASS);
            nqp::bindattr($shared, ParseShared, '$!orig', nqp::decont($orig));
            nqp::bindattr_s($shared, ParseShared, '$!target', nqp::indexingoptimized($orig));
            nqp::bindattr_i($shared, ParseShared, '$!highwater', 0);
            nqp::bindattr($shared, ParseShared, '@!highexpect', nqp::list_s());
            nqp::bindattr($shared, ParseShared, '%!marks', nqp::hash());
        }
        nqp::bindattr($new, $?CLASS, '$!shared', $shared);
        nqp::bindattr($new, $?CLASS, '$!braid',
          $braid
            ?? $braid
            !! nqp::isconcrete(self) && $!braid
              ?? $!braid."!clone"()   # usually called when switching into a slang
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
        else {
            nqp::bindattr_i($new, $?CLASS, '$!from', 0);
            nqp::bindattr_i($new, $?CLASS, '$!pos', 0);
        }
        nqp::bindattr_i($new, $?CLASS, '$!to', -1);  # delegates to $!pos if negative
        nqp::bindattr($shared, ParseShared, '$!fail_cursor',
            nqp::isconcrete($fail_cursor) ?? $fail_cursor !! $new.'!cursor_start_cur'());
        $new
    }

    # Starts a new Cursor, returning all information relating to it in an array.
    # The array is valid until the next call to !cursor_start_all.
    my $NO_RESTART := 0;
    my $RESTART    := 1;
    method !cursor_start_all() {
        my @start_result;
        my $new := nqp::create(self);
        my $sub := nqp::callercode();
        # Uncomment following to log cursor creation.
        #$!shared.log_cc(nqp::getcodename($sub));
        nqp::bindattr($new, $?CLASS, '$!shared', $!shared);
        nqp::bindattr($new, $?CLASS, '$!braid', nqp::isconcrete(self) ?? $!braid !! Braid."!braid_init"());
        nqp::bindattr($new, $?CLASS, '$!regexsub', nqp::ifnull(nqp::getcodeobj($sub), $sub));
        if nqp::defined($!restart) {
            nqp::bindattr_i($new, $?CLASS, '$!pos', $!pos);
            nqp::bindattr_i($new, $?CLASS, '$!to', -1);
            nqp::bindattr($new, $?CLASS, '$!cstack', nqp::clone($!cstack)) if $!cstack;
            nqp::bindpos(@start_result, 0, $new);
            nqp::bindpos(@start_result, 1, nqp::getattr_s($!shared, ParseShared, '$!target'));
            nqp::bindpos(@start_result, 2, nqp::bindattr_i($new, $?CLASS, '$!from', $!from));
            nqp::bindpos(@start_result, 3, $?CLASS);
            nqp::bindpos(@start_result, 4, nqp::bindattr($new, $?CLASS, '$!bstack', nqp::clone($!bstack)));
            nqp::bindpos(@start_result, 5, $RESTART);
            @start_result
        }
        else {
            nqp::bindattr_i($new, $?CLASS, '$!pos', -3);
            nqp::bindattr_i($new, $?CLASS, '$!to', -1);
            nqp::bindpos(@start_result, 0, $new);
            nqp::bindpos(@start_result, 1, nqp::getattr_s($!shared, ParseShared, '$!target'));
            nqp::bindpos(@start_result, 2, nqp::bindattr_i($new, $?CLASS, '$!from', $!pos));
            nqp::bindpos(@start_result, 3, $?CLASS);
            nqp::bindpos(@start_result, 4, nqp::bindattr($new, $?CLASS, '$!bstack', nqp::list_i()));
            nqp::bindpos(@start_result, 5, $NO_RESTART);
            @start_result
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
        nqp::bindattr($new, $?CLASS, '$!braid', nqp::isconcrete(self) ?? $!braid !! Braid."!braid_init"());
        nqp::bindattr($new, $?CLASS, '$!regexsub', nqp::ifnull(nqp::getcodeobj($sub), $sub));
        if nqp::defined($!restart) {
            nqp::bindattr_i($new, $?CLASS, '$!from', $!from);
            nqp::bindattr_i($new, $?CLASS, '$!pos', $!pos);
            nqp::bindattr_i($new, $?CLASS, '$!to', -1);
            nqp::bindattr($new, $?CLASS, '$!cstack', nqp::clone($!cstack)) if $!cstack;
            nqp::bindattr($new, $?CLASS, '$!bstack', nqp::clone($!bstack));
            $new
        }
        else {
            nqp::bindattr_i($new, $?CLASS, '$!from', $!pos);
            nqp::bindattr_i($new, $?CLASS, '$!pos', -3);
            nqp::bindattr_i($new, $?CLASS, '$!to', -1);
            nqp::bindattr($new, $?CLASS, '$!bstack', nqp::list_i());
            $new
        }
    }

    # Starts a new cursor, returning nothing but the cursor.
    method !cursor_start_cur() {
        my $new := nqp::create(self);
        my $sub := nqp::callercode();
        # Uncomment following to log cursor creation.
        #$!shared.log_cc(nqp::getcodename($sub));
        nqp::bindattr($new, $?CLASS, '$!shared', $!shared);
        nqp::bindattr($new, $?CLASS, '$!braid', nqp::isconcrete(self) ?? $!braid !! Braid."!braid_init"());
        nqp::bindattr($new, $?CLASS, '$!regexsub', nqp::ifnull(nqp::getcodeobj($sub), $sub));
        if nqp::defined($!restart) {
            nqp::die("!cursor_start_cur cannot restart a cursor");
        }
        nqp::bindattr_i($new, $?CLASS, '$!from', $!pos);
        nqp::bindattr_i($new, $?CLASS, '$!pos', -3);
        nqp::bindattr_i($new, $?CLASS, '$!to', -1);
        nqp::bindattr($new, $?CLASS, '$!bstack', nqp::list_i());
        $new
    }

    method !cursor_start_fail() {
        nqp::getattr($!shared, ParseShared, '$!fail_cursor');
    }

    method !cursor_start_subcapture($from) {
        my $new := nqp::create(self);
        nqp::bindattr($new, $?CLASS, '$!shared', $!shared);
        nqp::bindattr($new, $?CLASS, '$!braid', nqp::isconcrete(self) ?? $!braid !! Braid."!braid_init"());
        nqp::bindattr_i($new, $?CLASS, '$!from', $from);
        nqp::bindattr_i($new, $?CLASS, '$!pos', -3);
        nqp::bindattr_i($new, $?CLASS, '$!to', -1);
        $new;
    }

    method !cursor_capture($capture, str $name) {
        $!match  := nqp::null();
        $!cstack := [] unless nqp::defined($!cstack);
        nqp::push($!cstack, $capture);
        nqp::bindattr_s($capture, $?CLASS, '$!name', $name);
        nqp::push_i($!bstack, 0);
        nqp::push_i($!bstack, $!pos);
        nqp::push_i($!bstack, 0);
        nqp::push_i($!bstack, nqp::elems($!cstack));
        $!cstack;
    }

    method !cursor_push_cstack($capture) {
        if !nqp::defined($!cstack) {
            $!cstack := [$capture]
        }
        elsif nqp::elems($!cstack) == 0 {
            nqp::push($!cstack, $capture);
        }
        elsif !nqp::isnull($capture) {
            if nqp::isnull_s(nqp::getattr_s($capture, $?CLASS, '$!name')) {
                if nqp::isnull_s(nqp::getattr_s(nqp::atpos($!cstack,-1), $?CLASS, '$!name')) {
                    # $top anon capture just used for pos advancement, so update
                    # it in place.  We replace the whole capture because jvm
                    # can't seem to copy only the pos, and because the chances
                    # are that both captures are in the nursury anyway.
                    nqp::bindpos($!cstack, -1, $capture);
                }

                # top capture anonymous enough to be reused
                else {
                    nqp::push($!cstack, $capture);
                }
            }

            # capture has a name
            else {
                nqp::push($!cstack, $capture);
            }
        }
        $!cstack;
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
          !! self;
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

    method !cursor_fail() {
        $!match    :=
        $!bstack   :=
        $!cstack   :=
        $!regexsub := nqp::null();
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
        return self."!cursor_next"() if %opts<ex>;
        my $new := self.CREATE();
        nqp::bindattr($new, $?CLASS, '$!shared', $!shared);
        nqp::bindattr($new, $?CLASS, '$!braid', $!braid);
        nqp::bindattr_i($new, $?CLASS, '$!from', -1);
        nqp::bindattr_i($new, $?CLASS, '$!pos',
            (%opts<ov> || $!from >= $!pos) ?? $!from+1 !! $!pos);
        nqp::bindattr_i($new, $?CLASS, '$!to', -1);
        $!regexsub($new);
    }

    method !clone_match_at($term, int $pos) {
        my $new := self.'!cursor_start_cur'();
        $new.'!cursor_pass_quick'($pos);
        nqp::bindattr_i($new, NQPMatch,   '$!pos',   $pos);
        nqp::bindattr_i($new, NQPMatch,   '$!from',  nqp::getattr($term, NQPMatch,   '$!from' ));
        nqp::bindattr_i($new, NQPMatch,   '$!to',    nqp::getattr($term, NQPMatch,   '$!to' ));
        nqp::bindattr(  $new, NQPMatch,   '$!made',  nqp::getattr($term, NQPMatch,   '$!made' ));
        nqp::bindattr(  $new, NQPCapture, '@!array', nqp::getattr($term, NQPCapture, '@!array'));
        nqp::bindattr(  $new, NQPCapture, '%!hash',  nqp::getattr($term, NQPCapture, '%!hash' ));
        nqp::bindattr(  $new, NQPMatch,   '$!match', nqp::getattr($term, NQPMatch,   '$!match'));
        $new;
    }

    method !reduce(str $name) {
        my $actions := self.actions;
        my $method := nqp::isnull($actions)
            ?? nqp::null()
            !! nqp::tryfindmethod($actions, $name);
        $method($actions, self.MATCH) unless nqp::isnull($method);
        self;
    }

    method !reduce_with_match(str $name, str $key, $match) {
        my $actions := self.actions;
        my $method := nqp::isnull($actions)
            ?? nqp::null()
            !! nqp::tryfindmethod($actions, $name);
        $method($actions, $match, $key) unless nqp::isnull($method);
        self
    }

    method !shared_type() { ParseShared }
    method !shared() { $!shared }
    method !braid()  { $!braid }

    my @EMPTY := [];
    method !protoregex($name) {
        # Obtain and run NFA.
        my $shared := $!shared;
        my $nfa    := self.HOW.cache_get(self, $name);
        if nqp::isnull($nfa) {
            $nfa := self.'!protoregex_nfa'($name);
            self.HOW.cache_add(self, $name, $nfa);
        }
        my @fates := $nfa.run(nqp::getattr_s($shared, ParseShared, '$!target'), $!pos);

        # Update highwater mark.
        if $!pos > nqp::getattr_i($shared, ParseShared, '$!highwater') {
            nqp::bindattr_i($shared, ParseShared, '$!highwater', $!pos);
        }

        # Visit rules in fate order.
        my @rxfate := $nfa.states[0];
        my $cur;
        my $rxname;
        while nqp::elems(@fates) {
            $rxname := nqp::atpos(@rxfate, nqp::pop_i(@fates));
            # note("invoking $rxname");
            $cur    := self."$rxname"();
            @fates  := @EMPTY if nqp::getattr_i($cur, $?CLASS, '$!pos') >= 0;
        }
        $cur // nqp::getattr($shared, ParseShared, '$!fail_cursor');
    }

    method !protoregex_nfa($name) {
        my %protorx   := self.HOW.cache(self, "!protoregex_table", { self."!protoregex_table"() });
        my $nfa       := QRegex::NFA.new;
        my @fates     := $nfa.states[0];
        my int $start := 1;
        my int $fate  := 0;
        if nqp::existskey(%protorx, $name) {
            for %protorx{$name} -> $rxname {
                $fate := $fate + 1;
                $nfa.mergesubrule($start, 0, $fate, self, $rxname);
                @fates[$fate] := $rxname;  # override default fate #
            }
        }
        $nfa.optimize();
        $nfa;
    }

    method !protoregex_table() {
        my %protorx;
        for self.HOW.methods(self) -> $meth {
            my str $methname := $meth.name();
            my int $sympos   := nqp::index($methname, ':');
            if $sympos > 0 {
                my str $prefix    := nqp::substr($methname, 0, $sympos);
                %protorx{$prefix} := [] unless nqp::existskey(%protorx, $prefix);
                nqp::push(%protorx{$prefix}, $methname);
            }
        }
        %protorx;
    }

    method !alt(int $pos, str $name, @labels = []) {
        # Update highwater mark.
        my $shared := $!shared;
        if $pos > nqp::getattr_i($shared, ParseShared, '$!highwater') {
            nqp::bindattr_i($shared, ParseShared, '$!highwater', $pos);
        }

        # Evaluate the alternation.
        nqp::ifnull(
          self.HOW.cache_get(self, $name),
          self.HOW.cache_add(self, $name, self.'!alt_nfa'($!regexsub, $name))
        ).run_alt(nqp::getattr_s($shared, ParseShared, '$!target'), $pos, $!bstack, $!cstack, @labels);
    }

    method !alt_nfa($regex, str $name) {
        my $nfa       := QRegex::NFA.new;
        my int $start := 1;
        my int $fate  := 0;
        for $regex.ALT_NFA($name) {
            $nfa.mergesubstates($start, 0, $fate, $_, self);
            ++$fate;
        }
        $nfa.optimize();
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
                    self.HOW.cache(self, ~$name, { self.'!alt_nfa'($meth, $name.key) });
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

    method !dba(int $pos, str $dba) {
        my $shared        := $!shared;
        my int $highwater := nqp::getattr_i($shared, ParseShared, '$!highwater');
        my $highexpect;
        if $pos >= $highwater {
            $highexpect := nqp::getattr($shared, ParseShared, '@!highexpect');
            if $pos > $highwater {
                nqp::setelems($highexpect, 0);
                nqp::bindattr_i($shared, ParseShared, '$!highwater', $pos);
            }
            nqp::push_s($highexpect, $dba);
        }
        NQPMu;
    }

    method !highwater() {
        nqp::getattr_i($!shared, ParseShared, '$!highwater')
    }

    method !highexpect() {
        nqp::getattr($!shared, ParseShared, '@!highexpect')
    }

    method !fresh_highexpect() {
        my @old := nqp::getattr($!shared, ParseShared, '@!highexpect');
        nqp::bindattr($!shared, ParseShared, '@!highexpect', nqp::list_s());
        @old
    }

    method !set_highexpect(@highexpect) {
        nqp::bindattr($!shared, ParseShared, '@!highexpect', @highexpect)
    }

    method !clear_highwater() {
        my $highexpect := nqp::getattr($!shared, ParseShared, '@!highexpect');
        nqp::setelems($highexpect, 0);
        nqp::bindattr_i($!shared, ParseShared, '$!highwater', -1)
    }

    method !BACKREF($name) {
        my $cur   := self."!cursor_start_cur"();
        my int $n := $!cstack ?? nqp::elems($!cstack) - 1 !! -1;
        my $last;
        my $first;
        while $n >= 0 {
            my     $cs_cur  := $!cstack[$n];
            my str $cs_name := nqp::getattr_s($cs_cur, $?CLASS, '$!name');
            if !nqp::isnull_s($cs_name) && $cs_name eq $name {
                if nqp::isconcrete($last) {
                    last unless $cs_cur.pos == $first.from;
                }
                else {
                    $last := $cs_cur;
                }
                $first := $cs_cur;
            }
            --$n;
        }
        if nqp::isconcrete($last) {
            my int $from   := $first.from;
            my int $litlen := $last.pos - $from;
            my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
            $cur."!cursor_pass_quick"($!pos + $litlen)
              if nqp::substr($target, $!pos, $litlen)
                   eq nqp::substr($target, $from, $litlen);
        }
        $cur;
    }

    method !BACKREF-LATEST-CAPTURE($name) {
        my $cur   := self."!cursor_start_cur"();
        my int $n := $!cstack ?? nqp::elems($!cstack) - 1 !! -1;
        --$n while $n >= 0 && (nqp::isnull_s(nqp::getattr_s($!cstack[$n], $?CLASS, '$!name')) ||
                               nqp::getattr_s($!cstack[$n], $?CLASS, '$!name') ne $name);
        if $n >= 0 {
            my $subcur     := $!cstack[$n];
            my int $litlen := $subcur.pos - $subcur.from;
            my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
            $cur."!cursor_pass_quick"($!pos + $litlen)
              if nqp::substr($target, $!pos, $litlen)
                   eq nqp::substr($target, $subcur.from, $litlen);
        }
        $cur;
    }

    method !LITERAL($strish, int $i = 0) {
        if nqp::isconcrete($strish) {
            my str $str    := $strish;
            my int $litlen := nqp::chars($str);
            my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
            if $litlen < 1 ||
#?if jvm
                ($i ?? nqp::lc(nqp::substr($target, $!pos, $litlen)) eq nqp::lc($str)
#?endif
#?if js
                ($i ?? nqp::lc(nqp::substr($target, $!pos, $litlen)) eq nqp::lc($str)
#?endif
#?if moar
                ($i ?? nqp::eqatic($target, $str, $!pos)
#?endif
                    !! nqp::eqat($target, $str, $!pos)) {
                my $cur := self."!cursor_start_cur"();
                $cur."!cursor_pass_quick"($!pos + $litlen);
                $cur
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
        $obj.ACCEPTS($arg) ?? 1 !! 0
    }

    method at(int $pos) {
        my $cur := self."!cursor_start_cur"();
        $cur."!cursor_pass_quick"($!pos) if $pos == $!pos;
        $cur;
    }

    method same() {
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');

        if $!pos < 1 || $!pos >= nqp::chars($target) { # no other side to compare to
            nqp::getattr($!shared, ParseShared, '$!fail_cursor');
        } elsif nqp::eqat($target, nqp::substr($target, $!pos, 1), nqp::sub_i($!pos, 1)) { # same char on both sides
            my $cur := self."!cursor_start_cur"();
            $cur."!cursor_pass"($!pos, 'same');
        } else { # different chars on both sides
            nqp::getattr($!shared, ParseShared, '$!fail_cursor');
        }
    }

    method before($regex, $off = 0) {
        my $*SUPPOSING         := 1;
        my int $orig_highwater := nqp::getattr_i($!shared, ParseShared, '$!highwater');
        my $orig_highexpect    := nqp::getattr($!shared, ParseShared, '@!highexpect');
        nqp::bindattr($!shared, ParseShared, '@!highexpect', nqp::list_s());
        my $cur                := self."!cursor_start_cur"();
        nqp::bindattr_i($cur, $?CLASS, '$!pos', nqp::sub_i($!pos, $off));
        $!pos >= $off && nqp::getattr_i($regex($cur), $?CLASS, '$!pos') >= 0 ??
            $cur."!cursor_pass"($!pos, 'before') !!
            nqp::bindattr_i($cur, $?CLASS, '$!pos', -3);
        nqp::bindattr_i($!shared, ParseShared, '$!highwater', $orig_highwater);
        nqp::bindattr($!shared, ParseShared, '@!highexpect', $orig_highexpect);
        $cur;
    }

    # Expects to get a regex whose syntax tree was flipped during the
    # compile.
    method after($regex) {
        my $*SUPPOSING         := 1;
        my int $orig_highwater := nqp::getattr_i($!shared, ParseShared, '$!highwater');
        my $orig_highexpect    := nqp::getattr($!shared, ParseShared, '@!highexpect');
        nqp::bindattr($!shared, ParseShared, '@!highexpect', nqp::list_s());
        my $cur                := self."!cursor_start_cur"();
        my str $target_flipped := nqp::getattr_s($!shared, ParseShared, '$!target_flipped');
        if nqp::isnull_s($target_flipped) {
            $target_flipped := nqp::flip(nqp::getattr_s($!shared, ParseShared, '$!target'));
            nqp::bindattr_s($!shared, ParseShared, '$!target_flipped', $target_flipped);
        }
        my $shared := nqp::clone($!shared);
        nqp::bindattr_s($shared, ParseShared, '$!target', $target_flipped);
        nqp::bindattr($cur, $?CLASS, '$!shared', $shared);
        nqp::bindattr_i($cur, $?CLASS, '$!from', nqp::chars($target_flipped) - $!pos);
        nqp::bindattr_i($cur, $?CLASS, '$!pos', nqp::chars($target_flipped) - $!pos);
        nqp::getattr_i($regex($cur), $?CLASS, '$!pos') >= 0 ??
            $cur."!cursor_pass"($!pos, 'after') !!
            nqp::bindattr_i($cur, $?CLASS, '$!pos', -3);
        nqp::bindattr_i($!shared, ParseShared, '$!highwater', $orig_highwater);
        nqp::bindattr($!shared, ParseShared, '@!highexpect', $orig_highexpect);
        $cur;
    }

    method ws() {
        # skip over any whitespace, fail if between two word chars
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        my $cur        := self."!cursor_start_cur"();
        $!pos >= nqp::chars($target)
          ?? $cur."!cursor_pass"($!pos, 'ws')
          !! ($!pos < 1
              || !nqp::iscclass(nqp::const::CCLASS_WORD, $target, $!pos)
              || !nqp::iscclass(nqp::const::CCLASS_WORD, $target, $!pos-1)
             ) && $cur."!cursor_pass"(
                      nqp::findnotcclass(
                          nqp::const::CCLASS_WHITESPACE, $target, $!pos, nqp::chars($target)),
                      'ws');
        $cur;
    }

    method ww() {
        my $cur;
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        if $!pos > 0 && $!pos != nqp::chars($target)
                && nqp::iscclass(nqp::const::CCLASS_WORD, $target, $!pos)
                && nqp::iscclass(nqp::const::CCLASS_WORD, $target, $!pos-1) {
            $cur := self."!cursor_start_cur"();
            $cur."!cursor_pass"($!pos, "ww");
        }
        else {
            $cur := nqp::getattr($!shared, ParseShared, '$!fail_cursor');
        }
        $cur;
    }

    method wb() {
        my $cur        := self."!cursor_start_cur"();
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        $cur."!cursor_pass"($!pos, "wb")
            if ($!pos == 0 && nqp::iscclass(nqp::const::CCLASS_WORD, $target, $!pos))
               || ($!pos == nqp::chars($target)
                   && nqp::iscclass(nqp::const::CCLASS_WORD, $target, $!pos-1))
               || nqp::iscclass(nqp::const::CCLASS_WORD, $target, $!pos-1)
                   != nqp::iscclass(nqp::const::CCLASS_WORD, $target, $!pos);
        $cur;
    }

    method ident() {
        my $cur;
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        if $!pos < nqp::chars($target) &&
                (nqp::ord($target, $!pos) == 95
                 || nqp::iscclass(nqp::const::CCLASS_ALPHABETIC, $target, $!pos)) {
            $cur := self."!cursor_start_cur"();
            $cur."!cursor_pass_quick"(
                nqp::findnotcclass(
                    nqp::const::CCLASS_WORD,
                    $target, $!pos, nqp::chars($target)));
        }
        else {
            $cur := nqp::getattr($!shared, ParseShared, '$!fail_cursor');
        }
        $cur;
    }

    method alpha() {
        my $cur        := self."!cursor_start_cur"();
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        $cur."!cursor_pass"($!pos+1, 'alpha')
          if $!pos < nqp::chars($target)
             && (nqp::iscclass(nqp::const::CCLASS_ALPHABETIC, $target, $!pos)
                 || nqp::ord($target, $!pos) == 95);
        $cur;
    }

    method alnum() {
        my $cur        := self."!cursor_start_cur"();
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        $cur."!cursor_pass"($!pos+1, 'alnum')
          if $!pos < nqp::chars($target) && nqp::iscclass(nqp::const::CCLASS_WORD, $target, $!pos);
        $cur;
    }

    method upper() {
        my $cur        := self."!cursor_start_cur"();
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        $cur."!cursor_pass"($!pos+1, 'upper')
          if $!pos < nqp::chars($target)
             && nqp::iscclass(nqp::const::CCLASS_UPPERCASE, $target, $!pos);
        $cur;
    }

    method lower() {
        my $cur        := self."!cursor_start_cur"();
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        $cur."!cursor_pass"($!pos+1, 'lower')
          if $!pos < nqp::chars($target)
             && nqp::iscclass(nqp::const::CCLASS_LOWERCASE, $target, $!pos);
        $cur;
    }

    method digit() {
        my $cur        := self."!cursor_start_cur"();
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        $cur."!cursor_pass"($!pos+1, 'digit')
          if $!pos < nqp::chars($target)
             && nqp::iscclass(nqp::const::CCLASS_NUMERIC, $target, $!pos);
        $cur;
    }

    method xdigit() {
        my $cur        := self."!cursor_start_cur"();
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        $cur."!cursor_pass"($!pos+1, 'xdigit')
          if $!pos < nqp::chars($target)
             && nqp::iscclass(nqp::const::CCLASS_HEXADECIMAL, $target, $!pos);
        $cur;
    }

    method space() {
        my $cur        := self."!cursor_start_cur"();
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        $cur."!cursor_pass"($!pos+1, 'space')
          if $!pos < nqp::chars($target)
             && nqp::iscclass(nqp::const::CCLASS_WHITESPACE, $target, $!pos);
        $cur;
    }

    method blank() {
        my $cur        := self."!cursor_start_cur"();
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        $cur."!cursor_pass"($!pos+1, 'blank')
          if $!pos < nqp::chars($target)
             && nqp::iscclass(nqp::const::CCLASS_BLANK, $target, $!pos);
        $cur;
    }

    method print() {
        my $cur        := self."!cursor_start_cur"();
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        $cur."!cursor_pass"($!pos+1, 'print')
          if $!pos < nqp::chars($target)
             && nqp::iscclass(nqp::const::CCLASS_PRINTING, $target, $!pos);
        $cur;
    }

    method cntrl() {
        my $cur        := self."!cursor_start_cur"();
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        $cur."!cursor_pass"($!pos+1, 'cntrl')
          if $!pos < nqp::chars($target)
             && nqp::iscclass(nqp::const::CCLASS_CONTROL, $target, $!pos);
        $cur;
    }

    method punct() {
        my $cur        := self."!cursor_start_cur"();
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        $cur."!cursor_pass"($!pos+1, 'punct')
          if $!pos < nqp::chars($target)
             && nqp::iscclass(nqp::const::CCLASS_PUNCTUATION, $target, $!pos);
        $cur;
    }

    method graph() {
        my $cur        := self."!cursor_start_cur"();
        my str $target := nqp::getattr_s($!shared, ParseShared, '$!target');
        $cur."!cursor_pass"($!pos+1, 'graph')
          if $!pos < nqp::chars($target)
             && (nqp::iscclass(nqp::const::CCLASS_ALPHANUMERIC, $target, $!pos)
                 || nqp::iscclass(nqp::const::CCLASS_PUNCTUATION, $target, $!pos));
        $cur;
    }

    method FAILGOAL($goal, $dba?) {
        self."!cursor_start_cur"()
    }
}

class NQPMatch is NQPCapture does NQPMatchRole {
    my @EMPTY_LIST := [];
    my %EMPTY_HASH := nqp::hash();
    my $DID_MATCH := nqp::create(NQPdidMATCH);
    method MATCH() {
        my $match := nqp::getattr(self, NQPMatch, '$!match');
        if nqp::isnull($match) || !nqp::istype($match, NQPdidMATCH) {
            # Set up basic state of (old) Match.
            my $list;
            my $hash;
            nqp::bindattr(self, NQPMatch, '$!match',
                nqp::getattr_i(self, NQPMatch, '$!pos') >= nqp::getattr_i(self, NQPMatch, '$!from')
                    ?? $DID_MATCH
                    !! nqp::null());

            # For captures with lists, initialize the lists.
            my $rxsub := nqp::getattr(self, NQPMatch, '$!regexsub');
            my str $onlyname;
            my int $hascaps;
            if !nqp::isnull($rxsub) && nqp::defined($rxsub) {
                my $capdesc := nqp::can($rxsub, 'CAPS') ?? $rxsub.CAPS() !! nqp::null();
                if !nqp::isnull($capdesc) {
                    $hascaps := $capdesc.has-captures();
                    if $hascaps {
                        $list := $capdesc.prepare-list();
                        $hash := $capdesc.prepare-hash();
                        $onlyname := $capdesc.onlyname();
                    }
                }
            }

            # Walk the Cursor stack and populate the Cursor.
            my $cs := nqp::getattr(self, NQPMatch, '$!cstack');
            if nqp::isnull($cs) || !nqp::isconcrete($cs) || !nqp::elems($cs) {}
            elsif $onlyname ne '' {
                # If there's only one destination, avoid repeated hash lookups
                my int $cselems := nqp::elems($cs);
                my int $csi;
                my $dest;
                if nqp::ord($onlyname) != 38 && nqp::ord($onlyname) < 58 {
                    $dest := nqp::atpos($list, $onlyname);
                }
                else {
                    $dest := nqp::atkey($hash, $onlyname);
                }
                while $csi < $cselems {
                    my $subcur := nqp::atpos($cs, $csi);
                    unless nqp::isnull_s(nqp::getattr_s($subcur, $?CLASS, '$!name')) {
                        nqp::push($dest,$subcur.MATCH());
                    }
                    ++$csi;
                }
            }
            elsif $hascaps {
                my int $cselems := nqp::elems($cs);
                my int $csi;
                while $csi < $cselems {
                    my $subcur   := nqp::atpos($cs, $csi);
                    my str $name := nqp::getattr_s($subcur, $?CLASS, '$!name');
                    if !nqp::isnull_s($name) && $name ne '' {
                        my $submatch := $subcur.MATCH();
                        if $name eq '$!from' || $name eq '$!to' {
                            nqp::bindattr_i(self, NQPMatch, $name, $submatch.from);
                        }
                        elsif nqp::index($name, '=') < 0 {
                            if nqp::ord($name) < 58 {
                                nqp::islist(nqp::atpos($list, $name))
                                    ?? nqp::push(nqp::atpos($list, $name), $submatch)
                                    !! nqp::bindpos($list, $name, $submatch);
                            }
                            else {
                                nqp::islist(nqp::atkey($hash, $name))
                                    ?? nqp::push(nqp::atkey($hash, $name), $submatch)
                                    !! nqp::bindkey($hash, $name, $submatch);
                            }
                        }
                        else {
                            for nqp::split('=', $name) -> $name {
                                if nqp::ord($name) < 58 {
                                    nqp::islist(nqp::atkey($hash, $name))
                                        ?? nqp::push(nqp::atpos($list, $name), $submatch)
                                        !! nqp::bindpos($list, $name, $submatch);
                                }
                                else {
                                    nqp::islist(nqp::atkey($hash, $name))
                                        ?? nqp::push(nqp::atkey($hash, $name), $submatch)
                                        !! nqp::bindkey($hash, $name, $submatch);
                                }
                            }
                        }
                    }
                    ++$csi;
                }
            }
            nqp::bindattr(self, NQPCapture, '@!array', nqp::defor($list, @EMPTY_LIST));
            nqp::bindattr(self, NQPCapture, '%!hash', nqp::defor($hash, %EMPTY_HASH));

            # Once we've produced the captures, and if we know we're finished and
            # will never be backtracked into, we can release cstack and regexsub.
            unless nqp::defined(nqp::getattr(self, NQPMatch, '$!bstack')) {
                nqp::bindattr(self, NQPMatch, '$!cstack', nqp::null());
                nqp::bindattr(self, NQPMatch, '$!regexsub', nqp::null());
            }
        }
        self
    }

    method Bool() {
        !nqp::isnull(nqp::getattr(self, $?CLASS, '$!match'))
          && nqp::istrue(nqp::getattr(self, $?CLASS, '$!match'));
    }

    method Int() {
        # XXX need a better way to do this
        my int $i := +self.Str();
        $i;
    }

    method parse($target, :$rule = 'TOP', :$actions, *%options) {
        my $braid := Braid.'!braid_init'(:grammar(self), :actions($actions), :package($*PACKAGE));
        my $cur      := self.'!cursor_init'($target, :braid($braid), |%options);

#        note("Cursor.parse grammar " ~ $cur.HOW.name($cur) ~ " actions " ~ $actions.HOW.name($actions) ~ ")");
        nqp::isinvokable($rule) ??
            $rule($cur).MATCH() !!
            nqp::findmethod($cur, $rule)($cur).MATCH()
    }

    method !INTERPOLATE($var, $s = 0) {
        if nqp::islist($var) {
            my int $maxlen := -1;
            my $cur        := self.'!cursor_start_cur'();
            my int $pos    := nqp::getattr_i($cur, $?CLASS, '$!from');
            my str $tgt    := $cur.target;
            my int $eos    := nqp::chars($tgt);
            for $var {
                if nqp::isinvokable($_) {
                    my $res := $_(self);
                    if $res {
                        my int $adv := nqp::getattr_i($res, $?CLASS, '$!pos');
                        $adv        := $adv - $pos;
                        $maxlen     := $adv if $adv > $maxlen;
                    }
                }
                else {
                    my int $len := nqp::chars($_);
                    $maxlen     := $len if $len > $maxlen && $pos + $len <= $eos
                        && nqp::eqat($tgt, $_, $pos);
                }
                last if $s && $maxlen > -1;
            }
            $cur.'!cursor_pass_quick'($pos + $maxlen) if $maxlen >= 0;
            $cur;
        }
        else {
            return $var(self) if nqp::isinvokable($var);
            my $cur     := self.'!cursor_start_cur'();
            my int $pos := nqp::getattr_i($cur, $?CLASS, '$!from');
            my str $tgt := $cur.target;
            my int $len := nqp::chars($var);
            my int $adv := $pos + $len;
            return $cur if $adv > nqp::chars($tgt)
                || nqp::substr($tgt, $pos, $len) ne $var;
            $cur.'!cursor_pass_quick'($adv);
            $cur;
        }
    }

    method !INTERPOLATE_REGEX($var) {
        unless nqp::isinvokable($var) {
            my $rxcompiler := nqp::getcomp('QRegex::P6Regex');
            if nqp::islist($var) {
                my $res := [];
                for $var {
                    my $elem := $_;
                    $elem    := $rxcompiler.compile($elem) unless nqp::isinvokable($elem);
                    nqp::push($res, $elem);
                }
                $var := $res;
            }
            else {
                $var := $rxcompiler.compile($var);
            }
        }
        self.'!INTERPOLATE'($var);
    }
}

class NQPRegexMethod {
    has $!code;
    method new($code) {
        self.bless(:code($code));
    }
    multi method ACCEPTS(NQPRegexMethod:D $self: $target) {
        NQPMatch.parse($target, :rule(self))
    }
    multi method NOT-ACCEPTS(NQPRegexMethod:D $self: $target) {
        nqp::isfalse(NQPMatch.parse($target, :rule(self)))
    }
    method name() {
        nqp::getcodename($!code)
    }
    method Str() {
        self.name()
    }
}
#?if !moar
nqp::setinvokespec(NQPRegexMethod, NQPRegexMethod, '$!code', nqp::null);
#?endif

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
