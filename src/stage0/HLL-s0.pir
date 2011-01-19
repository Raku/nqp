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
.sub "_block11"  :anon :subid("10_1295307660.328")
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
    .const 'Sub' $P334 = "106_1295307660.328" 
    .return ($P334)
.end


.namespace []
.sub "" :load :init :subid("post107") :outer("10_1295307660.328")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1295307660.328" 
    .local pmc block
    set block, $P12
    $P337 = get_root_global ["parrot"], "P6metaclass"
    $P337."new_class"("HLL::Grammar", "Regex::Cursor" :named("parent"))
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["HLL";"Grammar"]
.sub "_block13"  :subid("11_1295307660.328") :outer("10_1295307660.328")
.annotate 'line', 5
    .const 'Sub' $P319 = "103_1295307660.328" 
    capture_lex $P319
    .const 'Sub' $P313 = "101_1295307660.328" 
    capture_lex $P313
    .const 'Sub' $P300 = "98_1295307660.328" 
    capture_lex $P300
    .const 'Sub' $P268 = "93_1295307660.328" 
    capture_lex $P268
    .const 'Sub' $P262 = "91_1295307660.328" 
    capture_lex $P262
    .const 'Sub' $P257 = "89_1295307660.328" 
    capture_lex $P257
    .const 'Sub' $P251 = "87_1295307660.328" 
    capture_lex $P251
    .const 'Sub' $P245 = "85_1295307660.328" 
    capture_lex $P245
    .const 'Sub' $P240 = "83_1295307660.328" 
    capture_lex $P240
    .const 'Sub' $P235 = "81_1295307660.328" 
    capture_lex $P235
    .const 'Sub' $P230 = "79_1295307660.328" 
    capture_lex $P230
    .const 'Sub' $P225 = "77_1295307660.328" 
    capture_lex $P225
    .const 'Sub' $P220 = "75_1295307660.328" 
    capture_lex $P220
    .const 'Sub' $P215 = "73_1295307660.328" 
    capture_lex $P215
    .const 'Sub' $P210 = "71_1295307660.328" 
    capture_lex $P210
    .const 'Sub' $P205 = "69_1295307660.328" 
    capture_lex $P205
    .const 'Sub' $P195 = "65_1295307660.328" 
    capture_lex $P195
    .const 'Sub' $P182 = "63_1295307660.328" 
    capture_lex $P182
    .const 'Sub' $P170 = "61_1295307660.328" 
    capture_lex $P170
    .const 'Sub' $P164 = "59_1295307660.328" 
    capture_lex $P164
    .const 'Sub' $P157 = "57_1295307660.328" 
    capture_lex $P157
    .const 'Sub' $P151 = "55_1295307660.328" 
    capture_lex $P151
    .const 'Sub' $P144 = "53_1295307660.328" 
    capture_lex $P144
    .const 'Sub' $P138 = "51_1295307660.328" 
    capture_lex $P138
    .const 'Sub' $P131 = "49_1295307660.328" 
    capture_lex $P131
    .const 'Sub' $P125 = "47_1295307660.328" 
    capture_lex $P125
    .const 'Sub' $P119 = "45_1295307660.328" 
    capture_lex $P119
    .const 'Sub' $P110 = "43_1295307660.328" 
    capture_lex $P110
    .const 'Sub' $P102 = "41_1295307660.328" 
    capture_lex $P102
    .const 'Sub' $P92 = "40_1295307660.328" 
    capture_lex $P92
    .const 'Sub' $P86 = "38_1295307660.328" 
    capture_lex $P86
    .const 'Sub' $P81 = "36_1295307660.328" 
    capture_lex $P81
    .const 'Sub' $P73 = "34_1295307660.328" 
    capture_lex $P73
    .const 'Sub' $P67 = "32_1295307660.328" 
    capture_lex $P67
    .const 'Sub' $P61 = "30_1295307660.328" 
    capture_lex $P61
    .const 'Sub' $P55 = "28_1295307660.328" 
    capture_lex $P55
    .const 'Sub' $P22 = "14_1295307660.328" 
    capture_lex $P22
    .const 'Sub' $P15 = "12_1295307660.328" 
    capture_lex $P15
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 33
    .const 'Sub' $P319 = "103_1295307660.328" 
    capture_lex $P319
.annotate 'line', 5
    .return ($P319)
    .const 'Sub' $P329 = "105_1295307660.328" 
    .return ($P329)
.end


.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__ws"  :subid("13_1295307660.328") :method
.annotate 'line', 5
    new $P18, "ResizablePMCArray"
    push $P18, ""
    .return ($P18)
.end


.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__termish"  :subid("15_1295307660.328") :method
.annotate 'line', 5
    new $P25, "ResizablePMCArray"
    push $P25, ""
    .return ($P25)
.end


.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1295307660.328") :method
.annotate 'line', 13
    $P32 = self."!protoregex"("term")
    .return ($P32)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1295307660.328") :method
.annotate 'line', 13
    $P34 = self."!PREFIX__!protoregex"("term")
    .return ($P34)
.end


.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1295307660.328") :method
.annotate 'line', 14
    $P36 = self."!protoregex"("infix")
    .return ($P36)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1295307660.328") :method
.annotate 'line', 14
    $P38 = self."!PREFIX__!protoregex"("infix")
    .return ($P38)
.end


.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1295307660.328") :method
.annotate 'line', 15
    $P40 = self."!protoregex"("prefix")
    .return ($P40)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1295307660.328") :method
.annotate 'line', 15
    $P42 = self."!PREFIX__!protoregex"("prefix")
    .return ($P42)
.end


.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1295307660.328") :method
.annotate 'line', 16
    $P44 = self."!protoregex"("postfix")
    .return ($P44)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1295307660.328") :method
.annotate 'line', 16
    $P46 = self."!PREFIX__!protoregex"("postfix")
    .return ($P46)
.end


.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1295307660.328") :method
.annotate 'line', 17
    $P48 = self."!protoregex"("circumfix")
    .return ($P48)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1295307660.328") :method
.annotate 'line', 17
    $P50 = self."!PREFIX__!protoregex"("circumfix")
    .return ($P50)
.end


.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1295307660.328") :method
.annotate 'line', 18
    $P52 = self."!protoregex"("postcircumfix")
    .return ($P52)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1295307660.328") :method
.annotate 'line', 18
    $P54 = self."!PREFIX__!protoregex"("postcircumfix")
    .return ($P54)
.end


.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__term:sym<circumfix>"  :subid("29_1295307660.328") :method
.annotate 'line', 5
    $P58 = self."!PREFIX__!subrule"("circumfix", "")
    new $P59, "ResizablePMCArray"
    push $P59, $P58
    .return ($P59)
.end


.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__infixish"  :subid("31_1295307660.328") :method
.annotate 'line', 5
    $P64 = self."!PREFIX__!subrule"("infix", "")
    new $P65, "ResizablePMCArray"
    push $P65, $P64
    .return ($P65)
.end


.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__prefixish"  :subid("33_1295307660.328") :method
.annotate 'line', 5
    $P70 = self."!PREFIX__!subrule"("prefix", "")
    new $P71, "ResizablePMCArray"
    push $P71, $P70
    .return ($P71)
.end


.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__postfixish"  :subid("35_1295307660.328") :method
.annotate 'line', 5
    $P76 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P77 = self."!PREFIX__!subrule"("postfix", "")
    new $P78, "ResizablePMCArray"
    push $P78, $P76
    push $P78, $P77
    .return ($P78)
.end


.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__nullterm"  :subid("37_1295307660.328") :method
.annotate 'line', 5
    new $P84, "ResizablePMCArray"
    push $P84, ""
    .return ($P84)
.end


.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__nullterm_alt"  :subid("39_1295307660.328") :method
.annotate 'line', 5
    $P89 = self."!PREFIX__!subrule"("nullterm", "")
    new $P90, "ResizablePMCArray"
    push $P90, $P89
    .return ($P90)
.end


.namespace ["HLL";"Grammar"]
.include "except_types.pasm"
.sub "nulltermish"  :subid("40_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "quote_delimited"  :subid("41_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__quote_delimited"  :subid("42_1295307660.328") :method
.annotate 'line', 33
    $P105 = self."!PREFIX__!subrule"("starter", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__quote_atom"  :subid("44_1295307660.328") :method
.annotate 'line', 33
    new $P113, "ResizablePMCArray"
    push $P113, ""
    .return ($P113)
.end


.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__decint"  :subid("46_1295307660.328") :method
.annotate 'line', 33
    new $P122, "ResizablePMCArray"
    push $P122, ""
    .return ($P122)
.end


.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__decints"  :subid("48_1295307660.328") :method
.annotate 'line', 33
    new $P128, "ResizablePMCArray"
    push $P128, ""
    .return ($P128)
.end


.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__hexint"  :subid("50_1295307660.328") :method
.annotate 'line', 33
    new $P134, "ResizablePMCArray"
    push $P134, ""
    .return ($P134)
.end


.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__hexints"  :subid("52_1295307660.328") :method
.annotate 'line', 33
    new $P141, "ResizablePMCArray"
    push $P141, ""
    .return ($P141)
.end


.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__octint"  :subid("54_1295307660.328") :method
.annotate 'line', 33
    new $P147, "ResizablePMCArray"
    push $P147, ""
    .return ($P147)
.end


.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__octints"  :subid("56_1295307660.328") :method
.annotate 'line', 33
    new $P154, "ResizablePMCArray"
    push $P154, ""
    .return ($P154)
.end


.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__binint"  :subid("58_1295307660.328") :method
.annotate 'line', 33
    new $P160, "ResizablePMCArray"
    push $P160, ""
    .return ($P160)
.end


.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__binints"  :subid("60_1295307660.328") :method
.annotate 'line', 33
    new $P167, "ResizablePMCArray"
    push $P167, ""
    .return ($P167)
.end


.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__integer"  :subid("62_1295307660.328") :method
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
.sub "dec_number"  :subid("63_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__dec_number"  :subid("64_1295307660.328") :method
.annotate 'line', 33
    new $P185, "ResizablePMCArray"
    push $P185, ""
    push $P185, ""
    push $P185, "."
    .return ($P185)
.end


.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__escale"  :subid("66_1295307660.328") :method
.annotate 'line', 33
    new $P198, "ResizablePMCArray"
    push $P198, "e"
    push $P198, "E"
    .return ($P198)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1295307660.328") :method
.annotate 'line', 79
    $P202 = self."!protoregex"("quote_escape")
    .return ($P202)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1295307660.328") :method
.annotate 'line', 79
    $P204 = self."!PREFIX__!protoregex"("quote_escape")
    .return ($P204)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("70_1295307660.328") :method
.annotate 'line', 33
    new $P208, "ResizablePMCArray"
    push $P208, "\\\\"
    .return ($P208)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("72_1295307660.328") :method
.annotate 'line', 33
    new $P213, "ResizablePMCArray"
    push $P213, "\\"
    .return ($P213)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("74_1295307660.328") :method
.annotate 'line', 33
    new $P218, "ResizablePMCArray"
    push $P218, "\\b"
    .return ($P218)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("76_1295307660.328") :method
.annotate 'line', 33
    new $P223, "ResizablePMCArray"
    push $P223, "\\n"
    .return ($P223)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("78_1295307660.328") :method
.annotate 'line', 33
    new $P228, "ResizablePMCArray"
    push $P228, "\\r"
    .return ($P228)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("80_1295307660.328") :method
.annotate 'line', 33
    new $P233, "ResizablePMCArray"
    push $P233, "\\t"
    .return ($P233)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__quote_escape:sym<ff>"  :subid("82_1295307660.328") :method
.annotate 'line', 33
    new $P238, "ResizablePMCArray"
    push $P238, "\\f"
    .return ($P238)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("84_1295307660.328") :method
.annotate 'line', 33
    new $P243, "ResizablePMCArray"
    push $P243, "\\e"
    .return ($P243)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("86_1295307660.328") :method
.annotate 'line', 33
    new $P248, "ResizablePMCArray"
    push $P248, unicode:"\\x"
    .return ($P248)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("88_1295307660.328") :method
.annotate 'line', 33
    new $P254, "ResizablePMCArray"
    push $P254, "\\o"
    .return ($P254)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("90_1295307660.328") :method
.annotate 'line', 33
    new $P260, "ResizablePMCArray"
    push $P260, "\\c"
    .return ($P260)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__quote_escape:sym<0>"  :subid("92_1295307660.328") :method
.annotate 'line', 33
    new $P265, "ResizablePMCArray"
    push $P265, "\\0"
    .return ($P265)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1295307660.328") :method :outer("11_1295307660.328")
.annotate 'line', 33
    .const 'Sub' $P288 = "97_1295307660.328" 
    capture_lex $P288
    .const 'Sub' $P281 = "96_1295307660.328" 
    capture_lex $P281
    .const 'Sub' $P276 = "95_1295307660.328" 
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
    .const 'Sub' $P276 = "95_1295307660.328" 
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
    .const 'Sub' $P281 = "96_1295307660.328" 
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
    .const 'Sub' $P288 = "97_1295307660.328" 
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
.sub "!PREFIX__quote_escape:sym<misc>"  :subid("94_1295307660.328") :method
.annotate 'line', 33
    new $P271, "ResizablePMCArray"
    push $P271, ""
    .return ($P271)
.end


.namespace ["HLL";"Grammar"]
.sub "_block275"  :anon :subid("95_1295307660.328") :outer("93_1295307660.328")
.annotate 'line', 100
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "_block280"  :anon :subid("96_1295307660.328") :method :outer("93_1295307660.328")
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
.sub "_block287"  :anon :subid("97_1295307660.328") :outer("93_1295307660.328")
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
.sub "charname"  :subid("98_1295307660.328") :method :outer("11_1295307660.328")
.annotate 'line', 33
    .const 'Sub' $P310 = "100_1295307660.328" 
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
    .const 'Sub' $P310 = "100_1295307660.328" 
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
.sub "!PREFIX__charname"  :subid("99_1295307660.328") :method
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
.sub "_block309"  :anon :subid("100_1295307660.328") :method :outer("98_1295307660.328")
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
.sub "charnames"  :subid("101_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__charnames"  :subid("102_1295307660.328") :method
.annotate 'line', 33
    new $P316, "ResizablePMCArray"
    push $P316, ""
    .return ($P316)
.end


.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1295307660.328") :method :outer("11_1295307660.328")
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
.sub "!PREFIX__charspec"  :subid("104_1295307660.328") :method
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
.sub "_block328" :load :anon :subid("105_1295307660.328")
.annotate 'line', 5
    .const 'Sub' $P330 = "11_1295307660.328" 
    $P331 = $P330()
    .return ($P331)
.end


.namespace []
.sub "_block333" :load :anon :subid("106_1295307660.328")
.annotate 'line', 1
    .const 'Sub' $P335 = "10_1295307660.328" 
    $P336 = $P335()
    .return ($P336)
.end

### .include 'gen/hllgrammar-actions.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1295307663.343")
.annotate 'line', 0
    get_hll_global $P15, ["HLL";"Actions"], "_block14" 
    capture_lex $P15
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, ["HLL"], "Actions"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P15, ["HLL";"Actions"], "_block14" 
    capture_lex $P15
    $P739 = $P15()
.annotate 'line', 1
    .return ($P739)
    .const 'Sub' $P741 = "56_1295307663.343" 
    .return ($P741)
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["HLL";"Actions"]
.sub "_block14"  :subid("11_1295307663.343") :outer("10_1295307663.343")
.annotate 'line', 3
    .const 'Sub' $P670 = "55_1295307663.343" 
    capture_lex $P670
    .const 'Sub' $P644 = "53_1295307663.343" 
    capture_lex $P644
    .const 'Sub' $P618 = "51_1295307663.343" 
    capture_lex $P618
    .const 'Sub' $P587 = "50_1295307663.343" 
    capture_lex $P587
    .const 'Sub' $P567 = "49_1295307663.343" 
    capture_lex $P567
    .const 'Sub' $P559 = "48_1295307663.343" 
    capture_lex $P559
    .const 'Sub' $P548 = "47_1295307663.343" 
    capture_lex $P548
    .const 'Sub' $P530 = "46_1295307663.343" 
    capture_lex $P530
    .const 'Sub' $P512 = "45_1295307663.343" 
    capture_lex $P512
    .const 'Sub' $P504 = "44_1295307663.343" 
    capture_lex $P504
    .const 'Sub' $P496 = "43_1295307663.343" 
    capture_lex $P496
    .const 'Sub' $P488 = "42_1295307663.343" 
    capture_lex $P488
    .const 'Sub' $P480 = "41_1295307663.343" 
    capture_lex $P480
    .const 'Sub' $P472 = "40_1295307663.343" 
    capture_lex $P472
    .const 'Sub' $P464 = "39_1295307663.343" 
    capture_lex $P464
    .const 'Sub' $P453 = "38_1295307663.343" 
    capture_lex $P453
    .const 'Sub' $P445 = "37_1295307663.343" 
    capture_lex $P445
    .const 'Sub' $P428 = "36_1295307663.343" 
    capture_lex $P428
    .const 'Sub' $P352 = "34_1295307663.343" 
    capture_lex $P352
    .const 'Sub' $P288 = "31_1295307663.343" 
    capture_lex $P288
    .const 'Sub' $P278 = "30_1295307663.343" 
    capture_lex $P278
    .const 'Sub' $P268 = "29_1295307663.343" 
    capture_lex $P268
    .const 'Sub' $P258 = "28_1295307663.343" 
    capture_lex $P258
    .const 'Sub' $P248 = "27_1295307663.343" 
    capture_lex $P248
    .const 'Sub' $P238 = "26_1295307663.343" 
    capture_lex $P238
    .const 'Sub' $P227 = "25_1295307663.343" 
    capture_lex $P227
    .const 'Sub' $P216 = "24_1295307663.343" 
    capture_lex $P216
    .const 'Sub' $P207 = "23_1295307663.343" 
    capture_lex $P207
    .const 'Sub' $P196 = "22_1295307663.343" 
    capture_lex $P196
    .const 'Sub' $P185 = "21_1295307663.343" 
    capture_lex $P185
    .const 'Sub' $P83 = "18_1295307663.343" 
    capture_lex $P83
    .const 'Sub' $P44 = "15_1295307663.343" 
    capture_lex $P44
    .const 'Sub' $P36 = "14_1295307663.343" 
    capture_lex $P36
    .const 'Sub' $P26 = "13_1295307663.343" 
    capture_lex $P26
    .const 'Sub' $P17 = "12_1295307663.343" 
    capture_lex $P17
    get_global $P16, "$?CLASS"
    nqp_dynop_setup 
    .const 'Sub' $P17 = "12_1295307663.343" 
    newclosure $P24, $P17
    .lex "string_to_int", $P24
    find_lex $P25, "string_to_int"
    set_global "string_to_int", $P25
.annotate 'line', 37
    .const 'Sub' $P26 = "13_1295307663.343" 
    newclosure $P32, $P26
    .lex "ints_to_string", $P32
.annotate 'line', 3
    find_lex $P33, "ints_to_string"
    set_global "ints_to_string", $P33
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    find_lex $P34, "string_to_int"
    find_lex $P35, "ints_to_string"
.annotate 'line', 225
    .const 'Sub' $P644 = "53_1295307663.343" 
    newclosure $P662, $P644
.annotate 'line', 3
    .return ($P662)
    .const 'Sub' $P664 = "54_1295307663.343" 
    .return ($P664)
.end


.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post57") :outer("11_1295307663.343")
.annotate 'line', 3
    get_hll_global $P15, ["HLL";"Actions"], "_block14" 
    .local pmc block
    set block, $P15
    .const 'Sub' $P667 = "12_1295307663.343" 
    set_global "string_to_int", $P667
    .const 'Sub' $P668 = "13_1295307663.343" 
    set_global "ints_to_string", $P668
    .const 'Sub' $P670 = "55_1295307663.343" 
    capture_lex $P670
    $P670()
.end


.namespace ["HLL";"Actions"]
.sub "_block669"  :anon :subid("55_1295307663.343") :outer("11_1295307663.343")
.annotate 'line', 3
    get_hll_global $P671, "NQPClassHOW"
    $P672 = $P671."new_type"("Actions" :named("name"))
    .local pmc type_obj
    set type_obj, $P672
    set_hll_global ["HLL"], "Actions", type_obj
    set_global "$?CLASS", type_obj
    get_how $P673, type_obj
    .const 'Sub' $P674 = "14_1295307663.343" 
    $P673."add_method"(type_obj, "CTXSAVE", $P674)
    get_how $P675, type_obj
    .const 'Sub' $P676 = "15_1295307663.343" 
    $P675."add_method"(type_obj, "SET_BLOCK_OUTER_CTX", $P676)
    get_how $P677, type_obj
    .const 'Sub' $P678 = "18_1295307663.343" 
    $P677."add_method"(type_obj, "EXPR", $P678)
    get_how $P679, type_obj
    .const 'Sub' $P680 = "21_1295307663.343" 
    $P679."add_method"(type_obj, "term:sym<circumfix>", $P680)
    get_how $P681, type_obj
    .const 'Sub' $P682 = "22_1295307663.343" 
    $P681."add_method"(type_obj, "termish", $P682)
    get_how $P683, type_obj
    .const 'Sub' $P684 = "23_1295307663.343" 
    $P683."add_method"(type_obj, "nullterm", $P684)
    get_how $P685, type_obj
    .const 'Sub' $P686 = "24_1295307663.343" 
    $P685."add_method"(type_obj, "nullterm_alt", $P686)
    get_how $P687, type_obj
    .const 'Sub' $P688 = "25_1295307663.343" 
    $P687."add_method"(type_obj, "integer", $P688)
    get_how $P689, type_obj
    .const 'Sub' $P690 = "26_1295307663.343" 
    $P689."add_method"(type_obj, "dec_number", $P690)
    get_how $P691, type_obj
    .const 'Sub' $P692 = "27_1295307663.343" 
    $P691."add_method"(type_obj, "decint", $P692)
    get_how $P693, type_obj
    .const 'Sub' $P694 = "28_1295307663.343" 
    $P693."add_method"(type_obj, "hexint", $P694)
    get_how $P695, type_obj
    .const 'Sub' $P696 = "29_1295307663.343" 
    $P695."add_method"(type_obj, "octint", $P696)
    get_how $P697, type_obj
    .const 'Sub' $P698 = "30_1295307663.343" 
    $P697."add_method"(type_obj, "binint", $P698)
    get_how $P699, type_obj
    .const 'Sub' $P700 = "31_1295307663.343" 
    $P699."add_method"(type_obj, "quote_EXPR", $P700)
    get_how $P701, type_obj
    .const 'Sub' $P702 = "34_1295307663.343" 
    $P701."add_method"(type_obj, "quote_delimited", $P702)
    get_how $P703, type_obj
    .const 'Sub' $P704 = "36_1295307663.343" 
    $P703."add_method"(type_obj, "quote_atom", $P704)
    get_how $P705, type_obj
    .const 'Sub' $P706 = "37_1295307663.343" 
    $P705."add_method"(type_obj, "quote_escape:sym<backslash>", $P706)
    get_how $P707, type_obj
    .const 'Sub' $P708 = "38_1295307663.343" 
    $P707."add_method"(type_obj, "quote_escape:sym<stopper>", $P708)
    get_how $P709, type_obj
    .const 'Sub' $P710 = "39_1295307663.343" 
    $P709."add_method"(type_obj, "quote_escape:sym<bs>", $P710)
    get_how $P711, type_obj
    .const 'Sub' $P712 = "40_1295307663.343" 
    $P711."add_method"(type_obj, "quote_escape:sym<nl>", $P712)
    get_how $P713, type_obj
    .const 'Sub' $P714 = "41_1295307663.343" 
    $P713."add_method"(type_obj, "quote_escape:sym<cr>", $P714)
    get_how $P715, type_obj
    .const 'Sub' $P716 = "42_1295307663.343" 
    $P715."add_method"(type_obj, "quote_escape:sym<tab>", $P716)
    get_how $P717, type_obj
    .const 'Sub' $P718 = "43_1295307663.343" 
    $P717."add_method"(type_obj, "quote_escape:sym<ff>", $P718)
    get_how $P719, type_obj
    .const 'Sub' $P720 = "44_1295307663.343" 
    $P719."add_method"(type_obj, "quote_escape:sym<esc>", $P720)
    get_how $P721, type_obj
    .const 'Sub' $P722 = "45_1295307663.343" 
    $P721."add_method"(type_obj, "quote_escape:sym<hex>", $P722)
    get_how $P723, type_obj
    .const 'Sub' $P724 = "46_1295307663.343" 
    $P723."add_method"(type_obj, "quote_escape:sym<oct>", $P724)
    get_how $P725, type_obj
    .const 'Sub' $P726 = "47_1295307663.343" 
    $P725."add_method"(type_obj, "quote_escape:sym<chr>", $P726)
    get_how $P727, type_obj
    .const 'Sub' $P728 = "48_1295307663.343" 
    $P727."add_method"(type_obj, "quote_escape:sym<0>", $P728)
    get_how $P729, type_obj
    .const 'Sub' $P730 = "49_1295307663.343" 
    $P729."add_method"(type_obj, "quote_escape:sym<misc>", $P730)
    get_how $P731, type_obj
    .const 'Sub' $P732 = "50_1295307663.343" 
    $P731."add_method"(type_obj, "charname", $P732)
    get_how $P733, type_obj
    .const 'Sub' $P734 = "51_1295307663.343" 
    $P733."add_method"(type_obj, "charnames", $P734)
    get_how $P735, type_obj
    .const 'Sub' $P736 = "53_1295307663.343" 
    $P735."add_method"(type_obj, "charspec", $P736)
    get_how $P737, type_obj
    $P738 = $P737."compose"(type_obj)
    .return ($P738)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("12_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_20
    .param pmc param_21
.annotate 'line', 3
    new $P19, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P19, control_18
    push_eh $P19
    .lex "$src", param_20
    .lex "$base", param_21
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
        $P22 = box result
    
.annotate 'line', 3
    .return ($P22)
  control_18:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P23, exception, "payload"
    .return ($P23)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "ints_to_string"  :subid("13_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_29
.annotate 'line', 37
    new $P28, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P28, control_27
    push_eh $P28
    .lex "$ints", param_29
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
        $P30 = box result
    
.annotate 'line', 37
    .return ($P30)
  control_27:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P31, exception, "payload"
    .return ($P31)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "CTXSAVE"  :subid("14_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_39
.annotate 'line', 62
    new $P38, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P38, control_37
    push_eh $P38
    .lex "self", param_39
.annotate 'line', 63
    get_hll_global $P40, ["PAST"], "Op"
.annotate 'line', 69
    new $P41, "ResizablePMCArray"
    push $P41, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P41, "    if null $P0 goto ctxsave_done"
    push $P41, "    $I0 = can $P0, \"ctxsave\""
    push $P41, "    unless $I0 goto ctxsave_done"
    push $P41, "    $P0.\"ctxsave\"()"
    push $P41, "  ctxsave_done:"
    $P42 = $P40."new"($P41 :named("inline"))
.annotate 'line', 62
    .return ($P42)
  control_37:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P43, exception, "payload"
    .return ($P43)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "SET_BLOCK_OUTER_CTX"  :subid("15_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_47
    .param pmc param_48
.annotate 'line', 76
    .const 'Sub' $P58 = "16_1295307663.343" 
    capture_lex $P58
    new $P46, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P46, control_45
    push_eh $P46
    .lex "self", param_47
    .lex "$block", param_48
.annotate 'line', 77
    new $P49, "Undef"
    .lex "$outer_ctx", $P49
    find_dynamic_lex $P50, "%*COMPILING"
    unless_null $P50, vivify_58
    get_hll_global $P50, "%COMPILING"
    unless_null $P50, vivify_59
    die "Contextual %*COMPILING not found"
  vivify_59:
  vivify_58:
    set $P51, $P50["%?OPTIONS"]
    unless_null $P51, vivify_60
    $P51 = root_new ['parrot';'Hash']
  vivify_60:
    set $P52, $P51["outer_ctx"]
    unless_null $P52, vivify_61
    new $P52, "Undef"
  vivify_61:
    store_lex "$outer_ctx", $P52
.annotate 'line', 78
    find_lex $P55, "$outer_ctx"
    defined $I56, $P55
    if $I56, if_54
    new $P53, 'Integer'
    set $P53, $I56
    goto if_54_end
  if_54:
    .const 'Sub' $P58 = "16_1295307663.343" 
    capture_lex $P58
    $P81 = $P58()
    set $P53, $P81
  if_54_end:
.annotate 'line', 76
    .return ($P53)
  control_45:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P82, exception, "payload"
    .return ($P82)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block57"  :anon :subid("16_1295307663.343") :outer("15_1295307663.343")
.annotate 'line', 78
    .const 'Sub' $P72 = "17_1295307663.343" 
    capture_lex $P72
.annotate 'line', 79
    $P59 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P59
    find_lex $P60, "$outer_ctx"
    getattribute $P61, $P60, "current_namespace"
    $P62 = $P61."get_name"()
    store_lex "@ns", $P62
.annotate 'line', 80
    find_lex $P63, "@ns"
    $P63."shift"()
.annotate 'line', 81
    find_lex $P64, "$block"
    find_lex $P65, "@ns"
    $P64."namespace"($P65)
.annotate 'line', 82
    find_lex $P67, "$outer_ctx"
    $P68 = $P67."lexpad_full"()
    defined $I69, $P68
    unless $I69, for_undef_62
    iter $P66, $P68
    new $P79, 'ExceptionHandler'
    set_addr $P79, loop78_handler
    $P79."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P79
  loop78_test:
    unless $P66, loop78_done
    shift $P70, $P66
  loop78_redo:
    .const 'Sub' $P72 = "17_1295307663.343" 
    capture_lex $P72
    $P72($P70)
  loop78_next:
    goto loop78_test
  loop78_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P80, exception, 'type'
    eq $P80, .CONTROL_LOOP_NEXT, loop78_next
    eq $P80, .CONTROL_LOOP_REDO, loop78_redo
  loop78_done:
    pop_eh 
  for_undef_62:
.annotate 'line', 78
    .return ($P66)
.end


.namespace ["HLL";"Actions"]
.sub "_block71"  :anon :subid("17_1295307663.343") :outer("16_1295307663.343")
    .param pmc param_73
.annotate 'line', 82
    .lex "$_", param_73
.annotate 'line', 83
    find_lex $P74, "$block"
    find_lex $P75, "$_"
    $P76 = $P75."key"()
    $P77 = $P74."symbol"($P76, "lexical" :named("scope"))
.annotate 'line', 82
    .return ($P77)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("18_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_86
    .param pmc param_87
    .param pmc param_88 :optional
    .param int has_param_88 :opt_flag
.annotate 'line', 89
    .const 'Sub' $P167 = "20_1295307663.343" 
    capture_lex $P167
    .const 'Sub' $P134 = "19_1295307663.343" 
    capture_lex $P134
    new $P85, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P85, control_84
    push_eh $P85
    .lex "self", param_86
    .lex "$/", param_87
    if has_param_88, optparam_63
    new $P89, "Undef"
    set param_88, $P89
  optparam_63:
    .lex "$key", param_88
.annotate 'line', 91
    new $P90, "Undef"
    .lex "$past", $P90
.annotate 'line', 90
    find_lex $P92, "$key"
    if $P92, unless_91_end
    new $P93, "Exception"
    set $P93['type'], .CONTROL_RETURN
    new $P94, "Integer"
    assign $P94, 0
    setattribute $P93, 'payload', $P94
    throw $P93
  unless_91_end:
.annotate 'line', 91
    find_lex $P96, "$/"
    $P97 = $P96."ast"()
    set $P95, $P97
    defined $I99, $P95
    if $I99, default_98
    find_lex $P100, "$/"
    unless_null $P100, vivify_64
    $P100 = root_new ['parrot';'Hash']
  vivify_64:
    set $P101, $P100["OPER"]
    unless_null $P101, vivify_65
    new $P101, "Undef"
  vivify_65:
    $P102 = $P101."ast"()
    set $P95, $P102
  default_98:
    store_lex "$past", $P95
.annotate 'line', 92
    find_lex $P104, "$past"
    if $P104, unless_103_end
.annotate 'line', 93
    get_hll_global $P105, ["PAST"], "Op"
    find_lex $P106, "$/"
    $P107 = $P105."new"($P106 :named("node"))
    store_lex "$past", $P107
.annotate 'line', 94
    find_lex $P109, "$/"
    unless_null $P109, vivify_66
    $P109 = root_new ['parrot';'Hash']
  vivify_66:
    set $P110, $P109["OPER"]
    unless_null $P110, vivify_67
    $P110 = root_new ['parrot';'Hash']
  vivify_67:
    set $P111, $P110["O"]
    unless_null $P111, vivify_68
    $P111 = root_new ['parrot';'Hash']
  vivify_68:
    set $P112, $P111["pasttype"]
    unless_null $P112, vivify_69
    new $P112, "Undef"
  vivify_69:
    if $P112, if_108
.annotate 'line', 95
    find_lex $P120, "$/"
    unless_null $P120, vivify_70
    $P120 = root_new ['parrot';'Hash']
  vivify_70:
    set $P121, $P120["OPER"]
    unless_null $P121, vivify_71
    $P121 = root_new ['parrot';'Hash']
  vivify_71:
    set $P122, $P121["O"]
    unless_null $P122, vivify_72
    $P122 = root_new ['parrot';'Hash']
  vivify_72:
    set $P123, $P122["pirop"]
    unless_null $P123, vivify_73
    new $P123, "Undef"
  vivify_73:
    unless $P123, if_119_end
    find_lex $P124, "$past"
    find_lex $P125, "$/"
    unless_null $P125, vivify_74
    $P125 = root_new ['parrot';'Hash']
  vivify_74:
    set $P126, $P125["OPER"]
    unless_null $P126, vivify_75
    $P126 = root_new ['parrot';'Hash']
  vivify_75:
    set $P127, $P126["O"]
    unless_null $P127, vivify_76
    $P127 = root_new ['parrot';'Hash']
  vivify_76:
    set $P128, $P127["pirop"]
    unless_null $P128, vivify_77
    new $P128, "Undef"
  vivify_77:
    set $S129, $P128
    $P124."pirop"($S129)
  if_119_end:
    goto if_108_end
  if_108:
.annotate 'line', 94
    find_lex $P113, "$past"
    find_lex $P114, "$/"
    unless_null $P114, vivify_78
    $P114 = root_new ['parrot';'Hash']
  vivify_78:
    set $P115, $P114["OPER"]
    unless_null $P115, vivify_79
    $P115 = root_new ['parrot';'Hash']
  vivify_79:
    set $P116, $P115["O"]
    unless_null $P116, vivify_80
    $P116 = root_new ['parrot';'Hash']
  vivify_80:
    set $P117, $P116["pasttype"]
    unless_null $P117, vivify_81
    new $P117, "Undef"
  vivify_81:
    set $S118, $P117
    $P113."pasttype"($S118)
  if_108_end:
.annotate 'line', 96
    find_lex $P131, "$past"
    $P132 = $P131."name"()
    if $P132, unless_130_end
    .const 'Sub' $P134 = "19_1295307663.343" 
    capture_lex $P134
    $P134()
  unless_130_end:
  unless_103_end:
.annotate 'line', 107
    find_lex $P154, "$key"
    set $S155, $P154
    iseq $I156, $S155, "POSTFIX"
    if $I156, if_153
.annotate 'line', 109
    find_lex $P162, "$/"
    $P163 = $P162."list"()
    defined $I164, $P163
    unless $I164, for_undef_85
    iter $P161, $P163
    new $P179, 'ExceptionHandler'
    set_addr $P179, loop178_handler
    $P179."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P179
  loop178_test:
    unless $P161, loop178_done
    shift $P165, $P161
  loop178_redo:
    .const 'Sub' $P167 = "20_1295307663.343" 
    capture_lex $P167
    $P167($P165)
  loop178_next:
    goto loop178_test
  loop178_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P180, exception, 'type'
    eq $P180, .CONTROL_LOOP_NEXT, loop178_next
    eq $P180, .CONTROL_LOOP_REDO, loop178_redo
  loop178_done:
    pop_eh 
  for_undef_85:
.annotate 'line', 108
    goto if_153_end
  if_153:
.annotate 'line', 107
    find_lex $P157, "$past"
    find_lex $P158, "$/"
    unless_null $P158, vivify_86
    $P158 = root_new ['parrot';'ResizablePMCArray']
  vivify_86:
    set $P159, $P158[0]
    unless_null $P159, vivify_87
    new $P159, "Undef"
  vivify_87:
    $P160 = $P159."ast"()
    $P157."unshift"($P160)
  if_153_end:
.annotate 'line', 111
    find_lex $P181, "$/"
    find_lex $P182, "$past"
    $P183 = $P181."!make"($P182)
.annotate 'line', 89
    .return ($P183)
  control_84:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P184, exception, "payload"
    .return ($P184)
.end


.namespace ["HLL";"Actions"]
.sub "_block133"  :anon :subid("19_1295307663.343") :outer("18_1295307663.343")
.annotate 'line', 98
    new $P135, "Undef"
    .lex "$name", $P135
.annotate 'line', 97
    find_lex $P137, "$key"
    set $S138, $P137
    iseq $I139, $S138, "LIST"
    unless $I139, if_136_end
    new $P140, "String"
    assign $P140, "infix"
    store_lex "$key", $P140
  if_136_end:
.annotate 'line', 98

                $P0 = find_lex '$key'
                $S0 = $P0
                $S0 = downcase $S0
                $P141 = box $S0
            
    concat $P142, $P141, ":<"
.annotate 'line', 103
    find_lex $P143, "$/"
    unless_null $P143, vivify_82
    $P143 = root_new ['parrot';'Hash']
  vivify_82:
    set $P144, $P143["OPER"]
    unless_null $P144, vivify_83
    $P144 = root_new ['parrot';'Hash']
  vivify_83:
    set $P145, $P144["sym"]
    unless_null $P145, vivify_84
    new $P145, "Undef"
  vivify_84:
    concat $P146, $P142, $P145
    concat $P147, $P146, ">"
    store_lex "$name", $P147
.annotate 'line', 104
    find_lex $P148, "$past"
    new $P149, "String"
    assign $P149, "&"
    find_lex $P150, "$name"
    concat $P151, $P149, $P150
    $P152 = $P148."name"($P151)
.annotate 'line', 96
    .return ($P152)
.end


.namespace ["HLL";"Actions"]
.sub "_block166"  :anon :subid("20_1295307663.343") :outer("18_1295307663.343")
    .param pmc param_168
.annotate 'line', 109
    .lex "$_", param_168
    find_lex $P171, "$_"
    $P172 = $P171."ast"()
    defined $I173, $P172
    if $I173, if_170
    new $P169, 'Integer'
    set $P169, $I173
    goto if_170_end
  if_170:
    find_lex $P174, "$past"
    find_lex $P175, "$_"
    $P176 = $P175."ast"()
    $P177 = $P174."push"($P176)
    set $P169, $P177
  if_170_end:
    .return ($P169)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "term:sym<circumfix>"  :subid("21_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_188
    .param pmc param_189
.annotate 'line', 114
    new $P187, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P187, control_186
    push_eh $P187
    .lex "self", param_188
    .lex "$/", param_189
    find_lex $P190, "$/"
    find_lex $P191, "$/"
    unless_null $P191, vivify_88
    $P191 = root_new ['parrot';'Hash']
  vivify_88:
    set $P192, $P191["circumfix"]
    unless_null $P192, vivify_89
    new $P192, "Undef"
  vivify_89:
    $P193 = $P192."ast"()
    $P194 = $P190."!make"($P193)
    .return ($P194)
  control_186:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P195, exception, "payload"
    .return ($P195)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("22_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_199
    .param pmc param_200
.annotate 'line', 116
    new $P198, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P198, control_197
    push_eh $P198
    .lex "self", param_199
    .lex "$/", param_200
    find_lex $P201, "$/"
    find_lex $P202, "$/"
    unless_null $P202, vivify_90
    $P202 = root_new ['parrot';'Hash']
  vivify_90:
    set $P203, $P202["term"]
    unless_null $P203, vivify_91
    new $P203, "Undef"
  vivify_91:
    $P204 = $P203."ast"()
    $P205 = $P201."!make"($P204)
    .return ($P205)
  control_197:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P206, exception, "payload"
    .return ($P206)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "nullterm"  :subid("23_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_210
    .param pmc param_211
.annotate 'line', 117
    new $P209, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P209, control_208
    push_eh $P209
    .lex "self", param_210
    .lex "$/", param_211
    find_lex $P212, "$/"
 $P213 = new ['Undef'] 
    $P214 = $P212."!make"($P213)
    .return ($P214)
  control_208:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P215, exception, "payload"
    .return ($P215)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "nullterm_alt"  :subid("24_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_219
    .param pmc param_220
.annotate 'line', 118
    new $P218, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P218, control_217
    push_eh $P218
    .lex "self", param_219
    .lex "$/", param_220
    find_lex $P221, "$/"
    find_lex $P222, "$/"
    unless_null $P222, vivify_92
    $P222 = root_new ['parrot';'Hash']
  vivify_92:
    set $P223, $P222["term"]
    unless_null $P223, vivify_93
    new $P223, "Undef"
  vivify_93:
    $P224 = $P223."ast"()
    $P225 = $P221."!make"($P224)
    .return ($P225)
  control_217:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P226, exception, "payload"
    .return ($P226)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "integer"  :subid("25_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_230
    .param pmc param_231
.annotate 'line', 120
    new $P229, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P229, control_228
    push_eh $P229
    .lex "self", param_230
    .lex "$/", param_231
    find_lex $P232, "$/"
    find_lex $P233, "$/"
    unless_null $P233, vivify_94
    $P233 = root_new ['parrot';'Hash']
  vivify_94:
    set $P234, $P233["VALUE"]
    unless_null $P234, vivify_95
    new $P234, "Undef"
  vivify_95:
    $P235 = $P234."ast"()
    $P236 = $P232."!make"($P235)
    .return ($P236)
  control_228:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P237, exception, "payload"
    .return ($P237)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "dec_number"  :subid("26_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_241
    .param pmc param_242
.annotate 'line', 122
    new $P240, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P240, control_239
    push_eh $P240
    .lex "self", param_241
    .lex "$/", param_242
    find_lex $P243, "$/"
    find_lex $P244, "$/"
    set $N245, $P244
    $P246 = $P243."!make"($N245)
    .return ($P246)
  control_239:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P247, exception, "payload"
    .return ($P247)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "decint"  :subid("27_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_251
    .param pmc param_252
.annotate 'line', 124
    new $P250, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P250, control_249
    push_eh $P250
    .lex "self", param_251
    .lex "$/", param_252
    find_lex $P253, "$/"
    find_lex $P254, "$/"
    $P255 = "string_to_int"($P254, 10)
    $P256 = $P253."!make"($P255)
    .return ($P256)
  control_249:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P257, exception, "payload"
    .return ($P257)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "hexint"  :subid("28_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_261
    .param pmc param_262
.annotate 'line', 125
    new $P260, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P260, control_259
    push_eh $P260
    .lex "self", param_261
    .lex "$/", param_262
    find_lex $P263, "$/"
    find_lex $P264, "$/"
    $P265 = "string_to_int"($P264, 16)
    $P266 = $P263."!make"($P265)
    .return ($P266)
  control_259:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P267, exception, "payload"
    .return ($P267)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "octint"  :subid("29_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_271
    .param pmc param_272
.annotate 'line', 126
    new $P270, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P270, control_269
    push_eh $P270
    .lex "self", param_271
    .lex "$/", param_272
    find_lex $P273, "$/"
    find_lex $P274, "$/"
    $P275 = "string_to_int"($P274, 8)
    $P276 = $P273."!make"($P275)
    .return ($P276)
  control_269:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P277, exception, "payload"
    .return ($P277)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "binint"  :subid("30_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_281
    .param pmc param_282
.annotate 'line', 127
    new $P280, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P280, control_279
    push_eh $P280
    .lex "self", param_281
    .lex "$/", param_282
    find_lex $P283, "$/"
    find_lex $P284, "$/"
    $P285 = "string_to_int"($P284, 2)
    $P286 = $P283."!make"($P285)
    .return ($P286)
  control_279:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P287, exception, "payload"
    .return ($P287)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_EXPR"  :subid("31_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_291
    .param pmc param_292
.annotate 'line', 129
    .const 'Sub' $P308 = "32_1295307663.343" 
    capture_lex $P308
    new $P290, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P290, control_289
    push_eh $P290
    .lex "self", param_291
    .lex "$/", param_292
.annotate 'line', 130
    new $P293, "Undef"
    .lex "$past", $P293
    find_lex $P294, "$/"
    unless_null $P294, vivify_96
    $P294 = root_new ['parrot';'Hash']
  vivify_96:
    set $P295, $P294["quote_delimited"]
    unless_null $P295, vivify_97
    new $P295, "Undef"
  vivify_97:
    $P296 = $P295."ast"()
    store_lex "$past", $P296
.annotate 'line', 131
    find_lex $P298, "$/"
    $P299 = $P298."CURSOR"()
    $P300 = $P299."quotemod_check"("w")
    unless $P300, if_297_end
.annotate 'line', 132
    get_hll_global $P302, ["PAST"], "Node"
    find_lex $P303, "$past"
    $P304 = $P302."ACCEPTS"($P303)
    if $P304, if_301
.annotate 'line', 135
    .const 'Sub' $P308 = "32_1295307663.343" 
    capture_lex $P308
    $P308()
    goto if_301_end
  if_301:
.annotate 'line', 133
    find_lex $P305, "$/"
    $P306 = $P305."CURSOR"()
    $P306."panic"("Can't form :w list from non-constant strings (yet)")
  if_301_end:
  if_297_end:
.annotate 'line', 146
    get_hll_global $P340, ["PAST"], "Node"
    find_lex $P341, "$past"
    $P342 = $P340."ACCEPTS"($P341)
    isfalse $I343, $P342
    unless $I343, if_339_end
.annotate 'line', 147
    get_hll_global $P344, ["PAST"], "Val"
    find_lex $P345, "$past"
    set $S346, $P345
    $P347 = $P344."new"($S346 :named("value"))
    store_lex "$past", $P347
  if_339_end:
.annotate 'line', 149
    find_lex $P348, "$/"
    find_lex $P349, "$past"
    $P350 = $P348."!make"($P349)
.annotate 'line', 129
    .return ($P350)
  control_289:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P351, exception, "payload"
    .return ($P351)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block307"  :anon :subid("32_1295307663.343") :outer("31_1295307663.343")
.annotate 'line', 135
    .const 'Sub' $P327 = "33_1295307663.343" 
    capture_lex $P327
.annotate 'line', 136
    $P309 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P309
    get_hll_global $P310, ["HLL";"Grammar"], "split_words"
    find_lex $P311, "$/"
    find_lex $P312, "$past"
    $P313 = $P310($P311, $P312)
    store_lex "@words", $P313
.annotate 'line', 137
    find_lex $P316, "@words"
    set $N317, $P316
    isne $I318, $N317, 1.0
    if $I318, if_315
.annotate 'line', 142
    find_lex $P335, "@words"
    unless_null $P335, vivify_98
    $P335 = root_new ['parrot';'ResizablePMCArray']
  vivify_98:
    set $P336, $P335[0]
    unless_null $P336, vivify_99
    new $P336, "Undef"
  vivify_99:
    set $S337, $P336
    new $P338, 'String'
    set $P338, $S337
    store_lex "$past", $P338
.annotate 'line', 141
    set $P314, $P338
.annotate 'line', 137
    goto if_315_end
  if_315:
.annotate 'line', 138
    get_hll_global $P319, ["PAST"], "Op"
    find_lex $P320, "$/"
    $P321 = $P319."new"("list" :named("pasttype"), $P320 :named("node"))
    store_lex "$past", $P321
.annotate 'line', 139
    find_lex $P323, "@words"
    defined $I324, $P323
    unless $I324, for_undef_100
    iter $P322, $P323
    new $P333, 'ExceptionHandler'
    set_addr $P333, loop332_handler
    $P333."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P333
  loop332_test:
    unless $P322, loop332_done
    shift $P325, $P322
  loop332_redo:
    .const 'Sub' $P327 = "33_1295307663.343" 
    capture_lex $P327
    $P327($P325)
  loop332_next:
    goto loop332_test
  loop332_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P334, exception, 'type'
    eq $P334, .CONTROL_LOOP_NEXT, loop332_next
    eq $P334, .CONTROL_LOOP_REDO, loop332_redo
  loop332_done:
    pop_eh 
  for_undef_100:
.annotate 'line', 137
    set $P314, $P322
  if_315_end:
.annotate 'line', 135
    .return ($P314)
.end


.namespace ["HLL";"Actions"]
.sub "_block326"  :anon :subid("33_1295307663.343") :outer("32_1295307663.343")
    .param pmc param_328
.annotate 'line', 139
    .lex "$_", param_328
    find_lex $P329, "$past"
    find_lex $P330, "$_"
    $P331 = $P329."push"($P330)
    .return ($P331)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("34_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_355
    .param pmc param_356
.annotate 'line', 152
    .const 'Sub' $P368 = "35_1295307663.343" 
    capture_lex $P368
    new $P354, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P354, control_353
    push_eh $P354
    .lex "self", param_355
    .lex "$/", param_356
.annotate 'line', 153
    $P357 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P357
.annotate 'line', 154
    new $P358, "Undef"
    .lex "$lastlit", $P358
.annotate 'line', 170
    new $P359, "Undef"
    .lex "$past", $P359
.annotate 'line', 152
    find_lex $P360, "@parts"
.annotate 'line', 154
    new $P361, "String"
    assign $P361, ""
    store_lex "$lastlit", $P361
.annotate 'line', 155
    find_lex $P363, "$/"
    unless_null $P363, vivify_101
    $P363 = root_new ['parrot';'Hash']
  vivify_101:
    set $P364, $P363["quote_atom"]
    unless_null $P364, vivify_102
    new $P364, "Undef"
  vivify_102:
    defined $I365, $P364
    unless $I365, for_undef_103
    iter $P362, $P364
    new $P401, 'ExceptionHandler'
    set_addr $P401, loop400_handler
    $P401."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P401
  loop400_test:
    unless $P362, loop400_done
    shift $P366, $P362
  loop400_redo:
    .const 'Sub' $P368 = "35_1295307663.343" 
    capture_lex $P368
    $P368($P366)
  loop400_next:
    goto loop400_test
  loop400_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P402, exception, 'type'
    eq $P402, .CONTROL_LOOP_NEXT, loop400_next
    eq $P402, .CONTROL_LOOP_REDO, loop400_redo
  loop400_done:
    pop_eh 
  for_undef_103:
.annotate 'line', 169
    find_lex $P404, "$lastlit"
    set $S405, $P404
    isgt $I406, $S405, ""
    unless $I406, if_403_end
    find_lex $P407, "@parts"
    find_lex $P408, "$lastlit"
    $P407."push"($P408)
  if_403_end:
.annotate 'line', 170
    find_lex $P411, "@parts"
    if $P411, if_410
    new $P414, "String"
    assign $P414, ""
    set $P409, $P414
    goto if_410_end
  if_410:
    find_lex $P412, "@parts"
    $P413 = $P412."shift"()
    set $P409, $P413
  if_410_end:
    store_lex "$past", $P409
.annotate 'line', 171
    new $P422, 'ExceptionHandler'
    set_addr $P422, loop421_handler
    $P422."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P422
  loop421_test:
    find_lex $P415, "@parts"
    unless $P415, loop421_done
  loop421_redo:
.annotate 'line', 172
    get_hll_global $P416, ["PAST"], "Op"
    find_lex $P417, "$past"
    find_lex $P418, "@parts"
    $P419 = $P418."shift"()
    $P420 = $P416."new"($P417, $P419, "concat" :named("pirop"))
    store_lex "$past", $P420
  loop421_next:
.annotate 'line', 171
    goto loop421_test
  loop421_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P423, exception, 'type'
    eq $P423, .CONTROL_LOOP_NEXT, loop421_next
    eq $P423, .CONTROL_LOOP_REDO, loop421_redo
  loop421_done:
    pop_eh 
.annotate 'line', 174
    find_lex $P424, "$/"
    find_lex $P425, "$past"
    $P426 = $P424."!make"($P425)
.annotate 'line', 152
    .return ($P426)
  control_353:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P427, exception, "payload"
    .return ($P427)
.end


.namespace ["HLL";"Actions"]
.sub "_block367"  :anon :subid("35_1295307663.343") :outer("34_1295307663.343")
    .param pmc param_370
.annotate 'line', 156
    new $P369, "Undef"
    .lex "$ast", $P369
    .lex "$_", param_370
    find_lex $P371, "$_"
    $P372 = $P371."ast"()
    store_lex "$ast", $P372
.annotate 'line', 157
    get_hll_global $P375, ["PAST"], "Node"
    find_lex $P376, "$ast"
    $P377 = $P375."ACCEPTS"($P376)
    isfalse $I378, $P377
    if $I378, if_374
.annotate 'line', 160
    find_lex $P384, "$ast"
    get_hll_global $P385, ["PAST"], "Val"
    $P386 = $P384."isa"($P385)
    if $P386, if_383
.annotate 'line', 164
    find_lex $P392, "$lastlit"
    set $S393, $P392
    isgt $I394, $S393, ""
    unless $I394, if_391_end
    find_lex $P395, "@parts"
    find_lex $P396, "$lastlit"
    $P395."push"($P396)
  if_391_end:
.annotate 'line', 165
    find_lex $P397, "@parts"
    find_lex $P398, "$ast"
    $P397."push"($P398)
.annotate 'line', 166
    new $P399, "String"
    assign $P399, ""
    store_lex "$lastlit", $P399
.annotate 'line', 163
    set $P382, $P399
.annotate 'line', 160
    goto if_383_end
  if_383:
.annotate 'line', 161
    find_lex $P387, "$lastlit"
    find_lex $P388, "$ast"
    $S389 = $P388."value"()
    concat $P390, $P387, $S389
    store_lex "$lastlit", $P390
.annotate 'line', 160
    set $P382, $P390
  if_383_end:
    set $P373, $P382
.annotate 'line', 157
    goto if_374_end
  if_374:
.annotate 'line', 158
    find_lex $P379, "$lastlit"
    find_lex $P380, "$ast"
    concat $P381, $P379, $P380
    store_lex "$lastlit", $P381
.annotate 'line', 157
    set $P373, $P381
  if_374_end:
.annotate 'line', 155
    .return ($P373)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_atom"  :subid("36_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_431
    .param pmc param_432
.annotate 'line', 177
    new $P430, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P430, control_429
    push_eh $P430
    .lex "self", param_431
    .lex "$/", param_432
.annotate 'line', 178
    find_lex $P433, "$/"
    find_lex $P436, "$/"
    unless_null $P436, vivify_104
    $P436 = root_new ['parrot';'Hash']
  vivify_104:
    set $P437, $P436["quote_escape"]
    unless_null $P437, vivify_105
    new $P437, "Undef"
  vivify_105:
    if $P437, if_435
    find_lex $P441, "$/"
    set $S442, $P441
    new $P434, 'String'
    set $P434, $S442
    goto if_435_end
  if_435:
    find_lex $P438, "$/"
    unless_null $P438, vivify_106
    $P438 = root_new ['parrot';'Hash']
  vivify_106:
    set $P439, $P438["quote_escape"]
    unless_null $P439, vivify_107
    new $P439, "Undef"
  vivify_107:
    $P440 = $P439."ast"()
    set $P434, $P440
  if_435_end:
    $P443 = $P433."!make"($P434)
.annotate 'line', 177
    .return ($P443)
  control_429:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P444, exception, "payload"
    .return ($P444)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<backslash>"  :subid("37_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_448
    .param pmc param_449
.annotate 'line', 181
    new $P447, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P447, control_446
    push_eh $P447
    .lex "self", param_448
    .lex "$/", param_449
    find_lex $P450, "$/"
    $P451 = $P450."!make"("\\")
    .return ($P451)
  control_446:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P452, exception, "payload"
    .return ($P452)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<stopper>"  :subid("38_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_456
    .param pmc param_457
.annotate 'line', 182
    new $P455, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P455, control_454
    push_eh $P455
    .lex "self", param_456
    .lex "$/", param_457
    find_lex $P458, "$/"
    find_lex $P459, "$/"
    unless_null $P459, vivify_108
    $P459 = root_new ['parrot';'Hash']
  vivify_108:
    set $P460, $P459["stopper"]
    unless_null $P460, vivify_109
    new $P460, "Undef"
  vivify_109:
    set $S461, $P460
    $P462 = $P458."!make"($S461)
    .return ($P462)
  control_454:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P463, exception, "payload"
    .return ($P463)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<bs>"  :subid("39_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_467
    .param pmc param_468
.annotate 'line', 184
    new $P466, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P466, control_465
    push_eh $P466
    .lex "self", param_467
    .lex "$/", param_468
    find_lex $P469, "$/"
    $P470 = $P469."!make"("\b")
    .return ($P470)
  control_465:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P471, exception, "payload"
    .return ($P471)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<nl>"  :subid("40_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_475
    .param pmc param_476
.annotate 'line', 185
    new $P474, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P474, control_473
    push_eh $P474
    .lex "self", param_475
    .lex "$/", param_476
    find_lex $P477, "$/"
    $P478 = $P477."!make"("\n")
    .return ($P478)
  control_473:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P479, exception, "payload"
    .return ($P479)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<cr>"  :subid("41_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_483
    .param pmc param_484
.annotate 'line', 186
    new $P482, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P482, control_481
    push_eh $P482
    .lex "self", param_483
    .lex "$/", param_484
    find_lex $P485, "$/"
    $P486 = $P485."!make"("\r")
    .return ($P486)
  control_481:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P487, exception, "payload"
    .return ($P487)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<tab>"  :subid("42_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_491
    .param pmc param_492
.annotate 'line', 187
    new $P490, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P490, control_489
    push_eh $P490
    .lex "self", param_491
    .lex "$/", param_492
    find_lex $P493, "$/"
    $P494 = $P493."!make"("\t")
    .return ($P494)
  control_489:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P495, exception, "payload"
    .return ($P495)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<ff>"  :subid("43_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_499
    .param pmc param_500
.annotate 'line', 188
    new $P498, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P498, control_497
    push_eh $P498
    .lex "self", param_499
    .lex "$/", param_500
    find_lex $P501, "$/"
    $P502 = $P501."!make"("\f")
    .return ($P502)
  control_497:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P503, exception, "payload"
    .return ($P503)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<esc>"  :subid("44_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_507
    .param pmc param_508
.annotate 'line', 189
    new $P506, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P506, control_505
    push_eh $P506
    .lex "self", param_507
    .lex "$/", param_508
    find_lex $P509, "$/"
    $P510 = $P509."!make"("\e")
    .return ($P510)
  control_505:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P511, exception, "payload"
    .return ($P511)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<hex>"  :subid("45_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_515
    .param pmc param_516
.annotate 'line', 191
    new $P514, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P514, control_513
    push_eh $P514
    .lex "self", param_515
    .lex "$/", param_516
.annotate 'line', 192
    find_lex $P517, "$/"
    find_lex $P520, "$/"
    unless_null $P520, vivify_110
    $P520 = root_new ['parrot';'Hash']
  vivify_110:
    set $P521, $P520["hexint"]
    unless_null $P521, vivify_111
    new $P521, "Undef"
  vivify_111:
    if $P521, if_519
    find_lex $P524, "$/"
    unless_null $P524, vivify_112
    $P524 = root_new ['parrot';'Hash']
  vivify_112:
    set $P525, $P524["hexints"]
    unless_null $P525, vivify_113
    $P525 = root_new ['parrot';'Hash']
  vivify_113:
    set $P526, $P525["hexint"]
    unless_null $P526, vivify_114
    new $P526, "Undef"
  vivify_114:
    set $P518, $P526
    goto if_519_end
  if_519:
    find_lex $P522, "$/"
    unless_null $P522, vivify_115
    $P522 = root_new ['parrot';'Hash']
  vivify_115:
    set $P523, $P522["hexint"]
    unless_null $P523, vivify_116
    new $P523, "Undef"
  vivify_116:
    set $P518, $P523
  if_519_end:
    $P527 = "ints_to_string"($P518)
    $P528 = $P517."!make"($P527)
.annotate 'line', 191
    .return ($P528)
  control_513:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P529, exception, "payload"
    .return ($P529)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<oct>"  :subid("46_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_533
    .param pmc param_534
.annotate 'line', 195
    new $P532, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P532, control_531
    push_eh $P532
    .lex "self", param_533
    .lex "$/", param_534
.annotate 'line', 196
    find_lex $P535, "$/"
    find_lex $P538, "$/"
    unless_null $P538, vivify_117
    $P538 = root_new ['parrot';'Hash']
  vivify_117:
    set $P539, $P538["octint"]
    unless_null $P539, vivify_118
    new $P539, "Undef"
  vivify_118:
    if $P539, if_537
    find_lex $P542, "$/"
    unless_null $P542, vivify_119
    $P542 = root_new ['parrot';'Hash']
  vivify_119:
    set $P543, $P542["octints"]
    unless_null $P543, vivify_120
    $P543 = root_new ['parrot';'Hash']
  vivify_120:
    set $P544, $P543["octint"]
    unless_null $P544, vivify_121
    new $P544, "Undef"
  vivify_121:
    set $P536, $P544
    goto if_537_end
  if_537:
    find_lex $P540, "$/"
    unless_null $P540, vivify_122
    $P540 = root_new ['parrot';'Hash']
  vivify_122:
    set $P541, $P540["octint"]
    unless_null $P541, vivify_123
    new $P541, "Undef"
  vivify_123:
    set $P536, $P541
  if_537_end:
    $P545 = "ints_to_string"($P536)
    $P546 = $P535."!make"($P545)
.annotate 'line', 195
    .return ($P546)
  control_531:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P547, exception, "payload"
    .return ($P547)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<chr>"  :subid("47_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_551
    .param pmc param_552
.annotate 'line', 199
    new $P550, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P550, control_549
    push_eh $P550
    .lex "self", param_551
    .lex "$/", param_552
.annotate 'line', 200
    find_lex $P553, "$/"
    find_lex $P554, "$/"
    unless_null $P554, vivify_124
    $P554 = root_new ['parrot';'Hash']
  vivify_124:
    set $P555, $P554["charspec"]
    unless_null $P555, vivify_125
    new $P555, "Undef"
  vivify_125:
    $P556 = $P555."ast"()
    $P557 = $P553."!make"($P556)
.annotate 'line', 199
    .return ($P557)
  control_549:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P558, exception, "payload"
    .return ($P558)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<0>"  :subid("48_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_562
    .param pmc param_563
.annotate 'line', 203
    new $P561, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P561, control_560
    push_eh $P561
    .lex "self", param_562
    .lex "$/", param_563
.annotate 'line', 204
    find_lex $P564, "$/"
    $P565 = $P564."!make"(unicode:"\x{0}")
.annotate 'line', 203
    .return ($P565)
  control_560:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P566, exception, "payload"
    .return ($P566)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_escape:sym<misc>"  :subid("49_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_570
    .param pmc param_571
.annotate 'line', 207
    new $P569, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P569, control_568
    push_eh $P569
    .lex "self", param_570
    .lex "$/", param_571
.annotate 'line', 208
    find_lex $P572, "$/"
    find_lex $P575, "$/"
    unless_null $P575, vivify_126
    $P575 = root_new ['parrot';'Hash']
  vivify_126:
    set $P576, $P575["textq"]
    unless_null $P576, vivify_127
    new $P576, "Undef"
  vivify_127:
    if $P576, if_574
    find_lex $P582, "$/"
    unless_null $P582, vivify_128
    $P582 = root_new ['parrot';'Hash']
  vivify_128:
    set $P583, $P582["textqq"]
    unless_null $P583, vivify_129
    new $P583, "Undef"
  vivify_129:
    $P584 = $P583."Str"()
    set $P573, $P584
    goto if_574_end
  if_574:
    new $P577, "String"
    assign $P577, "\\"
    find_lex $P578, "$/"
    unless_null $P578, vivify_130
    $P578 = root_new ['parrot';'Hash']
  vivify_130:
    set $P579, $P578["textq"]
    unless_null $P579, vivify_131
    new $P579, "Undef"
  vivify_131:
    $S580 = $P579."Str"()
    concat $P581, $P577, $S580
    set $P573, $P581
  if_574_end:
    $P585 = $P572."!make"($P573)
.annotate 'line', 207
    .return ($P585)
  control_568:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P586, exception, "payload"
    .return ($P586)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charname"  :subid("50_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_590
    .param pmc param_591
.annotate 'line', 211
    new $P589, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P589, control_588
    push_eh $P589
    .lex "self", param_590
    .lex "$/", param_591
.annotate 'line', 212
    new $P592, "Undef"
    .lex "$codepoint", $P592
.annotate 'line', 213
    find_lex $P595, "$/"
    unless_null $P595, vivify_132
    $P595 = root_new ['parrot';'Hash']
  vivify_132:
    set $P596, $P595["integer"]
    unless_null $P596, vivify_133
    new $P596, "Undef"
  vivify_133:
    if $P596, if_594
.annotate 'line', 214
    find_lex $P600, "$/"
    set $S601, $P600
    find_codepoint $I602, $S601
    new $P593, 'Integer'
    set $P593, $I602
.annotate 'line', 213
    goto if_594_end
  if_594:
    find_lex $P597, "$/"
    unless_null $P597, vivify_134
    $P597 = root_new ['parrot';'Hash']
  vivify_134:
    set $P598, $P597["integer"]
    unless_null $P598, vivify_135
    new $P598, "Undef"
  vivify_135:
    $P599 = $P598."ast"()
    set $P593, $P599
  if_594_end:
    store_lex "$codepoint", $P593
.annotate 'line', 215
    find_lex $P604, "$codepoint"
    set $N605, $P604
    islt $I606, $N605, 0.0
    unless $I606, if_603_end
    find_lex $P607, "$/"
    $P608 = $P607."CURSOR"()
    new $P609, 'String'
    set $P609, "Unrecognized character name "
    find_lex $P610, "$/"
    concat $P611, $P609, $P610
    $P608."panic"($P611)
  if_603_end:
.annotate 'line', 216
    find_lex $P612, "$/"
    find_lex $P613, "$codepoint"
    set $I614, $P613
    chr $S615, $I614
    $P616 = $P612."!make"($S615)
.annotate 'line', 211
    .return ($P616)
  control_588:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P617, exception, "payload"
    .return ($P617)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("51_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_621
    .param pmc param_622
.annotate 'line', 219
    .const 'Sub' $P631 = "52_1295307663.343" 
    capture_lex $P631
    new $P620, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P620, control_619
    push_eh $P620
    .lex "self", param_621
    .lex "$/", param_622
.annotate 'line', 220
    new $P623, "Undef"
    .lex "$str", $P623
    new $P624, "String"
    assign $P624, ""
    store_lex "$str", $P624
.annotate 'line', 221
    find_lex $P626, "$/"
    unless_null $P626, vivify_136
    $P626 = root_new ['parrot';'Hash']
  vivify_136:
    set $P627, $P626["charname"]
    unless_null $P627, vivify_137
    new $P627, "Undef"
  vivify_137:
    defined $I628, $P627
    unless $I628, for_undef_138
    iter $P625, $P627
    new $P638, 'ExceptionHandler'
    set_addr $P638, loop637_handler
    $P638."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P638
  loop637_test:
    unless $P625, loop637_done
    shift $P629, $P625
  loop637_redo:
    .const 'Sub' $P631 = "52_1295307663.343" 
    capture_lex $P631
    $P631($P629)
  loop637_next:
    goto loop637_test
  loop637_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P639, exception, 'type'
    eq $P639, .CONTROL_LOOP_NEXT, loop637_next
    eq $P639, .CONTROL_LOOP_REDO, loop637_redo
  loop637_done:
    pop_eh 
  for_undef_138:
.annotate 'line', 222
    find_lex $P640, "$/"
    find_lex $P641, "$str"
    $P642 = $P640."!make"($P641)
.annotate 'line', 219
    .return ($P642)
  control_619:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P643, exception, "payload"
    .return ($P643)
.end


.namespace ["HLL";"Actions"]
.sub "_block630"  :anon :subid("52_1295307663.343") :outer("51_1295307663.343")
    .param pmc param_632
.annotate 'line', 221
    .lex "$_", param_632
    find_lex $P633, "$str"
    find_lex $P634, "$_"
    $S635 = $P634."ast"()
    concat $P636, $P633, $S635
    store_lex "$str", $P636
    .return ($P636)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charspec"  :subid("53_1295307663.343") :outer("11_1295307663.343")
    .param pmc param_647
    .param pmc param_648
.annotate 'line', 225
    new $P646, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P646, control_645
    push_eh $P646
    .lex "self", param_647
    .lex "$/", param_648
.annotate 'line', 226
    find_lex $P649, "$/"
    find_lex $P652, "$/"
    unless_null $P652, vivify_139
    $P652 = root_new ['parrot';'Hash']
  vivify_139:
    set $P653, $P652["charnames"]
    unless_null $P653, vivify_140
    new $P653, "Undef"
  vivify_140:
    if $P653, if_651
    find_lex $P657, "$/"
    $I658 = "string_to_int"($P657, 10)
    chr $S659, $I658
    new $P650, 'String'
    set $P650, $S659
    goto if_651_end
  if_651:
    find_lex $P654, "$/"
    unless_null $P654, vivify_141
    $P654 = root_new ['parrot';'Hash']
  vivify_141:
    set $P655, $P654["charnames"]
    unless_null $P655, vivify_142
    new $P655, "Undef"
  vivify_142:
    $P656 = $P655."ast"()
    set $P650, $P656
  if_651_end:
    $P660 = $P649."!make"($P650)
.annotate 'line', 225
    .return ($P660)
  control_645:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P661, exception, "payload"
    .return ($P661)
.end


.namespace ["HLL";"Actions"]
.sub "_block663" :load :anon :subid("54_1295307663.343")
.annotate 'line', 3
    .const 'Sub' $P665 = "11_1295307663.343" 
    $P666 = $P665()
    .return ($P666)
.end


.namespace []
.sub "_block740" :load :anon :subid("56_1295307663.343")
.annotate 'line', 1
    .const 'Sub' $P742 = "10_1295307663.343" 
    $P743 = $P742()
    .return ($P743)
.end

### .include 'gen/hllcompiler.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1295307668.781")
.annotate 'line', 0
    get_hll_global $P15, ["HLL";"Compiler"], "_block14" 
    capture_lex $P15
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, ["HLL"], "Compiler"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    get_hll_global $P15, ["HLL";"Compiler"], "_block14" 
    capture_lex $P15
    $P1011 = $P15()
.annotate 'line', 1
    .return ($P1011)
    .const 'Sub' $P1013 = "68_1295307668.781" 
    .return ($P1013)
.end


.namespace []
.sub "" :load :init :subid("post69") :outer("10_1295307668.781")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1295307668.781" 
    .local pmc block
    set block, $P12
.annotate 'line', 2
    load_bytecode "Parrot/Exception.pbc"
.end


.namespace ["HLL";"Compiler"]
.sub "_block14"  :subid("11_1295307668.781") :outer("10_1295307668.781")
.annotate 'line', 9
    .const 'Sub' $P901 = "67_1295307668.781" 
    capture_lex $P901
    .const 'Sub' $P890 = "66_1295307668.781" 
    capture_lex $P890
    .const 'Sub' $P884 = "65_1295307668.781" 
    capture_lex $P884
    .const 'Sub' $P877 = "64_1295307668.781" 
    capture_lex $P877
    .const 'Sub' $P844 = "62_1295307668.781" 
    capture_lex $P844
    .const 'Sub' $P836 = "61_1295307668.781" 
    capture_lex $P836
    .const 'Sub' $P823 = "60_1295307668.781" 
    capture_lex $P823
    .const 'Sub' $P794 = "58_1295307668.781" 
    capture_lex $P794
    .const 'Sub' $P782 = "57_1295307668.781" 
    capture_lex $P782
    .const 'Sub' $P771 = "56_1295307668.781" 
    capture_lex $P771
    .const 'Sub' $P760 = "55_1295307668.781" 
    capture_lex $P760
    .const 'Sub' $P753 = "54_1295307668.781" 
    capture_lex $P753
    .const 'Sub' $P746 = "53_1295307668.781" 
    capture_lex $P746
    .const 'Sub' $P739 = "52_1295307668.781" 
    capture_lex $P739
    .const 'Sub' $P731 = "51_1295307668.781" 
    capture_lex $P731
    .const 'Sub' $P701 = "49_1295307668.781" 
    capture_lex $P701
    .const 'Sub' $P694 = "48_1295307668.781" 
    capture_lex $P694
    .const 'Sub' $P678 = "47_1295307668.781" 
    capture_lex $P678
    .const 'Sub' $P662 = "46_1295307668.781" 
    capture_lex $P662
    .const 'Sub' $P646 = "45_1295307668.781" 
    capture_lex $P646
    .const 'Sub' $P630 = "44_1295307668.781" 
    capture_lex $P630
    .const 'Sub' $P614 = "43_1295307668.781" 
    capture_lex $P614
    .const 'Sub' $P598 = "42_1295307668.781" 
    capture_lex $P598
    .const 'Sub' $P582 = "41_1295307668.781" 
    capture_lex $P582
    .const 'Sub' $P566 = "40_1295307668.781" 
    capture_lex $P566
    .const 'Sub' $P558 = "39_1295307668.781" 
    capture_lex $P558
    .const 'Sub' $P551 = "38_1295307668.781" 
    capture_lex $P551
    .const 'Sub' $P508 = "36_1295307668.781" 
    capture_lex $P508
    .const 'Sub' $P358 = "29_1295307668.781" 
    capture_lex $P358
    .const 'Sub' $P342 = "28_1295307668.781" 
    capture_lex $P342
    .const 'Sub' $P246 = "23_1295307668.781" 
    capture_lex $P246
    .const 'Sub' $P210 = "21_1295307668.781" 
    capture_lex $P210
    .const 'Sub' $P192 = "20_1295307668.781" 
    capture_lex $P192
    .const 'Sub' $P174 = "19_1295307668.781" 
    capture_lex $P174
    .const 'Sub' $P84 = "16_1295307668.781" 
    capture_lex $P84
    .const 'Sub' $P44 = "14_1295307668.781" 
    capture_lex $P44
    .const 'Sub' $P34 = "13_1295307668.781" 
    capture_lex $P34
    .const 'Sub' $P17 = "12_1295307668.781" 
    capture_lex $P17
    get_global $P16, "$?CLASS"
.annotate 'line', 64
    .const 'Sub' $P17 = "12_1295307668.781" 
    newclosure $P33, $P17
    .lex "value_type", $P33
.annotate 'line', 29
    find_lex $P83, "value_type"
.annotate 'line', 780
    .const 'Sub' $P890 = "66_1295307668.781" 
    newclosure $P899, $P890
.annotate 'line', 9
    .return ($P899)
.end


.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post70") :outer("11_1295307668.781")
.annotate 'line', 9
    get_hll_global $P15, ["HLL";"Compiler"], "_block14" 
    .local pmc block
    set block, $P15
    .const 'Sub' $P901 = "67_1295307668.781" 
    capture_lex $P901
    $P901()
.end


.namespace ["HLL";"Compiler"]
.sub "_block900"  :anon :subid("67_1295307668.781") :outer("11_1295307668.781")
.annotate 'line', 9
    get_hll_global $P902, "NQPClassHOW"
    $P903 = $P902."new_type"("Compiler" :named("name"))
    .local pmc type_obj
    set type_obj, $P903
    set_hll_global ["HLL"], "Compiler", type_obj
    set_global "$?CLASS", type_obj
    get_how $P904, type_obj
    get_hll_global $P905, "NQPAttribute"
    $P906 = $P905."new"("@!stages" :named("name"))
    $P904."add_attribute"(type_obj, $P906)
    get_how $P907, type_obj
    get_hll_global $P908, "NQPAttribute"
    $P909 = $P908."new"("$!parsegrammar" :named("name"))
    $P907."add_attribute"(type_obj, $P909)
    get_how $P910, type_obj
    get_hll_global $P911, "NQPAttribute"
    $P912 = $P911."new"("$!parseactions" :named("name"))
    $P910."add_attribute"(type_obj, $P912)
    get_how $P913, type_obj
    get_hll_global $P914, "NQPAttribute"
    $P915 = $P914."new"("$!astgrammar" :named("name"))
    $P913."add_attribute"(type_obj, $P915)
    get_how $P916, type_obj
    get_hll_global $P917, "NQPAttribute"
    $P918 = $P917."new"("$!commandline_banner" :named("name"))
    $P916."add_attribute"(type_obj, $P918)
    get_how $P919, type_obj
    get_hll_global $P920, "NQPAttribute"
    $P921 = $P920."new"("$!commandline_prompt" :named("name"))
    $P919."add_attribute"(type_obj, $P921)
    get_how $P922, type_obj
    get_hll_global $P923, "NQPAttribute"
    $P924 = $P923."new"("@!cmdoptions" :named("name"))
    $P922."add_attribute"(type_obj, $P924)
    get_how $P925, type_obj
    get_hll_global $P926, "NQPAttribute"
    $P927 = $P926."new"("$!usage" :named("name"))
    $P925."add_attribute"(type_obj, $P927)
    get_how $P928, type_obj
    get_hll_global $P929, "NQPAttribute"
    $P930 = $P929."new"("$!version" :named("name"))
    $P928."add_attribute"(type_obj, $P930)
    get_how $P931, type_obj
    get_hll_global $P932, "NQPAttribute"
    $P933 = $P932."new"("$!compiler_progname" :named("name"))
    $P931."add_attribute"(type_obj, $P933)
    get_how $P934, type_obj
    get_hll_global $P935, "NQPAttribute"
    $P936 = $P935."new"("$!language" :named("name"))
    $P934."add_attribute"(type_obj, $P936)
    get_how $P937, type_obj
    .const 'Sub' $P938 = "13_1295307668.781" 
    $P937."add_method"(type_obj, "new", $P938)
    get_how $P939, type_obj
    .const 'Sub' $P940 = "14_1295307668.781" 
    $P939."add_method"(type_obj, "BUILD", $P940)
    get_how $P941, type_obj
    .const 'Sub' $P942 = "16_1295307668.781" 
    $P941."add_method"(type_obj, "get_exports", $P942)
    get_how $P943, type_obj
    .const 'Sub' $P944 = "19_1295307668.781" 
    $P943."add_method"(type_obj, "get_module", $P944)
    get_how $P945, type_obj
    .const 'Sub' $P946 = "20_1295307668.781" 
    $P945."add_method"(type_obj, "language", $P946)
    get_how $P947, type_obj
    .const 'Sub' $P948 = "21_1295307668.781" 
    $P947."add_method"(type_obj, "load_module", $P948)
    get_how $P949, type_obj
    .const 'Sub' $P950 = "23_1295307668.781" 
    $P949."add_method"(type_obj, "import", $P950)
    get_how $P951, type_obj
    .const 'Sub' $P952 = "28_1295307668.781" 
    $P951."add_method"(type_obj, "autoprint", $P952)
    get_how $P953, type_obj
    .const 'Sub' $P954 = "29_1295307668.781" 
    $P953."add_method"(type_obj, "interactive", $P954)
    get_how $P955, type_obj
    .const 'Sub' $P956 = "36_1295307668.781" 
    $P955."add_method"(type_obj, "eval", $P956)
    get_how $P957, type_obj
    .const 'Sub' $P958 = "38_1295307668.781" 
    $P957."add_method"(type_obj, "ctxsave", $P958)
    get_how $P959, type_obj
    .const 'Sub' $P960 = "39_1295307668.781" 
    $P959."add_method"(type_obj, "panic", $P960)
    get_how $P961, type_obj
    .const 'Sub' $P962 = "40_1295307668.781" 
    $P961."add_method"(type_obj, "stages", $P962)
    get_how $P963, type_obj
    .const 'Sub' $P964 = "41_1295307668.781" 
    $P963."add_method"(type_obj, "parsegrammar", $P964)
    get_how $P965, type_obj
    .const 'Sub' $P966 = "42_1295307668.781" 
    $P965."add_method"(type_obj, "parseactions", $P966)
    get_how $P967, type_obj
    .const 'Sub' $P968 = "43_1295307668.781" 
    $P967."add_method"(type_obj, "astgrammar", $P968)
    get_how $P969, type_obj
    .const 'Sub' $P970 = "44_1295307668.781" 
    $P969."add_method"(type_obj, "commandline_banner", $P970)
    get_how $P971, type_obj
    .const 'Sub' $P972 = "45_1295307668.781" 
    $P971."add_method"(type_obj, "commandline_prompt", $P972)
    get_how $P973, type_obj
    .const 'Sub' $P974 = "46_1295307668.781" 
    $P973."add_method"(type_obj, "compiler_progname", $P974)
    get_how $P975, type_obj
    .const 'Sub' $P976 = "47_1295307668.781" 
    $P975."add_method"(type_obj, "commandline_options", $P976)
    get_how $P977, type_obj
    .const 'Sub' $P978 = "48_1295307668.781" 
    $P977."add_method"(type_obj, "command_line", $P978)
    get_how $P979, type_obj
    .const 'Sub' $P980 = "49_1295307668.781" 
    $P979."add_method"(type_obj, "process_args", $P980)
    get_how $P981, type_obj
    .const 'Sub' $P982 = "51_1295307668.781" 
    $P981."add_method"(type_obj, "evalfiles", $P982)
    get_how $P983, type_obj
    .const 'Sub' $P984 = "52_1295307668.781" 
    $P983."add_method"(type_obj, "compile", $P984)
    get_how $P985, type_obj
    .const 'Sub' $P986 = "53_1295307668.781" 
    $P985."add_method"(type_obj, "parse", $P986)
    get_how $P987, type_obj
    .const 'Sub' $P988 = "54_1295307668.781" 
    $P987."add_method"(type_obj, "past", $P988)
    get_how $P989, type_obj
    .const 'Sub' $P990 = "55_1295307668.781" 
    $P989."add_method"(type_obj, "post", $P990)
    get_how $P991, type_obj
    .const 'Sub' $P992 = "56_1295307668.781" 
    $P991."add_method"(type_obj, "pir", $P992)
    get_how $P993, type_obj
    .const 'Sub' $P994 = "57_1295307668.781" 
    $P993."add_method"(type_obj, "evalpmc", $P994)
    get_how $P995, type_obj
    .const 'Sub' $P996 = "58_1295307668.781" 
    $P995."add_method"(type_obj, "dumper", $P996)
    get_how $P997, type_obj
    .const 'Sub' $P998 = "60_1295307668.781" 
    $P997."add_method"(type_obj, "usage", $P998)
    get_how $P999, type_obj
    .const 'Sub' $P1000 = "61_1295307668.781" 
    $P999."add_method"(type_obj, "version", $P1000)
    get_how $P1001, type_obj
    .const 'Sub' $P1002 = "62_1295307668.781" 
    $P1001."add_method"(type_obj, "removestage", $P1002)
    get_how $P1003, type_obj
    .const 'Sub' $P1004 = "64_1295307668.781" 
    $P1003."add_method"(type_obj, "addstage", $P1004)
    get_how $P1005, type_obj
    .const 'Sub' $P1006 = "65_1295307668.781" 
    $P1005."add_method"(type_obj, "parse_name", $P1006)
    get_how $P1007, type_obj
    .const 'Sub' $P1008 = "66_1295307668.781" 
    $P1007."add_method"(type_obj, "lineof", $P1008)
    get_how $P1009, type_obj
    $P1010 = $P1009."compose"(type_obj)
    .return ($P1010)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "value_type"  :subid("12_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_20
.annotate 'line', 64
    new $P19, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P19, control_18
    push_eh $P19
    .lex "$value", param_20
.annotate 'line', 65
    find_lex $P23, "$value"
    isa $I24, $P23, "NameSpace"
    if $I24, if_22
.annotate 'line', 67
    find_lex $P28, "$value"
    isa $I29, $P28, "Sub"
    if $I29, if_27
    new $P31, "String"
    assign $P31, "var"
    set $P26, $P31
    goto if_27_end
  if_27:
    new $P30, "String"
    assign $P30, "sub"
    set $P26, $P30
  if_27_end:
    set $P21, $P26
.annotate 'line', 65
    goto if_22_end
  if_22:
    new $P25, "String"
    assign $P25, "namespace"
    set $P21, $P25
  if_22_end:
.annotate 'line', 64
    .return ($P21)
  control_18:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P32, exception, "payload"
    .return ($P32)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "new"  :subid("13_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_37
.annotate 'line', 23
    new $P36, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P36, control_35
    push_eh $P36
    .lex "self", param_37
.annotate 'line', 24
    new $P38, "Undef"
    .lex "$obj", $P38
    find_lex $P39, "self"
    repr_instance_of $P40, $P39
    store_lex "$obj", $P40
.annotate 'line', 25
    find_lex $P41, "$obj"
    $P41."BUILD"()
    find_lex $P42, "$obj"
.annotate 'line', 23
    .return ($P42)
  control_35:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P43, exception, "payload"
    .return ($P43)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("14_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_47
.annotate 'line', 29
    .const 'Sub' $P64 = "15_1295307668.781" 
    capture_lex $P64
    new $P46, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P46, control_45
    push_eh $P46
    .lex "self", param_47
.annotate 'line', 31
    split $P48, " ", "parse past post pir evalpmc"
    find_lex $P49, "self"
    get_global $P50, "$?CLASS"
    setattribute $P49, $P50, "@!stages", $P48
.annotate 'line', 34
    split $P51, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats"
    find_lex $P52, "self"
    get_global $P53, "$?CLASS"
    setattribute $P52, $P53, "@!cmdoptions", $P51
.annotate 'line', 35
    new $P54, "String"
    assign $P54, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P55, "self"
    get_global $P56, "$?CLASS"
    setattribute $P55, $P56, "$!usage", $P54
.annotate 'line', 36
    find_lex $P58, "self"
    get_global $P59, "$?CLASS"
    getattribute $P60, $P58, $P59, "@!cmdoptions"
    unless_null $P60, vivify_71
    $P60 = root_new ['parrot';'ResizablePMCArray']
  vivify_71:
    defined $I61, $P60
    unless $I61, for_undef_72
    iter $P57, $P60
    new $P77, 'ExceptionHandler'
    set_addr $P77, loop76_handler
    $P77."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P77
  loop76_test:
    unless $P57, loop76_done
    shift $P62, $P57
  loop76_redo:
    .const 'Sub' $P64 = "15_1295307668.781" 
    capture_lex $P64
    $P64($P62)
  loop76_next:
    goto loop76_test
  loop76_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P78, exception, 'type'
    eq $P78, .CONTROL_LOOP_NEXT, loop76_next
    eq $P78, .CONTROL_LOOP_REDO, loop76_redo
  loop76_done:
    pop_eh 
  for_undef_72:
.annotate 'line', 41

            .include 'iglobals.pasm'
            .include 'cclass.pasm'
            $S0  = '???'
            push_eh _handler
            $P0 = getinterp
            $P0 = $P0[.IGLOBALS_CONFIG_HASH]
            $S0  = $P0['revision']   # also $I0 = P0['installed'] could be used
          _handler:
            pop_eh
            $P79  = box 'This compiler is built with the Parrot Compiler Toolkit, parrot '
            if $S0 goto _revision_lab
            $P79 .= 'version '
            $S0 = $P0['VERSION']
            goto _is_version
          _revision_lab:
            $P79 .= 'revision '
          _is_version:
            $P79 .= $S0
            $P79 .= '.'
        
    find_lex $P80, "self"
    get_global $P81, "$?CLASS"
    setattribute $P80, $P81, "$!version", $P79
.annotate 'line', 29
    .return ($P79)
  control_45:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P82, exception, "payload"
    .return ($P82)
.end


.namespace ["HLL";"Compiler"]
.sub "_block63"  :anon :subid("15_1295307668.781") :outer("14_1295307668.781")
    .param pmc param_65
.annotate 'line', 36
    .lex "$_", param_65
.annotate 'line', 37
    find_lex $P66, "self"
    get_global $P67, "$?CLASS"
    getattribute $P68, $P66, $P67, "$!usage"
    unless_null $P68, vivify_73
    new $P68, "Undef"
  vivify_73:
    new $P69, 'String'
    set $P69, "    "
    find_lex $P70, "$_"
    concat $P71, $P69, $P70
    concat $P72, $P71, "\n"
    concat $P73, $P68, $P72
    find_lex $P74, "self"
    get_global $P75, "$?CLASS"
    setattribute $P74, $P75, "$!usage", $P73
.annotate 'line', 36
    .return ($P73)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("16_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_87
    .param pmc param_88
    .param pmc param_91 :slurpy
    .param pmc param_89 :optional :named("tagset")
    .param int has_param_89 :opt_flag
.annotate 'line', 70
    .const 'Sub' $P157 = "18_1295307668.781" 
    capture_lex $P157
    .const 'Sub' $P136 = "17_1295307668.781" 
    capture_lex $P136
    new $P86, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P86, control_85
    push_eh $P86
    .lex "self", param_87
    .lex "$module", param_88
    if has_param_89, optparam_74
    new $P90, "Undef"
    set param_89, $P90
  optparam_74:
    .lex "$tagset", param_89
    .lex "@symbols", param_91
.annotate 'line', 77
    $P92 = root_new ['parrot';'Hash']
    .lex "%exports", $P92
.annotate 'line', 78
    $P93 = root_new ['parrot';'Hash']
    .lex "%source", $P93
.annotate 'line', 72
    find_lex $P95, "$module"
    does $I96, $P95, "hash"
    new $P97, 'Integer'
    set $P97, $I96
    isfalse $I98, $P97
    unless $I98, if_94_end
.annotate 'line', 73
    find_lex $P99, "self"
    find_lex $P100, "$module"
    $P101 = $P99."get_module"($P100)
    store_lex "$module", $P101
  if_94_end:
.annotate 'line', 76
    find_lex $P103, "$tagset"
    set $P102, $P103
    defined $I105, $P102
    if $I105, default_104
    find_lex $P108, "@symbols"
    if $P108, if_107
    new $P110, "String"
    assign $P110, "DEFAULT"
    set $P106, $P110
    goto if_107_end
  if_107:
    new $P109, "String"
    assign $P109, "ALL"
    set $P106, $P109
  if_107_end:
    set $P102, $P106
  default_104:
    store_lex "$tagset", $P102
    find_lex $P111, "%exports"
.annotate 'line', 78
    find_lex $P112, "$tagset"
    set $S113, $P112
    find_lex $P114, "$module"
    unless_null $P114, vivify_75
    $P114 = root_new ['parrot';'Hash']
  vivify_75:
    set $P115, $P114["EXPORT"]
    unless_null $P115, vivify_76
    $P115 = root_new ['parrot';'Hash']
  vivify_76:
    set $P116, $P115[$S113]
    unless_null $P116, vivify_77
    new $P116, "Undef"
  vivify_77:
    store_lex "%source", $P116
.annotate 'line', 79
    find_lex $P118, "%source"
    defined $I119, $P118
    new $P120, 'Integer'
    set $P120, $I119
    isfalse $I121, $P120
    unless $I121, if_117_end
.annotate 'line', 80
    find_lex $P124, "$tagset"
    set $S125, $P124
    iseq $I126, $S125, "ALL"
    if $I126, if_123
    $P128 = root_new ['parrot';'Hash']
    set $P122, $P128
    goto if_123_end
  if_123:
    find_lex $P127, "$module"
    set $P122, $P127
  if_123_end:
    store_lex "%source", $P122
  if_117_end:
.annotate 'line', 82
    find_lex $P130, "@symbols"
    if $P130, if_129
.annotate 'line', 89
    find_lex $P153, "%source"
    defined $I154, $P153
    unless $I154, for_undef_78
    iter $P152, $P153
    new $P170, 'ExceptionHandler'
    set_addr $P170, loop169_handler
    $P170."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P170
  loop169_test:
    unless $P152, loop169_done
    shift $P155, $P152
  loop169_redo:
    .const 'Sub' $P157 = "18_1295307668.781" 
    capture_lex $P157
    $P157($P155)
  loop169_next:
    goto loop169_test
  loop169_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P171, exception, 'type'
    eq $P171, .CONTROL_LOOP_NEXT, loop169_next
    eq $P171, .CONTROL_LOOP_REDO, loop169_redo
  loop169_done:
    pop_eh 
  for_undef_78:
.annotate 'line', 88
    goto if_129_end
  if_129:
.annotate 'line', 83
    find_lex $P132, "@symbols"
    defined $I133, $P132
    unless $I133, for_undef_81
    iter $P131, $P132
    new $P150, 'ExceptionHandler'
    set_addr $P150, loop149_handler
    $P150."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P150
  loop149_test:
    unless $P131, loop149_done
    shift $P134, $P131
  loop149_redo:
    .const 'Sub' $P136 = "17_1295307668.781" 
    capture_lex $P136
    $P136($P134)
  loop149_next:
    goto loop149_test
  loop149_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P151, exception, 'type'
    eq $P151, .CONTROL_LOOP_NEXT, loop149_next
    eq $P151, .CONTROL_LOOP_REDO, loop149_redo
  loop149_done:
    pop_eh 
  for_undef_81:
  if_129_end:
.annotate 'line', 82
    find_lex $P172, "%exports"
.annotate 'line', 70
    .return ($P172)
  control_85:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P173, exception, "payload"
    .return ($P173)
.end


.namespace ["HLL";"Compiler"]
.sub "_block156"  :anon :subid("18_1295307668.781") :outer("16_1295307668.781")
    .param pmc param_159
.annotate 'line', 90
    new $P158, "Undef"
    .lex "$value", $P158
    .lex "$_", param_159
    find_lex $P160, "$_"
    $P161 = $P160."value"()
    store_lex "$value", $P161
.annotate 'line', 91
    find_lex $P162, "$value"
    find_lex $P163, "$_"
    $P164 = $P163."key"()
    find_lex $P165, "$value"
    $P166 = "value_type"($P165)
    find_lex $P167, "%exports"
    unless_null $P167, vivify_79
    $P167 = root_new ['parrot';'Hash']
    store_lex "%exports", $P167
  vivify_79:
    set $P168, $P167[$P166]
    unless_null $P168, vivify_80
    $P168 = root_new ['parrot';'Hash']
    set $P167[$P166], $P168
  vivify_80:
    set $P168[$P164], $P162
.annotate 'line', 89
    .return ($P162)
.end


.namespace ["HLL";"Compiler"]
.sub "_block135"  :anon :subid("17_1295307668.781") :outer("16_1295307668.781")
    .param pmc param_138
.annotate 'line', 84
    new $P137, "Undef"
    .lex "$value", $P137
    .lex "$_", param_138
    find_lex $P139, "$_"
    set $S140, $P139
    find_lex $P141, "%source"
    unless_null $P141, vivify_82
    $P141 = root_new ['parrot';'Hash']
  vivify_82:
    set $P142, $P141[$S140]
    unless_null $P142, vivify_83
    new $P142, "Undef"
  vivify_83:
    store_lex "$value", $P142
.annotate 'line', 85
    find_lex $P143, "$value"
    find_lex $P144, "$_"
    find_lex $P145, "$value"
    $P146 = "value_type"($P145)
    find_lex $P147, "%exports"
    unless_null $P147, vivify_84
    $P147 = root_new ['parrot';'Hash']
    store_lex "%exports", $P147
  vivify_84:
    set $P148, $P147[$P146]
    unless_null $P148, vivify_85
    $P148 = root_new ['parrot';'Hash']
    set $P147[$P146], $P148
  vivify_85:
    set $P148[$P144], $P143
.annotate 'line', 83
    .return ($P143)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_module"  :subid("19_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_177
    .param pmc param_178
.annotate 'line', 97
    new $P176, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P176, control_175
    push_eh $P176
    .lex "self", param_177
    .lex "$name", param_178
.annotate 'line', 98
    $P179 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P179
    find_lex $P180, "self"
    find_lex $P181, "$name"
    $P182 = $P180."parse_name"($P181)
    store_lex "@name", $P182
.annotate 'line', 99
    find_lex $P183, "@name"
    find_lex $P184, "self"
    get_global $P185, "$?CLASS"
    getattribute $P186, $P184, $P185, "$!language"
    unless_null $P186, vivify_86
    new $P186, "Undef"
  vivify_86:
    set $S187, $P186
    downcase $S188, $S187
    $P183."unshift"($S188)
.annotate 'line', 100
    find_lex $P189, "@name"
    get_root_namespace $P190, $P189
.annotate 'line', 97
    .return ($P190)
  control_175:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P191, exception, "payload"
    .return ($P191)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "language"  :subid("20_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_195
    .param pmc param_196 :optional
    .param int has_param_196 :opt_flag
.annotate 'line', 103
    new $P194, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P194, control_193
    push_eh $P194
    .lex "self", param_195
    if has_param_196, optparam_87
    new $P197, "Undef"
    set param_196, $P197
  optparam_87:
    .lex "$name", param_196
.annotate 'line', 104
    find_lex $P199, "$name"
    unless $P199, if_198_end
.annotate 'line', 105
    find_lex $P200, "$name"
    find_lex $P201, "self"
    get_global $P202, "$?CLASS"
    setattribute $P201, $P202, "$!language", $P200
.annotate 'line', 106
    find_lex $P203, "$name"
    set $S204, $P203
    find_lex $P205, "self"
    compreg $S204, $P205
  if_198_end:
.annotate 'line', 104
    find_lex $P206, "self"
    get_global $P207, "$?CLASS"
    getattribute $P208, $P206, $P207, "$!language"
    unless_null $P208, vivify_88
    new $P208, "Undef"
  vivify_88:
.annotate 'line', 103
    .return ($P208)
  control_193:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P209, exception, "payload"
    .return ($P209)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "load_module"  :subid("21_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_213
    .param pmc param_214
.annotate 'line', 111
    .const 'Sub' $P224 = "22_1295307668.781" 
    capture_lex $P224
    new $P212, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P212, control_211
    push_eh $P212
    .lex "self", param_213
    .lex "$name", param_214
.annotate 'line', 112
    new $P215, "Undef"
    .lex "$base", $P215
.annotate 'line', 113
    new $P216, "Undef"
    .lex "$loaded", $P216
.annotate 'line', 112
    find_lex $P217, "self"
    find_lex $P218, "$name"
    $P219 = $P217."parse_name"($P218)
    join $S220, "/", $P219
    new $P221, 'String'
    set $P221, $S220
    store_lex "$base", $P221
.annotate 'line', 113
    new $P222, "Integer"
    assign $P222, 0
    store_lex "$loaded", $P222
.annotate 'line', 114
    .const 'Sub' $P224 = "22_1295307668.781" 
    capture_lex $P224
    $P224()
.annotate 'line', 115
    find_lex $P237, "$loaded"
    if $P237, unless_236_end
    find_lex $P238, "$base"
    concat $P239, $P238, ".pir"
    set $S240, $P239
    load_bytecode $S240
    new $P241, "Integer"
    assign $P241, 1
    store_lex "$loaded", $P241
  unless_236_end:
.annotate 'line', 116
    find_lex $P242, "self"
    find_lex $P243, "$name"
    $P244 = $P242."get_module"($P243)
.annotate 'line', 111
    .return ($P244)
  control_211:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P245, exception, "payload"
    .return ($P245)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block223"  :anon :subid("22_1295307668.781") :outer("21_1295307668.781")
.annotate 'line', 114
    new $P231, 'ExceptionHandler'
    set_addr $P231, control_230
    $P231."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P231
    find_lex $P225, "$base"
    concat $P226, $P225, ".pbc"
    set $S227, $P226
    load_bytecode $S227
    new $P228, "Integer"
    assign $P228, 1
    store_lex "$loaded", $P228
    pop_eh 
    goto skip_handler_229
  control_230:
    .local pmc exception 
    .get_results (exception) 
    new $P234, 'Integer'
    set $P234, 1
    set exception["handled"], $P234
    set $I235, exception["handled"]
    ne $I235, 1, nothandled_233
  handled_232:
    .return (exception)
  nothandled_233:
    rethrow exception
  skip_handler_229:
    .return ($P228)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("23_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_249
    .param pmc param_250
    .param pmc param_251
.annotate 'line', 119
    .const 'Sub' $P257 = "24_1295307668.781" 
    capture_lex $P257
    new $P248, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P248, control_247
    push_eh $P248
    .lex "self", param_249
    .lex "$target", param_250
    .lex "%exports", param_251
.annotate 'line', 120
    find_lex $P253, "%exports"
    defined $I254, $P253
    unless $I254, for_undef_89
    iter $P252, $P253
    new $P339, 'ExceptionHandler'
    set_addr $P339, loop338_handler
    $P339."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P339
  loop338_test:
    unless $P252, loop338_done
    shift $P255, $P252
  loop338_redo:
    .const 'Sub' $P257 = "24_1295307668.781" 
    capture_lex $P257
    $P257($P255)
  loop338_next:
    goto loop338_test
  loop338_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P340, exception, 'type'
    eq $P340, .CONTROL_LOOP_NEXT, loop338_next
    eq $P340, .CONTROL_LOOP_REDO, loop338_redo
  loop338_done:
    pop_eh 
  for_undef_89:
.annotate 'line', 119
    .return ($P252)
  control_247:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P341, exception, "payload"
    .return ($P341)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block256"  :anon :subid("24_1295307668.781") :outer("23_1295307668.781")
    .param pmc param_260
.annotate 'line', 120
    .const 'Sub' $P327 = "27_1295307668.781" 
    capture_lex $P327
    .const 'Sub' $P307 = "26_1295307668.781" 
    capture_lex $P307
    .const 'Sub' $P278 = "25_1295307668.781" 
    capture_lex $P278
.annotate 'line', 121
    new $P258, "Undef"
    .lex "$type", $P258
.annotate 'line', 122
    $P259 = root_new ['parrot';'Hash']
    .lex "%items", $P259
    .lex "$_", param_260
.annotate 'line', 121
    find_lex $P261, "$_"
    $P262 = $P261."key"()
    store_lex "$type", $P262
.annotate 'line', 122
    find_lex $P263, "$_"
    $P264 = $P263."value"()
    store_lex "%items", $P264
.annotate 'line', 123
    find_lex $P267, "self"
    new $P268, 'String'
    set $P268, "import_"
    find_lex $P269, "$type"
    concat $P270, $P268, $P269
    set $S271, $P270
    can $I272, $P267, $S271
    if $I272, if_266
.annotate 'line', 126
    find_lex $P296, "$target"
    new $P297, 'String'
    set $P297, "add_"
    find_lex $P298, "$type"
    concat $P299, $P297, $P298
    set $S300, $P299
    can $I301, $P296, $S300
    if $I301, if_295
.annotate 'line', 130
    find_lex $P323, "%items"
    defined $I324, $P323
    unless $I324, for_undef_90
    iter $P322, $P323
    new $P336, 'ExceptionHandler'
    set_addr $P336, loop335_handler
    $P336."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P336
  loop335_test:
    unless $P322, loop335_done
    shift $P325, $P322
  loop335_redo:
    .const 'Sub' $P327 = "27_1295307668.781" 
    capture_lex $P327
    $P327($P325)
  loop335_next:
    goto loop335_test
  loop335_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P337, exception, 'type'
    eq $P337, .CONTROL_LOOP_NEXT, loop335_next
    eq $P337, .CONTROL_LOOP_REDO, loop335_redo
  loop335_done:
    pop_eh 
  for_undef_90:
.annotate 'line', 129
    set $P294, $P322
.annotate 'line', 126
    goto if_295_end
  if_295:
.annotate 'line', 127
    find_lex $P303, "%items"
    defined $I304, $P303
    unless $I304, for_undef_92
    iter $P302, $P303
    new $P320, 'ExceptionHandler'
    set_addr $P320, loop319_handler
    $P320."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P320
  loop319_test:
    unless $P302, loop319_done
    shift $P305, $P302
  loop319_redo:
    .const 'Sub' $P307 = "26_1295307668.781" 
    capture_lex $P307
    $P307($P305)
  loop319_next:
    goto loop319_test
  loop319_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P321, exception, 'type'
    eq $P321, .CONTROL_LOOP_NEXT, loop319_next
    eq $P321, .CONTROL_LOOP_REDO, loop319_redo
  loop319_done:
    pop_eh 
  for_undef_92:
.annotate 'line', 126
    set $P294, $P302
  if_295_end:
    set $P265, $P294
.annotate 'line', 123
    goto if_266_end
  if_266:
.annotate 'line', 124
    find_lex $P274, "%items"
    defined $I275, $P274
    unless $I275, for_undef_93
    iter $P273, $P274
    new $P292, 'ExceptionHandler'
    set_addr $P292, loop291_handler
    $P292."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P292
  loop291_test:
    unless $P273, loop291_done
    shift $P276, $P273
  loop291_redo:
    .const 'Sub' $P278 = "25_1295307668.781" 
    capture_lex $P278
    $P278($P276)
  loop291_next:
    goto loop291_test
  loop291_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P293, exception, 'type'
    eq $P293, .CONTROL_LOOP_NEXT, loop291_next
    eq $P293, .CONTROL_LOOP_REDO, loop291_redo
  loop291_done:
    pop_eh 
  for_undef_93:
.annotate 'line', 123
    set $P265, $P273
  if_266_end:
.annotate 'line', 120
    .return ($P265)
.end


.namespace ["HLL";"Compiler"]
.sub "_block326"  :anon :subid("27_1295307668.781") :outer("24_1295307668.781")
    .param pmc param_328
.annotate 'line', 130
    .lex "$_", param_328
    find_lex $P329, "$_"
    $P330 = $P329."value"()
    find_lex $P331, "$_"
    $P332 = $P331."key"()
    set $S333, $P332
    find_lex $P334, "$target"
    unless_null $P334, vivify_91
    $P334 = root_new ['parrot';'Hash']
    store_lex "$target", $P334
  vivify_91:
    set $P334[$S333], $P330
    .return ($P330)
.end


.namespace ["HLL";"Compiler"]
.sub "_block306"  :anon :subid("26_1295307668.781") :outer("24_1295307668.781")
    .param pmc param_308
.annotate 'line', 127
    .lex "$_", param_308
    find_lex $P309, "$target"
    find_lex $P310, "$_"
    $P311 = $P310."key"()
    find_lex $P312, "$_"
    $P313 = $P312."value"()
    new $P314, 'String'
    set $P314, "add_"
    find_lex $P315, "$type"
    concat $P316, $P314, $P315
    set $S317, $P316
    $P318 = $P309.$S317($P311, $P313)
    .return ($P318)
.end


.namespace ["HLL";"Compiler"]
.sub "_block277"  :anon :subid("25_1295307668.781") :outer("24_1295307668.781")
    .param pmc param_279
.annotate 'line', 124
    .lex "$_", param_279
    find_lex $P280, "self"
    find_lex $P281, "$target"
    find_lex $P282, "$_"
    $P283 = $P282."key"()
    find_lex $P284, "$_"
    $P285 = $P284."value"()
    new $P286, 'String'
    set $P286, "import_"
    find_lex $P287, "$type"
    concat $P288, $P286, $P287
    set $S289, $P288
    $P290 = $P280.$S289($P281, $P283, $P285)
    .return ($P290)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "autoprint"  :subid("28_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_345
    .param pmc param_346
.annotate 'line', 135
    new $P344, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P344, control_343
    push_eh $P344
    .lex "self", param_345
    .lex "$value", param_346
.annotate 'line', 137
    getinterp $P349
    $P350 = $P349."stdout_handle"()
    $N351 = $P350."tell"()
    find_dynamic_lex $P352, "$*AUTOPRINTPOS"
    unless_null $P352, vivify_94
    get_hll_global $P352, "$AUTOPRINTPOS"
    unless_null $P352, vivify_95
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_95:
  vivify_94:
    set $N353, $P352
    isgt $I354, $N351, $N353
    unless $I354, unless_348
    new $P347, 'Integer'
    set $P347, $I354
    goto unless_348_end
  unless_348:
.annotate 'line', 136
    find_lex $P355, "$value"
    set $S356, $P355
    say $S356
  unless_348_end:
.annotate 'line', 135
    .return ($P347)
  control_343:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P357, exception, "payload"
    .return ($P357)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("29_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_361
    .param pmc param_362 :slurpy :named
.annotate 'line', 140
    .const 'Sub' $P394 = "30_1295307668.781" 
    capture_lex $P394
    new $P360, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P360, control_359
    push_eh $P360
    .lex "self", param_361
    .lex "%adverbs", param_362
.annotate 'line', 141
    new $P363, "Undef"
    .lex "$target", $P363
.annotate 'line', 145
    new $P364, "Undef"
    .lex "$stdin", $P364
.annotate 'line', 146
    new $P365, "Undef"
    .lex "$encoding", $P365
.annotate 'line', 151
    new $P366, "Undef"
    .lex "$save_ctx", $P366
.annotate 'line', 141
    find_lex $P367, "%adverbs"
    unless_null $P367, vivify_96
    $P367 = root_new ['parrot';'Hash']
  vivify_96:
    set $P368, $P367["target"]
    unless_null $P368, vivify_97
    new $P368, "Undef"
  vivify_97:
    set $S369, $P368
    downcase $S370, $S369
    new $P371, 'String'
    set $P371, $S370
    store_lex "$target", $P371
.annotate 'line', 143
    getinterp $P372
    $P373 = $P372."stderr_handle"()
    find_lex $P374, "self"
    $S375 = $P374."commandline_banner"()
    print $P373, $S375
.annotate 'line', 145
    getinterp $P376
    $P377 = $P376."stdin_handle"()
    store_lex "$stdin", $P377
.annotate 'line', 146
    find_lex $P378, "%adverbs"
    unless_null $P378, vivify_98
    $P378 = root_new ['parrot';'Hash']
  vivify_98:
    set $P379, $P378["encoding"]
    unless_null $P379, vivify_99
    new $P379, "Undef"
  vivify_99:
    set $S380, $P379
    new $P381, 'String'
    set $P381, $S380
    store_lex "$encoding", $P381
.annotate 'line', 147
    find_lex $P385, "$encoding"
    if $P385, if_384
    set $P383, $P385
    goto if_384_end
  if_384:
    find_lex $P386, "$encoding"
    set $S387, $P386
    isne $I388, $S387, "fixed_8"
    new $P383, 'Integer'
    set $P383, $I388
  if_384_end:
    unless $P383, if_382_end
.annotate 'line', 148
    find_lex $P389, "$stdin"
    find_lex $P390, "$encoding"
    $P389."encoding"($P390)
  if_382_end:
.annotate 'line', 147
    find_lex $P391, "$save_ctx"
.annotate 'line', 152
    new $P505, 'ExceptionHandler'
    set_addr $P505, loop504_handler
    $P505."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P505
  loop504_test:
    new $P392, "Integer"
    assign $P392, 1
    unless $P392, loop504_done
  loop504_redo:
    .const 'Sub' $P394 = "30_1295307668.781" 
    capture_lex $P394
    $P394()
  loop504_next:
    goto loop504_test
  loop504_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P506, exception, 'type'
    eq $P506, .CONTROL_LOOP_NEXT, loop504_next
    eq $P506, .CONTROL_LOOP_REDO, loop504_redo
  loop504_done:
    pop_eh 
.annotate 'line', 140
    .return ($P392)
  control_359:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P507, exception, "payload"
    .return ($P507)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block393"  :anon :subid("30_1295307668.781") :outer("29_1295307668.781")
.annotate 'line', 152
    .const 'Sub' $P426 = "31_1295307668.781" 
    capture_lex $P426
.annotate 'line', 155
    new $P395, "Undef"
    .lex "$prompt", $P395
.annotate 'line', 156
    new $P396, "Undef"
    .lex "$code", $P396
.annotate 'line', 161
    new $P397, "Undef"
    .lex "$*AUTOPRINTPOS", $P397
.annotate 'line', 162
    new $P398, "Undef"
    .lex "$*CTXSAVE", $P398
.annotate 'line', 163
    new $P399, "Undef"
    .lex "$*MAIN_CTX", $P399
.annotate 'line', 153
    find_lex $P401, "$stdin"
    if $P401, unless_400_end
    set $I402, .CONTROL_LOOP_LAST
    die 0, $I402
  unless_400_end:
.annotate 'line', 155
    find_lex $P404, "self"
    $P405 = $P404."commandline_prompt"()
    set $P403, $P405
    defined $I407, $P403
    if $I407, default_406
    new $P408, "String"
    assign $P408, "> "
    set $P403, $P408
  default_406:
    store_lex "$prompt", $P403
.annotate 'line', 156
    find_lex $P409, "$stdin"
    find_lex $P410, "$prompt"
    set $S411, $P410
    $P412 = $P409."readline_interactive"($S411)
    store_lex "$code", $P412
.annotate 'line', 158
    find_lex $P414, "$code"
    isnull $I415, $P414
    unless $I415, if_413_end
    set $I416, .CONTROL_LOOP_LAST
    die 0, $I416
  if_413_end:
.annotate 'line', 161
    getinterp $P417
    $P418 = $P417."stdout_handle"()
    $P419 = $P418."tell"()
    store_lex "$*AUTOPRINTPOS", $P419
.annotate 'line', 162
    find_lex $P420, "self"
    store_lex "$*CTXSAVE", $P420
    find_lex $P421, "$*MAIN_CTX"
    unless_null $P421, vivify_100
    get_hll_global $P421, "$MAIN_CTX"
    unless_null $P421, vivify_101
    die "Contextual $*MAIN_CTX not found"
  vivify_101:
  vivify_100:
.annotate 'line', 165
    find_lex $P424, "$code"
    if $P424, if_423
    set $P422, $P424
    goto if_423_end
  if_423:
    .const 'Sub' $P426 = "31_1295307668.781" 
    capture_lex $P426
    $P503 = $P426()
    set $P422, $P503
  if_423_end:
.annotate 'line', 152
    .return ($P422)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block425"  :anon :subid("31_1295307668.781") :outer("30_1295307668.781")
.annotate 'line', 165
    .const 'Sub' $P459 = "34_1295307668.781" 
    capture_lex $P459
    .const 'Sub' $P432 = "32_1295307668.781" 
    capture_lex $P432
.annotate 'line', 167
    new $P427, "Undef"
    .lex "$output", $P427
.annotate 'line', 166
    find_lex $P428, "$code"
    concat $P429, $P428, "\n"
    store_lex "$code", $P429
    find_lex $P430, "$output"
.annotate 'line', 168
    .const 'Sub' $P432 = "32_1295307668.781" 
    capture_lex $P432
    $P432()
.annotate 'line', 175
    find_dynamic_lex $P456, "$*MAIN_CTX"
    unless_null $P456, vivify_102
    get_hll_global $P456, "$MAIN_CTX"
    unless_null $P456, vivify_103
    die "Contextual $*MAIN_CTX not found"
  vivify_103:
  vivify_102:
    defined $I457, $P456
    unless $I457, if_455_end
    .const 'Sub' $P459 = "34_1295307668.781" 
    capture_lex $P459
    $P459()
  if_455_end:
.annotate 'line', 183
    find_lex $P482, "$output"
    isnull $I483, $P482
    unless $I483, if_481_end
    set $I484, .CONTROL_LOOP_NEXT
    die 0, $I484
  if_481_end:
.annotate 'line', 185
    find_lex $P487, "$target"
    isfalse $I488, $P487
    if $I488, if_486
.annotate 'line', 187
    find_lex $P494, "$target"
    set $S495, $P494
    iseq $I496, $S495, "pir"
    if $I496, if_493
.annotate 'line', 190
    find_lex $P498, "self"
    find_lex $P499, "$output"
    find_lex $P500, "$target"
    find_lex $P501, "%adverbs"
    $P502 = $P498."dumper"($P499, $P500, $P501 :flat)
.annotate 'line', 189
    set $P492, $P502
.annotate 'line', 187
    goto if_493_end
  if_493:
.annotate 'line', 188
    find_lex $P497, "$output"
    say $P497
  if_493_end:
.annotate 'line', 187
    set $P485, $P492
.annotate 'line', 185
    goto if_486_end
  if_486:
.annotate 'line', 186
    find_lex $P489, "self"
    find_lex $P490, "$output"
    $P491 = $P489."autoprint"($P490)
.annotate 'line', 185
    set $P485, $P491
  if_486_end:
.annotate 'line', 165
    .return ($P485)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block431"  :anon :subid("32_1295307668.781") :outer("31_1295307668.781")
.annotate 'line', 168
    .const 'Sub' $P444 = "33_1295307668.781" 
    capture_lex $P444
    new $P440, 'ExceptionHandler'
    set_addr $P440, control_439
    $P440."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P440
.annotate 'line', 169
    find_lex $P433, "self"
    find_lex $P434, "$code"
    find_lex $P435, "$save_ctx"
    find_lex $P436, "%adverbs"
    $P437 = $P433."eval"($P434, $P436 :flat, $P435 :named("outer_ctx"))
    store_lex "$output", $P437
.annotate 'line', 168
    pop_eh 
    goto skip_handler_438
  control_439:
.annotate 'line', 170
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P444 = "33_1295307668.781" 
    newclosure $P452, $P444
    $P452(exception)
    new $P453, 'Integer'
    set $P453, 1
    set exception["handled"], $P453
    set $I454, exception["handled"]
    ne $I454, 1, nothandled_442
  handled_441:
    .return (exception)
  nothandled_442:
    rethrow exception
  skip_handler_438:
.annotate 'line', 168
    .return ()
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block443"  :anon :subid("33_1295307668.781") :outer("32_1295307668.781")
    .param pmc param_445
.annotate 'line', 170
    .lex "$_", param_445
    find_lex $P446, "$_"
    .lex "$!", $P446
.annotate 'line', 171
    find_lex $P447, "$!"
    set $S448, $P447
    new $P449, 'String'
    set $P449, $S448
    concat $P450, $P449, "\n"
    print $P450
.annotate 'line', 172
    set $I451, .CONTROL_LOOP_NEXT
    die 0, $I451
.annotate 'line', 170
    .return ()
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block458"  :anon :subid("34_1295307668.781") :outer("31_1295307668.781")
.annotate 'line', 175
    .const 'Sub' $P470 = "35_1295307668.781" 
    capture_lex $P470
.annotate 'line', 176
    get_global $P460, "$interactive_ctx"
    unless_null $P460, vivify_104
    new $P460, "Undef"
    set_global "$interactive_ctx", $P460
  vivify_104:
.annotate 'line', 177
    get_global $P461, "%interactive_pad"
    unless_null $P461, vivify_105
    $P461 = root_new ['parrot';'Hash']
    set_global "%interactive_pad", $P461
  vivify_105:
.annotate 'line', 175
    get_global $P462, "$interactive_ctx"
    get_global $P463, "%interactive_pad"
.annotate 'line', 178
    find_dynamic_lex $P465, "$*MAIN_CTX"
    unless_null $P465, vivify_106
    get_hll_global $P465, "$MAIN_CTX"
    unless_null $P465, vivify_107
    die "Contextual $*MAIN_CTX not found"
  vivify_107:
  vivify_106:
    $P466 = $P465."lexpad_full"()
    defined $I467, $P466
    unless $I467, for_undef_108
    iter $P464, $P466
    new $P478, 'ExceptionHandler'
    set_addr $P478, loop477_handler
    $P478."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P478
  loop477_test:
    unless $P464, loop477_done
    shift $P468, $P464
  loop477_redo:
    .const 'Sub' $P470 = "35_1295307668.781" 
    capture_lex $P470
    $P470($P468)
  loop477_next:
    goto loop477_test
  loop477_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P479, exception, 'type'
    eq $P479, .CONTROL_LOOP_NEXT, loop477_next
    eq $P479, .CONTROL_LOOP_REDO, loop477_redo
  loop477_done:
    pop_eh 
  for_undef_108:
.annotate 'line', 181
    get_global $P480, "$interactive_ctx"
    store_lex "$save_ctx", $P480
.annotate 'line', 175
    .return ($P480)
.end


.namespace ["HLL";"Compiler"]
.sub "_block469"  :anon :subid("35_1295307668.781") :outer("34_1295307668.781")
    .param pmc param_471
.annotate 'line', 178
    .lex "$_", param_471
.annotate 'line', 179
    find_lex $P472, "$_"
    $P473 = $P472."value"()
    find_lex $P474, "$_"
    $P475 = $P474."key"()
    get_global $P476, "%interactive_pad"
    unless_null $P476, vivify_109
    $P476 = root_new ['parrot';'Hash']
    set_global "%interactive_pad", $P476
  vivify_109:
    set $P476[$P475], $P473
.annotate 'line', 178
    .return ($P473)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "eval"  :subid("36_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_511
    .param pmc param_512
    .param pmc param_513 :slurpy
    .param pmc param_514 :slurpy :named
.annotate 'line', 196
    .const 'Sub' $P533 = "37_1295307668.781" 
    capture_lex $P533
    new $P510, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P510, control_509
    push_eh $P510
    .lex "self", param_511
    .lex "$code", param_512
    .lex "@args", param_513
    .lex "%adverbs", param_514
.annotate 'line', 197
    new $P515, "Undef"
    .lex "$output", $P515
.annotate 'line', 196
    find_lex $P516, "$output"
.annotate 'line', 198
    find_lex $P517, "self"
    find_lex $P518, "$code"
    find_lex $P519, "%adverbs"
    $P520 = $P517."compile"($P518, $P519 :flat)
    store_lex "$output", $P520
.annotate 'line', 200
    find_lex $P524, "$output"
    isa $I525, $P524, "String"
    new $P526, 'Integer'
    set $P526, $I525
    isfalse $I527, $P526
    if $I527, if_523
    new $P522, 'Integer'
    set $P522, $I527
    goto if_523_end
  if_523:
.annotate 'line', 201
    find_lex $P528, "%adverbs"
    unless_null $P528, vivify_110
    $P528 = root_new ['parrot';'Hash']
  vivify_110:
    set $P529, $P528["target"]
    unless_null $P529, vivify_111
    new $P529, "Undef"
  vivify_111:
    set $S530, $P529
    iseq $I531, $S530, ""
    new $P522, 'Integer'
    set $P522, $I531
  if_523_end:
    unless $P522, if_521_end
    .const 'Sub' $P533 = "37_1295307668.781" 
    capture_lex $P533
    $P533()
  if_521_end:
.annotate 'line', 200
    find_lex $P549, "$output"
.annotate 'line', 196
    .return ($P549)
  control_509:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P550, exception, "payload"
    .return ($P550)
.end


.namespace ["HLL";"Compiler"]
.sub "_block532"  :anon :subid("37_1295307668.781") :outer("36_1295307668.781")
.annotate 'line', 202
    new $P534, "Undef"
    .lex "$outer_ctx", $P534
    find_lex $P535, "%adverbs"
    unless_null $P535, vivify_112
    $P535 = root_new ['parrot';'Hash']
  vivify_112:
    set $P536, $P535["outer_ctx"]
    unless_null $P536, vivify_113
    new $P536, "Undef"
  vivify_113:
    store_lex "$outer_ctx", $P536
.annotate 'line', 203
    find_lex $P538, "$outer_ctx"
    defined $I539, $P538
    unless $I539, if_537_end
.annotate 'line', 204
    find_lex $P540, "$output"
    unless_null $P540, vivify_114
    $P540 = root_new ['parrot';'ResizablePMCArray']
  vivify_114:
    set $P541, $P540[0]
    unless_null $P541, vivify_115
    new $P541, "Undef"
  vivify_115:
    find_lex $P542, "$outer_ctx"
    $P541."set_outer_ctx"($P542)
  if_537_end:
.annotate 'line', 207
    find_lex $P543, "%adverbs"
    unless_null $P543, vivify_116
    $P543 = root_new ['parrot';'Hash']
  vivify_116:
    set $P544, $P543["trace"]
    unless_null $P544, vivify_117
    new $P544, "Undef"
  vivify_117:
    set $I545, $P544
    trace $I545
.annotate 'line', 208
    find_lex $P546, "$output"
    find_lex $P547, "@args"
    $P548 = $P546($P547 :flat)
    store_lex "$output", $P548
.annotate 'line', 209
    trace 0
.annotate 'line', 201
    .return ()
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "ctxsave"  :subid("38_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_554
.annotate 'line', 215
    new $P553, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P553, control_552
    push_eh $P553
    .lex "self", param_554
.annotate 'line', 217

                $P0 = getinterp
                $P555 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P555
.annotate 'line', 221
    new $P556, "Integer"
    assign $P556, 0
    store_dynamic_lex "$*CTXSAVE", $P556
.annotate 'line', 215
    .return ($P556)
  control_552:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P557, exception, "payload"
    .return ($P557)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "panic"  :subid("39_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_561
    .param pmc param_562 :slurpy
.annotate 'line', 224
    new $P560, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P560, control_559
    push_eh $P560
    .lex "self", param_561
    .lex "@args", param_562
.annotate 'line', 225
    find_lex $P563, "@args"
    join $S564, "", $P563
    die $S564
.annotate 'line', 224
    .return ()
  control_559:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P565, exception, "payload"
    .return ($P565)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "stages"  :subid("40_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_569
    .param pmc param_570 :optional
    .param int has_param_570 :opt_flag
.annotate 'line', 228
    new $P568, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P568, control_567
    push_eh $P568
    .lex "self", param_569
    if has_param_570, optparam_118
    $P571 = root_new ['parrot';'ResizablePMCArray']
    set param_570, $P571
  optparam_118:
    .lex "@value", param_570
.annotate 'line', 229
    find_lex $P573, "@value"
    set $N574, $P573
    unless $N574, if_572_end
.annotate 'line', 230
    find_lex $P575, "@value"
    find_lex $P576, "self"
    get_global $P577, "$?CLASS"
    setattribute $P576, $P577, "@!stages", $P575
  if_572_end:
.annotate 'line', 229
    find_lex $P578, "self"
    get_global $P579, "$?CLASS"
    getattribute $P580, $P578, $P579, "@!stages"
    unless_null $P580, vivify_119
    $P580 = root_new ['parrot';'ResizablePMCArray']
  vivify_119:
.annotate 'line', 228
    .return ($P580)
  control_567:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P581, exception, "payload"
    .return ($P581)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parsegrammar"  :subid("41_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_585
    .param pmc param_586 :slurpy
.annotate 'line', 235
    new $P584, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P584, control_583
    push_eh $P584
    .lex "self", param_585
    .lex "@value", param_586
.annotate 'line', 236
    find_lex $P588, "@value"
    set $N589, $P588
    unless $N589, if_587_end
.annotate 'line', 237
    find_lex $P590, "@value"
    unless_null $P590, vivify_120
    $P590 = root_new ['parrot';'ResizablePMCArray']
  vivify_120:
    set $P591, $P590[0]
    unless_null $P591, vivify_121
    new $P591, "Undef"
  vivify_121:
    find_lex $P592, "self"
    get_global $P593, "$?CLASS"
    setattribute $P592, $P593, "$!parsegrammar", $P591
  if_587_end:
.annotate 'line', 236
    find_lex $P594, "self"
    get_global $P595, "$?CLASS"
    getattribute $P596, $P594, $P595, "$!parsegrammar"
    unless_null $P596, vivify_122
    new $P596, "Undef"
  vivify_122:
.annotate 'line', 235
    .return ($P596)
  control_583:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P597, exception, "payload"
    .return ($P597)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parseactions"  :subid("42_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_601
    .param pmc param_602 :slurpy
.annotate 'line', 242
    new $P600, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P600, control_599
    push_eh $P600
    .lex "self", param_601
    .lex "@value", param_602
.annotate 'line', 243
    find_lex $P604, "@value"
    set $N605, $P604
    unless $N605, if_603_end
.annotate 'line', 244
    find_lex $P606, "@value"
    unless_null $P606, vivify_123
    $P606 = root_new ['parrot';'ResizablePMCArray']
  vivify_123:
    set $P607, $P606[0]
    unless_null $P607, vivify_124
    new $P607, "Undef"
  vivify_124:
    find_lex $P608, "self"
    get_global $P609, "$?CLASS"
    setattribute $P608, $P609, "$!parseactions", $P607
  if_603_end:
.annotate 'line', 243
    find_lex $P610, "self"
    get_global $P611, "$?CLASS"
    getattribute $P612, $P610, $P611, "$!parseactions"
    unless_null $P612, vivify_125
    new $P612, "Undef"
  vivify_125:
.annotate 'line', 242
    .return ($P612)
  control_599:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P613, exception, "payload"
    .return ($P613)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "astgrammar"  :subid("43_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_617
    .param pmc param_618 :slurpy
.annotate 'line', 249
    new $P616, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P616, control_615
    push_eh $P616
    .lex "self", param_617
    .lex "@value", param_618
.annotate 'line', 250
    find_lex $P620, "@value"
    set $N621, $P620
    unless $N621, if_619_end
.annotate 'line', 251
    find_lex $P622, "@value"
    unless_null $P622, vivify_126
    $P622 = root_new ['parrot';'ResizablePMCArray']
  vivify_126:
    set $P623, $P622[0]
    unless_null $P623, vivify_127
    new $P623, "Undef"
  vivify_127:
    find_lex $P624, "self"
    get_global $P625, "$?CLASS"
    setattribute $P624, $P625, "$!astgrammar", $P623
  if_619_end:
.annotate 'line', 250
    find_lex $P626, "self"
    get_global $P627, "$?CLASS"
    getattribute $P628, $P626, $P627, "$!astgrammar"
    unless_null $P628, vivify_128
    new $P628, "Undef"
  vivify_128:
.annotate 'line', 249
    .return ($P628)
  control_615:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P629, exception, "payload"
    .return ($P629)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "commandline_banner"  :subid("44_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_633
    .param pmc param_634 :optional
    .param int has_param_634 :opt_flag
.annotate 'line', 256
    new $P632, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P632, control_631
    push_eh $P632
    .lex "self", param_633
    if has_param_634, optparam_129
    new $P635, "Undef"
    set param_634, $P635
  optparam_129:
    .lex "$value", param_634
.annotate 'line', 257
    find_lex $P637, "$value"
    defined $I638, $P637
    unless $I638, if_636_end
.annotate 'line', 258
    find_lex $P639, "$value"
    find_lex $P640, "self"
    get_global $P641, "$?CLASS"
    setattribute $P640, $P641, "$!commandline_banner", $P639
  if_636_end:
.annotate 'line', 257
    find_lex $P642, "self"
    get_global $P643, "$?CLASS"
    getattribute $P644, $P642, $P643, "$!commandline_banner"
    unless_null $P644, vivify_130
    new $P644, "Undef"
  vivify_130:
.annotate 'line', 256
    .return ($P644)
  control_631:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P645, exception, "payload"
    .return ($P645)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "commandline_prompt"  :subid("45_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_649
    .param pmc param_650 :optional
    .param int has_param_650 :opt_flag
.annotate 'line', 263
    new $P648, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P648, control_647
    push_eh $P648
    .lex "self", param_649
    if has_param_650, optparam_131
    new $P651, "Undef"
    set param_650, $P651
  optparam_131:
    .lex "$value", param_650
.annotate 'line', 264
    find_lex $P653, "$value"
    defined $I654, $P653
    unless $I654, if_652_end
.annotate 'line', 265
    find_lex $P655, "$value"
    find_lex $P656, "self"
    get_global $P657, "$?CLASS"
    setattribute $P656, $P657, "$!commandline_prompt", $P655
  if_652_end:
.annotate 'line', 264
    find_lex $P658, "self"
    get_global $P659, "$?CLASS"
    getattribute $P660, $P658, $P659, "$!commandline_prompt"
    unless_null $P660, vivify_132
    new $P660, "Undef"
  vivify_132:
.annotate 'line', 263
    .return ($P660)
  control_647:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P661, exception, "payload"
    .return ($P661)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compiler_progname"  :subid("46_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_665
    .param pmc param_666 :optional
    .param int has_param_666 :opt_flag
.annotate 'line', 270
    new $P664, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P664, control_663
    push_eh $P664
    .lex "self", param_665
    if has_param_666, optparam_133
    new $P667, "Undef"
    set param_666, $P667
  optparam_133:
    .lex "$value", param_666
.annotate 'line', 271
    find_lex $P669, "$value"
    defined $I670, $P669
    unless $I670, if_668_end
.annotate 'line', 272
    find_lex $P671, "$value"
    find_lex $P672, "self"
    get_global $P673, "$?CLASS"
    setattribute $P672, $P673, "$!compiler_progname", $P671
  if_668_end:
.annotate 'line', 271
    find_lex $P674, "self"
    get_global $P675, "$?CLASS"
    getattribute $P676, $P674, $P675, "$!compiler_progname"
    unless_null $P676, vivify_134
    new $P676, "Undef"
  vivify_134:
.annotate 'line', 270
    .return ($P676)
  control_663:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P677, exception, "payload"
    .return ($P677)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "commandline_options"  :subid("47_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_681
    .param pmc param_682 :optional
    .param int has_param_682 :opt_flag
.annotate 'line', 277
    new $P680, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P680, control_679
    push_eh $P680
    .lex "self", param_681
    if has_param_682, optparam_135
    $P683 = root_new ['parrot';'ResizablePMCArray']
    set param_682, $P683
  optparam_135:
    .lex "@value", param_682
.annotate 'line', 278
    find_lex $P685, "@value"
    set $N686, $P685
    unless $N686, if_684_end
.annotate 'line', 279
    find_lex $P687, "@value"
    find_lex $P688, "self"
    get_global $P689, "$?CLASS"
    setattribute $P688, $P689, "@!cmdoptions", $P687
  if_684_end:
.annotate 'line', 278
    find_lex $P690, "self"
    get_global $P691, "$?CLASS"
    getattribute $P692, $P690, $P691, "@!cmdoptions"
    unless_null $P692, vivify_136
    $P692 = root_new ['parrot';'ResizablePMCArray']
  vivify_136:
.annotate 'line', 277
    .return ($P692)
  control_679:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P693, exception, "payload"
    .return ($P693)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("48_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_697
    .param pmc param_698
    .param pmc param_699 :slurpy :named
.annotate 'line', 284
    new $P696, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P696, control_695
    push_eh $P696
    .lex "self", param_697
    .lex "@args", param_698
    .lex "%adverbs", param_699
.annotate 'line', 285

            .include 'except_severity.pasm'
            .local pmc args, adverbs, self
            args = find_lex '@args'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

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
        
.annotate 'line', 284
    .return ()
  control_695:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P700, exception, "payload"
    .return ($P700)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "process_args"  :subid("49_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_704
    .param pmc param_705
.annotate 'line', 420
    .const 'Sub' $P719 = "50_1295307668.781" 
    capture_lex $P719
    new $P703, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P703, control_702
    push_eh $P703
    .lex "self", param_704
    .lex "@args", param_705
.annotate 'line', 426
    new $P706, "Undef"
    .lex "$getopts", $P706
.annotate 'line', 422
    find_lex $P707, "self"
    find_lex $P708, "@args"
    $P709 = $P708."shift"()
    $P707."compiler_progname"($P709)
.annotate 'line', 425
    load_bytecode "Getopt/Obj.pbc"
.annotate 'line', 426
 $P710 = new ['Getopt';'Obj'] 
    store_lex "$getopts", $P710
.annotate 'line', 427
    find_lex $P711, "$getopts"
    $P711."notOptStop"(1)
.annotate 'line', 428
    find_lex $P713, "self"
    get_global $P714, "$?CLASS"
    getattribute $P715, $P713, $P714, "@!cmdoptions"
    unless_null $P715, vivify_137
    $P715 = root_new ['parrot';'ResizablePMCArray']
  vivify_137:
    defined $I716, $P715
    unless $I716, for_undef_138
    iter $P712, $P715
    new $P725, 'ExceptionHandler'
    set_addr $P725, loop724_handler
    $P725."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P725
  loop724_test:
    unless $P712, loop724_done
    shift $P717, $P712
  loop724_redo:
    .const 'Sub' $P719 = "50_1295307668.781" 
    capture_lex $P719
    $P719($P717)
  loop724_next:
    goto loop724_test
  loop724_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P726, exception, 'type'
    eq $P726, .CONTROL_LOOP_NEXT, loop724_next
    eq $P726, .CONTROL_LOOP_REDO, loop724_redo
  loop724_done:
    pop_eh 
  for_undef_138:
.annotate 'line', 431
    find_lex $P727, "$getopts"
    find_lex $P728, "@args"
    $P729 = $P727."get_options"($P728)
.annotate 'line', 420
    .return ($P729)
  control_702:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P730, exception, "payload"
    .return ($P730)
.end


.namespace ["HLL";"Compiler"]
.sub "_block718"  :anon :subid("50_1295307668.781") :outer("49_1295307668.781")
    .param pmc param_720
.annotate 'line', 428
    .lex "$_", param_720
.annotate 'line', 429
    find_lex $P721, "$getopts"
    find_lex $P722, "$_"
    set $S723, $P722
    push $P721, $S723
.annotate 'line', 428
    .return ()
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("51_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_734
    .param pmc param_735
    .param pmc param_736 :slurpy
    .param pmc param_737 :slurpy :named
.annotate 'line', 434
    new $P733, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P733, control_732
    push_eh $P733
    .lex "self", param_734
    .lex "@files", param_735
    .lex "@args", param_736
    .lex "%adverbs", param_737
.annotate 'line', 435

            .local pmc files, args, adverbs, self
            files = find_lex '@files'
            args = find_lex '@args'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

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
        
.annotate 'line', 434
    .return ()
  control_732:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P738, exception, "payload"
    .return ($P738)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("52_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_742
    .param pmc param_743
    .param pmc param_744 :slurpy :named
.annotate 'line', 489
    new $P741, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P741, control_740
    push_eh $P741
    .lex "self", param_742
    .lex "$source", param_743
    .lex "%adverbs", param_744
.annotate 'line', 490

            .local pmc source, adverbs, self
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

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
        
.annotate 'line', 489
    .return ()
  control_740:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P745, exception, "payload"
    .return ($P745)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse"  :subid("53_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_749
    .param pmc param_750
    .param pmc param_751 :slurpy :named
.annotate 'line', 547
    new $P748, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P748, control_747
    push_eh $P748
    .lex "self", param_749
    .lex "$source", param_750
    .lex "%adverbs", param_751
.annotate 'line', 548

            .local pmc source, options, self
            source = find_lex '$source'
            options = find_lex '%adverbs'
            self = find_lex 'self'

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
        
.annotate 'line', 547
    .return ()
  control_747:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P752, exception, "payload"
    .return ($P752)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "past"  :subid("54_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_756
    .param pmc param_757
    .param pmc param_758 :slurpy :named
.annotate 'line', 596
    new $P755, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P755, control_754
    push_eh $P755
    .lex "self", param_756
    .lex "$source", param_757
    .lex "%adverbs", param_758
.annotate 'line', 597

            .local pmc source, adverbs, self
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

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
        
.annotate 'line', 596
    .return ()
  control_754:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P759, exception, "payload"
    .return ($P759)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "post"  :subid("55_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_763
    .param pmc param_764
    .param pmc param_765 :slurpy :named
.annotate 'line', 636
    new $P762, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P762, control_761
    push_eh $P762
    .lex "self", param_763
    .lex "$source", param_764
    .lex "%adverbs", param_765
.annotate 'line', 637
    compreg $P766, "PAST"
    find_lex $P767, "$source"
    find_lex $P768, "%adverbs"
    $P769 = $P766."to_post"($P767, $P768 :flat)
.annotate 'line', 636
    .return ($P769)
  control_761:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P770, exception, "payload"
    .return ($P770)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "pir"  :subid("56_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_774
    .param pmc param_775
    .param pmc param_776 :slurpy :named
.annotate 'line', 640
    new $P773, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P773, control_772
    push_eh $P773
    .lex "self", param_774
    .lex "$source", param_775
    .lex "%adverbs", param_776
.annotate 'line', 641
    compreg $P777, "POST"
    find_lex $P778, "$source"
    find_lex $P779, "%adverbs"
    $P780 = $P777."to_pir"($P778, $P779 :flat)
.annotate 'line', 640
    .return ($P780)
  control_772:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P781, exception, "payload"
    .return ($P781)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalpmc"  :subid("57_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_785
    .param pmc param_786
    .param pmc param_787 :slurpy :named
.annotate 'line', 644
    new $P784, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P784, control_783
    push_eh $P784
    .lex "self", param_785
    .lex "$source", param_786
    .lex "%adverbs", param_787
.annotate 'line', 645
    new $P788, "Undef"
    .lex "$compiler", $P788
    compreg $P789, "PIR"
    store_lex "$compiler", $P789
.annotate 'line', 646
    find_lex $P790, "$compiler"
    find_lex $P791, "$source"
    $P792 = $P790($P791)
.annotate 'line', 644
    .return ($P792)
  control_783:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P793, exception, "payload"
    .return ($P793)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "dumper"  :subid("58_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_797
    .param pmc param_798
    .param pmc param_799
    .param pmc param_800 :slurpy :named
.annotate 'line', 649
    .const 'Sub' $P806 = "59_1295307668.781" 
    capture_lex $P806
    new $P796, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P796, control_795
    push_eh $P796
    .lex "self", param_797
    .lex "$obj", param_798
    .lex "$name", param_799
    .lex "%options", param_800
.annotate 'line', 650
    find_lex $P803, "%options"
    unless_null $P803, vivify_139
    $P803 = root_new ['parrot';'Hash']
  vivify_139:
    set $P804, $P803["dumper"]
    unless_null $P804, vivify_140
    new $P804, "Undef"
  vivify_140:
    if $P804, if_802
.annotate 'line', 656
    find_lex $P819, "$obj"
    find_lex $P820, "$name"
    $P821 = "_dumper"($P819, $P820)
.annotate 'line', 655
    set $P801, $P821
.annotate 'line', 650
    goto if_802_end
  if_802:
    .const 'Sub' $P806 = "59_1295307668.781" 
    capture_lex $P806
    $P818 = $P806()
    set $P801, $P818
  if_802_end:
.annotate 'line', 649
    .return ($P801)
  control_795:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P822, exception, "payload"
    .return ($P822)
.end


.namespace ["HLL";"Compiler"]
.sub "_block805"  :anon :subid("59_1295307668.781") :outer("58_1295307668.781")
.annotate 'line', 652
    new $P807, "Undef"
    .lex "$dumper", $P807
.annotate 'line', 651
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 652
    find_lex $P808, "%options"
    unless_null $P808, vivify_141
    $P808 = root_new ['parrot';'Hash']
  vivify_141:
    set $P809, $P808["dumper"]
    unless_null $P809, vivify_142
    new $P809, "Undef"
  vivify_142:
    set $S810, $P809
    downcase $S811, $S810
    get_hll_global $P812, ["PCT"], "Dumper"
    unless_null $P812, vivify_143
    $P812 = root_new ['parrot';'Hash']
  vivify_143:
    set $P813, $P812[$S811]
    unless_null $P813, vivify_144
    new $P813, "Undef"
  vivify_144:
    store_lex "$dumper", $P813
.annotate 'line', 653
    find_lex $P814, "$dumper"
    find_lex $P815, "$obj"
    find_lex $P816, "$name"
    $P817 = $P814($P815, $P816)
.annotate 'line', 650
    .return ($P817)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "usage"  :subid("60_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_826
    .param pmc param_827 :optional
    .param int has_param_827 :opt_flag
.annotate 'line', 660
    new $P825, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P825, control_824
    push_eh $P825
    .lex "self", param_826
    if has_param_827, optparam_145
    new $P828, "Undef"
    set param_827, $P828
  optparam_145:
    .lex "$name", param_827
.annotate 'line', 661
    find_lex $P830, "$name"
    unless $P830, if_829_end
.annotate 'line', 662
    find_lex $P831, "$name"
    "say"($P831)
  if_829_end:
.annotate 'line', 664
    find_lex $P832, "self"
    get_global $P833, "$?CLASS"
    getattribute $P834, $P832, $P833, "$!usage"
    unless_null $P834, vivify_146
    new $P834, "Undef"
  vivify_146:
    say $P834
.annotate 'line', 665
    exit 0
.annotate 'line', 660
    .return ()
  control_824:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P835, exception, "payload"
    .return ($P835)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "version"  :subid("61_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_839
.annotate 'line', 668
    new $P838, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P838, control_837
    push_eh $P838
    .lex "self", param_839
.annotate 'line', 669
    find_lex $P840, "self"
    get_global $P841, "$?CLASS"
    getattribute $P842, $P840, $P841, "$!version"
    unless_null $P842, vivify_147
    new $P842, "Undef"
  vivify_147:
    say $P842
.annotate 'line', 670
    exit 0
.annotate 'line', 668
    .return ()
  control_837:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P843, exception, "payload"
    .return ($P843)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("62_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_847
    .param pmc param_848
.annotate 'line', 673
    .const 'Sub' $P858 = "63_1295307668.781" 
    capture_lex $P858
    new $P846, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P846, control_845
    push_eh $P846
    .lex "self", param_847
    .lex "$stagename", param_848
.annotate 'line', 674
    $P849 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P849
    new $P850, "ResizableStringArray"
    store_lex "@new_stages", $P850
.annotate 'line', 675
    find_lex $P852, "self"
    get_global $P853, "$?CLASS"
    getattribute $P854, $P852, $P853, "@!stages"
    unless_null $P854, vivify_148
    $P854 = root_new ['parrot';'ResizablePMCArray']
  vivify_148:
    defined $I855, $P854
    unless $I855, for_undef_149
    iter $P851, $P854
    new $P871, 'ExceptionHandler'
    set_addr $P871, loop870_handler
    $P871."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P871
  loop870_test:
    unless $P851, loop870_done
    shift $P856, $P851
  loop870_redo:
    .const 'Sub' $P858 = "63_1295307668.781" 
    capture_lex $P858
    $P858($P856)
  loop870_next:
    goto loop870_test
  loop870_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P872, exception, 'type'
    eq $P872, .CONTROL_LOOP_NEXT, loop870_next
    eq $P872, .CONTROL_LOOP_REDO, loop870_redo
  loop870_done:
    pop_eh 
  for_undef_149:
.annotate 'line', 680
    find_lex $P873, "@new_stages"
    find_lex $P874, "self"
    get_global $P875, "$?CLASS"
    setattribute $P874, $P875, "@!stages", $P873
.annotate 'line', 673
    .return ($P873)
  control_845:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P876, exception, "payload"
    .return ($P876)
.end


.namespace ["HLL";"Compiler"]
.sub "_block857"  :anon :subid("63_1295307668.781") :outer("62_1295307668.781")
    .param pmc param_859
.annotate 'line', 675
    .lex "$_", param_859
.annotate 'line', 676
    find_lex $P862, "$_"
    set $S863, $P862
    find_lex $P864, "$stagename"
    set $S865, $P864
    isne $I866, $S863, $S865
    if $I866, if_861
    new $P860, 'Integer'
    set $P860, $I866
    goto if_861_end
  if_861:
.annotate 'line', 677
    find_lex $P867, "@new_stages"
    find_lex $P868, "$_"
    $P869 = $P867."push"($P868)
.annotate 'line', 676
    set $P860, $P869
  if_861_end:
.annotate 'line', 675
    .return ($P860)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("64_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_880
    .param pmc param_881
    .param pmc param_882 :slurpy :named
.annotate 'line', 683
    new $P879, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P879, control_878
    push_eh $P879
    .lex "self", param_880
    .lex "$stagename", param_881
    .lex "%adverbs", param_882
.annotate 'line', 684

            .local string stagename
            .local pmc adverbs, self
            $P0 = find_lex '$stagename'
            stagename = $P0
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

            .local string position, target
            .local pmc stages
            stages = self.'stages'()

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
            self.'stages'(newstages)
            goto done

          simple_insert:
            push stages, stagename
          done:
        
.annotate 'line', 683
    .return ()
  control_878:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P883, exception, "payload"
    .return ($P883)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("65_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_887
    .param pmc param_888
.annotate 'line', 740
    new $P886, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P886, control_885
    push_eh $P886
    .lex "self", param_887
    .lex "$name", param_888
.annotate 'line', 741

            .local string name
            $P0 = find_lex '$name'
            name = $P0

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
        
.annotate 'line', 740
    .return ()
  control_885:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P889, exception, "payload"
    .return ($P889)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "lineof"  :subid("66_1295307668.781") :outer("11_1295307668.781")
    .param pmc param_893
    .param pmc param_894
    .param pmc param_895
    .param pmc param_896 :optional :named("cache")
    .param int has_param_896 :opt_flag
.annotate 'line', 780
    new $P892, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P892, control_891
    push_eh $P892
    .lex "self", param_893
    .lex "$target", param_894
    .lex "$pos", param_895
    if has_param_896, optparam_150
    new $P897, "Undef"
    set param_896, $P897
  optparam_150:
    .lex "$cache", param_896
.annotate 'line', 781

            .local pmc target, linepos
            .local int pos, cache
            target = find_lex '$target'
            $P0 = find_lex '$pos'
            pos = $P0
            $P0 = find_lex '$cache'
            cache = $P0

            .include 'cclass.pasm'

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
        
.annotate 'line', 780
    .return ()
  control_891:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P898, exception, "payload"
    .return ($P898)
.end


.namespace []
.sub "_block1012" :load :anon :subid("68_1295307668.781")
.annotate 'line', 1
    .const 'Sub' $P1014 = "10_1295307668.781" 
    $P1015 = $P1014()
    .return ($P1015)
.end


.sub '' :anon :load :init
    $P0 = get_hll_global ['HLL'], 'Compiler'
    $P0 = $P0.'new'()
    $P0.'language'('parrot')
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
