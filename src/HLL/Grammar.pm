use QRegex;

grammar HLL::Grammar {
    my $brackets := "<>[]()\{}\xab\xbb\x[0f3a]\x[0f3b]\x[0f3c]\x[0f3d]\x[169b]\x[169c]\x[2045]\x[2046]\x[207d]\x[207e]\x[208d]\x[208e]\x[2329]\x[232a]\x[2768]\x[2769]\x[276a]\x[276b]\x[276c]\x[276d]\x[276e]\x[276f]\x[2770]\x[2771]\x[2772]\x[2773]\x[2774]\x[2775]\x[27c5]\x[27c6]\x[27e6]\x[27e7]\x[27e8]\x[27e9]\x[27ea]\x[27eb]\x[2983]\x[2984]\x[2985]\x[2986]\x[2987]\x[2988]\x[2989]\x[298a]\x[298b]\x[298c]\x[298d]\x[298e]\x[298f]\x[2990]\x[2991]\x[2992]\x[2993]\x[2994]\x[2995]\x[2996]\x[2997]\x[2998]\x[29d8]\x[29d9]\x[29da]\x[29db]\x[29fc]\x[29fd]\x[3008]\x[3009]\x[300a]\x[300b]\x[300c]\x[300d]\x[300e]\x[300f]\x[3010]\x[3011]\x[3014]\x[3015]\x[3016]\x[3017]\x[3018]\x[3019]\x[301a]\x[301b]\x[301d]\x[301e]\x[fd3e]\x[fd3f]\x[fe17]\x[fe18]\x[fe35]\x[fe36]\x[fe37]\x[fe38]\x[fe39]\x[fe3a]\x[fe3b]\x[fe3c]\x[fe3d]\x[fe3e]\x[fe3f]\x[fe40]\x[fe41]\x[fe42]\x[fe43]\x[fe44]\x[fe47]\x[fe48]\x[fe59]\x[fe5a]\x[fe5b]\x[fe5c]\x[fe5d]\x[fe5e]\x[ff08]\x[ff09]\x[ff3b]\x[ff3d]\x[ff5b]\x[ff5d]\x[ff5f]\x[ff60]\x[ff62]\x[ff63]";
    my $cursor_class := NQPCursor;

    method throw_unrecog_backslash_seq ($sequence) {
        self.panic("Unrecognized backslash sequence: '\\" ~ $sequence ~ "'");
    }

    token termish {
        <prefixish>*
        <term>
        <postfixish>*
    }

    proto token term { <...> }
    proto token infix { <...> }
    proto token prefix { <...> }
    proto token postfix { <...> }
    proto token circumfix { <...> }
    proto token postcircumfix { <...> }

    token term:sym<circumfix> { <circumfix> }

    token infixish { <OPER=infix> }
    token prefixish { <OPER=prefix> <.ws> }
    token postfixish {
        | <OPER=postfix>
        | <OPER=postcircumfix>
    }

    token nullterm { <?> }
    token nullterm_alt { <term=.nullterm> }

    # Return <termish> if it matches, <nullterm_alt> otherwise.
    method nulltermish() { self.termish || self.nullterm_alt }

    token quote_delimited {
        <starter> <quote_atom>* <stopper>
    }

    token quote_atom {
        <!stopper>
        [
        | <quote_escape>
        | [ <-quote_escape-stopper-starter> ]+
        | <starter> <quote_atom>* <stopper>
        ]
    }

    token decint  { [\d+]+ % '_' }
    token decints { [<.ws><decint><.ws>]+ % ',' }

    token hexint  { [<[ 0..9 a..f A..F ]>+]+ % '_' }
    token hexints { [<.ws><hexint><.ws>]+ % ',' }

    token octint  { [<[ 0..7 ]>+]+ % '_' }
    token octints { [<.ws><octint><.ws>]+ % ',' }

    token binint  { [<[ 0..1 ]>+]+ % '_' }
    token binints { [<.ws><binint><.ws>]+ % ',' }

    token integer {
        [
        | 0 [ b <VALUE=binint>
            | o <VALUE=octint>
            | x <VALUE=hexint>
            | d <VALUE=decint>
            ]
        | <VALUE=decint>
        ]
    }

    token dec_number {
        | $<coeff>=[     '.' \d+ ] <escale>?
        | $<coeff>=[ \d+ '.' \d+ ] <escale>?
        | $<coeff>=[ \d+         ] <escale>
    }

    token escale { <[Ee]> <[+\-]>? \d+ }

    proto token quote_escape { <...> }
    token quote_escape:sym<backslash> { \\ \\ <?quotemod_check('q')> }
    token quote_escape:sym<stopper>   { \\ <?quotemod_check('q')> <stopper> }

    token quote_escape:sym<bs>  { \\ b <?quotemod_check('b')> }
    token quote_escape:sym<nl>  { \\ n <?quotemod_check('b')> }
    token quote_escape:sym<cr>  { \\ r <?quotemod_check('b')> }
    token quote_escape:sym<tab> { \\ t <?quotemod_check('b')> }
    token quote_escape:sym<ff>  { \\ f <?quotemod_check('b')> }
    token quote_escape:sym<esc> { \\ e <?quotemod_check('b')> }
    token quote_escape:sym<hex> {
        \\ x <?quotemod_check('b')>
        [ <hexint> | '[' <hexints> ']' ]
    }
    token quote_escape:sym<oct> {
        \\ o <?quotemod_check('b')>
        [ <octint> | '[' <octints> ']' ]
    }
    token quote_escape:sym<chr> { \\ c <?quotemod_check('b')> <charspec> }
    token quote_escape:sym<0> { \\ <sym> <?quotemod_check('b')> }
    token quote_escape:sym<misc> {
        {} \\
        [
        || <?quotemod_check('b')>
             [
             | $<textqq>=(\W)
             | (\w) { self.throw_unrecog_backslash_seq: $/[0].Str }
             ]
        || $<textq>=[.]
        ]
    }

    token charname {
        || <integer>
        || <[a..z A..Z]> <-[ \] , # ]>*? <[a..z A..Z ) ]>
           <?before \s* <[ \] , # ]> >
    }
    token charnames { [<.ws><charname><.ws>]+ % ',' }
    token charspec {
        [
        | '[' <charnames> ']' 
        | \d+ [ _ \d+]*
        | <[ ?..Z ]>
        | <.panic: 'Unrecognized \\c character'>
        ]
    }

    # XXX Everything that follows is a "cheat" because it's still partially in
    # PIR. They used to live in a separate file, but in the 6model transition got
    # moved here, since it was the easier way.

=begin 

=item O(spec [, save])

This subrule attaches operator precedence information to
a match object (such as an operator token).  A typical
invocation for the subrule might be:

    token infix:sym<+> { <sym> <O( q{ %additive, :pirop<add> } )> }

This says to add all of the attribute of the C<%additive> hash
(described below) and a C<pirop> entry into the match object
returned by the C<< infix:sym<+> >> token (as the C<O> named
capture).  Note that this is a alphabetic "O", not a digit zero.

Currently the C<O> subrule accepts a string argument describing
the hash to be stored.  (Note the C< q{ ... } > above.  Eventually
it may be possible to omit the 'q' such that an actual (constant)
hash constructor is passed as an argument to C<O>.

The hash built via the string argument to C<O> is cached, so that
subsequent parses of the same token re-use the hash built from
previous parses of the token, rather than building a new hash
on each invocation.

The C<save> argument is used to build "hash" aggregates that can
be referred to by subsequent calls to C<O>.  For example,

    NQP::Grammar.O(':prec<t=>, :assoc<left>', '%additive' );

specifies the values to be associated with later references to
"%additive".  Eventually it will likely be possible to use true
hashes from a package namespace, but this works for now.

Currently the only pairs recognized have the form C< :pair >,
C< :!pair >, and C<< :pair<strval> >>.

=end
    
    # This lexical holds the hash cache. Right now we have one
    # cache for all grammars; eventually we may need a way to
    # separate them out by cursor type.
    my %ohash;
    
    method O(str $spec, $save?) {
        # See if we've already created a Hash for the current
        # specification string -- if so, use that.
        my %hash := %ohash{$spec};
        unless %hash {
            # Otherwise, we need to build a new one.
            %hash       := nqp::hash();
            my int $eos := nqp::chars($spec);
            my int $pos := 0;
            while ($pos := nqp::findnotcclass(nqp::const::CCLASS_WHITESPACE,
                                              $spec, $pos, $eos)) < $eos
            {
                my int $lpos;
                my str $s := nqp::substr($spec, $pos, 1);
                if $s eq ',' { # Ignore commas between elements for now.
                    $pos++;
                }
                elsif $s eq ':' { # Parse whatever comes next like a pair.
                    $pos++;
                  
                    # If the pair is of the form :!name, then reverse the value
                    # and skip the exclamation mark.
                    my $value := 1;
                    if nqp::substr($spec, $pos, 1) eq '!' {
                        $pos++;
                        $value := 0;
                    }

                    # Get the name of the pair.
                    $lpos    := nqp::findnotcclass(nqp::const::CCLASS_WORD,
                                                   $spec, $pos, $eos);
                    my $name := nqp::substr($spec, $pos, $lpos - $pos);
                    $pos     := $lpos;

                    # Look for a <...> that follows.
                    if nqp::substr($spec, $pos, 1) eq '<' {
                        $pos   := $pos + 1;
                        $lpos  := nqp::index($spec, '>', $pos);
                        $value := nqp::substr($spec, $pos, $lpos - $pos);
                        $pos   := $lpos + 1;
                    }
                    # Done processing the pair, store it in the hash.
                    %hash{$name} := $value;
                }
                else {
                    # If whatever we found doesn't start with a colon, treat it
                    # as a lookup of a previously saved hash to be merged in.
                    # Find the first whitespace or comma
                    $lpos      := nqp::findcclass(nqp::const::CCLASS_WHITESPACE,
                                                  $spec, $pos, $eos);
                    my $index  := nqp::index($spec, ',', $pos);
                    $lpos      := $index unless $index < 0 || $index >= $lpos;
                    my $lookup := nqp::substr($spec, $pos, $lpos - $pos);
                    my %lhash  := %ohash{$lookup};
                    self.'panic'('Unknown operator precedence specification "',
                                 $lookup, '"') unless %lhash;
                    my $lhash_it := nqp::iterator(%lhash);
                    while $lhash_it {
                        $s := nqp::shift($lhash_it);
                        %hash{$s} := %lhash{$s};
                    }
                    $pos := $lpos;
                }
            }
            # Done processing the spec string, cache the hash for later.
            %ohash{$spec} := %hash;
        }

        if $save {
            %ohash{$save} := %hash;
            self;
        }
        else {
            # If we've been called as a subrule, then build a pass-cursor
            # to indicate success and set the hash as the subrule's match object.
            my $cur := self.'!cursor_start_cur'();
            $cur.'!cursor_pass'(nqp::getattr_i($cur, $cursor_class, '$!from'));
            nqp::bindattr($cur, $cursor_class, '$!match', %hash);
            $cur;
        }
    }


=begin

=item panic([args :slurpy])

Throw an exception at the current cursor location.  If the message
doesn't end with a newline, also output the line number and offset
of the match.

=end

    method panic(*@args) {
        my $pos := self.pos();
        my $target := self.target();
        @args.push(' at line ');
        @args.push(HLL::Compiler.lineof($target, $pos) + 1);
        @args.push(', near "');
        @args.push(nqp::escape(nqp::substr($target, $pos, 10)));
        @args.push('"');
        nqp::die(nqp::join('', @args))
    }
    
    method FAILGOAL($goal, $dba?) {
        unless $dba {
            $dba := ~nqp::callercode();
        }
        self.panic("Unable to parse expression in $dba; couldn't find final $goal");
    }


=begin

=item peek_delimiters(target, pos)

Return the start/stop delimiter pair based on peeking at C<target>
position C<pos>.

=end

    method peek_delimiters(str $target, int $pos) {
        # peek at the next character
        my str $start := nqp::substr($target, $pos, 1);
    
        # colon, word and whitespace characters aren't valid delimiters
        if $start eq ':' {
            self.panic('Colons may not be used to delimit quoting constructs');
        }
        if nqp::iscclass(nqp::const::CCLASS_WORD, $start, 0) {
            self.panic('Alphanumeric character is not allowed as a delimiter');
        }
        if nqp::iscclass(nqp::const::CCLASS_WHITESPACE, $start, 0) {
            self.panic('Whitespace character is not allowed as a delimiter');
        }

        # assume stop delim is same as start, for the moment
        my str $stop := $start;
        my int $brac := nqp::index($brackets, $start);
        if $brac >= 0 {
            # if it's a closing bracket, that's an error also
            if $brac % 2 {
                self.panic('Use of a closing delimiter for an opener is reserved');
            }

            # it's an opener, so get the closing bracket
            $stop := nqp::substr($brackets, $brac + 1, 1);

            # see if the opening bracket is repeated
            my int $len := 1;
            while nqp::substr($target, ++$pos, 1) eq $start {
                $len++;
            }
            if $len > 1 {
                $start := nqp::x($start, $len);
                $stop := nqp::x($stop, $len);
            }
          }
          [$start, $stop]
    }

    my $TRUE := 1;
    token quote_EXPR(*@args) {
        :my %*QUOTEMOD;
        :my $*QUOTE_START;
        :my $*QUOTE_STOP;
        {
            for @args -> $mod {
                $mod := nqp::substr($mod, 1);
                %*QUOTEMOD{$mod} := $TRUE;
                if $mod eq 'qq' {
                    %*QUOTEMOD{'s'} := $TRUE;
                    %*QUOTEMOD{'a'} := $TRUE;
                    %*QUOTEMOD{'h'} := $TRUE;
                    %*QUOTEMOD{'f'} := $TRUE;
                    %*QUOTEMOD{'c'} := $TRUE;
                    %*QUOTEMOD{'b'} := $TRUE;
                }
                elsif $mod eq 'b' {
                    %*QUOTEMOD{'q'} := $TRUE;
                }
            }

            my @delims := self.peek_delimiters(self.target, self.pos);
            $*QUOTE_START := @delims[0];
            $*QUOTE_STOP := @delims[1];
        }
        <quote_delimited>
    }

    token quotemod_check(str $mod) {
        <?{ %*QUOTEMOD{$mod} }>
    }

    method starter() {
        my $start := $*QUOTE_START;
        nqp::isnull($start)
            ?? self.'!cursor_start_cur'()
            !! self.'!LITERAL'($start)
    }

    method stopper() {
        my $stop := $*QUOTE_STOP;
        nqp::isnull($stop)
            ?? self.'!cursor_start_cur'()
            !! self.'!LITERAL'($stop)
    }

    our method split_words(str $words) {
        my @result;
        my int $pos := 0;
        my int $eos := nqp::chars($words);
        my int $ws;
        while ($pos := nqp::findnotcclass(nqp::const::CCLASS_WHITESPACE, $words, $pos, $eos)) < $eos {
            $ws := nqp::findcclass(nqp::const::CCLASS_WHITESPACE, $words, $pos, $eos);
            nqp::push(@result, nqp::substr($words, $pos, $ws - $pos));
            $pos := $ws;
        }
        @result
    }

=begin

=item EXPR(...)

An operator precedence parser.

=end

    method EXPR(str $preclim = '', int :$noinfix = 0) {
        my $here          := self.'!cursor_start_cur'();
        my int $pos       := nqp::getattr_i($here, $cursor_class, '$!from');
        my str $termishrx := 'termish';
        my @opstack;
        my @termstack;
        my $termcur;
        my $termish;
        my %termOPER;
        my @prefixish;
        my @postfixish;
        my $wscur;
        my $infixcur;
        my $infix;
        my %inO;
        my str $inprec;
        my str $opprec;
        my str $inassoc;
        my int $more_infix;
        my int $term_done;
        
        while 1 {
            nqp::bindattr_i($here, $cursor_class, '$!pos', $pos);
            $termcur := $here."$termishrx"();
            $pos := nqp::getattr_i($termcur, $cursor_class, '$!pos');
            nqp::bindattr_i($here, $cursor_class, '$!pos', $pos);
            return $here if $pos < 0;

            $termish := $termcur.MATCH();
            
            # Interleave any prefix/postfix we might have found.
            %termOPER := $termish;
            %termOPER := nqp::atkey(%termOPER, 'OPER')
                while nqp::existskey(%termOPER, 'OPER');
            @prefixish  := nqp::atkey(%termOPER, 'prefixish');
            @postfixish := nqp::atkey(%termOPER, 'postfixish');
 
            unless nqp::isnull(@prefixish) || nqp::isnull(@postfixish) {
                while @prefixish && @postfixish {
                    my %preO     := @prefixish[0]<OPER><O>;
                    my %postO    := @postfixish[nqp::elems(@postfixish)-1]<OPER><O>;
                    my $preprec  := nqp::ifnull(nqp::atkey(%preO, 'prec'), '');
                    my $postprec := nqp::ifnull(nqp::atkey(%postO, 'prec'), '');
                    
                    if $postprec gt $preprec ||
                    $postprec eq $preprec && %postO<uassoc> eq 'right'
                    {
                        nqp::push(@opstack, nqp::shift(@prefixish));
                    }
                    else {
                        nqp::push(@opstack, nqp::pop(@postfixish));
                    }
                }
                nqp::push(@opstack, nqp::shift(@prefixish)) while @prefixish;
                nqp::push(@opstack, nqp::pop(@postfixish)) while @postfixish;
            }
            nqp::deletekey($termish, 'prefixish');            
            nqp::deletekey($termish, 'postfixish');
            nqp::push(@termstack, nqp::atkey($termish, 'term'));
        
            last if $noinfix;

            $more_infix := 1;
            $term_done  := 0;
            while $more_infix {
                # Now see if we can fetch an infix operator
                # First, we need ws to match.
                nqp::bindattr_i($here, $cursor_class, '$!pos', $pos);
                $wscur := $here.ws();
                $pos   := nqp::getattr_i($wscur, $cursor_class, '$!pos');
                if $pos < 0 {
                    $term_done := 1;
                    last;
                }
        
                # Next, try the infix itself.
                nqp::bindattr_i($here, $cursor_class, '$!pos', $pos);
                $infixcur := $here.infixish();
                $pos := nqp::getattr_i($infixcur, $cursor_class, '$!pos');
                if $pos < 0 {
                    $term_done := 1;
                    last;
                }
                $infix := $infixcur.MATCH();
    
                # We got an infix.
                %inO := $infix<OPER><O>;
                $termishrx := nqp::ifnull(nqp::atkey(%inO, 'nextterm'), 'termish');
                $inprec := ~%inO<prec>;
                $infixcur.panic('Missing infixish operator precedence')
                    unless $inprec;
                if $inprec lt $preclim {
                    $term_done := 1;
                    last;
                }
        
                %inO<prec> := nqp::ifnull(nqp::atkey(%inO, 'sub'), nqp::atkey(%inO, 'prec'));
                
                while @opstack {
                    $opprec := ~@opstack[+@opstack-1]<OPER><O><prec>;
                    last unless $opprec gt $inprec;
                    self.EXPR_reduce(@termstack, @opstack);
                }

                if nqp::isnull(nqp::atkey(%inO, 'fake')) {
                    $more_infix := 0;
                }
                else {
                    nqp::push(@opstack, $infix);
                    self.EXPR_reduce(@termstack, @opstack);
                }
            }
            last if $term_done;
        
            # if equal precedence, use associativity to decide
            if $opprec eq $inprec {
                $inassoc := nqp::atkey(%inO, 'assoc');
                if $inassoc eq 'non' {
                    self.EXPR_nonassoc($infixcur,
                        @opstack[nqp::elems(@opstack)-1]<OPER><sym>,
                        $infix.Str());
                }
                if $inassoc eq 'left' {
                    # left associative, reduce immediately
                    self.EXPR_reduce(@termstack, @opstack);
                }
            }
            
            nqp::push(@opstack, $infix); # The Shift
            nqp::bindattr_i($here, $cursor_class, '$!pos', $pos);
            $wscur := $here.ws();
            $pos := nqp::getattr_i($wscur, $cursor_class, '$!pos');
            nqp::bindattr_i($here, $cursor_class, '$!pos', $pos);
            return $here if $pos < 0;
        }
        
        self.EXPR_reduce(@termstack, @opstack) while @opstack;
        $pos := nqp::getattr_i($here, $cursor_class, '$!pos');
        $here := self.'!cursor_start_cur'();
        $here.'!cursor_pass'($pos);
        nqp::bindattr_i($here, $cursor_class, '$!pos', $pos);
        nqp::bindattr($here, $cursor_class, '$!match', nqp::pop(@termstack));
        $here.'!reduce'('EXPR');
        $here;
    }

    method EXPR_reduce(@termstack, @opstack) { 
        my $op := nqp::pop(@opstack);
        
        # Give it a fresh capture list, since we'll have assumed it has
        # no positional captures and not taken them.
        nqp::bindattr($op, NQPCapture, '@!array', nqp::list());
        my %opOPER      := nqp::atkey($op, 'OPER');
        my %opO         := nqp::atkey(%opOPER, 'O');
        my str $opassoc := ~nqp::atkey(%opO, 'assoc');
        my str $key;
        my str $sym;
        my $reducecheck;
        my $arg;

        if $opassoc eq 'unary' {
            $arg   := nqp::pop(@termstack);
            $op[0] := $arg;
            $key   := $arg.from() < $op.from() ?? 'POSTFIX' !! 'PREFIX';
        }
        elsif $opassoc eq 'list' {
            $sym := nqp::ifnull(nqp::atkey(%opOPER, 'sym'), '');
            nqp::unshift($op, nqp::pop(@termstack));
            while @opstack {    
                last if $sym ne nqp::ifnull(
                    nqp::atkey(nqp::atkey(nqp::atpos(@opstack,
                        nqp::elems(@opstack) - 1), 'OPER'), 'sym'), '');
                nqp::unshift($op, nqp::pop(@termstack));
                nqp::pop(@opstack);
            }
            nqp::unshift($op, nqp::pop(@termstack));
            $key := 'LIST';
        }
        else { # infix op assoc: left|right|ternary|...
            $op[1] := nqp::pop(@termstack); # right
            $op[0] := nqp::pop(@termstack); # left
            $reducecheck := nqp::atkey(%opO, 'reducecheck');
            self."$reducecheck"($op) unless nqp::isnull($reducecheck);
            $key := 'INFIX';
        }
        self.'!reduce_with_match'('EXPR', $key, $op);
        nqp::push(@termstack, $op);
    }
    
    method EXPR_nonassoc($cur, $op1, $op2) {
        $cur.panic('"' ~ $op1 ~ '" and "' ~ $op2 ~ '" are non-associative and require parens');
    }

    method ternary($match) {
        $match[2] := $match[1];
        $match[1] := $match{'infix'}{'EXPR'};
    }

    method MARKER(str $markname) {
        my %markhash := nqp::getattr(
            nqp::getattr(self, $cursor_class, '$!shared'),
            ParseShared, '%!marks');
        my $cur := self."!cursor_start_cur"();
        $cur."!cursor_pass"(self.pos());
        nqp::bindkey(%markhash, $markname, $cur);
    }
    
    method MARKED(str $markname) {
        my %markhash := nqp::getattr(
            nqp::getattr(self, $cursor_class, '$!shared'),
            ParseShared, '%!marks');
        my $cur := nqp::atkey(%markhash, $markname);
        unless nqp::istype($cur, NQPCursor) && $cur.pos() == self.pos() {
            $cur := self."!cursor_start_cur"();
        }
        $cur
    }

    method LANG($lang, $regex, *@args) {
        my $lang_cursor := %*LANG{$lang}.'!cursor_init'(self.orig(), :p(self.pos()), :shared(self.'!shared'()));
        if self.HOW.traced(self) {
            $lang_cursor.HOW.trace-on($lang_cursor, self.HOW.trace_depth(self));
        }
        my $*ACTIONS    := %*LANG{$lang ~ '-actions'};
        $lang_cursor."$regex"(|@args);
    }
}
