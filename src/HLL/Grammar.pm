use QRegex;

grammar HLL::Grammar {
    my $brackets := "<>[]()\{}\xab\xbb\x[0f3a]\x[0f3b]\x[0f3c]\x[0f3d]\x[169b]\x[169c]\x[2045]\x[2046]\x[207d]\x[207e]\x[208d]\x[208e]\x[2329]\x[232a]\x[2768]\x[2769]\x[276a]\x[276b]\x[276c]\x[276d]\x[276e]\x[276f]\x[2770]\x[2771]\x[2772]\x[2773]\x[2774]\x[2775]\x[27c5]\x[27c6]\x[27e6]\x[27e7]\x[27e8]\x[27e9]\x[27ea]\x[27eb]\x[2983]\x[2984]\x[2985]\x[2986]\x[2987]\x[2988]\x[2989]\x[298a]\x[298b]\x[298c]\x[298d]\x[298e]\x[298f]\x[2990]\x[2991]\x[2992]\x[2993]\x[2994]\x[2995]\x[2996]\x[2997]\x[2998]\x[29d8]\x[29d9]\x[29da]\x[29db]\x[29fc]\x[29fd]\x[3008]\x[3009]\x[300a]\x[300b]\x[300c]\x[300d]\x[300e]\x[300f]\x[3010]\x[3011]\x[3014]\x[3015]\x[3016]\x[3017]\x[3018]\x[3019]\x[301a]\x[301b]\x[301d]\x[301e]\x[fd3e]\x[fd3f]\x[fe17]\x[fe18]\x[fe35]\x[fe36]\x[fe37]\x[fe38]\x[fe39]\x[fe3a]\x[fe3b]\x[fe3c]\x[fe3d]\x[fe3e]\x[fe3f]\x[fe40]\x[fe41]\x[fe42]\x[fe43]\x[fe44]\x[fe47]\x[fe48]\x[fe59]\x[fe5a]\x[fe5b]\x[fe5c]\x[fe5d]\x[fe5e]\x[ff08]\x[ff09]\x[ff3b]\x[ff3d]\x[ff5b]\x[ff5d]\x[ff5f]\x[ff60]\x[ff62]\x[ff63]";
    my $cursor_class := NQPCursor;

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

    # token quote_EXPR is in src/cheats/hll-grammar.pir
    token quote_delimited {
        <starter> <quote_atom>* <stopper>
    }

    token quote_atom {
        <!stopper>
        [
        | <quote_escape>
        | [ <-quote_escape-stopper> ]+
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
             | $<x>=[\w] { $/.CURSOR.panic("Unrecognized backslash sequence: '\\" ~ $<x>.Str ~ "'") } 
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
capture).  Note that this is a alphabetic 'O", not a digit zero.

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
    method O($spec, $save?) {
        Q:PIR {
            .local pmc self, cur_class
            .local string spec, save
            .local int has_save
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'
            $P0 = find_lex '$spec'
            spec = $P0
            has_save = 0
            $P0 = find_lex '$save'
            unless $P0 goto no_save
            save = $P0
            has_save = 1
          no_save:

            # First, get the hash cache.  Right now we have one
            # cache for all grammars; eventually we may need a way to
            # separate them out by cursor type.
            .local pmc ohash
            ohash = get_global '%!ohash'
            unless null ohash goto have_ohash
            ohash = new ['Hash']
            set_global '%!ohash', ohash
          have_ohash:

            # See if we've already created a Hash for the current
            # specification string -- if so, use that.
            .local pmc hash
            hash = ohash[spec]
            unless null hash goto hash_done

            # Otherwise, we need to build a new one.
            hash = new ['Hash']
            .local int pos, eos
            pos = 0
            eos = length spec
          spec_loop:
            pos = find_not_cclass .CCLASS_WHITESPACE, spec, pos, eos
            if pos >= eos goto spec_done
            $S0 = substr spec, pos, 1
            if $S0 == ',' goto spec_comma
            if $S0 == ':' goto spec_pair

            # If whatever we found doesn't start with a colon, treat it
            # as a lookup of a previously saved hash to be merged in.
            .local string lookup
            .local int lpos
            # Find the first whitespace or comma
            lpos = find_cclass .CCLASS_WHITESPACE, spec, pos, eos
            $I0 = index spec, ',', pos
            if $I0 < 0 goto have_lookup_lpos
            if $I0 >= lpos goto have_lookup_lpos
            lpos = $I0
          have_lookup_lpos:
            $I0 = lpos - pos
            lookup = substr spec, pos, $I0
            .local pmc lhash, lhash_it
            lhash = ohash[lookup]
            if null lhash goto err_lookup
            lhash_it = iter lhash
          lhash_loop:
            unless lhash_it goto lhash_done
            $S0 = shift lhash_it
            $P0 = lhash[$S0]
            hash[$S0] = $P0
            goto lhash_loop
          lhash_done:
            pos = lpos
            goto spec_loop

            # We just ignore commas between elements for now.
          spec_comma:
            inc pos
            goto spec_loop

            # If we see a colon, then we want to parse whatever
            # comes next like a pair.
          spec_pair:
            # eat colon
            inc pos
            .local string name
            .local pmc value
            value = new ['Boolean']

            # If the pair is of the form :!name, then reverse the value
            # and skip the colon.
            $S0 = substr spec, pos, 1
            $I0 = iseq $S0, '!'
            pos += $I0
            $I0 = not $I0
            value = $I0

            # Get the name of the pair.
            lpos = find_not_cclass .CCLASS_WORD, spec, pos, eos
            $I0 = lpos - pos
            name = substr spec, pos, $I0
            pos = lpos

            # Look for a <...> that follows.
            $S0 = substr spec, pos, 1
            unless $S0 == '<' goto have_value
            inc pos
            lpos = index spec, '>', pos
            $I0 = lpos - pos
            $S0 = substr spec, pos, $I0
            value = box $S0
            pos = lpos + 1
          have_value:
            # Done processing the pair, store it in the hash.
            hash[name] = value
            goto spec_loop
          spec_done:
            # Done processing the spec string, cache the hash for later.
            ohash[spec] = hash
          hash_done:

            # If we've been called as a subrule, then build a pass-cursor
            # to indicate success and set the hash as the subrule's match object.
            if has_save goto save_hash
            ($P0, $S0, $I0) = self.'!cursor_start'()
            $P0.'!cursor_pass'($I0, '')
            setattribute $P0, cur_class, '$!match', hash
            .return ($P0)

            # save the hash under a new entry
          save_hash:
            ohash[save] = hash
            .return (self)

          err_lookup:
            self.'panic'('Unknown operator precedence specification "', lookup, '"')
        };
    }


=begin

=item panic([args :slurpy])

Throw an exception at the current cursor location.  If the message
doesn't end with a newline, also output the line number and offset
of the match.

=end

    method panic(*@args) {
        my $pos := self.pos();
        my $target := nqp::getattr_s(self, NQPCursor, '$!target');
        @args.push(' at line ');
        @args.push(HLL::Compiler.lineof($target, $pos) + 1);
        @args.push(', near "');
        @args.push(pir::escape__SS(nqp::substr($target, $pos, 10)));
        @args.push('"');
        nqp::die(nqp::join('', @args))
    }


=begin

=item peek_delimiters(target, pos)

Return the start/stop delimiter pair based on peeking at C<target>
position C<pos>.

=end

    method peek_delimiters($target, $pos) {
        # Peek at the next character.
        my $start := nqp::substr($target, $pos, 1);

        self.'panic'('Colons may not be used to delimit quoting constructs')
            if $start eq ':';
        self.'panic'('Whitespace character is not allowed as a delimiter')
            if nqp::iscclass(pir::const::CCLASS_WHITESPACE, $start, 0);

        # assume stop delim is same as start, for the moment
        my $stop := $start;

        # see if we have an opener or closer
        my $index := nqp::index($brackets, $start);
        unless $index < 0 {
           # If it's a closing bracket, that's an error also.
           self.'panic'('Use of a closing delimiter for an opener is reserved')
               if $index % 2;
           
           # It's an opener, so get the closing bracket.
           $stop := nqp::substr($brackets, $index + 1, 1);

           # See if the opening bracket is repeated.
           my $len := 0;
           while 1 {
               $pos  := $pos + 1;
               $len  := $len + 1;
               my $s := nqp::substr($target, $pos, 1);
               next if $s eq $start;
               last if $len == 1;
               $start := nqp::x($stop, $len);
               $stop  := nqp::x($start, $len);
           }
        }
        pir::return__vssi($start, $stop, $pos);
    }

    token quote_EXPR(*@args) {
        :my %*QUOTEMOD;
        :my $*QUOTE_START;
        :my $*QUOTE_STOP;
        {
            my $true := pir::box__Pi(1);
            for @args {
                my $mod := nqp::substr($_, 1);
                %*QUOTEMOD{$mod} := $true;
                
                if $mod eq 'qq' {
                    %*QUOTEMOD<s> := $true;
                    %*QUOTEMOD<a> := $true;
                    %*QUOTEMOD<h> := $true;
                    %*QUOTEMOD<f> := $true;
                    %*QUOTEMOD<c> := $true;
                    %*QUOTEMOD<b> := $true;
                }
                elsif $mod eq 'b' {
                    %*QUOTEMOD<q> := $true
                }
            }
            
            Q:PIR {
                .local pmc self, cur_class, start, stop
                .local string target
                .local int pos
                self = find_lex 'self'
                cur_class = find_lex '$cursor_class'
                target = repr_get_attr_str self, cur_class, '$!target'
                pos = repr_get_attr_int self, cur_class, '$!pos'
                (start, stop) = self.'peek_delimiters'(target, pos)
                store_lex '$*QUOTE_START', start
                store_lex '$*QUOTE_STOP', stop
            }
        }
        <quote_delimited>
    }

    token quotemod_check($mod) {
        <?{ %*QUOTEMOD{$mod} }>
    }

    method starter() {
        my $cur         := self.'!cursor_start'();
        my $target      := nqp::getattr_s($cur, $cursor_class, '$!target');
        my $pos         := nqp::getattr_i($cur, $cursor_class, '$!from');
        my $quote_start := pir::find_dynamic_lex__Ps('$*QUOTE_START');
        return $cur if $quote_start eq '';

        my $i := nqp::chars($quote_start);
        return $cur unless $quote_start eq nqp::substr($target, $pos, $i);

        $cur.'!cursor_pass'($pos + $i, 'starter');
        return $cur;

    }

    method stopper() {
        my $cur        := self.'!cursor_start'();
        my $target     := nqp::getattr_s($cur, $cursor_class, '$!target');
        my $pos        := nqp::getattr_i($cur, $cursor_class, '$!from');
        my $quote_stop := pir::find_dynamic_lex__Ps('$*QUOTE_STOP');
        return $cur if $quote_stop eq '';

        my $i := nqp::chars($quote_stop);
        return $cur unless $quote_stop eq nqp::substr($target, $pos, $i);

        $cur.'!cursor_pass'($pos + $i, 'stopper');
        return $cur;
    }

    our method split_words($words) {
        my $pos    := 0;
        my $eos    := nqp::chars($words);
        my @result := nqp::list();

        while 1 {
            $pos := nqp::findnotcclass(pir::const::CCLASS_WHITESPACE,
                $words, $pos, $eos);
            last unless $pos < $eos;
            my $i := pir::find_cclass__Iisii(pir::const::CCLASS_WHITESPACE,
                $words, $pos, $eos);
            nqp::push(@result, nqp::substr($words, $pos, $i - $pos));
            $pos := $i;
        }
        return @result;
    }

=begin

=item EXPR(...)

An operator precedence parser.

=end

    method EXPR($preclim = '') {
        my $here      := self.'!cursor_start'();
        my $pos       := nqp::getattr_i($here, $cursor_class, '$!from');
        my $termishrx := 'termish';
        my @opstack   := nqp::list();
        my @termstack := nqp::list();

        while 1 {
            nqp::bindattr_i($here, $cursor_class, '$!pos', $pos);
            my $termcur := $here."$termishrx"();
            $pos := nqp::getattr_i($termcur, $cursor_class, '$!pos');
            nqp::bindattr_i($here, $cursor_class, '$!pos', $pos);
            return $here if $pos < 0;
            
            my $termish := $termcur.MATCH();
            # Interleave any prefix/postfix we might have found.
            my %termOPER := $termish;
            %termOPER := %termOPER<OPER> while nqp::existskey(%termOPER,'OPER');
            my @prefixish  := %termOPER<prefixish>;
            my @postfixish := %termOPER<postfixish>;
 
            while @prefixish && @postfixish {
                my %preO     := @prefixish[0]<OPER><O>;
                my %postO    := @postfixish[+@postfixish-1]<OPER><O>;
                my $preprec  := ~%preO<prec>;
                my $postprec := ~%postO<prec>;
                
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
            nqp::deletekey($termish, 'prefixish');            
            nqp::push(@opstack, nqp::pop(@postfixish)) while @postfixish;
            nqp::deletekey($termish, 'postfixish');
            nqp::push(@termstack, $termish<term>);
            
            # Now see if we can fetch an infix operator
            # First, we need ws to match.
            nqp::bindattr_i($here, $cursor_class, '$!pos', $pos);
            my $wscur := $here.ws();
            $pos      := nqp::getattr_i($wscur, $cursor_class, '$!pos');
            last if $pos < 0;
            
            # Next, try the infix itself.
            nqp::bindattr_i($here, $cursor_class, '$!pos', $pos);
            my $infixcur := $here.infixish();
            $pos := nqp::getattr_i($infixcur, $cursor_class, '$!pos');
            last if $pos < 0;

            my $infix := $infixcur.MATCH();
            # We got an infix.
            my %inO := $infix<OPER><O>;
            $termishrx := %inO<nextterm> // 'termish';
            my $inprec := ~%inO<prec>;
            $infixcur.'panic'('Missing infixish operator precedence')
                unless $inprec;
            last if $inprec lt $preclim;

            my $inassoc := ~%inO<assoc>;
            my $subprec := ~%inO<sub>;
            %inO<prec>  := $subprec if $subprec ne '';
            
            while @opstack {
                my $opprec := ~@opstack[+@opstack-1]<OPER><O><prec>;
                if $opprec gt $inprec {
                    self.EXPR_reduce(@termstack, @opstack);
                }
                else {
                    self.EXPR_reduce(@termstack, @opstack)
                        if $opprec eq $inprec && $inassoc eq 'left';
                    last;
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
        my $term := nqp::pop(@termstack);
        $pos := $here.pos();
        $here := self.'!cursor_start'();
        $here.'!cursor_pass'($pos);
        nqp::bindattr_i($here, $cursor_class, '$!pos', $pos);
        nqp::bindattr($here, $cursor_class, '$!match', $term);
        $here.'!reduce'('EXPR');
        return $here;
    }

    method EXPR_reduce(@termstack, @opstack) { 
        my $op := nqp::pop(@opstack);
        # Give it a fresh capture list, since we'll have assumed it has
        # no positional captures and not taken them.
        nqp::bindattr($op, NQPCapture, '@!array', nqp::list());
        my %opOPER  := $op<OPER>;
        my %opO     := %opOPER<O>;
        my $opassoc := ~%opO<assoc>;
        my $key;

        if $opassoc eq 'unary' {
            my $arg := nqp::pop(@termstack);
            $op[0]  := $arg;
            $key    := $arg.from() < $op.from() ?? 'POSTFIX' !! 'PREFIX';
        }
        elsif $opassoc eq 'list' {
            my $sym := ~%opOPER<sym>;
            nqp::unshift($op, nqp::pop(@termstack));
            while @opstack {    
                last if $sym ne @opstack[+@opstack-1]<OPER><sym>;
                nqp::unshift($op, nqp::pop(@termstack));
                nqp::pop(@opstack);
            }
            nqp::unshift($op, nqp::pop(@termstack));
            $key := 'LIST';
        }
        else { # infix op assoc: left|right|ternary|...
            $op[1] := nqp::pop(@termstack); # right
            $op[0] := nqp::pop(@termstack); # left
            my $reducecheck := %opO<reducecheck>;
            self."$reducecheck"($op) if $reducecheck ne '';
            $key := 'INFIX';
        }
        self.'!reduce_with_match'('EXPR', $key, $op);
        nqp::push(@termstack, $op);
    }

    method ternary($match) {
        $match[2] := $match[1];
        $match[1] := $match{'infix'}{'EXPR'};
    }

    method MARKER($markname) {
        my %markhash := Q:PIR {
            %r = get_global '%!MARKHASH'
            unless null %r goto have_markhash
            %r = new ['Hash']
            set_global '%!MARKHASH', %r
          have_markhash:
        };
        my $cur := self."!cursor_start"();
        $cur."!cursor_pass"(self.pos());
        %markhash{$markname} := $cur;
    }
    
    method MARKED($markname) {
        my %markhash := Q:PIR {
            %r = get_global '%!MARKHASH'
            unless null %r goto have_markhash
            %r = new ['Hash']
            set_global '%!MARKHASH', %r
          have_markhash:
        };
        my $cur := %markhash{$markname};
        unless nqp::istype($cur, NQPCursor) && $cur.pos() == self.pos() {
            $cur := self."!cursor_start"();
        }
        $cur
    }

    method LANG($lang, $regex) {
        my $lang_cursor := %*LANG{$lang}.'!cursor_init'(self.target(), :p(self.pos()));
        if self.HOW.traced(self) {
            $lang_cursor.HOW.trace-on($lang_cursor, self.HOW.trace_depth(self));
        }
        my $*ACTIONS    := %*LANG{$lang ~ '-actions'};
        $lang_cursor."$regex"();  
    }
}
