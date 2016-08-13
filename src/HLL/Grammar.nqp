use QRegex;

grammar HLL::Grammar {
    my $brackets := "<>[]()\{}\x[0028]\x[0029]\x[003C]\x[003E]\x[005B]\x[005D]\x[007B]\x[007D]\x[00AB]\x[00BB]\x[0F3A]\x[0F3B]\x[0F3C]\x[0F3D]\x[169B]\x[169C]\x[2018]\x[2019]\x[201A]\x[2019]\x[201B]\x[2019]\x[201C]\x[201D]\x[201E]\x[201D]\x[201F]\x[201D]\x[2039]\x[203A]\x[2045]\x[2046]\x[207D]\x[207E]\x[208D]\x[208E]\x[2208]\x[220B]\x[2209]\x[220C]\x[220A]\x[220D]\x[2215]\x[29F5]\x[223C]\x[223D]\x[2243]\x[22CD]\x[2252]\x[2253]\x[2254]\x[2255]\x[2264]\x[2265]\x[2266]\x[2267]\x[2268]\x[2269]\x[226A]\x[226B]\x[226E]\x[226F]\x[2270]\x[2271]\x[2272]\x[2273]\x[2274]\x[2275]\x[2276]\x[2277]\x[2278]\x[2279]\x[227A]\x[227B]\x[227C]\x[227D]\x[227E]\x[227F]\x[2280]\x[2281]\x[2282]\x[2283]\x[2284]\x[2285]\x[2286]\x[2287]\x[2288]\x[2289]\x[228A]\x[228B]\x[228F]\x[2290]\x[2291]\x[2292]\x[2298]\x[29B8]\x[22A2]\x[22A3]\x[22A6]\x[2ADE]\x[22A8]\x[2AE4]\x[22A9]\x[2AE3]\x[22AB]\x[2AE5]\x[22B0]\x[22B1]\x[22B2]\x[22B3]\x[22B4]\x[22B5]\x[22B6]\x[22B7]\x[22C9]\x[22CA]\x[22CB]\x[22CC]\x[22D0]\x[22D1]\x[22D6]\x[22D7]\x[22D8]\x[22D9]\x[22DA]\x[22DB]\x[22DC]\x[22DD]\x[22DE]\x[22DF]\x[22E0]\x[22E1]\x[22E2]\x[22E3]\x[22E4]\x[22E5]\x[22E6]\x[22E7]\x[22E8]\x[22E9]\x[22EA]\x[22EB]\x[22EC]\x[22ED]\x[22F0]\x[22F1]\x[22F2]\x[22FA]\x[22F3]\x[22FB]\x[22F4]\x[22FC]\x[22F6]\x[22FD]\x[22F7]\x[22FE]\x[2308]\x[2309]\x[230A]\x[230B]\x[2329]\x[232A]\x[23B4]\x[23B5]\x[2768]\x[2769]\x[276A]\x[276B]\x[276C]\x[276D]\x[276E]\x[276F]\x[2770]\x[2771]\x[2772]\x[2773]\x[2774]\x[2775]\x[27C3]\x[27C4]\x[27C5]\x[27C6]\x[27D5]\x[27D6]\x[27DD]\x[27DE]\x[27E2]\x[27E3]\x[27E4]\x[27E5]\x[27E6]\x[27E7]\x[27E8]\x[27E9]\x[27EA]\x[27EB]\x[2983]\x[2984]\x[2985]\x[2986]\x[2987]\x[2988]\x[2989]\x[298A]\x[298B]\x[298C]\x[298D]\x[298E]\x[298F]\x[2990]\x[2991]\x[2992]\x[2993]\x[2994]\x[2995]\x[2996]\x[2997]\x[2998]\x[29C0]\x[29C1]\x[29C4]\x[29C5]\x[29CF]\x[29D0]\x[29D1]\x[29D2]\x[29D4]\x[29D5]\x[29D8]\x[29D9]\x[29DA]\x[29DB]\x[29F8]\x[29F9]\x[29FC]\x[29FD]\x[2A2B]\x[2A2C]\x[2A2D]\x[2A2E]\x[2A34]\x[2A35]\x[2A3C]\x[2A3D]\x[2A64]\x[2A65]\x[2A79]\x[2A7A]\x[2A7D]\x[2A7E]\x[2A7F]\x[2A80]\x[2A81]\x[2A82]\x[2A83]\x[2A84]\x[2A8B]\x[2A8C]\x[2A91]\x[2A92]\x[2A93]\x[2A94]\x[2A95]\x[2A96]\x[2A97]\x[2A98]\x[2A99]\x[2A9A]\x[2A9B]\x[2A9C]\x[2AA1]\x[2AA2]\x[2AA6]\x[2AA7]\x[2AA8]\x[2AA9]\x[2AAA]\x[2AAB]\x[2AAC]\x[2AAD]\x[2AAF]\x[2AB0]\x[2AB3]\x[2AB4]\x[2ABB]\x[2ABC]\x[2ABD]\x[2ABE]\x[2ABF]\x[2AC0]\x[2AC1]\x[2AC2]\x[2AC3]\x[2AC4]\x[2AC5]\x[2AC6]\x[2ACD]\x[2ACE]\x[2ACF]\x[2AD0]\x[2AD1]\x[2AD2]\x[2AD3]\x[2AD4]\x[2AD5]\x[2AD6]\x[2AEC]\x[2AED]\x[2AF7]\x[2AF8]\x[2AF9]\x[2AFA]\x[2E02]\x[2E03]\x[2E04]\x[2E05]\x[2E09]\x[2E0A]\x[2E0C]\x[2E0D]\x[2E1C]\x[2E1D]\x[2E20]\x[2E21]\x[3008]\x[3009]\x[300A]\x[300B]\x[300C]\x[300D]\x[300E]\x[300F]\x[3010]\x[3011]\x[3014]\x[3015]\x[3016]\x[3017]\x[3018]\x[3019]\x[301A]\x[301B]\x[301D]\x[301E]\x[FD3E]\x[FD3F]\x[FE17]\x[FE18]\x[FE35]\x[FE36]\x[FE37]\x[FE38]\x[FE39]\x[FE3A]\x[FE3B]\x[FE3C]\x[FE3D]\x[FE3E]\x[FE3F]\x[FE40]\x[FE41]\x[FE42]\x[FE43]\x[FE44]\x[FE47]\x[FE48]\x[FE59]\x[FE5A]\x[FE5B]\x[FE5C]\x[FE5D]\x[FE5E]\x[FF08]\x[FF09]\x[FF1C]\x[FF1E]\x[FF3B]\x[FF3D]\x[FF5B]\x[FF5D]\x[FF5F]\x[FF60]\x[FF62]\x[FF63]";

    method perl() { self.HOW.name(self) ~ '.new() #`[' ~ nqp::where(self) ~ ']' }

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
    method nulltermish() { !self.terminator && self.termish || self.nullterm_alt }

    token quote_delimited {
        <starter> <quote_atom>* <stopper>
    }

    token quote_atom {
        <!stopper>
        [
        | <quote_escape>
        | [ <-quote_escape - stopper - starter> ]+
        | <starter> <quote_atom>* <stopper>
        ]
    }

    token decint  { [\d+]+ % '_' }
    token decints { [<.ws><decint><.ws>]+ % ',' }

    token hexint  { [[\d|<[ a..f A..F ａ..ｆ Ａ..Ｆ ]>]+]+ % '_' }
    token hexints { [<.ws><hexint><.ws>]+ % ',' }

    token octint  { [\d+]+ % '_' }
    token octints { [<.ws><octint><.ws>]+ % ',' }

    token binint  { [\d+]+ % '_' }
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
        \\ {}
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
        || <.alpha> .*? <?before \s* <[ \] , # ]> >
    }
    token charnames { [<.ws><charname><.ws>]+ % ',' }
    token charspec {
        [
        | '[' <charnames> ']' 
        | \d+ [ _ \d+]*
        | <control=[ ?..Z ]>
        | <.panic: 'Unrecognized \\c character'>
        ]
    }

=begin 

=item O(*%spec)

This subrule attaches operator precedence information to
a match object (such as an operator token).  A typical
invocation for the subrule might be:

    token infix:sym<+> { <sym> <O(|%additive, :op<add>)> }

This says to add all of the attributes of the C<%additive> hash
(described below) and a C<op> entry into the match object
returned by the C<< infix:sym<+> >> token (as the C<O> named
capture).  Note that this is a alphabetic "O", not a digit zero.

The %additive hash is simply a hash containing information that is shared
between all additive operators. Generally, this will simply be a normal
lexically scoped hash belonging to the grammar. For example, the NQP grammar
has:

    grammar NQP::Grammar is HLL::Grammar {
        my %additive := nqp::hash('prec', 't=', 'assoc', 'left');
        token infix:sym<+>    { <sym>  <O(|%additive, :op<add_n>)> }
    }

=end

    token O(*%spec) {
        :my %*SPEC := %spec;
        <?>
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
        nqp::die(join('', @args))
    }
    
    method FAILGOAL($goal, $dba?) {
        unless $dba {
            $dba := nqp::getcodename(nqp::callercode());
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
            my $code := nqp::sprintf('%X', [nqp::ord($start)]);
            self.panic('Whitespace character (0x' ~ $code ~ ') is not allowed as a delimiter');
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
        nqp::isconcrete($start)
            ?? self.'!LITERAL'($start)
            !! self.'!cursor_start_fail'()
    }

    method stopper() {
        my $stop := $*QUOTE_STOP;
        nqp::isconcrete($stop)
            ?? self.'!LITERAL'($stop)
            !! self.'!cursor_start_fail'()
    }

    my %nbsp := nqp::hash(
        "\x00A0", 1,
        "\x2007", 1,
        "\x202F", 1,
        "\xFEFF", 1,
    );
    our method split_words(str $words) {
        my @result;
        my int $pos := 0;
        my int $eos := nqp::chars($words);
        my int $ws;
        while ($pos := nqp::findnotcclass(nqp::const::CCLASS_WHITESPACE, $words, $pos, $eos)) < $eos {
            # Search for another white space character as long as we hit non-breakable spaces.
            $ws := $pos;
            while %nbsp{nqp::substr($words, $ws := nqp::findcclass(nqp::const::CCLASS_WHITESPACE, $words, $ws, $eos), 1)} {
                $ws := $ws + 1
            }
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
        my int $pos       := nqp::getattr_i($here, NQPCursor, '$!from');
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
            nqp::bindattr_i($here, NQPCursor, '$!pos', $pos);
            $termcur := $here."$termishrx"();
            $pos := nqp::getattr_i($termcur, NQPCursor, '$!pos');
            nqp::bindattr_i($here, NQPCursor, '$!pos', $pos);
            if $pos < 0 {
                $here.panic('Missing required term after infix') if @opstack;
                return $here;
            }

            $termish := $termcur.MATCH();
            
            # Interleave any prefix/postfix we might have found.
            %termOPER := $termish;
            %termOPER := nqp::atkey(%termOPER, 'OPER')
                while nqp::existskey(%termOPER, 'OPER');
            @prefixish  := nqp::atkey(%termOPER, 'prefixish');
            @postfixish := nqp::atkey(%termOPER, 'postfixish');
 
            unless nqp::isnull(@prefixish) || nqp::isnull(@postfixish) {
                while @prefixish && @postfixish {
                    my %preO     := @prefixish[0]<OPER><O>.made;
                    my %postO    := @postfixish[nqp::elems(@postfixish)-1]<OPER><O>.made;
                    my $preprec  := nqp::ifnull(nqp::atkey(%preO, 'sub'), nqp::ifnull(nqp::atkey(%preO, 'prec'), ''));
                    my $postprec := nqp::ifnull(nqp::atkey(%postO, 'sub'), nqp::ifnull(nqp::atkey(%postO, 'prec'), ''));

                    if $postprec gt $preprec {
                        nqp::push(@opstack, nqp::shift(@prefixish));
                    }
                    elsif $postprec lt $preprec {
                        nqp::push(@opstack, nqp::pop(@postfixish));
                    }
                    elsif %postO<uassoc> eq 'right' {
                        nqp::push(@opstack, nqp::shift(@prefixish));
                    }
                    elsif %postO<uassoc> eq 'left' {
                        nqp::push(@opstack, nqp::pop(@postfixish));
                    }
                    else {
                        self.EXPR_nonassoc($here, ~@prefixish[0], ~@postfixish[0]);
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
                nqp::bindattr_i($here, NQPCursor, '$!pos', $pos);
                $wscur := $here.ws();
                $pos   := nqp::getattr_i($wscur, NQPCursor, '$!pos');
                if $pos < 0 {
                    $term_done := 1;
                    last;
                }
        
                # Next, try the infix itself.
                nqp::bindattr_i($here, NQPCursor, '$!pos', $pos);
                $infixcur := $here.infixish();
                $pos := nqp::getattr_i($infixcur, NQPCursor, '$!pos');
                if $pos < 0 {
                    $term_done := 1;
                    last;
                }
                $infix := $infixcur.MATCH();
    
                # We got an infix.
                %inO := $infix<OPER><O>.made;
                $termishrx := nqp::ifnull(nqp::atkey(%inO, 'nextterm'), 'termish');
                $inprec := ~%inO<prec>;
                $infixcur.panic('Missing infixish operator precedence')
                    unless $inprec;
                if $inprec le $preclim {
                    $term_done := 1;
                    last;
                }

                while @opstack {
                    my %opO := @opstack[+@opstack-1]<OPER><O>.made;

                    $opprec := nqp::ifnull(nqp::atkey(%opO, 'sub'), nqp::atkey(%opO, 'prec'));
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
                        @opstack[nqp::elems(@opstack)-1]<OPER>.Str,
                        $infix.Str());
                }
                elsif $inassoc eq 'left' {
                    # left associative, reduce immediately
                    self.EXPR_reduce(@termstack, @opstack);
                }
                elsif $inassoc eq 'list' {
                    my $op1 := @opstack[nqp::elems(@opstack)-1]<OPER>.Str;
                    my $op2 := $infix.Str();
                    self.EXPR_nonlistassoc($infixcur, $op1, $op2) if $op1 ne $op2 && $op1 ne ':';
                }
            }
            
            nqp::push(@opstack, $infix); # The Shift
            nqp::bindattr_i($here, NQPCursor, '$!pos', $pos);
            $wscur := $here.ws();
            $pos := nqp::getattr_i($wscur, NQPCursor, '$!pos');
            nqp::bindattr_i($here, NQPCursor, '$!pos', $pos);
            return $here if $pos < 0;
        }
        
        self.EXPR_reduce(@termstack, @opstack) while @opstack;
        $pos := nqp::getattr_i($here, NQPCursor, '$!pos');
        $here := self.'!cursor_start_cur'();
        $here.'!cursor_pass'($pos);
        nqp::bindattr_i($here, NQPCursor, '$!pos', $pos);
        nqp::bindattr($here, NQPCursor, '$!match', nqp::pop(@termstack));
        $here.'!reduce'('EXPR');
        $here;
    }

    method EXPR_reduce(@termstack, @opstack) { 
        my $op := nqp::pop(@opstack);
        
        # Give it a fresh capture list, since we'll have assumed it has
        # no positional captures and not taken them.
        nqp::bindattr($op, NQPCapture, '@!array', nqp::list());
        my %opOPER      := nqp::atkey($op, 'OPER');
        my %opO         := nqp::atkey(%opOPER, 'O').made;
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

    method EXPR_nonlistassoc($cur, $op1, $op2) {
        $cur.panic('"' ~ $op1 ~ '" and "' ~ $op2 ~ '" are non-identical list-associatives and require parens');
    }

    method ternary($match) {
        $match[2] := $match[1];
        $match[1] := $match{'infix'}{'EXPR'};
    }

    method MARKER(str $markname) {
        my %markhash := nqp::getattr(
            nqp::getattr(self, NQPCursor, '$!shared'),
            ParseShared, '%!marks');
        my $cur := nqp::atkey(%markhash, $markname);
        if nqp::isnull($cur) {
            $cur := self."!cursor_start_cur"();
            $cur."!cursor_pass"(self.pos());
            nqp::bindkey(%markhash, $markname, $cur);
        }
        else {
	    nqp::bindattr_i($cur, NQPCursor, '$!from', self.from);
            $cur."!cursor_pos"(self.pos());
            $cur
        }
    }
    
    method MARKED(str $markname) {
        my %markhash := nqp::getattr(
            nqp::getattr(self, NQPCursor, '$!shared'),
            ParseShared, '%!marks');
        my $cur := nqp::atkey(%markhash, $markname);
        unless nqp::istype($cur, NQPCursor) && $cur.pos() == self.pos() {
            $cur := self.'!cursor_start_fail'();
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
