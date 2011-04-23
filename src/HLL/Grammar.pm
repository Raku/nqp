use Regex;

grammar HLL::Grammar {
    my $brackets := "<>[]()\{}\xab\xbb\x[0f3a]\x[0f3b]\x[0f3c]\x[0f3d]\x[169b]\x[169c]\x[2045]\x[2046]\x[207d]\x[207e]\x[208d]\x[208e]\x[2329]\x[232a]\x[2768]\x[2769]\x[276a]\x[276b]\x[276c]\x[276d]\x[276e]\x[276f]\x[2770]\x[2771]\x[2772]\x[2773]\x[2774]\x[2775]\x[27c5]\x[27c6]\x[27e6]\x[27e7]\x[27e8]\x[27e9]\x[27ea]\x[27eb]\x[2983]\x[2984]\x[2985]\x[2986]\x[2987]\x[2988]\x[2989]\x[298a]\x[298b]\x[298c]\x[298d]\x[298e]\x[298f]\x[2990]\x[2991]\x[2992]\x[2993]\x[2994]\x[2995]\x[2996]\x[2997]\x[2998]\x[29d8]\x[29d9]\x[29da]\x[29db]\x[29fc]\x[29fd]\x[3008]\x[3009]\x[300a]\x[300b]\x[300c]\x[300d]\x[300e]\x[300f]\x[3010]\x[3011]\x[3014]\x[3015]\x[3016]\x[3017]\x[3018]\x[3019]\x[301a]\x[301b]\x[301d]\x[301e]\x[fd3e]\x[fd3f]\x[fe17]\x[fe18]\x[fe35]\x[fe36]\x[fe37]\x[fe38]\x[fe39]\x[fe3a]\x[fe3b]\x[fe3c]\x[fe3d]\x[fe3e]\x[fe3f]\x[fe40]\x[fe41]\x[fe42]\x[fe43]\x[fe44]\x[fe47]\x[fe48]\x[fe59]\x[fe5a]\x[fe5b]\x[fe5c]\x[fe5d]\x[fe5e]\x[ff08]\x[ff09]\x[ff3b]\x[ff3d]\x[ff5b]\x[ff5d]\x[ff5f]\x[ff60]\x[ff62]\x[ff63]";

    token ws { <!ww> [ \s+ | '#' \N* ]* }

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

    token decint  { [\d+] ** '_' }
    token decints { [<.ws><decint><.ws>] ** ',' }

    token hexint  { [<[ 0..9 a..f A..F ]>+] ** '_' }
    token hexints { [<.ws><hexint><.ws>] ** ',' }

    token octint  { [<[ 0..7 ]>+] ** '_' }
    token octints { [<.ws><octint><.ws>] ** ',' }

    token binint  { [<[ 0..1 ]>+] ** '_' }
    token binints { [<.ws><binint><.ws>] ** ',' }

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
    token charnames { [<.ws><charname><.ws>] ** ',' }
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
            .include 'cclass.pasm'
            
            .local pmc self, cur_class
            .local string spec, save
            .local int has_save
            self = find_lex 'self'
            cur_class = get_hll_global ['Regex'], 'Cursor'
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
            ($P0, $I0) = self.'!cursor_start'()
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
        my $target := pir::getattribute__PPPs(self, Regex::Cursor, '$!target');
        @args.push(' at line ');
        @args.push(HLL::Compiler.lineof($target, $pos) + 1);
        @args.push(', near "');
        @args.push(pir::escape__SS(pir::substr($target, $pos, 10)));
        @args.push('"');
        pir::die(pir::join('', @args))
    }


=begin

=item peek_delimiters(target, pos)

Return the start/stop delimiter pair based on peeking at C<target>
position C<pos>.

=end

    method peek_delimiters($target, $pos) {
        Q:PIR {
            .local pmc self
            self = find_lex 'self'
            .local string target
            $P0 = find_lex '$target'
            target = $P0
            .local int pos
            $P0 = find_lex '$pos'
            pos = $P0

            .local string brackets, start, stop
            $P0 = find_lex '$brackets'
            brackets = $P0

            # peek at the next character
            start = substr target, pos, 1
            # colon and word characters aren't valid delimiters
            if start == ':' goto err_colon_delim
            $I0 = is_cclass .CCLASS_WORD, start, 0
            if $I0 goto err_word_delim
            $I0 = is_cclass .CCLASS_WHITESPACE, start, 0
            if $I0 goto err_ws_delim

            # assume stop delim is same as start, for the moment
            stop = start

            # see if we have an opener or closer
            $I0 = index brackets, start
            if $I0 < 0 goto bracket_end
            # if it's a closing bracket, that's an error also
            $I1 = $I0 % 2
            if $I1 goto err_close
            # it's an opener, so get the closing bracket
            inc $I0
            stop = substr brackets, $I0, 1

            # see if the opening bracket is repeated
            .local int len
            len = 0
          bracket_loop:
            inc pos
            inc len
            $S0 = substr target, pos, 1
            if $S0 == start goto bracket_loop
            if len == 1 goto bracket_end
            start = repeat start, len
            stop = repeat stop, len
          bracket_end:
            .return (start, stop, pos)

          err_colon_delim:
            self.'panic'('Colons may not be used to delimit quoting constructs')
          err_word_delim:
            self.'panic'('Alphanumeric character is not allowed as a delimiter')
          err_ws_delim:
            self.'panic'('Whitespace character is not allowed as a delimiter')
          err_close:
            self.'panic'('Use of a closing delimiter for an opener is reserved')
        };
    }

    method quote_EXPR(*@args) {
        Q:PIR {
            .include 'src/Regex/constants.pir'
            
            .local pmc self, cur_class, args
            self = find_lex 'self'
            cur_class = get_hll_global ['Regex'], 'Cursor'
            args = find_lex '@args'

            .local pmc cur, debug
            .local string target
            .local int pos

            (cur, pos, target) = self.'!cursor_start'()
            debug = getattribute cur, cur_class, '$!debug'
            if null debug goto debug_1
            cur.'!cursor_debug'('START', 'quote_EXPR')
          debug_1:

            .local pmc quotemod, true
            .lex '%*QUOTEMOD', quotemod
            quotemod = new ['Hash']

            true = box 1


          args_loop:
            unless args goto args_done
            .local string mod
            mod = shift args
            mod = substr mod, 1
            quotemod[mod] = true
            if mod == 'qq' goto opt_qq
            if mod == 'b' goto opt_b
            goto args_loop
          opt_qq:
            quotemod['s'] = true
            quotemod['a'] = true
            quotemod['h'] = true
            quotemod['f'] = true
            quotemod['c'] = true
            quotemod['b'] = true
          opt_b:
            quotemod['q'] = true
            goto args_loop
          args_done:


            .local pmc start, stop
            (start, stop) = self.'peek_delimiters'(target, pos)

            .lex '$*QUOTE_START', start
            .lex '$*QUOTE_STOP', stop

            $P10 = cur.'quote_delimited'()
            unless $P10 goto fail
            cur.'!mark_push'(0, CURSOR_FAIL, 0, $P10)
            $P10.'!cursor_names'('quote_delimited')
            pos = $P10.'pos'()
            cur.'!cursor_pass'(pos, 'quote_EXPR')
            if null debug goto done
            cur.'!cursor_debug'('PASS', 'quote_EXPR')
            goto done
          fail:
            if null debug goto done
            cur.'!cursor_debug'('FAIL', 'quote_EXPR')
          done:
            .return (cur)
        };
    }

    our method quotemod_check($mod) {
        %*QUOTEMOD{$mod}
    }

    method starter() {
        Q:PIR {
            .local pmc self, cur
            .local string target, start
            .local int pos
            self = find_lex 'self'

            (cur, pos, target) = self.'!cursor_start'()

            $P0 = find_dynamic_lex '$*QUOTE_START'
            if null $P0 goto fail
            start = $P0

            $I0 = length start
            $S0 = substr target, pos, $I0
            unless $S0 == start goto fail
            pos += $I0
            cur.'!cursor_pass'(pos, 'starter')
          fail:
            .return (cur)
        };
    }

    method stopper() {
        Q:PIR {
            .local pmc self, cur
            .local string target, stop
            .local int pos
            self = find_lex 'self'

            (cur, pos, target) = self.'!cursor_start'()

            $P0 = find_dynamic_lex '$*QUOTE_STOP'
            if null $P0 goto fail
            stop = $P0

            $I0 = length stop
            $S0 = substr target, pos, $I0
            unless $S0 == stop goto fail
            pos += $I0
            cur.'!cursor_pass'(pos, 'stopper')
          fail:
            .return (cur)
        };
    }

    our method split_words($words) {
        Q:PIR {
            .local string words
            $P0 = find_lex '$words'
            words = $P0
            .local int pos, eos
            .local pmc result
            pos = 0
            eos = length words
            result = new ['ResizablePMCArray']
          split_loop:
            pos = find_not_cclass .CCLASS_WHITESPACE, words, pos, eos
            unless pos < eos goto split_done
            $I0 = find_cclass .CCLASS_WHITESPACE, words, pos, eos
            $I1 = $I0 - pos
            $S0 = substr words, pos, $I1
            push result, $S0
            pos = $I0
            goto split_loop
          split_done:
            .return (result)
        };
    }

=begin

=item EXPR(...)

An operator precedence parser.

=end

    method EXPR($preclim = '') {
        Q:PIR {
            .local pmc self, cur_class
            self = find_lex 'self'
            cur_class = get_hll_global ['Regex'], 'Cursor'

            .local string preclim
            $P0 = find_lex '$preclim'
            preclim = $P0
            
            .local pmc here, debug
            .local int pos
            (here, pos) = self.'!cursor_start'()
            debug = getattribute here, cur_class, '$!debug'
            if null debug goto debug_1
            here.'!cursor_debug'('START', 'EXPR')
          debug_1:

            .const 'Sub' reduce = 'EXPR_reduce'
            .local string termishrx
            termishrx = 'termish'

            .local pmc opstack, termstack
            opstack = new ['ResizablePMCArray']
            .lex '@opstack', opstack
            termstack = new ['ResizablePMCArray']
            .lex '@termstack', termstack

          term_loop:
            here = here.termishrx()
            unless here goto fail
            .local pmc termish
            termish = here.'MATCH'()

            # interleave any prefix/postfix we might have found
            .local pmc termOPER, prefixish, postfixish
            termOPER = termish
          termOPER_loop:
            $I0 = exists termOPER['OPER']
            unless $I0 goto termOPER_done
            termOPER = termOPER['OPER']
            goto termOPER_loop
          termOPER_done:
            prefixish = termOPER['prefixish']
            postfixish = termOPER['postfixish']
            if null prefixish goto prefix_done

          prepostfix_loop:
            unless prefixish goto prepostfix_done
            unless postfixish goto prepostfix_done
            .local pmc preO, postO
            .local string preprec, postprec
            $P0 = prefixish[0]
            $P0 = $P0['OPER']
            preO = $P0['O']
            preprec = preO['prec']
            $P0 = postfixish[-1]
            $P0 = $P0['OPER']
            postO = $P0['O']
            postprec = postO['prec']
            if postprec < preprec goto post_shift
            if postprec > preprec goto pre_shift
            $S0 = postO['uassoc']
            if $S0 == 'right' goto pre_shift
          post_shift:
            $P0 = pop postfixish
            push opstack, $P0
            goto prepostfix_loop
          pre_shift:
            $P0 = shift prefixish
            push opstack, $P0
            goto prepostfix_loop
          prepostfix_done:

          prefix_loop:
            unless prefixish goto prefix_done
            $P0 = shift prefixish
            push opstack, $P0
            goto prefix_loop
          prefix_done:
            delete termish['prefixish']

          postfix_loop:
            if null postfixish goto postfix_done
            unless postfixish goto postfix_done
            $P0 = pop postfixish
            push opstack, $P0
            goto postfix_loop
          postfix_done:
            delete termish['postfixish']

            $P0 = termish['term']
            push termstack, $P0

            # Now see if we can fetch an infix operator
            .local pmc infixcur, infix
            here = here.'ws'()
            infixcur = here.'infixish'()
            unless infixcur goto term_done
            infix = infixcur.'MATCH'()

            .local pmc inO
            $P0 = infix['OPER']
            inO = $P0['O']
            termishrx = inO['nextterm']
            if termishrx goto have_termishrx
            termishrx = 'termish'
          have_termishrx:

            .local string inprec, inassoc, opprec
            inprec = inO['prec']
            unless inprec goto err_inprec
            if inprec <= preclim goto term_done
            inassoc = inO['assoc']

            $P0 = inO['sub']
            if null $P0 goto subprec_done
            inO['prec'] = $P0
          subprec_done:

          reduce_loop:
            unless opstack goto reduce_done
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['O']
            opprec = $P0['prec']
            unless opprec > inprec goto reduce_gt_done
            capture_lex reduce
            self.reduce(termstack, opstack)
            goto reduce_loop
          reduce_gt_done:

            unless opprec == inprec goto reduce_done
            # equal precedence, use associativity to decide
            unless inassoc == 'left' goto reduce_done
            # left associative, reduce immediately
            capture_lex reduce
            self.reduce(termstack, opstack)
          reduce_done:

            push opstack, infix        # The Shift
            here = infixcur.'ws'()
            goto term_loop
          term_done:

          opstack_loop:
            unless opstack goto opstack_done
            capture_lex reduce
            self.reduce(termstack, opstack)
            goto opstack_loop
          opstack_done:

          expr_done:
            .local pmc term
            term = pop termstack
            pos = here.'pos'()
            here = self.'!cursor_start'()
            repr_bind_attr_int here, cur_class, '$!pos', pos
            setattribute here, cur_class, '$!match', term
            here.'!reduce'('EXPR')
            if null debug goto done
            here.'!cursor_debug'('PASS', 'EXPR')
            goto done

          fail:
            if null debug goto done
            here.'!cursor_debug'('FAIL', 'EXPR')
          done:
            .return (here)

          err_internal:
            $I0 = termstack
            here.'panic'('Internal operator parser error, @termstack == ', $I0)
          err_inprec:
            infixcur.'panic'('Missing infixish operator precedence')
        };
    }

    method EXPR_reduce($termstack, $opstack) {
        Q:PIR {
            .local pmc self, termstack, opstack
            self = find_lex 'self'
            termstack = find_lex '$termstack'
            opstack = find_lex '$opstack'

            .local pmc op, opOPER, opO
            .local string opassoc
            op = pop opstack
            opOPER = op['OPER']
            opO = opOPER['O']
            $P0 = opO['assoc']
            opassoc = $P0
            if opassoc == 'unary' goto op_unary
            if opassoc == 'list' goto op_list
          op_infix:
            .local pmc right, left
            right = pop termstack
            left = pop termstack
            op[0] = left
            op[1] = right
            $P0 = opO['reducecheck']
            if null $P0 goto op_infix_1
            $S0 = $P0
            self.$S0(op)
          op_infix_1:
            self.'!reduce'('EXPR', 'INFIX', op)
            goto done

          op_unary:
            .local pmc arg, afrom, ofrom
            arg = pop termstack
            op[0] = arg
            afrom = arg.'from'()
            ofrom = op.'from'()
            if afrom < ofrom goto op_postfix
          op_prefix:
            self.'!reduce'('EXPR', 'PREFIX', op)
            goto done
          op_postfix:
            self.'!reduce'('EXPR', 'POSTFIX', op)
            goto done

          op_list:
            .local string sym
            $P0 = opOPER['sym']
            sym = $P0
            arg = pop termstack
            unshift op, arg
          op_sym_loop:
            unless opstack goto op_sym_done
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['sym']
            $S0 = $P0
            if sym != $S0 goto op_sym_done
            arg = pop termstack
            unshift op, arg
            $P0 = pop opstack
            goto op_sym_loop
          op_sym_done:
            arg = pop termstack
            unshift op, arg
            self.'!reduce'('EXPR', 'LIST', op)
            goto done

          done:
            push termstack, op
        };
    }

    method ternary($match) {
        $match[2] := $match[1];
        $match[1] := $match{'infix'}{'EXPR'};
    }

    method MARKER($markname) {
        my $pos := self.pos();
        self.'!cursor_debug'('START', 'MARKER name=', $markname, ', pos=', $pos);
        my %markhash := Q:PIR {
            %r = get_global '%!MARKHASH'
            unless null %r goto have_markhash
            %r = new ['Hash']
            set_global '%!MARKHASH', %r
          have_markhash:
        };
        %markhash{$markname} := $pos;
        self.'!cursor_debug'('PASS', 'MARKER');
        1;
    }
    
    method MARKED($markname) {
        self.'!cursor_debug'('START', 'MARKED name=', $markname);
        Q:PIR {
            .local pmc self, markname, markhash
            self = find_lex 'self'
            markname = find_lex '$markname'
            markhash = get_global '%!MARKHASH'
            if null markhash goto fail
            $P0 = markhash[markname]
            if null $P0 goto fail
            $P1 = self.'pos'()
            unless $P0 == $P1 goto fail
            self.'!cursor_debug'('PASS','MARKED')
            .return (1)
          fail:
            self.'!cursor_debug'('FAIL','MARKED')
            .return (0)
        };
    }

    method LANG($lang, $regex) {
        my $lang_cursor := %*LANG{$lang};
        my $*ACTIONS    := %*LANG{$lang ~ '-actions'};
        my $cur := Q:PIR {
            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            (%r, pos) = self.'!cursor_start'($P0)
            %r.'!cursor_pos'(pos)
        };
        $cur."$regex"();
    }
}
