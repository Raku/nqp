# $Id$

=head1 NAME

HLL - Parrot HLL library

=head1 DESCRIPTION

This file brings together the various modules needed for HLL::Compiler
and HLL::Grammar.

=over 4

=cut

.sub '' :anon :load :init
    load_bytecode 'Regex.pbc'
.end

### .include 'src/cheats/hll-compiler.pir'
# we have to overload PCT::HLLCompiler's parse method to support P6Regex grammars

.include 'cclass.pasm'

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
    $S0 = replace $S0, 0, 1, ''
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


# Temporarily backport PCT::HLLCompiler's 'lineof' method
# from Parrot r48866 into HLL::Compiler, so that nqp-rx can
# continue to build from an older Parrot until parrot's trunk
# is working again.  When we're able to bump PARROT_REVISION,
# this code can go away to fall back to Parrot's version (DRY).
=item lineof(target, pos [, cache :named('cache')])

Return the line number of offset C<pos> within C<target>.  The return
value uses zero for the first line.  If C<cache> is true, then
memoize the line offsets as a C<!lineof> property on C<target>.

=cut

.sub 'lineof' :method
    .param pmc target
    .param int pos
    .param int cache           :optional :named('cache')
    .local pmc linepos

    # If we've previously cached C<linepos> for target, we use it.
    unless cache goto linepos_build
    linepos = getprop '!linepos', target
    unless null linepos goto linepos_done

    # calculate a new linepos array.
  linepos_build:
    linepos = new ['ResizableIntegerArray']
    unless cache goto linepos_build_1
    setprop target, '!linepos', linepos
  linepos_build_1:
    .local string s
    .local int jpos, eos
    s = target
    eos = length s
    jpos = 0
    # Search for all of the newline markers in C<target>.  When we
    # find one, mark the ending offset of the line in C<linepos>.
  linepos_loop:
    jpos = find_cclass .CCLASS_NEWLINE, s, jpos, eos
    unless jpos < eos goto linepos_done
    $I0 = ord s, jpos
    inc jpos
    push linepos, jpos
    # Treat \r\n as a single logical newline.
    if $I0 != 13 goto linepos_loop
    $I0 = ord s, jpos
    if $I0 != 10 goto linepos_loop
    inc jpos
    goto linepos_loop
  linepos_done:

    # We have C<linepos>, so now we search the array for the largest
    # element that is not greater than C<pos>.  The index of that
    # element is the line number to be returned.
    # (Potential optimization: use a binary search.)
    .local int line, count
    count = elements linepos
    line = 0
  line_loop:
    if line >= count goto line_done
    $I0 = linepos[line]
    if $I0 > pos goto line_done
    inc line
    goto line_loop
  line_done:
    .return (line)
.end


# This sub serves as a cumulative "outer context" for code
# executed in HLL::Compiler's interactive REPL.  It's invoked
# exactly once upon load/init to obtain a context, and its
# default LexPad is replaced with a Hash that we can use to
# cumulatively store outer context information.  Both the
# context and hash are then made available via package
# variables.
.namespace []
.sub '&interactive_outer' :lex :init :load
    .local pmc ctx, pad
    $P0 = getinterp
    ctx = $P0['context']
    set_global ['HLL';'Compiler'], '$interactive_ctx', ctx
    pad = getattribute ctx, 'lex_pad'
    $P1 = new ['Hash']
    copy pad, $P1
    set_global ['HLL';'Compiler'], '%interactive_pad', pad
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

    $P0 = get_hll_global ['HLL'], 'Compiler'
    $I1 = $P0.'lineof'(target, pos)
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

    .local pmc cur, debug
    .local string target
    .local int pos

    (cur, pos, target) = self.'!cursor_start'()
    debug = getattribute cur, '$!debug'
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
.end


.sub 'quotemod_check' :method :nsentry
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


.sub 'split_words' :method :nsentry
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

    .local pmc here, pos, debug
    (here, pos) = self.'!cursor_start'()
    debug = getattribute here, '$!debug'
    if null debug goto debug_1
    here.'!cursor_debug'('START', 'EXPR')
  debug_1:

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
    setattribute here, '$!pos', pos
    setattribute here, '$!match', term
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
    self.'!cursor_debug'('START', 'MARKER name=', markname, ', pos=', pos)

    .local pmc markhash
    markhash = get_global '%!MARKHASH'
    unless null markhash goto have_markhash
    markhash = new ['Hash']
    set_global '%!MARKHASH', markhash
  have_markhash:
    markhash[markname] = pos
    self.'!cursor_debug'('PASS', 'MARKER')
    .return (1)
.end


.sub 'MARKED' :method
    .param pmc markname

    self.'!cursor_debug'('START','MARKED name=', markname)

    .local pmc markhash
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

### .include 'src/cheats/parrot-callcontext.pir'
.namespace ['CallContext']
.sub 'lexpad_full' :method
    .local pmc ctx, lexall, lexpad, lexpad_it
    ctx = self
    lexall = root_new ['parrot';'Hash']

  context_loop:
    if null ctx goto context_done
    lexpad = getattribute ctx, 'lex_pad'
    if null lexpad goto lexpad_done
    lexpad_it = iter lexpad
  lexpad_loop:
    unless lexpad_it goto lexpad_done
    $S0 = shift lexpad_it
    $I0 = exists lexall[$S0]
    if $I0 goto lexpad_loop
    $P0 = lexpad[$S0]
    lexall[$S0] = $P0
    goto lexpad_loop
  lexpad_done:
    ctx = getattribute ctx, 'outer_ctx'
    goto context_loop
  context_done:
    .return (lexall)
.end

### .include 'gen/hllgrammar-grammar.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1294592798.608")
.annotate 'line', 0
    get_hll_global $P14, ["HLL";"Grammar"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 5
    get_hll_global $P14, ["HLL";"Grammar"], "_block13" 
    capture_lex $P14
    $P332 = $P14()
.annotate 'line', 1
    .return ($P332)
    .const 'Sub' $P334 = "106_1294592798.608" 
    .return ($P334)
.end


.namespace []
.sub "" :load :init :subid("post107") :outer("10_1294592798.608")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1294592798.608" 
    .local pmc block
    set block, $P12
    $P337 = get_root_global ["parrot"], "P6metaclass"
    $P337."new_class"("HLL::Grammar", "Regex::Cursor" :named("parent"))
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["HLL";"Grammar"]
.sub "_block13"  :subid("11_1294592798.608") :outer("10_1294592798.608")
.annotate 'line', 5
    .const 'Sub' $P319 = "103_1294592798.608" 
    capture_lex $P319
    .const 'Sub' $P313 = "101_1294592798.608" 
    capture_lex $P313
    .const 'Sub' $P300 = "98_1294592798.608" 
    capture_lex $P300
    .const 'Sub' $P268 = "93_1294592798.608" 
    capture_lex $P268
    .const 'Sub' $P262 = "91_1294592798.608" 
    capture_lex $P262
    .const 'Sub' $P257 = "89_1294592798.608" 
    capture_lex $P257
    .const 'Sub' $P251 = "87_1294592798.608" 
    capture_lex $P251
    .const 'Sub' $P245 = "85_1294592798.608" 
    capture_lex $P245
    .const 'Sub' $P240 = "83_1294592798.608" 
    capture_lex $P240
    .const 'Sub' $P235 = "81_1294592798.608" 
    capture_lex $P235
    .const 'Sub' $P230 = "79_1294592798.608" 
    capture_lex $P230
    .const 'Sub' $P225 = "77_1294592798.608" 
    capture_lex $P225
    .const 'Sub' $P220 = "75_1294592798.608" 
    capture_lex $P220
    .const 'Sub' $P215 = "73_1294592798.608" 
    capture_lex $P215
    .const 'Sub' $P210 = "71_1294592798.608" 
    capture_lex $P210
    .const 'Sub' $P205 = "69_1294592798.608" 
    capture_lex $P205
    .const 'Sub' $P195 = "65_1294592798.608" 
    capture_lex $P195
    .const 'Sub' $P182 = "63_1294592798.608" 
    capture_lex $P182
    .const 'Sub' $P170 = "61_1294592798.608" 
    capture_lex $P170
    .const 'Sub' $P164 = "59_1294592798.608" 
    capture_lex $P164
    .const 'Sub' $P157 = "57_1294592798.608" 
    capture_lex $P157
    .const 'Sub' $P151 = "55_1294592798.608" 
    capture_lex $P151
    .const 'Sub' $P144 = "53_1294592798.608" 
    capture_lex $P144
    .const 'Sub' $P138 = "51_1294592798.608" 
    capture_lex $P138
    .const 'Sub' $P131 = "49_1294592798.608" 
    capture_lex $P131
    .const 'Sub' $P125 = "47_1294592798.608" 
    capture_lex $P125
    .const 'Sub' $P119 = "45_1294592798.608" 
    capture_lex $P119
    .const 'Sub' $P110 = "43_1294592798.608" 
    capture_lex $P110
    .const 'Sub' $P102 = "41_1294592798.608" 
    capture_lex $P102
    .const 'Sub' $P92 = "40_1294592798.608" 
    capture_lex $P92
    .const 'Sub' $P86 = "38_1294592798.608" 
    capture_lex $P86
    .const 'Sub' $P81 = "36_1294592798.608" 
    capture_lex $P81
    .const 'Sub' $P73 = "34_1294592798.608" 
    capture_lex $P73
    .const 'Sub' $P67 = "32_1294592798.608" 
    capture_lex $P67
    .const 'Sub' $P61 = "30_1294592798.608" 
    capture_lex $P61
    .const 'Sub' $P55 = "28_1294592798.608" 
    capture_lex $P55
    .const 'Sub' $P22 = "14_1294592798.608" 
    capture_lex $P22
    .const 'Sub' $P15 = "12_1294592798.608" 
    capture_lex $P15
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 33
    .const 'Sub' $P319 = "103_1294592798.608" 
    capture_lex $P319
.annotate 'line', 5
    .return ($P319)
    .const 'Sub' $P329 = "105_1294592798.608" 
    .return ($P329)
.end


.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 5
    .local string rx16_tgt
    .local int rx16_pos
    .local int rx16_off
    .local int rx16_eos
    .local int rx16_rep
    .local pmc rx16_cur
    .local pmc rx16_debug
    (rx16_cur, rx16_pos, rx16_tgt, $I10) = self."!cursor_start"()
    getattribute rx16_debug, rx16_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx16_cur
    .local pmc match
    .lex "$/", match
    length rx16_eos, rx16_tgt
    gt rx16_pos, rx16_eos, rx16_done
    set rx16_off, 0
    lt rx16_pos, 2, rx16_start
    sub rx16_off, rx16_pos, 1
    substr rx16_tgt, rx16_tgt, rx16_off
  rx16_start:
    eq $I10, 1, rx16_restart
    if_null rx16_debug, debug_108
    rx16_cur."!cursor_debug"("START", "ws")
  debug_108:
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
    set_addr $I10, rxquantr20_done
    rx16_cur."!mark_push"(0, rx16_pos, $I10)
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
    ord $I11, rx16_tgt, $I11
    ne $I11, 35, rx16_fail
    add rx16_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx16_pos, rx16_off
    find_cclass $I11, 4096, rx16_tgt, $I10, rx16_eos
    add rx16_pos, rx16_off, $I11
  alt21_end:
    set_addr $I10, rxquantr20_done
    (rx16_rep) = rx16_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr20_done
    rx16_cur."!mark_push"(rx16_rep, rx16_pos, $I10)
    goto rxquantr20_loop
  rxquantr20_done:
  # rx pass
    rx16_cur."!cursor_pass"(rx16_pos, "ws")
    if_null rx16_debug, debug_109
    rx16_cur."!cursor_debug"("PASS", "ws", " at pos=", rx16_pos)
  debug_109:
    .return (rx16_cur)
  rx16_restart:
    if_null rx16_debug, debug_110
    rx16_cur."!cursor_debug"("NEXT", "ws")
  debug_110:
  rx16_fail:
    (rx16_rep, rx16_pos, $I10, $P10) = rx16_cur."!mark_fail"(0)
    lt rx16_pos, -1, rx16_done
    eq rx16_pos, -1, rx16_fail
    jump $I10
  rx16_done:
    rx16_cur."!cursor_fail"()
    if_null rx16_debug, debug_111
    rx16_cur."!cursor_debug"("FAIL", "ws")
  debug_111:
    .return (rx16_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :subid("13_1294592798.608") :method
.annotate 'line', 5
    new $P18, "ResizablePMCArray"
    push $P18, ""
    .return ($P18)
.end


.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 5
    .local string rx23_tgt
    .local int rx23_pos
    .local int rx23_off
    .local int rx23_eos
    .local int rx23_rep
    .local pmc rx23_cur
    .local pmc rx23_debug
    (rx23_cur, rx23_pos, rx23_tgt, $I10) = self."!cursor_start"()
    rx23_cur."!cursor_caparray"("prefixish", "postfixish")
    getattribute rx23_debug, rx23_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx23_cur
    .local pmc match
    .lex "$/", match
    length rx23_eos, rx23_tgt
    gt rx23_pos, rx23_eos, rx23_done
    set rx23_off, 0
    lt rx23_pos, 2, rx23_start
    sub rx23_off, rx23_pos, 1
    substr rx23_tgt, rx23_tgt, rx23_off
  rx23_start:
    eq $I10, 1, rx23_restart
    if_null rx23_debug, debug_112
    rx23_cur."!cursor_debug"("START", "termish")
  debug_112:
    $I10 = self.'from'()
    ne $I10, -1, rxscan26_done
    goto rxscan26_scan
  rxscan26_loop:
    ($P10) = rx23_cur."from"()
    inc $P10
    set rx23_pos, $P10
    ge rx23_pos, rx23_eos, rxscan26_done
  rxscan26_scan:
    set_addr $I10, rxscan26_loop
    rx23_cur."!mark_push"(0, rx23_pos, $I10)
  rxscan26_done:
.annotate 'line', 8
  # rx rxquantr27 ** 0..*
    set_addr $I10, rxquantr27_done
    rx23_cur."!mark_push"(0, rx23_pos, $I10)
  rxquantr27_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx23_cur."!cursor_pos"(rx23_pos)
    $P10 = rx23_cur."prefixish"()
    unless $P10, rx23_fail
    goto rxsubrule28_pass
  rxsubrule28_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx23_fail
  rxsubrule28_pass:
    set_addr $I10, rxsubrule28_back
    rx23_cur."!mark_push"(0, rx23_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx23_pos = $P10."pos"()
    set_addr $I10, rxquantr27_done
    (rx23_rep) = rx23_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr27_done
    rx23_cur."!mark_push"(rx23_rep, rx23_pos, $I10)
    goto rxquantr27_loop
  rxquantr27_done:
.annotate 'line', 9
  # rx subrule "term" subtype=capture negate=
    rx23_cur."!cursor_pos"(rx23_pos)
    $P10 = rx23_cur."term"()
    unless $P10, rx23_fail
    rx23_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx23_pos = $P10."pos"()
.annotate 'line', 10
  # rx rxquantr29 ** 0..*
    set_addr $I10, rxquantr29_done
    rx23_cur."!mark_push"(0, rx23_pos, $I10)
  rxquantr29_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx23_cur."!cursor_pos"(rx23_pos)
    $P10 = rx23_cur."postfixish"()
    unless $P10, rx23_fail
    goto rxsubrule30_pass
  rxsubrule30_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx23_fail
  rxsubrule30_pass:
    set_addr $I10, rxsubrule30_back
    rx23_cur."!mark_push"(0, rx23_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx23_pos = $P10."pos"()
    set_addr $I10, rxquantr29_done
    (rx23_rep) = rx23_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr29_done
    rx23_cur."!mark_push"(rx23_rep, rx23_pos, $I10)
    goto rxquantr29_loop
  rxquantr29_done:
.annotate 'line', 7
  # rx pass
    rx23_cur."!cursor_pass"(rx23_pos, "termish")
    if_null rx23_debug, debug_113
    rx23_cur."!cursor_debug"("PASS", "termish", " at pos=", rx23_pos)
  debug_113:
    .return (rx23_cur)
  rx23_restart:
.annotate 'line', 5
    if_null rx23_debug, debug_114
    rx23_cur."!cursor_debug"("NEXT", "termish")
  debug_114:
  rx23_fail:
    (rx23_rep, rx23_pos, $I10, $P10) = rx23_cur."!mark_fail"(0)
    lt rx23_pos, -1, rx23_done
    eq rx23_pos, -1, rx23_fail
    jump $I10
  rx23_done:
    rx23_cur."!cursor_fail"()
    if_null rx23_debug, debug_115
    rx23_cur."!cursor_debug"("FAIL", "termish")
  debug_115:
    .return (rx23_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :subid("15_1294592798.608") :method
.annotate 'line', 5
    new $P25, "ResizablePMCArray"
    push $P25, ""
    .return ($P25)
.end


.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1294592798.608") :method
.annotate 'line', 13
    $P32 = self."!protoregex"("term")
    .return ($P32)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1294592798.608") :method
.annotate 'line', 13
    $P34 = self."!PREFIX__!protoregex"("term")
    .return ($P34)
.end


.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1294592798.608") :method
.annotate 'line', 14
    $P36 = self."!protoregex"("infix")
    .return ($P36)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1294592798.608") :method
.annotate 'line', 14
    $P38 = self."!PREFIX__!protoregex"("infix")
    .return ($P38)
.end


.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1294592798.608") :method
.annotate 'line', 15
    $P40 = self."!protoregex"("prefix")
    .return ($P40)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1294592798.608") :method
.annotate 'line', 15
    $P42 = self."!PREFIX__!protoregex"("prefix")
    .return ($P42)
.end


.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1294592798.608") :method
.annotate 'line', 16
    $P44 = self."!protoregex"("postfix")
    .return ($P44)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1294592798.608") :method
.annotate 'line', 16
    $P46 = self."!PREFIX__!protoregex"("postfix")
    .return ($P46)
.end


.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1294592798.608") :method
.annotate 'line', 17
    $P48 = self."!protoregex"("circumfix")
    .return ($P48)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1294592798.608") :method
.annotate 'line', 17
    $P50 = self."!PREFIX__!protoregex"("circumfix")
    .return ($P50)
.end


.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1294592798.608") :method
.annotate 'line', 18
    $P52 = self."!protoregex"("postcircumfix")
    .return ($P52)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1294592798.608") :method
.annotate 'line', 18
    $P54 = self."!PREFIX__!protoregex"("postcircumfix")
    .return ($P54)
.end


.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 5
    .local string rx56_tgt
    .local int rx56_pos
    .local int rx56_off
    .local int rx56_eos
    .local int rx56_rep
    .local pmc rx56_cur
    .local pmc rx56_debug
    (rx56_cur, rx56_pos, rx56_tgt, $I10) = self."!cursor_start"()
    getattribute rx56_debug, rx56_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx56_cur
    .local pmc match
    .lex "$/", match
    length rx56_eos, rx56_tgt
    gt rx56_pos, rx56_eos, rx56_done
    set rx56_off, 0
    lt rx56_pos, 2, rx56_start
    sub rx56_off, rx56_pos, 1
    substr rx56_tgt, rx56_tgt, rx56_off
  rx56_start:
    eq $I10, 1, rx56_restart
    if_null rx56_debug, debug_116
    rx56_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_116:
    $I10 = self.'from'()
    ne $I10, -1, rxscan60_done
    goto rxscan60_scan
  rxscan60_loop:
    ($P10) = rx56_cur."from"()
    inc $P10
    set rx56_pos, $P10
    ge rx56_pos, rx56_eos, rxscan60_done
  rxscan60_scan:
    set_addr $I10, rxscan60_loop
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
  rxscan60_done:
.annotate 'line', 20
  # rx subrule "circumfix" subtype=capture negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."circumfix"()
    unless $P10, rx56_fail
    rx56_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx56_pos = $P10."pos"()
  # rx pass
    rx56_cur."!cursor_pass"(rx56_pos, "term:sym<circumfix>")
    if_null rx56_debug, debug_117
    rx56_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx56_pos)
  debug_117:
    .return (rx56_cur)
  rx56_restart:
.annotate 'line', 5
    if_null rx56_debug, debug_118
    rx56_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_118:
  rx56_fail:
    (rx56_rep, rx56_pos, $I10, $P10) = rx56_cur."!mark_fail"(0)
    lt rx56_pos, -1, rx56_done
    eq rx56_pos, -1, rx56_fail
    jump $I10
  rx56_done:
    rx56_cur."!cursor_fail"()
    if_null rx56_debug, debug_119
    rx56_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_119:
    .return (rx56_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :subid("29_1294592798.608") :method
.annotate 'line', 5
    $P58 = self."!PREFIX__!subrule"("circumfix", "")
    new $P59, "ResizablePMCArray"
    push $P59, $P58
    .return ($P59)
.end


.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 5
    .local string rx62_tgt
    .local int rx62_pos
    .local int rx62_off
    .local int rx62_eos
    .local int rx62_rep
    .local pmc rx62_cur
    .local pmc rx62_debug
    (rx62_cur, rx62_pos, rx62_tgt, $I10) = self."!cursor_start"()
    getattribute rx62_debug, rx62_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx62_cur
    .local pmc match
    .lex "$/", match
    length rx62_eos, rx62_tgt
    gt rx62_pos, rx62_eos, rx62_done
    set rx62_off, 0
    lt rx62_pos, 2, rx62_start
    sub rx62_off, rx62_pos, 1
    substr rx62_tgt, rx62_tgt, rx62_off
  rx62_start:
    eq $I10, 1, rx62_restart
    if_null rx62_debug, debug_120
    rx62_cur."!cursor_debug"("START", "infixish")
  debug_120:
    $I10 = self.'from'()
    ne $I10, -1, rxscan66_done
    goto rxscan66_scan
  rxscan66_loop:
    ($P10) = rx62_cur."from"()
    inc $P10
    set rx62_pos, $P10
    ge rx62_pos, rx62_eos, rxscan66_done
  rxscan66_scan:
    set_addr $I10, rxscan66_loop
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  rxscan66_done:
.annotate 'line', 22
  # rx subrule "infix" subtype=capture negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."infix"()
    unless $P10, rx62_fail
    rx62_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx62_pos = $P10."pos"()
  # rx pass
    rx62_cur."!cursor_pass"(rx62_pos, "infixish")
    if_null rx62_debug, debug_121
    rx62_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx62_pos)
  debug_121:
    .return (rx62_cur)
  rx62_restart:
.annotate 'line', 5
    if_null rx62_debug, debug_122
    rx62_cur."!cursor_debug"("NEXT", "infixish")
  debug_122:
  rx62_fail:
    (rx62_rep, rx62_pos, $I10, $P10) = rx62_cur."!mark_fail"(0)
    lt rx62_pos, -1, rx62_done
    eq rx62_pos, -1, rx62_fail
    jump $I10
  rx62_done:
    rx62_cur."!cursor_fail"()
    if_null rx62_debug, debug_123
    rx62_cur."!cursor_debug"("FAIL", "infixish")
  debug_123:
    .return (rx62_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("31_1294592798.608") :method
.annotate 'line', 5
    $P64 = self."!PREFIX__!subrule"("infix", "")
    new $P65, "ResizablePMCArray"
    push $P65, $P64
    .return ($P65)
.end


.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 5
    .local string rx68_tgt
    .local int rx68_pos
    .local int rx68_off
    .local int rx68_eos
    .local int rx68_rep
    .local pmc rx68_cur
    .local pmc rx68_debug
    (rx68_cur, rx68_pos, rx68_tgt, $I10) = self."!cursor_start"()
    getattribute rx68_debug, rx68_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx68_cur
    .local pmc match
    .lex "$/", match
    length rx68_eos, rx68_tgt
    gt rx68_pos, rx68_eos, rx68_done
    set rx68_off, 0
    lt rx68_pos, 2, rx68_start
    sub rx68_off, rx68_pos, 1
    substr rx68_tgt, rx68_tgt, rx68_off
  rx68_start:
    eq $I10, 1, rx68_restart
    if_null rx68_debug, debug_124
    rx68_cur."!cursor_debug"("START", "prefixish")
  debug_124:
    $I10 = self.'from'()
    ne $I10, -1, rxscan72_done
    goto rxscan72_scan
  rxscan72_loop:
    ($P10) = rx68_cur."from"()
    inc $P10
    set rx68_pos, $P10
    ge rx68_pos, rx68_eos, rxscan72_done
  rxscan72_scan:
    set_addr $I10, rxscan72_loop
    rx68_cur."!mark_push"(0, rx68_pos, $I10)
  rxscan72_done:
.annotate 'line', 23
  # rx subrule "prefix" subtype=capture negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."prefix"()
    unless $P10, rx68_fail
    rx68_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx68_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."ws"()
    unless $P10, rx68_fail
    rx68_pos = $P10."pos"()
  # rx pass
    rx68_cur."!cursor_pass"(rx68_pos, "prefixish")
    if_null rx68_debug, debug_125
    rx68_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx68_pos)
  debug_125:
    .return (rx68_cur)
  rx68_restart:
.annotate 'line', 5
    if_null rx68_debug, debug_126
    rx68_cur."!cursor_debug"("NEXT", "prefixish")
  debug_126:
  rx68_fail:
    (rx68_rep, rx68_pos, $I10, $P10) = rx68_cur."!mark_fail"(0)
    lt rx68_pos, -1, rx68_done
    eq rx68_pos, -1, rx68_fail
    jump $I10
  rx68_done:
    rx68_cur."!cursor_fail"()
    if_null rx68_debug, debug_127
    rx68_cur."!cursor_debug"("FAIL", "prefixish")
  debug_127:
    .return (rx68_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("33_1294592798.608") :method
.annotate 'line', 5
    $P70 = self."!PREFIX__!subrule"("prefix", "")
    new $P71, "ResizablePMCArray"
    push $P71, $P70
    .return ($P71)
.end


.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 5
    .local string rx74_tgt
    .local int rx74_pos
    .local int rx74_off
    .local int rx74_eos
    .local int rx74_rep
    .local pmc rx74_cur
    .local pmc rx74_debug
    (rx74_cur, rx74_pos, rx74_tgt, $I10) = self."!cursor_start"()
    getattribute rx74_debug, rx74_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx74_cur
    .local pmc match
    .lex "$/", match
    length rx74_eos, rx74_tgt
    gt rx74_pos, rx74_eos, rx74_done
    set rx74_off, 0
    lt rx74_pos, 2, rx74_start
    sub rx74_off, rx74_pos, 1
    substr rx74_tgt, rx74_tgt, rx74_off
  rx74_start:
    eq $I10, 1, rx74_restart
    if_null rx74_debug, debug_128
    rx74_cur."!cursor_debug"("START", "postfixish")
  debug_128:
    $I10 = self.'from'()
    ne $I10, -1, rxscan79_done
    goto rxscan79_scan
  rxscan79_loop:
    ($P10) = rx74_cur."from"()
    inc $P10
    set rx74_pos, $P10
    ge rx74_pos, rx74_eos, rxscan79_done
  rxscan79_scan:
    set_addr $I10, rxscan79_loop
    rx74_cur."!mark_push"(0, rx74_pos, $I10)
  rxscan79_done:
  alt80_0:
.annotate 'line', 24
    set_addr $I10, alt80_1
    rx74_cur."!mark_push"(0, rx74_pos, $I10)
.annotate 'line', 25
  # rx subrule "postfix" subtype=capture negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."postfix"()
    unless $P10, rx74_fail
    rx74_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx74_pos = $P10."pos"()
    goto alt80_end
  alt80_1:
.annotate 'line', 26
  # rx subrule "postcircumfix" subtype=capture negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."postcircumfix"()
    unless $P10, rx74_fail
    rx74_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx74_pos = $P10."pos"()
  alt80_end:
.annotate 'line', 24
  # rx pass
    rx74_cur."!cursor_pass"(rx74_pos, "postfixish")
    if_null rx74_debug, debug_129
    rx74_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx74_pos)
  debug_129:
    .return (rx74_cur)
  rx74_restart:
.annotate 'line', 5
    if_null rx74_debug, debug_130
    rx74_cur."!cursor_debug"("NEXT", "postfixish")
  debug_130:
  rx74_fail:
    (rx74_rep, rx74_pos, $I10, $P10) = rx74_cur."!mark_fail"(0)
    lt rx74_pos, -1, rx74_done
    eq rx74_pos, -1, rx74_fail
    jump $I10
  rx74_done:
    rx74_cur."!cursor_fail"()
    if_null rx74_debug, debug_131
    rx74_cur."!cursor_debug"("FAIL", "postfixish")
  debug_131:
    .return (rx74_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("35_1294592798.608") :method
.annotate 'line', 5
    $P76 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P77 = self."!PREFIX__!subrule"("postfix", "")
    new $P78, "ResizablePMCArray"
    push $P78, $P76
    push $P78, $P77
    .return ($P78)
.end


.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 5
    .local string rx82_tgt
    .local int rx82_pos
    .local int rx82_off
    .local int rx82_eos
    .local int rx82_rep
    .local pmc rx82_cur
    .local pmc rx82_debug
    (rx82_cur, rx82_pos, rx82_tgt, $I10) = self."!cursor_start"()
    getattribute rx82_debug, rx82_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx82_cur
    .local pmc match
    .lex "$/", match
    length rx82_eos, rx82_tgt
    gt rx82_pos, rx82_eos, rx82_done
    set rx82_off, 0
    lt rx82_pos, 2, rx82_start
    sub rx82_off, rx82_pos, 1
    substr rx82_tgt, rx82_tgt, rx82_off
  rx82_start:
    eq $I10, 1, rx82_restart
    if_null rx82_debug, debug_132
    rx82_cur."!cursor_debug"("START", "nullterm")
  debug_132:
    $I10 = self.'from'()
    ne $I10, -1, rxscan85_done
    goto rxscan85_scan
  rxscan85_loop:
    ($P10) = rx82_cur."from"()
    inc $P10
    set rx82_pos, $P10
    ge rx82_pos, rx82_eos, rxscan85_done
  rxscan85_scan:
    set_addr $I10, rxscan85_loop
    rx82_cur."!mark_push"(0, rx82_pos, $I10)
  rxscan85_done:
.annotate 'line', 29
  # rx pass
    rx82_cur."!cursor_pass"(rx82_pos, "nullterm")
    if_null rx82_debug, debug_133
    rx82_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx82_pos)
  debug_133:
    .return (rx82_cur)
  rx82_restart:
.annotate 'line', 5
    if_null rx82_debug, debug_134
    rx82_cur."!cursor_debug"("NEXT", "nullterm")
  debug_134:
  rx82_fail:
    (rx82_rep, rx82_pos, $I10, $P10) = rx82_cur."!mark_fail"(0)
    lt rx82_pos, -1, rx82_done
    eq rx82_pos, -1, rx82_fail
    jump $I10
  rx82_done:
    rx82_cur."!cursor_fail"()
    if_null rx82_debug, debug_135
    rx82_cur."!cursor_debug"("FAIL", "nullterm")
  debug_135:
    .return (rx82_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :subid("37_1294592798.608") :method
.annotate 'line', 5
    new $P84, "ResizablePMCArray"
    push $P84, ""
    .return ($P84)
.end


.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 5
    .local string rx87_tgt
    .local int rx87_pos
    .local int rx87_off
    .local int rx87_eos
    .local int rx87_rep
    .local pmc rx87_cur
    .local pmc rx87_debug
    (rx87_cur, rx87_pos, rx87_tgt, $I10) = self."!cursor_start"()
    getattribute rx87_debug, rx87_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx87_cur
    .local pmc match
    .lex "$/", match
    length rx87_eos, rx87_tgt
    gt rx87_pos, rx87_eos, rx87_done
    set rx87_off, 0
    lt rx87_pos, 2, rx87_start
    sub rx87_off, rx87_pos, 1
    substr rx87_tgt, rx87_tgt, rx87_off
  rx87_start:
    eq $I10, 1, rx87_restart
    if_null rx87_debug, debug_136
    rx87_cur."!cursor_debug"("START", "nullterm_alt")
  debug_136:
    $I10 = self.'from'()
    ne $I10, -1, rxscan91_done
    goto rxscan91_scan
  rxscan91_loop:
    ($P10) = rx87_cur."from"()
    inc $P10
    set rx87_pos, $P10
    ge rx87_pos, rx87_eos, rxscan91_done
  rxscan91_scan:
    set_addr $I10, rxscan91_loop
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  rxscan91_done:
.annotate 'line', 30
  # rx subrule "nullterm" subtype=capture negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."nullterm"()
    unless $P10, rx87_fail
    rx87_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx87_pos = $P10."pos"()
  # rx pass
    rx87_cur."!cursor_pass"(rx87_pos, "nullterm_alt")
    if_null rx87_debug, debug_137
    rx87_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx87_pos)
  debug_137:
    .return (rx87_cur)
  rx87_restart:
.annotate 'line', 5
    if_null rx87_debug, debug_138
    rx87_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_138:
  rx87_fail:
    (rx87_rep, rx87_pos, $I10, $P10) = rx87_cur."!mark_fail"(0)
    lt rx87_pos, -1, rx87_done
    eq rx87_pos, -1, rx87_fail
    jump $I10
  rx87_done:
    rx87_cur."!cursor_fail"()
    if_null rx87_debug, debug_139
    rx87_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_139:
    .return (rx87_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :subid("39_1294592798.608") :method
.annotate 'line', 5
    $P89 = self."!PREFIX__!subrule"("nullterm", "")
    new $P90, "ResizablePMCArray"
    push $P90, $P89
    .return ($P90)
.end


.namespace ["HLL";"Grammar"]
.include "except_types.pasm"
.sub "nulltermish"  :subid("40_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    new $P94, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P94, control_93
    push_eh $P94
    .lex "self", self
    find_lex $P97, "self"
    $P98 = $P97."termish"()
    unless $P98, unless_96
    set $P95, $P98
    goto unless_96_end
  unless_96:
    find_lex $P99, "self"
    $P100 = $P99."nullterm_alt"()
    set $P95, $P100
  unless_96_end:
    .return ($P95)
  control_93:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx103_tgt
    .local int rx103_pos
    .local int rx103_off
    .local int rx103_eos
    .local int rx103_rep
    .local pmc rx103_cur
    .local pmc rx103_debug
    (rx103_cur, rx103_pos, rx103_tgt, $I10) = self."!cursor_start"()
    rx103_cur."!cursor_caparray"("quote_atom")
    getattribute rx103_debug, rx103_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx103_cur
    .local pmc match
    .lex "$/", match
    length rx103_eos, rx103_tgt
    gt rx103_pos, rx103_eos, rx103_done
    set rx103_off, 0
    lt rx103_pos, 2, rx103_start
    sub rx103_off, rx103_pos, 1
    substr rx103_tgt, rx103_tgt, rx103_off
  rx103_start:
    eq $I10, 1, rx103_restart
    if_null rx103_debug, debug_140
    rx103_cur."!cursor_debug"("START", "quote_delimited")
  debug_140:
    $I10 = self.'from'()
    ne $I10, -1, rxscan107_done
    goto rxscan107_scan
  rxscan107_loop:
    ($P10) = rx103_cur."from"()
    inc $P10
    set rx103_pos, $P10
    ge rx103_pos, rx103_eos, rxscan107_done
  rxscan107_scan:
    set_addr $I10, rxscan107_loop
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  rxscan107_done:
.annotate 'line', 37
  # rx subrule "starter" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."starter"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx103_pos = $P10."pos"()
  # rx rxquantr108 ** 0..*
    set_addr $I10, rxquantr108_done
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  rxquantr108_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."quote_atom"()
    unless $P10, rx103_fail
    goto rxsubrule109_pass
  rxsubrule109_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx103_fail
  rxsubrule109_pass:
    set_addr $I10, rxsubrule109_back
    rx103_cur."!mark_push"(0, rx103_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx103_pos = $P10."pos"()
    set_addr $I10, rxquantr108_done
    (rx103_rep) = rx103_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr108_done
    rx103_cur."!mark_push"(rx103_rep, rx103_pos, $I10)
    goto rxquantr108_loop
  rxquantr108_done:
  # rx subrule "stopper" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."stopper"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx103_pos = $P10."pos"()
.annotate 'line', 36
  # rx pass
    rx103_cur."!cursor_pass"(rx103_pos, "quote_delimited")
    if_null rx103_debug, debug_141
    rx103_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx103_pos)
  debug_141:
    .return (rx103_cur)
  rx103_restart:
.annotate 'line', 33
    if_null rx103_debug, debug_142
    rx103_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_142:
  rx103_fail:
    (rx103_rep, rx103_pos, $I10, $P10) = rx103_cur."!mark_fail"(0)
    lt rx103_pos, -1, rx103_done
    eq rx103_pos, -1, rx103_fail
    jump $I10
  rx103_done:
    rx103_cur."!cursor_fail"()
    if_null rx103_debug, debug_143
    rx103_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_143:
    .return (rx103_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("42_1294592798.608") :method
.annotate 'line', 33
    $P105 = self."!PREFIX__!subrule"("starter", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx111_tgt
    .local int rx111_pos
    .local int rx111_off
    .local int rx111_eos
    .local int rx111_rep
    .local pmc rx111_cur
    .local pmc rx111_debug
    (rx111_cur, rx111_pos, rx111_tgt, $I10) = self."!cursor_start"()
    getattribute rx111_debug, rx111_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx111_cur
    .local pmc match
    .lex "$/", match
    length rx111_eos, rx111_tgt
    gt rx111_pos, rx111_eos, rx111_done
    set rx111_off, 0
    lt rx111_pos, 2, rx111_start
    sub rx111_off, rx111_pos, 1
    substr rx111_tgt, rx111_tgt, rx111_off
  rx111_start:
    eq $I10, 1, rx111_restart
    if_null rx111_debug, debug_144
    rx111_cur."!cursor_debug"("START", "quote_atom")
  debug_144:
    $I10 = self.'from'()
    ne $I10, -1, rxscan114_done
    goto rxscan114_scan
  rxscan114_loop:
    ($P10) = rx111_cur."from"()
    inc $P10
    set rx111_pos, $P10
    ge rx111_pos, rx111_eos, rxscan114_done
  rxscan114_scan:
    set_addr $I10, rxscan114_loop
    rx111_cur."!mark_push"(0, rx111_pos, $I10)
  rxscan114_done:
.annotate 'line', 41
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx111_cur."!cursor_pos"(rx111_pos)
    $P10 = rx111_cur."stopper"()
    if $P10, rx111_fail
  alt115_0:
.annotate 'line', 42
    set_addr $I10, alt115_1
    rx111_cur."!mark_push"(0, rx111_pos, $I10)
.annotate 'line', 43
  # rx subrule "quote_escape" subtype=capture negate=
    rx111_cur."!cursor_pos"(rx111_pos)
    $P10 = rx111_cur."quote_escape"()
    unless $P10, rx111_fail
    rx111_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx111_pos = $P10."pos"()
    goto alt115_end
  alt115_1:
.annotate 'line', 44
  # rx rxquantr116 ** 1..*
    set_addr $I10, rxquantr116_done
    rx111_cur."!mark_push"(0, -1, $I10)
  rxquantr116_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx111_cur."!cursor_pos"(rx111_pos)
    $P10 = rx111_cur."stopper"()
    if $P10, rx111_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx111_cur."!cursor_pos"(rx111_pos)
    $P10 = rx111_cur."quote_escape"()
    if $P10, rx111_fail
  # rx charclass .
    ge rx111_pos, rx111_eos, rx111_fail
    inc rx111_pos
    set_addr $I10, rxquantr116_done
    (rx111_rep) = rx111_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr116_done
    rx111_cur."!mark_push"(rx111_rep, rx111_pos, $I10)
    goto rxquantr116_loop
  rxquantr116_done:
  alt115_end:
.annotate 'line', 40
  # rx pass
    rx111_cur."!cursor_pass"(rx111_pos, "quote_atom")
    if_null rx111_debug, debug_145
    rx111_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx111_pos)
  debug_145:
    .return (rx111_cur)
  rx111_restart:
.annotate 'line', 33
    if_null rx111_debug, debug_146
    rx111_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_146:
  rx111_fail:
    (rx111_rep, rx111_pos, $I10, $P10) = rx111_cur."!mark_fail"(0)
    lt rx111_pos, -1, rx111_done
    eq rx111_pos, -1, rx111_fail
    jump $I10
  rx111_done:
    rx111_cur."!cursor_fail"()
    if_null rx111_debug, debug_147
    rx111_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_147:
    .return (rx111_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("44_1294592798.608") :method
.annotate 'line', 33
    new $P113, "ResizablePMCArray"
    push $P113, ""
    .return ($P113)
.end


.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx120_tgt
    .local int rx120_pos
    .local int rx120_off
    .local int rx120_eos
    .local int rx120_rep
    .local pmc rx120_cur
    .local pmc rx120_debug
    (rx120_cur, rx120_pos, rx120_tgt, $I10) = self."!cursor_start"()
    getattribute rx120_debug, rx120_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx120_cur
    .local pmc match
    .lex "$/", match
    length rx120_eos, rx120_tgt
    gt rx120_pos, rx120_eos, rx120_done
    set rx120_off, 0
    lt rx120_pos, 2, rx120_start
    sub rx120_off, rx120_pos, 1
    substr rx120_tgt, rx120_tgt, rx120_off
  rx120_start:
    eq $I10, 1, rx120_restart
    if_null rx120_debug, debug_148
    rx120_cur."!cursor_debug"("START", "decint")
  debug_148:
    $I10 = self.'from'()
    ne $I10, -1, rxscan123_done
    goto rxscan123_scan
  rxscan123_loop:
    ($P10) = rx120_cur."from"()
    inc $P10
    set rx120_pos, $P10
    ge rx120_pos, rx120_eos, rxscan123_done
  rxscan123_scan:
    set_addr $I10, rxscan123_loop
    rx120_cur."!mark_push"(0, rx120_pos, $I10)
  rxscan123_done:
.annotate 'line', 48
  # rx rxquantr124 ** 1..*
    set_addr $I10, rxquantr124_done
    rx120_cur."!mark_push"(0, -1, $I10)
  rxquantr124_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx120_pos, rx120_off
    find_not_cclass $I11, 8, rx120_tgt, $I10, rx120_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx120_fail
    add rx120_pos, rx120_off, $I11
    set_addr $I10, rxquantr124_done
    (rx120_rep) = rx120_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr124_done
    rx120_cur."!mark_push"(rx120_rep, rx120_pos, $I10)
  # rx literal  "_"
    add $I11, rx120_pos, 1
    gt $I11, rx120_eos, rx120_fail
    sub $I11, rx120_pos, rx120_off
    ord $I11, rx120_tgt, $I11
    ne $I11, 95, rx120_fail
    add rx120_pos, 1
    goto rxquantr124_loop
  rxquantr124_done:
  # rx pass
    rx120_cur."!cursor_pass"(rx120_pos, "decint")
    if_null rx120_debug, debug_149
    rx120_cur."!cursor_debug"("PASS", "decint", " at pos=", rx120_pos)
  debug_149:
    .return (rx120_cur)
  rx120_restart:
.annotate 'line', 33
    if_null rx120_debug, debug_150
    rx120_cur."!cursor_debug"("NEXT", "decint")
  debug_150:
  rx120_fail:
    (rx120_rep, rx120_pos, $I10, $P10) = rx120_cur."!mark_fail"(0)
    lt rx120_pos, -1, rx120_done
    eq rx120_pos, -1, rx120_fail
    jump $I10
  rx120_done:
    rx120_cur."!cursor_fail"()
    if_null rx120_debug, debug_151
    rx120_cur."!cursor_debug"("FAIL", "decint")
  debug_151:
    .return (rx120_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :subid("46_1294592798.608") :method
.annotate 'line', 33
    new $P122, "ResizablePMCArray"
    push $P122, ""
    .return ($P122)
.end


.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    .local pmc rx126_debug
    (rx126_cur, rx126_pos, rx126_tgt, $I10) = self."!cursor_start"()
    rx126_cur."!cursor_caparray"("decint")
    getattribute rx126_debug, rx126_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx126_cur
    .local pmc match
    .lex "$/", match
    length rx126_eos, rx126_tgt
    gt rx126_pos, rx126_eos, rx126_done
    set rx126_off, 0
    lt rx126_pos, 2, rx126_start
    sub rx126_off, rx126_pos, 1
    substr rx126_tgt, rx126_tgt, rx126_off
  rx126_start:
    eq $I10, 1, rx126_restart
    if_null rx126_debug, debug_152
    rx126_cur."!cursor_debug"("START", "decints")
  debug_152:
    $I10 = self.'from'()
    ne $I10, -1, rxscan129_done
    goto rxscan129_scan
  rxscan129_loop:
    ($P10) = rx126_cur."from"()
    inc $P10
    set rx126_pos, $P10
    ge rx126_pos, rx126_eos, rxscan129_done
  rxscan129_scan:
    set_addr $I10, rxscan129_loop
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  rxscan129_done:
.annotate 'line', 49
  # rx rxquantr130 ** 1..*
    set_addr $I10, rxquantr130_done
    rx126_cur."!mark_push"(0, -1, $I10)
  rxquantr130_loop:
  # rx subrule "ws" subtype=method negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."ws"()
    unless $P10, rx126_fail
    rx126_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."decint"()
    unless $P10, rx126_fail
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx126_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."ws"()
    unless $P10, rx126_fail
    rx126_pos = $P10."pos"()
    set_addr $I10, rxquantr130_done
    (rx126_rep) = rx126_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr130_done
    rx126_cur."!mark_push"(rx126_rep, rx126_pos, $I10)
  # rx literal  ","
    add $I11, rx126_pos, 1
    gt $I11, rx126_eos, rx126_fail
    sub $I11, rx126_pos, rx126_off
    ord $I11, rx126_tgt, $I11
    ne $I11, 44, rx126_fail
    add rx126_pos, 1
    goto rxquantr130_loop
  rxquantr130_done:
  # rx pass
    rx126_cur."!cursor_pass"(rx126_pos, "decints")
    if_null rx126_debug, debug_153
    rx126_cur."!cursor_debug"("PASS", "decints", " at pos=", rx126_pos)
  debug_153:
    .return (rx126_cur)
  rx126_restart:
.annotate 'line', 33
    if_null rx126_debug, debug_154
    rx126_cur."!cursor_debug"("NEXT", "decints")
  debug_154:
  rx126_fail:
    (rx126_rep, rx126_pos, $I10, $P10) = rx126_cur."!mark_fail"(0)
    lt rx126_pos, -1, rx126_done
    eq rx126_pos, -1, rx126_fail
    jump $I10
  rx126_done:
    rx126_cur."!cursor_fail"()
    if_null rx126_debug, debug_155
    rx126_cur."!cursor_debug"("FAIL", "decints")
  debug_155:
    .return (rx126_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :subid("48_1294592798.608") :method
.annotate 'line', 33
    new $P128, "ResizablePMCArray"
    push $P128, ""
    .return ($P128)
.end


.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx132_tgt
    .local int rx132_pos
    .local int rx132_off
    .local int rx132_eos
    .local int rx132_rep
    .local pmc rx132_cur
    .local pmc rx132_debug
    (rx132_cur, rx132_pos, rx132_tgt, $I10) = self."!cursor_start"()
    getattribute rx132_debug, rx132_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx132_cur
    .local pmc match
    .lex "$/", match
    length rx132_eos, rx132_tgt
    gt rx132_pos, rx132_eos, rx132_done
    set rx132_off, 0
    lt rx132_pos, 2, rx132_start
    sub rx132_off, rx132_pos, 1
    substr rx132_tgt, rx132_tgt, rx132_off
  rx132_start:
    eq $I10, 1, rx132_restart
    if_null rx132_debug, debug_156
    rx132_cur."!cursor_debug"("START", "hexint")
  debug_156:
    $I10 = self.'from'()
    ne $I10, -1, rxscan135_done
    goto rxscan135_scan
  rxscan135_loop:
    ($P10) = rx132_cur."from"()
    inc $P10
    set rx132_pos, $P10
    ge rx132_pos, rx132_eos, rxscan135_done
  rxscan135_scan:
    set_addr $I10, rxscan135_loop
    rx132_cur."!mark_push"(0, rx132_pos, $I10)
  rxscan135_done:
.annotate 'line', 51
  # rx rxquantr136 ** 1..*
    set_addr $I10, rxquantr136_done
    rx132_cur."!mark_push"(0, -1, $I10)
  rxquantr136_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx132_pos, rx132_off
    set rx132_rep, 0
    sub $I12, rx132_eos, rx132_pos
  rxenumcharlistq137_loop:
    le $I12, 0, rxenumcharlistq137_done
    substr $S10, rx132_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq137_done
    inc rx132_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq137_loop
  rxenumcharlistq137_done:
    lt rx132_rep, 1, rx132_fail
    add rx132_pos, rx132_pos, rx132_rep
    set_addr $I10, rxquantr136_done
    (rx132_rep) = rx132_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr136_done
    rx132_cur."!mark_push"(rx132_rep, rx132_pos, $I10)
  # rx literal  "_"
    add $I11, rx132_pos, 1
    gt $I11, rx132_eos, rx132_fail
    sub $I11, rx132_pos, rx132_off
    ord $I11, rx132_tgt, $I11
    ne $I11, 95, rx132_fail
    add rx132_pos, 1
    goto rxquantr136_loop
  rxquantr136_done:
  # rx pass
    rx132_cur."!cursor_pass"(rx132_pos, "hexint")
    if_null rx132_debug, debug_157
    rx132_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx132_pos)
  debug_157:
    .return (rx132_cur)
  rx132_restart:
.annotate 'line', 33
    if_null rx132_debug, debug_158
    rx132_cur."!cursor_debug"("NEXT", "hexint")
  debug_158:
  rx132_fail:
    (rx132_rep, rx132_pos, $I10, $P10) = rx132_cur."!mark_fail"(0)
    lt rx132_pos, -1, rx132_done
    eq rx132_pos, -1, rx132_fail
    jump $I10
  rx132_done:
    rx132_cur."!cursor_fail"()
    if_null rx132_debug, debug_159
    rx132_cur."!cursor_debug"("FAIL", "hexint")
  debug_159:
    .return (rx132_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("50_1294592798.608") :method
.annotate 'line', 33
    new $P134, "ResizablePMCArray"
    push $P134, ""
    .return ($P134)
.end


.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx139_tgt
    .local int rx139_pos
    .local int rx139_off
    .local int rx139_eos
    .local int rx139_rep
    .local pmc rx139_cur
    .local pmc rx139_debug
    (rx139_cur, rx139_pos, rx139_tgt, $I10) = self."!cursor_start"()
    rx139_cur."!cursor_caparray"("hexint")
    getattribute rx139_debug, rx139_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx139_cur
    .local pmc match
    .lex "$/", match
    length rx139_eos, rx139_tgt
    gt rx139_pos, rx139_eos, rx139_done
    set rx139_off, 0
    lt rx139_pos, 2, rx139_start
    sub rx139_off, rx139_pos, 1
    substr rx139_tgt, rx139_tgt, rx139_off
  rx139_start:
    eq $I10, 1, rx139_restart
    if_null rx139_debug, debug_160
    rx139_cur."!cursor_debug"("START", "hexints")
  debug_160:
    $I10 = self.'from'()
    ne $I10, -1, rxscan142_done
    goto rxscan142_scan
  rxscan142_loop:
    ($P10) = rx139_cur."from"()
    inc $P10
    set rx139_pos, $P10
    ge rx139_pos, rx139_eos, rxscan142_done
  rxscan142_scan:
    set_addr $I10, rxscan142_loop
    rx139_cur."!mark_push"(0, rx139_pos, $I10)
  rxscan142_done:
.annotate 'line', 52
  # rx rxquantr143 ** 1..*
    set_addr $I10, rxquantr143_done
    rx139_cur."!mark_push"(0, -1, $I10)
  rxquantr143_loop:
  # rx subrule "ws" subtype=method negate=
    rx139_cur."!cursor_pos"(rx139_pos)
    $P10 = rx139_cur."ws"()
    unless $P10, rx139_fail
    rx139_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx139_cur."!cursor_pos"(rx139_pos)
    $P10 = rx139_cur."hexint"()
    unless $P10, rx139_fail
    rx139_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx139_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx139_cur."!cursor_pos"(rx139_pos)
    $P10 = rx139_cur."ws"()
    unless $P10, rx139_fail
    rx139_pos = $P10."pos"()
    set_addr $I10, rxquantr143_done
    (rx139_rep) = rx139_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr143_done
    rx139_cur."!mark_push"(rx139_rep, rx139_pos, $I10)
  # rx literal  ","
    add $I11, rx139_pos, 1
    gt $I11, rx139_eos, rx139_fail
    sub $I11, rx139_pos, rx139_off
    ord $I11, rx139_tgt, $I11
    ne $I11, 44, rx139_fail
    add rx139_pos, 1
    goto rxquantr143_loop
  rxquantr143_done:
  # rx pass
    rx139_cur."!cursor_pass"(rx139_pos, "hexints")
    if_null rx139_debug, debug_161
    rx139_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx139_pos)
  debug_161:
    .return (rx139_cur)
  rx139_restart:
.annotate 'line', 33
    if_null rx139_debug, debug_162
    rx139_cur."!cursor_debug"("NEXT", "hexints")
  debug_162:
  rx139_fail:
    (rx139_rep, rx139_pos, $I10, $P10) = rx139_cur."!mark_fail"(0)
    lt rx139_pos, -1, rx139_done
    eq rx139_pos, -1, rx139_fail
    jump $I10
  rx139_done:
    rx139_cur."!cursor_fail"()
    if_null rx139_debug, debug_163
    rx139_cur."!cursor_debug"("FAIL", "hexints")
  debug_163:
    .return (rx139_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("52_1294592798.608") :method
.annotate 'line', 33
    new $P141, "ResizablePMCArray"
    push $P141, ""
    .return ($P141)
.end


.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx145_tgt
    .local int rx145_pos
    .local int rx145_off
    .local int rx145_eos
    .local int rx145_rep
    .local pmc rx145_cur
    .local pmc rx145_debug
    (rx145_cur, rx145_pos, rx145_tgt, $I10) = self."!cursor_start"()
    getattribute rx145_debug, rx145_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx145_cur
    .local pmc match
    .lex "$/", match
    length rx145_eos, rx145_tgt
    gt rx145_pos, rx145_eos, rx145_done
    set rx145_off, 0
    lt rx145_pos, 2, rx145_start
    sub rx145_off, rx145_pos, 1
    substr rx145_tgt, rx145_tgt, rx145_off
  rx145_start:
    eq $I10, 1, rx145_restart
    if_null rx145_debug, debug_164
    rx145_cur."!cursor_debug"("START", "octint")
  debug_164:
    $I10 = self.'from'()
    ne $I10, -1, rxscan148_done
    goto rxscan148_scan
  rxscan148_loop:
    ($P10) = rx145_cur."from"()
    inc $P10
    set rx145_pos, $P10
    ge rx145_pos, rx145_eos, rxscan148_done
  rxscan148_scan:
    set_addr $I10, rxscan148_loop
    rx145_cur."!mark_push"(0, rx145_pos, $I10)
  rxscan148_done:
.annotate 'line', 54
  # rx rxquantr149 ** 1..*
    set_addr $I10, rxquantr149_done
    rx145_cur."!mark_push"(0, -1, $I10)
  rxquantr149_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx145_pos, rx145_off
    set rx145_rep, 0
    sub $I12, rx145_eos, rx145_pos
  rxenumcharlistq150_loop:
    le $I12, 0, rxenumcharlistq150_done
    substr $S10, rx145_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq150_done
    inc rx145_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq150_loop
  rxenumcharlistq150_done:
    lt rx145_rep, 1, rx145_fail
    add rx145_pos, rx145_pos, rx145_rep
    set_addr $I10, rxquantr149_done
    (rx145_rep) = rx145_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr149_done
    rx145_cur."!mark_push"(rx145_rep, rx145_pos, $I10)
  # rx literal  "_"
    add $I11, rx145_pos, 1
    gt $I11, rx145_eos, rx145_fail
    sub $I11, rx145_pos, rx145_off
    ord $I11, rx145_tgt, $I11
    ne $I11, 95, rx145_fail
    add rx145_pos, 1
    goto rxquantr149_loop
  rxquantr149_done:
  # rx pass
    rx145_cur."!cursor_pass"(rx145_pos, "octint")
    if_null rx145_debug, debug_165
    rx145_cur."!cursor_debug"("PASS", "octint", " at pos=", rx145_pos)
  debug_165:
    .return (rx145_cur)
  rx145_restart:
.annotate 'line', 33
    if_null rx145_debug, debug_166
    rx145_cur."!cursor_debug"("NEXT", "octint")
  debug_166:
  rx145_fail:
    (rx145_rep, rx145_pos, $I10, $P10) = rx145_cur."!mark_fail"(0)
    lt rx145_pos, -1, rx145_done
    eq rx145_pos, -1, rx145_fail
    jump $I10
  rx145_done:
    rx145_cur."!cursor_fail"()
    if_null rx145_debug, debug_167
    rx145_cur."!cursor_debug"("FAIL", "octint")
  debug_167:
    .return (rx145_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("54_1294592798.608") :method
.annotate 'line', 33
    new $P147, "ResizablePMCArray"
    push $P147, ""
    .return ($P147)
.end


.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx152_tgt
    .local int rx152_pos
    .local int rx152_off
    .local int rx152_eos
    .local int rx152_rep
    .local pmc rx152_cur
    .local pmc rx152_debug
    (rx152_cur, rx152_pos, rx152_tgt, $I10) = self."!cursor_start"()
    rx152_cur."!cursor_caparray"("octint")
    getattribute rx152_debug, rx152_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx152_cur
    .local pmc match
    .lex "$/", match
    length rx152_eos, rx152_tgt
    gt rx152_pos, rx152_eos, rx152_done
    set rx152_off, 0
    lt rx152_pos, 2, rx152_start
    sub rx152_off, rx152_pos, 1
    substr rx152_tgt, rx152_tgt, rx152_off
  rx152_start:
    eq $I10, 1, rx152_restart
    if_null rx152_debug, debug_168
    rx152_cur."!cursor_debug"("START", "octints")
  debug_168:
    $I10 = self.'from'()
    ne $I10, -1, rxscan155_done
    goto rxscan155_scan
  rxscan155_loop:
    ($P10) = rx152_cur."from"()
    inc $P10
    set rx152_pos, $P10
    ge rx152_pos, rx152_eos, rxscan155_done
  rxscan155_scan:
    set_addr $I10, rxscan155_loop
    rx152_cur."!mark_push"(0, rx152_pos, $I10)
  rxscan155_done:
.annotate 'line', 55
  # rx rxquantr156 ** 1..*
    set_addr $I10, rxquantr156_done
    rx152_cur."!mark_push"(0, -1, $I10)
  rxquantr156_loop:
  # rx subrule "ws" subtype=method negate=
    rx152_cur."!cursor_pos"(rx152_pos)
    $P10 = rx152_cur."ws"()
    unless $P10, rx152_fail
    rx152_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx152_cur."!cursor_pos"(rx152_pos)
    $P10 = rx152_cur."octint"()
    unless $P10, rx152_fail
    rx152_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx152_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx152_cur."!cursor_pos"(rx152_pos)
    $P10 = rx152_cur."ws"()
    unless $P10, rx152_fail
    rx152_pos = $P10."pos"()
    set_addr $I10, rxquantr156_done
    (rx152_rep) = rx152_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr156_done
    rx152_cur."!mark_push"(rx152_rep, rx152_pos, $I10)
  # rx literal  ","
    add $I11, rx152_pos, 1
    gt $I11, rx152_eos, rx152_fail
    sub $I11, rx152_pos, rx152_off
    ord $I11, rx152_tgt, $I11
    ne $I11, 44, rx152_fail
    add rx152_pos, 1
    goto rxquantr156_loop
  rxquantr156_done:
  # rx pass
    rx152_cur."!cursor_pass"(rx152_pos, "octints")
    if_null rx152_debug, debug_169
    rx152_cur."!cursor_debug"("PASS", "octints", " at pos=", rx152_pos)
  debug_169:
    .return (rx152_cur)
  rx152_restart:
.annotate 'line', 33
    if_null rx152_debug, debug_170
    rx152_cur."!cursor_debug"("NEXT", "octints")
  debug_170:
  rx152_fail:
    (rx152_rep, rx152_pos, $I10, $P10) = rx152_cur."!mark_fail"(0)
    lt rx152_pos, -1, rx152_done
    eq rx152_pos, -1, rx152_fail
    jump $I10
  rx152_done:
    rx152_cur."!cursor_fail"()
    if_null rx152_debug, debug_171
    rx152_cur."!cursor_debug"("FAIL", "octints")
  debug_171:
    .return (rx152_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("56_1294592798.608") :method
.annotate 'line', 33
    new $P154, "ResizablePMCArray"
    push $P154, ""
    .return ($P154)
.end


.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx158_tgt
    .local int rx158_pos
    .local int rx158_off
    .local int rx158_eos
    .local int rx158_rep
    .local pmc rx158_cur
    .local pmc rx158_debug
    (rx158_cur, rx158_pos, rx158_tgt, $I10) = self."!cursor_start"()
    getattribute rx158_debug, rx158_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx158_cur
    .local pmc match
    .lex "$/", match
    length rx158_eos, rx158_tgt
    gt rx158_pos, rx158_eos, rx158_done
    set rx158_off, 0
    lt rx158_pos, 2, rx158_start
    sub rx158_off, rx158_pos, 1
    substr rx158_tgt, rx158_tgt, rx158_off
  rx158_start:
    eq $I10, 1, rx158_restart
    if_null rx158_debug, debug_172
    rx158_cur."!cursor_debug"("START", "binint")
  debug_172:
    $I10 = self.'from'()
    ne $I10, -1, rxscan161_done
    goto rxscan161_scan
  rxscan161_loop:
    ($P10) = rx158_cur."from"()
    inc $P10
    set rx158_pos, $P10
    ge rx158_pos, rx158_eos, rxscan161_done
  rxscan161_scan:
    set_addr $I10, rxscan161_loop
    rx158_cur."!mark_push"(0, rx158_pos, $I10)
  rxscan161_done:
.annotate 'line', 57
  # rx rxquantr162 ** 1..*
    set_addr $I10, rxquantr162_done
    rx158_cur."!mark_push"(0, -1, $I10)
  rxquantr162_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx158_pos, rx158_off
    set rx158_rep, 0
    sub $I12, rx158_eos, rx158_pos
  rxenumcharlistq163_loop:
    le $I12, 0, rxenumcharlistq163_done
    substr $S10, rx158_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq163_done
    inc rx158_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq163_loop
  rxenumcharlistq163_done:
    lt rx158_rep, 1, rx158_fail
    add rx158_pos, rx158_pos, rx158_rep
    set_addr $I10, rxquantr162_done
    (rx158_rep) = rx158_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr162_done
    rx158_cur."!mark_push"(rx158_rep, rx158_pos, $I10)
  # rx literal  "_"
    add $I11, rx158_pos, 1
    gt $I11, rx158_eos, rx158_fail
    sub $I11, rx158_pos, rx158_off
    ord $I11, rx158_tgt, $I11
    ne $I11, 95, rx158_fail
    add rx158_pos, 1
    goto rxquantr162_loop
  rxquantr162_done:
  # rx pass
    rx158_cur."!cursor_pass"(rx158_pos, "binint")
    if_null rx158_debug, debug_173
    rx158_cur."!cursor_debug"("PASS", "binint", " at pos=", rx158_pos)
  debug_173:
    .return (rx158_cur)
  rx158_restart:
.annotate 'line', 33
    if_null rx158_debug, debug_174
    rx158_cur."!cursor_debug"("NEXT", "binint")
  debug_174:
  rx158_fail:
    (rx158_rep, rx158_pos, $I10, $P10) = rx158_cur."!mark_fail"(0)
    lt rx158_pos, -1, rx158_done
    eq rx158_pos, -1, rx158_fail
    jump $I10
  rx158_done:
    rx158_cur."!cursor_fail"()
    if_null rx158_debug, debug_175
    rx158_cur."!cursor_debug"("FAIL", "binint")
  debug_175:
    .return (rx158_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :subid("58_1294592798.608") :method
.annotate 'line', 33
    new $P160, "ResizablePMCArray"
    push $P160, ""
    .return ($P160)
.end


.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx165_tgt
    .local int rx165_pos
    .local int rx165_off
    .local int rx165_eos
    .local int rx165_rep
    .local pmc rx165_cur
    .local pmc rx165_debug
    (rx165_cur, rx165_pos, rx165_tgt, $I10) = self."!cursor_start"()
    rx165_cur."!cursor_caparray"("binint")
    getattribute rx165_debug, rx165_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx165_cur
    .local pmc match
    .lex "$/", match
    length rx165_eos, rx165_tgt
    gt rx165_pos, rx165_eos, rx165_done
    set rx165_off, 0
    lt rx165_pos, 2, rx165_start
    sub rx165_off, rx165_pos, 1
    substr rx165_tgt, rx165_tgt, rx165_off
  rx165_start:
    eq $I10, 1, rx165_restart
    if_null rx165_debug, debug_176
    rx165_cur."!cursor_debug"("START", "binints")
  debug_176:
    $I10 = self.'from'()
    ne $I10, -1, rxscan168_done
    goto rxscan168_scan
  rxscan168_loop:
    ($P10) = rx165_cur."from"()
    inc $P10
    set rx165_pos, $P10
    ge rx165_pos, rx165_eos, rxscan168_done
  rxscan168_scan:
    set_addr $I10, rxscan168_loop
    rx165_cur."!mark_push"(0, rx165_pos, $I10)
  rxscan168_done:
.annotate 'line', 58
  # rx rxquantr169 ** 1..*
    set_addr $I10, rxquantr169_done
    rx165_cur."!mark_push"(0, -1, $I10)
  rxquantr169_loop:
  # rx subrule "ws" subtype=method negate=
    rx165_cur."!cursor_pos"(rx165_pos)
    $P10 = rx165_cur."ws"()
    unless $P10, rx165_fail
    rx165_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx165_cur."!cursor_pos"(rx165_pos)
    $P10 = rx165_cur."binint"()
    unless $P10, rx165_fail
    rx165_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx165_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx165_cur."!cursor_pos"(rx165_pos)
    $P10 = rx165_cur."ws"()
    unless $P10, rx165_fail
    rx165_pos = $P10."pos"()
    set_addr $I10, rxquantr169_done
    (rx165_rep) = rx165_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr169_done
    rx165_cur."!mark_push"(rx165_rep, rx165_pos, $I10)
  # rx literal  ","
    add $I11, rx165_pos, 1
    gt $I11, rx165_eos, rx165_fail
    sub $I11, rx165_pos, rx165_off
    ord $I11, rx165_tgt, $I11
    ne $I11, 44, rx165_fail
    add rx165_pos, 1
    goto rxquantr169_loop
  rxquantr169_done:
  # rx pass
    rx165_cur."!cursor_pass"(rx165_pos, "binints")
    if_null rx165_debug, debug_177
    rx165_cur."!cursor_debug"("PASS", "binints", " at pos=", rx165_pos)
  debug_177:
    .return (rx165_cur)
  rx165_restart:
.annotate 'line', 33
    if_null rx165_debug, debug_178
    rx165_cur."!cursor_debug"("NEXT", "binints")
  debug_178:
  rx165_fail:
    (rx165_rep, rx165_pos, $I10, $P10) = rx165_cur."!mark_fail"(0)
    lt rx165_pos, -1, rx165_done
    eq rx165_pos, -1, rx165_fail
    jump $I10
  rx165_done:
    rx165_cur."!cursor_fail"()
    if_null rx165_debug, debug_179
    rx165_cur."!cursor_debug"("FAIL", "binints")
  debug_179:
    .return (rx165_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :subid("60_1294592798.608") :method
.annotate 'line', 33
    new $P167, "ResizablePMCArray"
    push $P167, ""
    .return ($P167)
.end


.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx171_tgt
    .local int rx171_pos
    .local int rx171_off
    .local int rx171_eos
    .local int rx171_rep
    .local pmc rx171_cur
    .local pmc rx171_debug
    (rx171_cur, rx171_pos, rx171_tgt, $I10) = self."!cursor_start"()
    getattribute rx171_debug, rx171_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx171_cur
    .local pmc match
    .lex "$/", match
    length rx171_eos, rx171_tgt
    gt rx171_pos, rx171_eos, rx171_done
    set rx171_off, 0
    lt rx171_pos, 2, rx171_start
    sub rx171_off, rx171_pos, 1
    substr rx171_tgt, rx171_tgt, rx171_off
  rx171_start:
    eq $I10, 1, rx171_restart
    if_null rx171_debug, debug_180
    rx171_cur."!cursor_debug"("START", "integer")
  debug_180:
    $I10 = self.'from'()
    ne $I10, -1, rxscan179_done
    goto rxscan179_scan
  rxscan179_loop:
    ($P10) = rx171_cur."from"()
    inc $P10
    set rx171_pos, $P10
    ge rx171_pos, rx171_eos, rxscan179_done
  rxscan179_scan:
    set_addr $I10, rxscan179_loop
    rx171_cur."!mark_push"(0, rx171_pos, $I10)
  rxscan179_done:
  alt180_0:
.annotate 'line', 61
    set_addr $I10, alt180_1
    rx171_cur."!mark_push"(0, rx171_pos, $I10)
.annotate 'line', 62
  # rx literal  "0"
    add $I11, rx171_pos, 1
    gt $I11, rx171_eos, rx171_fail
    sub $I11, rx171_pos, rx171_off
    ord $I11, rx171_tgt, $I11
    ne $I11, 48, rx171_fail
    add rx171_pos, 1
  alt181_0:
    set_addr $I10, alt181_1
    rx171_cur."!mark_push"(0, rx171_pos, $I10)
  # rx literal  "b"
    add $I11, rx171_pos, 1
    gt $I11, rx171_eos, rx171_fail
    sub $I11, rx171_pos, rx171_off
    ord $I11, rx171_tgt, $I11
    ne $I11, 98, rx171_fail
    add rx171_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx171_cur."!cursor_pos"(rx171_pos)
    $P10 = rx171_cur."binint"()
    unless $P10, rx171_fail
    rx171_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx171_pos = $P10."pos"()
    goto alt181_end
  alt181_1:
    set_addr $I10, alt181_2
    rx171_cur."!mark_push"(0, rx171_pos, $I10)
.annotate 'line', 63
  # rx literal  "o"
    add $I11, rx171_pos, 1
    gt $I11, rx171_eos, rx171_fail
    sub $I11, rx171_pos, rx171_off
    ord $I11, rx171_tgt, $I11
    ne $I11, 111, rx171_fail
    add rx171_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx171_cur."!cursor_pos"(rx171_pos)
    $P10 = rx171_cur."octint"()
    unless $P10, rx171_fail
    rx171_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx171_pos = $P10."pos"()
    goto alt181_end
  alt181_2:
    set_addr $I10, alt181_3
    rx171_cur."!mark_push"(0, rx171_pos, $I10)
.annotate 'line', 64
  # rx literal  "x"
    add $I11, rx171_pos, 1
    gt $I11, rx171_eos, rx171_fail
    sub $I11, rx171_pos, rx171_off
    ord $I11, rx171_tgt, $I11
    ne $I11, 120, rx171_fail
    add rx171_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx171_cur."!cursor_pos"(rx171_pos)
    $P10 = rx171_cur."hexint"()
    unless $P10, rx171_fail
    rx171_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx171_pos = $P10."pos"()
    goto alt181_end
  alt181_3:
.annotate 'line', 65
  # rx literal  "d"
    add $I11, rx171_pos, 1
    gt $I11, rx171_eos, rx171_fail
    sub $I11, rx171_pos, rx171_off
    ord $I11, rx171_tgt, $I11
    ne $I11, 100, rx171_fail
    add rx171_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx171_cur."!cursor_pos"(rx171_pos)
    $P10 = rx171_cur."decint"()
    unless $P10, rx171_fail
    rx171_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx171_pos = $P10."pos"()
  alt181_end:
.annotate 'line', 62
    goto alt180_end
  alt180_1:
.annotate 'line', 67
  # rx subrule "decint" subtype=capture negate=
    rx171_cur."!cursor_pos"(rx171_pos)
    $P10 = rx171_cur."decint"()
    unless $P10, rx171_fail
    rx171_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx171_pos = $P10."pos"()
  alt180_end:
.annotate 'line', 60
  # rx pass
    rx171_cur."!cursor_pass"(rx171_pos, "integer")
    if_null rx171_debug, debug_181
    rx171_cur."!cursor_debug"("PASS", "integer", " at pos=", rx171_pos)
  debug_181:
    .return (rx171_cur)
  rx171_restart:
.annotate 'line', 33
    if_null rx171_debug, debug_182
    rx171_cur."!cursor_debug"("NEXT", "integer")
  debug_182:
  rx171_fail:
    (rx171_rep, rx171_pos, $I10, $P10) = rx171_cur."!mark_fail"(0)
    lt rx171_pos, -1, rx171_done
    eq rx171_pos, -1, rx171_fail
    jump $I10
  rx171_done:
    rx171_cur."!cursor_fail"()
    if_null rx171_debug, debug_183
    rx171_cur."!cursor_debug"("FAIL", "integer")
  debug_183:
    .return (rx171_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("62_1294592798.608") :method
.annotate 'line', 33
    $P173 = self."!PREFIX__!subrule"("decint", "")
    $P174 = self."!PREFIX__!subrule"("decint", "0d")
    $P175 = self."!PREFIX__!subrule"("hexint", "0x")
    $P176 = self."!PREFIX__!subrule"("octint", "0o")
    $P177 = self."!PREFIX__!subrule"("binint", "0b")
    new $P178, "ResizablePMCArray"
    push $P178, $P173
    push $P178, $P174
    push $P178, $P175
    push $P178, $P176
    push $P178, $P177
    .return ($P178)
.end


.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx183_tgt
    .local int rx183_pos
    .local int rx183_off
    .local int rx183_eos
    .local int rx183_rep
    .local pmc rx183_cur
    .local pmc rx183_debug
    (rx183_cur, rx183_pos, rx183_tgt, $I10) = self."!cursor_start"()
    rx183_cur."!cursor_caparray"("escale")
    getattribute rx183_debug, rx183_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx183_cur
    .local pmc match
    .lex "$/", match
    length rx183_eos, rx183_tgt
    gt rx183_pos, rx183_eos, rx183_done
    set rx183_off, 0
    lt rx183_pos, 2, rx183_start
    sub rx183_off, rx183_pos, 1
    substr rx183_tgt, rx183_tgt, rx183_off
  rx183_start:
    eq $I10, 1, rx183_restart
    if_null rx183_debug, debug_184
    rx183_cur."!cursor_debug"("START", "dec_number")
  debug_184:
    $I10 = self.'from'()
    ne $I10, -1, rxscan186_done
    goto rxscan186_scan
  rxscan186_loop:
    ($P10) = rx183_cur."from"()
    inc $P10
    set rx183_pos, $P10
    ge rx183_pos, rx183_eos, rxscan186_done
  rxscan186_scan:
    set_addr $I10, rxscan186_loop
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
  rxscan186_done:
  alt187_0:
.annotate 'line', 71
    set_addr $I10, alt187_1
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
.annotate 'line', 72
  # rx subcapture "coeff"
    set_addr $I10, rxcap_188_fail
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
  # rx literal  "."
    add $I11, rx183_pos, 1
    gt $I11, rx183_eos, rx183_fail
    sub $I11, rx183_pos, rx183_off
    ord $I11, rx183_tgt, $I11
    ne $I11, 46, rx183_fail
    add rx183_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx183_pos, rx183_off
    find_not_cclass $I11, 8, rx183_tgt, $I10, rx183_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx183_fail
    add rx183_pos, rx183_off, $I11
    set_addr $I10, rxcap_188_fail
    ($I12, $I11) = rx183_cur."!mark_peek"($I10)
    rx183_cur."!cursor_pos"($I11)
    ($P10) = rx183_cur."!cursor_start"()
    $P10."!cursor_pass"(rx183_pos, "")
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_188_done
  rxcap_188_fail:
    goto rx183_fail
  rxcap_188_done:
  # rx rxquantr189 ** 0..1
    set_addr $I10, rxquantr189_done
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
  rxquantr189_loop:
  # rx subrule "escale" subtype=capture negate=
    rx183_cur."!cursor_pos"(rx183_pos)
    $P10 = rx183_cur."escale"()
    unless $P10, rx183_fail
    goto rxsubrule190_pass
  rxsubrule190_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx183_fail
  rxsubrule190_pass:
    set_addr $I10, rxsubrule190_back
    rx183_cur."!mark_push"(0, rx183_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx183_pos = $P10."pos"()
    set_addr $I10, rxquantr189_done
    (rx183_rep) = rx183_cur."!mark_commit"($I10)
  rxquantr189_done:
    goto alt187_end
  alt187_1:
    set_addr $I10, alt187_2
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
.annotate 'line', 73
  # rx subcapture "coeff"
    set_addr $I10, rxcap_191_fail
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx183_pos, rx183_off
    find_not_cclass $I11, 8, rx183_tgt, $I10, rx183_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx183_fail
    add rx183_pos, rx183_off, $I11
  # rx literal  "."
    add $I11, rx183_pos, 1
    gt $I11, rx183_eos, rx183_fail
    sub $I11, rx183_pos, rx183_off
    ord $I11, rx183_tgt, $I11
    ne $I11, 46, rx183_fail
    add rx183_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx183_pos, rx183_off
    find_not_cclass $I11, 8, rx183_tgt, $I10, rx183_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx183_fail
    add rx183_pos, rx183_off, $I11
    set_addr $I10, rxcap_191_fail
    ($I12, $I11) = rx183_cur."!mark_peek"($I10)
    rx183_cur."!cursor_pos"($I11)
    ($P10) = rx183_cur."!cursor_start"()
    $P10."!cursor_pass"(rx183_pos, "")
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_191_done
  rxcap_191_fail:
    goto rx183_fail
  rxcap_191_done:
  # rx rxquantr192 ** 0..1
    set_addr $I10, rxquantr192_done
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
  rxquantr192_loop:
  # rx subrule "escale" subtype=capture negate=
    rx183_cur."!cursor_pos"(rx183_pos)
    $P10 = rx183_cur."escale"()
    unless $P10, rx183_fail
    goto rxsubrule193_pass
  rxsubrule193_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx183_fail
  rxsubrule193_pass:
    set_addr $I10, rxsubrule193_back
    rx183_cur."!mark_push"(0, rx183_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx183_pos = $P10."pos"()
    set_addr $I10, rxquantr192_done
    (rx183_rep) = rx183_cur."!mark_commit"($I10)
  rxquantr192_done:
    goto alt187_end
  alt187_2:
.annotate 'line', 74
  # rx subcapture "coeff"
    set_addr $I10, rxcap_194_fail
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx183_pos, rx183_off
    find_not_cclass $I11, 8, rx183_tgt, $I10, rx183_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx183_fail
    add rx183_pos, rx183_off, $I11
    set_addr $I10, rxcap_194_fail
    ($I12, $I11) = rx183_cur."!mark_peek"($I10)
    rx183_cur."!cursor_pos"($I11)
    ($P10) = rx183_cur."!cursor_start"()
    $P10."!cursor_pass"(rx183_pos, "")
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_194_done
  rxcap_194_fail:
    goto rx183_fail
  rxcap_194_done:
  # rx subrule "escale" subtype=capture negate=
    rx183_cur."!cursor_pos"(rx183_pos)
    $P10 = rx183_cur."escale"()
    unless $P10, rx183_fail
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx183_pos = $P10."pos"()
  alt187_end:
.annotate 'line', 71
  # rx pass
    rx183_cur."!cursor_pass"(rx183_pos, "dec_number")
    if_null rx183_debug, debug_185
    rx183_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx183_pos)
  debug_185:
    .return (rx183_cur)
  rx183_restart:
.annotate 'line', 33
    if_null rx183_debug, debug_186
    rx183_cur."!cursor_debug"("NEXT", "dec_number")
  debug_186:
  rx183_fail:
    (rx183_rep, rx183_pos, $I10, $P10) = rx183_cur."!mark_fail"(0)
    lt rx183_pos, -1, rx183_done
    eq rx183_pos, -1, rx183_fail
    jump $I10
  rx183_done:
    rx183_cur."!cursor_fail"()
    if_null rx183_debug, debug_187
    rx183_cur."!cursor_debug"("FAIL", "dec_number")
  debug_187:
    .return (rx183_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :subid("64_1294592798.608") :method
.annotate 'line', 33
    new $P185, "ResizablePMCArray"
    push $P185, ""
    push $P185, ""
    push $P185, "."
    .return ($P185)
.end


.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx196_tgt
    .local int rx196_pos
    .local int rx196_off
    .local int rx196_eos
    .local int rx196_rep
    .local pmc rx196_cur
    .local pmc rx196_debug
    (rx196_cur, rx196_pos, rx196_tgt, $I10) = self."!cursor_start"()
    getattribute rx196_debug, rx196_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx196_cur
    .local pmc match
    .lex "$/", match
    length rx196_eos, rx196_tgt
    gt rx196_pos, rx196_eos, rx196_done
    set rx196_off, 0
    lt rx196_pos, 2, rx196_start
    sub rx196_off, rx196_pos, 1
    substr rx196_tgt, rx196_tgt, rx196_off
  rx196_start:
    eq $I10, 1, rx196_restart
    if_null rx196_debug, debug_188
    rx196_cur."!cursor_debug"("START", "escale")
  debug_188:
    $I10 = self.'from'()
    ne $I10, -1, rxscan199_done
    goto rxscan199_scan
  rxscan199_loop:
    ($P10) = rx196_cur."from"()
    inc $P10
    set rx196_pos, $P10
    ge rx196_pos, rx196_eos, rxscan199_done
  rxscan199_scan:
    set_addr $I10, rxscan199_loop
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
  rxscan199_done:
.annotate 'line', 77
  # rx enumcharlist negate=0 
    ge rx196_pos, rx196_eos, rx196_fail
    sub $I10, rx196_pos, rx196_off
    substr $S10, rx196_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx196_fail
    inc rx196_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx196_pos, rx196_off
    set rx196_rep, 0
    sub $I12, rx196_eos, rx196_pos
    le $I12, 1, rxenumcharlistq200_loop
    set $I12, 1
  rxenumcharlistq200_loop:
    le $I12, 0, rxenumcharlistq200_done
    substr $S10, rx196_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq200_done
    inc rx196_rep
  rxenumcharlistq200_done:
    add rx196_pos, rx196_pos, rx196_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx196_pos, rx196_off
    find_not_cclass $I11, 8, rx196_tgt, $I10, rx196_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx196_fail
    add rx196_pos, rx196_off, $I11
  # rx pass
    rx196_cur."!cursor_pass"(rx196_pos, "escale")
    if_null rx196_debug, debug_189
    rx196_cur."!cursor_debug"("PASS", "escale", " at pos=", rx196_pos)
  debug_189:
    .return (rx196_cur)
  rx196_restart:
.annotate 'line', 33
    if_null rx196_debug, debug_190
    rx196_cur."!cursor_debug"("NEXT", "escale")
  debug_190:
  rx196_fail:
    (rx196_rep, rx196_pos, $I10, $P10) = rx196_cur."!mark_fail"(0)
    lt rx196_pos, -1, rx196_done
    eq rx196_pos, -1, rx196_fail
    jump $I10
  rx196_done:
    rx196_cur."!cursor_fail"()
    if_null rx196_debug, debug_191
    rx196_cur."!cursor_debug"("FAIL", "escale")
  debug_191:
    .return (rx196_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :subid("66_1294592798.608") :method
.annotate 'line', 33
    new $P198, "ResizablePMCArray"
    push $P198, "e"
    push $P198, "E"
    .return ($P198)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1294592798.608") :method
.annotate 'line', 79
    $P202 = self."!protoregex"("quote_escape")
    .return ($P202)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1294592798.608") :method
.annotate 'line', 79
    $P204 = self."!PREFIX__!protoregex"("quote_escape")
    .return ($P204)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx206_tgt
    .local int rx206_pos
    .local int rx206_off
    .local int rx206_eos
    .local int rx206_rep
    .local pmc rx206_cur
    .local pmc rx206_debug
    (rx206_cur, rx206_pos, rx206_tgt, $I10) = self."!cursor_start"()
    getattribute rx206_debug, rx206_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx206_cur
    .local pmc match
    .lex "$/", match
    length rx206_eos, rx206_tgt
    gt rx206_pos, rx206_eos, rx206_done
    set rx206_off, 0
    lt rx206_pos, 2, rx206_start
    sub rx206_off, rx206_pos, 1
    substr rx206_tgt, rx206_tgt, rx206_off
  rx206_start:
    eq $I10, 1, rx206_restart
    if_null rx206_debug, debug_192
    rx206_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_192:
    $I10 = self.'from'()
    ne $I10, -1, rxscan209_done
    goto rxscan209_scan
  rxscan209_loop:
    ($P10) = rx206_cur."from"()
    inc $P10
    set rx206_pos, $P10
    ge rx206_pos, rx206_eos, rxscan209_done
  rxscan209_scan:
    set_addr $I10, rxscan209_loop
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  rxscan209_done:
.annotate 'line', 80
  # rx literal  "\\\\"
    add $I11, rx206_pos, 2
    gt $I11, rx206_eos, rx206_fail
    sub $I11, rx206_pos, rx206_off
    substr $S10, rx206_tgt, $I11, 2
    ne $S10, "\\\\", rx206_fail
    add rx206_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx206_cur."!cursor_pos"(rx206_pos)
    $P10 = rx206_cur."quotemod_check"("q")
    unless $P10, rx206_fail
  # rx pass
    rx206_cur."!cursor_pass"(rx206_pos, "quote_escape:sym<backslash>")
    if_null rx206_debug, debug_193
    rx206_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx206_pos)
  debug_193:
    .return (rx206_cur)
  rx206_restart:
.annotate 'line', 33
    if_null rx206_debug, debug_194
    rx206_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_194:
  rx206_fail:
    (rx206_rep, rx206_pos, $I10, $P10) = rx206_cur."!mark_fail"(0)
    lt rx206_pos, -1, rx206_done
    eq rx206_pos, -1, rx206_fail
    jump $I10
  rx206_done:
    rx206_cur."!cursor_fail"()
    if_null rx206_debug, debug_195
    rx206_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_195:
    .return (rx206_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("70_1294592798.608") :method
.annotate 'line', 33
    new $P208, "ResizablePMCArray"
    push $P208, "\\\\"
    .return ($P208)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx211_tgt
    .local int rx211_pos
    .local int rx211_off
    .local int rx211_eos
    .local int rx211_rep
    .local pmc rx211_cur
    .local pmc rx211_debug
    (rx211_cur, rx211_pos, rx211_tgt, $I10) = self."!cursor_start"()
    getattribute rx211_debug, rx211_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx211_cur
    .local pmc match
    .lex "$/", match
    length rx211_eos, rx211_tgt
    gt rx211_pos, rx211_eos, rx211_done
    set rx211_off, 0
    lt rx211_pos, 2, rx211_start
    sub rx211_off, rx211_pos, 1
    substr rx211_tgt, rx211_tgt, rx211_off
  rx211_start:
    eq $I10, 1, rx211_restart
    if_null rx211_debug, debug_196
    rx211_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_196:
    $I10 = self.'from'()
    ne $I10, -1, rxscan214_done
    goto rxscan214_scan
  rxscan214_loop:
    ($P10) = rx211_cur."from"()
    inc $P10
    set rx211_pos, $P10
    ge rx211_pos, rx211_eos, rxscan214_done
  rxscan214_scan:
    set_addr $I10, rxscan214_loop
    rx211_cur."!mark_push"(0, rx211_pos, $I10)
  rxscan214_done:
.annotate 'line', 81
  # rx literal  "\\"
    add $I11, rx211_pos, 1
    gt $I11, rx211_eos, rx211_fail
    sub $I11, rx211_pos, rx211_off
    ord $I11, rx211_tgt, $I11
    ne $I11, 92, rx211_fail
    add rx211_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."quotemod_check"("q")
    unless $P10, rx211_fail
  # rx subrule "stopper" subtype=capture negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."stopper"()
    unless $P10, rx211_fail
    rx211_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx211_pos = $P10."pos"()
  # rx pass
    rx211_cur."!cursor_pass"(rx211_pos, "quote_escape:sym<stopper>")
    if_null rx211_debug, debug_197
    rx211_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx211_pos)
  debug_197:
    .return (rx211_cur)
  rx211_restart:
.annotate 'line', 33
    if_null rx211_debug, debug_198
    rx211_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_198:
  rx211_fail:
    (rx211_rep, rx211_pos, $I10, $P10) = rx211_cur."!mark_fail"(0)
    lt rx211_pos, -1, rx211_done
    eq rx211_pos, -1, rx211_fail
    jump $I10
  rx211_done:
    rx211_cur."!cursor_fail"()
    if_null rx211_debug, debug_199
    rx211_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_199:
    .return (rx211_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("72_1294592798.608") :method
.annotate 'line', 33
    new $P213, "ResizablePMCArray"
    push $P213, "\\"
    .return ($P213)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx216_tgt
    .local int rx216_pos
    .local int rx216_off
    .local int rx216_eos
    .local int rx216_rep
    .local pmc rx216_cur
    .local pmc rx216_debug
    (rx216_cur, rx216_pos, rx216_tgt, $I10) = self."!cursor_start"()
    getattribute rx216_debug, rx216_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx216_cur
    .local pmc match
    .lex "$/", match
    length rx216_eos, rx216_tgt
    gt rx216_pos, rx216_eos, rx216_done
    set rx216_off, 0
    lt rx216_pos, 2, rx216_start
    sub rx216_off, rx216_pos, 1
    substr rx216_tgt, rx216_tgt, rx216_off
  rx216_start:
    eq $I10, 1, rx216_restart
    if_null rx216_debug, debug_200
    rx216_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_200:
    $I10 = self.'from'()
    ne $I10, -1, rxscan219_done
    goto rxscan219_scan
  rxscan219_loop:
    ($P10) = rx216_cur."from"()
    inc $P10
    set rx216_pos, $P10
    ge rx216_pos, rx216_eos, rxscan219_done
  rxscan219_scan:
    set_addr $I10, rxscan219_loop
    rx216_cur."!mark_push"(0, rx216_pos, $I10)
  rxscan219_done:
.annotate 'line', 83
  # rx literal  "\\b"
    add $I11, rx216_pos, 2
    gt $I11, rx216_eos, rx216_fail
    sub $I11, rx216_pos, rx216_off
    substr $S10, rx216_tgt, $I11, 2
    ne $S10, "\\b", rx216_fail
    add rx216_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx216_cur."!cursor_pos"(rx216_pos)
    $P10 = rx216_cur."quotemod_check"("b")
    unless $P10, rx216_fail
  # rx pass
    rx216_cur."!cursor_pass"(rx216_pos, "quote_escape:sym<bs>")
    if_null rx216_debug, debug_201
    rx216_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx216_pos)
  debug_201:
    .return (rx216_cur)
  rx216_restart:
.annotate 'line', 33
    if_null rx216_debug, debug_202
    rx216_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_202:
  rx216_fail:
    (rx216_rep, rx216_pos, $I10, $P10) = rx216_cur."!mark_fail"(0)
    lt rx216_pos, -1, rx216_done
    eq rx216_pos, -1, rx216_fail
    jump $I10
  rx216_done:
    rx216_cur."!cursor_fail"()
    if_null rx216_debug, debug_203
    rx216_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_203:
    .return (rx216_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("74_1294592798.608") :method
.annotate 'line', 33
    new $P218, "ResizablePMCArray"
    push $P218, "\\b"
    .return ($P218)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx221_tgt
    .local int rx221_pos
    .local int rx221_off
    .local int rx221_eos
    .local int rx221_rep
    .local pmc rx221_cur
    .local pmc rx221_debug
    (rx221_cur, rx221_pos, rx221_tgt, $I10) = self."!cursor_start"()
    getattribute rx221_debug, rx221_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx221_cur
    .local pmc match
    .lex "$/", match
    length rx221_eos, rx221_tgt
    gt rx221_pos, rx221_eos, rx221_done
    set rx221_off, 0
    lt rx221_pos, 2, rx221_start
    sub rx221_off, rx221_pos, 1
    substr rx221_tgt, rx221_tgt, rx221_off
  rx221_start:
    eq $I10, 1, rx221_restart
    if_null rx221_debug, debug_204
    rx221_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_204:
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
.annotate 'line', 84
  # rx literal  "\\n"
    add $I11, rx221_pos, 2
    gt $I11, rx221_eos, rx221_fail
    sub $I11, rx221_pos, rx221_off
    substr $S10, rx221_tgt, $I11, 2
    ne $S10, "\\n", rx221_fail
    add rx221_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx221_cur."!cursor_pos"(rx221_pos)
    $P10 = rx221_cur."quotemod_check"("b")
    unless $P10, rx221_fail
  # rx pass
    rx221_cur."!cursor_pass"(rx221_pos, "quote_escape:sym<nl>")
    if_null rx221_debug, debug_205
    rx221_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx221_pos)
  debug_205:
    .return (rx221_cur)
  rx221_restart:
.annotate 'line', 33
    if_null rx221_debug, debug_206
    rx221_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_206:
  rx221_fail:
    (rx221_rep, rx221_pos, $I10, $P10) = rx221_cur."!mark_fail"(0)
    lt rx221_pos, -1, rx221_done
    eq rx221_pos, -1, rx221_fail
    jump $I10
  rx221_done:
    rx221_cur."!cursor_fail"()
    if_null rx221_debug, debug_207
    rx221_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_207:
    .return (rx221_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("76_1294592798.608") :method
.annotate 'line', 33
    new $P223, "ResizablePMCArray"
    push $P223, "\\n"
    .return ($P223)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx226_tgt
    .local int rx226_pos
    .local int rx226_off
    .local int rx226_eos
    .local int rx226_rep
    .local pmc rx226_cur
    .local pmc rx226_debug
    (rx226_cur, rx226_pos, rx226_tgt, $I10) = self."!cursor_start"()
    getattribute rx226_debug, rx226_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx226_cur
    .local pmc match
    .lex "$/", match
    length rx226_eos, rx226_tgt
    gt rx226_pos, rx226_eos, rx226_done
    set rx226_off, 0
    lt rx226_pos, 2, rx226_start
    sub rx226_off, rx226_pos, 1
    substr rx226_tgt, rx226_tgt, rx226_off
  rx226_start:
    eq $I10, 1, rx226_restart
    if_null rx226_debug, debug_208
    rx226_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_208:
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
.annotate 'line', 85
  # rx literal  "\\r"
    add $I11, rx226_pos, 2
    gt $I11, rx226_eos, rx226_fail
    sub $I11, rx226_pos, rx226_off
    substr $S10, rx226_tgt, $I11, 2
    ne $S10, "\\r", rx226_fail
    add rx226_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx226_cur."!cursor_pos"(rx226_pos)
    $P10 = rx226_cur."quotemod_check"("b")
    unless $P10, rx226_fail
  # rx pass
    rx226_cur."!cursor_pass"(rx226_pos, "quote_escape:sym<cr>")
    if_null rx226_debug, debug_209
    rx226_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx226_pos)
  debug_209:
    .return (rx226_cur)
  rx226_restart:
.annotate 'line', 33
    if_null rx226_debug, debug_210
    rx226_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_210:
  rx226_fail:
    (rx226_rep, rx226_pos, $I10, $P10) = rx226_cur."!mark_fail"(0)
    lt rx226_pos, -1, rx226_done
    eq rx226_pos, -1, rx226_fail
    jump $I10
  rx226_done:
    rx226_cur."!cursor_fail"()
    if_null rx226_debug, debug_211
    rx226_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_211:
    .return (rx226_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("78_1294592798.608") :method
.annotate 'line', 33
    new $P228, "ResizablePMCArray"
    push $P228, "\\r"
    .return ($P228)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx231_tgt
    .local int rx231_pos
    .local int rx231_off
    .local int rx231_eos
    .local int rx231_rep
    .local pmc rx231_cur
    .local pmc rx231_debug
    (rx231_cur, rx231_pos, rx231_tgt, $I10) = self."!cursor_start"()
    getattribute rx231_debug, rx231_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx231_cur
    .local pmc match
    .lex "$/", match
    length rx231_eos, rx231_tgt
    gt rx231_pos, rx231_eos, rx231_done
    set rx231_off, 0
    lt rx231_pos, 2, rx231_start
    sub rx231_off, rx231_pos, 1
    substr rx231_tgt, rx231_tgt, rx231_off
  rx231_start:
    eq $I10, 1, rx231_restart
    if_null rx231_debug, debug_212
    rx231_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_212:
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
.annotate 'line', 86
  # rx literal  "\\t"
    add $I11, rx231_pos, 2
    gt $I11, rx231_eos, rx231_fail
    sub $I11, rx231_pos, rx231_off
    substr $S10, rx231_tgt, $I11, 2
    ne $S10, "\\t", rx231_fail
    add rx231_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx231_cur."!cursor_pos"(rx231_pos)
    $P10 = rx231_cur."quotemod_check"("b")
    unless $P10, rx231_fail
  # rx pass
    rx231_cur."!cursor_pass"(rx231_pos, "quote_escape:sym<tab>")
    if_null rx231_debug, debug_213
    rx231_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx231_pos)
  debug_213:
    .return (rx231_cur)
  rx231_restart:
.annotate 'line', 33
    if_null rx231_debug, debug_214
    rx231_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_214:
  rx231_fail:
    (rx231_rep, rx231_pos, $I10, $P10) = rx231_cur."!mark_fail"(0)
    lt rx231_pos, -1, rx231_done
    eq rx231_pos, -1, rx231_fail
    jump $I10
  rx231_done:
    rx231_cur."!cursor_fail"()
    if_null rx231_debug, debug_215
    rx231_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_215:
    .return (rx231_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("80_1294592798.608") :method
.annotate 'line', 33
    new $P233, "ResizablePMCArray"
    push $P233, "\\t"
    .return ($P233)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx236_tgt
    .local int rx236_pos
    .local int rx236_off
    .local int rx236_eos
    .local int rx236_rep
    .local pmc rx236_cur
    .local pmc rx236_debug
    (rx236_cur, rx236_pos, rx236_tgt, $I10) = self."!cursor_start"()
    getattribute rx236_debug, rx236_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx236_cur
    .local pmc match
    .lex "$/", match
    length rx236_eos, rx236_tgt
    gt rx236_pos, rx236_eos, rx236_done
    set rx236_off, 0
    lt rx236_pos, 2, rx236_start
    sub rx236_off, rx236_pos, 1
    substr rx236_tgt, rx236_tgt, rx236_off
  rx236_start:
    eq $I10, 1, rx236_restart
    if_null rx236_debug, debug_216
    rx236_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_216:
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
.annotate 'line', 87
  # rx literal  "\\f"
    add $I11, rx236_pos, 2
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 2
    ne $S10, "\\f", rx236_fail
    add rx236_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."quotemod_check"("b")
    unless $P10, rx236_fail
  # rx pass
    rx236_cur."!cursor_pass"(rx236_pos, "quote_escape:sym<ff>")
    if_null rx236_debug, debug_217
    rx236_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx236_pos)
  debug_217:
    .return (rx236_cur)
  rx236_restart:
.annotate 'line', 33
    if_null rx236_debug, debug_218
    rx236_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_218:
  rx236_fail:
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    if_null rx236_debug, debug_219
    rx236_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_219:
    .return (rx236_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :subid("82_1294592798.608") :method
.annotate 'line', 33
    new $P238, "ResizablePMCArray"
    push $P238, "\\f"
    .return ($P238)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx241_tgt
    .local int rx241_pos
    .local int rx241_off
    .local int rx241_eos
    .local int rx241_rep
    .local pmc rx241_cur
    .local pmc rx241_debug
    (rx241_cur, rx241_pos, rx241_tgt, $I10) = self."!cursor_start"()
    getattribute rx241_debug, rx241_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx241_cur
    .local pmc match
    .lex "$/", match
    length rx241_eos, rx241_tgt
    gt rx241_pos, rx241_eos, rx241_done
    set rx241_off, 0
    lt rx241_pos, 2, rx241_start
    sub rx241_off, rx241_pos, 1
    substr rx241_tgt, rx241_tgt, rx241_off
  rx241_start:
    eq $I10, 1, rx241_restart
    if_null rx241_debug, debug_220
    rx241_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_220:
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
.annotate 'line', 88
  # rx literal  "\\e"
    add $I11, rx241_pos, 2
    gt $I11, rx241_eos, rx241_fail
    sub $I11, rx241_pos, rx241_off
    substr $S10, rx241_tgt, $I11, 2
    ne $S10, "\\e", rx241_fail
    add rx241_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx241_cur."!cursor_pos"(rx241_pos)
    $P10 = rx241_cur."quotemod_check"("b")
    unless $P10, rx241_fail
  # rx pass
    rx241_cur."!cursor_pass"(rx241_pos, "quote_escape:sym<esc>")
    if_null rx241_debug, debug_221
    rx241_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx241_pos)
  debug_221:
    .return (rx241_cur)
  rx241_restart:
.annotate 'line', 33
    if_null rx241_debug, debug_222
    rx241_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_222:
  rx241_fail:
    (rx241_rep, rx241_pos, $I10, $P10) = rx241_cur."!mark_fail"(0)
    lt rx241_pos, -1, rx241_done
    eq rx241_pos, -1, rx241_fail
    jump $I10
  rx241_done:
    rx241_cur."!cursor_fail"()
    if_null rx241_debug, debug_223
    rx241_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_223:
    .return (rx241_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("84_1294592798.608") :method
.annotate 'line', 33
    new $P243, "ResizablePMCArray"
    push $P243, "\\e"
    .return ($P243)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx246_tgt
    .local int rx246_pos
    .local int rx246_off
    .local int rx246_eos
    .local int rx246_rep
    .local pmc rx246_cur
    .local pmc rx246_debug
    (rx246_cur, rx246_pos, rx246_tgt, $I10) = self."!cursor_start"()
    getattribute rx246_debug, rx246_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx246_cur
    .local pmc match
    .lex "$/", match
    length rx246_eos, rx246_tgt
    gt rx246_pos, rx246_eos, rx246_done
    set rx246_off, 0
    lt rx246_pos, 2, rx246_start
    sub rx246_off, rx246_pos, 1
    substr rx246_tgt, rx246_tgt, rx246_off
  rx246_start:
    eq $I10, 1, rx246_restart
    if_null rx246_debug, debug_224
    rx246_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_224:
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
.annotate 'line', 90
  # rx literal  unicode:"\\x"
    add $I11, rx246_pos, 2
    gt $I11, rx246_eos, rx246_fail
    sub $I11, rx246_pos, rx246_off
    substr $S10, rx246_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx246_fail
    add rx246_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."quotemod_check"("b")
    unless $P10, rx246_fail
  alt250_0:
.annotate 'line', 91
    set_addr $I10, alt250_1
    rx246_cur."!mark_push"(0, rx246_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."hexint"()
    unless $P10, rx246_fail
    rx246_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx246_pos = $P10."pos"()
    goto alt250_end
  alt250_1:
  # rx literal  "["
    add $I11, rx246_pos, 1
    gt $I11, rx246_eos, rx246_fail
    sub $I11, rx246_pos, rx246_off
    ord $I11, rx246_tgt, $I11
    ne $I11, 91, rx246_fail
    add rx246_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."hexints"()
    unless $P10, rx246_fail
    rx246_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx246_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx246_pos, 1
    gt $I11, rx246_eos, rx246_fail
    sub $I11, rx246_pos, rx246_off
    ord $I11, rx246_tgt, $I11
    ne $I11, 93, rx246_fail
    add rx246_pos, 1
  alt250_end:
.annotate 'line', 89
  # rx pass
    rx246_cur."!cursor_pass"(rx246_pos, "quote_escape:sym<hex>")
    if_null rx246_debug, debug_225
    rx246_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx246_pos)
  debug_225:
    .return (rx246_cur)
  rx246_restart:
.annotate 'line', 33
    if_null rx246_debug, debug_226
    rx246_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_226:
  rx246_fail:
    (rx246_rep, rx246_pos, $I10, $P10) = rx246_cur."!mark_fail"(0)
    lt rx246_pos, -1, rx246_done
    eq rx246_pos, -1, rx246_fail
    jump $I10
  rx246_done:
    rx246_cur."!cursor_fail"()
    if_null rx246_debug, debug_227
    rx246_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_227:
    .return (rx246_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("86_1294592798.608") :method
.annotate 'line', 33
    new $P248, "ResizablePMCArray"
    push $P248, unicode:"\\x"
    .return ($P248)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx252_tgt
    .local int rx252_pos
    .local int rx252_off
    .local int rx252_eos
    .local int rx252_rep
    .local pmc rx252_cur
    .local pmc rx252_debug
    (rx252_cur, rx252_pos, rx252_tgt, $I10) = self."!cursor_start"()
    getattribute rx252_debug, rx252_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx252_cur
    .local pmc match
    .lex "$/", match
    length rx252_eos, rx252_tgt
    gt rx252_pos, rx252_eos, rx252_done
    set rx252_off, 0
    lt rx252_pos, 2, rx252_start
    sub rx252_off, rx252_pos, 1
    substr rx252_tgt, rx252_tgt, rx252_off
  rx252_start:
    eq $I10, 1, rx252_restart
    if_null rx252_debug, debug_228
    rx252_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_228:
    $I10 = self.'from'()
    ne $I10, -1, rxscan255_done
    goto rxscan255_scan
  rxscan255_loop:
    ($P10) = rx252_cur."from"()
    inc $P10
    set rx252_pos, $P10
    ge rx252_pos, rx252_eos, rxscan255_done
  rxscan255_scan:
    set_addr $I10, rxscan255_loop
    rx252_cur."!mark_push"(0, rx252_pos, $I10)
  rxscan255_done:
.annotate 'line', 94
  # rx literal  "\\o"
    add $I11, rx252_pos, 2
    gt $I11, rx252_eos, rx252_fail
    sub $I11, rx252_pos, rx252_off
    substr $S10, rx252_tgt, $I11, 2
    ne $S10, "\\o", rx252_fail
    add rx252_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx252_cur."!cursor_pos"(rx252_pos)
    $P10 = rx252_cur."quotemod_check"("b")
    unless $P10, rx252_fail
  alt256_0:
.annotate 'line', 95
    set_addr $I10, alt256_1
    rx252_cur."!mark_push"(0, rx252_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx252_cur."!cursor_pos"(rx252_pos)
    $P10 = rx252_cur."octint"()
    unless $P10, rx252_fail
    rx252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx252_pos = $P10."pos"()
    goto alt256_end
  alt256_1:
  # rx literal  "["
    add $I11, rx252_pos, 1
    gt $I11, rx252_eos, rx252_fail
    sub $I11, rx252_pos, rx252_off
    ord $I11, rx252_tgt, $I11
    ne $I11, 91, rx252_fail
    add rx252_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx252_cur."!cursor_pos"(rx252_pos)
    $P10 = rx252_cur."octints"()
    unless $P10, rx252_fail
    rx252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx252_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx252_pos, 1
    gt $I11, rx252_eos, rx252_fail
    sub $I11, rx252_pos, rx252_off
    ord $I11, rx252_tgt, $I11
    ne $I11, 93, rx252_fail
    add rx252_pos, 1
  alt256_end:
.annotate 'line', 93
  # rx pass
    rx252_cur."!cursor_pass"(rx252_pos, "quote_escape:sym<oct>")
    if_null rx252_debug, debug_229
    rx252_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx252_pos)
  debug_229:
    .return (rx252_cur)
  rx252_restart:
.annotate 'line', 33
    if_null rx252_debug, debug_230
    rx252_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_230:
  rx252_fail:
    (rx252_rep, rx252_pos, $I10, $P10) = rx252_cur."!mark_fail"(0)
    lt rx252_pos, -1, rx252_done
    eq rx252_pos, -1, rx252_fail
    jump $I10
  rx252_done:
    rx252_cur."!cursor_fail"()
    if_null rx252_debug, debug_231
    rx252_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_231:
    .return (rx252_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("88_1294592798.608") :method
.annotate 'line', 33
    new $P254, "ResizablePMCArray"
    push $P254, "\\o"
    .return ($P254)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx258_tgt
    .local int rx258_pos
    .local int rx258_off
    .local int rx258_eos
    .local int rx258_rep
    .local pmc rx258_cur
    .local pmc rx258_debug
    (rx258_cur, rx258_pos, rx258_tgt, $I10) = self."!cursor_start"()
    getattribute rx258_debug, rx258_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx258_cur
    .local pmc match
    .lex "$/", match
    length rx258_eos, rx258_tgt
    gt rx258_pos, rx258_eos, rx258_done
    set rx258_off, 0
    lt rx258_pos, 2, rx258_start
    sub rx258_off, rx258_pos, 1
    substr rx258_tgt, rx258_tgt, rx258_off
  rx258_start:
    eq $I10, 1, rx258_restart
    if_null rx258_debug, debug_232
    rx258_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_232:
    $I10 = self.'from'()
    ne $I10, -1, rxscan261_done
    goto rxscan261_scan
  rxscan261_loop:
    ($P10) = rx258_cur."from"()
    inc $P10
    set rx258_pos, $P10
    ge rx258_pos, rx258_eos, rxscan261_done
  rxscan261_scan:
    set_addr $I10, rxscan261_loop
    rx258_cur."!mark_push"(0, rx258_pos, $I10)
  rxscan261_done:
.annotate 'line', 97
  # rx literal  "\\c"
    add $I11, rx258_pos, 2
    gt $I11, rx258_eos, rx258_fail
    sub $I11, rx258_pos, rx258_off
    substr $S10, rx258_tgt, $I11, 2
    ne $S10, "\\c", rx258_fail
    add rx258_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx258_cur."!cursor_pos"(rx258_pos)
    $P10 = rx258_cur."quotemod_check"("b")
    unless $P10, rx258_fail
  # rx subrule "charspec" subtype=capture negate=
    rx258_cur."!cursor_pos"(rx258_pos)
    $P10 = rx258_cur."charspec"()
    unless $P10, rx258_fail
    rx258_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx258_pos = $P10."pos"()
  # rx pass
    rx258_cur."!cursor_pass"(rx258_pos, "quote_escape:sym<chr>")
    if_null rx258_debug, debug_233
    rx258_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx258_pos)
  debug_233:
    .return (rx258_cur)
  rx258_restart:
.annotate 'line', 33
    if_null rx258_debug, debug_234
    rx258_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_234:
  rx258_fail:
    (rx258_rep, rx258_pos, $I10, $P10) = rx258_cur."!mark_fail"(0)
    lt rx258_pos, -1, rx258_done
    eq rx258_pos, -1, rx258_fail
    jump $I10
  rx258_done:
    rx258_cur."!cursor_fail"()
    if_null rx258_debug, debug_235
    rx258_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_235:
    .return (rx258_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("90_1294592798.608") :method
.annotate 'line', 33
    new $P260, "ResizablePMCArray"
    push $P260, "\\c"
    .return ($P260)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx263_tgt
    .local int rx263_pos
    .local int rx263_off
    .local int rx263_eos
    .local int rx263_rep
    .local pmc rx263_cur
    .local pmc rx263_debug
    (rx263_cur, rx263_pos, rx263_tgt, $I10) = self."!cursor_start"()
    getattribute rx263_debug, rx263_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx263_cur
    .local pmc match
    .lex "$/", match
    length rx263_eos, rx263_tgt
    gt rx263_pos, rx263_eos, rx263_done
    set rx263_off, 0
    lt rx263_pos, 2, rx263_start
    sub rx263_off, rx263_pos, 1
    substr rx263_tgt, rx263_tgt, rx263_off
  rx263_start:
    eq $I10, 1, rx263_restart
    if_null rx263_debug, debug_236
    rx263_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_236:
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
.annotate 'line', 98
  # rx literal  "\\"
    add $I11, rx263_pos, 1
    gt $I11, rx263_eos, rx263_fail
    sub $I11, rx263_pos, rx263_off
    ord $I11, rx263_tgt, $I11
    ne $I11, 92, rx263_fail
    add rx263_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_267_fail
    rx263_cur."!mark_push"(0, rx263_pos, $I10)
  # rx literal  "0"
    add $I11, rx263_pos, 1
    gt $I11, rx263_eos, rx263_fail
    sub $I11, rx263_pos, rx263_off
    ord $I11, rx263_tgt, $I11
    ne $I11, 48, rx263_fail
    add rx263_pos, 1
    set_addr $I10, rxcap_267_fail
    ($I12, $I11) = rx263_cur."!mark_peek"($I10)
    rx263_cur."!cursor_pos"($I11)
    ($P10) = rx263_cur."!cursor_start"()
    $P10."!cursor_pass"(rx263_pos, "")
    rx263_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_267_done
  rxcap_267_fail:
    goto rx263_fail
  rxcap_267_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx263_cur."!cursor_pos"(rx263_pos)
    $P10 = rx263_cur."quotemod_check"("b")
    unless $P10, rx263_fail
  # rx pass
    rx263_cur."!cursor_pass"(rx263_pos, "quote_escape:sym<0>")
    if_null rx263_debug, debug_237
    rx263_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx263_pos)
  debug_237:
    .return (rx263_cur)
  rx263_restart:
.annotate 'line', 33
    if_null rx263_debug, debug_238
    rx263_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_238:
  rx263_fail:
    (rx263_rep, rx263_pos, $I10, $P10) = rx263_cur."!mark_fail"(0)
    lt rx263_pos, -1, rx263_done
    eq rx263_pos, -1, rx263_fail
    jump $I10
  rx263_done:
    rx263_cur."!cursor_fail"()
    if_null rx263_debug, debug_239
    rx263_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_239:
    .return (rx263_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :subid("92_1294592798.608") :method
.annotate 'line', 33
    new $P265, "ResizablePMCArray"
    push $P265, "\\0"
    .return ($P265)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .const 'Sub' $P288 = "97_1294592798.608" 
    capture_lex $P288
    .const 'Sub' $P281 = "96_1294592798.608" 
    capture_lex $P281
    .const 'Sub' $P276 = "95_1294592798.608" 
    capture_lex $P276
    .local string rx269_tgt
    .local int rx269_pos
    .local int rx269_off
    .local int rx269_eos
    .local int rx269_rep
    .local pmc rx269_cur
    .local pmc rx269_debug
    (rx269_cur, rx269_pos, rx269_tgt, $I10) = self."!cursor_start"()
    getattribute rx269_debug, rx269_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx269_cur
    .local pmc match
    .lex "$/", match
    length rx269_eos, rx269_tgt
    gt rx269_pos, rx269_eos, rx269_done
    set rx269_off, 0
    lt rx269_pos, 2, rx269_start
    sub rx269_off, rx269_pos, 1
    substr rx269_tgt, rx269_tgt, rx269_off
  rx269_start:
    eq $I10, 1, rx269_restart
    if_null rx269_debug, debug_240
    rx269_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_240:
    $I10 = self.'from'()
    ne $I10, -1, rxscan272_done
    goto rxscan272_scan
  rxscan272_loop:
    ($P10) = rx269_cur."from"()
    inc $P10
    set rx269_pos, $P10
    ge rx269_pos, rx269_eos, rxscan272_done
  rxscan272_scan:
    set_addr $I10, rxscan272_loop
    rx269_cur."!mark_push"(0, rx269_pos, $I10)
  rxscan272_done:
.annotate 'line', 100
    rx269_cur."!cursor_pos"(rx269_pos)
    find_lex $P273, unicode:"$\x{a2}"
    $P274 = $P273."MATCH"()
    store_lex "$/", $P274
    .const 'Sub' $P276 = "95_1294592798.608" 
    capture_lex $P276
    $P277 = $P276()
  # rx literal  "\\"
    add $I11, rx269_pos, 1
    gt $I11, rx269_eos, rx269_fail
    sub $I11, rx269_pos, rx269_off
    ord $I11, rx269_tgt, $I11
    ne $I11, 92, rx269_fail
    add rx269_pos, 1
  alt278_0:
.annotate 'line', 101
    set_addr $I10, alt278_1
    rx269_cur."!mark_push"(0, rx269_pos, $I10)
.annotate 'line', 102
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx269_cur."!cursor_pos"(rx269_pos)
    $P10 = rx269_cur."quotemod_check"("b")
    unless $P10, rx269_fail
  alt279_0:
.annotate 'line', 103
    set_addr $I10, alt279_1
    rx269_cur."!mark_push"(0, rx269_pos, $I10)
.annotate 'line', 104
  # rx subrule $P281 subtype=capture negate=
    rx269_cur."!cursor_pos"(rx269_pos)
    .const 'Sub' $P281 = "96_1294592798.608" 
    capture_lex $P281
    $P10 = rx269_cur.$P281()
    unless $P10, rx269_fail
    rx269_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx269_pos = $P10."pos"()
    goto alt279_end
  alt279_1:
.annotate 'line', 105
  # rx subcapture "x"
    set_addr $I10, rxcap_284_fail
    rx269_cur."!mark_push"(0, rx269_pos, $I10)
  # rx charclass w
    ge rx269_pos, rx269_eos, rx269_fail
    sub $I10, rx269_pos, rx269_off
    is_cclass $I11, 8192, rx269_tgt, $I10
    unless $I11, rx269_fail
    inc rx269_pos
    set_addr $I10, rxcap_284_fail
    ($I12, $I11) = rx269_cur."!mark_peek"($I10)
    rx269_cur."!cursor_pos"($I11)
    ($P10) = rx269_cur."!cursor_start"()
    $P10."!cursor_pass"(rx269_pos, "")
    rx269_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_284_done
  rxcap_284_fail:
    goto rx269_fail
  rxcap_284_done:
    rx269_cur."!cursor_pos"(rx269_pos)
    find_lex $P285, unicode:"$\x{a2}"
    $P286 = $P285."MATCH"()
    store_lex "$/", $P286
    .const 'Sub' $P288 = "97_1294592798.608" 
    capture_lex $P288
    $P298 = $P288()
  alt279_end:
.annotate 'line', 102
    goto alt278_end
  alt278_1:
.annotate 'line', 107
  # rx subcapture "textq"
    set_addr $I10, rxcap_299_fail
    rx269_cur."!mark_push"(0, rx269_pos, $I10)
  # rx charclass .
    ge rx269_pos, rx269_eos, rx269_fail
    inc rx269_pos
    set_addr $I10, rxcap_299_fail
    ($I12, $I11) = rx269_cur."!mark_peek"($I10)
    rx269_cur."!cursor_pos"($I11)
    ($P10) = rx269_cur."!cursor_start"()
    $P10."!cursor_pass"(rx269_pos, "")
    rx269_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_299_done
  rxcap_299_fail:
    goto rx269_fail
  rxcap_299_done:
  alt278_end:
.annotate 'line', 99
  # rx pass
    rx269_cur."!cursor_pass"(rx269_pos, "quote_escape:sym<misc>")
    if_null rx269_debug, debug_247
    rx269_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx269_pos)
  debug_247:
    .return (rx269_cur)
  rx269_restart:
.annotate 'line', 33
    if_null rx269_debug, debug_248
    rx269_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_248:
  rx269_fail:
    (rx269_rep, rx269_pos, $I10, $P10) = rx269_cur."!mark_fail"(0)
    lt rx269_pos, -1, rx269_done
    eq rx269_pos, -1, rx269_fail
    jump $I10
  rx269_done:
    rx269_cur."!cursor_fail"()
    if_null rx269_debug, debug_249
    rx269_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_249:
    .return (rx269_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :subid("94_1294592798.608") :method
.annotate 'line', 33
    new $P271, "ResizablePMCArray"
    push $P271, ""
    .return ($P271)
.end


.namespace ["HLL";"Grammar"]
.sub "_block275"  :anon :subid("95_1294592798.608") :outer("93_1294592798.608")
.annotate 'line', 100
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "_block280"  :anon :subid("96_1294592798.608") :method :outer("93_1294592798.608")
.annotate 'line', 104
    .local string rx282_tgt
    .local int rx282_pos
    .local int rx282_off
    .local int rx282_eos
    .local int rx282_rep
    .local pmc rx282_cur
    .local pmc rx282_debug
    (rx282_cur, rx282_pos, rx282_tgt, $I10) = self."!cursor_start"()
    getattribute rx282_debug, rx282_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx282_cur
    .local pmc match
    .lex "$/", match
    length rx282_eos, rx282_tgt
    gt rx282_pos, rx282_eos, rx282_done
    set rx282_off, 0
    lt rx282_pos, 2, rx282_start
    sub rx282_off, rx282_pos, 1
    substr rx282_tgt, rx282_tgt, rx282_off
  rx282_start:
    eq $I10, 1, rx282_restart
    if_null rx282_debug, debug_241
    rx282_cur."!cursor_debug"("START", "")
  debug_241:
    $I10 = self.'from'()
    ne $I10, -1, rxscan283_done
    goto rxscan283_scan
  rxscan283_loop:
    ($P10) = rx282_cur."from"()
    inc $P10
    set rx282_pos, $P10
    ge rx282_pos, rx282_eos, rxscan283_done
  rxscan283_scan:
    set_addr $I10, rxscan283_loop
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  rxscan283_done:
  # rx charclass W
    ge rx282_pos, rx282_eos, rx282_fail
    sub $I10, rx282_pos, rx282_off
    is_cclass $I11, 8192, rx282_tgt, $I10
    if $I11, rx282_fail
    inc rx282_pos
  # rx pass
    rx282_cur."!cursor_pass"(rx282_pos, "")
    if_null rx282_debug, debug_242
    rx282_cur."!cursor_debug"("PASS", "", " at pos=", rx282_pos)
  debug_242:
    .return (rx282_cur)
  rx282_restart:
    if_null rx282_debug, debug_243
    rx282_cur."!cursor_debug"("NEXT", "")
  debug_243:
  rx282_fail:
    (rx282_rep, rx282_pos, $I10, $P10) = rx282_cur."!mark_fail"(0)
    lt rx282_pos, -1, rx282_done
    eq rx282_pos, -1, rx282_fail
    jump $I10
  rx282_done:
    rx282_cur."!cursor_fail"()
    if_null rx282_debug, debug_244
    rx282_cur."!cursor_debug"("FAIL", "")
  debug_244:
    .return (rx282_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "_block287"  :anon :subid("97_1294592798.608") :outer("93_1294592798.608")
.annotate 'line', 105
    find_lex $P289, "$/"
    $P290 = $P289."CURSOR"()
    new $P291, "String"
    assign $P291, "Unrecognized backslash sequence: '\\"
    find_lex $P292, "$/"
    unless_null $P292, vivify_245
    $P292 = root_new ['parrot';'Hash']
  vivify_245:
    set $P293, $P292["x"]
    unless_null $P293, vivify_246
    new $P293, "Undef"
  vivify_246:
    $S294 = $P293."Str"()
    concat $P295, $P291, $S294
    concat $P296, $P295, "'"
    $P297 = $P290."panic"($P296)
    .return ($P297)
.end


.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .const 'Sub' $P310 = "100_1294592798.608" 
    capture_lex $P310
    .local string rx301_tgt
    .local int rx301_pos
    .local int rx301_off
    .local int rx301_eos
    .local int rx301_rep
    .local pmc rx301_cur
    .local pmc rx301_debug
    (rx301_cur, rx301_pos, rx301_tgt, $I10) = self."!cursor_start"()
    getattribute rx301_debug, rx301_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx301_cur
    .local pmc match
    .lex "$/", match
    length rx301_eos, rx301_tgt
    gt rx301_pos, rx301_eos, rx301_done
    set rx301_off, 0
    lt rx301_pos, 2, rx301_start
    sub rx301_off, rx301_pos, 1
    substr rx301_tgt, rx301_tgt, rx301_off
  rx301_start:
    eq $I10, 1, rx301_restart
    if_null rx301_debug, debug_250
    rx301_cur."!cursor_debug"("START", "charname")
  debug_250:
    $I10 = self.'from'()
    ne $I10, -1, rxscan305_done
    goto rxscan305_scan
  rxscan305_loop:
    ($P10) = rx301_cur."from"()
    inc $P10
    set rx301_pos, $P10
    ge rx301_pos, rx301_eos, rxscan305_done
  rxscan305_scan:
    set_addr $I10, rxscan305_loop
    rx301_cur."!mark_push"(0, rx301_pos, $I10)
  rxscan305_done:
  alt306_0:
.annotate 'line', 111
    set_addr $I10, alt306_1
    rx301_cur."!mark_push"(0, rx301_pos, $I10)
.annotate 'line', 112
  # rx subrule "integer" subtype=capture negate=
    rx301_cur."!cursor_pos"(rx301_pos)
    $P10 = rx301_cur."integer"()
    unless $P10, rx301_fail
    rx301_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx301_pos = $P10."pos"()
    goto alt306_end
  alt306_1:
.annotate 'line', 113
  # rx enumcharlist negate=0 
    ge rx301_pos, rx301_eos, rx301_fail
    sub $I10, rx301_pos, rx301_off
    substr $S10, rx301_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx301_fail
    inc rx301_pos
  # rx rxquantf307 ** 0..*
    set_addr $I10, rxquantf307_loop
    rx301_cur."!mark_push"(0, rx301_pos, $I10)
    goto rxquantf307_done
  rxquantf307_loop:
  # rx enumcharlist negate=1 
    ge rx301_pos, rx301_eos, rx301_fail
    sub $I10, rx301_pos, rx301_off
    substr $S10, rx301_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx301_fail
    inc rx301_pos
    set_addr $I10, rxquantf307_loop
    rx301_cur."!mark_push"(rx301_rep, rx301_pos, $I10)
  rxquantf307_done:
  # rx enumcharlist negate=0 
    ge rx301_pos, rx301_eos, rx301_fail
    sub $I10, rx301_pos, rx301_off
    substr $S10, rx301_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx301_fail
    inc rx301_pos
.annotate 'line', 114
  # rx subrule "before" subtype=zerowidth negate=
    rx301_cur."!cursor_pos"(rx301_pos)
    .const 'Sub' $P310 = "100_1294592798.608" 
    capture_lex $P310
    $P10 = rx301_cur."before"($P310)
    unless $P10, rx301_fail
  alt306_end:
.annotate 'line', 111
  # rx pass
    rx301_cur."!cursor_pass"(rx301_pos, "charname")
    if_null rx301_debug, debug_255
    rx301_cur."!cursor_debug"("PASS", "charname", " at pos=", rx301_pos)
  debug_255:
    .return (rx301_cur)
  rx301_restart:
.annotate 'line', 33
    if_null rx301_debug, debug_256
    rx301_cur."!cursor_debug"("NEXT", "charname")
  debug_256:
  rx301_fail:
    (rx301_rep, rx301_pos, $I10, $P10) = rx301_cur."!mark_fail"(0)
    lt rx301_pos, -1, rx301_done
    eq rx301_pos, -1, rx301_fail
    jump $I10
  rx301_done:
    rx301_cur."!cursor_fail"()
    if_null rx301_debug, debug_257
    rx301_cur."!cursor_debug"("FAIL", "charname")
  debug_257:
    .return (rx301_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("99_1294592798.608") :method
.annotate 'line', 33
    $P303 = self."!PREFIX__!subrule"("integer", "")
    new $P304, "ResizablePMCArray"
    push $P304, "Z"
    push $P304, "Y"
    push $P304, "X"
    push $P304, "W"
    push $P304, "V"
    push $P304, "U"
    push $P304, "T"
    push $P304, "S"
    push $P304, "R"
    push $P304, "Q"
    push $P304, "P"
    push $P304, "O"
    push $P304, "N"
    push $P304, "M"
    push $P304, "L"
    push $P304, "K"
    push $P304, "J"
    push $P304, "I"
    push $P304, "H"
    push $P304, "G"
    push $P304, "F"
    push $P304, "E"
    push $P304, "D"
    push $P304, "C"
    push $P304, "B"
    push $P304, "A"
    push $P304, "z"
    push $P304, "y"
    push $P304, "x"
    push $P304, "w"
    push $P304, "v"
    push $P304, "u"
    push $P304, "t"
    push $P304, "s"
    push $P304, "r"
    push $P304, "q"
    push $P304, "p"
    push $P304, "o"
    push $P304, "n"
    push $P304, "m"
    push $P304, "l"
    push $P304, "k"
    push $P304, "j"
    push $P304, "i"
    push $P304, "h"
    push $P304, "g"
    push $P304, "f"
    push $P304, "e"
    push $P304, "d"
    push $P304, "c"
    push $P304, "b"
    push $P304, "a"
    push $P304, $P303
    .return ($P304)
.end


.namespace ["HLL";"Grammar"]
.sub "_block309"  :anon :subid("100_1294592798.608") :method :outer("98_1294592798.608")
.annotate 'line', 114
    .local string rx311_tgt
    .local int rx311_pos
    .local int rx311_off
    .local int rx311_eos
    .local int rx311_rep
    .local pmc rx311_cur
    .local pmc rx311_debug
    (rx311_cur, rx311_pos, rx311_tgt, $I10) = self."!cursor_start"()
    getattribute rx311_debug, rx311_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx311_cur
    .local pmc match
    .lex "$/", match
    length rx311_eos, rx311_tgt
    gt rx311_pos, rx311_eos, rx311_done
    set rx311_off, 0
    lt rx311_pos, 2, rx311_start
    sub rx311_off, rx311_pos, 1
    substr rx311_tgt, rx311_tgt, rx311_off
  rx311_start:
    eq $I10, 1, rx311_restart
    if_null rx311_debug, debug_251
    rx311_cur."!cursor_debug"("START", "")
  debug_251:
    $I10 = self.'from'()
    ne $I10, -1, rxscan312_done
    goto rxscan312_scan
  rxscan312_loop:
    ($P10) = rx311_cur."from"()
    inc $P10
    set rx311_pos, $P10
    ge rx311_pos, rx311_eos, rxscan312_done
  rxscan312_scan:
    set_addr $I10, rxscan312_loop
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
  rxscan312_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx311_pos, rx311_off
    find_not_cclass $I11, 32, rx311_tgt, $I10, rx311_eos
    add rx311_pos, rx311_off, $I11
  # rx enumcharlist negate=0 
    ge rx311_pos, rx311_eos, rx311_fail
    sub $I10, rx311_pos, rx311_off
    substr $S10, rx311_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx311_fail
    inc rx311_pos
  # rx pass
    rx311_cur."!cursor_pass"(rx311_pos, "")
    if_null rx311_debug, debug_252
    rx311_cur."!cursor_debug"("PASS", "", " at pos=", rx311_pos)
  debug_252:
    .return (rx311_cur)
  rx311_restart:
    if_null rx311_debug, debug_253
    rx311_cur."!cursor_debug"("NEXT", "")
  debug_253:
  rx311_fail:
    (rx311_rep, rx311_pos, $I10, $P10) = rx311_cur."!mark_fail"(0)
    lt rx311_pos, -1, rx311_done
    eq rx311_pos, -1, rx311_fail
    jump $I10
  rx311_done:
    rx311_cur."!cursor_fail"()
    if_null rx311_debug, debug_254
    rx311_cur."!cursor_debug"("FAIL", "")
  debug_254:
    .return (rx311_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx314_tgt
    .local int rx314_pos
    .local int rx314_off
    .local int rx314_eos
    .local int rx314_rep
    .local pmc rx314_cur
    .local pmc rx314_debug
    (rx314_cur, rx314_pos, rx314_tgt, $I10) = self."!cursor_start"()
    rx314_cur."!cursor_caparray"("charname")
    getattribute rx314_debug, rx314_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx314_cur
    .local pmc match
    .lex "$/", match
    length rx314_eos, rx314_tgt
    gt rx314_pos, rx314_eos, rx314_done
    set rx314_off, 0
    lt rx314_pos, 2, rx314_start
    sub rx314_off, rx314_pos, 1
    substr rx314_tgt, rx314_tgt, rx314_off
  rx314_start:
    eq $I10, 1, rx314_restart
    if_null rx314_debug, debug_258
    rx314_cur."!cursor_debug"("START", "charnames")
  debug_258:
    $I10 = self.'from'()
    ne $I10, -1, rxscan317_done
    goto rxscan317_scan
  rxscan317_loop:
    ($P10) = rx314_cur."from"()
    inc $P10
    set rx314_pos, $P10
    ge rx314_pos, rx314_eos, rxscan317_done
  rxscan317_scan:
    set_addr $I10, rxscan317_loop
    rx314_cur."!mark_push"(0, rx314_pos, $I10)
  rxscan317_done:
.annotate 'line', 116
  # rx rxquantr318 ** 1..*
    set_addr $I10, rxquantr318_done
    rx314_cur."!mark_push"(0, -1, $I10)
  rxquantr318_loop:
  # rx subrule "ws" subtype=method negate=
    rx314_cur."!cursor_pos"(rx314_pos)
    $P10 = rx314_cur."ws"()
    unless $P10, rx314_fail
    rx314_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx314_cur."!cursor_pos"(rx314_pos)
    $P10 = rx314_cur."charname"()
    unless $P10, rx314_fail
    rx314_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx314_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx314_cur."!cursor_pos"(rx314_pos)
    $P10 = rx314_cur."ws"()
    unless $P10, rx314_fail
    rx314_pos = $P10."pos"()
    set_addr $I10, rxquantr318_done
    (rx314_rep) = rx314_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr318_done
    rx314_cur."!mark_push"(rx314_rep, rx314_pos, $I10)
  # rx literal  ","
    add $I11, rx314_pos, 1
    gt $I11, rx314_eos, rx314_fail
    sub $I11, rx314_pos, rx314_off
    ord $I11, rx314_tgt, $I11
    ne $I11, 44, rx314_fail
    add rx314_pos, 1
    goto rxquantr318_loop
  rxquantr318_done:
  # rx pass
    rx314_cur."!cursor_pass"(rx314_pos, "charnames")
    if_null rx314_debug, debug_259
    rx314_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx314_pos)
  debug_259:
    .return (rx314_cur)
  rx314_restart:
.annotate 'line', 33
    if_null rx314_debug, debug_260
    rx314_cur."!cursor_debug"("NEXT", "charnames")
  debug_260:
  rx314_fail:
    (rx314_rep, rx314_pos, $I10, $P10) = rx314_cur."!mark_fail"(0)
    lt rx314_pos, -1, rx314_done
    eq rx314_pos, -1, rx314_fail
    jump $I10
  rx314_done:
    rx314_cur."!cursor_fail"()
    if_null rx314_debug, debug_261
    rx314_cur."!cursor_debug"("FAIL", "charnames")
  debug_261:
    .return (rx314_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("102_1294592798.608") :method
.annotate 'line', 33
    new $P316, "ResizablePMCArray"
    push $P316, ""
    .return ($P316)
.end


.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1294592798.608") :method :outer("11_1294592798.608")
.annotate 'line', 33
    .local string rx320_tgt
    .local int rx320_pos
    .local int rx320_off
    .local int rx320_eos
    .local int rx320_rep
    .local pmc rx320_cur
    .local pmc rx320_debug
    (rx320_cur, rx320_pos, rx320_tgt, $I10) = self."!cursor_start"()
    getattribute rx320_debug, rx320_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx320_cur
    .local pmc match
    .lex "$/", match
    length rx320_eos, rx320_tgt
    gt rx320_pos, rx320_eos, rx320_done
    set rx320_off, 0
    lt rx320_pos, 2, rx320_start
    sub rx320_off, rx320_pos, 1
    substr rx320_tgt, rx320_tgt, rx320_off
  rx320_start:
    eq $I10, 1, rx320_restart
    if_null rx320_debug, debug_262
    rx320_cur."!cursor_debug"("START", "charspec")
  debug_262:
    $I10 = self.'from'()
    ne $I10, -1, rxscan325_done
    goto rxscan325_scan
  rxscan325_loop:
    ($P10) = rx320_cur."from"()
    inc $P10
    set rx320_pos, $P10
    ge rx320_pos, rx320_eos, rxscan325_done
  rxscan325_scan:
    set_addr $I10, rxscan325_loop
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
  rxscan325_done:
  alt326_0:
.annotate 'line', 118
    set_addr $I10, alt326_1
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
.annotate 'line', 119
  # rx literal  "["
    add $I11, rx320_pos, 1
    gt $I11, rx320_eos, rx320_fail
    sub $I11, rx320_pos, rx320_off
    ord $I11, rx320_tgt, $I11
    ne $I11, 91, rx320_fail
    add rx320_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx320_cur."!cursor_pos"(rx320_pos)
    $P10 = rx320_cur."charnames"()
    unless $P10, rx320_fail
    rx320_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx320_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx320_pos, 1
    gt $I11, rx320_eos, rx320_fail
    sub $I11, rx320_pos, rx320_off
    ord $I11, rx320_tgt, $I11
    ne $I11, 93, rx320_fail
    add rx320_pos, 1
    goto alt326_end
  alt326_1:
    set_addr $I10, alt326_2
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
.annotate 'line', 120
  # rx charclass_q d r 1..-1
    sub $I10, rx320_pos, rx320_off
    find_not_cclass $I11, 8, rx320_tgt, $I10, rx320_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx320_fail
    add rx320_pos, rx320_off, $I11
  # rx rxquantr327 ** 0..*
    set_addr $I10, rxquantr327_done
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
  rxquantr327_loop:
  # rx literal  "_"
    add $I11, rx320_pos, 1
    gt $I11, rx320_eos, rx320_fail
    sub $I11, rx320_pos, rx320_off
    ord $I11, rx320_tgt, $I11
    ne $I11, 95, rx320_fail
    add rx320_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx320_pos, rx320_off
    find_not_cclass $I11, 8, rx320_tgt, $I10, rx320_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx320_fail
    add rx320_pos, rx320_off, $I11
    set_addr $I10, rxquantr327_done
    (rx320_rep) = rx320_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr327_done
    rx320_cur."!mark_push"(rx320_rep, rx320_pos, $I10)
    goto rxquantr327_loop
  rxquantr327_done:
    goto alt326_end
  alt326_2:
    set_addr $I10, alt326_3
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
.annotate 'line', 121
  # rx enumcharlist negate=0 
    ge rx320_pos, rx320_eos, rx320_fail
    sub $I10, rx320_pos, rx320_off
    substr $S10, rx320_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx320_fail
    inc rx320_pos
    goto alt326_end
  alt326_3:
.annotate 'line', 122
  # rx subrule "panic" subtype=method negate=
    rx320_cur."!cursor_pos"(rx320_pos)
    $P10 = rx320_cur."panic"("Unrecognized \\c character")
    unless $P10, rx320_fail
    rx320_pos = $P10."pos"()
  alt326_end:
.annotate 'line', 117
  # rx pass
    rx320_cur."!cursor_pass"(rx320_pos, "charspec")
    if_null rx320_debug, debug_263
    rx320_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx320_pos)
  debug_263:
    .return (rx320_cur)
  rx320_restart:
.annotate 'line', 33
    if_null rx320_debug, debug_264
    rx320_cur."!cursor_debug"("NEXT", "charspec")
  debug_264:
  rx320_fail:
    (rx320_rep, rx320_pos, $I10, $P10) = rx320_cur."!mark_fail"(0)
    lt rx320_pos, -1, rx320_done
    eq rx320_pos, -1, rx320_fail
    jump $I10
  rx320_done:
    rx320_cur."!cursor_fail"()
    if_null rx320_debug, debug_265
    rx320_cur."!cursor_debug"("FAIL", "charspec")
  debug_265:
    .return (rx320_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("104_1294592798.608") :method
.annotate 'line', 33
    $P322 = self."!PREFIX__!subrule"("panic", "")
    $P323 = self."!PREFIX__!subrule"("charnames", "[")
    new $P324, "ResizablePMCArray"
    push $P324, $P322
    push $P324, "Z"
    push $P324, "Y"
    push $P324, "X"
    push $P324, "W"
    push $P324, "V"
    push $P324, "U"
    push $P324, "T"
    push $P324, "S"
    push $P324, "R"
    push $P324, "Q"
    push $P324, "P"
    push $P324, "O"
    push $P324, "N"
    push $P324, "M"
    push $P324, "L"
    push $P324, "K"
    push $P324, "J"
    push $P324, "I"
    push $P324, "H"
    push $P324, "G"
    push $P324, "F"
    push $P324, "E"
    push $P324, "D"
    push $P324, "C"
    push $P324, "B"
    push $P324, "A"
    push $P324, "@"
    push $P324, "?"
    push $P324, ""
    push $P324, $P323
    .return ($P324)
.end


.namespace ["HLL";"Grammar"]
.sub "_block328" :load :anon :subid("105_1294592798.608")
.annotate 'line', 5
    .const 'Sub' $P330 = "11_1294592798.608" 
    $P331 = $P330()
    .return ($P331)
.end


.namespace []
.sub "_block333" :load :anon :subid("106_1294592798.608")
.annotate 'line', 1
    .const 'Sub' $P335 = "10_1294592798.608" 
    $P336 = $P335()
    .return ($P336)
.end

### .include 'gen/hllgrammar-actions.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1294592800.749")
.annotate 'line', 0
    get_hll_global $P14, ["HLL";"Actions"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P14, ["HLL";"Actions"], "_block13" 
    capture_lex $P14
    $P627 = $P14()
.annotate 'line', 1
    .return ($P627)
    .const 'Sub' $P629 = "55_1294592800.749" 
    .return ($P629)
.end


.namespace []
.sub "" :load :init :subid("post56") :outer("10_1294592800.749")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1294592800.749" 
    .local pmc block
    set block, $P12
    $P632 = get_root_global ["parrot"], "P6metaclass"
    $P632."new_class"("HLL::Actions")
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["HLL";"Actions"]
.sub "_block13"  :subid("11_1294592800.749") :outer("10_1294592800.749")
.annotate 'line', 3
    .const 'Sub' $P605 = "53_1294592800.749" 
    capture_lex $P605
    .const 'Sub' $P580 = "51_1294592800.749" 
    capture_lex $P580
    .const 'Sub' $P550 = "50_1294592800.749" 
    capture_lex $P550
    .const 'Sub' $P531 = "49_1294592800.749" 
    capture_lex $P531
    .const 'Sub' $P524 = "48_1294592800.749" 
    capture_lex $P524
    .const 'Sub' $P514 = "47_1294592800.749" 
    capture_lex $P514
    .const 'Sub' $P497 = "46_1294592800.749" 
    capture_lex $P497
    .const 'Sub' $P480 = "45_1294592800.749" 
    capture_lex $P480
    .const 'Sub' $P473 = "44_1294592800.749" 
    capture_lex $P473
    .const 'Sub' $P466 = "43_1294592800.749" 
    capture_lex $P466
    .const 'Sub' $P459 = "42_1294592800.749" 
    capture_lex $P459
    .const 'Sub' $P452 = "41_1294592800.749" 
    capture_lex $P452
    .const 'Sub' $P445 = "40_1294592800.749" 
    capture_lex $P445
    .const 'Sub' $P438 = "39_1294592800.749" 
    capture_lex $P438
    .const 'Sub' $P428 = "38_1294592800.749" 
    capture_lex $P428
    .const 'Sub' $P421 = "37_1294592800.749" 
    capture_lex $P421
    .const 'Sub' $P405 = "36_1294592800.749" 
    capture_lex $P405
    .const 'Sub' $P330 = "34_1294592800.749" 
    capture_lex $P330
    .const 'Sub' $P267 = "31_1294592800.749" 
    capture_lex $P267
    .const 'Sub' $P258 = "30_1294592800.749" 
    capture_lex $P258
    .const 'Sub' $P249 = "29_1294592800.749" 
    capture_lex $P249
    .const 'Sub' $P240 = "28_1294592800.749" 
    capture_lex $P240
    .const 'Sub' $P231 = "27_1294592800.749" 
    capture_lex $P231
    .const 'Sub' $P222 = "26_1294592800.749" 
    capture_lex $P222
    .const 'Sub' $P212 = "25_1294592800.749" 
    capture_lex $P212
    .const 'Sub' $P202 = "24_1294592800.749" 
    capture_lex $P202
    .const 'Sub' $P194 = "23_1294592800.749" 
    capture_lex $P194
    .const 'Sub' $P184 = "22_1294592800.749" 
    capture_lex $P184
    .const 'Sub' $P174 = "21_1294592800.749" 
    capture_lex $P174
    .const 'Sub' $P73 = "18_1294592800.749" 
    capture_lex $P73
    .const 'Sub' $P35 = "15_1294592800.749" 
    capture_lex $P35
    .const 'Sub' $P28 = "14_1294592800.749" 
    capture_lex $P28
    .const 'Sub' $P22 = "13_1294592800.749" 
    capture_lex $P22
    .const 'Sub' $P15 = "12_1294592800.749" 
    capture_lex $P15
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 225
    .const 'Sub' $P605 = "53_1294592800.749" 
    newclosure $P622, $P605
.annotate 'line', 3
    .return ($P622)
    .const 'Sub' $P624 = "54_1294592800.749" 
    .return ($P624)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("12_1294592800.749") :outer("11_1294592800.749")
    .param pmc param_18
    .param pmc param_19
.annotate 'line', 3
    new $P17, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P17, control_16
    push_eh $P17
    .lex "$src", param_18
    .lex "$base", param_19
.annotate 'line', 4

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
        $P20 = box result
    
.annotate 'line', 3
    .return ($P20)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P21, exception, "payload"
    .return ($P21)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "ints_to_string"  :subid("13_1294592800.749") :outer("11_1294592800.749")
    .param pmc param_25
.annotate 'line', 37
    new $P24, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P24, control_23
    push_eh $P24
    .lex "$ints", param_25
.annotate 'line', 38

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
        result = concat result, $S0
        goto ints_loop
      ints_1:
        $I0 = ints.'ast'()
        result = chr $I0
      ints_done:
        $P26 = box result
    
.annotate 'line', 37
    .return ($P26)
  control_23:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P27, exception, "payload"
    .return ($P27)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "CTXSAVE"  :subid("14_1294592800.749") :method :outer("11_1294592800.749")
.annotate 'line', 62
    new $P30, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P30, control_29
    push_eh $P30
    .lex "self", self
.annotate 'line', 63
    get_hll_global $P31, ["PAST"], "Op"
.annotate 'line', 69
    new $P32, "ResizablePMCArray"
    push $P32, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P32, "    if null $P0 goto ctxsave_done"
    push $P32, "    $I0 = can $P0, \"ctxsave\""
    push $P32, "    unless $I0 goto ctxsave_done"
    push $P32, "    $P0.\"ctxsave\"()"
    push $P32, "  ctxsave_done:"
    $P33 = $P31."new"($P32 :named("inline"))
.annotate 'line', 62
    .return ($P33)
  control_29:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P34, exception, "payload"
    .return ($P34)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "SET_BLOCK_OUTER_CTX"  :subid("15_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_38
.annotate 'line', 76
    .const 'Sub' $P48 = "16_1294592800.749" 
    capture_lex $P48
    new $P37, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P37, control_36
    push_eh $P37
    .lex "self", self
    .lex "$block", param_38
.annotate 'line', 77
    new $P39, "Undef"
    .lex "$outer_ctx", $P39
    find_dynamic_lex $P40, "%*COMPILING"
    unless_null $P40, vivify_57
    get_hll_global $P40, "%COMPILING"
    unless_null $P40, vivify_58
    die "Contextual %*COMPILING not found"
  vivify_58:
  vivify_57:
    set $P41, $P40["%?OPTIONS"]
    unless_null $P41, vivify_59
    $P41 = root_new ['parrot';'Hash']
  vivify_59:
    set $P42, $P41["outer_ctx"]
    unless_null $P42, vivify_60
    new $P42, "Undef"
  vivify_60:
    store_lex "$outer_ctx", $P42
.annotate 'line', 78
    find_lex $P45, "$outer_ctx"
    defined $I46, $P45
    if $I46, if_44
    new $P43, 'Integer'
    set $P43, $I46
    goto if_44_end
  if_44:
    .const 'Sub' $P48 = "16_1294592800.749" 
    capture_lex $P48
    $P71 = $P48()
    set $P43, $P71
  if_44_end:
.annotate 'line', 76
    .return ($P43)
  control_36:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P72, exception, "payload"
    .return ($P72)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block47"  :anon :subid("16_1294592800.749") :outer("15_1294592800.749")
.annotate 'line', 78
    .const 'Sub' $P62 = "17_1294592800.749" 
    capture_lex $P62
.annotate 'line', 79
    $P49 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P49
    find_lex $P50, "$outer_ctx"
    getattribute $P51, $P50, "current_namespace"
    $P52 = $P51."get_name"()
    store_lex "@ns", $P52
.annotate 'line', 80
    find_lex $P53, "@ns"
    $P53."shift"()
.annotate 'line', 81
    find_lex $P54, "$block"
    find_lex $P55, "@ns"
    $P54."namespace"($P55)
.annotate 'line', 82
    find_lex $P57, "$outer_ctx"
    $P58 = $P57."lexpad_full"()
    defined $I59, $P58
    unless $I59, for_undef_61
    iter $P56, $P58
    new $P69, 'ExceptionHandler'
    set_addr $P69, loop68_handler
    $P69."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P69
  loop68_test:
    unless $P56, loop68_done
    shift $P60, $P56
  loop68_redo:
    .const 'Sub' $P62 = "17_1294592800.749" 
    capture_lex $P62
    $P62($P60)
  loop68_next:
    goto loop68_test
  loop68_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P70, exception, 'type'
    eq $P70, .CONTROL_LOOP_NEXT, loop68_next
    eq $P70, .CONTROL_LOOP_REDO, loop68_redo
  loop68_done:
    pop_eh 
  for_undef_61:
.annotate 'line', 78
    .return ($P56)
.end


.namespace ["HLL";"Actions"]
.sub "_block61"  :anon :subid("17_1294592800.749") :outer("16_1294592800.749")
    .param pmc param_63
.annotate 'line', 82
    .lex "$_", param_63
.annotate 'line', 83
    find_lex $P64, "$block"
    find_lex $P65, "$_"
    $P66 = $P65."key"()
    $P67 = $P64."symbol"($P66, "lexical" :named("scope"))
.annotate 'line', 82
    .return ($P67)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("18_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_76
    .param pmc param_77 :optional
    .param int has_param_77 :opt_flag
.annotate 'line', 89
    .const 'Sub' $P156 = "20_1294592800.749" 
    capture_lex $P156
    .const 'Sub' $P123 = "19_1294592800.749" 
    capture_lex $P123
    new $P75, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P75, control_74
    push_eh $P75
    .lex "self", self
    .lex "$/", param_76
    if has_param_77, optparam_62
    new $P78, "Undef"
    set param_77, $P78
  optparam_62:
    .lex "$key", param_77
.annotate 'line', 91
    new $P79, "Undef"
    .lex "$past", $P79
.annotate 'line', 90
    find_lex $P81, "$key"
    if $P81, unless_80_end
    new $P82, "Exception"
    set $P82['type'], .CONTROL_RETURN
    new $P83, "Integer"
    assign $P83, 0
    setattribute $P82, 'payload', $P83
    throw $P82
  unless_80_end:
.annotate 'line', 91
    find_lex $P85, "$/"
    $P86 = $P85."ast"()
    set $P84, $P86
    defined $I88, $P84
    if $I88, default_87
    find_lex $P89, "$/"
    unless_null $P89, vivify_63
    $P89 = root_new ['parrot';'Hash']
  vivify_63:
    set $P90, $P89["OPER"]
    unless_null $P90, vivify_64
    new $P90, "Undef"
  vivify_64:
    $P91 = $P90."ast"()
    set $P84, $P91
  default_87:
    store_lex "$past", $P84
.annotate 'line', 92
    find_lex $P93, "$past"
    if $P93, unless_92_end
.annotate 'line', 93
    get_hll_global $P94, ["PAST"], "Op"
    find_lex $P95, "$/"
    $P96 = $P94."new"($P95 :named("node"))
    store_lex "$past", $P96
.annotate 'line', 94
    find_lex $P98, "$/"
    unless_null $P98, vivify_65
    $P98 = root_new ['parrot';'Hash']
  vivify_65:
    set $P99, $P98["OPER"]
    unless_null $P99, vivify_66
    $P99 = root_new ['parrot';'Hash']
  vivify_66:
    set $P100, $P99["O"]
    unless_null $P100, vivify_67
    $P100 = root_new ['parrot';'Hash']
  vivify_67:
    set $P101, $P100["pasttype"]
    unless_null $P101, vivify_68
    new $P101, "Undef"
  vivify_68:
    if $P101, if_97
.annotate 'line', 95
    find_lex $P109, "$/"
    unless_null $P109, vivify_69
    $P109 = root_new ['parrot';'Hash']
  vivify_69:
    set $P110, $P109["OPER"]
    unless_null $P110, vivify_70
    $P110 = root_new ['parrot';'Hash']
  vivify_70:
    set $P111, $P110["O"]
    unless_null $P111, vivify_71
    $P111 = root_new ['parrot';'Hash']
  vivify_71:
    set $P112, $P111["pirop"]
    unless_null $P112, vivify_72
    new $P112, "Undef"
  vivify_72:
    unless $P112, if_108_end
    find_lex $P113, "$past"
    find_lex $P114, "$/"
    unless_null $P114, vivify_73
    $P114 = root_new ['parrot';'Hash']
  vivify_73:
    set $P115, $P114["OPER"]
    unless_null $P115, vivify_74
    $P115 = root_new ['parrot';'Hash']
  vivify_74:
    set $P116, $P115["O"]
    unless_null $P116, vivify_75
    $P116 = root_new ['parrot';'Hash']
  vivify_75:
    set $P117, $P116["pirop"]
    unless_null $P117, vivify_76
    new $P117, "Undef"
  vivify_76:
    set $S118, $P117
    $P113."pirop"($S118)
  if_108_end:
    goto if_97_end
  if_97:
.annotate 'line', 94
    find_lex $P102, "$past"
    find_lex $P103, "$/"
    unless_null $P103, vivify_77
    $P103 = root_new ['parrot';'Hash']
  vivify_77:
    set $P104, $P103["OPER"]
    unless_null $P104, vivify_78
    $P104 = root_new ['parrot';'Hash']
  vivify_78:
    set $P105, $P104["O"]
    unless_null $P105, vivify_79
    $P105 = root_new ['parrot';'Hash']
  vivify_79:
    set $P106, $P105["pasttype"]
    unless_null $P106, vivify_80
    new $P106, "Undef"
  vivify_80:
    set $S107, $P106
    $P102."pasttype"($S107)
  if_97_end:
.annotate 'line', 96
    find_lex $P120, "$past"
    $P121 = $P120."name"()
    if $P121, unless_119_end
    .const 'Sub' $P123 = "19_1294592800.749" 
    capture_lex $P123
    $P123()
  unless_119_end:
  unless_92_end:
.annotate 'line', 107
    find_lex $P143, "$key"
    set $S144, $P143
    iseq $I145, $S144, "POSTFIX"
    if $I145, if_142
.annotate 'line', 109
    find_lex $P151, "$/"
    $P152 = $P151."list"()
    defined $I153, $P152
    unless $I153, for_undef_84
    iter $P150, $P152
    new $P168, 'ExceptionHandler'
    set_addr $P168, loop167_handler
    $P168."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P168
  loop167_test:
    unless $P150, loop167_done
    shift $P154, $P150
  loop167_redo:
    .const 'Sub' $P156 = "20_1294592800.749" 
    capture_lex $P156
    $P156($P154)
  loop167_next:
    goto loop167_test
  loop167_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P169, exception, 'type'
    eq $P169, .CONTROL_LOOP_NEXT, loop167_next
    eq $P169, .CONTROL_LOOP_REDO, loop167_redo
  loop167_done:
    pop_eh 
  for_undef_84:
.annotate 'line', 108
    goto if_142_end
  if_142:
.annotate 'line', 107
    find_lex $P146, "$past"
    find_lex $P147, "$/"
    unless_null $P147, vivify_85
    $P147 = root_new ['parrot';'ResizablePMCArray']
  vivify_85:
    set $P148, $P147[0]
    unless_null $P148, vivify_86
    new $P148, "Undef"
  vivify_86:
    $P149 = $P148."ast"()
    $P146."unshift"($P149)
  if_142_end:
.annotate 'line', 111
    find_lex $P170, "$/"
    find_lex $P171, "$past"
    $P172 = $P170."!make"($P171)
.annotate 'line', 89
    .return ($P172)
  control_74:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P173, exception, "payload"
    .return ($P173)
.end


.namespace ["HLL";"Actions"]
.sub "_block122"  :anon :subid("19_1294592800.749") :outer("18_1294592800.749")
.annotate 'line', 98
    new $P124, "Undef"
    .lex "$name", $P124
.annotate 'line', 97
    find_lex $P126, "$key"
    set $S127, $P126
    iseq $I128, $S127, "LIST"
    unless $I128, if_125_end
    new $P129, "String"
    assign $P129, "infix"
    store_lex "$key", $P129
  if_125_end:
.annotate 'line', 98

                $P0 = find_lex '$key'
                $S0 = $P0
                $S0 = downcase $S0
                $P130 = box $S0
            
    concat $P131, $P130, ":<"
.annotate 'line', 103
    find_lex $P132, "$/"
    unless_null $P132, vivify_81
    $P132 = root_new ['parrot';'Hash']
  vivify_81:
    set $P133, $P132["OPER"]
    unless_null $P133, vivify_82
    $P133 = root_new ['parrot';'Hash']
  vivify_82:
    set $P134, $P133["sym"]
    unless_null $P134, vivify_83
    new $P134, "Undef"
  vivify_83:
    concat $P135, $P131, $P134
    concat $P136, $P135, ">"
    store_lex "$name", $P136
.annotate 'line', 104
    find_lex $P137, "$past"
    new $P138, "String"
    assign $P138, "&"
    find_lex $P139, "$name"
    concat $P140, $P138, $P139
    $P141 = $P137."name"($P140)
.annotate 'line', 96
    .return ($P141)
.end


.namespace ["HLL";"Actions"]
.sub "_block155"  :anon :subid("20_1294592800.749") :outer("18_1294592800.749")
    .param pmc param_157
.annotate 'line', 109
    .lex "$_", param_157
    find_lex $P160, "$_"
    $P161 = $P160."ast"()
    defined $I162, $P161
    if $I162, if_159
    new $P158, 'Integer'
    set $P158, $I162
    goto if_159_end
  if_159:
    find_lex $P163, "$past"
    find_lex $P164, "$_"
    $P165 = $P164."ast"()
    $P166 = $P163."push"($P165)
    set $P158, $P166
  if_159_end:
    .return ($P158)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "term:sym<circumfix>"  :subid("21_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_177
.annotate 'line', 114
    new $P176, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P176, control_175
    push_eh $P176
    .lex "self", self
    .lex "$/", param_177
    find_lex $P178, "$/"
    find_lex $P179, "$/"
    unless_null $P179, vivify_87
    $P179 = root_new ['parrot';'Hash']
  vivify_87:
    set $P180, $P179["circumfix"]
    unless_null $P180, vivify_88
    new $P180, "Undef"
  vivify_88:
    $P181 = $P180."ast"()
    $P182 = $P178."!make"($P181)
    .return ($P182)
  control_175:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P183, exception, "payload"
    .return ($P183)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("22_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_187
.annotate 'line', 116
    new $P186, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P186, control_185
    push_eh $P186
    .lex "self", self
    .lex "$/", param_187
    find_lex $P188, "$/"
    find_lex $P189, "$/"
    unless_null $P189, vivify_89
    $P189 = root_new ['parrot';'Hash']
  vivify_89:
    set $P190, $P189["term"]
    unless_null $P190, vivify_90
    new $P190, "Undef"
  vivify_90:
    $P191 = $P190."ast"()
    $P192 = $P188."!make"($P191)
    .return ($P192)
  control_185:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P193, exception, "payload"
    .return ($P193)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "nullterm"  :subid("23_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_197
.annotate 'line', 117
    new $P196, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P196, control_195
    push_eh $P196
    .lex "self", self
    .lex "$/", param_197
    find_lex $P198, "$/"
 $P199 = new ['Undef'] 
    $P200 = $P198."!make"($P199)
    .return ($P200)
  control_195:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P201, exception, "payload"
    .return ($P201)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "nullterm_alt"  :subid("24_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_205
.annotate 'line', 118
    new $P204, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P204, control_203
    push_eh $P204
    .lex "self", self
    .lex "$/", param_205
    find_lex $P206, "$/"
    find_lex $P207, "$/"
    unless_null $P207, vivify_91
    $P207 = root_new ['parrot';'Hash']
  vivify_91:
    set $P208, $P207["term"]
    unless_null $P208, vivify_92
    new $P208, "Undef"
  vivify_92:
    $P209 = $P208."ast"()
    $P210 = $P206."!make"($P209)
    .return ($P210)
  control_203:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P211, exception, "payload"
    .return ($P211)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "integer"  :subid("25_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_215
.annotate 'line', 120
    new $P214, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P214, control_213
    push_eh $P214
    .lex "self", self
    .lex "$/", param_215
    find_lex $P216, "$/"
    find_lex $P217, "$/"
    unless_null $P217, vivify_93
    $P217 = root_new ['parrot';'Hash']
  vivify_93:
    set $P218, $P217["VALUE"]
    unless_null $P218, vivify_94
    new $P218, "Undef"
  vivify_94:
    $P219 = $P218."ast"()
    $P220 = $P216."!make"($P219)
    .return ($P220)
  control_213:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P221, exception, "payload"
    .return ($P221)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "dec_number"  :subid("26_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_225
.annotate 'line', 122
    new $P224, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P224, control_223
    push_eh $P224
    .lex "self", self
    .lex "$/", param_225
    find_lex $P226, "$/"
    find_lex $P227, "$/"
    set $N228, $P227
    $P229 = $P226."!make"($N228)
    .return ($P229)
  control_223:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P230, exception, "payload"
    .return ($P230)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "decint"  :subid("27_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_234
.annotate 'line', 124
    new $P233, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P233, control_232
    push_eh $P233
    .lex "self", self
    .lex "$/", param_234
    find_lex $P235, "$/"
    find_lex $P236, "$/"
    $P237 = "string_to_int"($P236, 10)
    $P238 = $P235."!make"($P237)
    .return ($P238)
  control_232:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P239, exception, "payload"
    .return ($P239)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "hexint"  :subid("28_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_243
.annotate 'line', 125
    new $P242, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P242, control_241
    push_eh $P242
    .lex "self", self
    .lex "$/", param_243
    find_lex $P244, "$/"
    find_lex $P245, "$/"
    $P246 = "string_to_int"($P245, 16)
    $P247 = $P244."!make"($P246)
    .return ($P247)
  control_241:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P248, exception, "payload"
    .return ($P248)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "octint"  :subid("29_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_252
.annotate 'line', 126
    new $P251, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P251, control_250
    push_eh $P251
    .lex "self", self
    .lex "$/", param_252
    find_lex $P253, "$/"
    find_lex $P254, "$/"
    $P255 = "string_to_int"($P254, 8)
    $P256 = $P253."!make"($P255)
    .return ($P256)
  control_250:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P257, exception, "payload"
    .return ($P257)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "binint"  :subid("30_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_261
.annotate 'line', 127
    new $P260, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P260, control_259
    push_eh $P260
    .lex "self", self
    .lex "$/", param_261
    find_lex $P262, "$/"
    find_lex $P263, "$/"
    $P264 = "string_to_int"($P263, 2)
    $P265 = $P262."!make"($P264)
    .return ($P265)
  control_259:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P266, exception, "payload"
    .return ($P266)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_EXPR"  :subid("31_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_270
.annotate 'line', 129
    .const 'Sub' $P286 = "32_1294592800.749" 
    capture_lex $P286
    new $P269, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P269, control_268
    push_eh $P269
    .lex "self", self
    .lex "$/", param_270
.annotate 'line', 130
    new $P271, "Undef"
    .lex "$past", $P271
    find_lex $P272, "$/"
    unless_null $P272, vivify_95
    $P272 = root_new ['parrot';'Hash']
  vivify_95:
    set $P273, $P272["quote_delimited"]
    unless_null $P273, vivify_96
    new $P273, "Undef"
  vivify_96:
    $P274 = $P273."ast"()
    store_lex "$past", $P274
.annotate 'line', 131
    find_lex $P276, "$/"
    $P277 = $P276."CURSOR"()
    $P278 = $P277."quotemod_check"("w")
    unless $P278, if_275_end
.annotate 'line', 132
    get_hll_global $P280, ["PAST"], "Node"
    find_lex $P281, "$past"
    $P282 = $P280."ACCEPTS"($P281)
    if $P282, if_279
.annotate 'line', 135
    .const 'Sub' $P286 = "32_1294592800.749" 
    capture_lex $P286
    $P286()
    goto if_279_end
  if_279:
.annotate 'line', 133
    find_lex $P283, "$/"
    $P284 = $P283."CURSOR"()
    $P284."panic"("Can't form :w list from non-constant strings (yet)")
  if_279_end:
  if_275_end:
.annotate 'line', 146
    get_hll_global $P318, ["PAST"], "Node"
    find_lex $P319, "$past"
    $P320 = $P318."ACCEPTS"($P319)
    isfalse $I321, $P320
    unless $I321, if_317_end
.annotate 'line', 147
    get_hll_global $P322, ["PAST"], "Val"
    find_lex $P323, "$past"
    set $S324, $P323
    $P325 = $P322."new"($S324 :named("value"))
    store_lex "$past", $P325
  if_317_end:
.annotate 'line', 149
    find_lex $P326, "$/"
    find_lex $P327, "$past"
    $P328 = $P326."!make"($P327)
.annotate 'line', 129
    .return ($P328)
  control_268:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P329, exception, "payload"
    .return ($P329)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block285"  :anon :subid("32_1294592800.749") :outer("31_1294592800.749")
.annotate 'line', 135
    .const 'Sub' $P305 = "33_1294592800.749" 
    capture_lex $P305
.annotate 'line', 136
    $P287 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P287
    get_hll_global $P288, ["HLL";"Grammar"], "split_words"
    find_lex $P289, "$/"
    find_lex $P290, "$past"
    $P291 = $P288($P289, $P290)
    store_lex "@words", $P291
.annotate 'line', 137
    find_lex $P294, "@words"
    set $N295, $P294
    isne $I296, $N295, 1.0
    if $I296, if_293
.annotate 'line', 142
    find_lex $P313, "@words"
    unless_null $P313, vivify_97
    $P313 = root_new ['parrot';'ResizablePMCArray']
  vivify_97:
    set $P314, $P313[0]
    unless_null $P314, vivify_98
    new $P314, "Undef"
  vivify_98:
    set $S315, $P314
    new $P316, 'String'
    set $P316, $S315
    store_lex "$past", $P316
.annotate 'line', 141
    set $P292, $P316
.annotate 'line', 137
    goto if_293_end
  if_293:
.annotate 'line', 138
    get_hll_global $P297, ["PAST"], "Op"
    find_lex $P298, "$/"
    $P299 = $P297."new"("list" :named("pasttype"), $P298 :named("node"))
    store_lex "$past", $P299
.annotate 'line', 139
    find_lex $P301, "@words"
    defined $I302, $P301
    unless $I302, for_undef_99
    iter $P300, $P301
    new $P311, 'ExceptionHandler'
    set_addr $P311, loop310_handler
    $P311."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P311
  loop310_test:
    unless $P300, loop310_done
    shift $P303, $P300
  loop310_redo:
    .const 'Sub' $P305 = "33_1294592800.749" 
    capture_lex $P305
    $P305($P303)
  loop310_next:
    goto loop310_test
  loop310_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P312, exception, 'type'
    eq $P312, .CONTROL_LOOP_NEXT, loop310_next
    eq $P312, .CONTROL_LOOP_REDO, loop310_redo
  loop310_done:
    pop_eh 
  for_undef_99:
.annotate 'line', 137
    set $P292, $P300
  if_293_end:
.annotate 'line', 135
    .return ($P292)
.end


.namespace ["HLL";"Actions"]
.sub "_block304"  :anon :subid("33_1294592800.749") :outer("32_1294592800.749")
    .param pmc param_306
.annotate 'line', 139
    .lex "$_", param_306
    find_lex $P307, "$past"
    find_lex $P308, "$_"
    $P309 = $P307."push"($P308)
    .return ($P309)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("34_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_333
.annotate 'line', 152
    .const 'Sub' $P345 = "35_1294592800.749" 
    capture_lex $P345
    new $P332, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P332, control_331
    push_eh $P332
    .lex "self", self
    .lex "$/", param_333
.annotate 'line', 153
    $P334 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P334
.annotate 'line', 154
    new $P335, "Undef"
    .lex "$lastlit", $P335
.annotate 'line', 170
    new $P336, "Undef"
    .lex "$past", $P336
.annotate 'line', 152
    find_lex $P337, "@parts"
.annotate 'line', 154
    new $P338, "String"
    assign $P338, ""
    store_lex "$lastlit", $P338
.annotate 'line', 155
    find_lex $P340, "$/"
    unless_null $P340, vivify_100
    $P340 = root_new ['parrot';'Hash']
  vivify_100:
    set $P341, $P340["quote_atom"]
    unless_null $P341, vivify_101
    new $P341, "Undef"
  vivify_101:
    defined $I342, $P341
    unless $I342, for_undef_102
    iter $P339, $P341
    new $P378, 'ExceptionHandler'
    set_addr $P378, loop377_handler
    $P378."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P378
  loop377_test:
    unless $P339, loop377_done
    shift $P343, $P339
  loop377_redo:
    .const 'Sub' $P345 = "35_1294592800.749" 
    capture_lex $P345
    $P345($P343)
  loop377_next:
    goto loop377_test
  loop377_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P379, exception, 'type'
    eq $P379, .CONTROL_LOOP_NEXT, loop377_next
    eq $P379, .CONTROL_LOOP_REDO, loop377_redo
  loop377_done:
    pop_eh 
  for_undef_102:
.annotate 'line', 169
    find_lex $P381, "$lastlit"
    set $S382, $P381
    isgt $I383, $S382, ""
    unless $I383, if_380_end
    find_lex $P384, "@parts"
    find_lex $P385, "$lastlit"
    $P384."push"($P385)
  if_380_end:
.annotate 'line', 170
    find_lex $P388, "@parts"
    if $P388, if_387
    new $P391, "String"
    assign $P391, ""
    set $P386, $P391
    goto if_387_end
  if_387:
    find_lex $P389, "@parts"
    $P390 = $P389."shift"()
    set $P386, $P390
  if_387_end:
    store_lex "$past", $P386
.annotate 'line', 171
    new $P399, 'ExceptionHandler'
    set_addr $P399, loop398_handler
    $P399."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P399
  loop398_test:
    find_lex $P392, "@parts"
    unless $P392, loop398_done
  loop398_redo:
.annotate 'line', 172
    get_hll_global $P393, ["PAST"], "Op"
    find_lex $P394, "$past"
    find_lex $P395, "@parts"
    $P396 = $P395."shift"()
    $P397 = $P393."new"($P394, $P396, "concat" :named("pirop"))
    store_lex "$past", $P397
  loop398_next:
.annotate 'line', 171
    goto loop398_test
  loop398_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P400, exception, 'type'
    eq $P400, .CONTROL_LOOP_NEXT, loop398_next
    eq $P400, .CONTROL_LOOP_REDO, loop398_redo
  loop398_done:
    pop_eh 
.annotate 'line', 174
    find_lex $P401, "$/"
    find_lex $P402, "$past"
    $P403 = $P401."!make"($P402)
.annotate 'line', 152
    .return ($P403)
  control_331:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P404, exception, "payload"
    .return ($P404)
.end


.namespace ["HLL";"Actions"]
.sub "_block344"  :anon :subid("35_1294592800.749") :outer("34_1294592800.749")
    .param pmc param_347
.annotate 'line', 156
    new $P346, "Undef"
    .lex "$ast", $P346
    .lex "$_", param_347
    find_lex $P348, "$_"
    $P349 = $P348."ast"()
    store_lex "$ast", $P349
.annotate 'line', 157
    get_hll_global $P352, ["PAST"], "Node"
    find_lex $P353, "$ast"
    $P354 = $P352."ACCEPTS"($P353)
    isfalse $I355, $P354
    if $I355, if_351
.annotate 'line', 160
    find_lex $P361, "$ast"
    get_hll_global $P362, ["PAST"], "Val"
    $P363 = $P361."isa"($P362)
    if $P363, if_360
.annotate 'line', 164
    find_lex $P369, "$lastlit"
    set $S370, $P369
    isgt $I371, $S370, ""
    unless $I371, if_368_end
    find_lex $P372, "@parts"
    find_lex $P373, "$lastlit"
    $P372."push"($P373)
  if_368_end:
.annotate 'line', 165
    find_lex $P374, "@parts"
    find_lex $P375, "$ast"
    $P374."push"($P375)
.annotate 'line', 166
    new $P376, "String"
    assign $P376, ""
    store_lex "$lastlit", $P376
.annotate 'line', 163
    set $P359, $P376
.annotate 'line', 160
    goto if_360_end
  if_360:
.annotate 'line', 161
    find_lex $P364, "$lastlit"
    find_lex $P365, "$ast"
    $S366 = $P365."value"()
    concat $P367, $P364, $S366
    store_lex "$lastlit", $P367
.annotate 'line', 160
    set $P359, $P367
  if_360_end:
    set $P350, $P359
.annotate 'line', 157
    goto if_351_end
  if_351:
.annotate 'line', 158
    find_lex $P356, "$lastlit"
    find_lex $P357, "$ast"
    concat $P358, $P356, $P357
    store_lex "$lastlit", $P358
.annotate 'line', 157
    set $P350, $P358
  if_351_end:
.annotate 'line', 155
    .return ($P350)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_atom"  :subid("36_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_408
.annotate 'line', 177
    new $P407, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P407, control_406
    push_eh $P407
    .lex "self", self
    .lex "$/", param_408
.annotate 'line', 178
    find_lex $P409, "$/"
    find_lex $P412, "$/"
    unless_null $P412, vivify_103
    $P412 = root_new ['parrot';'Hash']
  vivify_103:
    set $P413, $P412["quote_escape"]
    unless_null $P413, vivify_104
    new $P413, "Undef"
  vivify_104:
    if $P413, if_411
    find_lex $P417, "$/"
    set $S418, $P417
    new $P410, 'String'
    set $P410, $S418
    goto if_411_end
  if_411:
    find_lex $P414, "$/"
    unless_null $P414, vivify_105
    $P414 = root_new ['parrot';'Hash']
  vivify_105:
    set $P415, $P414["quote_escape"]
    unless_null $P415, vivify_106
    new $P415, "Undef"
  vivify_106:
    $P416 = $P415."ast"()
    set $P410, $P416
  if_411_end:
    $P419 = $P409."!make"($P410)
.annotate 'line', 177
    .return ($P419)
  control_406:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P420, exception, "payload"
    .return ($P420)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<backslash>"  :subid("37_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_424
.annotate 'line', 181
    new $P423, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P423, control_422
    push_eh $P423
    .lex "self", self
    .lex "$/", param_424
    find_lex $P425, "$/"
    $P426 = $P425."!make"("\\")
    .return ($P426)
  control_422:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P427, exception, "payload"
    .return ($P427)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<stopper>"  :subid("38_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_431
.annotate 'line', 182
    new $P430, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P430, control_429
    push_eh $P430
    .lex "self", self
    .lex "$/", param_431
    find_lex $P432, "$/"
    find_lex $P433, "$/"
    unless_null $P433, vivify_107
    $P433 = root_new ['parrot';'Hash']
  vivify_107:
    set $P434, $P433["stopper"]
    unless_null $P434, vivify_108
    new $P434, "Undef"
  vivify_108:
    set $S435, $P434
    $P436 = $P432."!make"($S435)
    .return ($P436)
  control_429:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P437, exception, "payload"
    .return ($P437)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<bs>"  :subid("39_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_441
.annotate 'line', 184
    new $P440, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P440, control_439
    push_eh $P440
    .lex "self", self
    .lex "$/", param_441
    find_lex $P442, "$/"
    $P443 = $P442."!make"("\b")
    .return ($P443)
  control_439:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P444, exception, "payload"
    .return ($P444)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<nl>"  :subid("40_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_448
.annotate 'line', 185
    new $P447, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P447, control_446
    push_eh $P447
    .lex "self", self
    .lex "$/", param_448
    find_lex $P449, "$/"
    $P450 = $P449."!make"("\n")
    .return ($P450)
  control_446:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P451, exception, "payload"
    .return ($P451)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<cr>"  :subid("41_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_455
.annotate 'line', 186
    new $P454, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P454, control_453
    push_eh $P454
    .lex "self", self
    .lex "$/", param_455
    find_lex $P456, "$/"
    $P457 = $P456."!make"("\r")
    .return ($P457)
  control_453:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P458, exception, "payload"
    .return ($P458)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<tab>"  :subid("42_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_462
.annotate 'line', 187
    new $P461, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P461, control_460
    push_eh $P461
    .lex "self", self
    .lex "$/", param_462
    find_lex $P463, "$/"
    $P464 = $P463."!make"("\t")
    .return ($P464)
  control_460:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P465, exception, "payload"
    .return ($P465)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<ff>"  :subid("43_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_469
.annotate 'line', 188
    new $P468, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P468, control_467
    push_eh $P468
    .lex "self", self
    .lex "$/", param_469
    find_lex $P470, "$/"
    $P471 = $P470."!make"("\f")
    .return ($P471)
  control_467:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P472, exception, "payload"
    .return ($P472)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<esc>"  :subid("44_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_476
.annotate 'line', 189
    new $P475, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P475, control_474
    push_eh $P475
    .lex "self", self
    .lex "$/", param_476
    find_lex $P477, "$/"
    $P478 = $P477."!make"("\e")
    .return ($P478)
  control_474:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P479, exception, "payload"
    .return ($P479)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<hex>"  :subid("45_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_483
.annotate 'line', 191
    new $P482, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P482, control_481
    push_eh $P482
    .lex "self", self
    .lex "$/", param_483
.annotate 'line', 192
    find_lex $P484, "$/"
    find_lex $P487, "$/"
    unless_null $P487, vivify_109
    $P487 = root_new ['parrot';'Hash']
  vivify_109:
    set $P488, $P487["hexint"]
    unless_null $P488, vivify_110
    new $P488, "Undef"
  vivify_110:
    if $P488, if_486
    find_lex $P491, "$/"
    unless_null $P491, vivify_111
    $P491 = root_new ['parrot';'Hash']
  vivify_111:
    set $P492, $P491["hexints"]
    unless_null $P492, vivify_112
    $P492 = root_new ['parrot';'Hash']
  vivify_112:
    set $P493, $P492["hexint"]
    unless_null $P493, vivify_113
    new $P493, "Undef"
  vivify_113:
    set $P485, $P493
    goto if_486_end
  if_486:
    find_lex $P489, "$/"
    unless_null $P489, vivify_114
    $P489 = root_new ['parrot';'Hash']
  vivify_114:
    set $P490, $P489["hexint"]
    unless_null $P490, vivify_115
    new $P490, "Undef"
  vivify_115:
    set $P485, $P490
  if_486_end:
    $P494 = "ints_to_string"($P485)
    $P495 = $P484."!make"($P494)
.annotate 'line', 191
    .return ($P495)
  control_481:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P496, exception, "payload"
    .return ($P496)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<oct>"  :subid("46_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_500
.annotate 'line', 195
    new $P499, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P499, control_498
    push_eh $P499
    .lex "self", self
    .lex "$/", param_500
.annotate 'line', 196
    find_lex $P501, "$/"
    find_lex $P504, "$/"
    unless_null $P504, vivify_116
    $P504 = root_new ['parrot';'Hash']
  vivify_116:
    set $P505, $P504["octint"]
    unless_null $P505, vivify_117
    new $P505, "Undef"
  vivify_117:
    if $P505, if_503
    find_lex $P508, "$/"
    unless_null $P508, vivify_118
    $P508 = root_new ['parrot';'Hash']
  vivify_118:
    set $P509, $P508["octints"]
    unless_null $P509, vivify_119
    $P509 = root_new ['parrot';'Hash']
  vivify_119:
    set $P510, $P509["octint"]
    unless_null $P510, vivify_120
    new $P510, "Undef"
  vivify_120:
    set $P502, $P510
    goto if_503_end
  if_503:
    find_lex $P506, "$/"
    unless_null $P506, vivify_121
    $P506 = root_new ['parrot';'Hash']
  vivify_121:
    set $P507, $P506["octint"]
    unless_null $P507, vivify_122
    new $P507, "Undef"
  vivify_122:
    set $P502, $P507
  if_503_end:
    $P511 = "ints_to_string"($P502)
    $P512 = $P501."!make"($P511)
.annotate 'line', 195
    .return ($P512)
  control_498:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P513, exception, "payload"
    .return ($P513)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<chr>"  :subid("47_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_517
.annotate 'line', 199
    new $P516, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P516, control_515
    push_eh $P516
    .lex "self", self
    .lex "$/", param_517
.annotate 'line', 200
    find_lex $P518, "$/"
    find_lex $P519, "$/"
    unless_null $P519, vivify_123
    $P519 = root_new ['parrot';'Hash']
  vivify_123:
    set $P520, $P519["charspec"]
    unless_null $P520, vivify_124
    new $P520, "Undef"
  vivify_124:
    $P521 = $P520."ast"()
    $P522 = $P518."!make"($P521)
.annotate 'line', 199
    .return ($P522)
  control_515:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P523, exception, "payload"
    .return ($P523)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<0>"  :subid("48_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_527
.annotate 'line', 203
    new $P526, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P526, control_525
    push_eh $P526
    .lex "self", self
    .lex "$/", param_527
.annotate 'line', 204
    find_lex $P528, "$/"
    $P529 = $P528."!make"(unicode:"\x{0}")
.annotate 'line', 203
    .return ($P529)
  control_525:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P530, exception, "payload"
    .return ($P530)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<misc>"  :subid("49_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_534
.annotate 'line', 207
    new $P533, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P533, control_532
    push_eh $P533
    .lex "self", self
    .lex "$/", param_534
.annotate 'line', 208
    find_lex $P535, "$/"
    find_lex $P538, "$/"
    unless_null $P538, vivify_125
    $P538 = root_new ['parrot';'Hash']
  vivify_125:
    set $P539, $P538["textq"]
    unless_null $P539, vivify_126
    new $P539, "Undef"
  vivify_126:
    if $P539, if_537
    find_lex $P545, "$/"
    unless_null $P545, vivify_127
    $P545 = root_new ['parrot';'Hash']
  vivify_127:
    set $P546, $P545["textqq"]
    unless_null $P546, vivify_128
    new $P546, "Undef"
  vivify_128:
    $P547 = $P546."Str"()
    set $P536, $P547
    goto if_537_end
  if_537:
    new $P540, "String"
    assign $P540, "\\"
    find_lex $P541, "$/"
    unless_null $P541, vivify_129
    $P541 = root_new ['parrot';'Hash']
  vivify_129:
    set $P542, $P541["textq"]
    unless_null $P542, vivify_130
    new $P542, "Undef"
  vivify_130:
    $S543 = $P542."Str"()
    concat $P544, $P540, $S543
    set $P536, $P544
  if_537_end:
    $P548 = $P535."!make"($P536)
.annotate 'line', 207
    .return ($P548)
  control_532:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P549, exception, "payload"
    .return ($P549)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charname"  :subid("50_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_553
.annotate 'line', 211
    new $P552, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P552, control_551
    push_eh $P552
    .lex "self", self
    .lex "$/", param_553
.annotate 'line', 212
    new $P554, "Undef"
    .lex "$codepoint", $P554
.annotate 'line', 213
    find_lex $P557, "$/"
    unless_null $P557, vivify_131
    $P557 = root_new ['parrot';'Hash']
  vivify_131:
    set $P558, $P557["integer"]
    unless_null $P558, vivify_132
    new $P558, "Undef"
  vivify_132:
    if $P558, if_556
.annotate 'line', 214
    find_lex $P562, "$/"
    set $S563, $P562
    find_codepoint $I564, $S563
    new $P555, 'Integer'
    set $P555, $I564
.annotate 'line', 213
    goto if_556_end
  if_556:
    find_lex $P559, "$/"
    unless_null $P559, vivify_133
    $P559 = root_new ['parrot';'Hash']
  vivify_133:
    set $P560, $P559["integer"]
    unless_null $P560, vivify_134
    new $P560, "Undef"
  vivify_134:
    $P561 = $P560."ast"()
    set $P555, $P561
  if_556_end:
    store_lex "$codepoint", $P555
.annotate 'line', 215
    find_lex $P566, "$codepoint"
    set $N567, $P566
    islt $I568, $N567, 0.0
    unless $I568, if_565_end
    find_lex $P569, "$/"
    $P570 = $P569."CURSOR"()
    new $P571, 'String'
    set $P571, "Unrecognized character name "
    find_lex $P572, "$/"
    concat $P573, $P571, $P572
    $P570."panic"($P573)
  if_565_end:
.annotate 'line', 216
    find_lex $P574, "$/"
    find_lex $P575, "$codepoint"
    set $I576, $P575
    chr $S577, $I576
    $P578 = $P574."!make"($S577)
.annotate 'line', 211
    .return ($P578)
  control_551:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P579, exception, "payload"
    .return ($P579)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("51_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_583
.annotate 'line', 219
    .const 'Sub' $P592 = "52_1294592800.749" 
    capture_lex $P592
    new $P582, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P582, control_581
    push_eh $P582
    .lex "self", self
    .lex "$/", param_583
.annotate 'line', 220
    new $P584, "Undef"
    .lex "$str", $P584
    new $P585, "String"
    assign $P585, ""
    store_lex "$str", $P585
.annotate 'line', 221
    find_lex $P587, "$/"
    unless_null $P587, vivify_135
    $P587 = root_new ['parrot';'Hash']
  vivify_135:
    set $P588, $P587["charname"]
    unless_null $P588, vivify_136
    new $P588, "Undef"
  vivify_136:
    defined $I589, $P588
    unless $I589, for_undef_137
    iter $P586, $P588
    new $P599, 'ExceptionHandler'
    set_addr $P599, loop598_handler
    $P599."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P599
  loop598_test:
    unless $P586, loop598_done
    shift $P590, $P586
  loop598_redo:
    .const 'Sub' $P592 = "52_1294592800.749" 
    capture_lex $P592
    $P592($P590)
  loop598_next:
    goto loop598_test
  loop598_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P600, exception, 'type'
    eq $P600, .CONTROL_LOOP_NEXT, loop598_next
    eq $P600, .CONTROL_LOOP_REDO, loop598_redo
  loop598_done:
    pop_eh 
  for_undef_137:
.annotate 'line', 222
    find_lex $P601, "$/"
    find_lex $P602, "$str"
    $P603 = $P601."!make"($P602)
.annotate 'line', 219
    .return ($P603)
  control_581:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P604, exception, "payload"
    .return ($P604)
.end


.namespace ["HLL";"Actions"]
.sub "_block591"  :anon :subid("52_1294592800.749") :outer("51_1294592800.749")
    .param pmc param_593
.annotate 'line', 221
    .lex "$_", param_593
    find_lex $P594, "$str"
    find_lex $P595, "$_"
    $S596 = $P595."ast"()
    concat $P597, $P594, $S596
    store_lex "$str", $P597
    .return ($P597)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charspec"  :subid("53_1294592800.749") :method :outer("11_1294592800.749")
    .param pmc param_608
.annotate 'line', 225
    new $P607, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P607, control_606
    push_eh $P607
    .lex "self", self
    .lex "$/", param_608
.annotate 'line', 226
    find_lex $P609, "$/"
    find_lex $P612, "$/"
    unless_null $P612, vivify_138
    $P612 = root_new ['parrot';'Hash']
  vivify_138:
    set $P613, $P612["charnames"]
    unless_null $P613, vivify_139
    new $P613, "Undef"
  vivify_139:
    if $P613, if_611
    find_lex $P617, "$/"
    $I618 = "string_to_int"($P617, 10)
    chr $S619, $I618
    new $P610, 'String'
    set $P610, $S619
    goto if_611_end
  if_611:
    find_lex $P614, "$/"
    unless_null $P614, vivify_140
    $P614 = root_new ['parrot';'Hash']
  vivify_140:
    set $P615, $P614["charnames"]
    unless_null $P615, vivify_141
    new $P615, "Undef"
  vivify_141:
    $P616 = $P615."ast"()
    set $P610, $P616
  if_611_end:
    $P620 = $P609."!make"($P610)
.annotate 'line', 225
    .return ($P620)
  control_606:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P621, exception, "payload"
    .return ($P621)
.end


.namespace ["HLL";"Actions"]
.sub "_block623" :load :anon :subid("54_1294592800.749")
.annotate 'line', 3
    .const 'Sub' $P625 = "11_1294592800.749" 
    $P626 = $P625()
    .return ($P626)
.end


.namespace []
.sub "_block628" :load :anon :subid("55_1294592800.749")
.annotate 'line', 1
    .const 'Sub' $P630 = "10_1294592800.749" 
    $P631 = $P630()
    .return ($P631)
.end

### .include 'gen/hllcompiler.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1294592804.28")
.annotate 'line', 0
    .const 'Sub' $P736 = "61_1294592804.28" 
    capture_lex $P736
    get_hll_global $P14, ["HLL";"Compiler"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    get_hll_global $P14, ["HLL";"Compiler"], "_block13" 
    capture_lex $P14
    $P14()
.annotate 'line', 1
    .return ()
    .const 'Sub' $P730 = "60_1294592804.28" 
    .return ($P730)
.end


.namespace []
.sub "" :load :init :subid("post62") :outer("10_1294592804.28")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1294592804.28" 
    .local pmc block
    set block, $P12
.annotate 'line', 2
    load_bytecode "Parrot/Exception.pbc"
.annotate 'line', 1
    $P733 = get_root_global ["parrot"], "P6metaclass"
    new $P734, "ResizablePMCArray"
    push $P734, "@!stages"
    push $P734, "$!parsegrammar"
    push $P734, "$!parseactions"
    push $P734, "$!astgrammar"
    push $P734, "$!commandline_banner"
    push $P734, "$!commandline_prompt"
    push $P734, "@!cmdoptions"
    push $P734, "$!usage"
    push $P734, "$!version"
    push $P734, "$!compiler_progname"
    push $P734, "$!language"
    $P733."new_class"("HLL::Compiler", $P734 :named("attr"))
.annotate 'line', 717
    .const 'Sub' $P736 = "61_1294592804.28" 
    capture_lex $P736
    $P736()
.end


.namespace []
.sub "_block735"  :anon :subid("61_1294592804.28") :outer("10_1294592804.28")
.annotate 'line', 718
    new $P737, "Undef"
    .lex "$pl", $P737
    get_hll_global $P738, ["HLL"], "Compiler"
    $P739 = $P738."new"()
    store_lex "$pl", $P739
.annotate 'line', 719
    find_lex $P740, "$pl"
    $P740."BUILD"()
.annotate 'line', 720
    find_lex $P741, "$pl"
    $P742 = $P741."language"("parrot")
.annotate 'line', 717
    .return ($P742)
.end


.namespace ["HLL";"Compiler"]
.sub "_block13"  :subid("11_1294592804.28") :outer("10_1294592804.28")
.annotate 'line', 9
    .const 'Sub' $P722 = "59_1294592804.28" 
    capture_lex $P722
    .const 'Sub' $P717 = "58_1294592804.28" 
    capture_lex $P717
    .const 'Sub' $P711 = "57_1294592804.28" 
    capture_lex $P711
    .const 'Sub' $P700 = "56_1294592804.28" 
    capture_lex $P700
    .const 'Sub' $P672 = "54_1294592804.28" 
    capture_lex $P672
    .const 'Sub' $P666 = "53_1294592804.28" 
    capture_lex $P666
    .const 'Sub' $P660 = "52_1294592804.28" 
    capture_lex $P660
    .const 'Sub' $P654 = "51_1294592804.28" 
    capture_lex $P654
    .const 'Sub' $P648 = "50_1294592804.28" 
    capture_lex $P648
    .const 'Sub' $P642 = "49_1294592804.28" 
    capture_lex $P642
    .const 'Sub' $P635 = "48_1294592804.28" 
    capture_lex $P635
    .const 'Sub' $P607 = "46_1294592804.28" 
    capture_lex $P607
    .const 'Sub' $P601 = "45_1294592804.28" 
    capture_lex $P601
    .const 'Sub' $P588 = "44_1294592804.28" 
    capture_lex $P588
    .const 'Sub' $P575 = "43_1294592804.28" 
    capture_lex $P575
    .const 'Sub' $P562 = "42_1294592804.28" 
    capture_lex $P562
    .const 'Sub' $P549 = "41_1294592804.28" 
    capture_lex $P549
    .const 'Sub' $P536 = "40_1294592804.28" 
    capture_lex $P536
    .const 'Sub' $P523 = "39_1294592804.28" 
    capture_lex $P523
    .const 'Sub' $P510 = "38_1294592804.28" 
    capture_lex $P510
    .const 'Sub' $P503 = "37_1294592804.28" 
    capture_lex $P503
    .const 'Sub' $P497 = "36_1294592804.28" 
    capture_lex $P497
    .const 'Sub' $P455 = "34_1294592804.28" 
    capture_lex $P455
    .const 'Sub' $P306 = "27_1294592804.28" 
    capture_lex $P306
    .const 'Sub' $P291 = "26_1294592804.28" 
    capture_lex $P291
    .const 'Sub' $P196 = "21_1294592804.28" 
    capture_lex $P196
    .const 'Sub' $P161 = "19_1294592804.28" 
    capture_lex $P161
    .const 'Sub' $P146 = "18_1294592804.28" 
    capture_lex $P146
    .const 'Sub' $P130 = "17_1294592804.28" 
    capture_lex $P130
    .const 'Sub' $P41 = "14_1294592804.28" 
    capture_lex $P41
    .const 'Sub' $P32 = "13_1294592804.28" 
    capture_lex $P32
    .const 'Sub' $P15 = "12_1294592804.28" 
    capture_lex $P15
.annotate 'line', 69
    .const 'Sub' $P15 = "12_1294592804.28" 
    newclosure $P31, $P15
    .lex "value_type", $P31
.annotate 'line', 22
    find_lex $P40, "value_type"
.annotate 'line', 659
    .const 'Sub' $P722 = "59_1294592804.28" 
    newclosure $P728, $P722
.annotate 'line', 9
    .return ($P728)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "value_type"  :subid("12_1294592804.28") :outer("11_1294592804.28")
    .param pmc param_18
.annotate 'line', 69
    new $P17, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P17, control_16
    push_eh $P17
    .lex "$value", param_18
.annotate 'line', 70
    find_lex $P21, "$value"
    isa $I22, $P21, "NameSpace"
    if $I22, if_20
.annotate 'line', 72
    find_lex $P26, "$value"
    isa $I27, $P26, "Sub"
    if $I27, if_25
    new $P29, "String"
    assign $P29, "var"
    set $P24, $P29
    goto if_25_end
  if_25:
    new $P28, "String"
    assign $P28, "sub"
    set $P24, $P28
  if_25_end:
    set $P19, $P24
.annotate 'line', 70
    goto if_20_end
  if_20:
    new $P23, "String"
    assign $P23, "namespace"
    set $P19, $P23
  if_20_end:
.annotate 'line', 69
    .return ($P19)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P30, exception, "payload"
    .return ($P30)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("13_1294592804.28") :method :outer("11_1294592804.28")
.annotate 'line', 22
    new $P34, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P34, control_33
    push_eh $P34
    .lex "self", self
.annotate 'line', 23
    split $P35, " ", "parse past post pir evalpmc"
    find_lex $P36, "self"
    setattribute $P36, "@!stages", $P35
.annotate 'line', 24
    split $P37, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats"
    find_lex $P38, "self"
    setattribute $P38, "@!cmdoptions", $P37
.annotate 'line', 25

            .include 'iglobals.pasm'
            .include 'cclass.pasm'

            $P1 = box <<'            USAGE'
  This compiler is based on HLL::Compiler.

  Options:
            USAGE

            .local pmc it
            $P0 = getattribute self, '@!cmdoptions'
            it = iter $P0
          options_loop:
            unless it goto options_end
            $P3  = shift it
            $P1 .= "    "
            $P1 .= $P3
            $P1 .= "\n"
            goto options_loop
          options_end:
            setattribute self, '$!usage', $P1

            $S0  = '???'
            push_eh _handler
            $P0 = getinterp
            $P0 = $P0[.IGLOBALS_CONFIG_HASH]
            $S0  = $P0['revision']   # also $I0 = P0['installed'] could be used
          _handler:
            pop_eh
            $P2  = box 'This compiler is built with the Parrot Compiler Toolkit, parrot '
            if $S0 goto _revision_lab
            $P2 .= 'version '
            $S0 = $P0['VERSION']
            goto _is_version
          _revision_lab:
            $P2 .= 'revision '
          _is_version:
            $P2 .= $S0
            $P2 .= '.'
            setattribute self, '$!version', $P2
        
.annotate 'line', 22
    .return ()
  control_33:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P39, exception, "payload"
    .return ($P39)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("14_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_44
    .param pmc param_47 :slurpy
    .param pmc param_45 :optional :named("tagset")
    .param int has_param_45 :opt_flag
.annotate 'line', 75
    .const 'Sub' $P113 = "16_1294592804.28" 
    capture_lex $P113
    .const 'Sub' $P92 = "15_1294592804.28" 
    capture_lex $P92
    new $P43, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P43, control_42
    push_eh $P43
    .lex "self", self
    .lex "$module", param_44
    if has_param_45, optparam_63
    new $P46, "Undef"
    set param_45, $P46
  optparam_63:
    .lex "$tagset", param_45
    .lex "@symbols", param_47
.annotate 'line', 82
    $P48 = root_new ['parrot';'Hash']
    .lex "%exports", $P48
.annotate 'line', 83
    $P49 = root_new ['parrot';'Hash']
    .lex "%source", $P49
.annotate 'line', 77
    find_lex $P51, "$module"
    does $I52, $P51, "hash"
    new $P53, 'Integer'
    set $P53, $I52
    isfalse $I54, $P53
    unless $I54, if_50_end
.annotate 'line', 78
    find_lex $P55, "self"
    find_lex $P56, "$module"
    $P57 = $P55."get_module"($P56)
    store_lex "$module", $P57
  if_50_end:
.annotate 'line', 81
    find_lex $P59, "$tagset"
    set $P58, $P59
    defined $I61, $P58
    if $I61, default_60
    find_lex $P64, "@symbols"
    if $P64, if_63
    new $P66, "String"
    assign $P66, "DEFAULT"
    set $P62, $P66
    goto if_63_end
  if_63:
    new $P65, "String"
    assign $P65, "ALL"
    set $P62, $P65
  if_63_end:
    set $P58, $P62
  default_60:
    store_lex "$tagset", $P58
    find_lex $P67, "%exports"
.annotate 'line', 83
    find_lex $P68, "$tagset"
    set $S69, $P68
    find_lex $P70, "$module"
    unless_null $P70, vivify_64
    $P70 = root_new ['parrot';'Hash']
  vivify_64:
    set $P71, $P70["EXPORT"]
    unless_null $P71, vivify_65
    $P71 = root_new ['parrot';'Hash']
  vivify_65:
    set $P72, $P71[$S69]
    unless_null $P72, vivify_66
    new $P72, "Undef"
  vivify_66:
    store_lex "%source", $P72
.annotate 'line', 84
    find_lex $P74, "%source"
    defined $I75, $P74
    new $P76, 'Integer'
    set $P76, $I75
    isfalse $I77, $P76
    unless $I77, if_73_end
.annotate 'line', 85
    find_lex $P80, "$tagset"
    set $S81, $P80
    iseq $I82, $S81, "ALL"
    if $I82, if_79
    $P84 = root_new ['parrot';'Hash']
    set $P78, $P84
    goto if_79_end
  if_79:
    find_lex $P83, "$module"
    set $P78, $P83
  if_79_end:
    store_lex "%source", $P78
  if_73_end:
.annotate 'line', 87
    find_lex $P86, "@symbols"
    if $P86, if_85
.annotate 'line', 94
    find_lex $P109, "%source"
    defined $I110, $P109
    unless $I110, for_undef_67
    iter $P108, $P109
    new $P126, 'ExceptionHandler'
    set_addr $P126, loop125_handler
    $P126."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P126
  loop125_test:
    unless $P108, loop125_done
    shift $P111, $P108
  loop125_redo:
    .const 'Sub' $P113 = "16_1294592804.28" 
    capture_lex $P113
    $P113($P111)
  loop125_next:
    goto loop125_test
  loop125_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P127, exception, 'type'
    eq $P127, .CONTROL_LOOP_NEXT, loop125_next
    eq $P127, .CONTROL_LOOP_REDO, loop125_redo
  loop125_done:
    pop_eh 
  for_undef_67:
.annotate 'line', 93
    goto if_85_end
  if_85:
.annotate 'line', 88
    find_lex $P88, "@symbols"
    defined $I89, $P88
    unless $I89, for_undef_70
    iter $P87, $P88
    new $P106, 'ExceptionHandler'
    set_addr $P106, loop105_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop105_test:
    unless $P87, loop105_done
    shift $P90, $P87
  loop105_redo:
    .const 'Sub' $P92 = "15_1294592804.28" 
    capture_lex $P92
    $P92($P90)
  loop105_next:
    goto loop105_test
  loop105_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop105_next
    eq $P107, .CONTROL_LOOP_REDO, loop105_redo
  loop105_done:
    pop_eh 
  for_undef_70:
  if_85_end:
.annotate 'line', 87
    find_lex $P128, "%exports"
.annotate 'line', 75
    .return ($P128)
  control_42:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P129, exception, "payload"
    .return ($P129)
.end


.namespace ["HLL";"Compiler"]
.sub "_block112"  :anon :subid("16_1294592804.28") :outer("14_1294592804.28")
    .param pmc param_115
.annotate 'line', 95
    new $P114, "Undef"
    .lex "$value", $P114
    .lex "$_", param_115
    find_lex $P116, "$_"
    $P117 = $P116."value"()
    store_lex "$value", $P117
.annotate 'line', 96
    find_lex $P118, "$value"
    find_lex $P119, "$_"
    $P120 = $P119."key"()
    find_lex $P121, "$value"
    $P122 = "value_type"($P121)
    find_lex $P123, "%exports"
    unless_null $P123, vivify_68
    $P123 = root_new ['parrot';'Hash']
    store_lex "%exports", $P123
  vivify_68:
    set $P124, $P123[$P122]
    unless_null $P124, vivify_69
    $P124 = root_new ['parrot';'Hash']
    set $P123[$P122], $P124
  vivify_69:
    set $P124[$P120], $P118
.annotate 'line', 94
    .return ($P118)
.end


.namespace ["HLL";"Compiler"]
.sub "_block91"  :anon :subid("15_1294592804.28") :outer("14_1294592804.28")
    .param pmc param_94
.annotate 'line', 89
    new $P93, "Undef"
    .lex "$value", $P93
    .lex "$_", param_94
    find_lex $P95, "$_"
    set $S96, $P95
    find_lex $P97, "%source"
    unless_null $P97, vivify_71
    $P97 = root_new ['parrot';'Hash']
  vivify_71:
    set $P98, $P97[$S96]
    unless_null $P98, vivify_72
    new $P98, "Undef"
  vivify_72:
    store_lex "$value", $P98
.annotate 'line', 90
    find_lex $P99, "$value"
    find_lex $P100, "$_"
    find_lex $P101, "$value"
    $P102 = "value_type"($P101)
    find_lex $P103, "%exports"
    unless_null $P103, vivify_73
    $P103 = root_new ['parrot';'Hash']
    store_lex "%exports", $P103
  vivify_73:
    set $P104, $P103[$P102]
    unless_null $P104, vivify_74
    $P104 = root_new ['parrot';'Hash']
    set $P103[$P102], $P104
  vivify_74:
    set $P104[$P100], $P99
.annotate 'line', 88
    .return ($P99)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_module"  :subid("17_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_133
.annotate 'line', 102
    new $P132, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P132, control_131
    push_eh $P132
    .lex "self", self
    .lex "$name", param_133
.annotate 'line', 103
    $P134 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P134
    find_lex $P135, "self"
    find_lex $P136, "$name"
    $P137 = $P135."parse_name"($P136)
    store_lex "@name", $P137
.annotate 'line', 104
    find_lex $P138, "@name"
    find_lex $P139, "self"
    getattribute $P140, $P139, "$!language"
    unless_null $P140, vivify_75
    new $P140, "Undef"
  vivify_75:
    set $S141, $P140
    downcase $S142, $S141
    $P138."unshift"($S142)
.annotate 'line', 105
    find_lex $P143, "@name"
    get_root_namespace $P144, $P143
.annotate 'line', 102
    .return ($P144)
  control_131:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P145, exception, "payload"
    .return ($P145)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "language"  :subid("18_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_149 :optional
    .param int has_param_149 :opt_flag
.annotate 'line', 108
    new $P148, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P148, control_147
    push_eh $P148
    .lex "self", self
    if has_param_149, optparam_76
    new $P150, "Undef"
    set param_149, $P150
  optparam_76:
    .lex "$name", param_149
.annotate 'line', 109
    find_lex $P152, "$name"
    unless $P152, if_151_end
.annotate 'line', 110
    find_lex $P153, "$name"
    find_lex $P154, "self"
    setattribute $P154, "$!language", $P153
.annotate 'line', 111
    find_lex $P155, "$name"
    set $S156, $P155
    find_lex $P157, "self"
    compreg $S156, $P157
  if_151_end:
.annotate 'line', 109
    find_lex $P158, "self"
    getattribute $P159, $P158, "$!language"
    unless_null $P159, vivify_77
    new $P159, "Undef"
  vivify_77:
.annotate 'line', 108
    .return ($P159)
  control_147:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P160, exception, "payload"
    .return ($P160)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "load_module"  :subid("19_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_164
.annotate 'line', 116
    .const 'Sub' $P174 = "20_1294592804.28" 
    capture_lex $P174
    new $P163, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P163, control_162
    push_eh $P163
    .lex "self", self
    .lex "$name", param_164
.annotate 'line', 117
    new $P165, "Undef"
    .lex "$base", $P165
.annotate 'line', 118
    new $P166, "Undef"
    .lex "$loaded", $P166
.annotate 'line', 117
    find_lex $P167, "self"
    find_lex $P168, "$name"
    $P169 = $P167."parse_name"($P168)
    join $S170, "/", $P169
    new $P171, 'String'
    set $P171, $S170
    store_lex "$base", $P171
.annotate 'line', 118
    new $P172, "Integer"
    assign $P172, 0
    store_lex "$loaded", $P172
.annotate 'line', 119
    .const 'Sub' $P174 = "20_1294592804.28" 
    capture_lex $P174
    $P174()
.annotate 'line', 120
    find_lex $P187, "$loaded"
    if $P187, unless_186_end
    find_lex $P188, "$base"
    concat $P189, $P188, ".pir"
    set $S190, $P189
    load_bytecode $S190
    new $P191, "Integer"
    assign $P191, 1
    store_lex "$loaded", $P191
  unless_186_end:
.annotate 'line', 121
    find_lex $P192, "self"
    find_lex $P193, "$name"
    $P194 = $P192."get_module"($P193)
.annotate 'line', 116
    .return ($P194)
  control_162:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P195, exception, "payload"
    .return ($P195)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block173"  :anon :subid("20_1294592804.28") :outer("19_1294592804.28")
.annotate 'line', 119
    new $P181, 'ExceptionHandler'
    set_addr $P181, control_180
    $P181."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P181
    find_lex $P175, "$base"
    concat $P176, $P175, ".pbc"
    set $S177, $P176
    load_bytecode $S177
    new $P178, "Integer"
    assign $P178, 1
    store_lex "$loaded", $P178
    pop_eh 
    goto skip_handler_179
  control_180:
    .local pmc exception 
    .get_results (exception) 
    new $P184, 'Integer'
    set $P184, 1
    set exception["handled"], $P184
    set $I185, exception["handled"]
    ne $I185, 1, nothandled_183
  handled_182:
    .return (exception)
  nothandled_183:
    rethrow exception
  skip_handler_179:
    .return ($P178)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("21_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_199
    .param pmc param_200
.annotate 'line', 124
    .const 'Sub' $P206 = "22_1294592804.28" 
    capture_lex $P206
    new $P198, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P198, control_197
    push_eh $P198
    .lex "self", self
    .lex "$target", param_199
    .lex "%exports", param_200
.annotate 'line', 125
    find_lex $P202, "%exports"
    defined $I203, $P202
    unless $I203, for_undef_78
    iter $P201, $P202
    new $P288, 'ExceptionHandler'
    set_addr $P288, loop287_handler
    $P288."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P288
  loop287_test:
    unless $P201, loop287_done
    shift $P204, $P201
  loop287_redo:
    .const 'Sub' $P206 = "22_1294592804.28" 
    capture_lex $P206
    $P206($P204)
  loop287_next:
    goto loop287_test
  loop287_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P289, exception, 'type'
    eq $P289, .CONTROL_LOOP_NEXT, loop287_next
    eq $P289, .CONTROL_LOOP_REDO, loop287_redo
  loop287_done:
    pop_eh 
  for_undef_78:
.annotate 'line', 124
    .return ($P201)
  control_197:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P290, exception, "payload"
    .return ($P290)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block205"  :anon :subid("22_1294592804.28") :outer("21_1294592804.28")
    .param pmc param_209
.annotate 'line', 125
    .const 'Sub' $P276 = "25_1294592804.28" 
    capture_lex $P276
    .const 'Sub' $P256 = "24_1294592804.28" 
    capture_lex $P256
    .const 'Sub' $P227 = "23_1294592804.28" 
    capture_lex $P227
.annotate 'line', 126
    new $P207, "Undef"
    .lex "$type", $P207
.annotate 'line', 127
    $P208 = root_new ['parrot';'Hash']
    .lex "%items", $P208
    .lex "$_", param_209
.annotate 'line', 126
    find_lex $P210, "$_"
    $P211 = $P210."key"()
    store_lex "$type", $P211
.annotate 'line', 127
    find_lex $P212, "$_"
    $P213 = $P212."value"()
    store_lex "%items", $P213
.annotate 'line', 128
    find_lex $P216, "self"
    new $P217, 'String'
    set $P217, "import_"
    find_lex $P218, "$type"
    concat $P219, $P217, $P218
    set $S220, $P219
    can $I221, $P216, $S220
    if $I221, if_215
.annotate 'line', 131
    find_lex $P245, "$target"
    new $P246, 'String'
    set $P246, "add_"
    find_lex $P247, "$type"
    concat $P248, $P246, $P247
    set $S249, $P248
    can $I250, $P245, $S249
    if $I250, if_244
.annotate 'line', 135
    find_lex $P272, "%items"
    defined $I273, $P272
    unless $I273, for_undef_79
    iter $P271, $P272
    new $P285, 'ExceptionHandler'
    set_addr $P285, loop284_handler
    $P285."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P285
  loop284_test:
    unless $P271, loop284_done
    shift $P274, $P271
  loop284_redo:
    .const 'Sub' $P276 = "25_1294592804.28" 
    capture_lex $P276
    $P276($P274)
  loop284_next:
    goto loop284_test
  loop284_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P286, exception, 'type'
    eq $P286, .CONTROL_LOOP_NEXT, loop284_next
    eq $P286, .CONTROL_LOOP_REDO, loop284_redo
  loop284_done:
    pop_eh 
  for_undef_79:
.annotate 'line', 134
    set $P243, $P271
.annotate 'line', 131
    goto if_244_end
  if_244:
.annotate 'line', 132
    find_lex $P252, "%items"
    defined $I253, $P252
    unless $I253, for_undef_81
    iter $P251, $P252
    new $P269, 'ExceptionHandler'
    set_addr $P269, loop268_handler
    $P269."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P269
  loop268_test:
    unless $P251, loop268_done
    shift $P254, $P251
  loop268_redo:
    .const 'Sub' $P256 = "24_1294592804.28" 
    capture_lex $P256
    $P256($P254)
  loop268_next:
    goto loop268_test
  loop268_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P270, exception, 'type'
    eq $P270, .CONTROL_LOOP_NEXT, loop268_next
    eq $P270, .CONTROL_LOOP_REDO, loop268_redo
  loop268_done:
    pop_eh 
  for_undef_81:
.annotate 'line', 131
    set $P243, $P251
  if_244_end:
    set $P214, $P243
.annotate 'line', 128
    goto if_215_end
  if_215:
.annotate 'line', 129
    find_lex $P223, "%items"
    defined $I224, $P223
    unless $I224, for_undef_82
    iter $P222, $P223
    new $P241, 'ExceptionHandler'
    set_addr $P241, loop240_handler
    $P241."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P241
  loop240_test:
    unless $P222, loop240_done
    shift $P225, $P222
  loop240_redo:
    .const 'Sub' $P227 = "23_1294592804.28" 
    capture_lex $P227
    $P227($P225)
  loop240_next:
    goto loop240_test
  loop240_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P242, exception, 'type'
    eq $P242, .CONTROL_LOOP_NEXT, loop240_next
    eq $P242, .CONTROL_LOOP_REDO, loop240_redo
  loop240_done:
    pop_eh 
  for_undef_82:
.annotate 'line', 128
    set $P214, $P222
  if_215_end:
.annotate 'line', 125
    .return ($P214)
.end


.namespace ["HLL";"Compiler"]
.sub "_block275"  :anon :subid("25_1294592804.28") :outer("22_1294592804.28")
    .param pmc param_277
.annotate 'line', 135
    .lex "$_", param_277
    find_lex $P278, "$_"
    $P279 = $P278."value"()
    find_lex $P280, "$_"
    $P281 = $P280."key"()
    set $S282, $P281
    find_lex $P283, "$target"
    unless_null $P283, vivify_80
    $P283 = root_new ['parrot';'Hash']
    store_lex "$target", $P283
  vivify_80:
    set $P283[$S282], $P279
    .return ($P279)
.end


.namespace ["HLL";"Compiler"]
.sub "_block255"  :anon :subid("24_1294592804.28") :outer("22_1294592804.28")
    .param pmc param_257
.annotate 'line', 132
    .lex "$_", param_257
    find_lex $P258, "$target"
    find_lex $P259, "$_"
    $P260 = $P259."key"()
    find_lex $P261, "$_"
    $P262 = $P261."value"()
    new $P263, 'String'
    set $P263, "add_"
    find_lex $P264, "$type"
    concat $P265, $P263, $P264
    set $S266, $P265
    $P267 = $P258.$S266($P260, $P262)
    .return ($P267)
.end


.namespace ["HLL";"Compiler"]
.sub "_block226"  :anon :subid("23_1294592804.28") :outer("22_1294592804.28")
    .param pmc param_228
.annotate 'line', 129
    .lex "$_", param_228
    find_lex $P229, "self"
    find_lex $P230, "$target"
    find_lex $P231, "$_"
    $P232 = $P231."key"()
    find_lex $P233, "$_"
    $P234 = $P233."value"()
    new $P235, 'String'
    set $P235, "import_"
    find_lex $P236, "$type"
    concat $P237, $P235, $P236
    set $S238, $P237
    $P239 = $P229.$S238($P230, $P232, $P234)
    .return ($P239)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "autoprint"  :subid("26_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_294
.annotate 'line', 140
    new $P293, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P293, control_292
    push_eh $P293
    .lex "self", self
    .lex "$value", param_294
.annotate 'line', 142
    getinterp $P297
    $P298 = $P297."stdout_handle"()
    $N299 = $P298."tell"()
    find_dynamic_lex $P300, "$*AUTOPRINTPOS"
    unless_null $P300, vivify_83
    get_hll_global $P300, "$AUTOPRINTPOS"
    unless_null $P300, vivify_84
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_84:
  vivify_83:
    set $N301, $P300
    isgt $I302, $N299, $N301
    unless $I302, unless_296
    new $P295, 'Integer'
    set $P295, $I302
    goto unless_296_end
  unless_296:
.annotate 'line', 141
    find_lex $P303, "$value"
    set $S304, $P303
    say $S304
  unless_296_end:
.annotate 'line', 140
    .return ($P295)
  control_292:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P305, exception, "payload"
    .return ($P305)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("27_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_309 :slurpy :named
.annotate 'line', 145
    .const 'Sub' $P341 = "28_1294592804.28" 
    capture_lex $P341
    new $P308, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P308, control_307
    push_eh $P308
    .lex "self", self
    .lex "%adverbs", param_309
.annotate 'line', 146
    new $P310, "Undef"
    .lex "$target", $P310
.annotate 'line', 150
    new $P311, "Undef"
    .lex "$stdin", $P311
.annotate 'line', 151
    new $P312, "Undef"
    .lex "$encoding", $P312
.annotate 'line', 156
    new $P313, "Undef"
    .lex "$save_ctx", $P313
.annotate 'line', 146
    find_lex $P314, "%adverbs"
    unless_null $P314, vivify_85
    $P314 = root_new ['parrot';'Hash']
  vivify_85:
    set $P315, $P314["target"]
    unless_null $P315, vivify_86
    new $P315, "Undef"
  vivify_86:
    set $S316, $P315
    downcase $S317, $S316
    new $P318, 'String'
    set $P318, $S317
    store_lex "$target", $P318
.annotate 'line', 148
    getinterp $P319
    $P320 = $P319."stderr_handle"()
    find_lex $P321, "self"
    $S322 = $P321."commandline_banner"()
    print $P320, $S322
.annotate 'line', 150
    getinterp $P323
    $P324 = $P323."stdin_handle"()
    store_lex "$stdin", $P324
.annotate 'line', 151
    find_lex $P325, "%adverbs"
    unless_null $P325, vivify_87
    $P325 = root_new ['parrot';'Hash']
  vivify_87:
    set $P326, $P325["encoding"]
    unless_null $P326, vivify_88
    new $P326, "Undef"
  vivify_88:
    set $S327, $P326
    new $P328, 'String'
    set $P328, $S327
    store_lex "$encoding", $P328
.annotate 'line', 152
    find_lex $P332, "$encoding"
    if $P332, if_331
    set $P330, $P332
    goto if_331_end
  if_331:
    find_lex $P333, "$encoding"
    set $S334, $P333
    isne $I335, $S334, "fixed_8"
    new $P330, 'Integer'
    set $P330, $I335
  if_331_end:
    unless $P330, if_329_end
.annotate 'line', 153
    find_lex $P336, "$stdin"
    find_lex $P337, "$encoding"
    $P336."encoding"($P337)
  if_329_end:
.annotate 'line', 152
    find_lex $P338, "$save_ctx"
.annotate 'line', 157
    new $P452, 'ExceptionHandler'
    set_addr $P452, loop451_handler
    $P452."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P452
  loop451_test:
    new $P339, "Integer"
    assign $P339, 1
    unless $P339, loop451_done
  loop451_redo:
    .const 'Sub' $P341 = "28_1294592804.28" 
    capture_lex $P341
    $P341()
  loop451_next:
    goto loop451_test
  loop451_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P453, exception, 'type'
    eq $P453, .CONTROL_LOOP_NEXT, loop451_next
    eq $P453, .CONTROL_LOOP_REDO, loop451_redo
  loop451_done:
    pop_eh 
.annotate 'line', 145
    .return ($P339)
  control_307:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P454, exception, "payload"
    .return ($P454)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block340"  :anon :subid("28_1294592804.28") :outer("27_1294592804.28")
.annotate 'line', 157
    .const 'Sub' $P373 = "29_1294592804.28" 
    capture_lex $P373
.annotate 'line', 160
    new $P342, "Undef"
    .lex "$prompt", $P342
.annotate 'line', 161
    new $P343, "Undef"
    .lex "$code", $P343
.annotate 'line', 166
    new $P344, "Undef"
    .lex "$*AUTOPRINTPOS", $P344
.annotate 'line', 167
    new $P345, "Undef"
    .lex "$*CTXSAVE", $P345
.annotate 'line', 168
    new $P346, "Undef"
    .lex "$*MAIN_CTX", $P346
.annotate 'line', 158
    find_lex $P348, "$stdin"
    if $P348, unless_347_end
    set $I349, .CONTROL_LOOP_LAST
    die 0, $I349
  unless_347_end:
.annotate 'line', 160
    find_lex $P351, "self"
    $P352 = $P351."commandline_prompt"()
    set $P350, $P352
    defined $I354, $P350
    if $I354, default_353
    new $P355, "String"
    assign $P355, "> "
    set $P350, $P355
  default_353:
    store_lex "$prompt", $P350
.annotate 'line', 161
    find_lex $P356, "$stdin"
    find_lex $P357, "$prompt"
    set $S358, $P357
    $P359 = $P356."readline_interactive"($S358)
    store_lex "$code", $P359
.annotate 'line', 163
    find_lex $P361, "$code"
    isnull $I362, $P361
    unless $I362, if_360_end
    set $I363, .CONTROL_LOOP_LAST
    die 0, $I363
  if_360_end:
.annotate 'line', 166
    getinterp $P364
    $P365 = $P364."stdout_handle"()
    $P366 = $P365."tell"()
    store_lex "$*AUTOPRINTPOS", $P366
.annotate 'line', 167
    find_lex $P367, "self"
    store_lex "$*CTXSAVE", $P367
    find_lex $P368, "$*MAIN_CTX"
    unless_null $P368, vivify_89
    get_hll_global $P368, "$MAIN_CTX"
    unless_null $P368, vivify_90
    die "Contextual $*MAIN_CTX not found"
  vivify_90:
  vivify_89:
.annotate 'line', 170
    find_lex $P371, "$code"
    if $P371, if_370
    set $P369, $P371
    goto if_370_end
  if_370:
    .const 'Sub' $P373 = "29_1294592804.28" 
    capture_lex $P373
    $P450 = $P373()
    set $P369, $P450
  if_370_end:
.annotate 'line', 157
    .return ($P369)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block372"  :anon :subid("29_1294592804.28") :outer("28_1294592804.28")
.annotate 'line', 170
    .const 'Sub' $P406 = "32_1294592804.28" 
    capture_lex $P406
    .const 'Sub' $P379 = "30_1294592804.28" 
    capture_lex $P379
.annotate 'line', 172
    new $P374, "Undef"
    .lex "$output", $P374
.annotate 'line', 171
    find_lex $P375, "$code"
    concat $P376, $P375, "\n"
    store_lex "$code", $P376
    find_lex $P377, "$output"
.annotate 'line', 173
    .const 'Sub' $P379 = "30_1294592804.28" 
    capture_lex $P379
    $P379()
.annotate 'line', 180
    find_dynamic_lex $P403, "$*MAIN_CTX"
    unless_null $P403, vivify_91
    get_hll_global $P403, "$MAIN_CTX"
    unless_null $P403, vivify_92
    die "Contextual $*MAIN_CTX not found"
  vivify_92:
  vivify_91:
    defined $I404, $P403
    unless $I404, if_402_end
    .const 'Sub' $P406 = "32_1294592804.28" 
    capture_lex $P406
    $P406()
  if_402_end:
.annotate 'line', 188
    find_lex $P429, "$output"
    isnull $I430, $P429
    unless $I430, if_428_end
    set $I431, .CONTROL_LOOP_NEXT
    die 0, $I431
  if_428_end:
.annotate 'line', 190
    find_lex $P434, "$target"
    isfalse $I435, $P434
    if $I435, if_433
.annotate 'line', 192
    find_lex $P441, "$target"
    set $S442, $P441
    iseq $I443, $S442, "pir"
    if $I443, if_440
.annotate 'line', 195
    find_lex $P445, "self"
    find_lex $P446, "$output"
    find_lex $P447, "$target"
    find_lex $P448, "%adverbs"
    $P449 = $P445."dumper"($P446, $P447, $P448 :flat)
.annotate 'line', 194
    set $P439, $P449
.annotate 'line', 192
    goto if_440_end
  if_440:
.annotate 'line', 193
    find_lex $P444, "$output"
    say $P444
  if_440_end:
.annotate 'line', 192
    set $P432, $P439
.annotate 'line', 190
    goto if_433_end
  if_433:
.annotate 'line', 191
    find_lex $P436, "self"
    find_lex $P437, "$output"
    $P438 = $P436."autoprint"($P437)
.annotate 'line', 190
    set $P432, $P438
  if_433_end:
.annotate 'line', 170
    .return ($P432)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block378"  :anon :subid("30_1294592804.28") :outer("29_1294592804.28")
.annotate 'line', 173
    .const 'Sub' $P391 = "31_1294592804.28" 
    capture_lex $P391
    new $P387, 'ExceptionHandler'
    set_addr $P387, control_386
    $P387."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P387
.annotate 'line', 174
    find_lex $P380, "self"
    find_lex $P381, "$code"
    find_lex $P382, "$save_ctx"
    find_lex $P383, "%adverbs"
    $P384 = $P380."eval"($P381, $P383 :flat, $P382 :named("outer_ctx"))
    store_lex "$output", $P384
.annotate 'line', 173
    pop_eh 
    goto skip_handler_385
  control_386:
.annotate 'line', 175
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P391 = "31_1294592804.28" 
    newclosure $P399, $P391
    $P399(exception)
    new $P400, 'Integer'
    set $P400, 1
    set exception["handled"], $P400
    set $I401, exception["handled"]
    ne $I401, 1, nothandled_389
  handled_388:
    .return (exception)
  nothandled_389:
    rethrow exception
  skip_handler_385:
.annotate 'line', 173
    .return ()
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block390"  :anon :subid("31_1294592804.28") :outer("30_1294592804.28")
    .param pmc param_392
.annotate 'line', 175
    .lex "$_", param_392
    find_lex $P393, "$_"
    .lex "$!", $P393
.annotate 'line', 176
    find_lex $P394, "$!"
    set $S395, $P394
    new $P396, 'String'
    set $P396, $S395
    concat $P397, $P396, "\n"
    print $P397
.annotate 'line', 177
    set $I398, .CONTROL_LOOP_NEXT
    die 0, $I398
.annotate 'line', 175
    .return ()
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block405"  :anon :subid("32_1294592804.28") :outer("29_1294592804.28")
.annotate 'line', 180
    .const 'Sub' $P417 = "33_1294592804.28" 
    capture_lex $P417
.annotate 'line', 181
    get_global $P407, "$interactive_ctx"
    unless_null $P407, vivify_93
    new $P407, "Undef"
    set_global "$interactive_ctx", $P407
  vivify_93:
.annotate 'line', 182
    get_global $P408, "%interactive_pad"
    unless_null $P408, vivify_94
    $P408 = root_new ['parrot';'Hash']
    set_global "%interactive_pad", $P408
  vivify_94:
.annotate 'line', 180
    get_global $P409, "$interactive_ctx"
    get_global $P410, "%interactive_pad"
.annotate 'line', 183
    find_dynamic_lex $P412, "$*MAIN_CTX"
    unless_null $P412, vivify_95
    get_hll_global $P412, "$MAIN_CTX"
    unless_null $P412, vivify_96
    die "Contextual $*MAIN_CTX not found"
  vivify_96:
  vivify_95:
    $P413 = $P412."lexpad_full"()
    defined $I414, $P413
    unless $I414, for_undef_97
    iter $P411, $P413
    new $P425, 'ExceptionHandler'
    set_addr $P425, loop424_handler
    $P425."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P425
  loop424_test:
    unless $P411, loop424_done
    shift $P415, $P411
  loop424_redo:
    .const 'Sub' $P417 = "33_1294592804.28" 
    capture_lex $P417
    $P417($P415)
  loop424_next:
    goto loop424_test
  loop424_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P426, exception, 'type'
    eq $P426, .CONTROL_LOOP_NEXT, loop424_next
    eq $P426, .CONTROL_LOOP_REDO, loop424_redo
  loop424_done:
    pop_eh 
  for_undef_97:
.annotate 'line', 186
    get_global $P427, "$interactive_ctx"
    store_lex "$save_ctx", $P427
.annotate 'line', 180
    .return ($P427)
.end


.namespace ["HLL";"Compiler"]
.sub "_block416"  :anon :subid("33_1294592804.28") :outer("32_1294592804.28")
    .param pmc param_418
.annotate 'line', 183
    .lex "$_", param_418
.annotate 'line', 184
    find_lex $P419, "$_"
    $P420 = $P419."value"()
    find_lex $P421, "$_"
    $P422 = $P421."key"()
    get_global $P423, "%interactive_pad"
    unless_null $P423, vivify_98
    $P423 = root_new ['parrot';'Hash']
    set_global "%interactive_pad", $P423
  vivify_98:
    set $P423[$P422], $P420
.annotate 'line', 183
    .return ($P420)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "eval"  :subid("34_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_458
    .param pmc param_459 :slurpy
    .param pmc param_460 :slurpy :named
.annotate 'line', 201
    .const 'Sub' $P479 = "35_1294592804.28" 
    capture_lex $P479
    new $P457, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P457, control_456
    push_eh $P457
    .lex "self", self
    .lex "$code", param_458
    .lex "@args", param_459
    .lex "%adverbs", param_460
.annotate 'line', 202
    new $P461, "Undef"
    .lex "$output", $P461
.annotate 'line', 201
    find_lex $P462, "$output"
.annotate 'line', 203
    find_lex $P463, "self"
    find_lex $P464, "$code"
    find_lex $P465, "%adverbs"
    $P466 = $P463."compile"($P464, $P465 :flat)
    store_lex "$output", $P466
.annotate 'line', 205
    find_lex $P470, "$output"
    isa $I471, $P470, "String"
    new $P472, 'Integer'
    set $P472, $I471
    isfalse $I473, $P472
    if $I473, if_469
    new $P468, 'Integer'
    set $P468, $I473
    goto if_469_end
  if_469:
.annotate 'line', 206
    find_lex $P474, "%adverbs"
    unless_null $P474, vivify_99
    $P474 = root_new ['parrot';'Hash']
  vivify_99:
    set $P475, $P474["target"]
    unless_null $P475, vivify_100
    new $P475, "Undef"
  vivify_100:
    set $S476, $P475
    iseq $I477, $S476, ""
    new $P468, 'Integer'
    set $P468, $I477
  if_469_end:
    unless $P468, if_467_end
    .const 'Sub' $P479 = "35_1294592804.28" 
    capture_lex $P479
    $P479()
  if_467_end:
.annotate 'line', 205
    find_lex $P495, "$output"
.annotate 'line', 201
    .return ($P495)
  control_456:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P496, exception, "payload"
    .return ($P496)
.end


.namespace ["HLL";"Compiler"]
.sub "_block478"  :anon :subid("35_1294592804.28") :outer("34_1294592804.28")
.annotate 'line', 207
    new $P480, "Undef"
    .lex "$outer_ctx", $P480
    find_lex $P481, "%adverbs"
    unless_null $P481, vivify_101
    $P481 = root_new ['parrot';'Hash']
  vivify_101:
    set $P482, $P481["outer_ctx"]
    unless_null $P482, vivify_102
    new $P482, "Undef"
  vivify_102:
    store_lex "$outer_ctx", $P482
.annotate 'line', 208
    find_lex $P484, "$outer_ctx"
    defined $I485, $P484
    unless $I485, if_483_end
.annotate 'line', 209
    find_lex $P486, "$output"
    unless_null $P486, vivify_103
    $P486 = root_new ['parrot';'ResizablePMCArray']
  vivify_103:
    set $P487, $P486[0]
    unless_null $P487, vivify_104
    new $P487, "Undef"
  vivify_104:
    find_lex $P488, "$outer_ctx"
    $P487."set_outer_ctx"($P488)
  if_483_end:
.annotate 'line', 212
    find_lex $P489, "%adverbs"
    unless_null $P489, vivify_105
    $P489 = root_new ['parrot';'Hash']
  vivify_105:
    set $P490, $P489["trace"]
    unless_null $P490, vivify_106
    new $P490, "Undef"
  vivify_106:
    set $I491, $P490
    trace $I491
.annotate 'line', 213
    find_lex $P492, "$output"
    find_lex $P493, "@args"
    $P494 = $P492($P493 :flat)
    store_lex "$output", $P494
.annotate 'line', 214
    trace 0
.annotate 'line', 206
    .return ()
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "ctxsave"  :subid("36_1294592804.28") :method :outer("11_1294592804.28")
.annotate 'line', 220
    new $P499, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P499, control_498
    push_eh $P499
    .lex "self", self
.annotate 'line', 222

                $P0 = getinterp
                $P500 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P500
.annotate 'line', 226
    new $P501, "Integer"
    assign $P501, 0
    store_dynamic_lex "$*CTXSAVE", $P501
.annotate 'line', 220
    .return ($P501)
  control_498:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P502, exception, "payload"
    .return ($P502)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "panic"  :subid("37_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_506 :slurpy
.annotate 'line', 229
    new $P505, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P505, control_504
    push_eh $P505
    .lex "self", self
    .lex "@args", param_506
.annotate 'line', 230
    find_lex $P507, "@args"
    join $S508, "", $P507
    die $S508
.annotate 'line', 229
    .return ()
  control_504:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P509, exception, "payload"
    .return ($P509)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "stages"  :subid("38_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_513 :optional
    .param int has_param_513 :opt_flag
.annotate 'line', 233
    new $P512, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P512, control_511
    push_eh $P512
    .lex "self", self
    if has_param_513, optparam_107
    $P514 = root_new ['parrot';'ResizablePMCArray']
    set param_513, $P514
  optparam_107:
    .lex "@value", param_513
.annotate 'line', 234
    find_lex $P516, "@value"
    set $N517, $P516
    unless $N517, if_515_end
.annotate 'line', 235
    find_lex $P518, "@value"
    find_lex $P519, "self"
    setattribute $P519, "@!stages", $P518
  if_515_end:
.annotate 'line', 234
    find_lex $P520, "self"
    getattribute $P521, $P520, "@!stages"
    unless_null $P521, vivify_108
    $P521 = root_new ['parrot';'ResizablePMCArray']
  vivify_108:
.annotate 'line', 233
    .return ($P521)
  control_511:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P522, exception, "payload"
    .return ($P522)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parsegrammar"  :subid("39_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_526 :slurpy
.annotate 'line', 240
    new $P525, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P525, control_524
    push_eh $P525
    .lex "self", self
    .lex "@value", param_526
.annotate 'line', 241
    find_lex $P528, "@value"
    set $N529, $P528
    unless $N529, if_527_end
.annotate 'line', 242
    find_lex $P530, "@value"
    unless_null $P530, vivify_109
    $P530 = root_new ['parrot';'ResizablePMCArray']
  vivify_109:
    set $P531, $P530[0]
    unless_null $P531, vivify_110
    new $P531, "Undef"
  vivify_110:
    find_lex $P532, "self"
    setattribute $P532, "$!parsegrammar", $P531
  if_527_end:
.annotate 'line', 241
    find_lex $P533, "self"
    getattribute $P534, $P533, "$!parsegrammar"
    unless_null $P534, vivify_111
    new $P534, "Undef"
  vivify_111:
.annotate 'line', 240
    .return ($P534)
  control_524:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P535, exception, "payload"
    .return ($P535)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parseactions"  :subid("40_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_539 :slurpy
.annotate 'line', 247
    new $P538, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P538, control_537
    push_eh $P538
    .lex "self", self
    .lex "@value", param_539
.annotate 'line', 248
    find_lex $P541, "@value"
    set $N542, $P541
    unless $N542, if_540_end
.annotate 'line', 249
    find_lex $P543, "@value"
    unless_null $P543, vivify_112
    $P543 = root_new ['parrot';'ResizablePMCArray']
  vivify_112:
    set $P544, $P543[0]
    unless_null $P544, vivify_113
    new $P544, "Undef"
  vivify_113:
    find_lex $P545, "self"
    setattribute $P545, "$!parseactions", $P544
  if_540_end:
.annotate 'line', 248
    find_lex $P546, "self"
    getattribute $P547, $P546, "$!parseactions"
    unless_null $P547, vivify_114
    new $P547, "Undef"
  vivify_114:
.annotate 'line', 247
    .return ($P547)
  control_537:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P548, exception, "payload"
    .return ($P548)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "astgrammar"  :subid("41_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_552 :slurpy
.annotate 'line', 254
    new $P551, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P551, control_550
    push_eh $P551
    .lex "self", self
    .lex "@value", param_552
.annotate 'line', 255
    find_lex $P554, "@value"
    set $N555, $P554
    unless $N555, if_553_end
.annotate 'line', 256
    find_lex $P556, "@value"
    unless_null $P556, vivify_115
    $P556 = root_new ['parrot';'ResizablePMCArray']
  vivify_115:
    set $P557, $P556[0]
    unless_null $P557, vivify_116
    new $P557, "Undef"
  vivify_116:
    find_lex $P558, "self"
    setattribute $P558, "$!astgrammar", $P557
  if_553_end:
.annotate 'line', 255
    find_lex $P559, "self"
    getattribute $P560, $P559, "$!astgrammar"
    unless_null $P560, vivify_117
    new $P560, "Undef"
  vivify_117:
.annotate 'line', 254
    .return ($P560)
  control_550:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P561, exception, "payload"
    .return ($P561)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "commandline_banner"  :subid("42_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_565 :optional
    .param int has_param_565 :opt_flag
.annotate 'line', 261
    new $P564, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P564, control_563
    push_eh $P564
    .lex "self", self
    if has_param_565, optparam_118
    new $P566, "Undef"
    set param_565, $P566
  optparam_118:
    .lex "$value", param_565
.annotate 'line', 262
    find_lex $P568, "$value"
    defined $I569, $P568
    unless $I569, if_567_end
.annotate 'line', 263
    find_lex $P570, "$value"
    find_lex $P571, "self"
    setattribute $P571, "$!commandline_banner", $P570
  if_567_end:
.annotate 'line', 262
    find_lex $P572, "self"
    getattribute $P573, $P572, "$!commandline_banner"
    unless_null $P573, vivify_119
    new $P573, "Undef"
  vivify_119:
.annotate 'line', 261
    .return ($P573)
  control_563:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P574, exception, "payload"
    .return ($P574)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "commandline_prompt"  :subid("43_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_578 :optional
    .param int has_param_578 :opt_flag
.annotate 'line', 268
    new $P577, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P577, control_576
    push_eh $P577
    .lex "self", self
    if has_param_578, optparam_120
    new $P579, "Undef"
    set param_578, $P579
  optparam_120:
    .lex "$value", param_578
.annotate 'line', 269
    find_lex $P581, "$value"
    defined $I582, $P581
    unless $I582, if_580_end
.annotate 'line', 270
    find_lex $P583, "$value"
    find_lex $P584, "self"
    setattribute $P584, "$!commandline_prompt", $P583
  if_580_end:
.annotate 'line', 269
    find_lex $P585, "self"
    getattribute $P586, $P585, "$!commandline_prompt"
    unless_null $P586, vivify_121
    new $P586, "Undef"
  vivify_121:
.annotate 'line', 268
    .return ($P586)
  control_576:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P587, exception, "payload"
    .return ($P587)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compiler_progname"  :subid("44_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_591 :optional
    .param int has_param_591 :opt_flag
.annotate 'line', 275
    new $P590, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P590, control_589
    push_eh $P590
    .lex "self", self
    if has_param_591, optparam_122
    new $P592, "Undef"
    set param_591, $P592
  optparam_122:
    .lex "$value", param_591
.annotate 'line', 276
    find_lex $P594, "$value"
    defined $I595, $P594
    unless $I595, if_593_end
.annotate 'line', 277
    find_lex $P596, "$value"
    find_lex $P597, "self"
    setattribute $P597, "$!compiler_progname", $P596
  if_593_end:
.annotate 'line', 276
    find_lex $P598, "self"
    getattribute $P599, $P598, "$!compiler_progname"
    unless_null $P599, vivify_123
    new $P599, "Undef"
  vivify_123:
.annotate 'line', 275
    .return ($P599)
  control_589:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P600, exception, "payload"
    .return ($P600)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("45_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_604
    .param pmc param_605 :slurpy :named
.annotate 'line', 282
    new $P603, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P603, control_602
    push_eh $P603
    .lex "self", self
    .lex "@args", param_604
    .lex "%adverbs", param_605
.annotate 'line', 283

            .include 'except_severity.pasm'
            .local pmc args, adverbs
            args = find_lex '@args'
            adverbs = find_lex '%adverbs'

            ## this bizarre piece of code causes the compiler to
            ## immediately abort if it looks like it's being run
            ## from Perl's Test::Harness.  (Test::Harness versions 2.64
            ## and earlier have a hardwired commandline option that is
            ## always passed to an initial run of the interpreter binary,
            ## whether you want it or not.)  We expect to remove this
            ## check eventually (or make it a lot smarter than it is here).
            $S0 = args[2]
            $I0 = index $S0, '@INC'
            if $I0 < 0 goto not_harness
            exit 0
          not_harness:

            load_bytecode 'dumper.pbc'
            load_bytecode 'PGE/Dumper.pbc'

            ##  get the name of the program
            .local string arg0
            arg0 = args[0]

            ##   perform option processing of command-line args
            .local pmc opts
            opts = self.'process_args'(args)

            ##   merge command-line args with defaults passed in from caller
            .local pmc it
            it = iter opts
          mergeopts_loop:
            unless it goto mergeopts_end
            $S0 = shift it
            $P0 = opts[$S0]
            adverbs[$S0] = $P0
            goto mergeopts_loop
          mergeopts_end:

            $I0 = adverbs['help']
            if $I0 goto usage

            $I0 = adverbs['version']
            if $I0 goto version

            .local int can_backtrace
            can_backtrace = can self, 'backtrace'
            unless can_backtrace goto no_push_eh
            push_eh uncaught_exception
          no_push_eh:

            $S0 = adverbs['e']
            $I0 = exists adverbs['e']
            if $I0 goto eval_line
            .local pmc result
            result = box ''
            unless args goto interactive
            $I0 = adverbs['combine']
            if $I0 goto combine
            $S0 = args[0]
            result = self.'evalfiles'($S0, args :flat, adverbs :flat :named)
            goto save_output
          combine:
            result = self.'evalfiles'(args, adverbs :flat :named)
            goto save_output
          interactive:
            self.'interactive'(args :flat, adverbs :flat :named)
            goto save_output
          eval_line:
            result = self.'eval'($S0, '-e', args :flat, adverbs :flat :named)

          save_output:
            unless can_backtrace goto no_pop_eh
            pop_eh
          no_pop_eh:
            if null result goto end
            $I0 = defined result
            unless $I0 goto end
            .local string target
            target = adverbs['target']
            target = downcase target
            if target != 'pir' goto end
            .local string output
            .local pmc ofh
            $P0 = getinterp
            ofh = $P0.'stdout_handle'()
            output = adverbs['output']
            if output == '' goto save_output_1
            if output == '-' goto save_output_1
            ofh = new ['FileHandle']
            ofh.'open'(output, 'w')
            unless ofh goto err_output
          save_output_1:
            print ofh, result
            ofh.'close'()
          end:
            .return ()

          err_output:
            .tailcall self.'panic'('Error: file cannot be written: ', output)
          usage:
            self.'usage'(arg0)
            goto end
          version:
            self.'version'()
            goto end

            # If we get an uncaught exception in the program and the HLL provides
            # a backtrace method, we end up here. We pass it the exception object
            # so it can render a backtrace, unless the severity is exit or warning
            # in which case it needs special handling.
          uncaught_exception:
            .get_results ($P0)
            pop_eh
            $P1 = getinterp
            $P1 = $P1.'stderr_handle'()
            $I0 = $P0['severity']
            if $I0 == .EXCEPT_EXIT goto do_exit
            $S0 = self.'backtrace'($P0)
            print $P1, $S0
            if $I0 <= .EXCEPT_WARNING goto do_warning
            exit 1
          do_exit:
            $I0 = $P0['exit_code']
            exit $I0
          do_warning:
            $P0 = $P0["resume"]
            push_eh uncaught_exception # Otherwise we get errors about no handler to delete
            $P0()
        
.annotate 'line', 282
    .return ()
  control_602:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P606, exception, "payload"
    .return ($P606)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "process_args"  :subid("46_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_610
.annotate 'line', 417
    .const 'Sub' $P623 = "47_1294592804.28" 
    capture_lex $P623
    new $P609, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P609, control_608
    push_eh $P609
    .lex "self", self
    .lex "@args", param_610
.annotate 'line', 423
    new $P611, "Undef"
    .lex "$getopts", $P611
.annotate 'line', 419
    find_lex $P612, "self"
    find_lex $P613, "@args"
    $P614 = $P613."shift"()
    $P612."compiler_progname"($P614)
.annotate 'line', 422
    load_bytecode "Getopt/Obj.pbc"
.annotate 'line', 423
 $P615 = new ['Getopt';'Obj'] 
    store_lex "$getopts", $P615
.annotate 'line', 424
    find_lex $P616, "$getopts"
    $P616."notOptStop"(1)
.annotate 'line', 425
    find_lex $P618, "self"
    getattribute $P619, $P618, "@!cmdoptions"
    unless_null $P619, vivify_124
    $P619 = root_new ['parrot';'ResizablePMCArray']
  vivify_124:
    defined $I620, $P619
    unless $I620, for_undef_125
    iter $P617, $P619
    new $P629, 'ExceptionHandler'
    set_addr $P629, loop628_handler
    $P629."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P629
  loop628_test:
    unless $P617, loop628_done
    shift $P621, $P617
  loop628_redo:
    .const 'Sub' $P623 = "47_1294592804.28" 
    capture_lex $P623
    $P623($P621)
  loop628_next:
    goto loop628_test
  loop628_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P630, exception, 'type'
    eq $P630, .CONTROL_LOOP_NEXT, loop628_next
    eq $P630, .CONTROL_LOOP_REDO, loop628_redo
  loop628_done:
    pop_eh 
  for_undef_125:
.annotate 'line', 428
    find_lex $P631, "$getopts"
    find_lex $P632, "@args"
    $P633 = $P631."get_options"($P632)
.annotate 'line', 417
    .return ($P633)
  control_608:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P634, exception, "payload"
    .return ($P634)
.end


.namespace ["HLL";"Compiler"]
.sub "_block622"  :anon :subid("47_1294592804.28") :outer("46_1294592804.28")
    .param pmc param_624
.annotate 'line', 425
    .lex "$_", param_624
.annotate 'line', 426
    find_lex $P625, "$getopts"
    find_lex $P626, "$_"
    set $S627, $P626
    push $P625, $S627
.annotate 'line', 425
    .return ()
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("48_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_638
    .param pmc param_639 :slurpy
    .param pmc param_640 :slurpy :named
.annotate 'line', 431
    new $P637, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P637, control_636
    push_eh $P637
    .lex "self", self
    .lex "@files", param_638
    .lex "@args", param_639
    .lex "%adverbs", param_640
.annotate 'line', 432

            .local pmc files, args, adverbs
            files = find_lex '@files'
            args = find_lex '@args'
            adverbs = find_lex '%adverbs'

            unless null adverbs goto have_adverbs
            adverbs = new 'Hash'
          have_adverbs:
            .local string target
            target = adverbs['target']
            target = downcase target
            .local string encoding
            encoding = adverbs['encoding']
            $I0 = does files, 'array'
            if $I0 goto have_files_array
            $P0 = new 'ResizablePMCArray'
            push $P0, files
            files = $P0
          have_files_array:
            .local string code
            code = ''
            .local pmc it
            it = iter files
          iter_loop:
            unless it goto iter_end
            .local string iname
            .local pmc ifh
            iname = shift it
            ifh = new 'FileHandle'
            unless encoding == 'utf8' goto iter_loop_1
            ifh.'encoding'(encoding)
          iter_loop_1:
            $S0 = ifh.'readall'(iname)
            code = concat code, $S0
            ifh.'close'()
            goto iter_loop
          iter_end:
            $S0 = join ' ', files
            $P1 = box $S0
            .lex '$?FILES', $P1
            $P0 = self.'eval'(code, args :flat, adverbs :flat :named)
            if target == '' goto end
            if target == 'pir' goto end
            self.'dumper'($P0, target, adverbs :flat :named)
          end:
            .return ($P0)

          err_infile:
            .tailcall self.'panic'('Error: file cannot be read: ', iname)
        
.annotate 'line', 431
    .return ()
  control_636:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P641, exception, "payload"
    .return ($P641)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("49_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_645
    .param pmc param_646 :slurpy :named
.annotate 'line', 485
    new $P644, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P644, control_643
    push_eh $P644
    .lex "self", self
    .lex "$source", param_645
    .lex "%adverbs", param_646
.annotate 'line', 486

            .local pmc source, adverbs
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'

            .local pmc compiling, options
            compiling = new ['Hash']
            .lex '%*COMPILING', compiling
            compiling['%?OPTIONS'] = adverbs

            .local string target
            target = adverbs['target']
            target = downcase target

            .local int stagestats
            stagestats = adverbs['stagestats']

            .local pmc stages, result, it
            result = source
            stages = self.'stages'()
            it = iter stages
            if stagestats goto stagestats_loop

          iter_loop:
            unless it goto have_result
            .local string stagename
            stagename = shift it
            result = self.stagename(result, adverbs :flat :named)
            if target == stagename goto have_result
            goto iter_loop

          stagestats_loop:
            unless it goto have_result
            stagename = shift it
            $N0 = time
            result = self.stagename(result, adverbs :flat :named)
            $N1 = time
            $N2 = $N1 - $N0
            $P0 = getinterp
            $P1 = $P0.'stderr_handle'()
            $P1.'print'("Stage '")
            $P1.'print'(stagename)
            $P1.'print'("': ")
            $P2 = new ['ResizablePMCArray']
            push $P2, $N2
            $S0 = sprintf "%.3f", $P2
            $P1.'print'($S0)
            $P1.'print'(" sec\n")
            if target == stagename goto have_result
            goto stagestats_loop

          have_result:
            .return (result)
        
.annotate 'line', 485
    .return ()
  control_643:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P647, exception, "payload"
    .return ($P647)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "past"  :subid("50_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_651
    .param pmc param_652 :slurpy :named
.annotate 'line', 542
    new $P650, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P650, control_649
    push_eh $P650
    .lex "self", self
    .lex "$source", param_651
    .lex "%adverbs", param_652
.annotate 'line', 543

            .local pmc source, adverbs
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'

          compile_astgrammar:
            .local pmc astgrammar_name
            astgrammar_name = self.'astgrammar'()
            $S0 = typeof astgrammar_name
            eq $S0, 'NameSpace', astgrammar_ns
            unless astgrammar_name goto compile_match

            .local pmc astgrammar_namelist
            .local pmc astgrammar, astbuilder
            astgrammar_namelist = self.'parse_name'(astgrammar_name)
            unless astgrammar_namelist goto err_past
            astgrammar = new astgrammar_namelist
            astbuilder = astgrammar.'apply'(source)
            .tailcall astbuilder.'get'('past')
          astgrammar_ns:
            $P0 = get_class astgrammar_name
            astgrammar = new $P0
            astbuilder = astgrammar.'apply'(source)
            .tailcall astbuilder.'get'('past')

          compile_match:
            .local pmc ast
            ast = source.'ast'()
            $I0 = isa ast, ['PAST';'Node']
            unless $I0 goto err_past
            .return (ast)

          err_past:
            $S0 = typeof source
            .tailcall self.'panic'('Unable to obtain PAST from ', $S0)
        
.annotate 'line', 542
    .return ()
  control_649:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P653, exception, "payload"
    .return ($P653)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "post"  :subid("51_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_657
    .param pmc param_658 :slurpy :named
.annotate 'line', 581
    new $P656, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P656, control_655
    push_eh $P656
    .lex "self", self
    .lex "$source", param_657
    .lex "%adverbs", param_658
.annotate 'line', 582

            .local pmc source, adverbs
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'
            $P0 = compreg 'PAST'
            .tailcall $P0.'to_post'(source, adverbs :flat :named)
        
.annotate 'line', 581
    .return ()
  control_655:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P659, exception, "payload"
    .return ($P659)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "pir"  :subid("52_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_663
    .param pmc param_664 :slurpy :named
.annotate 'line', 591
    new $P662, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P662, control_661
    push_eh $P662
    .lex "self", self
    .lex "$source", param_663
    .lex "%adverbs", param_664
.annotate 'line', 592

            .local pmc source, adverbs
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'
            $P0 = compreg 'POST'
            .tailcall $P0.'to_pir'(source, adverbs :flat :named)
        
.annotate 'line', 591
    .return ()
  control_661:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P665, exception, "payload"
    .return ($P665)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalpmc"  :subid("53_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_669
    .param pmc param_670 :slurpy :named
.annotate 'line', 601
    new $P668, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P668, control_667
    push_eh $P668
    .lex "self", self
    .lex "$source", param_669
    .lex "%adverbs", param_670
.annotate 'line', 602

            .local pmc source, adverbs
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'
            $P0 = compreg 'PIR'
            $P1 = $P0(source)
            .return($P1)
        
.annotate 'line', 601
    .return ()
  control_667:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P671, exception, "payload"
    .return ($P671)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "dumper"  :subid("54_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_675
    .param pmc param_676
    .param pmc param_677 :slurpy :named
.annotate 'line', 612
    .const 'Sub' $P683 = "55_1294592804.28" 
    capture_lex $P683
    new $P674, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P674, control_673
    push_eh $P674
    .lex "self", self
    .lex "$obj", param_675
    .lex "$name", param_676
    .lex "%options", param_677
.annotate 'line', 613
    find_lex $P680, "%options"
    unless_null $P680, vivify_126
    $P680 = root_new ['parrot';'Hash']
  vivify_126:
    set $P681, $P680["dumper"]
    unless_null $P681, vivify_127
    new $P681, "Undef"
  vivify_127:
    if $P681, if_679
.annotate 'line', 619
    find_lex $P696, "$obj"
    find_lex $P697, "$name"
    $P698 = "_dumper"($P696, $P697)
.annotate 'line', 618
    set $P678, $P698
.annotate 'line', 613
    goto if_679_end
  if_679:
    .const 'Sub' $P683 = "55_1294592804.28" 
    capture_lex $P683
    $P695 = $P683()
    set $P678, $P695
  if_679_end:
.annotate 'line', 612
    .return ($P678)
  control_673:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P699, exception, "payload"
    .return ($P699)
.end


.namespace ["HLL";"Compiler"]
.sub "_block682"  :anon :subid("55_1294592804.28") :outer("54_1294592804.28")
.annotate 'line', 615
    new $P684, "Undef"
    .lex "$dumper", $P684
.annotate 'line', 614
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 615
    find_lex $P685, "%options"
    unless_null $P685, vivify_128
    $P685 = root_new ['parrot';'Hash']
  vivify_128:
    set $P686, $P685["dumper"]
    unless_null $P686, vivify_129
    new $P686, "Undef"
  vivify_129:
    set $S687, $P686
    downcase $S688, $S687
    get_hll_global $P689, ["PCT"], "Dumper"
    unless_null $P689, vivify_130
    $P689 = root_new ['parrot';'Hash']
  vivify_130:
    set $P690, $P689[$S688]
    unless_null $P690, vivify_131
    new $P690, "Undef"
  vivify_131:
    store_lex "$dumper", $P690
.annotate 'line', 616
    find_lex $P691, "$dumper"
    find_lex $P692, "$obj"
    find_lex $P693, "$name"
    $P694 = $P691($P692, $P693)
.annotate 'line', 613
    .return ($P694)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "usage"  :subid("56_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_703 :optional
    .param int has_param_703 :opt_flag
.annotate 'line', 623
    new $P702, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P702, control_701
    push_eh $P702
    .lex "self", self
    if has_param_703, optparam_132
    new $P704, "Undef"
    set param_703, $P704
  optparam_132:
    .lex "$name", param_703
.annotate 'line', 624
    find_lex $P706, "$name"
    unless $P706, if_705_end
.annotate 'line', 625
    find_lex $P707, "$name"
    "say"($P707)
  if_705_end:
.annotate 'line', 627
    find_lex $P708, "self"
    getattribute $P709, $P708, "$!usage"
    unless_null $P709, vivify_133
    new $P709, "Undef"
  vivify_133:
    say $P709
.annotate 'line', 628
    exit 0
.annotate 'line', 623
    .return ()
  control_701:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P710, exception, "payload"
    .return ($P710)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "version"  :subid("57_1294592804.28") :method :outer("11_1294592804.28")
.annotate 'line', 631
    new $P713, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P713, control_712
    push_eh $P713
    .lex "self", self
.annotate 'line', 632
    find_lex $P714, "self"
    getattribute $P715, $P714, "$!version"
    unless_null $P715, vivify_134
    new $P715, "Undef"
  vivify_134:
    say $P715
.annotate 'line', 633
    exit 0
.annotate 'line', 631
    .return ()
  control_712:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P716, exception, "payload"
    .return ($P716)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("58_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_720
.annotate 'line', 636
    new $P719, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P719, control_718
    push_eh $P719
    .lex "self", self
    .lex "$stagename", param_720
.annotate 'line', 637

            .local string stagename
            $P0 = find_lex '$stagename'
            stagename = $P0

            .local pmc stages, it, newstages
            stages = getattribute self, '@!stages'
            newstages = new 'ResizableStringArray'

            it = iter stages
          iter_loop:
            unless it goto iter_end
            .local pmc current
            current = shift it
            if current == stagename goto iter_loop
              push newstages, current
            goto iter_loop
          iter_end:
            setattribute self, '@!stages', newstages
        
.annotate 'line', 636
    .return ()
  control_718:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P721, exception, "payload"
    .return ($P721)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("59_1294592804.28") :method :outer("11_1294592804.28")
    .param pmc param_725
    .param pmc param_726 :slurpy :named
.annotate 'line', 659
    new $P724, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P724, control_723
    push_eh $P724
    .lex "self", self
    .lex "$stagename", param_725
    .lex "%adverbs", param_726
.annotate 'line', 660

            .local string stagename
            .local pmc adverbs
            $P0 = find_lex '$stagename'
            stagename = $P0
            adverbs = find_lex '%adverbs'

            .local string position, target
            .local pmc stages
            stages = getattribute self, '@!stages'

            $I0 = exists adverbs['before']
            unless $I0 goto next_test
              position = 'before'
              target = adverbs['before']
            goto positional_insert

          next_test:
            $I0 = exists adverbs['after']
            unless $I0 goto simple_insert
              position = 'after'
              target = adverbs['after']

          positional_insert:
            .local pmc it, newstages
            newstages = new 'ResizableStringArray'

            it = iter stages
          iter_loop:
            unless it goto iter_end
            .local pmc current
            current = shift it
            unless current == target goto no_insert_before
              unless position == 'before' goto no_insert_before
                push newstages, stagename
            no_insert_before:

            push newstages, current

            unless current == target goto no_insert_after
              unless position == 'after' goto no_insert_after
                push newstages, stagename
            no_insert_after:

            goto iter_loop
          iter_end:
            setattribute self, '@!stages', newstages
            goto done

          simple_insert:
            push stages, stagename
          done:
        
.annotate 'line', 659
    .return ()
  control_723:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P727, exception, "payload"
    .return ($P727)
.end


.namespace []
.sub "_block729" :load :anon :subid("60_1294592804.28")
.annotate 'line', 1
    .const 'Sub' $P731 = "10_1294592804.28" 
    $P732 = $P731()
    .return ($P732)
.end


=back

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
