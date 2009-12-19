# $Id$

=head1 NAME

HLL - Parrot HLL library

=head1 DESCRIPTION

This file brings together the various modules needed for HLL::Compiler
and HLL::Grammar.

=cut

.sub '' :anon :load :init
    load_bytecode 'Regex.pbc'
.end

### .include 'src/cheats/hll-compiler.pir'
# we have to overload PCT::HLLCompiler's parse method to support P6Regex grammars


.namespace ['HLL';'Compiler']

.sub 'parse' :method
    .param pmc source
    .param pmc options         :slurpy :named

    .local string tcode
    tcode = options['transcode']
    unless tcode goto transcode_done
    .local pmc tcode_it
    $P0 = split ' ', tcode
    tcode_it = iter $P0
  tcode_loop:
    unless tcode_it goto transcode_done
    tcode = shift tcode_it
    push_eh tcode_enc
    $I0 = find_charset tcode
    $S0 = source
    $S0 = trans_charset $S0, $I0
    assign source, $S0
    pop_eh
    goto transcode_done
  tcode_enc:
    pop_eh
    push_eh tcode_fail
    $I0 = find_encoding tcode
    $S0 = source
    $S0 = trans_encoding $S0, $I0
    assign source, $S0
    pop_eh
    goto transcode_done
  tcode_fail:
    pop_eh
    goto tcode_loop
  transcode_done:

    .local pmc parsegrammar, parseactions, match
    parsegrammar = self.'parsegrammar'()

    null parseactions
    $S0 = options['target']
    if $S0 == 'parse' goto have_parseactions
    parseactions = self.'parseactions'()
  have_parseactions:

    .local int rxtrace
    rxtrace = options['parsetrace']
    match = parsegrammar.'parse'(source, 'p'=>0, 'actions'=>parseactions, 'rxtrace'=>rxtrace)
    unless match goto err_parsefail
    .return (match)

  err_parsefail:
    self.'panic'('Unable to parse source')
    .return (match)
.end


.sub 'pir' :method
    .param pmc source
    .param pmc adverbs         :slurpy :named

    $P0 = compreg 'POST'
    $S0 = $P0.'to_pir'(source, adverbs :flat :named)
    .return ($S0)
.end


.sub 'parse_name' :method
    .param string name

    # split name on ::
    .local pmc ns
    ns = split '::', name

    # move any leading sigil to the last item
    .local string sigil
    $S0 = ns[0]
    sigil = substr $S0, 0, 1
    $I0 = index '$@%&', sigil
    if $I0 < 0 goto sigil_done
    substr $S0, 0, 1, ''
    ns[0] = $S0
    $S0 = ns[-1]
    $S0 = concat sigil, $S0
    ns[-1] = $S0
  sigil_done:

    # remove any empty items from the list
    .local pmc ns_it
    ns_it = iter ns
    ns = new ['ResizablePMCArray']
  ns_loop:
    unless ns_it goto ns_done
    $S0 = shift ns_it
    unless $S0 > '' goto ns_loop
    push ns, $S0
    goto ns_loop
  ns_done:

    # return the result
    .return (ns)
.end
### .include 'src/cheats/hll-grammar.pir'
# Copyright (C) 2009, The Perl Foundation.

=head1 TITLE

src/cheats/hll-grammar.pir -- Additional HLL::Grammar methods

=head2 Methods

=over 4

=cut


.include 'cclass.pasm'
### .include 'src/Regex/constants.pir'
.const int CURSOR_FAIL = -1
.const int CURSOR_FAIL_GROUP = -2
.const int CURSOR_FAIL_RULE = -3
.const int CURSOR_FAIL_MATCH = -4

.const int CURSOR_TYPE_SCAN = 1
.const int CURSOR_TYPE_PEEK = 2

.namespace ['HLL';'Grammar']

.sub '' :load :init
    .local pmc brackets
    brackets = box unicode:"<>[](){}\xab\xbb\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set_global '$!brackets', brackets
.end


.namespace ['HLL';'Grammar']

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

=cut

.sub 'O' :method
    .param string spec
    .param string save         :optional
    .param int has_save        :opt_flag

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
    setattribute $P0, '$!match', hash
    .return ($P0)

    # save the hash under a new entry
  save_hash:
    ohash[save] = hash
    .return (self)

  err_lookup:
    self.'panic'('Unknown operator precedence specification "', lookup, '"')
.end


=item panic([args :slurpy])

Throw an exception at the current cursor location.  If the message
doesn't end with a newline, also output the line number and offset
of the match.

=cut

.sub 'panic' :method
    .param pmc args            :slurpy

    .local int pos
    .local pmc target
    pos = self.'pos'()
    target = getattribute self, '$!target'

    $I1 = target.'lineof'(pos)
    inc $I1
    push args, ' at line '
    push args, $I1

    $S0 = target
    $S0 = substr $S0, pos, 10
    $S0 = escape $S0
    push args, ', near "'
    push args, $S0
    push args, '"'

    .local string message
    message = join '', args

    die message
.end


=item peek_delimiters(target, pos)

Return the start/stop delimiter pair based on peeking at C<target>
position C<pos>.

=cut

.sub 'peek_delimiters' :method
    .param string target
    .param int pos

    .local string brackets, start, stop
    $P0 = get_global '$!brackets'
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
.end


.sub 'quote_EXPR' :method
    .param pmc args            :slurpy

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

    .local pmc cur
    .local string target
    .local int pos

    (cur, pos, target) = self.'!cursor_start'()

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
  fail:
    .return (cur)
.end


.sub 'quotemod_check' :method
    .param string mod

    $P0 = find_dynamic_lex '%*QUOTEMOD'
    $P1 = $P0[mod]
    unless null $P1 goto done
    $P1 = new ['Undef']
  done:
    .return ($P1)
.end


.sub 'starter' :method
    .local pmc cur
    .local string target, start
    .local int pos

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
.end


.sub 'stopper' :method
    .local pmc cur
    .local string target, stop
    .local int pos

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
.end


.sub 'split_words' :method
    .param string words
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
.end


=item EXPR(...)

An operator precedence parser.

=cut

.sub 'EXPR' :method
    .param string preclim      :optional
    .param int has_preclim     :opt_flag

    if has_preclim goto have_preclim
    preclim = ''
  have_preclim:

    .const 'Sub' reduce = 'EXPR_reduce'
    .local string termishrx
    termishrx = 'termish'

    .local pmc opstack, termstack
    opstack = new ['ResizablePMCArray']
    .lex '@opstack', opstack
    termstack = new ['ResizablePMCArray']
    .lex '@termstack', termstack

    .local pmc here, from, pos
    (here, pos) = self.'!cursor_start'()

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
    setattribute here, '$!pos', pos
    setattribute here, '$!match', term
    here.'!reduce'('EXPR')
  fail:
    .return (here)

  err_internal:
    $I0 = termstack
    here.'panic'('Internal operator parser error, @termstack == ', $I0)
  err_inprec:
    infixcur.'panic'('Missing infixish operator precedence')
.end


.sub 'EXPR_reduce' :method :anon
    .param pmc termstack
    .param pmc opstack

    .local pmc op, opOPER, opO
    .local string opassoc
    op = pop opstack
    opOPER = op['OPER']
    opO = opOPER['O']
    opassoc = opO['assoc']
    if opassoc == 'unary' goto op_unary
    if opassoc == 'list' goto op_list
  op_infix:
    .local pmc right, left
    right = pop termstack
    left = pop termstack
    op[0] = left
    op[1] = right
    $S0 = opO['reducecheck']
    unless $S0 goto op_infix_1
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
    sym = opOPER['sym']
    arg = pop termstack
    unshift op, arg
  op_sym_loop:
    unless opstack goto op_sym_done
    $P0 = opstack[-1]
    $P0 = $P0['OPER']
    $S0 = $P0['sym']
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
.end


.sub 'ternary' :method
    .param pmc match
    $P0 = match[1]
    $P1 = match['infix']
    $P1 = $P1['EXPR']
    match[1] = $P1
    match[2] = $P0
.end


.sub 'MARKER' :method
    .param pmc markname

    .local pmc pos
    pos = self.'pos'()
    self.'!cursor_debug'('START MARKER name=', markname, ', pos=', pos)

    .local pmc markhash
    markhash = get_global '%!MARKHASH'
    unless null markhash goto have_markhash
    markhash = new ['Hash']
    set_global '%!MARKHASH', markhash
  have_markhash:
    markhash[markname] = pos
    self.'!cursor_debug'('PASS  MARKER')
    .return (1)
.end


.sub 'MARKED' :method
    .param pmc markname

    self.'!cursor_debug'('START MARKED name=', markname)

    .local pmc markhash
    markhash = get_global '%!MARKHASH'
    if null markhash goto fail
    $P0 = markhash[markname]
    if null $P0 goto fail
    $P1 = self.'pos'()
    unless $P0 == $P1 goto fail
    self.'!cursor_debug'('PASS  MARKED')
    .return (1)
  fail:
    self.'!cursor_debug'('FAIL  MARKED')
    .return (0)
.end


.sub 'LANG' :method
    .param string lang
    .param string regex

    .local pmc langhash, cur, pos
    langhash = find_dynamic_lex '%*LANG'
    $P0 = langhash[lang]
    (cur, pos) = self.'!cursor_start'($P0)
    cur.'!cursor_pos'(pos)

    $S0 = concat lang, '-actions'
    $P0 = langhash[$S0]
    .lex '$*ACTIONS', $P0

    # XXX can't use tailcall here or we lose $*ACTIONS
    $P1 = cur.regex()
    .return ($P1)
.end

=back

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:

### .include 'gen/hllgrammar-grammar.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1261201500.07268")
.annotate "line", 0
    get_hll_global $P14, ["HLL";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 5
    get_hll_global $P14, ["HLL";"Grammar"], "_block13" 
    capture_lex $P14
    $P297 = $P14()
.annotate "line", 1
    .return ($P297)
.end


.namespace []
.sub "" :load :init :subid("post94") :outer("10_1261201500.07268")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1261201500.07268" 
    .local pmc block
    set block, $P12
    $P298 = get_root_global ["parrot"], "P6metaclass"
    $P298."new_class"("HLL::Grammar", "Regex::Cursor" :named("parent"))
.end


.namespace ["HLL";"Grammar"]
.sub "_block13"  :subid("11_1261201500.07268") :outer("10_1261201500.07268")
.annotate "line", 5
    .const 'Sub' $P287 = "92_1261201500.07268" 
    capture_lex $P287
    .const 'Sub' $P280 = "90_1261201500.07268" 
    capture_lex $P280
    .const 'Sub' $P267 = "87_1261201500.07268" 
    capture_lex $P267
    .const 'Sub' $P262 = "85_1261201500.07268" 
    capture_lex $P262
    .const 'Sub' $P256 = "83_1261201500.07268" 
    capture_lex $P256
    .const 'Sub' $P250 = "81_1261201500.07268" 
    capture_lex $P250
    .const 'Sub' $P245 = "79_1261201500.07268" 
    capture_lex $P245
    .const 'Sub' $P240 = "77_1261201500.07268" 
    capture_lex $P240
    .const 'Sub' $P235 = "75_1261201500.07268" 
    capture_lex $P235
    .const 'Sub' $P230 = "73_1261201500.07268" 
    capture_lex $P230
    .const 'Sub' $P225 = "71_1261201500.07268" 
    capture_lex $P225
    .const 'Sub' $P220 = "69_1261201500.07268" 
    capture_lex $P220
    .const 'Sub' $P209 = "65_1261201500.07268" 
    capture_lex $P209
    .const 'Sub' $P196 = "63_1261201500.07268" 
    capture_lex $P196
    .const 'Sub' $P184 = "61_1261201500.07268" 
    capture_lex $P184
    .const 'Sub' $P177 = "59_1261201500.07268" 
    capture_lex $P177
    .const 'Sub' $P168 = "57_1261201500.07268" 
    capture_lex $P168
    .const 'Sub' $P161 = "55_1261201500.07268" 
    capture_lex $P161
    .const 'Sub' $P152 = "53_1261201500.07268" 
    capture_lex $P152
    .const 'Sub' $P145 = "51_1261201500.07268" 
    capture_lex $P145
    .const 'Sub' $P136 = "49_1261201500.07268" 
    capture_lex $P136
    .const 'Sub' $P129 = "47_1261201500.07268" 
    capture_lex $P129
    .const 'Sub' $P122 = "45_1261201500.07268" 
    capture_lex $P122
    .const 'Sub' $P112 = "43_1261201500.07268" 
    capture_lex $P112
    .const 'Sub' $P104 = "41_1261201500.07268" 
    capture_lex $P104
    .const 'Sub' $P93 = "40_1261201500.07268" 
    capture_lex $P93
    .const 'Sub' $P87 = "38_1261201500.07268" 
    capture_lex $P87
    .const 'Sub' $P82 = "36_1261201500.07268" 
    capture_lex $P82
    .const 'Sub' $P74 = "34_1261201500.07268" 
    capture_lex $P74
    .const 'Sub' $P68 = "32_1261201500.07268" 
    capture_lex $P68
    .const 'Sub' $P62 = "30_1261201500.07268" 
    capture_lex $P62
    .const 'Sub' $P56 = "28_1261201500.07268" 
    capture_lex $P56
    .const 'Sub' $P23 = "14_1261201500.07268" 
    capture_lex $P23
    .const 'Sub' $P15 = "12_1261201500.07268" 
    capture_lex $P15
.annotate "line", 33
    .const 'Sub' $P287 = "92_1261201500.07268" 
    capture_lex $P287
.annotate "line", 5
    .return ($P287)
.end


.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 5
    .local string rx16_tgt
    .local int rx16_pos
    .local int rx16_off
    .local int rx16_eos
    .local int rx16_rep
    .local pmc rx16_cur
    (rx16_cur, rx16_pos, rx16_tgt) = self."!cursor_start"()
    rx16_cur."!cursor_debug"("START ", "ws")
    .lex unicode:"$\x{a2}", rx16_cur
    .local pmc match
    .lex "$/", match
    length rx16_eos, rx16_tgt
    set rx16_off, 0
    lt rx16_pos, 2, rx16_start
    sub rx16_off, rx16_pos, 1
    substr rx16_tgt, rx16_tgt, rx16_off
  rx16_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan19_done
    goto rxscan19_scan
  rxscan19_loop:
    ($P10) = rx16_cur."from"()
    inc $P10
    set rx16_pos, $P10
    ge rx16_pos, rx16_eos, rxscan19_done
  rxscan19_scan:
    set_addr $I10, rxscan19_loop
    rx16_cur."!mark_push"(0, rx16_pos, $I10)
  rxscan19_done:
  # rx subrule "ww" subtype=zerowidth negate=1
    rx16_cur."!cursor_pos"(rx16_pos)
    $P10 = rx16_cur."ww"()
    if $P10, rx16_fail
  # rx rxquantr20 ** 0..*
    set_addr $I22, rxquantr20_done
    rx16_cur."!mark_push"(0, rx16_pos, $I22)
  rxquantr20_loop:
  alt21_0:
    set_addr $I10, alt21_1
    rx16_cur."!mark_push"(0, rx16_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx16_pos, rx16_off
    find_not_cclass $I11, 32, rx16_tgt, $I10, rx16_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx16_fail
    add rx16_pos, rx16_off, $I11
    goto alt21_end
  alt21_1:
  # rx literal  "#"
    add $I11, rx16_pos, 1
    gt $I11, rx16_eos, rx16_fail
    sub $I11, rx16_pos, rx16_off
    substr $S10, rx16_tgt, $I11, 1
    ne $S10, "#", rx16_fail
    add rx16_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx16_pos, rx16_off
    find_cclass $I11, 4096, rx16_tgt, $I10, rx16_eos
    add rx16_pos, rx16_off, $I11
  alt21_end:
    (rx16_rep) = rx16_cur."!mark_commit"($I22)
    rx16_cur."!mark_push"(rx16_rep, rx16_pos, $I22)
    goto rxquantr20_loop
  rxquantr20_done:
  # rx pass
    rx16_cur."!cursor_pass"(rx16_pos, "ws")
    rx16_cur."!cursor_debug"("PASS  ", "ws", " at pos=", rx16_pos)
    .return (rx16_cur)
  rx16_fail:
    (rx16_rep, rx16_pos, $I10, $P10) = rx16_cur."!mark_fail"(0)
    lt rx16_pos, -1, rx16_done
    eq rx16_pos, -1, rx16_fail
    jump $I10
  rx16_done:
    rx16_cur."!cursor_fail"()
    rx16_cur."!cursor_debug"("FAIL  ", "ws")
    .return (rx16_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :subid("13_1261201500.07268") :method
.annotate "line", 5
    new $P18, "ResizablePMCArray"
    push $P18, ""
    .return ($P18)
.end


.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 5
    .local string rx24_tgt
    .local int rx24_pos
    .local int rx24_off
    .local int rx24_eos
    .local int rx24_rep
    .local pmc rx24_cur
    (rx24_cur, rx24_pos, rx24_tgt) = self."!cursor_start"()
    rx24_cur."!cursor_debug"("START ", "termish")
    rx24_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx24_cur
    .local pmc match
    .lex "$/", match
    length rx24_eos, rx24_tgt
    set rx24_off, 0
    lt rx24_pos, 2, rx24_start
    sub rx24_off, rx24_pos, 1
    substr rx24_tgt, rx24_tgt, rx24_off
  rx24_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan27_done
    goto rxscan27_scan
  rxscan27_loop:
    ($P10) = rx24_cur."from"()
    inc $P10
    set rx24_pos, $P10
    ge rx24_pos, rx24_eos, rxscan27_done
  rxscan27_scan:
    set_addr $I10, rxscan27_loop
    rx24_cur."!mark_push"(0, rx24_pos, $I10)
  rxscan27_done:
.annotate "line", 8
  # rx rxquantr28 ** 0..*
    set_addr $I29, rxquantr28_done
    rx24_cur."!mark_push"(0, rx24_pos, $I29)
  rxquantr28_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx24_cur."!cursor_pos"(rx24_pos)
    $P10 = rx24_cur."prefixish"()
    unless $P10, rx24_fail
    rx24_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("prefixish")
    rx24_pos = $P10."pos"()
    (rx24_rep) = rx24_cur."!mark_commit"($I29)
    rx24_cur."!mark_push"(rx24_rep, rx24_pos, $I29)
    goto rxquantr28_loop
  rxquantr28_done:
.annotate "line", 9
  # rx subrule "term" subtype=capture negate=
    rx24_cur."!cursor_pos"(rx24_pos)
    $P10 = rx24_cur."term"()
    unless $P10, rx24_fail
    rx24_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx24_pos = $P10."pos"()
.annotate "line", 10
  # rx rxquantr30 ** 0..*
    set_addr $I31, rxquantr30_done
    rx24_cur."!mark_push"(0, rx24_pos, $I31)
  rxquantr30_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx24_cur."!cursor_pos"(rx24_pos)
    $P10 = rx24_cur."postfixish"()
    unless $P10, rx24_fail
    rx24_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postfixish")
    rx24_pos = $P10."pos"()
    (rx24_rep) = rx24_cur."!mark_commit"($I31)
    rx24_cur."!mark_push"(rx24_rep, rx24_pos, $I31)
    goto rxquantr30_loop
  rxquantr30_done:
.annotate "line", 7
  # rx pass
    rx24_cur."!cursor_pass"(rx24_pos, "termish")
    rx24_cur."!cursor_debug"("PASS  ", "termish", " at pos=", rx24_pos)
    .return (rx24_cur)
  rx24_fail:
.annotate "line", 5
    (rx24_rep, rx24_pos, $I10, $P10) = rx24_cur."!mark_fail"(0)
    lt rx24_pos, -1, rx24_done
    eq rx24_pos, -1, rx24_fail
    jump $I10
  rx24_done:
    rx24_cur."!cursor_fail"()
    rx24_cur."!cursor_debug"("FAIL  ", "termish")
    .return (rx24_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :subid("15_1261201500.07268") :method
.annotate "line", 5
    new $P26, "ResizablePMCArray"
    push $P26, ""
    .return ($P26)
.end


.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1261201500.07268") :method
.annotate "line", 13
    $P33 = self."!protoregex"("term")
    .return ($P33)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1261201500.07268") :method
.annotate "line", 13
    $P35 = self."!PREFIX__!protoregex"("term")
    .return ($P35)
.end


.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1261201500.07268") :method
.annotate "line", 14
    $P37 = self."!protoregex"("infix")
    .return ($P37)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1261201500.07268") :method
.annotate "line", 14
    $P39 = self."!PREFIX__!protoregex"("infix")
    .return ($P39)
.end


.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1261201500.07268") :method
.annotate "line", 15
    $P41 = self."!protoregex"("prefix")
    .return ($P41)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1261201500.07268") :method
.annotate "line", 15
    $P43 = self."!PREFIX__!protoregex"("prefix")
    .return ($P43)
.end


.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1261201500.07268") :method
.annotate "line", 16
    $P45 = self."!protoregex"("postfix")
    .return ($P45)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1261201500.07268") :method
.annotate "line", 16
    $P47 = self."!PREFIX__!protoregex"("postfix")
    .return ($P47)
.end


.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1261201500.07268") :method
.annotate "line", 17
    $P49 = self."!protoregex"("circumfix")
    .return ($P49)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1261201500.07268") :method
.annotate "line", 17
    $P51 = self."!PREFIX__!protoregex"("circumfix")
    .return ($P51)
.end


.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1261201500.07268") :method
.annotate "line", 18
    $P53 = self."!protoregex"("postcircumfix")
    .return ($P53)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1261201500.07268") :method
.annotate "line", 18
    $P55 = self."!PREFIX__!protoregex"("postcircumfix")
    .return ($P55)
.end


.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 5
    .local string rx57_tgt
    .local int rx57_pos
    .local int rx57_off
    .local int rx57_eos
    .local int rx57_rep
    .local pmc rx57_cur
    (rx57_cur, rx57_pos, rx57_tgt) = self."!cursor_start"()
    rx57_cur."!cursor_debug"("START ", "term:sym<circumfix>")
    .lex unicode:"$\x{a2}", rx57_cur
    .local pmc match
    .lex "$/", match
    length rx57_eos, rx57_tgt
    set rx57_off, 0
    lt rx57_pos, 2, rx57_start
    sub rx57_off, rx57_pos, 1
    substr rx57_tgt, rx57_tgt, rx57_off
  rx57_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan61_done
    goto rxscan61_scan
  rxscan61_loop:
    ($P10) = rx57_cur."from"()
    inc $P10
    set rx57_pos, $P10
    ge rx57_pos, rx57_eos, rxscan61_done
  rxscan61_scan:
    set_addr $I10, rxscan61_loop
    rx57_cur."!mark_push"(0, rx57_pos, $I10)
  rxscan61_done:
.annotate "line", 20
  # rx subrule "circumfix" subtype=capture negate=
    rx57_cur."!cursor_pos"(rx57_pos)
    $P10 = rx57_cur."circumfix"()
    unless $P10, rx57_fail
    rx57_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx57_pos = $P10."pos"()
  # rx pass
    rx57_cur."!cursor_pass"(rx57_pos, "term:sym<circumfix>")
    rx57_cur."!cursor_debug"("PASS  ", "term:sym<circumfix>", " at pos=", rx57_pos)
    .return (rx57_cur)
  rx57_fail:
.annotate "line", 5
    (rx57_rep, rx57_pos, $I10, $P10) = rx57_cur."!mark_fail"(0)
    lt rx57_pos, -1, rx57_done
    eq rx57_pos, -1, rx57_fail
    jump $I10
  rx57_done:
    rx57_cur."!cursor_fail"()
    rx57_cur."!cursor_debug"("FAIL  ", "term:sym<circumfix>")
    .return (rx57_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :subid("29_1261201500.07268") :method
.annotate "line", 5
    $P59 = self."!PREFIX__!subrule"("circumfix", "")
    new $P60, "ResizablePMCArray"
    push $P60, $P59
    .return ($P60)
.end


.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 5
    .local string rx63_tgt
    .local int rx63_pos
    .local int rx63_off
    .local int rx63_eos
    .local int rx63_rep
    .local pmc rx63_cur
    (rx63_cur, rx63_pos, rx63_tgt) = self."!cursor_start"()
    rx63_cur."!cursor_debug"("START ", "infixish")
    .lex unicode:"$\x{a2}", rx63_cur
    .local pmc match
    .lex "$/", match
    length rx63_eos, rx63_tgt
    set rx63_off, 0
    lt rx63_pos, 2, rx63_start
    sub rx63_off, rx63_pos, 1
    substr rx63_tgt, rx63_tgt, rx63_off
  rx63_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan67_done
    goto rxscan67_scan
  rxscan67_loop:
    ($P10) = rx63_cur."from"()
    inc $P10
    set rx63_pos, $P10
    ge rx63_pos, rx63_eos, rxscan67_done
  rxscan67_scan:
    set_addr $I10, rxscan67_loop
    rx63_cur."!mark_push"(0, rx63_pos, $I10)
  rxscan67_done:
.annotate "line", 22
  # rx subrule "infix" subtype=capture negate=
    rx63_cur."!cursor_pos"(rx63_pos)
    $P10 = rx63_cur."infix"()
    unless $P10, rx63_fail
    rx63_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx63_pos = $P10."pos"()
  # rx pass
    rx63_cur."!cursor_pass"(rx63_pos, "infixish")
    rx63_cur."!cursor_debug"("PASS  ", "infixish", " at pos=", rx63_pos)
    .return (rx63_cur)
  rx63_fail:
.annotate "line", 5
    (rx63_rep, rx63_pos, $I10, $P10) = rx63_cur."!mark_fail"(0)
    lt rx63_pos, -1, rx63_done
    eq rx63_pos, -1, rx63_fail
    jump $I10
  rx63_done:
    rx63_cur."!cursor_fail"()
    rx63_cur."!cursor_debug"("FAIL  ", "infixish")
    .return (rx63_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("31_1261201500.07268") :method
.annotate "line", 5
    $P65 = self."!PREFIX__!subrule"("OPER=infix", "")
    new $P66, "ResizablePMCArray"
    push $P66, $P65
    .return ($P66)
.end


.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 5
    .local string rx69_tgt
    .local int rx69_pos
    .local int rx69_off
    .local int rx69_eos
    .local int rx69_rep
    .local pmc rx69_cur
    (rx69_cur, rx69_pos, rx69_tgt) = self."!cursor_start"()
    rx69_cur."!cursor_debug"("START ", "prefixish")
    .lex unicode:"$\x{a2}", rx69_cur
    .local pmc match
    .lex "$/", match
    length rx69_eos, rx69_tgt
    set rx69_off, 0
    lt rx69_pos, 2, rx69_start
    sub rx69_off, rx69_pos, 1
    substr rx69_tgt, rx69_tgt, rx69_off
  rx69_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan73_done
    goto rxscan73_scan
  rxscan73_loop:
    ($P10) = rx69_cur."from"()
    inc $P10
    set rx69_pos, $P10
    ge rx69_pos, rx69_eos, rxscan73_done
  rxscan73_scan:
    set_addr $I10, rxscan73_loop
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
  rxscan73_done:
.annotate "line", 23
  # rx subrule "prefix" subtype=capture negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."prefix"()
    unless $P10, rx69_fail
    rx69_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx69_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ws"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  # rx pass
    rx69_cur."!cursor_pass"(rx69_pos, "prefixish")
    rx69_cur."!cursor_debug"("PASS  ", "prefixish", " at pos=", rx69_pos)
    .return (rx69_cur)
  rx69_fail:
.annotate "line", 5
    (rx69_rep, rx69_pos, $I10, $P10) = rx69_cur."!mark_fail"(0)
    lt rx69_pos, -1, rx69_done
    eq rx69_pos, -1, rx69_fail
    jump $I10
  rx69_done:
    rx69_cur."!cursor_fail"()
    rx69_cur."!cursor_debug"("FAIL  ", "prefixish")
    .return (rx69_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("33_1261201500.07268") :method
.annotate "line", 5
    $P71 = self."!PREFIX__!subrule"("OPER=prefix", "")
    new $P72, "ResizablePMCArray"
    push $P72, $P71
    .return ($P72)
.end


.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 5
    .local string rx75_tgt
    .local int rx75_pos
    .local int rx75_off
    .local int rx75_eos
    .local int rx75_rep
    .local pmc rx75_cur
    (rx75_cur, rx75_pos, rx75_tgt) = self."!cursor_start"()
    rx75_cur."!cursor_debug"("START ", "postfixish")
    .lex unicode:"$\x{a2}", rx75_cur
    .local pmc match
    .lex "$/", match
    length rx75_eos, rx75_tgt
    set rx75_off, 0
    lt rx75_pos, 2, rx75_start
    sub rx75_off, rx75_pos, 1
    substr rx75_tgt, rx75_tgt, rx75_off
  rx75_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan80_done
    goto rxscan80_scan
  rxscan80_loop:
    ($P10) = rx75_cur."from"()
    inc $P10
    set rx75_pos, $P10
    ge rx75_pos, rx75_eos, rxscan80_done
  rxscan80_scan:
    set_addr $I10, rxscan80_loop
    rx75_cur."!mark_push"(0, rx75_pos, $I10)
  rxscan80_done:
  alt81_0:
.annotate "line", 24
    set_addr $I10, alt81_1
    rx75_cur."!mark_push"(0, rx75_pos, $I10)
.annotate "line", 25
  # rx subrule "postfix" subtype=capture negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."postfix"()
    unless $P10, rx75_fail
    rx75_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx75_pos = $P10."pos"()
    goto alt81_end
  alt81_1:
.annotate "line", 26
  # rx subrule "postcircumfix" subtype=capture negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."postcircumfix"()
    unless $P10, rx75_fail
    rx75_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx75_pos = $P10."pos"()
  alt81_end:
.annotate "line", 24
  # rx pass
    rx75_cur."!cursor_pass"(rx75_pos, "postfixish")
    rx75_cur."!cursor_debug"("PASS  ", "postfixish", " at pos=", rx75_pos)
    .return (rx75_cur)
  rx75_fail:
.annotate "line", 5
    (rx75_rep, rx75_pos, $I10, $P10) = rx75_cur."!mark_fail"(0)
    lt rx75_pos, -1, rx75_done
    eq rx75_pos, -1, rx75_fail
    jump $I10
  rx75_done:
    rx75_cur."!cursor_fail"()
    rx75_cur."!cursor_debug"("FAIL  ", "postfixish")
    .return (rx75_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("35_1261201500.07268") :method
.annotate "line", 5
    $P77 = self."!PREFIX__!subrule"("OPER=postcircumfix", "")
    $P78 = self."!PREFIX__!subrule"("OPER=postfix", "")
    new $P79, "ResizablePMCArray"
    push $P79, $P77
    push $P79, $P78
    .return ($P79)
.end


.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 5
    .local string rx83_tgt
    .local int rx83_pos
    .local int rx83_off
    .local int rx83_eos
    .local int rx83_rep
    .local pmc rx83_cur
    (rx83_cur, rx83_pos, rx83_tgt) = self."!cursor_start"()
    rx83_cur."!cursor_debug"("START ", "nullterm")
    .lex unicode:"$\x{a2}", rx83_cur
    .local pmc match
    .lex "$/", match
    length rx83_eos, rx83_tgt
    set rx83_off, 0
    lt rx83_pos, 2, rx83_start
    sub rx83_off, rx83_pos, 1
    substr rx83_tgt, rx83_tgt, rx83_off
  rx83_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan86_done
    goto rxscan86_scan
  rxscan86_loop:
    ($P10) = rx83_cur."from"()
    inc $P10
    set rx83_pos, $P10
    ge rx83_pos, rx83_eos, rxscan86_done
  rxscan86_scan:
    set_addr $I10, rxscan86_loop
    rx83_cur."!mark_push"(0, rx83_pos, $I10)
  rxscan86_done:
.annotate "line", 29
  # rx pass
    rx83_cur."!cursor_pass"(rx83_pos, "nullterm")
    rx83_cur."!cursor_debug"("PASS  ", "nullterm", " at pos=", rx83_pos)
    .return (rx83_cur)
  rx83_fail:
.annotate "line", 5
    (rx83_rep, rx83_pos, $I10, $P10) = rx83_cur."!mark_fail"(0)
    lt rx83_pos, -1, rx83_done
    eq rx83_pos, -1, rx83_fail
    jump $I10
  rx83_done:
    rx83_cur."!cursor_fail"()
    rx83_cur."!cursor_debug"("FAIL  ", "nullterm")
    .return (rx83_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :subid("37_1261201500.07268") :method
.annotate "line", 5
    new $P85, "ResizablePMCArray"
    push $P85, ""
    .return ($P85)
.end


.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 5
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    (rx88_cur, rx88_pos, rx88_tgt) = self."!cursor_start"()
    rx88_cur."!cursor_debug"("START ", "nullterm_alt")
    .lex unicode:"$\x{a2}", rx88_cur
    .local pmc match
    .lex "$/", match
    length rx88_eos, rx88_tgt
    set rx88_off, 0
    lt rx88_pos, 2, rx88_start
    sub rx88_off, rx88_pos, 1
    substr rx88_tgt, rx88_tgt, rx88_off
  rx88_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan92_done
    goto rxscan92_scan
  rxscan92_loop:
    ($P10) = rx88_cur."from"()
    inc $P10
    set rx88_pos, $P10
    ge rx88_pos, rx88_eos, rxscan92_done
  rxscan92_scan:
    set_addr $I10, rxscan92_loop
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxscan92_done:
.annotate "line", 30
  # rx subrule "nullterm" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."nullterm"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx88_pos = $P10."pos"()
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "nullterm_alt")
    rx88_cur."!cursor_debug"("PASS  ", "nullterm_alt", " at pos=", rx88_pos)
    .return (rx88_cur)
  rx88_fail:
.annotate "line", 5
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    rx88_cur."!cursor_debug"("FAIL  ", "nullterm_alt")
    .return (rx88_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :subid("39_1261201500.07268") :method
.annotate "line", 5
    $P90 = self."!PREFIX__!subrule"("term", "")
    new $P91, "ResizablePMCArray"
    push $P91, $P90
    .return ($P91)
.end


.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    get_root_global $P95, ["parrot";"PCT"], "reuse96_1261201500.14272"
    unless_null $P95, reuse96
    new $P95, ["ExceptionHandler"]
    $P95."handle_types"(58)
  reuse96:
    set_addr $P95, control_94
    push_eh $P95
    .lex "self", self
    find_lex $P99, "self"
    $P100 = $P99."termish"()
    unless $P100, unless_98
    set $P97, $P100
    goto unless_98_end
  unless_98:
    find_lex $P101, "self"
    $P102 = $P101."nullterm_alt"()
    set $P97, $P102
  unless_98_end:
    .return ($P97)
  control_94:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, "payload"
    .return ($P103)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx105_tgt
    .local int rx105_pos
    .local int rx105_off
    .local int rx105_eos
    .local int rx105_rep
    .local pmc rx105_cur
    (rx105_cur, rx105_pos, rx105_tgt) = self."!cursor_start"()
    rx105_cur."!cursor_debug"("START ", "quote_delimited")
    rx105_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx105_cur
    .local pmc match
    .lex "$/", match
    length rx105_eos, rx105_tgt
    set rx105_off, 0
    lt rx105_pos, 2, rx105_start
    sub rx105_off, rx105_pos, 1
    substr rx105_tgt, rx105_tgt, rx105_off
  rx105_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan109_done
    goto rxscan109_scan
  rxscan109_loop:
    ($P10) = rx105_cur."from"()
    inc $P10
    set rx105_pos, $P10
    ge rx105_pos, rx105_eos, rxscan109_done
  rxscan109_scan:
    set_addr $I10, rxscan109_loop
    rx105_cur."!mark_push"(0, rx105_pos, $I10)
  rxscan109_done:
.annotate "line", 37
  # rx subrule "starter" subtype=capture negate=
    rx105_cur."!cursor_pos"(rx105_pos)
    $P10 = rx105_cur."starter"()
    unless $P10, rx105_fail
    rx105_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx105_pos = $P10."pos"()
  # rx rxquantr110 ** 0..*
    set_addr $I111, rxquantr110_done
    rx105_cur."!mark_push"(0, rx105_pos, $I111)
  rxquantr110_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx105_cur."!cursor_pos"(rx105_pos)
    $P10 = rx105_cur."quote_atom"()
    unless $P10, rx105_fail
    rx105_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_atom")
    rx105_pos = $P10."pos"()
    (rx105_rep) = rx105_cur."!mark_commit"($I111)
    rx105_cur."!mark_push"(rx105_rep, rx105_pos, $I111)
    goto rxquantr110_loop
  rxquantr110_done:
  # rx subrule "stopper" subtype=capture negate=
    rx105_cur."!cursor_pos"(rx105_pos)
    $P10 = rx105_cur."stopper"()
    unless $P10, rx105_fail
    rx105_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx105_pos = $P10."pos"()
.annotate "line", 36
  # rx pass
    rx105_cur."!cursor_pass"(rx105_pos, "quote_delimited")
    rx105_cur."!cursor_debug"("PASS  ", "quote_delimited", " at pos=", rx105_pos)
    .return (rx105_cur)
  rx105_fail:
.annotate "line", 33
    (rx105_rep, rx105_pos, $I10, $P10) = rx105_cur."!mark_fail"(0)
    lt rx105_pos, -1, rx105_done
    eq rx105_pos, -1, rx105_fail
    jump $I10
  rx105_done:
    rx105_cur."!cursor_fail"()
    rx105_cur."!cursor_debug"("FAIL  ", "quote_delimited")
    .return (rx105_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("42_1261201500.07268") :method
.annotate "line", 33
    $P107 = self."!PREFIX__!subrule"("starter", "")
    new $P108, "ResizablePMCArray"
    push $P108, $P107
    .return ($P108)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx113_tgt
    .local int rx113_pos
    .local int rx113_off
    .local int rx113_eos
    .local int rx113_rep
    .local pmc rx113_cur
    (rx113_cur, rx113_pos, rx113_tgt) = self."!cursor_start"()
    rx113_cur."!cursor_debug"("START ", "quote_atom")
    .lex unicode:"$\x{a2}", rx113_cur
    .local pmc match
    .lex "$/", match
    length rx113_eos, rx113_tgt
    set rx113_off, 0
    lt rx113_pos, 2, rx113_start
    sub rx113_off, rx113_pos, 1
    substr rx113_tgt, rx113_tgt, rx113_off
  rx113_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan116_done
    goto rxscan116_scan
  rxscan116_loop:
    ($P10) = rx113_cur."from"()
    inc $P10
    set rx113_pos, $P10
    ge rx113_pos, rx113_eos, rxscan116_done
  rxscan116_scan:
    set_addr $I10, rxscan116_loop
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  rxscan116_done:
.annotate "line", 41
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."stopper"()
    if $P10, rx113_fail
  alt117_0:
.annotate "line", 42
    set_addr $I10, alt117_1
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
.annotate "line", 43
  # rx subrule "quote_escape" subtype=capture negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."quote_escape"()
    unless $P10, rx113_fail
    rx113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx113_pos = $P10."pos"()
    goto alt117_end
  alt117_1:
.annotate "line", 44
  # rx rxquantr118 ** 1..*
    set_addr $I121, rxquantr118_done
    rx113_cur."!mark_push"(0, -1, $I121)
  rxquantr118_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."stopper"()
    if $P10, rx113_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."quote_escape"()
    if $P10, rx113_fail
  # rx charclass .
    ge rx113_pos, rx113_eos, rx113_fail
    inc rx113_pos
    (rx113_rep) = rx113_cur."!mark_commit"($I121)
    rx113_cur."!mark_push"(rx113_rep, rx113_pos, $I121)
    goto rxquantr118_loop
  rxquantr118_done:
  alt117_end:
.annotate "line", 40
  # rx pass
    rx113_cur."!cursor_pass"(rx113_pos, "quote_atom")
    rx113_cur."!cursor_debug"("PASS  ", "quote_atom", " at pos=", rx113_pos)
    .return (rx113_cur)
  rx113_fail:
.annotate "line", 33
    (rx113_rep, rx113_pos, $I10, $P10) = rx113_cur."!mark_fail"(0)
    lt rx113_pos, -1, rx113_done
    eq rx113_pos, -1, rx113_fail
    jump $I10
  rx113_done:
    rx113_cur."!cursor_fail"()
    rx113_cur."!cursor_debug"("FAIL  ", "quote_atom")
    .return (rx113_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("44_1261201500.07268") :method
.annotate "line", 33
    new $P115, "ResizablePMCArray"
    push $P115, ""
    .return ($P115)
.end


.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx123_tgt
    .local int rx123_pos
    .local int rx123_off
    .local int rx123_eos
    .local int rx123_rep
    .local pmc rx123_cur
    (rx123_cur, rx123_pos, rx123_tgt) = self."!cursor_start"()
    rx123_cur."!cursor_debug"("START ", "decint")
    .lex unicode:"$\x{a2}", rx123_cur
    .local pmc match
    .lex "$/", match
    length rx123_eos, rx123_tgt
    set rx123_off, 0
    lt rx123_pos, 2, rx123_start
    sub rx123_off, rx123_pos, 1
    substr rx123_tgt, rx123_tgt, rx123_off
  rx123_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan126_done
    goto rxscan126_scan
  rxscan126_loop:
    ($P10) = rx123_cur."from"()
    inc $P10
    set rx123_pos, $P10
    ge rx123_pos, rx123_eos, rxscan126_done
  rxscan126_scan:
    set_addr $I10, rxscan126_loop
    rx123_cur."!mark_push"(0, rx123_pos, $I10)
  rxscan126_done:
.annotate "line", 48
  # rx rxquantr127 ** 1..*
    set_addr $I128, rxquantr127_done
    rx123_cur."!mark_push"(0, -1, $I128)
  rxquantr127_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx123_pos, rx123_off
    find_not_cclass $I11, 8, rx123_tgt, $I10, rx123_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx123_fail
    add rx123_pos, rx123_off, $I11
    (rx123_rep) = rx123_cur."!mark_commit"($I128)
    rx123_cur."!mark_push"(rx123_rep, rx123_pos, $I128)
  # rx literal  "_"
    add $I11, rx123_pos, 1
    gt $I11, rx123_eos, rx123_fail
    sub $I11, rx123_pos, rx123_off
    substr $S10, rx123_tgt, $I11, 1
    ne $S10, "_", rx123_fail
    add rx123_pos, 1
    goto rxquantr127_loop
  rxquantr127_done:
  # rx pass
    rx123_cur."!cursor_pass"(rx123_pos, "decint")
    rx123_cur."!cursor_debug"("PASS  ", "decint", " at pos=", rx123_pos)
    .return (rx123_cur)
  rx123_fail:
.annotate "line", 33
    (rx123_rep, rx123_pos, $I10, $P10) = rx123_cur."!mark_fail"(0)
    lt rx123_pos, -1, rx123_done
    eq rx123_pos, -1, rx123_fail
    jump $I10
  rx123_done:
    rx123_cur."!cursor_fail"()
    rx123_cur."!cursor_debug"("FAIL  ", "decint")
    .return (rx123_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :subid("46_1261201500.07268") :method
.annotate "line", 33
    new $P125, "ResizablePMCArray"
    push $P125, ""
    .return ($P125)
.end


.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("47_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx130_tgt
    .local int rx130_pos
    .local int rx130_off
    .local int rx130_eos
    .local int rx130_rep
    .local pmc rx130_cur
    (rx130_cur, rx130_pos, rx130_tgt) = self."!cursor_start"()
    rx130_cur."!cursor_debug"("START ", "hexints")
    rx130_cur."!cursor_caparray"("decint")
    .lex unicode:"$\x{a2}", rx130_cur
    .local pmc match
    .lex "$/", match
    length rx130_eos, rx130_tgt
    set rx130_off, 0
    lt rx130_pos, 2, rx130_start
    sub rx130_off, rx130_pos, 1
    substr rx130_tgt, rx130_tgt, rx130_off
  rx130_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan133_done
    goto rxscan133_scan
  rxscan133_loop:
    ($P10) = rx130_cur."from"()
    inc $P10
    set rx130_pos, $P10
    ge rx130_pos, rx130_eos, rxscan133_done
  rxscan133_scan:
    set_addr $I10, rxscan133_loop
    rx130_cur."!mark_push"(0, rx130_pos, $I10)
  rxscan133_done:
.annotate "line", 49
  # rx rxquantr134 ** 1..*
    set_addr $I135, rxquantr134_done
    rx130_cur."!mark_push"(0, -1, $I135)
  rxquantr134_loop:
  # rx subrule "ws" subtype=method negate=
    rx130_cur."!cursor_pos"(rx130_pos)
    $P10 = rx130_cur."ws"()
    unless $P10, rx130_fail
    rx130_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx130_cur."!cursor_pos"(rx130_pos)
    $P10 = rx130_cur."decint"()
    unless $P10, rx130_fail
    rx130_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx130_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx130_cur."!cursor_pos"(rx130_pos)
    $P10 = rx130_cur."ws"()
    unless $P10, rx130_fail
    rx130_pos = $P10."pos"()
    (rx130_rep) = rx130_cur."!mark_commit"($I135)
    rx130_cur."!mark_push"(rx130_rep, rx130_pos, $I135)
  # rx literal  ","
    add $I11, rx130_pos, 1
    gt $I11, rx130_eos, rx130_fail
    sub $I11, rx130_pos, rx130_off
    substr $S10, rx130_tgt, $I11, 1
    ne $S10, ",", rx130_fail
    add rx130_pos, 1
    goto rxquantr134_loop
  rxquantr134_done:
  # rx pass
    rx130_cur."!cursor_pass"(rx130_pos, "hexints")
    rx130_cur."!cursor_debug"("PASS  ", "hexints", " at pos=", rx130_pos)
    .return (rx130_cur)
  rx130_fail:
.annotate "line", 33
    (rx130_rep, rx130_pos, $I10, $P10) = rx130_cur."!mark_fail"(0)
    lt rx130_pos, -1, rx130_done
    eq rx130_pos, -1, rx130_fail
    jump $I10
  rx130_done:
    rx130_cur."!cursor_fail"()
    rx130_cur."!cursor_debug"("FAIL  ", "hexints")
    .return (rx130_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("48_1261201500.07268") :method
.annotate "line", 33
    new $P132, "ResizablePMCArray"
    push $P132, ""
    .return ($P132)
.end


.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx137_tgt
    .local int rx137_pos
    .local int rx137_off
    .local int rx137_eos
    .local int rx137_rep
    .local pmc rx137_cur
    (rx137_cur, rx137_pos, rx137_tgt) = self."!cursor_start"()
    rx137_cur."!cursor_debug"("START ", "hexint")
    .lex unicode:"$\x{a2}", rx137_cur
    .local pmc match
    .lex "$/", match
    length rx137_eos, rx137_tgt
    set rx137_off, 0
    lt rx137_pos, 2, rx137_start
    sub rx137_off, rx137_pos, 1
    substr rx137_tgt, rx137_tgt, rx137_off
  rx137_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan140_done
    goto rxscan140_scan
  rxscan140_loop:
    ($P10) = rx137_cur."from"()
    inc $P10
    set rx137_pos, $P10
    ge rx137_pos, rx137_eos, rxscan140_done
  rxscan140_scan:
    set_addr $I10, rxscan140_loop
    rx137_cur."!mark_push"(0, rx137_pos, $I10)
  rxscan140_done:
.annotate "line", 51
  # rx rxquantr141 ** 1..*
    set_addr $I144, rxquantr141_done
    rx137_cur."!mark_push"(0, -1, $I144)
  rxquantr141_loop:
  # rx rxquantr142 ** 1..*
    set_addr $I143, rxquantr142_done
    rx137_cur."!mark_push"(0, -1, $I143)
  rxquantr142_loop:
  # rx enumcharlist negate=0 
    ge rx137_pos, rx137_eos, rx137_fail
    sub $I10, rx137_pos, rx137_off
    substr $S10, rx137_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rx137_fail
    inc rx137_pos
    (rx137_rep) = rx137_cur."!mark_commit"($I143)
    rx137_cur."!mark_push"(rx137_rep, rx137_pos, $I143)
    goto rxquantr142_loop
  rxquantr142_done:
    (rx137_rep) = rx137_cur."!mark_commit"($I144)
    rx137_cur."!mark_push"(rx137_rep, rx137_pos, $I144)
  # rx literal  "_"
    add $I11, rx137_pos, 1
    gt $I11, rx137_eos, rx137_fail
    sub $I11, rx137_pos, rx137_off
    substr $S10, rx137_tgt, $I11, 1
    ne $S10, "_", rx137_fail
    add rx137_pos, 1
    goto rxquantr141_loop
  rxquantr141_done:
  # rx pass
    rx137_cur."!cursor_pass"(rx137_pos, "hexint")
    rx137_cur."!cursor_debug"("PASS  ", "hexint", " at pos=", rx137_pos)
    .return (rx137_cur)
  rx137_fail:
.annotate "line", 33
    (rx137_rep, rx137_pos, $I10, $P10) = rx137_cur."!mark_fail"(0)
    lt rx137_pos, -1, rx137_done
    eq rx137_pos, -1, rx137_fail
    jump $I10
  rx137_done:
    rx137_cur."!cursor_fail"()
    rx137_cur."!cursor_debug"("FAIL  ", "hexint")
    .return (rx137_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("50_1261201500.07268") :method
.annotate "line", 33
    new $P139, "ResizablePMCArray"
    push $P139, ""
    .return ($P139)
.end


.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx146_tgt
    .local int rx146_pos
    .local int rx146_off
    .local int rx146_eos
    .local int rx146_rep
    .local pmc rx146_cur
    (rx146_cur, rx146_pos, rx146_tgt) = self."!cursor_start"()
    rx146_cur."!cursor_debug"("START ", "hexints")
    rx146_cur."!cursor_caparray"("hexint")
    .lex unicode:"$\x{a2}", rx146_cur
    .local pmc match
    .lex "$/", match
    length rx146_eos, rx146_tgt
    set rx146_off, 0
    lt rx146_pos, 2, rx146_start
    sub rx146_off, rx146_pos, 1
    substr rx146_tgt, rx146_tgt, rx146_off
  rx146_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan149_done
    goto rxscan149_scan
  rxscan149_loop:
    ($P10) = rx146_cur."from"()
    inc $P10
    set rx146_pos, $P10
    ge rx146_pos, rx146_eos, rxscan149_done
  rxscan149_scan:
    set_addr $I10, rxscan149_loop
    rx146_cur."!mark_push"(0, rx146_pos, $I10)
  rxscan149_done:
.annotate "line", 52
  # rx rxquantr150 ** 1..*
    set_addr $I151, rxquantr150_done
    rx146_cur."!mark_push"(0, -1, $I151)
  rxquantr150_loop:
  # rx subrule "ws" subtype=method negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."ws"()
    unless $P10, rx146_fail
    rx146_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."hexint"()
    unless $P10, rx146_fail
    rx146_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx146_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."ws"()
    unless $P10, rx146_fail
    rx146_pos = $P10."pos"()
    (rx146_rep) = rx146_cur."!mark_commit"($I151)
    rx146_cur."!mark_push"(rx146_rep, rx146_pos, $I151)
  # rx literal  ","
    add $I11, rx146_pos, 1
    gt $I11, rx146_eos, rx146_fail
    sub $I11, rx146_pos, rx146_off
    substr $S10, rx146_tgt, $I11, 1
    ne $S10, ",", rx146_fail
    add rx146_pos, 1
    goto rxquantr150_loop
  rxquantr150_done:
  # rx pass
    rx146_cur."!cursor_pass"(rx146_pos, "hexints")
    rx146_cur."!cursor_debug"("PASS  ", "hexints", " at pos=", rx146_pos)
    .return (rx146_cur)
  rx146_fail:
.annotate "line", 33
    (rx146_rep, rx146_pos, $I10, $P10) = rx146_cur."!mark_fail"(0)
    lt rx146_pos, -1, rx146_done
    eq rx146_pos, -1, rx146_fail
    jump $I10
  rx146_done:
    rx146_cur."!cursor_fail"()
    rx146_cur."!cursor_debug"("FAIL  ", "hexints")
    .return (rx146_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("52_1261201500.07268") :method
.annotate "line", 33
    new $P148, "ResizablePMCArray"
    push $P148, ""
    .return ($P148)
.end


.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx153_tgt
    .local int rx153_pos
    .local int rx153_off
    .local int rx153_eos
    .local int rx153_rep
    .local pmc rx153_cur
    (rx153_cur, rx153_pos, rx153_tgt) = self."!cursor_start"()
    rx153_cur."!cursor_debug"("START ", "octint")
    .lex unicode:"$\x{a2}", rx153_cur
    .local pmc match
    .lex "$/", match
    length rx153_eos, rx153_tgt
    set rx153_off, 0
    lt rx153_pos, 2, rx153_start
    sub rx153_off, rx153_pos, 1
    substr rx153_tgt, rx153_tgt, rx153_off
  rx153_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan156_done
    goto rxscan156_scan
  rxscan156_loop:
    ($P10) = rx153_cur."from"()
    inc $P10
    set rx153_pos, $P10
    ge rx153_pos, rx153_eos, rxscan156_done
  rxscan156_scan:
    set_addr $I10, rxscan156_loop
    rx153_cur."!mark_push"(0, rx153_pos, $I10)
  rxscan156_done:
.annotate "line", 54
  # rx rxquantr157 ** 1..*
    set_addr $I160, rxquantr157_done
    rx153_cur."!mark_push"(0, -1, $I160)
  rxquantr157_loop:
  # rx rxquantr158 ** 1..*
    set_addr $I159, rxquantr158_done
    rx153_cur."!mark_push"(0, -1, $I159)
  rxquantr158_loop:
  # rx enumcharlist negate=0 
    ge rx153_pos, rx153_eos, rx153_fail
    sub $I10, rx153_pos, rx153_off
    substr $S10, rx153_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rx153_fail
    inc rx153_pos
    (rx153_rep) = rx153_cur."!mark_commit"($I159)
    rx153_cur."!mark_push"(rx153_rep, rx153_pos, $I159)
    goto rxquantr158_loop
  rxquantr158_done:
    (rx153_rep) = rx153_cur."!mark_commit"($I160)
    rx153_cur."!mark_push"(rx153_rep, rx153_pos, $I160)
  # rx literal  "_"
    add $I11, rx153_pos, 1
    gt $I11, rx153_eos, rx153_fail
    sub $I11, rx153_pos, rx153_off
    substr $S10, rx153_tgt, $I11, 1
    ne $S10, "_", rx153_fail
    add rx153_pos, 1
    goto rxquantr157_loop
  rxquantr157_done:
  # rx pass
    rx153_cur."!cursor_pass"(rx153_pos, "octint")
    rx153_cur."!cursor_debug"("PASS  ", "octint", " at pos=", rx153_pos)
    .return (rx153_cur)
  rx153_fail:
.annotate "line", 33
    (rx153_rep, rx153_pos, $I10, $P10) = rx153_cur."!mark_fail"(0)
    lt rx153_pos, -1, rx153_done
    eq rx153_pos, -1, rx153_fail
    jump $I10
  rx153_done:
    rx153_cur."!cursor_fail"()
    rx153_cur."!cursor_debug"("FAIL  ", "octint")
    .return (rx153_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("54_1261201500.07268") :method
.annotate "line", 33
    new $P155, "ResizablePMCArray"
    push $P155, ""
    .return ($P155)
.end


.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    (rx162_cur, rx162_pos, rx162_tgt) = self."!cursor_start"()
    rx162_cur."!cursor_debug"("START ", "octints")
    rx162_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx162_cur
    .local pmc match
    .lex "$/", match
    length rx162_eos, rx162_tgt
    set rx162_off, 0
    lt rx162_pos, 2, rx162_start
    sub rx162_off, rx162_pos, 1
    substr rx162_tgt, rx162_tgt, rx162_off
  rx162_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan165_done
    goto rxscan165_scan
  rxscan165_loop:
    ($P10) = rx162_cur."from"()
    inc $P10
    set rx162_pos, $P10
    ge rx162_pos, rx162_eos, rxscan165_done
  rxscan165_scan:
    set_addr $I10, rxscan165_loop
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  rxscan165_done:
.annotate "line", 55
  # rx rxquantr166 ** 1..*
    set_addr $I167, rxquantr166_done
    rx162_cur."!mark_push"(0, -1, $I167)
  rxquantr166_loop:
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."octint"()
    unless $P10, rx162_fail
    rx162_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx162_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
    (rx162_rep) = rx162_cur."!mark_commit"($I167)
    rx162_cur."!mark_push"(rx162_rep, rx162_pos, $I167)
  # rx literal  ","
    add $I11, rx162_pos, 1
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    substr $S10, rx162_tgt, $I11, 1
    ne $S10, ",", rx162_fail
    add rx162_pos, 1
    goto rxquantr166_loop
  rxquantr166_done:
  # rx pass
    rx162_cur."!cursor_pass"(rx162_pos, "octints")
    rx162_cur."!cursor_debug"("PASS  ", "octints", " at pos=", rx162_pos)
    .return (rx162_cur)
  rx162_fail:
.annotate "line", 33
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    rx162_cur."!cursor_debug"("FAIL  ", "octints")
    .return (rx162_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("56_1261201500.07268") :method
.annotate "line", 33
    new $P164, "ResizablePMCArray"
    push $P164, ""
    .return ($P164)
.end


.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx169_tgt
    .local int rx169_pos
    .local int rx169_off
    .local int rx169_eos
    .local int rx169_rep
    .local pmc rx169_cur
    (rx169_cur, rx169_pos, rx169_tgt) = self."!cursor_start"()
    rx169_cur."!cursor_debug"("START ", "binint")
    .lex unicode:"$\x{a2}", rx169_cur
    .local pmc match
    .lex "$/", match
    length rx169_eos, rx169_tgt
    set rx169_off, 0
    lt rx169_pos, 2, rx169_start
    sub rx169_off, rx169_pos, 1
    substr rx169_tgt, rx169_tgt, rx169_off
  rx169_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan172_done
    goto rxscan172_scan
  rxscan172_loop:
    ($P10) = rx169_cur."from"()
    inc $P10
    set rx169_pos, $P10
    ge rx169_pos, rx169_eos, rxscan172_done
  rxscan172_scan:
    set_addr $I10, rxscan172_loop
    rx169_cur."!mark_push"(0, rx169_pos, $I10)
  rxscan172_done:
.annotate "line", 57
  # rx rxquantr173 ** 1..*
    set_addr $I176, rxquantr173_done
    rx169_cur."!mark_push"(0, -1, $I176)
  rxquantr173_loop:
  # rx rxquantr174 ** 1..*
    set_addr $I175, rxquantr174_done
    rx169_cur."!mark_push"(0, -1, $I175)
  rxquantr174_loop:
  # rx enumcharlist negate=0 
    ge rx169_pos, rx169_eos, rx169_fail
    sub $I10, rx169_pos, rx169_off
    substr $S10, rx169_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rx169_fail
    inc rx169_pos
    (rx169_rep) = rx169_cur."!mark_commit"($I175)
    rx169_cur."!mark_push"(rx169_rep, rx169_pos, $I175)
    goto rxquantr174_loop
  rxquantr174_done:
    (rx169_rep) = rx169_cur."!mark_commit"($I176)
    rx169_cur."!mark_push"(rx169_rep, rx169_pos, $I176)
  # rx literal  "_"
    add $I11, rx169_pos, 1
    gt $I11, rx169_eos, rx169_fail
    sub $I11, rx169_pos, rx169_off
    substr $S10, rx169_tgt, $I11, 1
    ne $S10, "_", rx169_fail
    add rx169_pos, 1
    goto rxquantr173_loop
  rxquantr173_done:
  # rx pass
    rx169_cur."!cursor_pass"(rx169_pos, "binint")
    rx169_cur."!cursor_debug"("PASS  ", "binint", " at pos=", rx169_pos)
    .return (rx169_cur)
  rx169_fail:
.annotate "line", 33
    (rx169_rep, rx169_pos, $I10, $P10) = rx169_cur."!mark_fail"(0)
    lt rx169_pos, -1, rx169_done
    eq rx169_pos, -1, rx169_fail
    jump $I10
  rx169_done:
    rx169_cur."!cursor_fail"()
    rx169_cur."!cursor_debug"("FAIL  ", "binint")
    .return (rx169_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :subid("58_1261201500.07268") :method
.annotate "line", 33
    new $P171, "ResizablePMCArray"
    push $P171, ""
    .return ($P171)
.end


.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx178_tgt
    .local int rx178_pos
    .local int rx178_off
    .local int rx178_eos
    .local int rx178_rep
    .local pmc rx178_cur
    (rx178_cur, rx178_pos, rx178_tgt) = self."!cursor_start"()
    rx178_cur."!cursor_debug"("START ", "binints")
    rx178_cur."!cursor_caparray"("binint")
    .lex unicode:"$\x{a2}", rx178_cur
    .local pmc match
    .lex "$/", match
    length rx178_eos, rx178_tgt
    set rx178_off, 0
    lt rx178_pos, 2, rx178_start
    sub rx178_off, rx178_pos, 1
    substr rx178_tgt, rx178_tgt, rx178_off
  rx178_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan181_done
    goto rxscan181_scan
  rxscan181_loop:
    ($P10) = rx178_cur."from"()
    inc $P10
    set rx178_pos, $P10
    ge rx178_pos, rx178_eos, rxscan181_done
  rxscan181_scan:
    set_addr $I10, rxscan181_loop
    rx178_cur."!mark_push"(0, rx178_pos, $I10)
  rxscan181_done:
.annotate "line", 58
  # rx rxquantr182 ** 1..*
    set_addr $I183, rxquantr182_done
    rx178_cur."!mark_push"(0, -1, $I183)
  rxquantr182_loop:
  # rx subrule "ws" subtype=method negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."ws"()
    unless $P10, rx178_fail
    rx178_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."binint"()
    unless $P10, rx178_fail
    rx178_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx178_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."ws"()
    unless $P10, rx178_fail
    rx178_pos = $P10."pos"()
    (rx178_rep) = rx178_cur."!mark_commit"($I183)
    rx178_cur."!mark_push"(rx178_rep, rx178_pos, $I183)
  # rx literal  ","
    add $I11, rx178_pos, 1
    gt $I11, rx178_eos, rx178_fail
    sub $I11, rx178_pos, rx178_off
    substr $S10, rx178_tgt, $I11, 1
    ne $S10, ",", rx178_fail
    add rx178_pos, 1
    goto rxquantr182_loop
  rxquantr182_done:
  # rx pass
    rx178_cur."!cursor_pass"(rx178_pos, "binints")
    rx178_cur."!cursor_debug"("PASS  ", "binints", " at pos=", rx178_pos)
    .return (rx178_cur)
  rx178_fail:
.annotate "line", 33
    (rx178_rep, rx178_pos, $I10, $P10) = rx178_cur."!mark_fail"(0)
    lt rx178_pos, -1, rx178_done
    eq rx178_pos, -1, rx178_fail
    jump $I10
  rx178_done:
    rx178_cur."!cursor_fail"()
    rx178_cur."!cursor_debug"("FAIL  ", "binints")
    .return (rx178_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :subid("60_1261201500.07268") :method
.annotate "line", 33
    new $P180, "ResizablePMCArray"
    push $P180, ""
    .return ($P180)
.end


.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx185_tgt
    .local int rx185_pos
    .local int rx185_off
    .local int rx185_eos
    .local int rx185_rep
    .local pmc rx185_cur
    (rx185_cur, rx185_pos, rx185_tgt) = self."!cursor_start"()
    rx185_cur."!cursor_debug"("START ", "integer")
    .lex unicode:"$\x{a2}", rx185_cur
    .local pmc match
    .lex "$/", match
    length rx185_eos, rx185_tgt
    set rx185_off, 0
    lt rx185_pos, 2, rx185_start
    sub rx185_off, rx185_pos, 1
    substr rx185_tgt, rx185_tgt, rx185_off
  rx185_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan193_done
    goto rxscan193_scan
  rxscan193_loop:
    ($P10) = rx185_cur."from"()
    inc $P10
    set rx185_pos, $P10
    ge rx185_pos, rx185_eos, rxscan193_done
  rxscan193_scan:
    set_addr $I10, rxscan193_loop
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
  rxscan193_done:
  alt194_0:
.annotate "line", 61
    set_addr $I10, alt194_1
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
.annotate "line", 62
  # rx literal  "0"
    add $I11, rx185_pos, 1
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    substr $S10, rx185_tgt, $I11, 1
    ne $S10, "0", rx185_fail
    add rx185_pos, 1
  alt195_0:
    set_addr $I10, alt195_1
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
  # rx literal  "b"
    add $I11, rx185_pos, 1
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    substr $S10, rx185_tgt, $I11, 1
    ne $S10, "b", rx185_fail
    add rx185_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."binint"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx185_pos = $P10."pos"()
    goto alt195_end
  alt195_1:
    set_addr $I10, alt195_2
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
.annotate "line", 63
  # rx literal  "o"
    add $I11, rx185_pos, 1
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    substr $S10, rx185_tgt, $I11, 1
    ne $S10, "o", rx185_fail
    add rx185_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."octint"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx185_pos = $P10."pos"()
    goto alt195_end
  alt195_2:
    set_addr $I10, alt195_3
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
.annotate "line", 64
  # rx literal  "x"
    add $I11, rx185_pos, 1
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    substr $S10, rx185_tgt, $I11, 1
    ne $S10, "x", rx185_fail
    add rx185_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."hexint"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx185_pos = $P10."pos"()
    goto alt195_end
  alt195_3:
.annotate "line", 65
  # rx literal  "d"
    add $I11, rx185_pos, 1
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    substr $S10, rx185_tgt, $I11, 1
    ne $S10, "d", rx185_fail
    add rx185_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."decint"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx185_pos = $P10."pos"()
  alt195_end:
.annotate "line", 62
    goto alt194_end
  alt194_1:
.annotate "line", 67
  # rx subrule "decint" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."decint"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx185_pos = $P10."pos"()
  alt194_end:
.annotate "line", 60
  # rx pass
    rx185_cur."!cursor_pass"(rx185_pos, "integer")
    rx185_cur."!cursor_debug"("PASS  ", "integer", " at pos=", rx185_pos)
    .return (rx185_cur)
  rx185_fail:
.annotate "line", 33
    (rx185_rep, rx185_pos, $I10, $P10) = rx185_cur."!mark_fail"(0)
    lt rx185_pos, -1, rx185_done
    eq rx185_pos, -1, rx185_fail
    jump $I10
  rx185_done:
    rx185_cur."!cursor_fail"()
    rx185_cur."!cursor_debug"("FAIL  ", "integer")
    .return (rx185_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("62_1261201500.07268") :method
.annotate "line", 33
    $P187 = self."!PREFIX__!subrule"("VALUE=decint", "")
    $P188 = self."!PREFIX__!subrule"("VALUE=decint", "0d")
    $P189 = self."!PREFIX__!subrule"("VALUE=hexint", "0x")
    $P190 = self."!PREFIX__!subrule"("VALUE=octint", "0o")
    $P191 = self."!PREFIX__!subrule"("VALUE=binint", "0b")
    new $P192, "ResizablePMCArray"
    push $P192, $P187
    push $P192, $P188
    push $P192, $P189
    push $P192, $P190
    push $P192, $P191
    .return ($P192)
.end


.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx197_tgt
    .local int rx197_pos
    .local int rx197_off
    .local int rx197_eos
    .local int rx197_rep
    .local pmc rx197_cur
    (rx197_cur, rx197_pos, rx197_tgt) = self."!cursor_start"()
    rx197_cur."!cursor_debug"("START ", "dec_number")
    rx197_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx197_cur
    .local pmc match
    .lex "$/", match
    length rx197_eos, rx197_tgt
    set rx197_off, 0
    lt rx197_pos, 2, rx197_start
    sub rx197_off, rx197_pos, 1
    substr rx197_tgt, rx197_tgt, rx197_off
  rx197_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan200_done
    goto rxscan200_scan
  rxscan200_loop:
    ($P10) = rx197_cur."from"()
    inc $P10
    set rx197_pos, $P10
    ge rx197_pos, rx197_eos, rxscan200_done
  rxscan200_scan:
    set_addr $I10, rxscan200_loop
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  rxscan200_done:
  alt201_0:
.annotate "line", 71
    set_addr $I10, alt201_1
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
.annotate "line", 72
  # rx subcapture "coeff"
    set_addr $I10, rxcap_202_fail
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  # rx literal  "."
    add $I11, rx197_pos, 1
    gt $I11, rx197_eos, rx197_fail
    sub $I11, rx197_pos, rx197_off
    substr $S10, rx197_tgt, $I11, 1
    ne $S10, ".", rx197_fail
    add rx197_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx197_pos, rx197_off
    find_not_cclass $I11, 8, rx197_tgt, $I10, rx197_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx197_fail
    add rx197_pos, rx197_off, $I11
    set_addr $I10, rxcap_202_fail
    ($I12, $I11) = rx197_cur."!mark_peek"($I10)
    rx197_cur."!cursor_pos"($I11)
    ($P10) = rx197_cur."!cursor_start"()
    $P10."!cursor_pass"(rx197_pos, "")
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_202_done
  rxcap_202_fail:
    goto rx197_fail
  rxcap_202_done:
  # rx rxquantr203 ** 0..1
    set_addr $I204, rxquantr203_done
    rx197_cur."!mark_push"(0, rx197_pos, $I204)
  rxquantr203_loop:
  # rx subrule "escale" subtype=capture negate=
    rx197_cur."!cursor_pos"(rx197_pos)
    $P10 = rx197_cur."escale"()
    unless $P10, rx197_fail
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx197_pos = $P10."pos"()
    (rx197_rep) = rx197_cur."!mark_commit"($I204)
  rxquantr203_done:
    goto alt201_end
  alt201_1:
    set_addr $I10, alt201_2
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
.annotate "line", 73
  # rx subcapture "coeff"
    set_addr $I10, rxcap_205_fail
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx197_pos, rx197_off
    find_not_cclass $I11, 8, rx197_tgt, $I10, rx197_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx197_fail
    add rx197_pos, rx197_off, $I11
  # rx literal  "."
    add $I11, rx197_pos, 1
    gt $I11, rx197_eos, rx197_fail
    sub $I11, rx197_pos, rx197_off
    substr $S10, rx197_tgt, $I11, 1
    ne $S10, ".", rx197_fail
    add rx197_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx197_pos, rx197_off
    find_not_cclass $I11, 8, rx197_tgt, $I10, rx197_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx197_fail
    add rx197_pos, rx197_off, $I11
    set_addr $I10, rxcap_205_fail
    ($I12, $I11) = rx197_cur."!mark_peek"($I10)
    rx197_cur."!cursor_pos"($I11)
    ($P10) = rx197_cur."!cursor_start"()
    $P10."!cursor_pass"(rx197_pos, "")
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_205_done
  rxcap_205_fail:
    goto rx197_fail
  rxcap_205_done:
  # rx rxquantr206 ** 0..1
    set_addr $I207, rxquantr206_done
    rx197_cur."!mark_push"(0, rx197_pos, $I207)
  rxquantr206_loop:
  # rx subrule "escale" subtype=capture negate=
    rx197_cur."!cursor_pos"(rx197_pos)
    $P10 = rx197_cur."escale"()
    unless $P10, rx197_fail
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx197_pos = $P10."pos"()
    (rx197_rep) = rx197_cur."!mark_commit"($I207)
  rxquantr206_done:
    goto alt201_end
  alt201_2:
.annotate "line", 74
  # rx subcapture "coeff"
    set_addr $I10, rxcap_208_fail
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx197_pos, rx197_off
    find_not_cclass $I11, 8, rx197_tgt, $I10, rx197_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx197_fail
    add rx197_pos, rx197_off, $I11
    set_addr $I10, rxcap_208_fail
    ($I12, $I11) = rx197_cur."!mark_peek"($I10)
    rx197_cur."!cursor_pos"($I11)
    ($P10) = rx197_cur."!cursor_start"()
    $P10."!cursor_pass"(rx197_pos, "")
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_208_done
  rxcap_208_fail:
    goto rx197_fail
  rxcap_208_done:
  # rx subrule "escale" subtype=capture negate=
    rx197_cur."!cursor_pos"(rx197_pos)
    $P10 = rx197_cur."escale"()
    unless $P10, rx197_fail
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx197_pos = $P10."pos"()
  alt201_end:
.annotate "line", 71
  # rx pass
    rx197_cur."!cursor_pass"(rx197_pos, "dec_number")
    rx197_cur."!cursor_debug"("PASS  ", "dec_number", " at pos=", rx197_pos)
    .return (rx197_cur)
  rx197_fail:
.annotate "line", 33
    (rx197_rep, rx197_pos, $I10, $P10) = rx197_cur."!mark_fail"(0)
    lt rx197_pos, -1, rx197_done
    eq rx197_pos, -1, rx197_fail
    jump $I10
  rx197_done:
    rx197_cur."!cursor_fail"()
    rx197_cur."!cursor_debug"("FAIL  ", "dec_number")
    .return (rx197_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :subid("64_1261201500.07268") :method
.annotate "line", 33
    new $P199, "ResizablePMCArray"
    push $P199, ""
    push $P199, ""
    push $P199, "."
    .return ($P199)
.end


.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx210_tgt
    .local int rx210_pos
    .local int rx210_off
    .local int rx210_eos
    .local int rx210_rep
    .local pmc rx210_cur
    (rx210_cur, rx210_pos, rx210_tgt) = self."!cursor_start"()
    rx210_cur."!cursor_debug"("START ", "escale")
    .lex unicode:"$\x{a2}", rx210_cur
    .local pmc match
    .lex "$/", match
    length rx210_eos, rx210_tgt
    set rx210_off, 0
    lt rx210_pos, 2, rx210_start
    sub rx210_off, rx210_pos, 1
    substr rx210_tgt, rx210_tgt, rx210_off
  rx210_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan213_done
    goto rxscan213_scan
  rxscan213_loop:
    ($P10) = rx210_cur."from"()
    inc $P10
    set rx210_pos, $P10
    ge rx210_pos, rx210_eos, rxscan213_done
  rxscan213_scan:
    set_addr $I10, rxscan213_loop
    rx210_cur."!mark_push"(0, rx210_pos, $I10)
  rxscan213_done:
.annotate "line", 77
  # rx enumcharlist negate=0 
    ge rx210_pos, rx210_eos, rx210_fail
    sub $I10, rx210_pos, rx210_off
    substr $S10, rx210_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx210_fail
    inc rx210_pos
  # rx rxquantr214 ** 0..1
    set_addr $I215, rxquantr214_done
    rx210_cur."!mark_push"(0, rx210_pos, $I215)
  rxquantr214_loop:
  # rx enumcharlist negate=0 
    ge rx210_pos, rx210_eos, rx210_fail
    sub $I10, rx210_pos, rx210_off
    substr $S10, rx210_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rx210_fail
    inc rx210_pos
    (rx210_rep) = rx210_cur."!mark_commit"($I215)
  rxquantr214_done:
  # rx charclass_q d r 1..-1
    sub $I10, rx210_pos, rx210_off
    find_not_cclass $I11, 8, rx210_tgt, $I10, rx210_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx210_fail
    add rx210_pos, rx210_off, $I11
  # rx pass
    rx210_cur."!cursor_pass"(rx210_pos, "escale")
    rx210_cur."!cursor_debug"("PASS  ", "escale", " at pos=", rx210_pos)
    .return (rx210_cur)
  rx210_fail:
.annotate "line", 33
    (rx210_rep, rx210_pos, $I10, $P10) = rx210_cur."!mark_fail"(0)
    lt rx210_pos, -1, rx210_done
    eq rx210_pos, -1, rx210_fail
    jump $I10
  rx210_done:
    rx210_cur."!cursor_fail"()
    rx210_cur."!cursor_debug"("FAIL  ", "escale")
    .return (rx210_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :subid("66_1261201500.07268") :method
.annotate "line", 33
    new $P212, "ResizablePMCArray"
    push $P212, "e"
    push $P212, "E"
    .return ($P212)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1261201500.07268") :method
.annotate "line", 79
    $P217 = self."!protoregex"("quote_escape")
    .return ($P217)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1261201500.07268") :method
.annotate "line", 79
    $P219 = self."!PREFIX__!protoregex"("quote_escape")
    .return ($P219)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx221_tgt
    .local int rx221_pos
    .local int rx221_off
    .local int rx221_eos
    .local int rx221_rep
    .local pmc rx221_cur
    (rx221_cur, rx221_pos, rx221_tgt) = self."!cursor_start"()
    rx221_cur."!cursor_debug"("START ", "quote_escape:sym<backslash>")
    .lex unicode:"$\x{a2}", rx221_cur
    .local pmc match
    .lex "$/", match
    length rx221_eos, rx221_tgt
    set rx221_off, 0
    lt rx221_pos, 2, rx221_start
    sub rx221_off, rx221_pos, 1
    substr rx221_tgt, rx221_tgt, rx221_off
  rx221_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan224_done
    goto rxscan224_scan
  rxscan224_loop:
    ($P10) = rx221_cur."from"()
    inc $P10
    set rx221_pos, $P10
    ge rx221_pos, rx221_eos, rxscan224_done
  rxscan224_scan:
    set_addr $I10, rxscan224_loop
    rx221_cur."!mark_push"(0, rx221_pos, $I10)
  rxscan224_done:
.annotate "line", 80
  # rx literal  "\\\\"
    add $I11, rx221_pos, 2
    gt $I11, rx221_eos, rx221_fail
    sub $I11, rx221_pos, rx221_off
    substr $S10, rx221_tgt, $I11, 2
    ne $S10, "\\\\", rx221_fail
    add rx221_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx221_cur."!cursor_pos"(rx221_pos)
    $P10 = rx221_cur."quotemod_check"("q")
    unless $P10, rx221_fail
  # rx pass
    rx221_cur."!cursor_pass"(rx221_pos, "quote_escape:sym<backslash>")
    rx221_cur."!cursor_debug"("PASS  ", "quote_escape:sym<backslash>", " at pos=", rx221_pos)
    .return (rx221_cur)
  rx221_fail:
.annotate "line", 33
    (rx221_rep, rx221_pos, $I10, $P10) = rx221_cur."!mark_fail"(0)
    lt rx221_pos, -1, rx221_done
    eq rx221_pos, -1, rx221_fail
    jump $I10
  rx221_done:
    rx221_cur."!cursor_fail"()
    rx221_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<backslash>")
    .return (rx221_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("70_1261201500.07268") :method
.annotate "line", 33
    new $P223, "ResizablePMCArray"
    push $P223, "\\\\"
    .return ($P223)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx226_tgt
    .local int rx226_pos
    .local int rx226_off
    .local int rx226_eos
    .local int rx226_rep
    .local pmc rx226_cur
    (rx226_cur, rx226_pos, rx226_tgt) = self."!cursor_start"()
    rx226_cur."!cursor_debug"("START ", "quote_escape:sym<stopper>")
    .lex unicode:"$\x{a2}", rx226_cur
    .local pmc match
    .lex "$/", match
    length rx226_eos, rx226_tgt
    set rx226_off, 0
    lt rx226_pos, 2, rx226_start
    sub rx226_off, rx226_pos, 1
    substr rx226_tgt, rx226_tgt, rx226_off
  rx226_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan229_done
    goto rxscan229_scan
  rxscan229_loop:
    ($P10) = rx226_cur."from"()
    inc $P10
    set rx226_pos, $P10
    ge rx226_pos, rx226_eos, rxscan229_done
  rxscan229_scan:
    set_addr $I10, rxscan229_loop
    rx226_cur."!mark_push"(0, rx226_pos, $I10)
  rxscan229_done:
.annotate "line", 81
  # rx literal  "\\"
    add $I11, rx226_pos, 1
    gt $I11, rx226_eos, rx226_fail
    sub $I11, rx226_pos, rx226_off
    substr $S10, rx226_tgt, $I11, 1
    ne $S10, "\\", rx226_fail
    add rx226_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx226_cur."!cursor_pos"(rx226_pos)
    $P10 = rx226_cur."quotemod_check"("q")
    unless $P10, rx226_fail
  # rx subrule "stopper" subtype=capture negate=
    rx226_cur."!cursor_pos"(rx226_pos)
    $P10 = rx226_cur."stopper"()
    unless $P10, rx226_fail
    rx226_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx226_pos = $P10."pos"()
  # rx pass
    rx226_cur."!cursor_pass"(rx226_pos, "quote_escape:sym<stopper>")
    rx226_cur."!cursor_debug"("PASS  ", "quote_escape:sym<stopper>", " at pos=", rx226_pos)
    .return (rx226_cur)
  rx226_fail:
.annotate "line", 33
    (rx226_rep, rx226_pos, $I10, $P10) = rx226_cur."!mark_fail"(0)
    lt rx226_pos, -1, rx226_done
    eq rx226_pos, -1, rx226_fail
    jump $I10
  rx226_done:
    rx226_cur."!cursor_fail"()
    rx226_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<stopper>")
    .return (rx226_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("72_1261201500.07268") :method
.annotate "line", 33
    new $P228, "ResizablePMCArray"
    push $P228, "\\"
    .return ($P228)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx231_tgt
    .local int rx231_pos
    .local int rx231_off
    .local int rx231_eos
    .local int rx231_rep
    .local pmc rx231_cur
    (rx231_cur, rx231_pos, rx231_tgt) = self."!cursor_start"()
    rx231_cur."!cursor_debug"("START ", "quote_escape:sym<bs>")
    .lex unicode:"$\x{a2}", rx231_cur
    .local pmc match
    .lex "$/", match
    length rx231_eos, rx231_tgt
    set rx231_off, 0
    lt rx231_pos, 2, rx231_start
    sub rx231_off, rx231_pos, 1
    substr rx231_tgt, rx231_tgt, rx231_off
  rx231_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan234_done
    goto rxscan234_scan
  rxscan234_loop:
    ($P10) = rx231_cur."from"()
    inc $P10
    set rx231_pos, $P10
    ge rx231_pos, rx231_eos, rxscan234_done
  rxscan234_scan:
    set_addr $I10, rxscan234_loop
    rx231_cur."!mark_push"(0, rx231_pos, $I10)
  rxscan234_done:
.annotate "line", 83
  # rx literal  "\\b"
    add $I11, rx231_pos, 2
    gt $I11, rx231_eos, rx231_fail
    sub $I11, rx231_pos, rx231_off
    substr $S10, rx231_tgt, $I11, 2
    ne $S10, "\\b", rx231_fail
    add rx231_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx231_cur."!cursor_pos"(rx231_pos)
    $P10 = rx231_cur."quotemod_check"("b")
    unless $P10, rx231_fail
  # rx pass
    rx231_cur."!cursor_pass"(rx231_pos, "quote_escape:sym<bs>")
    rx231_cur."!cursor_debug"("PASS  ", "quote_escape:sym<bs>", " at pos=", rx231_pos)
    .return (rx231_cur)
  rx231_fail:
.annotate "line", 33
    (rx231_rep, rx231_pos, $I10, $P10) = rx231_cur."!mark_fail"(0)
    lt rx231_pos, -1, rx231_done
    eq rx231_pos, -1, rx231_fail
    jump $I10
  rx231_done:
    rx231_cur."!cursor_fail"()
    rx231_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<bs>")
    .return (rx231_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("74_1261201500.07268") :method
.annotate "line", 33
    new $P233, "ResizablePMCArray"
    push $P233, "\\b"
    .return ($P233)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx236_tgt
    .local int rx236_pos
    .local int rx236_off
    .local int rx236_eos
    .local int rx236_rep
    .local pmc rx236_cur
    (rx236_cur, rx236_pos, rx236_tgt) = self."!cursor_start"()
    rx236_cur."!cursor_debug"("START ", "quote_escape:sym<nl>")
    .lex unicode:"$\x{a2}", rx236_cur
    .local pmc match
    .lex "$/", match
    length rx236_eos, rx236_tgt
    set rx236_off, 0
    lt rx236_pos, 2, rx236_start
    sub rx236_off, rx236_pos, 1
    substr rx236_tgt, rx236_tgt, rx236_off
  rx236_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan239_done
    goto rxscan239_scan
  rxscan239_loop:
    ($P10) = rx236_cur."from"()
    inc $P10
    set rx236_pos, $P10
    ge rx236_pos, rx236_eos, rxscan239_done
  rxscan239_scan:
    set_addr $I10, rxscan239_loop
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  rxscan239_done:
.annotate "line", 84
  # rx literal  "\\n"
    add $I11, rx236_pos, 2
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 2
    ne $S10, "\\n", rx236_fail
    add rx236_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."quotemod_check"("b")
    unless $P10, rx236_fail
  # rx pass
    rx236_cur."!cursor_pass"(rx236_pos, "quote_escape:sym<nl>")
    rx236_cur."!cursor_debug"("PASS  ", "quote_escape:sym<nl>", " at pos=", rx236_pos)
    .return (rx236_cur)
  rx236_fail:
.annotate "line", 33
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    rx236_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<nl>")
    .return (rx236_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("76_1261201500.07268") :method
.annotate "line", 33
    new $P238, "ResizablePMCArray"
    push $P238, "\\n"
    .return ($P238)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx241_tgt
    .local int rx241_pos
    .local int rx241_off
    .local int rx241_eos
    .local int rx241_rep
    .local pmc rx241_cur
    (rx241_cur, rx241_pos, rx241_tgt) = self."!cursor_start"()
    rx241_cur."!cursor_debug"("START ", "quote_escape:sym<cr>")
    .lex unicode:"$\x{a2}", rx241_cur
    .local pmc match
    .lex "$/", match
    length rx241_eos, rx241_tgt
    set rx241_off, 0
    lt rx241_pos, 2, rx241_start
    sub rx241_off, rx241_pos, 1
    substr rx241_tgt, rx241_tgt, rx241_off
  rx241_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan244_done
    goto rxscan244_scan
  rxscan244_loop:
    ($P10) = rx241_cur."from"()
    inc $P10
    set rx241_pos, $P10
    ge rx241_pos, rx241_eos, rxscan244_done
  rxscan244_scan:
    set_addr $I10, rxscan244_loop
    rx241_cur."!mark_push"(0, rx241_pos, $I10)
  rxscan244_done:
.annotate "line", 85
  # rx literal  "\\r"
    add $I11, rx241_pos, 2
    gt $I11, rx241_eos, rx241_fail
    sub $I11, rx241_pos, rx241_off
    substr $S10, rx241_tgt, $I11, 2
    ne $S10, "\\r", rx241_fail
    add rx241_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx241_cur."!cursor_pos"(rx241_pos)
    $P10 = rx241_cur."quotemod_check"("b")
    unless $P10, rx241_fail
  # rx pass
    rx241_cur."!cursor_pass"(rx241_pos, "quote_escape:sym<cr>")
    rx241_cur."!cursor_debug"("PASS  ", "quote_escape:sym<cr>", " at pos=", rx241_pos)
    .return (rx241_cur)
  rx241_fail:
.annotate "line", 33
    (rx241_rep, rx241_pos, $I10, $P10) = rx241_cur."!mark_fail"(0)
    lt rx241_pos, -1, rx241_done
    eq rx241_pos, -1, rx241_fail
    jump $I10
  rx241_done:
    rx241_cur."!cursor_fail"()
    rx241_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<cr>")
    .return (rx241_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("78_1261201500.07268") :method
.annotate "line", 33
    new $P243, "ResizablePMCArray"
    push $P243, "\\r"
    .return ($P243)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx246_tgt
    .local int rx246_pos
    .local int rx246_off
    .local int rx246_eos
    .local int rx246_rep
    .local pmc rx246_cur
    (rx246_cur, rx246_pos, rx246_tgt) = self."!cursor_start"()
    rx246_cur."!cursor_debug"("START ", "quote_escape:sym<tab>")
    .lex unicode:"$\x{a2}", rx246_cur
    .local pmc match
    .lex "$/", match
    length rx246_eos, rx246_tgt
    set rx246_off, 0
    lt rx246_pos, 2, rx246_start
    sub rx246_off, rx246_pos, 1
    substr rx246_tgt, rx246_tgt, rx246_off
  rx246_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan249_done
    goto rxscan249_scan
  rxscan249_loop:
    ($P10) = rx246_cur."from"()
    inc $P10
    set rx246_pos, $P10
    ge rx246_pos, rx246_eos, rxscan249_done
  rxscan249_scan:
    set_addr $I10, rxscan249_loop
    rx246_cur."!mark_push"(0, rx246_pos, $I10)
  rxscan249_done:
.annotate "line", 86
  # rx literal  "\\t"
    add $I11, rx246_pos, 2
    gt $I11, rx246_eos, rx246_fail
    sub $I11, rx246_pos, rx246_off
    substr $S10, rx246_tgt, $I11, 2
    ne $S10, "\\t", rx246_fail
    add rx246_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."quotemod_check"("b")
    unless $P10, rx246_fail
  # rx pass
    rx246_cur."!cursor_pass"(rx246_pos, "quote_escape:sym<tab>")
    rx246_cur."!cursor_debug"("PASS  ", "quote_escape:sym<tab>", " at pos=", rx246_pos)
    .return (rx246_cur)
  rx246_fail:
.annotate "line", 33
    (rx246_rep, rx246_pos, $I10, $P10) = rx246_cur."!mark_fail"(0)
    lt rx246_pos, -1, rx246_done
    eq rx246_pos, -1, rx246_fail
    jump $I10
  rx246_done:
    rx246_cur."!cursor_fail"()
    rx246_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<tab>")
    .return (rx246_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("80_1261201500.07268") :method
.annotate "line", 33
    new $P248, "ResizablePMCArray"
    push $P248, "\\t"
    .return ($P248)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("81_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx251_tgt
    .local int rx251_pos
    .local int rx251_off
    .local int rx251_eos
    .local int rx251_rep
    .local pmc rx251_cur
    (rx251_cur, rx251_pos, rx251_tgt) = self."!cursor_start"()
    rx251_cur."!cursor_debug"("START ", "quote_escape:sym<hex>")
    .lex unicode:"$\x{a2}", rx251_cur
    .local pmc match
    .lex "$/", match
    length rx251_eos, rx251_tgt
    set rx251_off, 0
    lt rx251_pos, 2, rx251_start
    sub rx251_off, rx251_pos, 1
    substr rx251_tgt, rx251_tgt, rx251_off
  rx251_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan254_done
    goto rxscan254_scan
  rxscan254_loop:
    ($P10) = rx251_cur."from"()
    inc $P10
    set rx251_pos, $P10
    ge rx251_pos, rx251_eos, rxscan254_done
  rxscan254_scan:
    set_addr $I10, rxscan254_loop
    rx251_cur."!mark_push"(0, rx251_pos, $I10)
  rxscan254_done:
.annotate "line", 88
  # rx literal  unicode:"\\x"
    add $I11, rx251_pos, 2
    gt $I11, rx251_eos, rx251_fail
    sub $I11, rx251_pos, rx251_off
    substr $S10, rx251_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx251_fail
    add rx251_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx251_cur."!cursor_pos"(rx251_pos)
    $P10 = rx251_cur."quotemod_check"("b")
    unless $P10, rx251_fail
  alt255_0:
.annotate "line", 89
    set_addr $I10, alt255_1
    rx251_cur."!mark_push"(0, rx251_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx251_cur."!cursor_pos"(rx251_pos)
    $P10 = rx251_cur."hexint"()
    unless $P10, rx251_fail
    rx251_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx251_pos = $P10."pos"()
    goto alt255_end
  alt255_1:
  # rx literal  "["
    add $I11, rx251_pos, 1
    gt $I11, rx251_eos, rx251_fail
    sub $I11, rx251_pos, rx251_off
    substr $S10, rx251_tgt, $I11, 1
    ne $S10, "[", rx251_fail
    add rx251_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx251_cur."!cursor_pos"(rx251_pos)
    $P10 = rx251_cur."hexints"()
    unless $P10, rx251_fail
    rx251_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx251_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx251_pos, 1
    gt $I11, rx251_eos, rx251_fail
    sub $I11, rx251_pos, rx251_off
    substr $S10, rx251_tgt, $I11, 1
    ne $S10, "]", rx251_fail
    add rx251_pos, 1
  alt255_end:
.annotate "line", 87
  # rx pass
    rx251_cur."!cursor_pass"(rx251_pos, "quote_escape:sym<hex>")
    rx251_cur."!cursor_debug"("PASS  ", "quote_escape:sym<hex>", " at pos=", rx251_pos)
    .return (rx251_cur)
  rx251_fail:
.annotate "line", 33
    (rx251_rep, rx251_pos, $I10, $P10) = rx251_cur."!mark_fail"(0)
    lt rx251_pos, -1, rx251_done
    eq rx251_pos, -1, rx251_fail
    jump $I10
  rx251_done:
    rx251_cur."!cursor_fail"()
    rx251_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<hex>")
    .return (rx251_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("82_1261201500.07268") :method
.annotate "line", 33
    new $P253, "ResizablePMCArray"
    push $P253, unicode:"\\x"
    .return ($P253)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("83_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx257_tgt
    .local int rx257_pos
    .local int rx257_off
    .local int rx257_eos
    .local int rx257_rep
    .local pmc rx257_cur
    (rx257_cur, rx257_pos, rx257_tgt) = self."!cursor_start"()
    rx257_cur."!cursor_debug"("START ", "quote_escape:sym<oct>")
    .lex unicode:"$\x{a2}", rx257_cur
    .local pmc match
    .lex "$/", match
    length rx257_eos, rx257_tgt
    set rx257_off, 0
    lt rx257_pos, 2, rx257_start
    sub rx257_off, rx257_pos, 1
    substr rx257_tgt, rx257_tgt, rx257_off
  rx257_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan260_done
    goto rxscan260_scan
  rxscan260_loop:
    ($P10) = rx257_cur."from"()
    inc $P10
    set rx257_pos, $P10
    ge rx257_pos, rx257_eos, rxscan260_done
  rxscan260_scan:
    set_addr $I10, rxscan260_loop
    rx257_cur."!mark_push"(0, rx257_pos, $I10)
  rxscan260_done:
.annotate "line", 92
  # rx literal  "\\o"
    add $I11, rx257_pos, 2
    gt $I11, rx257_eos, rx257_fail
    sub $I11, rx257_pos, rx257_off
    substr $S10, rx257_tgt, $I11, 2
    ne $S10, "\\o", rx257_fail
    add rx257_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx257_cur."!cursor_pos"(rx257_pos)
    $P10 = rx257_cur."quotemod_check"("b")
    unless $P10, rx257_fail
  alt261_0:
.annotate "line", 93
    set_addr $I10, alt261_1
    rx257_cur."!mark_push"(0, rx257_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx257_cur."!cursor_pos"(rx257_pos)
    $P10 = rx257_cur."octint"()
    unless $P10, rx257_fail
    rx257_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx257_pos = $P10."pos"()
    goto alt261_end
  alt261_1:
  # rx literal  "["
    add $I11, rx257_pos, 1
    gt $I11, rx257_eos, rx257_fail
    sub $I11, rx257_pos, rx257_off
    substr $S10, rx257_tgt, $I11, 1
    ne $S10, "[", rx257_fail
    add rx257_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx257_cur."!cursor_pos"(rx257_pos)
    $P10 = rx257_cur."octints"()
    unless $P10, rx257_fail
    rx257_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx257_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx257_pos, 1
    gt $I11, rx257_eos, rx257_fail
    sub $I11, rx257_pos, rx257_off
    substr $S10, rx257_tgt, $I11, 1
    ne $S10, "]", rx257_fail
    add rx257_pos, 1
  alt261_end:
.annotate "line", 91
  # rx pass
    rx257_cur."!cursor_pass"(rx257_pos, "quote_escape:sym<oct>")
    rx257_cur."!cursor_debug"("PASS  ", "quote_escape:sym<oct>", " at pos=", rx257_pos)
    .return (rx257_cur)
  rx257_fail:
.annotate "line", 33
    (rx257_rep, rx257_pos, $I10, $P10) = rx257_cur."!mark_fail"(0)
    lt rx257_pos, -1, rx257_done
    eq rx257_pos, -1, rx257_fail
    jump $I10
  rx257_done:
    rx257_cur."!cursor_fail"()
    rx257_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<oct>")
    .return (rx257_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("84_1261201500.07268") :method
.annotate "line", 33
    new $P259, "ResizablePMCArray"
    push $P259, "\\o"
    .return ($P259)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("85_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx263_tgt
    .local int rx263_pos
    .local int rx263_off
    .local int rx263_eos
    .local int rx263_rep
    .local pmc rx263_cur
    (rx263_cur, rx263_pos, rx263_tgt) = self."!cursor_start"()
    rx263_cur."!cursor_debug"("START ", "quote_escape:sym<chr>")
    .lex unicode:"$\x{a2}", rx263_cur
    .local pmc match
    .lex "$/", match
    length rx263_eos, rx263_tgt
    set rx263_off, 0
    lt rx263_pos, 2, rx263_start
    sub rx263_off, rx263_pos, 1
    substr rx263_tgt, rx263_tgt, rx263_off
  rx263_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan266_done
    goto rxscan266_scan
  rxscan266_loop:
    ($P10) = rx263_cur."from"()
    inc $P10
    set rx263_pos, $P10
    ge rx263_pos, rx263_eos, rxscan266_done
  rxscan266_scan:
    set_addr $I10, rxscan266_loop
    rx263_cur."!mark_push"(0, rx263_pos, $I10)
  rxscan266_done:
.annotate "line", 95
  # rx literal  "\\c"
    add $I11, rx263_pos, 2
    gt $I11, rx263_eos, rx263_fail
    sub $I11, rx263_pos, rx263_off
    substr $S10, rx263_tgt, $I11, 2
    ne $S10, "\\c", rx263_fail
    add rx263_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx263_cur."!cursor_pos"(rx263_pos)
    $P10 = rx263_cur."quotemod_check"("b")
    unless $P10, rx263_fail
  # rx subrule "charspec" subtype=capture negate=
    rx263_cur."!cursor_pos"(rx263_pos)
    $P10 = rx263_cur."charspec"()
    unless $P10, rx263_fail
    rx263_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx263_pos = $P10."pos"()
  # rx pass
    rx263_cur."!cursor_pass"(rx263_pos, "quote_escape:sym<chr>")
    rx263_cur."!cursor_debug"("PASS  ", "quote_escape:sym<chr>", " at pos=", rx263_pos)
    .return (rx263_cur)
  rx263_fail:
.annotate "line", 33
    (rx263_rep, rx263_pos, $I10, $P10) = rx263_cur."!mark_fail"(0)
    lt rx263_pos, -1, rx263_done
    eq rx263_pos, -1, rx263_fail
    jump $I10
  rx263_done:
    rx263_cur."!cursor_fail"()
    rx263_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<chr>")
    .return (rx263_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("86_1261201500.07268") :method
.annotate "line", 33
    new $P265, "ResizablePMCArray"
    push $P265, "\\c"
    .return ($P265)
.end


.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("87_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .const 'Sub' $P277 = "89_1261201500.07268" 
    capture_lex $P277
    .local string rx268_tgt
    .local int rx268_pos
    .local int rx268_off
    .local int rx268_eos
    .local int rx268_rep
    .local pmc rx268_cur
    (rx268_cur, rx268_pos, rx268_tgt) = self."!cursor_start"()
    rx268_cur."!cursor_debug"("START ", "charname")
    .lex unicode:"$\x{a2}", rx268_cur
    .local pmc match
    .lex "$/", match
    length rx268_eos, rx268_tgt
    set rx268_off, 0
    lt rx268_pos, 2, rx268_start
    sub rx268_off, rx268_pos, 1
    substr rx268_tgt, rx268_tgt, rx268_off
  rx268_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan272_done
    goto rxscan272_scan
  rxscan272_loop:
    ($P10) = rx268_cur."from"()
    inc $P10
    set rx268_pos, $P10
    ge rx268_pos, rx268_eos, rxscan272_done
  rxscan272_scan:
    set_addr $I10, rxscan272_loop
    rx268_cur."!mark_push"(0, rx268_pos, $I10)
  rxscan272_done:
  alt273_0:
.annotate "line", 97
    set_addr $I10, alt273_1
    rx268_cur."!mark_push"(0, rx268_pos, $I10)
.annotate "line", 98
  # rx subrule "integer" subtype=capture negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    $P10 = rx268_cur."integer"()
    unless $P10, rx268_fail
    rx268_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx268_pos = $P10."pos"()
    goto alt273_end
  alt273_1:
.annotate "line", 99
  # rx enumcharlist negate=0 
    ge rx268_pos, rx268_eos, rx268_fail
    sub $I10, rx268_pos, rx268_off
    substr $S10, rx268_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx268_fail
    inc rx268_pos
  # rx rxquantf274 ** 0..*
    set_addr $I10, rxquantf274_loop
    rx268_cur."!mark_push"(0, rx268_pos, $I10)
    goto rxquantf274_done
  rxquantf274_loop:
  # rx enumcharlist negate=1 
    ge rx268_pos, rx268_eos, rx268_fail
    sub $I10, rx268_pos, rx268_off
    substr $S10, rx268_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx268_fail
    inc rx268_pos
    set_addr $I10, rxquantf274_loop
    rx268_cur."!mark_push"($I275, rx268_pos, $I10)
  rxquantf274_done:
  # rx enumcharlist negate=0 
    ge rx268_pos, rx268_eos, rx268_fail
    sub $I10, rx268_pos, rx268_off
    substr $S10, rx268_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx268_fail
    inc rx268_pos
.annotate "line", 100
  # rx subrule "before" subtype=zerowidth negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    .const 'Sub' $P277 = "89_1261201500.07268" 
    capture_lex $P277
    $P10 = rx268_cur."before"($P277)
    unless $P10, rx268_fail
  alt273_end:
.annotate "line", 97
  # rx pass
    rx268_cur."!cursor_pass"(rx268_pos, "charname")
    rx268_cur."!cursor_debug"("PASS  ", "charname", " at pos=", rx268_pos)
    .return (rx268_cur)
  rx268_fail:
.annotate "line", 33
    (rx268_rep, rx268_pos, $I10, $P10) = rx268_cur."!mark_fail"(0)
    lt rx268_pos, -1, rx268_done
    eq rx268_pos, -1, rx268_fail
    jump $I10
  rx268_done:
    rx268_cur."!cursor_fail"()
    rx268_cur."!cursor_debug"("FAIL  ", "charname")
    .return (rx268_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("88_1261201500.07268") :method
.annotate "line", 33
    $P270 = self."!PREFIX__!subrule"("integer", "")
    new $P271, "ResizablePMCArray"
    push $P271, "Z"
    push $P271, "Y"
    push $P271, "X"
    push $P271, "W"
    push $P271, "V"
    push $P271, "U"
    push $P271, "T"
    push $P271, "S"
    push $P271, "R"
    push $P271, "Q"
    push $P271, "P"
    push $P271, "O"
    push $P271, "N"
    push $P271, "M"
    push $P271, "L"
    push $P271, "K"
    push $P271, "J"
    push $P271, "I"
    push $P271, "H"
    push $P271, "G"
    push $P271, "F"
    push $P271, "E"
    push $P271, "D"
    push $P271, "C"
    push $P271, "B"
    push $P271, "A"
    push $P271, "z"
    push $P271, "y"
    push $P271, "x"
    push $P271, "w"
    push $P271, "v"
    push $P271, "u"
    push $P271, "t"
    push $P271, "s"
    push $P271, "r"
    push $P271, "q"
    push $P271, "p"
    push $P271, "o"
    push $P271, "n"
    push $P271, "m"
    push $P271, "l"
    push $P271, "k"
    push $P271, "j"
    push $P271, "i"
    push $P271, "h"
    push $P271, "g"
    push $P271, "f"
    push $P271, "e"
    push $P271, "d"
    push $P271, "c"
    push $P271, "b"
    push $P271, "a"
    push $P271, $P270
    .return ($P271)
.end


.namespace ["HLL";"Grammar"]
.sub "_block276"  :anon :subid("89_1261201500.07268") :method :outer("87_1261201500.07268")
.annotate "line", 100
    .local string rx278_tgt
    .local int rx278_pos
    .local int rx278_off
    .local int rx278_eos
    .local int rx278_rep
    .local pmc rx278_cur
    (rx278_cur, rx278_pos, rx278_tgt) = self."!cursor_start"()
    rx278_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx278_cur
    .local pmc match
    .lex "$/", match
    length rx278_eos, rx278_tgt
    set rx278_off, 0
    lt rx278_pos, 2, rx278_start
    sub rx278_off, rx278_pos, 1
    substr rx278_tgt, rx278_tgt, rx278_off
  rx278_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan279_done
    goto rxscan279_scan
  rxscan279_loop:
    ($P10) = rx278_cur."from"()
    inc $P10
    set rx278_pos, $P10
    ge rx278_pos, rx278_eos, rxscan279_done
  rxscan279_scan:
    set_addr $I10, rxscan279_loop
    rx278_cur."!mark_push"(0, rx278_pos, $I10)
  rxscan279_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx278_pos, rx278_off
    find_not_cclass $I11, 32, rx278_tgt, $I10, rx278_eos
    add rx278_pos, rx278_off, $I11
  # rx enumcharlist negate=0 
    ge rx278_pos, rx278_eos, rx278_fail
    sub $I10, rx278_pos, rx278_off
    substr $S10, rx278_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx278_fail
    inc rx278_pos
  # rx pass
    rx278_cur."!cursor_pass"(rx278_pos, "")
    rx278_cur."!cursor_debug"("PASS  ", "", " at pos=", rx278_pos)
    .return (rx278_cur)
  rx278_fail:
    (rx278_rep, rx278_pos, $I10, $P10) = rx278_cur."!mark_fail"(0)
    lt rx278_pos, -1, rx278_done
    eq rx278_pos, -1, rx278_fail
    jump $I10
  rx278_done:
    rx278_cur."!cursor_fail"()
    rx278_cur."!cursor_debug"("FAIL  ", "")
    .return (rx278_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("90_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx281_tgt
    .local int rx281_pos
    .local int rx281_off
    .local int rx281_eos
    .local int rx281_rep
    .local pmc rx281_cur
    (rx281_cur, rx281_pos, rx281_tgt) = self."!cursor_start"()
    rx281_cur."!cursor_debug"("START ", "charnames")
    rx281_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx281_cur
    .local pmc match
    .lex "$/", match
    length rx281_eos, rx281_tgt
    set rx281_off, 0
    lt rx281_pos, 2, rx281_start
    sub rx281_off, rx281_pos, 1
    substr rx281_tgt, rx281_tgt, rx281_off
  rx281_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan284_done
    goto rxscan284_scan
  rxscan284_loop:
    ($P10) = rx281_cur."from"()
    inc $P10
    set rx281_pos, $P10
    ge rx281_pos, rx281_eos, rxscan284_done
  rxscan284_scan:
    set_addr $I10, rxscan284_loop
    rx281_cur."!mark_push"(0, rx281_pos, $I10)
  rxscan284_done:
.annotate "line", 102
  # rx rxquantr285 ** 1..*
    set_addr $I286, rxquantr285_done
    rx281_cur."!mark_push"(0, -1, $I286)
  rxquantr285_loop:
  # rx subrule "ws" subtype=method negate=
    rx281_cur."!cursor_pos"(rx281_pos)
    $P10 = rx281_cur."ws"()
    unless $P10, rx281_fail
    rx281_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx281_cur."!cursor_pos"(rx281_pos)
    $P10 = rx281_cur."charname"()
    unless $P10, rx281_fail
    rx281_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx281_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx281_cur."!cursor_pos"(rx281_pos)
    $P10 = rx281_cur."ws"()
    unless $P10, rx281_fail
    rx281_pos = $P10."pos"()
    (rx281_rep) = rx281_cur."!mark_commit"($I286)
    rx281_cur."!mark_push"(rx281_rep, rx281_pos, $I286)
  # rx literal  ","
    add $I11, rx281_pos, 1
    gt $I11, rx281_eos, rx281_fail
    sub $I11, rx281_pos, rx281_off
    substr $S10, rx281_tgt, $I11, 1
    ne $S10, ",", rx281_fail
    add rx281_pos, 1
    goto rxquantr285_loop
  rxquantr285_done:
  # rx pass
    rx281_cur."!cursor_pass"(rx281_pos, "charnames")
    rx281_cur."!cursor_debug"("PASS  ", "charnames", " at pos=", rx281_pos)
    .return (rx281_cur)
  rx281_fail:
.annotate "line", 33
    (rx281_rep, rx281_pos, $I10, $P10) = rx281_cur."!mark_fail"(0)
    lt rx281_pos, -1, rx281_done
    eq rx281_pos, -1, rx281_fail
    jump $I10
  rx281_done:
    rx281_cur."!cursor_fail"()
    rx281_cur."!cursor_debug"("FAIL  ", "charnames")
    .return (rx281_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("91_1261201500.07268") :method
.annotate "line", 33
    new $P283, "ResizablePMCArray"
    push $P283, ""
    .return ($P283)
.end


.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("92_1261201500.07268") :method :outer("11_1261201500.07268")
.annotate "line", 33
    .local string rx288_tgt
    .local int rx288_pos
    .local int rx288_off
    .local int rx288_eos
    .local int rx288_rep
    .local pmc rx288_cur
    (rx288_cur, rx288_pos, rx288_tgt) = self."!cursor_start"()
    rx288_cur."!cursor_debug"("START ", "charspec")
    .lex unicode:"$\x{a2}", rx288_cur
    .local pmc match
    .lex "$/", match
    length rx288_eos, rx288_tgt
    set rx288_off, 0
    lt rx288_pos, 2, rx288_start
    sub rx288_off, rx288_pos, 1
    substr rx288_tgt, rx288_tgt, rx288_off
  rx288_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan293_done
    goto rxscan293_scan
  rxscan293_loop:
    ($P10) = rx288_cur."from"()
    inc $P10
    set rx288_pos, $P10
    ge rx288_pos, rx288_eos, rxscan293_done
  rxscan293_scan:
    set_addr $I10, rxscan293_loop
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  rxscan293_done:
  alt294_0:
.annotate "line", 104
    set_addr $I10, alt294_1
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
.annotate "line", 105
  # rx literal  "["
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    substr $S10, rx288_tgt, $I11, 1
    ne $S10, "[", rx288_fail
    add rx288_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    $P10 = rx288_cur."charnames"()
    unless $P10, rx288_fail
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx288_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    substr $S10, rx288_tgt, $I11, 1
    ne $S10, "]", rx288_fail
    add rx288_pos, 1
    goto alt294_end
  alt294_1:
    set_addr $I10, alt294_2
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
.annotate "line", 106
  # rx charclass_q d r 1..-1
    sub $I10, rx288_pos, rx288_off
    find_not_cclass $I11, 8, rx288_tgt, $I10, rx288_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx288_fail
    add rx288_pos, rx288_off, $I11
  # rx rxquantr295 ** 0..*
    set_addr $I296, rxquantr295_done
    rx288_cur."!mark_push"(0, rx288_pos, $I296)
  rxquantr295_loop:
  # rx literal  "_"
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    substr $S10, rx288_tgt, $I11, 1
    ne $S10, "_", rx288_fail
    add rx288_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx288_pos, rx288_off
    find_not_cclass $I11, 8, rx288_tgt, $I10, rx288_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx288_fail
    add rx288_pos, rx288_off, $I11
    (rx288_rep) = rx288_cur."!mark_commit"($I296)
    rx288_cur."!mark_push"(rx288_rep, rx288_pos, $I296)
    goto rxquantr295_loop
  rxquantr295_done:
    goto alt294_end
  alt294_2:
    set_addr $I10, alt294_3
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
.annotate "line", 107
  # rx enumcharlist negate=0 
    ge rx288_pos, rx288_eos, rx288_fail
    sub $I10, rx288_pos, rx288_off
    substr $S10, rx288_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx288_fail
    inc rx288_pos
    goto alt294_end
  alt294_3:
.annotate "line", 108
  # rx subrule "panic" subtype=method negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    $P10 = rx288_cur."panic"("Unrecognized \\c character")
    unless $P10, rx288_fail
    rx288_pos = $P10."pos"()
  alt294_end:
.annotate "line", 103
  # rx pass
    rx288_cur."!cursor_pass"(rx288_pos, "charspec")
    rx288_cur."!cursor_debug"("PASS  ", "charspec", " at pos=", rx288_pos)
    .return (rx288_cur)
  rx288_fail:
.annotate "line", 33
    (rx288_rep, rx288_pos, $I10, $P10) = rx288_cur."!mark_fail"(0)
    lt rx288_pos, -1, rx288_done
    eq rx288_pos, -1, rx288_fail
    jump $I10
  rx288_done:
    rx288_cur."!cursor_fail"()
    rx288_cur."!cursor_debug"("FAIL  ", "charspec")
    .return (rx288_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("93_1261201500.07268") :method
.annotate "line", 33
    $P290 = self."!PREFIX__!subrule"("", "")
    $P291 = self."!PREFIX__!subrule"("charnames", "[")
    new $P292, "ResizablePMCArray"
    push $P292, $P290
    push $P292, "Z"
    push $P292, "Y"
    push $P292, "X"
    push $P292, "W"
    push $P292, "V"
    push $P292, "U"
    push $P292, "T"
    push $P292, "S"
    push $P292, "R"
    push $P292, "Q"
    push $P292, "P"
    push $P292, "O"
    push $P292, "N"
    push $P292, "M"
    push $P292, "L"
    push $P292, "K"
    push $P292, "J"
    push $P292, "I"
    push $P292, "H"
    push $P292, "G"
    push $P292, "F"
    push $P292, "E"
    push $P292, "D"
    push $P292, "C"
    push $P292, "B"
    push $P292, "A"
    push $P292, "@"
    push $P292, "?"
    push $P292, ""
    push $P292, $P291
    .return ($P292)
.end

### .include 'gen/hllgrammar-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1261201502.25159")
.annotate "line", 0
    get_hll_global $P14, ["HLL";"Actions"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["HLL";"Actions"], "_block13" 
    capture_lex $P14
    $P475 = $P14()
.annotate "line", 1
    .return ($P475)
.end


.namespace []
.sub "" :load :init :subid("post41") :outer("10_1261201502.25159")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1261201502.25159" 
    .local pmc block
    set block, $P12
    $P476 = get_root_global ["parrot"], "P6metaclass"
    $P476."new_class"("HLL::Actions")
.end


.namespace ["HLL";"Actions"]
.sub "_block13"  :subid("11_1261201502.25159") :outer("10_1261201502.25159")
.annotate "line", 3
    .const 'Sub' $P457 = "40_1261201502.25159" 
    capture_lex $P457
    .const 'Sub' $P439 = "39_1261201502.25159" 
    capture_lex $P439
    .const 'Sub' $P431 = "38_1261201502.25159" 
    capture_lex $P431
    .const 'Sub' $P423 = "37_1261201502.25159" 
    capture_lex $P423
    .const 'Sub' $P415 = "36_1261201502.25159" 
    capture_lex $P415
    .const 'Sub' $P407 = "35_1261201502.25159" 
    capture_lex $P407
    .const 'Sub' $P396 = "34_1261201502.25159" 
    capture_lex $P396
    .const 'Sub' $P388 = "33_1261201502.25159" 
    capture_lex $P388
    .const 'Sub' $P371 = "32_1261201502.25159" 
    capture_lex $P371
    .const 'Sub' $P295 = "30_1261201502.25159" 
    capture_lex $P295
    .const 'Sub' $P235 = "27_1261201502.25159" 
    capture_lex $P235
    .const 'Sub' $P225 = "26_1261201502.25159" 
    capture_lex $P225
    .const 'Sub' $P215 = "25_1261201502.25159" 
    capture_lex $P215
    .const 'Sub' $P205 = "24_1261201502.25159" 
    capture_lex $P205
    .const 'Sub' $P195 = "23_1261201502.25159" 
    capture_lex $P195
    .const 'Sub' $P185 = "22_1261201502.25159" 
    capture_lex $P185
    .const 'Sub' $P174 = "21_1261201502.25159" 
    capture_lex $P174
    .const 'Sub' $P163 = "20_1261201502.25159" 
    capture_lex $P163
    .const 'Sub' $P154 = "19_1261201502.25159" 
    capture_lex $P154
    .const 'Sub' $P143 = "18_1261201502.25159" 
    capture_lex $P143
    .const 'Sub' $P132 = "17_1261201502.25159" 
    capture_lex $P132
    .const 'Sub' $P30 = "14_1261201502.25159" 
    capture_lex $P30
    .const 'Sub' $P23 = "13_1261201502.25159" 
    capture_lex $P23
    .const 'Sub' $P15 = "12_1261201502.25159" 
    capture_lex $P15
.annotate "line", 163
    .const 'Sub' $P457 = "40_1261201502.25159" 
    capture_lex $P457
.annotate "line", 3
    .return ($P457)
.end


.namespace ["HLL";"Actions"]
.sub "string_to_int"  :subid("12_1261201502.25159") :outer("11_1261201502.25159")
    .param pmc param_19
    .param pmc param_20
.annotate "line", 3
    get_root_global $P17, ["parrot";"PCT"], "reuse18_1261201502.25376"
    unless_null $P17, reuse18
    new $P17, ["ExceptionHandler"]
    $P17."handle_types"(58)
  reuse18:
    set_addr $P17, control_16
    push_eh $P17
    .lex "$src", param_19
    .lex "$base", param_20
.annotate "line", 4

        .local pmc src
        .local string src_s
        src = find_lex '$src'
        src_s = src
        .local int base, pos, eos, result
        $P0 = find_lex '$base'
        base = $P0
        pos = 0
        eos = length src_s
        result = 0
      str_loop:
        unless pos < eos goto str_done
        .local string char
        char = substr src_s, pos, 1
        if char == '_' goto str_next
        .local int digitval
        digitval = index "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", char
        if digitval < 0 goto err_base
        digitval >>= 1
        if digitval >= base goto err_base
        result *= base
        result += digitval
      str_next:
        inc pos
        goto str_loop
      err_base:
	src.'panic'('Invalid radix conversion of "', char, '"')
      str_done:
        $P21 = box result
    
.annotate "line", 3
    .return ($P21)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P22, exception, "payload"
    .return ($P22)
.end


.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("13_1261201502.25159") :outer("11_1261201502.25159")
    .param pmc param_27
.annotate "line", 37
    get_root_global $P25, ["parrot";"PCT"], "reuse26_1261201502.25612"
    unless_null $P25, reuse26
    new $P25, ["ExceptionHandler"]
    $P25."handle_types"(58)
  reuse26:
    set_addr $P25, control_24
    push_eh $P25
    .lex "$ints", param_27
.annotate "line", 38

        .local string result
        result = ''
        .local pmc ints, ints_it
        ints = find_lex '$ints'
        $I0 = does ints, 'array'
        unless $I0 goto ints_1
        ints_it = iter ints
      ints_loop:
        unless ints_it goto ints_done
        $P0 = shift ints_it
        $I0 = $P0.'ast'()
        $S0 = chr $I0
        concat result, $S0
        goto ints_loop
      ints_1:
        $I0 = ints.'ast'()
        result = chr $I0
      ints_done:
        $P28 = box result
    
.annotate "line", 37
    .return ($P28)
  control_24:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P29, exception, "payload"
    .return ($P29)
.end


.namespace ["HLL";"Actions"]
.sub "EXPR"  :subid("14_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_34
    .param pmc param_35 :optional
    .param int has_param_35 :opt_flag
.annotate "line", 62
    .const 'Sub' $P114 = "16_1261201502.25159" 
    capture_lex $P114
    .const 'Sub' $P81 = "15_1261201502.25159" 
    capture_lex $P81
    get_root_global $P32, ["parrot";"PCT"], "reuse33_1261201502.25813"
    unless_null $P32, reuse33
    new $P32, ["ExceptionHandler"]
    $P32."handle_types"(58)
  reuse33:
    set_addr $P32, control_31
    push_eh $P32
    .lex "self", self
    .lex "$/", param_34
    if has_param_35, optparam_42
    new $P36, "Undef"
    set param_35, $P36
  optparam_42:
    .lex "$key", param_35
.annotate "line", 64
    new $P37, "Undef"
    .lex "$past", $P37
.annotate "line", 63
    find_lex $P39, "$key"
    if $P39, unless_38_end
    new $P40, "Exception"
    set $P40['type'], 58
    new $P41, "Integer"
    assign $P41, 0
    setattribute $P40, 'payload', $P41
    throw $P40
  unless_38_end:
.annotate "line", 64
    find_lex $P43, "$/"
    $P44 = $P43."ast"()
    set $P42, $P44
    defined $I46, $P42
    if $I46, default_45
    find_lex $P47, "$/"
    unless_null $P47, vivify_43
    new $P47, "Hash"
  vivify_43:
    set $P48, $P47["OPER"]
    unless_null $P48, vivify_44
    new $P48, "Undef"
  vivify_44:
    $P49 = $P48."ast"()
    set $P42, $P49
  default_45:
    store_lex "$past", $P42
.annotate "line", 65
    find_lex $P51, "$past"
    if $P51, unless_50_end
.annotate "line", 66
    get_hll_global $P52, ["PAST"], "Op"
    find_lex $P53, "$/"
    $P54 = $P52."new"($P53 :named("node"))
    store_lex "$past", $P54
.annotate "line", 67
    find_lex $P56, "$/"
    unless_null $P56, vivify_45
    new $P56, "Hash"
  vivify_45:
    set $P57, $P56["OPER"]
    unless_null $P57, vivify_46
    new $P57, "Hash"
  vivify_46:
    set $P58, $P57["O"]
    unless_null $P58, vivify_47
    new $P58, "Hash"
  vivify_47:
    set $P59, $P58["pasttype"]
    unless_null $P59, vivify_48
    new $P59, "Undef"
  vivify_48:
    if $P59, if_55
.annotate "line", 68
    find_lex $P67, "$/"
    unless_null $P67, vivify_49
    new $P67, "Hash"
  vivify_49:
    set $P68, $P67["OPER"]
    unless_null $P68, vivify_50
    new $P68, "Hash"
  vivify_50:
    set $P69, $P68["O"]
    unless_null $P69, vivify_51
    new $P69, "Hash"
  vivify_51:
    set $P70, $P69["pirop"]
    unless_null $P70, vivify_52
    new $P70, "Undef"
  vivify_52:
    unless $P70, if_66_end
    find_lex $P71, "$past"
    find_lex $P72, "$/"
    unless_null $P72, vivify_53
    new $P72, "Hash"
  vivify_53:
    set $P73, $P72["OPER"]
    unless_null $P73, vivify_54
    new $P73, "Hash"
  vivify_54:
    set $P74, $P73["O"]
    unless_null $P74, vivify_55
    new $P74, "Hash"
  vivify_55:
    set $P75, $P74["pirop"]
    unless_null $P75, vivify_56
    new $P75, "Undef"
  vivify_56:
    set $S76, $P75
    $P71."pirop"($S76)
  if_66_end:
    goto if_55_end
  if_55:
.annotate "line", 67
    find_lex $P60, "$past"
    find_lex $P61, "$/"
    unless_null $P61, vivify_57
    new $P61, "Hash"
  vivify_57:
    set $P62, $P61["OPER"]
    unless_null $P62, vivify_58
    new $P62, "Hash"
  vivify_58:
    set $P63, $P62["O"]
    unless_null $P63, vivify_59
    new $P63, "Hash"
  vivify_59:
    set $P64, $P63["pasttype"]
    unless_null $P64, vivify_60
    new $P64, "Undef"
  vivify_60:
    set $S65, $P64
    $P60."pasttype"($S65)
  if_55_end:
.annotate "line", 69
    find_lex $P78, "$past"
    $P79 = $P78."name"()
    if $P79, unless_77_end
    .const 'Sub' $P81 = "15_1261201502.25159" 
    capture_lex $P81
    $P81()
  unless_77_end:
  unless_50_end:
.annotate "line", 80
    find_lex $P101, "$key"
    set $S102, $P101
    iseq $I103, $S102, "POSTFIX"
    if $I103, if_100
.annotate "line", 82
    find_lex $P109, "$/"
    $P110 = $P109."list"()
    defined $I111, $P110
    unless $I111, for_undef_64
    iter $P108, $P110
    new $P126, 'ExceptionHandler'
    set_addr $P126, loop125_handler
    $P126."handle_types"(65, 67, 66)
    push_eh $P126
  loop125_test:
    unless $P108, loop125_done
    shift $P112, $P108
  loop125_redo:
    .const 'Sub' $P114 = "16_1261201502.25159" 
    capture_lex $P114
    $P114($P112)
  loop125_next:
    goto loop125_test
  loop125_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P127, exception, 'type'
    eq $P127, 65, loop125_next
    eq $P127, 67, loop125_redo
  loop125_done:
    pop_eh 
  for_undef_64:
.annotate "line", 81
    goto if_100_end
  if_100:
.annotate "line", 80
    find_lex $P104, "$past"
    find_lex $P105, "$/"
    unless_null $P105, vivify_65
    new $P105, "ResizablePMCArray"
  vivify_65:
    set $P106, $P105[0]
    unless_null $P106, vivify_66
    new $P106, "Undef"
  vivify_66:
    $P107 = $P106."ast"()
    $P104."unshift"($P107)
  if_100_end:
.annotate "line", 84
    find_lex $P128, "$/"
    find_lex $P129, "$past"
    $P130 = $P128."!make"($P129)
.annotate "line", 62
    .return ($P130)
  control_31:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P131, exception, "payload"
    .return ($P131)
.end


.namespace ["HLL";"Actions"]
.sub "_block80"  :anon :subid("15_1261201502.25159") :outer("14_1261201502.25159")
.annotate "line", 71
    new $P82, "Undef"
    .lex "$name", $P82
.annotate "line", 70
    find_lex $P84, "$key"
    set $S85, $P84
    iseq $I86, $S85, "LIST"
    unless $I86, if_83_end
    new $P87, "String"
    assign $P87, "infix"
    store_lex "$key", $P87
  if_83_end:
.annotate "line", 71

                $P0 = find_lex '$key'
                $S0 = $P0
                $S0 = downcase $S0
                $P88 = box $S0
            
    concat $P89, $P88, ":<"
.annotate "line", 76
    find_lex $P90, "$/"
    unless_null $P90, vivify_61
    new $P90, "Hash"
  vivify_61:
    set $P91, $P90["OPER"]
    unless_null $P91, vivify_62
    new $P91, "Hash"
  vivify_62:
    set $P92, $P91["sym"]
    unless_null $P92, vivify_63
    new $P92, "Undef"
  vivify_63:
    concat $P93, $P89, $P92
    concat $P94, $P93, ">"
    store_lex "$name", $P94
.annotate "line", 77
    find_lex $P95, "$past"
    new $P96, "String"
    assign $P96, "&"
    find_lex $P97, "$name"
    concat $P98, $P96, $P97
    $P99 = $P95."name"($P98)
.annotate "line", 69
    .return ($P99)
.end


.namespace ["HLL";"Actions"]
.sub "_block113"  :anon :subid("16_1261201502.25159") :outer("14_1261201502.25159")
    .param pmc param_115
.annotate "line", 82
    .lex "$_", param_115
    find_lex $P118, "$_"
    $P119 = $P118."ast"()
    defined $I120, $P119
    if $I120, if_117
    new $P116, 'Integer'
    set $P116, $I120
    goto if_117_end
  if_117:
    find_lex $P121, "$past"
    find_lex $P122, "$_"
    $P123 = $P122."ast"()
    $P124 = $P121."push"($P123)
    set $P116, $P124
  if_117_end:
    .return ($P116)
.end


.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("17_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_136
.annotate "line", 87
    get_root_global $P134, ["parrot";"PCT"], "reuse135_1261201502.32657"
    unless_null $P134, reuse135
    new $P134, ["ExceptionHandler"]
    $P134."handle_types"(58)
  reuse135:
    set_addr $P134, control_133
    push_eh $P134
    .lex "self", self
    .lex "$/", param_136
    find_lex $P137, "$/"
    find_lex $P138, "$/"
    unless_null $P138, vivify_67
    new $P138, "Hash"
  vivify_67:
    set $P139, $P138["circumfix"]
    unless_null $P139, vivify_68
    new $P139, "Undef"
  vivify_68:
    $P140 = $P139."ast"()
    $P141 = $P137."!make"($P140)
    .return ($P141)
  control_133:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P142, exception, "payload"
    .return ($P142)
.end


.namespace ["HLL";"Actions"]
.sub "termish"  :subid("18_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_147
.annotate "line", 89
    get_root_global $P145, ["parrot";"PCT"], "reuse146_1261201502.33026"
    unless_null $P145, reuse146
    new $P145, ["ExceptionHandler"]
    $P145."handle_types"(58)
  reuse146:
    set_addr $P145, control_144
    push_eh $P145
    .lex "self", self
    .lex "$/", param_147
    find_lex $P148, "$/"
    find_lex $P149, "$/"
    unless_null $P149, vivify_69
    new $P149, "Hash"
  vivify_69:
    set $P150, $P149["term"]
    unless_null $P150, vivify_70
    new $P150, "Undef"
  vivify_70:
    $P151 = $P150."ast"()
    $P152 = $P148."!make"($P151)
    .return ($P152)
  control_144:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P153, exception, "payload"
    .return ($P153)
.end


.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("19_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_158
.annotate "line", 90
    get_root_global $P156, ["parrot";"PCT"], "reuse157_1261201502.334"
    unless_null $P156, reuse157
    new $P156, ["ExceptionHandler"]
    $P156."handle_types"(58)
  reuse157:
    set_addr $P156, control_155
    push_eh $P156
    .lex "self", self
    .lex "$/", param_158
    find_lex $P159, "$/"
 $P160 = new ['Undef'] 
    $P161 = $P159."!make"($P160)
    .return ($P161)
  control_155:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P162, exception, "payload"
    .return ($P162)
.end


.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("20_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_167
.annotate "line", 91
    get_root_global $P165, ["parrot";"PCT"], "reuse166_1261201502.33679"
    unless_null $P165, reuse166
    new $P165, ["ExceptionHandler"]
    $P165."handle_types"(58)
  reuse166:
    set_addr $P165, control_164
    push_eh $P165
    .lex "self", self
    .lex "$/", param_167
    find_lex $P168, "$/"
    find_lex $P169, "$/"
    unless_null $P169, vivify_71
    new $P169, "Hash"
  vivify_71:
    set $P170, $P169["term"]
    unless_null $P170, vivify_72
    new $P170, "Undef"
  vivify_72:
    $P171 = $P170."ast"()
    $P172 = $P168."!make"($P171)
    .return ($P172)
  control_164:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P173, exception, "payload"
    .return ($P173)
.end


.namespace ["HLL";"Actions"]
.sub "integer"  :subid("21_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_178
.annotate "line", 93
    get_root_global $P176, ["parrot";"PCT"], "reuse177_1261201502.34044"
    unless_null $P176, reuse177
    new $P176, ["ExceptionHandler"]
    $P176."handle_types"(58)
  reuse177:
    set_addr $P176, control_175
    push_eh $P176
    .lex "self", self
    .lex "$/", param_178
    find_lex $P179, "$/"
    find_lex $P180, "$/"
    unless_null $P180, vivify_73
    new $P180, "Hash"
  vivify_73:
    set $P181, $P180["VALUE"]
    unless_null $P181, vivify_74
    new $P181, "Undef"
  vivify_74:
    $P182 = $P181."ast"()
    $P183 = $P179."!make"($P182)
    .return ($P183)
  control_175:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P184, exception, "payload"
    .return ($P184)
.end


.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("22_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_189
.annotate "line", 95
    get_root_global $P187, ["parrot";"PCT"], "reuse188_1261201502.3441"
    unless_null $P187, reuse188
    new $P187, ["ExceptionHandler"]
    $P187."handle_types"(58)
  reuse188:
    set_addr $P187, control_186
    push_eh $P187
    .lex "self", self
    .lex "$/", param_189
    find_lex $P190, "$/"
    find_lex $P191, "$/"
    set $N192, $P191
    $P193 = $P190."!make"($N192)
    .return ($P193)
  control_186:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P194, exception, "payload"
    .return ($P194)
.end


.namespace ["HLL";"Actions"]
.sub "decint"  :subid("23_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_199
.annotate "line", 97
    get_root_global $P197, ["parrot";"PCT"], "reuse198_1261201502.34714"
    unless_null $P197, reuse198
    new $P197, ["ExceptionHandler"]
    $P197."handle_types"(58)
  reuse198:
    set_addr $P197, control_196
    push_eh $P197
    .lex "self", self
    .lex "$/", param_199
    find_lex $P200, "$/"
    find_lex $P201, "$/"
    $P202 = "string_to_int"($P201, 10)
    $P203 = $P200."!make"($P202)
    .return ($P203)
  control_196:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P204, exception, "payload"
    .return ($P204)
.end


.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("24_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_209
.annotate "line", 98
    get_root_global $P207, ["parrot";"PCT"], "reuse208_1261201502.35157"
    unless_null $P207, reuse208
    new $P207, ["ExceptionHandler"]
    $P207."handle_types"(58)
  reuse208:
    set_addr $P207, control_206
    push_eh $P207
    .lex "self", self
    .lex "$/", param_209
    find_lex $P210, "$/"
    find_lex $P211, "$/"
    $P212 = "string_to_int"($P211, 16)
    $P213 = $P210."!make"($P212)
    .return ($P213)
  control_206:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P214, exception, "payload"
    .return ($P214)
.end


.namespace ["HLL";"Actions"]
.sub "octint"  :subid("25_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_219
.annotate "line", 99
    get_root_global $P217, ["parrot";"PCT"], "reuse218_1261201502.35491"
    unless_null $P217, reuse218
    new $P217, ["ExceptionHandler"]
    $P217."handle_types"(58)
  reuse218:
    set_addr $P217, control_216
    push_eh $P217
    .lex "self", self
    .lex "$/", param_219
    find_lex $P220, "$/"
    find_lex $P221, "$/"
    $P222 = "string_to_int"($P221, 8)
    $P223 = $P220."!make"($P222)
    .return ($P223)
  control_216:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P224, exception, "payload"
    .return ($P224)
.end


.namespace ["HLL";"Actions"]
.sub "binint"  :subid("26_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_229
.annotate "line", 100
    get_root_global $P227, ["parrot";"PCT"], "reuse228_1261201502.35814"
    unless_null $P227, reuse228
    new $P227, ["ExceptionHandler"]
    $P227."handle_types"(58)
  reuse228:
    set_addr $P227, control_226
    push_eh $P227
    .lex "self", self
    .lex "$/", param_229
    find_lex $P230, "$/"
    find_lex $P231, "$/"
    $P232 = "string_to_int"($P231, 2)
    $P233 = $P230."!make"($P232)
    .return ($P233)
  control_226:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P234, exception, "payload"
    .return ($P234)
.end


.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("27_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_239
.annotate "line", 102
    .const 'Sub' $P255 = "28_1261201502.25159" 
    capture_lex $P255
    get_root_global $P237, ["parrot";"PCT"], "reuse238_1261201502.36133"
    unless_null $P237, reuse238
    new $P237, ["ExceptionHandler"]
    $P237."handle_types"(58)
  reuse238:
    set_addr $P237, control_236
    push_eh $P237
    .lex "self", self
    .lex "$/", param_239
.annotate "line", 103
    new $P240, "Undef"
    .lex "$past", $P240
    find_lex $P241, "$/"
    unless_null $P241, vivify_75
    new $P241, "Hash"
  vivify_75:
    set $P242, $P241["quote_delimited"]
    unless_null $P242, vivify_76
    new $P242, "Undef"
  vivify_76:
    $P243 = $P242."ast"()
    store_lex "$past", $P243
.annotate "line", 104
    get_hll_global $P245, ["HLL";"Grammar"], "quotemod_check"
    find_lex $P246, "$/"
    $P247 = $P245($P246, "w")
    unless $P247, if_244_end
.annotate "line", 105
    get_hll_global $P249, ["PAST"], "Node"
    find_lex $P250, "$past"
    $P251 = $P249."ACCEPTS"($P250)
    if $P251, if_248
.annotate "line", 108
    .const 'Sub' $P255 = "28_1261201502.25159" 
    capture_lex $P255
    $P255()
    goto if_248_end
  if_248:
.annotate "line", 106
    find_lex $P252, "$/"
    $P253 = $P252."CURSOR"()
    $P253."panic"("Can't form :w list from non-constant strings (yet)")
  if_248_end:
  if_244_end:
.annotate "line", 116
    get_hll_global $P283, ["PAST"], "Node"
    find_lex $P284, "$past"
    $P285 = $P283."ACCEPTS"($P284)
    isfalse $I286, $P285
    unless $I286, if_282_end
.annotate "line", 117
    get_hll_global $P287, ["PAST"], "Val"
    find_lex $P288, "$past"
    set $S289, $P288
    $P290 = $P287."new"($S289 :named("value"))
    store_lex "$past", $P290
  if_282_end:
.annotate "line", 119
    find_lex $P291, "$/"
    find_lex $P292, "$past"
    $P293 = $P291."!make"($P292)
.annotate "line", 102
    .return ($P293)
  control_236:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P294, exception, "payload"
    .return ($P294)
.end


.namespace ["HLL";"Actions"]
.sub "_block254"  :anon :subid("28_1261201502.25159") :outer("27_1261201502.25159")
.annotate "line", 108
    .const 'Sub' $P274 = "29_1261201502.25159" 
    capture_lex $P274
.annotate "line", 109
    new $P256, "ResizablePMCArray"
    .lex "@words", $P256
    get_hll_global $P257, ["HLL";"Grammar"], "split_words"
    find_lex $P258, "$/"
    find_lex $P259, "$past"
    $P260 = $P257($P258, $P259)
    store_lex "@words", $P260
.annotate "line", 110
    find_lex $P263, "@words"
    set $N264, $P263
    isgt $I265, $N264, 1.0
    if $I265, if_262
    new $P261, 'Integer'
    set $P261, $I265
    goto if_262_end
  if_262:
.annotate "line", 111
    get_hll_global $P266, ["PAST"], "Op"
    find_lex $P267, "$/"
    $P268 = $P266."new"("list" :named("pasttype"), $P267 :named("node"))
    store_lex "$past", $P268
.annotate "line", 112
    find_lex $P270, "@words"
    defined $I271, $P270
    unless $I271, for_undef_77
    iter $P269, $P270
    new $P280, 'ExceptionHandler'
    set_addr $P280, loop279_handler
    $P280."handle_types"(65, 67, 66)
    push_eh $P280
  loop279_test:
    unless $P269, loop279_done
    shift $P272, $P269
  loop279_redo:
    .const 'Sub' $P274 = "29_1261201502.25159" 
    capture_lex $P274
    $P274($P272)
  loop279_next:
    goto loop279_test
  loop279_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P281, exception, 'type'
    eq $P281, 65, loop279_next
    eq $P281, 67, loop279_redo
  loop279_done:
    pop_eh 
  for_undef_77:
.annotate "line", 110
    set $P261, $P269
  if_262_end:
.annotate "line", 108
    .return ($P261)
.end


.namespace ["HLL";"Actions"]
.sub "_block273"  :anon :subid("29_1261201502.25159") :outer("28_1261201502.25159")
    .param pmc param_275
.annotate "line", 112
    .lex "$_", param_275
    find_lex $P276, "$past"
    find_lex $P277, "$_"
    $P278 = $P276."push"($P277)
    .return ($P278)
.end


.namespace ["HLL";"Actions"]
.sub "quote_delimited"  :subid("30_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_299
.annotate "line", 122
    .const 'Sub' $P311 = "31_1261201502.25159" 
    capture_lex $P311
    get_root_global $P297, ["parrot";"PCT"], "reuse298_1261201502.38259"
    unless_null $P297, reuse298
    new $P297, ["ExceptionHandler"]
    $P297."handle_types"(58)
  reuse298:
    set_addr $P297, control_296
    push_eh $P297
    .lex "self", self
    .lex "$/", param_299
.annotate "line", 123
    new $P300, "ResizablePMCArray"
    .lex "@parts", $P300
.annotate "line", 124
    new $P301, "Undef"
    .lex "$lastlit", $P301
.annotate "line", 140
    new $P302, "Undef"
    .lex "$past", $P302
.annotate "line", 122
    find_lex $P303, "@parts"
.annotate "line", 124
    new $P304, "String"
    assign $P304, ""
    store_lex "$lastlit", $P304
.annotate "line", 125
    find_lex $P306, "$/"
    unless_null $P306, vivify_78
    new $P306, "Hash"
  vivify_78:
    set $P307, $P306["quote_atom"]
    unless_null $P307, vivify_79
    new $P307, "Undef"
  vivify_79:
    defined $I308, $P307
    unless $I308, for_undef_80
    iter $P305, $P307
    new $P344, 'ExceptionHandler'
    set_addr $P344, loop343_handler
    $P344."handle_types"(65, 67, 66)
    push_eh $P344
  loop343_test:
    unless $P305, loop343_done
    shift $P309, $P305
  loop343_redo:
    .const 'Sub' $P311 = "31_1261201502.25159" 
    capture_lex $P311
    $P311($P309)
  loop343_next:
    goto loop343_test
  loop343_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P345, exception, 'type'
    eq $P345, 65, loop343_next
    eq $P345, 67, loop343_redo
  loop343_done:
    pop_eh 
  for_undef_80:
.annotate "line", 139
    find_lex $P347, "$lastlit"
    set $S348, $P347
    isgt $I349, $S348, ""
    unless $I349, if_346_end
    find_lex $P350, "@parts"
    find_lex $P351, "$lastlit"
    $P350."push"($P351)
  if_346_end:
.annotate "line", 140
    find_lex $P354, "@parts"
    if $P354, if_353
    new $P357, "String"
    assign $P357, ""
    set $P352, $P357
    goto if_353_end
  if_353:
    find_lex $P355, "@parts"
    $P356 = $P355."shift"()
    set $P352, $P356
  if_353_end:
    store_lex "$past", $P352
.annotate "line", 141
    new $P365, 'ExceptionHandler'
    set_addr $P365, loop364_handler
    $P365."handle_types"(65, 67, 66)
    push_eh $P365
  loop364_test:
    find_lex $P358, "@parts"
    unless $P358, loop364_done
  loop364_redo:
.annotate "line", 142
    get_hll_global $P359, ["PAST"], "Op"
    find_lex $P360, "$past"
    find_lex $P361, "@parts"
    $P362 = $P361."shift"()
    $P363 = $P359."new"($P360, $P362, "concat" :named("pirop"))
    store_lex "$past", $P363
  loop364_next:
.annotate "line", 141
    goto loop364_test
  loop364_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P366, exception, 'type'
    eq $P366, 65, loop364_next
    eq $P366, 67, loop364_redo
  loop364_done:
    pop_eh 
.annotate "line", 144
    find_lex $P367, "$/"
    find_lex $P368, "$past"
    $P369 = $P367."!make"($P368)
.annotate "line", 122
    .return ($P369)
  control_296:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P370, exception, "payload"
    .return ($P370)
.end


.namespace ["HLL";"Actions"]
.sub "_block310"  :anon :subid("31_1261201502.25159") :outer("30_1261201502.25159")
    .param pmc param_313
.annotate "line", 126
    new $P312, "Undef"
    .lex "$ast", $P312
    .lex "$_", param_313
    find_lex $P314, "$_"
    $P315 = $P314."ast"()
    store_lex "$ast", $P315
.annotate "line", 127
    get_hll_global $P318, ["PAST"], "Node"
    find_lex $P319, "$ast"
    $P320 = $P318."ACCEPTS"($P319)
    isfalse $I321, $P320
    if $I321, if_317
.annotate "line", 130
    find_lex $P327, "$ast"
    get_hll_global $P328, ["PAST"], "Val"
    $P329 = $P327."isa"($P328)
    if $P329, if_326
.annotate "line", 134
    find_lex $P335, "$lastlit"
    set $S336, $P335
    isgt $I337, $S336, ""
    unless $I337, if_334_end
    find_lex $P338, "@parts"
    find_lex $P339, "$lastlit"
    $P338."push"($P339)
  if_334_end:
.annotate "line", 135
    find_lex $P340, "@parts"
    find_lex $P341, "$ast"
    $P340."push"($P341)
.annotate "line", 136
    new $P342, "String"
    assign $P342, ""
    store_lex "$lastlit", $P342
.annotate "line", 133
    set $P325, $P342
.annotate "line", 130
    goto if_326_end
  if_326:
.annotate "line", 131
    find_lex $P330, "$lastlit"
    find_lex $P331, "$ast"
    $S332 = $P331."value"()
    concat $P333, $P330, $S332
    store_lex "$lastlit", $P333
.annotate "line", 130
    set $P325, $P333
  if_326_end:
    set $P316, $P325
.annotate "line", 127
    goto if_317_end
  if_317:
.annotate "line", 128
    find_lex $P322, "$lastlit"
    find_lex $P323, "$ast"
    concat $P324, $P322, $P323
    store_lex "$lastlit", $P324
.annotate "line", 127
    set $P316, $P324
  if_317_end:
.annotate "line", 125
    .return ($P316)
.end


.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("32_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_375
.annotate "line", 147
    get_root_global $P373, ["parrot";"PCT"], "reuse374_1261201502.41046"
    unless_null $P373, reuse374
    new $P373, ["ExceptionHandler"]
    $P373."handle_types"(58)
  reuse374:
    set_addr $P373, control_372
    push_eh $P373
    .lex "self", self
    .lex "$/", param_375
.annotate "line", 148
    find_lex $P376, "$/"
    find_lex $P379, "$/"
    unless_null $P379, vivify_81
    new $P379, "Hash"
  vivify_81:
    set $P380, $P379["quote_escape"]
    unless_null $P380, vivify_82
    new $P380, "Undef"
  vivify_82:
    if $P380, if_378
    find_lex $P384, "$/"
    set $S385, $P384
    new $P377, 'String'
    set $P377, $S385
    goto if_378_end
  if_378:
    find_lex $P381, "$/"
    unless_null $P381, vivify_83
    new $P381, "Hash"
  vivify_83:
    set $P382, $P381["quote_escape"]
    unless_null $P382, vivify_84
    new $P382, "Undef"
  vivify_84:
    $P383 = $P382."ast"()
    set $P377, $P383
  if_378_end:
    $P386 = $P376."!make"($P377)
.annotate "line", 147
    .return ($P386)
  control_372:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P387, exception, "payload"
    .return ($P387)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("33_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_392
.annotate "line", 151
    get_root_global $P390, ["parrot";"PCT"], "reuse391_1261201502.41641"
    unless_null $P390, reuse391
    new $P390, ["ExceptionHandler"]
    $P390."handle_types"(58)
  reuse391:
    set_addr $P390, control_389
    push_eh $P390
    .lex "self", self
    .lex "$/", param_392
    find_lex $P393, "$/"
    $P394 = $P393."!make"("\\")
    .return ($P394)
  control_389:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P395, exception, "payload"
    .return ($P395)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("34_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_400
.annotate "line", 152
    get_root_global $P398, ["parrot";"PCT"], "reuse399_1261201502.41927"
    unless_null $P398, reuse399
    new $P398, ["ExceptionHandler"]
    $P398."handle_types"(58)
  reuse399:
    set_addr $P398, control_397
    push_eh $P398
    .lex "self", self
    .lex "$/", param_400
    find_lex $P401, "$/"
    find_lex $P402, "$/"
    unless_null $P402, vivify_85
    new $P402, "Hash"
  vivify_85:
    set $P403, $P402["stopper"]
    unless_null $P403, vivify_86
    new $P403, "Undef"
  vivify_86:
    set $S404, $P403
    $P405 = $P401."!make"($S404)
    .return ($P405)
  control_397:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P406, exception, "payload"
    .return ($P406)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("35_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_411
.annotate "line", 154
    get_root_global $P409, ["parrot";"PCT"], "reuse410_1261201502.42315"
    unless_null $P409, reuse410
    new $P409, ["ExceptionHandler"]
    $P409."handle_types"(58)
  reuse410:
    set_addr $P409, control_408
    push_eh $P409
    .lex "self", self
    .lex "$/", param_411
    find_lex $P412, "$/"
    $P413 = $P412."!make"("\b")
    .return ($P413)
  control_408:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P414, exception, "payload"
    .return ($P414)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("36_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_419
.annotate "line", 155
    get_root_global $P417, ["parrot";"PCT"], "reuse418_1261201502.42597"
    unless_null $P417, reuse418
    new $P417, ["ExceptionHandler"]
    $P417."handle_types"(58)
  reuse418:
    set_addr $P417, control_416
    push_eh $P417
    .lex "self", self
    .lex "$/", param_419
    find_lex $P420, "$/"
    $P421 = $P420."!make"("\n")
    .return ($P421)
  control_416:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P422, exception, "payload"
    .return ($P422)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("37_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_427
.annotate "line", 156
    get_root_global $P425, ["parrot";"PCT"], "reuse426_1261201502.46145"
    unless_null $P425, reuse426
    new $P425, ["ExceptionHandler"]
    $P425."handle_types"(58)
  reuse426:
    set_addr $P425, control_424
    push_eh $P425
    .lex "self", self
    .lex "$/", param_427
    find_lex $P428, "$/"
    $P429 = $P428."!make"("\r")
    .return ($P429)
  control_424:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P430, exception, "payload"
    .return ($P430)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("38_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_435
.annotate "line", 157
    get_root_global $P433, ["parrot";"PCT"], "reuse434_1261201502.46453"
    unless_null $P433, reuse434
    new $P433, ["ExceptionHandler"]
    $P433."handle_types"(58)
  reuse434:
    set_addr $P433, control_432
    push_eh $P433
    .lex "self", self
    .lex "$/", param_435
    find_lex $P436, "$/"
    $P437 = $P436."!make"("\t")
    .return ($P437)
  control_432:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P438, exception, "payload"
    .return ($P438)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("39_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_443
.annotate "line", 159
    get_root_global $P441, ["parrot";"PCT"], "reuse442_1261201502.46746"
    unless_null $P441, reuse442
    new $P441, ["ExceptionHandler"]
    $P441."handle_types"(58)
  reuse442:
    set_addr $P441, control_440
    push_eh $P441
    .lex "self", self
    .lex "$/", param_443
.annotate "line", 160
    find_lex $P444, "$/"
    find_lex $P447, "$/"
    unless_null $P447, vivify_87
    new $P447, "Hash"
  vivify_87:
    set $P448, $P447["hexint"]
    unless_null $P448, vivify_88
    new $P448, "Undef"
  vivify_88:
    if $P448, if_446
    find_lex $P451, "$/"
    unless_null $P451, vivify_89
    new $P451, "Hash"
  vivify_89:
    set $P452, $P451["hexints"]
    unless_null $P452, vivify_90
    new $P452, "Hash"
  vivify_90:
    set $P453, $P452["hexint"]
    unless_null $P453, vivify_91
    new $P453, "Undef"
  vivify_91:
    set $P445, $P453
    goto if_446_end
  if_446:
    find_lex $P449, "$/"
    unless_null $P449, vivify_92
    new $P449, "Hash"
  vivify_92:
    set $P450, $P449["hexint"]
    unless_null $P450, vivify_93
    new $P450, "Undef"
  vivify_93:
    set $P445, $P450
  if_446_end:
    $P454 = "ints_to_string"($P445)
    $P455 = $P444."!make"($P454)
.annotate "line", 159
    .return ($P455)
  control_440:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P456, exception, "payload"
    .return ($P456)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("40_1261201502.25159") :method :outer("11_1261201502.25159")
    .param pmc param_461
.annotate "line", 163
    get_root_global $P459, ["parrot";"PCT"], "reuse460_1261201502.47394"
    unless_null $P459, reuse460
    new $P459, ["ExceptionHandler"]
    $P459."handle_types"(58)
  reuse460:
    set_addr $P459, control_458
    push_eh $P459
    .lex "self", self
    .lex "$/", param_461
.annotate "line", 164
    find_lex $P462, "$/"
    find_lex $P465, "$/"
    unless_null $P465, vivify_94
    new $P465, "Hash"
  vivify_94:
    set $P466, $P465["octint"]
    unless_null $P466, vivify_95
    new $P466, "Undef"
  vivify_95:
    if $P466, if_464
    find_lex $P469, "$/"
    unless_null $P469, vivify_96
    new $P469, "Hash"
  vivify_96:
    set $P470, $P469["octints"]
    unless_null $P470, vivify_97
    new $P470, "Hash"
  vivify_97:
    set $P471, $P470["octint"]
    unless_null $P471, vivify_98
    new $P471, "Undef"
  vivify_98:
    set $P463, $P471
    goto if_464_end
  if_464:
    find_lex $P467, "$/"
    unless_null $P467, vivify_99
    new $P467, "Hash"
  vivify_99:
    set $P468, $P467["octint"]
    unless_null $P468, vivify_100
    new $P468, "Undef"
  vivify_100:
    set $P463, $P468
  if_464_end:
    $P472 = "ints_to_string"($P463)
    $P473 = $P462."!make"($P472)
.annotate "line", 163
    .return ($P473)
  control_458:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P474, exception, "payload"
    .return ($P474)
.end

### .include 'gen/hllcompiler.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1261201503.38108")
.annotate "line", 0
    get_hll_global $P14, ["HLL";"Compiler"], "_block13" 
    capture_lex $P14
.annotate "line", 6
    get_hll_global $P14, ["HLL";"Compiler"], "_block13" 
    capture_lex $P14
    $P289 = $P14()
.annotate "line", 1
    .return ($P289)
.end


.namespace []
.sub "" :load :init :subid("post25") :outer("10_1261201503.38108")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1261201503.38108" 
    .local pmc block
    set block, $P12
.annotate "line", 2
    load_bytecode "PCT/HLLCompiler.pbc"
.annotate "line", 1
    $P290 = get_root_global ["parrot"], "P6metaclass"
    new $P291, "ResizablePMCArray"
    push $P291, "$!language"
    $P290."new_class"("HLL::Compiler", "PCT::HLLCompiler" :named("parent"), $P291 :named("attr"))
.end


.namespace ["HLL";"Compiler"]
.sub "_block13"  :subid("11_1261201503.38108") :outer("10_1261201503.38108")
.annotate "line", 6
    .const 'Sub' $P192 = "20_1261201503.38108" 
    capture_lex $P192
    .const 'Sub' $P156 = "18_1261201503.38108" 
    capture_lex $P156
    .const 'Sub' $P140 = "17_1261201503.38108" 
    capture_lex $P140
    .const 'Sub' $P123 = "16_1261201503.38108" 
    capture_lex $P123
    .const 'Sub' $P33 = "13_1261201503.38108" 
    capture_lex $P33
    .const 'Sub' $P15 = "12_1261201503.38108" 
    capture_lex $P15
.annotate "line", 14
    .const 'Sub' $P15 = "12_1261201503.38108" 
    capture_lex $P15
    .lex "value_type", $P15
.annotate "line", 10
    find_lex $P32, "value_type"
.annotate "line", 69
    .const 'Sub' $P192 = "20_1261201503.38108" 
    capture_lex $P192
.annotate "line", 6
    .return ($P192)
.end


.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post26") :outer("11_1261201503.38108")
.annotate "line", 6
    get_hll_global $P14, ["HLL";"Compiler"], "_block13" 
    .local pmc block
    set block, $P14
.annotate "line", 11
    get_hll_global $P288, ["HLL"], "Compiler"
    $P288."language"("parrot")
.end


.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("12_1261201503.38108") :outer("11_1261201503.38108")
    .param pmc param_19
.annotate "line", 14
    get_root_global $P17, ["parrot";"PCT"], "reuse18_1261201503.38339"
    unless_null $P17, reuse18
    new $P17, ["ExceptionHandler"]
    $P17."handle_types"(58)
  reuse18:
    set_addr $P17, control_16
    push_eh $P17
    .lex "$value", param_19
.annotate "line", 15
    find_lex $P22, "$value"
    isa $I23, $P22, "NameSpace"
    if $I23, if_21
.annotate "line", 17
    find_lex $P27, "$value"
    isa $I28, $P27, "Sub"
    if $I28, if_26
    new $P30, "String"
    assign $P30, "var"
    set $P25, $P30
    goto if_26_end
  if_26:
    new $P29, "String"
    assign $P29, "sub"
    set $P25, $P29
  if_26_end:
    set $P20, $P25
.annotate "line", 15
    goto if_21_end
  if_21:
    new $P24, "String"
    assign $P24, "namespace"
    set $P20, $P24
  if_21_end:
.annotate "line", 14
    .return ($P20)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P31, exception, "payload"
    .return ($P31)
.end


.namespace ["HLL";"Compiler"]
.sub "get_exports"  :subid("13_1261201503.38108") :method :outer("11_1261201503.38108")
    .param pmc param_37
    .param pmc param_40 :slurpy
    .param pmc param_38 :optional :named("tagset")
    .param int has_param_38 :opt_flag
.annotate "line", 20
    .const 'Sub' $P106 = "15_1261201503.38108" 
    capture_lex $P106
    .const 'Sub' $P85 = "14_1261201503.38108" 
    capture_lex $P85
    get_root_global $P35, ["parrot";"PCT"], "reuse36_1261201503.38899"
    unless_null $P35, reuse36
    new $P35, ["ExceptionHandler"]
    $P35."handle_types"(58)
  reuse36:
    set_addr $P35, control_34
    push_eh $P35
    .lex "self", self
    .lex "$module", param_37
    if has_param_38, optparam_27
    new $P39, "Undef"
    set param_38, $P39
  optparam_27:
    .lex "$tagset", param_38
    .lex "@symbols", param_40
.annotate "line", 27
    new $P41, "Hash"
    .lex "%exports", $P41
.annotate "line", 28
    new $P42, "Hash"
    .lex "%source", $P42
.annotate "line", 22
    find_lex $P44, "$module"
    does $I45, $P44, "hash"
    new $P46, 'Integer'
    set $P46, $I45
    isfalse $I47, $P46
    unless $I47, if_43_end
.annotate "line", 23
    find_lex $P48, "self"
    find_lex $P49, "$module"
    $P50 = $P48."get_module"($P49)
    store_lex "$module", $P50
  if_43_end:
.annotate "line", 26
    find_lex $P52, "$tagset"
    set $P51, $P52
    defined $I54, $P51
    if $I54, default_53
    find_lex $P57, "@symbols"
    if $P57, if_56
    new $P59, "String"
    assign $P59, "DEFAULT"
    set $P55, $P59
    goto if_56_end
  if_56:
    new $P58, "String"
    assign $P58, "ALL"
    set $P55, $P58
  if_56_end:
    set $P51, $P55
  default_53:
    store_lex "$tagset", $P51
    find_lex $P60, "%exports"
.annotate "line", 28
    find_lex $P61, "$tagset"
    set $S62, $P61
    find_lex $P63, "$module"
    unless_null $P63, vivify_28
    new $P63, "Hash"
  vivify_28:
    set $P64, $P63["EXPORT"]
    unless_null $P64, vivify_29
    new $P64, "Hash"
  vivify_29:
    set $P65, $P64[$S62]
    unless_null $P65, vivify_30
    new $P65, "Undef"
  vivify_30:
    store_lex "%source", $P65
.annotate "line", 29
    find_lex $P67, "%source"
    defined $I68, $P67
    new $P69, 'Integer'
    set $P69, $I68
    isfalse $I70, $P69
    unless $I70, if_66_end
.annotate "line", 30
    find_lex $P73, "$tagset"
    set $S74, $P73
    iseq $I75, $S74, "ALL"
    if $I75, if_72
    $P77 = new ["Hash"]
    set $P71, $P77
    goto if_72_end
  if_72:
    find_lex $P76, "$module"
    set $P71, $P76
  if_72_end:
    store_lex "%source", $P71
  if_66_end:
.annotate "line", 32
    find_lex $P79, "@symbols"
    if $P79, if_78
.annotate "line", 39
    find_lex $P102, "%source"
    defined $I103, $P102
    unless $I103, for_undef_31
    iter $P101, $P102
    new $P119, 'ExceptionHandler'
    set_addr $P119, loop118_handler
    $P119."handle_types"(65, 67, 66)
    push_eh $P119
  loop118_test:
    unless $P101, loop118_done
    shift $P104, $P101
  loop118_redo:
    .const 'Sub' $P106 = "15_1261201503.38108" 
    capture_lex $P106
    $P106($P104)
  loop118_next:
    goto loop118_test
  loop118_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P120, exception, 'type'
    eq $P120, 65, loop118_next
    eq $P120, 67, loop118_redo
  loop118_done:
    pop_eh 
  for_undef_31:
.annotate "line", 38
    goto if_78_end
  if_78:
.annotate "line", 33
    find_lex $P81, "@symbols"
    defined $I82, $P81
    unless $I82, for_undef_34
    iter $P80, $P81
    new $P99, 'ExceptionHandler'
    set_addr $P99, loop98_handler
    $P99."handle_types"(65, 67, 66)
    push_eh $P99
  loop98_test:
    unless $P80, loop98_done
    shift $P83, $P80
  loop98_redo:
    .const 'Sub' $P85 = "14_1261201503.38108" 
    capture_lex $P85
    $P85($P83)
  loop98_next:
    goto loop98_test
  loop98_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P100, exception, 'type'
    eq $P100, 65, loop98_next
    eq $P100, 67, loop98_redo
  loop98_done:
    pop_eh 
  for_undef_34:
  if_78_end:
.annotate "line", 32
    find_lex $P121, "%exports"
.annotate "line", 20
    .return ($P121)
  control_34:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P122, exception, "payload"
    .return ($P122)
.end


.namespace ["HLL";"Compiler"]
.sub "_block105"  :anon :subid("15_1261201503.38108") :outer("13_1261201503.38108")
    .param pmc param_108
.annotate "line", 40
    new $P107, "Undef"
    .lex "$value", $P107
    .lex "$_", param_108
    find_lex $P109, "$_"
    $P110 = $P109."value"()
    store_lex "$value", $P110
.annotate "line", 41
    find_lex $P111, "$value"
    find_lex $P112, "$_"
    $P113 = $P112."key"()
    find_lex $P114, "$value"
    $P115 = "value_type"($P114)
    find_lex $P116, "%exports"
    unless_null $P116, vivify_32
    new $P116, "Hash"
    store_lex "%exports", $P116
  vivify_32:
    set $P117, $P116[$P115]
    unless_null $P117, vivify_33
    new $P117, "Hash"
    set $P116[$P115], $P117
  vivify_33:
    set $P117[$P113], $P111
.annotate "line", 39
    .return ($P111)
.end


.namespace ["HLL";"Compiler"]
.sub "_block84"  :anon :subid("14_1261201503.38108") :outer("13_1261201503.38108")
    .param pmc param_87
.annotate "line", 34
    new $P86, "Undef"
    .lex "$value", $P86
    .lex "$_", param_87
    find_lex $P88, "$_"
    set $S89, $P88
    find_lex $P90, "%source"
    unless_null $P90, vivify_35
    new $P90, "Hash"
  vivify_35:
    set $P91, $P90[$S89]
    unless_null $P91, vivify_36
    new $P91, "Undef"
  vivify_36:
    store_lex "$value", $P91
.annotate "line", 35
    find_lex $P92, "$value"
    find_lex $P93, "$_"
    find_lex $P94, "$value"
    $P95 = "value_type"($P94)
    find_lex $P96, "%exports"
    unless_null $P96, vivify_37
    new $P96, "Hash"
    store_lex "%exports", $P96
  vivify_37:
    set $P97, $P96[$P95]
    unless_null $P97, vivify_38
    new $P97, "Hash"
    set $P96[$P95], $P97
  vivify_38:
    set $P97[$P93], $P92
.annotate "line", 33
    .return ($P92)
.end


.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("16_1261201503.38108") :method :outer("11_1261201503.38108")
    .param pmc param_127
.annotate "line", 47
    get_root_global $P125, ["parrot";"PCT"], "reuse126_1261201503.41648"
    unless_null $P125, reuse126
    new $P125, ["ExceptionHandler"]
    $P125."handle_types"(58)
  reuse126:
    set_addr $P125, control_124
    push_eh $P125
    .lex "self", self
    .lex "$name", param_127
.annotate "line", 48
    new $P128, "ResizablePMCArray"
    .lex "@name", $P128
    find_lex $P129, "self"
    find_lex $P130, "$name"
    $P131 = $P129."parse_name"($P130)
    store_lex "@name", $P131
.annotate "line", 49
    find_lex $P132, "@name"
    find_lex $P133, "self"
    getattribute $P134, $P133, "$!language"
    unless_null $P134, vivify_39
    new $P134, "Undef"
  vivify_39:
    set $S135, $P134
    downcase $S136, $S135
    $P132."unshift"($S136)
.annotate "line", 50
    find_lex $P137, "@name"
    get_root_namespace $P138, $P137
.annotate "line", 47
    .return ($P138)
  control_124:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P139, exception, "payload"
    .return ($P139)
.end


.namespace ["HLL";"Compiler"]
.sub "language"  :subid("17_1261201503.38108") :method :outer("11_1261201503.38108")
    .param pmc param_144 :optional
    .param int has_param_144 :opt_flag
.annotate "line", 53
    get_root_global $P142, ["parrot";"PCT"], "reuse143_1261201503.42191"
    unless_null $P142, reuse143
    new $P142, ["ExceptionHandler"]
    $P142."handle_types"(58)
  reuse143:
    set_addr $P142, control_141
    push_eh $P142
    .lex "self", self
    if has_param_144, optparam_40
    new $P145, "Undef"
    set param_144, $P145
  optparam_40:
    .lex "$name", param_144
.annotate "line", 54
    find_lex $P147, "$name"
    unless $P147, if_146_end
.annotate "line", 55
    find_lex $P148, "$name"
    find_lex $P149, "self"
    setattribute $P149, "$!language", $P148
.annotate "line", 56
    find_lex $P150, "$name"
    set $S151, $P150
    find_lex $P152, "self"
    compreg $S151, $P152
  if_146_end:
.annotate "line", 54
    find_lex $P153, "self"
    getattribute $P154, $P153, "$!language"
    unless_null $P154, vivify_41
    new $P154, "Undef"
  vivify_41:
.annotate "line", 53
    .return ($P154)
  control_141:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P155, exception, "payload"
    .return ($P155)
.end


.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("18_1261201503.38108") :method :outer("11_1261201503.38108")
    .param pmc param_160
.annotate "line", 61
    .const 'Sub' $P170 = "19_1261201503.38108" 
    capture_lex $P170
    get_root_global $P158, ["parrot";"PCT"], "reuse159_1261201503.44693"
    unless_null $P158, reuse159
    new $P158, ["ExceptionHandler"]
    $P158."handle_types"(58)
  reuse159:
    set_addr $P158, control_157
    push_eh $P158
    .lex "self", self
    .lex "$name", param_160
.annotate "line", 62
    new $P161, "Undef"
    .lex "$base", $P161
.annotate "line", 63
    new $P162, "Undef"
    .lex "$loaded", $P162
.annotate "line", 62
    find_lex $P163, "self"
    find_lex $P164, "$name"
    $P165 = $P163."parse_name"($P164)
    join $S166, "/", $P165
    new $P167, 'String'
    set $P167, $S166
    store_lex "$base", $P167
.annotate "line", 63
    new $P168, "Integer"
    assign $P168, 0
    store_lex "$loaded", $P168
.annotate "line", 64
    .const 'Sub' $P170 = "19_1261201503.38108" 
    capture_lex $P170
    $P170()
.annotate "line", 65
    find_lex $P183, "$loaded"
    if $P183, unless_182_end
    find_lex $P184, "$base"
    concat $P185, $P184, ".pir"
    set $S186, $P185
    load_bytecode $S186
    new $P187, "Integer"
    assign $P187, 1
    store_lex "$loaded", $P187
  unless_182_end:
.annotate "line", 66
    find_lex $P188, "self"
    find_lex $P189, "$name"
    $P190 = $P188."get_module"($P189)
.annotate "line", 61
    .return ($P190)
  control_157:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P191, exception, "payload"
    .return ($P191)
.end


.namespace ["HLL";"Compiler"]
.sub "_block169"  :anon :subid("19_1261201503.38108") :outer("18_1261201503.38108")
.annotate "line", 64
    new $P177, 'ExceptionHandler'
    set_addr $P177, control_176
    $P177."handle_types_except"(58, 59, 60, 61, 63, 64, 65, 66, 67)
    push_eh $P177
    find_lex $P171, "$base"
    concat $P172, $P171, ".pbc"
    set $S173, $P172
    load_bytecode $S173
    new $P174, "Integer"
    assign $P174, 1
    store_lex "$loaded", $P174
    pop_eh 
    goto skip_handler_175
  control_176:
    .local pmc exception 
    .get_results (exception) 
    new $P180, 'Integer'
    set $P180, 1
    set exception["handled"], $P180
    set $I181, exception["handled"]
    ne $I181, 1, nothandled_179
  handled_178:
    .return (exception)
  nothandled_179:
    rethrow exception
  skip_handler_175:
    .return ($P174)
.end


.namespace ["HLL";"Compiler"]
.sub "import"  :subid("20_1261201503.38108") :method :outer("11_1261201503.38108")
    .param pmc param_196
    .param pmc param_197
.annotate "line", 69
    .const 'Sub' $P203 = "21_1261201503.38108" 
    capture_lex $P203
    get_root_global $P194, ["parrot";"PCT"], "reuse195_1261201503.45914"
    unless_null $P194, reuse195
    new $P194, ["ExceptionHandler"]
    $P194."handle_types"(58)
  reuse195:
    set_addr $P194, control_193
    push_eh $P194
    .lex "self", self
    .lex "$target", param_196
    .lex "%exports", param_197
.annotate "line", 70
    find_lex $P199, "%exports"
    defined $I200, $P199
    unless $I200, for_undef_42
    iter $P198, $P199
    new $P285, 'ExceptionHandler'
    set_addr $P285, loop284_handler
    $P285."handle_types"(65, 67, 66)
    push_eh $P285
  loop284_test:
    unless $P198, loop284_done
    shift $P201, $P198
  loop284_redo:
    .const 'Sub' $P203 = "21_1261201503.38108" 
    capture_lex $P203
    $P203($P201)
  loop284_next:
    goto loop284_test
  loop284_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P286, exception, 'type'
    eq $P286, 65, loop284_next
    eq $P286, 67, loop284_redo
  loop284_done:
    pop_eh 
  for_undef_42:
.annotate "line", 69
    .return ($P198)
  control_193:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P287, exception, "payload"
    .return ($P287)
.end


.namespace ["HLL";"Compiler"]
.sub "_block202"  :anon :subid("21_1261201503.38108") :outer("20_1261201503.38108")
    .param pmc param_206
.annotate "line", 70
    .const 'Sub' $P273 = "24_1261201503.38108" 
    capture_lex $P273
    .const 'Sub' $P253 = "23_1261201503.38108" 
    capture_lex $P253
    .const 'Sub' $P224 = "22_1261201503.38108" 
    capture_lex $P224
.annotate "line", 71
    new $P204, "Undef"
    .lex "$type", $P204
.annotate "line", 72
    new $P205, "Hash"
    .lex "%items", $P205
    .lex "$_", param_206
.annotate "line", 71
    find_lex $P207, "$_"
    $P208 = $P207."key"()
    store_lex "$type", $P208
.annotate "line", 72
    find_lex $P209, "$_"
    $P210 = $P209."value"()
    store_lex "%items", $P210
.annotate "line", 73
    find_lex $P213, "self"
    new $P214, 'String'
    set $P214, "import_"
    find_lex $P215, "$type"
    concat $P216, $P214, $P215
    set $S217, $P216
    can $I218, $P213, $S217
    if $I218, if_212
.annotate "line", 76
    find_lex $P242, "$target"
    new $P243, 'String'
    set $P243, "add_"
    find_lex $P244, "$type"
    concat $P245, $P243, $P244
    set $S246, $P245
    can $I247, $P242, $S246
    if $I247, if_241
.annotate "line", 80
    find_lex $P269, "%items"
    defined $I270, $P269
    unless $I270, for_undef_43
    iter $P268, $P269
    new $P282, 'ExceptionHandler'
    set_addr $P282, loop281_handler
    $P282."handle_types"(65, 67, 66)
    push_eh $P282
  loop281_test:
    unless $P268, loop281_done
    shift $P271, $P268
  loop281_redo:
    .const 'Sub' $P273 = "24_1261201503.38108" 
    capture_lex $P273
    $P273($P271)
  loop281_next:
    goto loop281_test
  loop281_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P283, exception, 'type'
    eq $P283, 65, loop281_next
    eq $P283, 67, loop281_redo
  loop281_done:
    pop_eh 
  for_undef_43:
.annotate "line", 79
    set $P240, $P268
.annotate "line", 76
    goto if_241_end
  if_241:
.annotate "line", 77
    find_lex $P249, "%items"
    defined $I250, $P249
    unless $I250, for_undef_45
    iter $P248, $P249
    new $P266, 'ExceptionHandler'
    set_addr $P266, loop265_handler
    $P266."handle_types"(65, 67, 66)
    push_eh $P266
  loop265_test:
    unless $P248, loop265_done
    shift $P251, $P248
  loop265_redo:
    .const 'Sub' $P253 = "23_1261201503.38108" 
    capture_lex $P253
    $P253($P251)
  loop265_next:
    goto loop265_test
  loop265_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P267, exception, 'type'
    eq $P267, 65, loop265_next
    eq $P267, 67, loop265_redo
  loop265_done:
    pop_eh 
  for_undef_45:
.annotate "line", 76
    set $P240, $P248
  if_241_end:
    set $P211, $P240
.annotate "line", 73
    goto if_212_end
  if_212:
.annotate "line", 74
    find_lex $P220, "%items"
    defined $I221, $P220
    unless $I221, for_undef_46
    iter $P219, $P220
    new $P238, 'ExceptionHandler'
    set_addr $P238, loop237_handler
    $P238."handle_types"(65, 67, 66)
    push_eh $P238
  loop237_test:
    unless $P219, loop237_done
    shift $P222, $P219
  loop237_redo:
    .const 'Sub' $P224 = "22_1261201503.38108" 
    capture_lex $P224
    $P224($P222)
  loop237_next:
    goto loop237_test
  loop237_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P239, exception, 'type'
    eq $P239, 65, loop237_next
    eq $P239, 67, loop237_redo
  loop237_done:
    pop_eh 
  for_undef_46:
.annotate "line", 73
    set $P211, $P219
  if_212_end:
.annotate "line", 70
    .return ($P211)
.end


.namespace ["HLL";"Compiler"]
.sub "_block272"  :anon :subid("24_1261201503.38108") :outer("21_1261201503.38108")
    .param pmc param_274
.annotate "line", 80
    .lex "$_", param_274
    find_lex $P275, "$_"
    $P276 = $P275."value"()
    find_lex $P277, "$_"
    $P278 = $P277."key"()
    set $S279, $P278
    find_lex $P280, "$target"
    unless_null $P280, vivify_44
    new $P280, "Hash"
    store_lex "$target", $P280
  vivify_44:
    set $P280[$S279], $P276
    .return ($P276)
.end


.namespace ["HLL";"Compiler"]
.sub "_block252"  :anon :subid("23_1261201503.38108") :outer("21_1261201503.38108")
    .param pmc param_254
.annotate "line", 77
    .lex "$_", param_254
    find_lex $P255, "$target"
    find_lex $P256, "$_"
    $P257 = $P256."key"()
    find_lex $P258, "$_"
    $P259 = $P258."value"()
    new $P260, 'String'
    set $P260, "add_"
    find_lex $P261, "$type"
    concat $P262, $P260, $P261
    set $S263, $P262
    $P264 = $P255.$S263($P257, $P259)
    .return ($P264)
.end


.namespace ["HLL";"Compiler"]
.sub "_block223"  :anon :subid("22_1261201503.38108") :outer("21_1261201503.38108")
    .param pmc param_225
.annotate "line", 74
    .lex "$_", param_225
    find_lex $P226, "self"
    find_lex $P227, "$target"
    find_lex $P228, "$_"
    $P229 = $P228."key"()
    find_lex $P230, "$_"
    $P231 = $P230."value"()
    new $P232, 'String'
    set $P232, "import_"
    find_lex $P233, "$type"
    concat $P234, $P232, $P233
    set $S235, $P234
    $P236 = $P226.$S235($P227, $P229, $P231)
    .return ($P236)
.end


=head1 AUTHOR

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=head1 COPYRIGHT

Copyright (C) 2009, The Perl Foundation.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
