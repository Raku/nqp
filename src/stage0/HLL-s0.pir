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

.sub '' :anon :init :load
    load_bytecode 'PCT/HLLCompiler.pbc'
    .local pmc p6meta
    p6meta = get_hll_global 'P6metaclass'
    p6meta.'new_class'('HLL::Compiler', 'parent'=>'PCT::HLLCompiler')
.end
   

.sub 'parse' :method
    .param pmc source
    .param pmc options         :slurpy :named

    .local pmc parsegrammar, parseactions, match
    parsegrammar = self.'parsegrammar'()

    null parseactions
    $S0 = options['target']
    if $S0 == 'parse' goto have_parseactions
    parseactions = self.'parseactions'()
  have_parseactions:

    .local int rxtrace
    rxtrace = options['parsetrace']
    match = parsegrammar.'parse'(source, 'from'=>0, 'action'=>parseactions, 'rxtrace'=>rxtrace)
    unless match goto err_parsefail
    .return (match)

  err_parsefail:
    self.'panic'('Unable to parse source')
    .return (match)
.end
### .include 'src/cheats/hll-grammar.pir'
# Copyright (C) 2009 Patrick R. Michaud

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
    .local string termish
    termish = 'termish'

    .local pmc opstack, termstack
    opstack = new ['ResizablePMCArray']
    .lex '@opstack', opstack
    termstack = new ['ResizablePMCArray']
    .lex '@termstack', termstack

    .local pmc here, from, pos
    (here, pos) = self.'!cursor_start'()

  term_loop:
    here = here.termish()
    unless here goto fail
    .local pmc term
    term = here.'MATCH'()
    push termstack, term

    # interleave any prefix/postfix we might have found
    .local pmc termOPER, prefixish, postfixish
    termOPER = term
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
    delete term['prefixish']

  postfix_loop:
    if null postfixish goto postfix_done
    unless postfixish goto postfix_done
    $P0 = pop postfixish
    push opstack, $P0
    goto postfix_loop
  postfix_done:
    delete term['postfixish']

    # Now see if we can fetch an infix operator
    .local pmc infixcur, infix
    here = here.'ws'()
    infixcur = here.'infixish'()
    unless infixcur goto term_done
    infix = infixcur.'MATCH'()

    .local pmc inO
    $P0 = infix['OPER']
    inO = $P0['O']
    termish = inO['nextterm']
    if termish goto have_termish
    termish = 'termish'
  have_termish:

    unless opstack goto reduce_done
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
    self.reduce()
    goto reduce_loop
  reduce_gt_done:

    unless opprec == inprec goto reduce_done
    # equal precedence, use associativity to decide
    unless inassoc == 'left' goto reduce_done
    # left associative, reduce immediately
    capture_lex reduce
    self.reduce()
  reduce_done:

    push opstack, infix        # The Shift
    here = infixcur.'ws'()
    goto term_loop
  term_done:

  opstack_loop:
    unless opstack goto opstack_done
    capture_lex reduce
    self.reduce()
    goto opstack_loop
  opstack_done:

  expr_done:
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


.sub 'EXPR_reduce' :method :anon :outer('EXPR')
    .local pmc termstack, opstack
    termstack = find_lex '@termstack'
    opstack = find_lex '@opstack'

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
    .lex '$*ACTION', $P0

    # XXX can't use tailcall here or we lose $*ACTION
    $P1 = cur.regex()
    .return ($P1)
.end


=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:

### .include 'gen/hllgrammar-grammar.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1257089852.96614")
.annotate "line", 0
    get_hll_global $P14, ["HLL";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 5
    get_hll_global $P14, ["HLL";"Grammar"], "_block13" 
    capture_lex $P14
    $P208 = $P14()
.annotate "line", 1
    .return ($P208)
.end


.namespace []
.sub "" :load :init :subid("post77") :outer("10_1257089852.96614")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1257089852.96614" 
    .local pmc block
    set block, $P12
    $P209 = get_root_global ["parrot"], "P6metaclass"
    $P209."new_class"("HLL::Grammar", "Regex::Cursor" :named("parent"))
.end


.namespace ["HLL";"Grammar"]
.sub "_block13"  :subid("11_1257089852.96614") :outer("10_1257089852.96614")
.annotate "line", 5
    .const 'Sub' $P199 = "75_1257089852.96614" 
    capture_lex $P199
    .const 'Sub' $P193 = "73_1257089852.96614" 
    capture_lex $P193
    .const 'Sub' $P181 = "70_1257089852.96614" 
    capture_lex $P181
    .const 'Sub' $P177 = "68_1257089852.96614" 
    capture_lex $P177
    .const 'Sub' $P172 = "66_1257089852.96614" 
    capture_lex $P172
    .const 'Sub' $P167 = "64_1257089852.96614" 
    capture_lex $P167
    .const 'Sub' $P163 = "62_1257089852.96614" 
    capture_lex $P163
    .const 'Sub' $P159 = "60_1257089852.96614" 
    capture_lex $P159
    .const 'Sub' $P155 = "58_1257089852.96614" 
    capture_lex $P155
    .const 'Sub' $P151 = "56_1257089852.96614" 
    capture_lex $P151
    .const 'Sub' $P147 = "54_1257089852.96614" 
    capture_lex $P147
    .const 'Sub' $P143 = "52_1257089852.96614" 
    capture_lex $P143
    .const 'Sub' $P120 = "48_1257089852.96614" 
    capture_lex $P120
    .const 'Sub' $P114 = "46_1257089852.96614" 
    capture_lex $P114
    .const 'Sub' $P106 = "44_1257089852.96614" 
    capture_lex $P106
    .const 'Sub' $P100 = "42_1257089852.96614" 
    capture_lex $P100
    .const 'Sub' $P92 = "40_1257089852.96614" 
    capture_lex $P92
    .const 'Sub' $P83 = "38_1257089852.96614" 
    capture_lex $P83
    .const 'Sub' $P76 = "36_1257089852.96614" 
    capture_lex $P76
    .const 'Sub' $P69 = "34_1257089852.96614" 
    capture_lex $P69
    .const 'Sub' $P64 = "32_1257089852.96614" 
    capture_lex $P64
    .const 'Sub' $P59 = "30_1257089852.96614" 
    capture_lex $P59
    .const 'Sub' $P54 = "28_1257089852.96614" 
    capture_lex $P54
    .const 'Sub' $P22 = "14_1257089852.96614" 
    capture_lex $P22
    .const 'Sub' $P15 = "12_1257089852.96614" 
    capture_lex $P15
    .const 'Sub' $P199 = "75_1257089852.96614" 
    capture_lex $P199
    .return ($P199)
.end


.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx16_tgt
    .local int rx16_pos
    .local int rx16_off
    .local int rx16_eos
    .local int rx16_rep
    .local pmc rx16_cur
    (rx16_cur, rx16_pos, rx16_tgt, $I10) = self."!cursor_start"()
    rx16_cur."!cursor_debug"("START ", "ws")
    .lex unicode:"$\x{a2}", rx16_cur
    .local pmc match
    .lex "$/", match
    length rx16_eos, rx16_tgt
    set rx16_off, 0
    lt $I10, 2, rx16_start
    sub rx16_off, $I10, 1
    substr rx16_tgt, rx16_tgt, rx16_off
  rx16_start:
  # rx subrule "ww" subtype=zerowidth negate=1
    rx16_cur."!cursor_pos"(rx16_pos)
    $P10 = rx16_cur."ww"()
    if $P10, rx16_fail
  # rx rxquantr19 ** 0..*
    set_addr $I21, rxquantr19_done
    rx16_cur."!mark_push"(0, rx16_pos, $I21)
  rxquantr19_loop:
  alt20_0:
    set_addr $I10, alt20_1
    rx16_cur."!mark_push"(0, rx16_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx16_pos, rx16_off
    find_not_cclass $I11, 32, rx16_tgt, $I10, rx16_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx16_fail
    add rx16_pos, rx16_off, $I11
    goto alt20_end
  alt20_1:
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
  alt20_end:
    (rx16_rep) = rx16_cur."!mark_commit"($I21)
    rx16_cur."!mark_push"(rx16_rep, rx16_pos, $I21)
    goto rxquantr19_loop
  rxquantr19_done:
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
.sub "!PREFIX__ws"  :subid("13_1257089852.96614") :method
.annotate "line", 5
    new $P18, "ResizablePMCArray"
    push $P18, ""
    .return ($P18)
.end


.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx23_tgt
    .local int rx23_pos
    .local int rx23_off
    .local int rx23_eos
    .local int rx23_rep
    .local pmc rx23_cur
    (rx23_cur, rx23_pos, rx23_tgt, $I10) = self."!cursor_start"()
    rx23_cur."!cursor_debug"("START ", "termish")
    rx23_cur."!cursor_caparray"("postfixish", "prefixish")
    .lex unicode:"$\x{a2}", rx23_cur
    .local pmc match
    .lex "$/", match
    length rx23_eos, rx23_tgt
    set rx23_off, 0
    lt $I10, 2, rx23_start
    sub rx23_off, $I10, 1
    substr rx23_tgt, rx23_tgt, rx23_off
  rx23_start:
.annotate "line", 8
  # rx rxquantr26 ** 0..*
    set_addr $I27, rxquantr26_done
    rx23_cur."!mark_push"(0, rx23_pos, $I27)
  rxquantr26_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx23_cur."!cursor_pos"(rx23_pos)
    $P10 = rx23_cur."prefixish"()
    unless $P10, rx23_fail
    rx23_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("prefixish")
    rx23_pos = $P10."pos"()
    (rx23_rep) = rx23_cur."!mark_commit"($I27)
    rx23_cur."!mark_push"(rx23_rep, rx23_pos, $I27)
    goto rxquantr26_loop
  rxquantr26_done:
.annotate "line", 9
  # rx subrule "term" subtype=capture negate=
    rx23_cur."!cursor_pos"(rx23_pos)
    $P10 = rx23_cur."term"()
    unless $P10, rx23_fail
    rx23_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx23_pos = $P10."pos"()
.annotate "line", 10
  # rx rxquantr28 ** 0..*
    set_addr $I29, rxquantr28_done
    rx23_cur."!mark_push"(0, rx23_pos, $I29)
  rxquantr28_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx23_cur."!cursor_pos"(rx23_pos)
    $P10 = rx23_cur."postfixish"()
    unless $P10, rx23_fail
    rx23_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postfixish")
    rx23_pos = $P10."pos"()
    (rx23_rep) = rx23_cur."!mark_commit"($I29)
    rx23_cur."!mark_push"(rx23_rep, rx23_pos, $I29)
    goto rxquantr28_loop
  rxquantr28_done:
.annotate "line", 7
  # rx pass
    rx23_cur."!cursor_pass"(rx23_pos, "termish")
    rx23_cur."!cursor_debug"("PASS  ", "termish", " at pos=", rx23_pos)
    .return (rx23_cur)
  rx23_fail:
.annotate "line", 5
    (rx23_rep, rx23_pos, $I10, $P10) = rx23_cur."!mark_fail"(0)
    lt rx23_pos, -1, rx23_done
    eq rx23_pos, -1, rx23_fail
    jump $I10
  rx23_done:
    rx23_cur."!cursor_fail"()
    rx23_cur."!cursor_debug"("FAIL  ", "termish")
    .return (rx23_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :subid("15_1257089852.96614") :method
.annotate "line", 5
    new $P25, "ResizablePMCArray"
    push $P25, ""
    .return ($P25)
.end


.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1257089852.96614") :method
.annotate "line", 13
    $P31 = self."!protoregex"("term")
    .return ($P31)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1257089852.96614") :method
.annotate "line", 13
    $P33 = self."!PREFIX__!protoregex"("term")
    .return ($P33)
.end


.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1257089852.96614") :method
.annotate "line", 14
    $P35 = self."!protoregex"("infix")
    .return ($P35)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1257089852.96614") :method
.annotate "line", 14
    $P37 = self."!PREFIX__!protoregex"("infix")
    .return ($P37)
.end


.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1257089852.96614") :method
.annotate "line", 15
    $P39 = self."!protoregex"("prefix")
    .return ($P39)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1257089852.96614") :method
.annotate "line", 15
    $P41 = self."!PREFIX__!protoregex"("prefix")
    .return ($P41)
.end


.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1257089852.96614") :method
.annotate "line", 16
    $P43 = self."!protoregex"("postfix")
    .return ($P43)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1257089852.96614") :method
.annotate "line", 16
    $P45 = self."!PREFIX__!protoregex"("postfix")
    .return ($P45)
.end


.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1257089852.96614") :method
.annotate "line", 17
    $P47 = self."!protoregex"("circumfix")
    .return ($P47)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1257089852.96614") :method
.annotate "line", 17
    $P49 = self."!PREFIX__!protoregex"("circumfix")
    .return ($P49)
.end


.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1257089852.96614") :method
.annotate "line", 18
    $P51 = self."!protoregex"("postcircumfix")
    .return ($P51)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1257089852.96614") :method
.annotate "line", 18
    $P53 = self."!PREFIX__!protoregex"("postcircumfix")
    .return ($P53)
.end


.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx55_tgt
    .local int rx55_pos
    .local int rx55_off
    .local int rx55_eos
    .local int rx55_rep
    .local pmc rx55_cur
    (rx55_cur, rx55_pos, rx55_tgt, $I10) = self."!cursor_start"()
    rx55_cur."!cursor_debug"("START ", "term:sym<circumfix>")
    .lex unicode:"$\x{a2}", rx55_cur
    .local pmc match
    .lex "$/", match
    length rx55_eos, rx55_tgt
    set rx55_off, 0
    lt $I10, 2, rx55_start
    sub rx55_off, $I10, 1
    substr rx55_tgt, rx55_tgt, rx55_off
  rx55_start:
.annotate "line", 20
  # rx subrule "circumfix" subtype=capture negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."circumfix"()
    unless $P10, rx55_fail
    rx55_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx55_pos = $P10."pos"()
  # rx pass
    rx55_cur."!cursor_pass"(rx55_pos, "term:sym<circumfix>")
    rx55_cur."!cursor_debug"("PASS  ", "term:sym<circumfix>", " at pos=", rx55_pos)
    .return (rx55_cur)
  rx55_fail:
.annotate "line", 5
    (rx55_rep, rx55_pos, $I10, $P10) = rx55_cur."!mark_fail"(0)
    lt rx55_pos, -1, rx55_done
    eq rx55_pos, -1, rx55_fail
    jump $I10
  rx55_done:
    rx55_cur."!cursor_fail"()
    rx55_cur."!cursor_debug"("FAIL  ", "term:sym<circumfix>")
    .return (rx55_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :subid("29_1257089852.96614") :method
.annotate "line", 5
    $P57 = self."!PREFIX__!subrule"("circumfix", "")
    new $P58, "ResizablePMCArray"
    push $P58, $P57
    .return ($P58)
.end


.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx60_tgt
    .local int rx60_pos
    .local int rx60_off
    .local int rx60_eos
    .local int rx60_rep
    .local pmc rx60_cur
    (rx60_cur, rx60_pos, rx60_tgt, $I10) = self."!cursor_start"()
    rx60_cur."!cursor_debug"("START ", "infixish")
    .lex unicode:"$\x{a2}", rx60_cur
    .local pmc match
    .lex "$/", match
    length rx60_eos, rx60_tgt
    set rx60_off, 0
    lt $I10, 2, rx60_start
    sub rx60_off, $I10, 1
    substr rx60_tgt, rx60_tgt, rx60_off
  rx60_start:
.annotate "line", 22
  # rx subrule "infix" subtype=capture negate=
    rx60_cur."!cursor_pos"(rx60_pos)
    $P10 = rx60_cur."infix"()
    unless $P10, rx60_fail
    rx60_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx60_pos = $P10."pos"()
  # rx pass
    rx60_cur."!cursor_pass"(rx60_pos, "infixish")
    rx60_cur."!cursor_debug"("PASS  ", "infixish", " at pos=", rx60_pos)
    .return (rx60_cur)
  rx60_fail:
.annotate "line", 5
    (rx60_rep, rx60_pos, $I10, $P10) = rx60_cur."!mark_fail"(0)
    lt rx60_pos, -1, rx60_done
    eq rx60_pos, -1, rx60_fail
    jump $I10
  rx60_done:
    rx60_cur."!cursor_fail"()
    rx60_cur."!cursor_debug"("FAIL  ", "infixish")
    .return (rx60_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("31_1257089852.96614") :method
.annotate "line", 5
    $P62 = self."!PREFIX__!subrule"("OPER=infix", "")
    new $P63, "ResizablePMCArray"
    push $P63, $P62
    .return ($P63)
.end


.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx65_tgt
    .local int rx65_pos
    .local int rx65_off
    .local int rx65_eos
    .local int rx65_rep
    .local pmc rx65_cur
    (rx65_cur, rx65_pos, rx65_tgt, $I10) = self."!cursor_start"()
    rx65_cur."!cursor_debug"("START ", "prefixish")
    .lex unicode:"$\x{a2}", rx65_cur
    .local pmc match
    .lex "$/", match
    length rx65_eos, rx65_tgt
    set rx65_off, 0
    lt $I10, 2, rx65_start
    sub rx65_off, $I10, 1
    substr rx65_tgt, rx65_tgt, rx65_off
  rx65_start:
.annotate "line", 23
  # rx subrule "prefix" subtype=capture negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."prefix"()
    unless $P10, rx65_fail
    rx65_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx65_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."ws"()
    unless $P10, rx65_fail
    rx65_pos = $P10."pos"()
  # rx pass
    rx65_cur."!cursor_pass"(rx65_pos, "prefixish")
    rx65_cur."!cursor_debug"("PASS  ", "prefixish", " at pos=", rx65_pos)
    .return (rx65_cur)
  rx65_fail:
.annotate "line", 5
    (rx65_rep, rx65_pos, $I10, $P10) = rx65_cur."!mark_fail"(0)
    lt rx65_pos, -1, rx65_done
    eq rx65_pos, -1, rx65_fail
    jump $I10
  rx65_done:
    rx65_cur."!cursor_fail"()
    rx65_cur."!cursor_debug"("FAIL  ", "prefixish")
    .return (rx65_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("33_1257089852.96614") :method
.annotate "line", 5
    $P67 = self."!PREFIX__!subrule"("OPER=prefix", "")
    new $P68, "ResizablePMCArray"
    push $P68, $P67
    .return ($P68)
.end


.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx70_tgt
    .local int rx70_pos
    .local int rx70_off
    .local int rx70_eos
    .local int rx70_rep
    .local pmc rx70_cur
    (rx70_cur, rx70_pos, rx70_tgt, $I10) = self."!cursor_start"()
    rx70_cur."!cursor_debug"("START ", "postfixish")
    .lex unicode:"$\x{a2}", rx70_cur
    .local pmc match
    .lex "$/", match
    length rx70_eos, rx70_tgt
    set rx70_off, 0
    lt $I10, 2, rx70_start
    sub rx70_off, $I10, 1
    substr rx70_tgt, rx70_tgt, rx70_off
  rx70_start:
  alt75_0:
.annotate "line", 24
    set_addr $I10, alt75_1
    rx70_cur."!mark_push"(0, rx70_pos, $I10)
.annotate "line", 25
  # rx subrule "postfix" subtype=capture negate=
    rx70_cur."!cursor_pos"(rx70_pos)
    $P10 = rx70_cur."postfix"()
    unless $P10, rx70_fail
    rx70_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx70_pos = $P10."pos"()
    goto alt75_end
  alt75_1:
.annotate "line", 26
  # rx subrule "postcircumfix" subtype=capture negate=
    rx70_cur."!cursor_pos"(rx70_pos)
    $P10 = rx70_cur."postcircumfix"()
    unless $P10, rx70_fail
    rx70_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx70_pos = $P10."pos"()
  alt75_end:
.annotate "line", 24
  # rx pass
    rx70_cur."!cursor_pass"(rx70_pos, "postfixish")
    rx70_cur."!cursor_debug"("PASS  ", "postfixish", " at pos=", rx70_pos)
    .return (rx70_cur)
  rx70_fail:
.annotate "line", 5
    (rx70_rep, rx70_pos, $I10, $P10) = rx70_cur."!mark_fail"(0)
    lt rx70_pos, -1, rx70_done
    eq rx70_pos, -1, rx70_fail
    jump $I10
  rx70_done:
    rx70_cur."!cursor_fail"()
    rx70_cur."!cursor_debug"("FAIL  ", "postfixish")
    .return (rx70_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("35_1257089852.96614") :method
.annotate "line", 5
    $P72 = self."!PREFIX__!subrule"("OPER=postcircumfix", "")
    $P73 = self."!PREFIX__!subrule"("OPER=postfix", "")
    new $P74, "ResizablePMCArray"
    push $P74, $P72
    push $P74, $P73
    .return ($P74)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("36_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx77_tgt
    .local int rx77_pos
    .local int rx77_off
    .local int rx77_eos
    .local int rx77_rep
    .local pmc rx77_cur
    (rx77_cur, rx77_pos, rx77_tgt, $I10) = self."!cursor_start"()
    rx77_cur."!cursor_debug"("START ", "quote_delimited")
    rx77_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx77_cur
    .local pmc match
    .lex "$/", match
    length rx77_eos, rx77_tgt
    set rx77_off, 0
    lt $I10, 2, rx77_start
    sub rx77_off, $I10, 1
    substr rx77_tgt, rx77_tgt, rx77_off
  rx77_start:
.annotate "line", 31
  # rx subrule "starter" subtype=capture negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."starter"()
    unless $P10, rx77_fail
    rx77_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx77_pos = $P10."pos"()
  # rx rxquantr81 ** 0..*
    set_addr $I82, rxquantr81_done
    rx77_cur."!mark_push"(0, rx77_pos, $I82)
  rxquantr81_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."quote_atom"()
    unless $P10, rx77_fail
    rx77_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_atom")
    rx77_pos = $P10."pos"()
    (rx77_rep) = rx77_cur."!mark_commit"($I82)
    rx77_cur."!mark_push"(rx77_rep, rx77_pos, $I82)
    goto rxquantr81_loop
  rxquantr81_done:
  # rx subrule "stopper" subtype=capture negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."stopper"()
    unless $P10, rx77_fail
    rx77_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx77_pos = $P10."pos"()
.annotate "line", 30
  # rx pass
    rx77_cur."!cursor_pass"(rx77_pos, "quote_delimited")
    rx77_cur."!cursor_debug"("PASS  ", "quote_delimited", " at pos=", rx77_pos)
    .return (rx77_cur)
  rx77_fail:
.annotate "line", 5
    (rx77_rep, rx77_pos, $I10, $P10) = rx77_cur."!mark_fail"(0)
    lt rx77_pos, -1, rx77_done
    eq rx77_pos, -1, rx77_fail
    jump $I10
  rx77_done:
    rx77_cur."!cursor_fail"()
    rx77_cur."!cursor_debug"("FAIL  ", "quote_delimited")
    .return (rx77_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("37_1257089852.96614") :method
.annotate "line", 5
    $P79 = self."!PREFIX__!subrule"("starter", "")
    new $P80, "ResizablePMCArray"
    push $P80, $P79
    .return ($P80)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("38_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx84_tgt
    .local int rx84_pos
    .local int rx84_off
    .local int rx84_eos
    .local int rx84_rep
    .local pmc rx84_cur
    (rx84_cur, rx84_pos, rx84_tgt, $I10) = self."!cursor_start"()
    rx84_cur."!cursor_debug"("START ", "quote_atom")
    .lex unicode:"$\x{a2}", rx84_cur
    .local pmc match
    .lex "$/", match
    length rx84_eos, rx84_tgt
    set rx84_off, 0
    lt $I10, 2, rx84_start
    sub rx84_off, $I10, 1
    substr rx84_tgt, rx84_tgt, rx84_off
  rx84_start:
.annotate "line", 35
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx84_cur."!cursor_pos"(rx84_pos)
    $P10 = rx84_cur."stopper"()
    if $P10, rx84_fail
  alt87_0:
.annotate "line", 36
    set_addr $I10, alt87_1
    rx84_cur."!mark_push"(0, rx84_pos, $I10)
.annotate "line", 37
  # rx subrule "quote_escape" subtype=capture negate=
    rx84_cur."!cursor_pos"(rx84_pos)
    $P10 = rx84_cur."quote_escape"()
    unless $P10, rx84_fail
    rx84_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx84_pos = $P10."pos"()
    goto alt87_end
  alt87_1:
.annotate "line", 38
  # rx rxquantr88 ** 1..*
    set_addr $I91, rxquantr88_done
    rx84_cur."!mark_push"(0, -1, $I91)
  rxquantr88_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx84_cur."!cursor_pos"(rx84_pos)
    $P10 = rx84_cur."stopper"()
    if $P10, rx84_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx84_cur."!cursor_pos"(rx84_pos)
    $P10 = rx84_cur."quote_escape"()
    if $P10, rx84_fail
  # rx charclass .
    ge rx84_pos, rx84_eos, rx84_fail
    inc rx84_pos
    (rx84_rep) = rx84_cur."!mark_commit"($I91)
    rx84_cur."!mark_push"(rx84_rep, rx84_pos, $I91)
    goto rxquantr88_loop
  rxquantr88_done:
  alt87_end:
.annotate "line", 34
  # rx pass
    rx84_cur."!cursor_pass"(rx84_pos, "quote_atom")
    rx84_cur."!cursor_debug"("PASS  ", "quote_atom", " at pos=", rx84_pos)
    .return (rx84_cur)
  rx84_fail:
.annotate "line", 5
    (rx84_rep, rx84_pos, $I10, $P10) = rx84_cur."!mark_fail"(0)
    lt rx84_pos, -1, rx84_done
    eq rx84_pos, -1, rx84_fail
    jump $I10
  rx84_done:
    rx84_cur."!cursor_fail"()
    rx84_cur."!cursor_debug"("FAIL  ", "quote_atom")
    .return (rx84_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("39_1257089852.96614") :method
.annotate "line", 5
    new $P86, "ResizablePMCArray"
    push $P86, ""
    .return ($P86)
.end


.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("40_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx93_tgt
    .local int rx93_pos
    .local int rx93_off
    .local int rx93_eos
    .local int rx93_rep
    .local pmc rx93_cur
    (rx93_cur, rx93_pos, rx93_tgt, $I10) = self."!cursor_start"()
    rx93_cur."!cursor_debug"("START ", "hexint")
    .lex unicode:"$\x{a2}", rx93_cur
    .local pmc match
    .lex "$/", match
    length rx93_eos, rx93_tgt
    set rx93_off, 0
    lt $I10, 2, rx93_start
    sub rx93_off, $I10, 1
    substr rx93_tgt, rx93_tgt, rx93_off
  rx93_start:
.annotate "line", 42
  # rx rxquantr96 ** 1..*
    set_addr $I99, rxquantr96_done
    rx93_cur."!mark_push"(0, -1, $I99)
  rxquantr96_loop:
  # rx rxquantr97 ** 1..*
    set_addr $I98, rxquantr97_done
    rx93_cur."!mark_push"(0, -1, $I98)
  rxquantr97_loop:
  # rx enumcharlist negate=0 
    ge rx93_pos, rx93_eos, rx93_fail
    sub $I10, rx93_pos, rx93_off
    substr $S10, rx93_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rx93_fail
    inc rx93_pos
    (rx93_rep) = rx93_cur."!mark_commit"($I98)
    rx93_cur."!mark_push"(rx93_rep, rx93_pos, $I98)
    goto rxquantr97_loop
  rxquantr97_done:
    (rx93_rep) = rx93_cur."!mark_commit"($I99)
    rx93_cur."!mark_push"(rx93_rep, rx93_pos, $I99)
  # rx literal  "_"
    add $I11, rx93_pos, 1
    gt $I11, rx93_eos, rx93_fail
    sub $I11, rx93_pos, rx93_off
    substr $S10, rx93_tgt, $I11, 1
    ne $S10, "_", rx93_fail
    add rx93_pos, 1
    goto rxquantr96_loop
  rxquantr96_done:
  # rx pass
    rx93_cur."!cursor_pass"(rx93_pos, "hexint")
    rx93_cur."!cursor_debug"("PASS  ", "hexint", " at pos=", rx93_pos)
    .return (rx93_cur)
  rx93_fail:
.annotate "line", 5
    (rx93_rep, rx93_pos, $I10, $P10) = rx93_cur."!mark_fail"(0)
    lt rx93_pos, -1, rx93_done
    eq rx93_pos, -1, rx93_fail
    jump $I10
  rx93_done:
    rx93_cur."!cursor_fail"()
    rx93_cur."!cursor_debug"("FAIL  ", "hexint")
    .return (rx93_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("41_1257089852.96614") :method
.annotate "line", 5
    new $P95, "ResizablePMCArray"
    push $P95, ""
    .return ($P95)
.end


.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("42_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx101_tgt
    .local int rx101_pos
    .local int rx101_off
    .local int rx101_eos
    .local int rx101_rep
    .local pmc rx101_cur
    (rx101_cur, rx101_pos, rx101_tgt, $I10) = self."!cursor_start"()
    rx101_cur."!cursor_debug"("START ", "hexints")
    rx101_cur."!cursor_caparray"("hexint")
    .lex unicode:"$\x{a2}", rx101_cur
    .local pmc match
    .lex "$/", match
    length rx101_eos, rx101_tgt
    set rx101_off, 0
    lt $I10, 2, rx101_start
    sub rx101_off, $I10, 1
    substr rx101_tgt, rx101_tgt, rx101_off
  rx101_start:
.annotate "line", 43
  # rx rxquantr104 ** 1..*
    set_addr $I105, rxquantr104_done
    rx101_cur."!mark_push"(0, -1, $I105)
  rxquantr104_loop:
  # rx subrule "ws" subtype=method negate=
    rx101_cur."!cursor_pos"(rx101_pos)
    $P10 = rx101_cur."ws"()
    unless $P10, rx101_fail
    rx101_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx101_cur."!cursor_pos"(rx101_pos)
    $P10 = rx101_cur."hexint"()
    unless $P10, rx101_fail
    rx101_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx101_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx101_cur."!cursor_pos"(rx101_pos)
    $P10 = rx101_cur."ws"()
    unless $P10, rx101_fail
    rx101_pos = $P10."pos"()
    (rx101_rep) = rx101_cur."!mark_commit"($I105)
    rx101_cur."!mark_push"(rx101_rep, rx101_pos, $I105)
  # rx literal  ","
    add $I11, rx101_pos, 1
    gt $I11, rx101_eos, rx101_fail
    sub $I11, rx101_pos, rx101_off
    substr $S10, rx101_tgt, $I11, 1
    ne $S10, ",", rx101_fail
    add rx101_pos, 1
    goto rxquantr104_loop
  rxquantr104_done:
  # rx pass
    rx101_cur."!cursor_pass"(rx101_pos, "hexints")
    rx101_cur."!cursor_debug"("PASS  ", "hexints", " at pos=", rx101_pos)
    .return (rx101_cur)
  rx101_fail:
.annotate "line", 5
    (rx101_rep, rx101_pos, $I10, $P10) = rx101_cur."!mark_fail"(0)
    lt rx101_pos, -1, rx101_done
    eq rx101_pos, -1, rx101_fail
    jump $I10
  rx101_done:
    rx101_cur."!cursor_fail"()
    rx101_cur."!cursor_debug"("FAIL  ", "hexints")
    .return (rx101_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("43_1257089852.96614") :method
.annotate "line", 5
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("44_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx107_tgt
    .local int rx107_pos
    .local int rx107_off
    .local int rx107_eos
    .local int rx107_rep
    .local pmc rx107_cur
    (rx107_cur, rx107_pos, rx107_tgt, $I10) = self."!cursor_start"()
    rx107_cur."!cursor_debug"("START ", "octint")
    .lex unicode:"$\x{a2}", rx107_cur
    .local pmc match
    .lex "$/", match
    length rx107_eos, rx107_tgt
    set rx107_off, 0
    lt $I10, 2, rx107_start
    sub rx107_off, $I10, 1
    substr rx107_tgt, rx107_tgt, rx107_off
  rx107_start:
.annotate "line", 45
  # rx rxquantr110 ** 1..*
    set_addr $I113, rxquantr110_done
    rx107_cur."!mark_push"(0, -1, $I113)
  rxquantr110_loop:
  # rx rxquantr111 ** 1..*
    set_addr $I112, rxquantr111_done
    rx107_cur."!mark_push"(0, -1, $I112)
  rxquantr111_loop:
  # rx enumcharlist negate=0 
    ge rx107_pos, rx107_eos, rx107_fail
    sub $I10, rx107_pos, rx107_off
    substr $S10, rx107_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rx107_fail
    inc rx107_pos
    (rx107_rep) = rx107_cur."!mark_commit"($I112)
    rx107_cur."!mark_push"(rx107_rep, rx107_pos, $I112)
    goto rxquantr111_loop
  rxquantr111_done:
    (rx107_rep) = rx107_cur."!mark_commit"($I113)
    rx107_cur."!mark_push"(rx107_rep, rx107_pos, $I113)
  # rx literal  "_"
    add $I11, rx107_pos, 1
    gt $I11, rx107_eos, rx107_fail
    sub $I11, rx107_pos, rx107_off
    substr $S10, rx107_tgt, $I11, 1
    ne $S10, "_", rx107_fail
    add rx107_pos, 1
    goto rxquantr110_loop
  rxquantr110_done:
  # rx pass
    rx107_cur."!cursor_pass"(rx107_pos, "octint")
    rx107_cur."!cursor_debug"("PASS  ", "octint", " at pos=", rx107_pos)
    .return (rx107_cur)
  rx107_fail:
.annotate "line", 5
    (rx107_rep, rx107_pos, $I10, $P10) = rx107_cur."!mark_fail"(0)
    lt rx107_pos, -1, rx107_done
    eq rx107_pos, -1, rx107_fail
    jump $I10
  rx107_done:
    rx107_cur."!cursor_fail"()
    rx107_cur."!cursor_debug"("FAIL  ", "octint")
    .return (rx107_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("45_1257089852.96614") :method
.annotate "line", 5
    new $P109, "ResizablePMCArray"
    push $P109, ""
    .return ($P109)
.end


.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("46_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx115_tgt
    .local int rx115_pos
    .local int rx115_off
    .local int rx115_eos
    .local int rx115_rep
    .local pmc rx115_cur
    (rx115_cur, rx115_pos, rx115_tgt, $I10) = self."!cursor_start"()
    rx115_cur."!cursor_debug"("START ", "octints")
    rx115_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx115_cur
    .local pmc match
    .lex "$/", match
    length rx115_eos, rx115_tgt
    set rx115_off, 0
    lt $I10, 2, rx115_start
    sub rx115_off, $I10, 1
    substr rx115_tgt, rx115_tgt, rx115_off
  rx115_start:
.annotate "line", 46
  # rx rxquantr118 ** 1..*
    set_addr $I119, rxquantr118_done
    rx115_cur."!mark_push"(0, -1, $I119)
  rxquantr118_loop:
  # rx subrule "ws" subtype=method negate=
    rx115_cur."!cursor_pos"(rx115_pos)
    $P10 = rx115_cur."ws"()
    unless $P10, rx115_fail
    rx115_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx115_cur."!cursor_pos"(rx115_pos)
    $P10 = rx115_cur."octint"()
    unless $P10, rx115_fail
    rx115_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx115_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx115_cur."!cursor_pos"(rx115_pos)
    $P10 = rx115_cur."ws"()
    unless $P10, rx115_fail
    rx115_pos = $P10."pos"()
    (rx115_rep) = rx115_cur."!mark_commit"($I119)
    rx115_cur."!mark_push"(rx115_rep, rx115_pos, $I119)
  # rx literal  ","
    add $I11, rx115_pos, 1
    gt $I11, rx115_eos, rx115_fail
    sub $I11, rx115_pos, rx115_off
    substr $S10, rx115_tgt, $I11, 1
    ne $S10, ",", rx115_fail
    add rx115_pos, 1
    goto rxquantr118_loop
  rxquantr118_done:
  # rx pass
    rx115_cur."!cursor_pass"(rx115_pos, "octints")
    rx115_cur."!cursor_debug"("PASS  ", "octints", " at pos=", rx115_pos)
    .return (rx115_cur)
  rx115_fail:
.annotate "line", 5
    (rx115_rep, rx115_pos, $I10, $P10) = rx115_cur."!mark_fail"(0)
    lt rx115_pos, -1, rx115_done
    eq rx115_pos, -1, rx115_fail
    jump $I10
  rx115_done:
    rx115_cur."!cursor_fail"()
    rx115_cur."!cursor_debug"("FAIL  ", "octints")
    .return (rx115_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("47_1257089852.96614") :method
.annotate "line", 5
    new $P117, "ResizablePMCArray"
    push $P117, ""
    .return ($P117)
.end


.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("48_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx121_tgt
    .local int rx121_pos
    .local int rx121_off
    .local int rx121_eos
    .local int rx121_rep
    .local pmc rx121_cur
    (rx121_cur, rx121_pos, rx121_tgt, $I10) = self."!cursor_start"()
    rx121_cur."!cursor_debug"("START ", "integer")
    .lex unicode:"$\x{a2}", rx121_cur
    .local pmc match
    .lex "$/", match
    length rx121_eos, rx121_tgt
    set rx121_off, 0
    lt $I10, 2, rx121_start
    sub rx121_off, $I10, 1
    substr rx121_tgt, rx121_tgt, rx121_off
  rx121_start:
  alt126_0:
.annotate "line", 49
    set_addr $I10, alt126_1
    rx121_cur."!mark_push"(0, rx121_pos, $I10)
.annotate "line", 50
  # rx literal  "0"
    add $I11, rx121_pos, 1
    gt $I11, rx121_eos, rx121_fail
    sub $I11, rx121_pos, rx121_off
    substr $S10, rx121_tgt, $I11, 1
    ne $S10, "0", rx121_fail
    add rx121_pos, 1
  alt127_0:
    set_addr $I10, alt127_1
    rx121_cur."!mark_push"(0, rx121_pos, $I10)
  # rx literal  "b"
    add $I11, rx121_pos, 1
    gt $I11, rx121_eos, rx121_fail
    sub $I11, rx121_pos, rx121_off
    substr $S10, rx121_tgt, $I11, 1
    ne $S10, "b", rx121_fail
    add rx121_pos, 1
  # rx subcapture "binint"
    set_addr $I10, rxcap_132_fail
    rx121_cur."!mark_push"(0, rx121_pos, $I10)
  # rx rxquantr128 ** 1..*
    set_addr $I131, rxquantr128_done
    rx121_cur."!mark_push"(0, -1, $I131)
  rxquantr128_loop:
  # rx rxquantr129 ** 1..*
    set_addr $I130, rxquantr129_done
    rx121_cur."!mark_push"(0, -1, $I130)
  rxquantr129_loop:
  # rx enumcharlist negate=0 
    ge rx121_pos, rx121_eos, rx121_fail
    sub $I10, rx121_pos, rx121_off
    substr $S10, rx121_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rx121_fail
    inc rx121_pos
    (rx121_rep) = rx121_cur."!mark_commit"($I130)
    rx121_cur."!mark_push"(rx121_rep, rx121_pos, $I130)
    goto rxquantr129_loop
  rxquantr129_done:
    (rx121_rep) = rx121_cur."!mark_commit"($I131)
    rx121_cur."!mark_push"(rx121_rep, rx121_pos, $I131)
  # rx literal  "_"
    add $I11, rx121_pos, 1
    gt $I11, rx121_eos, rx121_fail
    sub $I11, rx121_pos, rx121_off
    substr $S10, rx121_tgt, $I11, 1
    ne $S10, "_", rx121_fail
    add rx121_pos, 1
    goto rxquantr128_loop
  rxquantr128_done:
    set_addr $I10, rxcap_132_fail
    ($I12, $I11) = rx121_cur."!mark_peek"($I10)
    rx121_cur."!cursor_pos"($I11)
    ($P10) = rx121_cur."!cursor_start"()
    $P10."!cursor_pass"(rx121_pos, "")
    rx121_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    goto rxcap_132_done
  rxcap_132_fail:
    goto rx121_fail
  rxcap_132_done:
    goto alt127_end
  alt127_1:
    set_addr $I10, alt127_2
    rx121_cur."!mark_push"(0, rx121_pos, $I10)
.annotate "line", 51
  # rx literal  "o"
    add $I11, rx121_pos, 1
    gt $I11, rx121_eos, rx121_fail
    sub $I11, rx121_pos, rx121_off
    substr $S10, rx121_tgt, $I11, 1
    ne $S10, "o", rx121_fail
    add rx121_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx121_cur."!cursor_pos"(rx121_pos)
    $P10 = rx121_cur."octint"()
    unless $P10, rx121_fail
    rx121_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx121_pos = $P10."pos"()
    goto alt127_end
  alt127_2:
    set_addr $I10, alt127_3
    rx121_cur."!mark_push"(0, rx121_pos, $I10)
.annotate "line", 52
  # rx literal  "x"
    add $I11, rx121_pos, 1
    gt $I11, rx121_eos, rx121_fail
    sub $I11, rx121_pos, rx121_off
    substr $S10, rx121_tgt, $I11, 1
    ne $S10, "x", rx121_fail
    add rx121_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx121_cur."!cursor_pos"(rx121_pos)
    $P10 = rx121_cur."hexint"()
    unless $P10, rx121_fail
    rx121_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx121_pos = $P10."pos"()
    goto alt127_end
  alt127_3:
.annotate "line", 53
  # rx literal  "d"
    add $I11, rx121_pos, 1
    gt $I11, rx121_eos, rx121_fail
    sub $I11, rx121_pos, rx121_off
    substr $S10, rx121_tgt, $I11, 1
    ne $S10, "d", rx121_fail
    add rx121_pos, 1
  # rx subcapture "decint"
    set_addr $I10, rxcap_135_fail
    rx121_cur."!mark_push"(0, rx121_pos, $I10)
  # rx rxquantr133 ** 1..*
    set_addr $I134, rxquantr133_done
    rx121_cur."!mark_push"(0, -1, $I134)
  rxquantr133_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx121_pos, rx121_off
    find_not_cclass $I11, 8, rx121_tgt, $I10, rx121_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx121_fail
    add rx121_pos, rx121_off, $I11
    (rx121_rep) = rx121_cur."!mark_commit"($I134)
    rx121_cur."!mark_push"(rx121_rep, rx121_pos, $I134)
  # rx literal  "_"
    add $I11, rx121_pos, 1
    gt $I11, rx121_eos, rx121_fail
    sub $I11, rx121_pos, rx121_off
    substr $S10, rx121_tgt, $I11, 1
    ne $S10, "_", rx121_fail
    add rx121_pos, 1
    goto rxquantr133_loop
  rxquantr133_done:
    set_addr $I10, rxcap_135_fail
    ($I12, $I11) = rx121_cur."!mark_peek"($I10)
    rx121_cur."!cursor_pos"($I11)
    ($P10) = rx121_cur."!cursor_start"()
    $P10."!cursor_pass"(rx121_pos, "")
    rx121_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    goto rxcap_135_done
  rxcap_135_fail:
    goto rx121_fail
  rxcap_135_done:
  alt127_end:
.annotate "line", 50
    goto alt126_end
  alt126_1:
.annotate "line", 55
  # rx subcapture "decint"
    set_addr $I10, rxcap_138_fail
    rx121_cur."!mark_push"(0, rx121_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx121_pos, rx121_off
    find_not_cclass $I11, 8, rx121_tgt, $I10, rx121_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx121_fail
    add rx121_pos, rx121_off, $I11
  # rx rxquantr136 ** 0..*
    set_addr $I137, rxquantr136_done
    rx121_cur."!mark_push"(0, rx121_pos, $I137)
  rxquantr136_loop:
  # rx literal  "_"
    add $I11, rx121_pos, 1
    gt $I11, rx121_eos, rx121_fail
    sub $I11, rx121_pos, rx121_off
    substr $S10, rx121_tgt, $I11, 1
    ne $S10, "_", rx121_fail
    add rx121_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx121_pos, rx121_off
    find_not_cclass $I11, 8, rx121_tgt, $I10, rx121_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx121_fail
    add rx121_pos, rx121_off, $I11
    (rx121_rep) = rx121_cur."!mark_commit"($I137)
    rx121_cur."!mark_push"(rx121_rep, rx121_pos, $I137)
    goto rxquantr136_loop
  rxquantr136_done:
    set_addr $I10, rxcap_138_fail
    ($I12, $I11) = rx121_cur."!mark_peek"($I10)
    rx121_cur."!cursor_pos"($I11)
    ($P10) = rx121_cur."!cursor_start"()
    $P10."!cursor_pass"(rx121_pos, "")
    rx121_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    goto rxcap_138_done
  rxcap_138_fail:
    goto rx121_fail
  rxcap_138_done:
  alt126_end:
.annotate "line", 48
  # rx pass
    rx121_cur."!cursor_pass"(rx121_pos, "integer")
    rx121_cur."!cursor_debug"("PASS  ", "integer", " at pos=", rx121_pos)
    .return (rx121_cur)
  rx121_fail:
.annotate "line", 5
    (rx121_rep, rx121_pos, $I10, $P10) = rx121_cur."!mark_fail"(0)
    lt rx121_pos, -1, rx121_done
    eq rx121_pos, -1, rx121_fail
    jump $I10
  rx121_done:
    rx121_cur."!cursor_fail"()
    rx121_cur."!cursor_debug"("FAIL  ", "integer")
    .return (rx121_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("49_1257089852.96614") :method
.annotate "line", 5
    $P123 = self."!PREFIX__!subrule"("hexint", "0x")
    $P124 = self."!PREFIX__!subrule"("octint", "0o")
    new $P125, "ResizablePMCArray"
    push $P125, ""
    push $P125, "0d"
    push $P125, $P123
    push $P125, $P124
    push $P125, "0b"
    .return ($P125)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("50_1257089852.96614") :method
.annotate "line", 59
    $P140 = self."!protoregex"("quote_escape")
    .return ($P140)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("51_1257089852.96614") :method
.annotate "line", 59
    $P142 = self."!PREFIX__!protoregex"("quote_escape")
    .return ($P142)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("52_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx144_tgt
    .local int rx144_pos
    .local int rx144_off
    .local int rx144_eos
    .local int rx144_rep
    .local pmc rx144_cur
    (rx144_cur, rx144_pos, rx144_tgt, $I10) = self."!cursor_start"()
    rx144_cur."!cursor_debug"("START ", "quote_escape:sym<backslash>")
    .lex unicode:"$\x{a2}", rx144_cur
    .local pmc match
    .lex "$/", match
    length rx144_eos, rx144_tgt
    set rx144_off, 0
    lt $I10, 2, rx144_start
    sub rx144_off, $I10, 1
    substr rx144_tgt, rx144_tgt, rx144_off
  rx144_start:
.annotate "line", 60
  # rx literal  "\\\\"
    add $I11, rx144_pos, 2
    gt $I11, rx144_eos, rx144_fail
    sub $I11, rx144_pos, rx144_off
    substr $S10, rx144_tgt, $I11, 2
    ne $S10, "\\\\", rx144_fail
    add rx144_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx144_cur."!cursor_pos"(rx144_pos)
    $P10 = rx144_cur."quotemod_check"("q")
    unless $P10, rx144_fail
  # rx pass
    rx144_cur."!cursor_pass"(rx144_pos, "quote_escape:sym<backslash>")
    rx144_cur."!cursor_debug"("PASS  ", "quote_escape:sym<backslash>", " at pos=", rx144_pos)
    .return (rx144_cur)
  rx144_fail:
.annotate "line", 5
    (rx144_rep, rx144_pos, $I10, $P10) = rx144_cur."!mark_fail"(0)
    lt rx144_pos, -1, rx144_done
    eq rx144_pos, -1, rx144_fail
    jump $I10
  rx144_done:
    rx144_cur."!cursor_fail"()
    rx144_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<backslash>")
    .return (rx144_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("53_1257089852.96614") :method
.annotate "line", 5
    new $P146, "ResizablePMCArray"
    push $P146, "\\\\"
    .return ($P146)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("54_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx148_tgt
    .local int rx148_pos
    .local int rx148_off
    .local int rx148_eos
    .local int rx148_rep
    .local pmc rx148_cur
    (rx148_cur, rx148_pos, rx148_tgt, $I10) = self."!cursor_start"()
    rx148_cur."!cursor_debug"("START ", "quote_escape:sym<stopper>")
    .lex unicode:"$\x{a2}", rx148_cur
    .local pmc match
    .lex "$/", match
    length rx148_eos, rx148_tgt
    set rx148_off, 0
    lt $I10, 2, rx148_start
    sub rx148_off, $I10, 1
    substr rx148_tgt, rx148_tgt, rx148_off
  rx148_start:
.annotate "line", 61
  # rx literal  "\\"
    add $I11, rx148_pos, 1
    gt $I11, rx148_eos, rx148_fail
    sub $I11, rx148_pos, rx148_off
    substr $S10, rx148_tgt, $I11, 1
    ne $S10, "\\", rx148_fail
    add rx148_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx148_cur."!cursor_pos"(rx148_pos)
    $P10 = rx148_cur."quotemod_check"("q")
    unless $P10, rx148_fail
  # rx subrule "stopper" subtype=capture negate=
    rx148_cur."!cursor_pos"(rx148_pos)
    $P10 = rx148_cur."stopper"()
    unless $P10, rx148_fail
    rx148_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx148_pos = $P10."pos"()
  # rx pass
    rx148_cur."!cursor_pass"(rx148_pos, "quote_escape:sym<stopper>")
    rx148_cur."!cursor_debug"("PASS  ", "quote_escape:sym<stopper>", " at pos=", rx148_pos)
    .return (rx148_cur)
  rx148_fail:
.annotate "line", 5
    (rx148_rep, rx148_pos, $I10, $P10) = rx148_cur."!mark_fail"(0)
    lt rx148_pos, -1, rx148_done
    eq rx148_pos, -1, rx148_fail
    jump $I10
  rx148_done:
    rx148_cur."!cursor_fail"()
    rx148_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<stopper>")
    .return (rx148_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("55_1257089852.96614") :method
.annotate "line", 5
    new $P150, "ResizablePMCArray"
    push $P150, "\\"
    .return ($P150)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("56_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx152_tgt
    .local int rx152_pos
    .local int rx152_off
    .local int rx152_eos
    .local int rx152_rep
    .local pmc rx152_cur
    (rx152_cur, rx152_pos, rx152_tgt, $I10) = self."!cursor_start"()
    rx152_cur."!cursor_debug"("START ", "quote_escape:sym<bs>")
    .lex unicode:"$\x{a2}", rx152_cur
    .local pmc match
    .lex "$/", match
    length rx152_eos, rx152_tgt
    set rx152_off, 0
    lt $I10, 2, rx152_start
    sub rx152_off, $I10, 1
    substr rx152_tgt, rx152_tgt, rx152_off
  rx152_start:
.annotate "line", 63
  # rx literal  "\\b"
    add $I11, rx152_pos, 2
    gt $I11, rx152_eos, rx152_fail
    sub $I11, rx152_pos, rx152_off
    substr $S10, rx152_tgt, $I11, 2
    ne $S10, "\\b", rx152_fail
    add rx152_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx152_cur."!cursor_pos"(rx152_pos)
    $P10 = rx152_cur."quotemod_check"("b")
    unless $P10, rx152_fail
  # rx pass
    rx152_cur."!cursor_pass"(rx152_pos, "quote_escape:sym<bs>")
    rx152_cur."!cursor_debug"("PASS  ", "quote_escape:sym<bs>", " at pos=", rx152_pos)
    .return (rx152_cur)
  rx152_fail:
.annotate "line", 5
    (rx152_rep, rx152_pos, $I10, $P10) = rx152_cur."!mark_fail"(0)
    lt rx152_pos, -1, rx152_done
    eq rx152_pos, -1, rx152_fail
    jump $I10
  rx152_done:
    rx152_cur."!cursor_fail"()
    rx152_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<bs>")
    .return (rx152_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("57_1257089852.96614") :method
.annotate "line", 5
    new $P154, "ResizablePMCArray"
    push $P154, "\\b"
    .return ($P154)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("58_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx156_tgt
    .local int rx156_pos
    .local int rx156_off
    .local int rx156_eos
    .local int rx156_rep
    .local pmc rx156_cur
    (rx156_cur, rx156_pos, rx156_tgt, $I10) = self."!cursor_start"()
    rx156_cur."!cursor_debug"("START ", "quote_escape:sym<nl>")
    .lex unicode:"$\x{a2}", rx156_cur
    .local pmc match
    .lex "$/", match
    length rx156_eos, rx156_tgt
    set rx156_off, 0
    lt $I10, 2, rx156_start
    sub rx156_off, $I10, 1
    substr rx156_tgt, rx156_tgt, rx156_off
  rx156_start:
.annotate "line", 64
  # rx literal  "\\n"
    add $I11, rx156_pos, 2
    gt $I11, rx156_eos, rx156_fail
    sub $I11, rx156_pos, rx156_off
    substr $S10, rx156_tgt, $I11, 2
    ne $S10, "\\n", rx156_fail
    add rx156_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx156_cur."!cursor_pos"(rx156_pos)
    $P10 = rx156_cur."quotemod_check"("b")
    unless $P10, rx156_fail
  # rx pass
    rx156_cur."!cursor_pass"(rx156_pos, "quote_escape:sym<nl>")
    rx156_cur."!cursor_debug"("PASS  ", "quote_escape:sym<nl>", " at pos=", rx156_pos)
    .return (rx156_cur)
  rx156_fail:
.annotate "line", 5
    (rx156_rep, rx156_pos, $I10, $P10) = rx156_cur."!mark_fail"(0)
    lt rx156_pos, -1, rx156_done
    eq rx156_pos, -1, rx156_fail
    jump $I10
  rx156_done:
    rx156_cur."!cursor_fail"()
    rx156_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<nl>")
    .return (rx156_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("59_1257089852.96614") :method
.annotate "line", 5
    new $P158, "ResizablePMCArray"
    push $P158, "\\n"
    .return ($P158)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("60_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx160_tgt
    .local int rx160_pos
    .local int rx160_off
    .local int rx160_eos
    .local int rx160_rep
    .local pmc rx160_cur
    (rx160_cur, rx160_pos, rx160_tgt, $I10) = self."!cursor_start"()
    rx160_cur."!cursor_debug"("START ", "quote_escape:sym<cr>")
    .lex unicode:"$\x{a2}", rx160_cur
    .local pmc match
    .lex "$/", match
    length rx160_eos, rx160_tgt
    set rx160_off, 0
    lt $I10, 2, rx160_start
    sub rx160_off, $I10, 1
    substr rx160_tgt, rx160_tgt, rx160_off
  rx160_start:
.annotate "line", 65
  # rx literal  "\\r"
    add $I11, rx160_pos, 2
    gt $I11, rx160_eos, rx160_fail
    sub $I11, rx160_pos, rx160_off
    substr $S10, rx160_tgt, $I11, 2
    ne $S10, "\\r", rx160_fail
    add rx160_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."quotemod_check"("b")
    unless $P10, rx160_fail
  # rx pass
    rx160_cur."!cursor_pass"(rx160_pos, "quote_escape:sym<cr>")
    rx160_cur."!cursor_debug"("PASS  ", "quote_escape:sym<cr>", " at pos=", rx160_pos)
    .return (rx160_cur)
  rx160_fail:
.annotate "line", 5
    (rx160_rep, rx160_pos, $I10, $P10) = rx160_cur."!mark_fail"(0)
    lt rx160_pos, -1, rx160_done
    eq rx160_pos, -1, rx160_fail
    jump $I10
  rx160_done:
    rx160_cur."!cursor_fail"()
    rx160_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<cr>")
    .return (rx160_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("61_1257089852.96614") :method
.annotate "line", 5
    new $P162, "ResizablePMCArray"
    push $P162, "\\r"
    .return ($P162)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("62_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx164_tgt
    .local int rx164_pos
    .local int rx164_off
    .local int rx164_eos
    .local int rx164_rep
    .local pmc rx164_cur
    (rx164_cur, rx164_pos, rx164_tgt, $I10) = self."!cursor_start"()
    rx164_cur."!cursor_debug"("START ", "quote_escape:sym<tab>")
    .lex unicode:"$\x{a2}", rx164_cur
    .local pmc match
    .lex "$/", match
    length rx164_eos, rx164_tgt
    set rx164_off, 0
    lt $I10, 2, rx164_start
    sub rx164_off, $I10, 1
    substr rx164_tgt, rx164_tgt, rx164_off
  rx164_start:
.annotate "line", 66
  # rx literal  "\\t"
    add $I11, rx164_pos, 2
    gt $I11, rx164_eos, rx164_fail
    sub $I11, rx164_pos, rx164_off
    substr $S10, rx164_tgt, $I11, 2
    ne $S10, "\\t", rx164_fail
    add rx164_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    $P10 = rx164_cur."quotemod_check"("b")
    unless $P10, rx164_fail
  # rx pass
    rx164_cur."!cursor_pass"(rx164_pos, "quote_escape:sym<tab>")
    rx164_cur."!cursor_debug"("PASS  ", "quote_escape:sym<tab>", " at pos=", rx164_pos)
    .return (rx164_cur)
  rx164_fail:
.annotate "line", 5
    (rx164_rep, rx164_pos, $I10, $P10) = rx164_cur."!mark_fail"(0)
    lt rx164_pos, -1, rx164_done
    eq rx164_pos, -1, rx164_fail
    jump $I10
  rx164_done:
    rx164_cur."!cursor_fail"()
    rx164_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<tab>")
    .return (rx164_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("63_1257089852.96614") :method
.annotate "line", 5
    new $P166, "ResizablePMCArray"
    push $P166, "\\t"
    .return ($P166)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("64_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx168_tgt
    .local int rx168_pos
    .local int rx168_off
    .local int rx168_eos
    .local int rx168_rep
    .local pmc rx168_cur
    (rx168_cur, rx168_pos, rx168_tgt, $I10) = self."!cursor_start"()
    rx168_cur."!cursor_debug"("START ", "quote_escape:sym<hex>")
    .lex unicode:"$\x{a2}", rx168_cur
    .local pmc match
    .lex "$/", match
    length rx168_eos, rx168_tgt
    set rx168_off, 0
    lt $I10, 2, rx168_start
    sub rx168_off, $I10, 1
    substr rx168_tgt, rx168_tgt, rx168_off
  rx168_start:
.annotate "line", 68
  # rx literal  unicode:"\\x"
    add $I11, rx168_pos, 2
    gt $I11, rx168_eos, rx168_fail
    sub $I11, rx168_pos, rx168_off
    substr $S10, rx168_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx168_fail
    add rx168_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx168_cur."!cursor_pos"(rx168_pos)
    $P10 = rx168_cur."quotemod_check"("b")
    unless $P10, rx168_fail
  alt171_0:
.annotate "line", 69
    set_addr $I10, alt171_1
    rx168_cur."!mark_push"(0, rx168_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx168_cur."!cursor_pos"(rx168_pos)
    $P10 = rx168_cur."hexint"()
    unless $P10, rx168_fail
    rx168_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx168_pos = $P10."pos"()
    goto alt171_end
  alt171_1:
  # rx literal  "["
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail
    sub $I11, rx168_pos, rx168_off
    substr $S10, rx168_tgt, $I11, 1
    ne $S10, "[", rx168_fail
    add rx168_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx168_cur."!cursor_pos"(rx168_pos)
    $P10 = rx168_cur."hexints"()
    unless $P10, rx168_fail
    rx168_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx168_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail
    sub $I11, rx168_pos, rx168_off
    substr $S10, rx168_tgt, $I11, 1
    ne $S10, "]", rx168_fail
    add rx168_pos, 1
  alt171_end:
.annotate "line", 67
  # rx pass
    rx168_cur."!cursor_pass"(rx168_pos, "quote_escape:sym<hex>")
    rx168_cur."!cursor_debug"("PASS  ", "quote_escape:sym<hex>", " at pos=", rx168_pos)
    .return (rx168_cur)
  rx168_fail:
.annotate "line", 5
    (rx168_rep, rx168_pos, $I10, $P10) = rx168_cur."!mark_fail"(0)
    lt rx168_pos, -1, rx168_done
    eq rx168_pos, -1, rx168_fail
    jump $I10
  rx168_done:
    rx168_cur."!cursor_fail"()
    rx168_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<hex>")
    .return (rx168_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("65_1257089852.96614") :method
.annotate "line", 5
    new $P170, "ResizablePMCArray"
    push $P170, unicode:"\\x"
    .return ($P170)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("66_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx173_tgt
    .local int rx173_pos
    .local int rx173_off
    .local int rx173_eos
    .local int rx173_rep
    .local pmc rx173_cur
    (rx173_cur, rx173_pos, rx173_tgt, $I10) = self."!cursor_start"()
    rx173_cur."!cursor_debug"("START ", "quote_escape:sym<oct>")
    .lex unicode:"$\x{a2}", rx173_cur
    .local pmc match
    .lex "$/", match
    length rx173_eos, rx173_tgt
    set rx173_off, 0
    lt $I10, 2, rx173_start
    sub rx173_off, $I10, 1
    substr rx173_tgt, rx173_tgt, rx173_off
  rx173_start:
.annotate "line", 72
  # rx literal  "\\o"
    add $I11, rx173_pos, 2
    gt $I11, rx173_eos, rx173_fail
    sub $I11, rx173_pos, rx173_off
    substr $S10, rx173_tgt, $I11, 2
    ne $S10, "\\o", rx173_fail
    add rx173_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx173_cur."!cursor_pos"(rx173_pos)
    $P10 = rx173_cur."quotemod_check"("b")
    unless $P10, rx173_fail
  alt176_0:
.annotate "line", 73
    set_addr $I10, alt176_1
    rx173_cur."!mark_push"(0, rx173_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx173_cur."!cursor_pos"(rx173_pos)
    $P10 = rx173_cur."octint"()
    unless $P10, rx173_fail
    rx173_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx173_pos = $P10."pos"()
    goto alt176_end
  alt176_1:
  # rx literal  "["
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail
    sub $I11, rx173_pos, rx173_off
    substr $S10, rx173_tgt, $I11, 1
    ne $S10, "[", rx173_fail
    add rx173_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx173_cur."!cursor_pos"(rx173_pos)
    $P10 = rx173_cur."octints"()
    unless $P10, rx173_fail
    rx173_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx173_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail
    sub $I11, rx173_pos, rx173_off
    substr $S10, rx173_tgt, $I11, 1
    ne $S10, "]", rx173_fail
    add rx173_pos, 1
  alt176_end:
.annotate "line", 71
  # rx pass
    rx173_cur."!cursor_pass"(rx173_pos, "quote_escape:sym<oct>")
    rx173_cur."!cursor_debug"("PASS  ", "quote_escape:sym<oct>", " at pos=", rx173_pos)
    .return (rx173_cur)
  rx173_fail:
.annotate "line", 5
    (rx173_rep, rx173_pos, $I10, $P10) = rx173_cur."!mark_fail"(0)
    lt rx173_pos, -1, rx173_done
    eq rx173_pos, -1, rx173_fail
    jump $I10
  rx173_done:
    rx173_cur."!cursor_fail"()
    rx173_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<oct>")
    .return (rx173_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("67_1257089852.96614") :method
.annotate "line", 5
    new $P175, "ResizablePMCArray"
    push $P175, "\\o"
    .return ($P175)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("68_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx178_tgt
    .local int rx178_pos
    .local int rx178_off
    .local int rx178_eos
    .local int rx178_rep
    .local pmc rx178_cur
    (rx178_cur, rx178_pos, rx178_tgt, $I10) = self."!cursor_start"()
    rx178_cur."!cursor_debug"("START ", "quote_escape:sym<chr>")
    .lex unicode:"$\x{a2}", rx178_cur
    .local pmc match
    .lex "$/", match
    length rx178_eos, rx178_tgt
    set rx178_off, 0
    lt $I10, 2, rx178_start
    sub rx178_off, $I10, 1
    substr rx178_tgt, rx178_tgt, rx178_off
  rx178_start:
.annotate "line", 75
  # rx literal  "\\c"
    add $I11, rx178_pos, 2
    gt $I11, rx178_eos, rx178_fail
    sub $I11, rx178_pos, rx178_off
    substr $S10, rx178_tgt, $I11, 2
    ne $S10, "\\c", rx178_fail
    add rx178_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."quotemod_check"("b")
    unless $P10, rx178_fail
  # rx subrule "charspec" subtype=capture negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."charspec"()
    unless $P10, rx178_fail
    rx178_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx178_pos = $P10."pos"()
  # rx pass
    rx178_cur."!cursor_pass"(rx178_pos, "quote_escape:sym<chr>")
    rx178_cur."!cursor_debug"("PASS  ", "quote_escape:sym<chr>", " at pos=", rx178_pos)
    .return (rx178_cur)
  rx178_fail:
.annotate "line", 5
    (rx178_rep, rx178_pos, $I10, $P10) = rx178_cur."!mark_fail"(0)
    lt rx178_pos, -1, rx178_done
    eq rx178_pos, -1, rx178_fail
    jump $I10
  rx178_done:
    rx178_cur."!cursor_fail"()
    rx178_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<chr>")
    .return (rx178_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("69_1257089852.96614") :method
.annotate "line", 5
    new $P180, "ResizablePMCArray"
    push $P180, "\\c"
    .return ($P180)
.end


.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("70_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .const 'Sub' $P190 = "72_1257089852.96614" 
    capture_lex $P190
    .local string rx182_tgt
    .local int rx182_pos
    .local int rx182_off
    .local int rx182_eos
    .local int rx182_rep
    .local pmc rx182_cur
    (rx182_cur, rx182_pos, rx182_tgt, $I10) = self."!cursor_start"()
    rx182_cur."!cursor_debug"("START ", "charname")
    .lex unicode:"$\x{a2}", rx182_cur
    .local pmc match
    .lex "$/", match
    length rx182_eos, rx182_tgt
    set rx182_off, 0
    lt $I10, 2, rx182_start
    sub rx182_off, $I10, 1
    substr rx182_tgt, rx182_tgt, rx182_off
  rx182_start:
  alt186_0:
.annotate "line", 77
    set_addr $I10, alt186_1
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
.annotate "line", 78
  # rx subrule "integer" subtype=capture negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."integer"()
    unless $P10, rx182_fail
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx182_pos = $P10."pos"()
    goto alt186_end
  alt186_1:
.annotate "line", 79
  # rx enumcharlist negate=0 
    ge rx182_pos, rx182_eos, rx182_fail
    sub $I10, rx182_pos, rx182_off
    substr $S10, rx182_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx182_fail
    inc rx182_pos
  # rx rxquantf187 ** 0..*
    set_addr $I10, rxquantf187_loop
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
    goto rxquantf187_done
  rxquantf187_loop:
  # rx enumcharlist negate=1 
    ge rx182_pos, rx182_eos, rx182_fail
    sub $I10, rx182_pos, rx182_off
    substr $S10, rx182_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx182_fail
    inc rx182_pos
    set_addr $I10, rxquantf187_loop
    rx182_cur."!mark_push"($I188, rx182_pos, $I10)
  rxquantf187_done:
  # rx enumcharlist negate=0 
    ge rx182_pos, rx182_eos, rx182_fail
    sub $I10, rx182_pos, rx182_off
    substr $S10, rx182_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx182_fail
    inc rx182_pos
.annotate "line", 80
  # rx subrule "before" subtype=zerowidth negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    .const 'Sub' $P190 = "72_1257089852.96614" 
    capture_lex $P190
    $P10 = rx182_cur."before"($P190)
    unless $P10, rx182_fail
  alt186_end:
.annotate "line", 77
  # rx pass
    rx182_cur."!cursor_pass"(rx182_pos, "charname")
    rx182_cur."!cursor_debug"("PASS  ", "charname", " at pos=", rx182_pos)
    .return (rx182_cur)
  rx182_fail:
.annotate "line", 5
    (rx182_rep, rx182_pos, $I10, $P10) = rx182_cur."!mark_fail"(0)
    lt rx182_pos, -1, rx182_done
    eq rx182_pos, -1, rx182_fail
    jump $I10
  rx182_done:
    rx182_cur."!cursor_fail"()
    rx182_cur."!cursor_debug"("FAIL  ", "charname")
    .return (rx182_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("71_1257089852.96614") :method
.annotate "line", 5
    $P184 = self."!PREFIX__!subrule"("integer", "")
    new $P185, "ResizablePMCArray"
    push $P185, "Z"
    push $P185, "Y"
    push $P185, "X"
    push $P185, "W"
    push $P185, "V"
    push $P185, "U"
    push $P185, "T"
    push $P185, "S"
    push $P185, "R"
    push $P185, "Q"
    push $P185, "P"
    push $P185, "O"
    push $P185, "N"
    push $P185, "M"
    push $P185, "L"
    push $P185, "K"
    push $P185, "J"
    push $P185, "I"
    push $P185, "H"
    push $P185, "G"
    push $P185, "F"
    push $P185, "E"
    push $P185, "D"
    push $P185, "C"
    push $P185, "B"
    push $P185, "A"
    push $P185, "z"
    push $P185, "y"
    push $P185, "x"
    push $P185, "w"
    push $P185, "v"
    push $P185, "u"
    push $P185, "t"
    push $P185, "s"
    push $P185, "r"
    push $P185, "q"
    push $P185, "p"
    push $P185, "o"
    push $P185, "n"
    push $P185, "m"
    push $P185, "l"
    push $P185, "k"
    push $P185, "j"
    push $P185, "i"
    push $P185, "h"
    push $P185, "g"
    push $P185, "f"
    push $P185, "e"
    push $P185, "d"
    push $P185, "c"
    push $P185, "b"
    push $P185, "a"
    push $P185, $P184
    .return ($P185)
.end


.namespace ["HLL";"Grammar"]
.sub "_block189"  :anon :subid("72_1257089852.96614") :method :outer("70_1257089852.96614")
.annotate "line", 80
    .local string rx191_tgt
    .local int rx191_pos
    .local int rx191_off
    .local int rx191_eos
    .local int rx191_rep
    .local pmc rx191_cur
    (rx191_cur, rx191_pos, rx191_tgt, $I10) = self."!cursor_start"()
    rx191_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx191_cur
    .local pmc match
    .lex "$/", match
    length rx191_eos, rx191_tgt
    set rx191_off, 0
    lt $I10, 2, rx191_start
    sub rx191_off, $I10, 1
    substr rx191_tgt, rx191_tgt, rx191_off
  rx191_start:
    ge rx191_pos, 0, rxscan192_done
  rxscan192_loop:
    ($P10) = rx191_cur."from"()
    inc $P10
    set rx191_pos, $P10
    ge rx191_pos, rx191_eos, rxscan192_done
    set_addr $I10, rxscan192_loop
    rx191_cur."!mark_push"(0, rx191_pos, $I10)
  rxscan192_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx191_pos, rx191_off
    find_not_cclass $I11, 32, rx191_tgt, $I10, rx191_eos
    add rx191_pos, rx191_off, $I11
  # rx enumcharlist negate=0 
    ge rx191_pos, rx191_eos, rx191_fail
    sub $I10, rx191_pos, rx191_off
    substr $S10, rx191_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx191_fail
    inc rx191_pos
  # rx pass
    rx191_cur."!cursor_pass"(rx191_pos, "")
    rx191_cur."!cursor_debug"("PASS  ", "", " at pos=", rx191_pos)
    .return (rx191_cur)
  rx191_fail:
    (rx191_rep, rx191_pos, $I10, $P10) = rx191_cur."!mark_fail"(0)
    lt rx191_pos, -1, rx191_done
    eq rx191_pos, -1, rx191_fail
    jump $I10
  rx191_done:
    rx191_cur."!cursor_fail"()
    rx191_cur."!cursor_debug"("FAIL  ", "")
    .return (rx191_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("73_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx194_tgt
    .local int rx194_pos
    .local int rx194_off
    .local int rx194_eos
    .local int rx194_rep
    .local pmc rx194_cur
    (rx194_cur, rx194_pos, rx194_tgt, $I10) = self."!cursor_start"()
    rx194_cur."!cursor_debug"("START ", "charnames")
    rx194_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx194_cur
    .local pmc match
    .lex "$/", match
    length rx194_eos, rx194_tgt
    set rx194_off, 0
    lt $I10, 2, rx194_start
    sub rx194_off, $I10, 1
    substr rx194_tgt, rx194_tgt, rx194_off
  rx194_start:
.annotate "line", 82
  # rx rxquantr197 ** 1..*
    set_addr $I198, rxquantr197_done
    rx194_cur."!mark_push"(0, -1, $I198)
  rxquantr197_loop:
  # rx subrule "ws" subtype=method negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."ws"()
    unless $P10, rx194_fail
    rx194_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."charname"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx194_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."ws"()
    unless $P10, rx194_fail
    rx194_pos = $P10."pos"()
    (rx194_rep) = rx194_cur."!mark_commit"($I198)
    rx194_cur."!mark_push"(rx194_rep, rx194_pos, $I198)
  # rx literal  ","
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    substr $S10, rx194_tgt, $I11, 1
    ne $S10, ",", rx194_fail
    add rx194_pos, 1
    goto rxquantr197_loop
  rxquantr197_done:
  # rx pass
    rx194_cur."!cursor_pass"(rx194_pos, "charnames")
    rx194_cur."!cursor_debug"("PASS  ", "charnames", " at pos=", rx194_pos)
    .return (rx194_cur)
  rx194_fail:
.annotate "line", 5
    (rx194_rep, rx194_pos, $I10, $P10) = rx194_cur."!mark_fail"(0)
    lt rx194_pos, -1, rx194_done
    eq rx194_pos, -1, rx194_fail
    jump $I10
  rx194_done:
    rx194_cur."!cursor_fail"()
    rx194_cur."!cursor_debug"("FAIL  ", "charnames")
    .return (rx194_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("74_1257089852.96614") :method
.annotate "line", 5
    new $P196, "ResizablePMCArray"
    push $P196, ""
    .return ($P196)
.end


.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("75_1257089852.96614") :method :outer("11_1257089852.96614")
.annotate "line", 5
    .local string rx200_tgt
    .local int rx200_pos
    .local int rx200_off
    .local int rx200_eos
    .local int rx200_rep
    .local pmc rx200_cur
    (rx200_cur, rx200_pos, rx200_tgt, $I10) = self."!cursor_start"()
    rx200_cur."!cursor_debug"("START ", "charspec")
    .lex unicode:"$\x{a2}", rx200_cur
    .local pmc match
    .lex "$/", match
    length rx200_eos, rx200_tgt
    set rx200_off, 0
    lt $I10, 2, rx200_start
    sub rx200_off, $I10, 1
    substr rx200_tgt, rx200_tgt, rx200_off
  rx200_start:
  alt205_0:
.annotate "line", 84
    set_addr $I10, alt205_1
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
.annotate "line", 85
  # rx literal  "["
    add $I11, rx200_pos, 1
    gt $I11, rx200_eos, rx200_fail
    sub $I11, rx200_pos, rx200_off
    substr $S10, rx200_tgt, $I11, 1
    ne $S10, "[", rx200_fail
    add rx200_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx200_cur."!cursor_pos"(rx200_pos)
    $P10 = rx200_cur."charnames"()
    unless $P10, rx200_fail
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx200_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx200_pos, 1
    gt $I11, rx200_eos, rx200_fail
    sub $I11, rx200_pos, rx200_off
    substr $S10, rx200_tgt, $I11, 1
    ne $S10, "]", rx200_fail
    add rx200_pos, 1
    goto alt205_end
  alt205_1:
    set_addr $I10, alt205_2
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
.annotate "line", 86
  # rx charclass_q d r 1..-1
    sub $I10, rx200_pos, rx200_off
    find_not_cclass $I11, 8, rx200_tgt, $I10, rx200_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx200_fail
    add rx200_pos, rx200_off, $I11
  # rx rxquantr206 ** 0..*
    set_addr $I207, rxquantr206_done
    rx200_cur."!mark_push"(0, rx200_pos, $I207)
  rxquantr206_loop:
  # rx literal  "_"
    add $I11, rx200_pos, 1
    gt $I11, rx200_eos, rx200_fail
    sub $I11, rx200_pos, rx200_off
    substr $S10, rx200_tgt, $I11, 1
    ne $S10, "_", rx200_fail
    add rx200_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx200_pos, rx200_off
    find_not_cclass $I11, 8, rx200_tgt, $I10, rx200_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx200_fail
    add rx200_pos, rx200_off, $I11
    (rx200_rep) = rx200_cur."!mark_commit"($I207)
    rx200_cur."!mark_push"(rx200_rep, rx200_pos, $I207)
    goto rxquantr206_loop
  rxquantr206_done:
    goto alt205_end
  alt205_2:
    set_addr $I10, alt205_3
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
.annotate "line", 87
  # rx enumcharlist negate=0 
    ge rx200_pos, rx200_eos, rx200_fail
    sub $I10, rx200_pos, rx200_off
    substr $S10, rx200_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx200_fail
    inc rx200_pos
    goto alt205_end
  alt205_3:
.annotate "line", 88
  # rx subrule "panic" subtype=method negate=
    rx200_cur."!cursor_pos"(rx200_pos)
    $P10 = rx200_cur."panic"("Unrecognized \\\\c character")
    unless $P10, rx200_fail
    rx200_pos = $P10."pos"()
  alt205_end:
.annotate "line", 83
  # rx pass
    rx200_cur."!cursor_pass"(rx200_pos, "charspec")
    rx200_cur."!cursor_debug"("PASS  ", "charspec", " at pos=", rx200_pos)
    .return (rx200_cur)
  rx200_fail:
.annotate "line", 5
    (rx200_rep, rx200_pos, $I10, $P10) = rx200_cur."!mark_fail"(0)
    lt rx200_pos, -1, rx200_done
    eq rx200_pos, -1, rx200_fail
    jump $I10
  rx200_done:
    rx200_cur."!cursor_fail"()
    rx200_cur."!cursor_debug"("FAIL  ", "charspec")
    .return (rx200_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("76_1257089852.96614") :method
.annotate "line", 5
    $P202 = self."!PREFIX__!subrule"("panic", "")
    $P203 = self."!PREFIX__!subrule"("charnames", "[")
    new $P204, "ResizablePMCArray"
    push $P204, $P202
    push $P204, "Z"
    push $P204, "Y"
    push $P204, "X"
    push $P204, "W"
    push $P204, "V"
    push $P204, "U"
    push $P204, "T"
    push $P204, "S"
    push $P204, "R"
    push $P204, "Q"
    push $P204, "P"
    push $P204, "O"
    push $P204, "N"
    push $P204, "M"
    push $P204, "L"
    push $P204, "K"
    push $P204, "J"
    push $P204, "I"
    push $P204, "H"
    push $P204, "G"
    push $P204, "F"
    push $P204, "E"
    push $P204, "D"
    push $P204, "C"
    push $P204, "B"
    push $P204, "A"
    push $P204, "@"
    push $P204, "?"
    push $P204, ""
    push $P204, $P203
    .return ($P204)
.end

### .include 'gen/hllgrammar-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1257089855.16271")
.annotate "line", 0
    get_hll_global $P14, ["HLL";"Actions"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["HLL";"Actions"], "_block13" 
    capture_lex $P14
    $P431 = $P14()
.annotate "line", 1
    .return ($P431)
.end


.namespace []
.sub "" :load :init :subid("post37") :outer("10_1257089855.16271")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1257089855.16271" 
    .local pmc block
    set block, $P12
    $P432 = get_root_global ["parrot"], "P6metaclass"
    $P432."new_class"("HLL::Actions")
.end


.namespace ["HLL";"Actions"]
.sub "_block13"  :subid("11_1257089855.16271") :outer("10_1257089855.16271")
.annotate "line", 3
    .const 'Sub' $P414 = "36_1257089855.16271" 
    capture_lex $P414
    .const 'Sub' $P397 = "35_1257089855.16271" 
    capture_lex $P397
    .const 'Sub' $P390 = "34_1257089855.16271" 
    capture_lex $P390
    .const 'Sub' $P383 = "33_1257089855.16271" 
    capture_lex $P383
    .const 'Sub' $P376 = "32_1257089855.16271" 
    capture_lex $P376
    .const 'Sub' $P369 = "31_1257089855.16271" 
    capture_lex $P369
    .const 'Sub' $P359 = "30_1257089855.16271" 
    capture_lex $P359
    .const 'Sub' $P352 = "29_1257089855.16271" 
    capture_lex $P352
    .const 'Sub' $P336 = "28_1257089855.16271" 
    capture_lex $P336
    .const 'Sub' $P262 = "26_1257089855.16271" 
    capture_lex $P262
    .const 'Sub' $P203 = "23_1257089855.16271" 
    capture_lex $P203
    .const 'Sub' $P194 = "22_1257089855.16271" 
    capture_lex $P194
    .const 'Sub' $P185 = "21_1257089855.16271" 
    capture_lex $P185
    .const 'Sub' $P154 = "20_1257089855.16271" 
    capture_lex $P154
    .const 'Sub' $P144 = "19_1257089855.16271" 
    capture_lex $P144
    .const 'Sub' $P134 = "18_1257089855.16271" 
    capture_lex $P134
    .const 'Sub' $P34 = "15_1257089855.16271" 
    capture_lex $P34
    .const 'Sub' $P28 = "14_1257089855.16271" 
    capture_lex $P28
    .const 'Sub' $P22 = "13_1257089855.16271" 
    capture_lex $P22
    .const 'Sub' $P15 = "12_1257089855.16271" 
    capture_lex $P15
.annotate "line", 181
    .const 'Sub' $P414 = "36_1257089855.16271" 
    capture_lex $P414
.annotate "line", 3
    .return ($P414)
.end


.namespace ["HLL";"Actions"]
.sub "string_to_int"  :subid("12_1257089855.16271") :outer("11_1257089855.16271")
    .param pmc param_18
    .param pmc param_19
.annotate "line", 3
    new $P17, 'ExceptionHandler'
    set_addr $P17, control_16
    $P17."handle_types"(58)
    push_eh $P17
    .lex "$src", param_18
    .lex "$base", param_19
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
        if digitval > base goto err_base
        result *= base
        result += digitval
      str_next:
        inc pos
        goto str_loop
      err_base:
	src.'panic'('Invalid radix conversion of "', char, '"')
      str_done:
        $P20 = box result
    
.annotate "line", 3
    .return ($P20)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P21, exception, "payload"
    .return ($P21)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("13_1257089855.16271") :outer("11_1257089855.16271")
    .param pmc param_25
.annotate "line", 37
    new $P24, 'ExceptionHandler'
    set_addr $P24, control_23
    $P24."handle_types"(58)
    push_eh $P24
    .lex "$ints", param_25
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
        $P26 = box result
    
.annotate "line", 37
    .return ($P26)
  control_23:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P27, exception, "payload"
    .return ($P27)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "isaPAST"  :subid("14_1257089855.16271") :outer("11_1257089855.16271")
    .param pmc param_31
.annotate "line", 61
    new $P30, 'ExceptionHandler'
    set_addr $P30, control_29
    $P30."handle_types"(58)
    push_eh $P30
    .lex "$x", param_31
.annotate "line", 62

        $P0 = find_lex '$x'
        $I0 = isa $P0, ['PAST';'Node']
        $P32 = box $I0
    
.annotate "line", 61
    .return ($P32)
  control_29:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P33, exception, "payload"
    .return ($P33)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "EXPR"  :subid("15_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_37
    .param pmc param_38 :optional
    .param int has_param_38 :opt_flag
.annotate "line", 69
    .const 'Sub' $P117 = "17_1257089855.16271" 
    capture_lex $P117
    .const 'Sub' $P84 = "16_1257089855.16271" 
    capture_lex $P84
    new $P36, 'ExceptionHandler'
    set_addr $P36, control_35
    $P36."handle_types"(58)
    push_eh $P36
    .lex "self", self
    .lex "$/", param_37
    if has_param_38, optparam_38
    new $P39, "Undef"
    set param_38, $P39
  optparam_38:
    .lex "$key", param_38
.annotate "line", 71
    new $P40, "Undef"
    .lex "$past", $P40
.annotate "line", 70
    find_lex $P42, "$key"
    if $P42, unless_41_end
    new $P43, "Exception"
    set $P43['type'], 58
    new $P44, "Integer"
    assign $P44, 0
    setattribute $P43, 'payload', $P44
    throw $P43
  unless_41_end:
.annotate "line", 71
    find_lex $P46, "$/"
    $P47 = $P46."peek_ast"()
    set $P45, $P47
    defined $I49, $P45
    if $I49, default_48
    find_lex $P50, "$/"
    unless_null $P50, vivify_39
    new $P50, "Hash"
  vivify_39:
    set $P51, $P50["OPER"]
    unless_null $P51, vivify_40
    new $P51, "Undef"
  vivify_40:
    $P52 = $P51."peek_ast"()
    set $P45, $P52
  default_48:
    store_lex "$past", $P45
.annotate "line", 72
    find_lex $P54, "$past"
    if $P54, unless_53_end
.annotate "line", 73
    get_hll_global $P55, ["PAST"], "Op"
    find_lex $P56, "$/"
    $P57 = $P55."new"($P56 :named("node"))
    store_lex "$past", $P57
.annotate "line", 74
    find_lex $P59, "$/"
    unless_null $P59, vivify_41
    new $P59, "Hash"
  vivify_41:
    set $P60, $P59["OPER"]
    unless_null $P60, vivify_42
    new $P60, "Hash"
  vivify_42:
    set $P61, $P60["O"]
    unless_null $P61, vivify_43
    new $P61, "Hash"
  vivify_43:
    set $P62, $P61["pasttype"]
    unless_null $P62, vivify_44
    new $P62, "Undef"
  vivify_44:
    if $P62, if_58
.annotate "line", 75
    find_lex $P70, "$/"
    unless_null $P70, vivify_45
    new $P70, "Hash"
  vivify_45:
    set $P71, $P70["OPER"]
    unless_null $P71, vivify_46
    new $P71, "Hash"
  vivify_46:
    set $P72, $P71["O"]
    unless_null $P72, vivify_47
    new $P72, "Hash"
  vivify_47:
    set $P73, $P72["pirop"]
    unless_null $P73, vivify_48
    new $P73, "Undef"
  vivify_48:
    unless $P73, if_69_end
    find_lex $P74, "$past"
    find_lex $P75, "$/"
    unless_null $P75, vivify_49
    new $P75, "Hash"
  vivify_49:
    set $P76, $P75["OPER"]
    unless_null $P76, vivify_50
    new $P76, "Hash"
  vivify_50:
    set $P77, $P76["O"]
    unless_null $P77, vivify_51
    new $P77, "Hash"
  vivify_51:
    set $P78, $P77["pirop"]
    unless_null $P78, vivify_52
    new $P78, "Undef"
  vivify_52:
    set $S79, $P78
    $P74."pirop"($S79)
  if_69_end:
    goto if_58_end
  if_58:
.annotate "line", 74
    find_lex $P63, "$past"
    find_lex $P64, "$/"
    unless_null $P64, vivify_53
    new $P64, "Hash"
  vivify_53:
    set $P65, $P64["OPER"]
    unless_null $P65, vivify_54
    new $P65, "Hash"
  vivify_54:
    set $P66, $P65["O"]
    unless_null $P66, vivify_55
    new $P66, "Hash"
  vivify_55:
    set $P67, $P66["pasttype"]
    unless_null $P67, vivify_56
    new $P67, "Undef"
  vivify_56:
    set $S68, $P67
    $P63."pasttype"($S68)
  if_58_end:
.annotate "line", 76
    find_lex $P81, "$past"
    $P82 = $P81."name"()
    if $P82, unless_80_end
    .const 'Sub' $P84 = "16_1257089855.16271" 
    capture_lex $P84
    $P84()
  unless_80_end:
  unless_53_end:
.annotate "line", 87
    find_lex $P104, "$key"
    set $S105, $P104
    iseq $I106, $S105, "POSTFIX"
    if $I106, if_103
.annotate "line", 89
    find_lex $P112, "$/"
    $P113 = $P112."list"()
    defined $I114, $P113
    unless $I114, for_undef_60
    iter $P111, $P113
    new $P128, 'ExceptionHandler'
    set_addr $P128, loop127_handler
    $P128."handle_types"(65, 67, 66)
    push_eh $P128
  loop127_test:
    unless $P111, loop127_done
    shift $P115, $P111
  loop127_redo:
    .const 'Sub' $P117 = "17_1257089855.16271" 
    capture_lex $P117
    $P117($P115)
  loop127_next:
    goto loop127_test
  loop127_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P129, exception, 'type'
    eq $P129, 65, loop127_next
    eq $P129, 67, loop127_redo
  loop127_done:
    pop_eh 
  for_undef_60:
.annotate "line", 88
    goto if_103_end
  if_103:
.annotate "line", 87
    find_lex $P107, "$past"
    find_lex $P108, "$/"
    unless_null $P108, vivify_61
    new $P108, "ResizablePMCArray"
  vivify_61:
    set $P109, $P108[0]
    unless_null $P109, vivify_62
    new $P109, "Undef"
  vivify_62:
    $P110 = $P109."ast"()
    $P107."unshift"($P110)
  if_103_end:
.annotate "line", 91
    find_lex $P130, "$/"
    find_lex $P131, "$past"
    $P132 = $P130."!make"($P131)
.annotate "line", 69
    .return ($P132)
  control_35:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P133, exception, "payload"
    .return ($P133)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "_block83"  :anon :subid("16_1257089855.16271") :outer("15_1257089855.16271")
.annotate "line", 78
    new $P85, "Undef"
    .lex "$name", $P85
.annotate "line", 77
    find_lex $P87, "$key"
    set $S88, $P87
    iseq $I89, $S88, "LIST"
    unless $I89, if_86_end
    new $P90, "String"
    assign $P90, "infix"
    store_lex "$key", $P90
  if_86_end:
.annotate "line", 78

                $P0 = find_lex '$key'
                $S0 = $P0
                $S0 = downcase $S0
                $P91 = box $S0
            
    concat $P92, $P91, ":<"
.annotate "line", 83
    find_lex $P93, "$/"
    unless_null $P93, vivify_57
    new $P93, "Hash"
  vivify_57:
    set $P94, $P93["OPER"]
    unless_null $P94, vivify_58
    new $P94, "Hash"
  vivify_58:
    set $P95, $P94["sym"]
    unless_null $P95, vivify_59
    new $P95, "Undef"
  vivify_59:
    concat $P96, $P92, $P95
    concat $P97, $P96, ">"
    store_lex "$name", $P97
.annotate "line", 84
    find_lex $P98, "$past"
    new $P99, "String"
    assign $P99, "&"
    find_lex $P100, "$name"
    concat $P101, $P99, $P100
    $P102 = $P98."name"($P101)
.annotate "line", 76
    .return ($P102)
.end


.namespace ["HLL";"Actions"]
.sub "_block116"  :anon :subid("17_1257089855.16271") :outer("15_1257089855.16271")
    .param pmc param_118
.annotate "line", 89
    .lex "$_", param_118
    find_lex $P121, "$_"
    $P122 = $P121."ast"()
    if $P122, if_120
    set $P119, $P122
    goto if_120_end
  if_120:
    find_lex $P123, "$past"
    find_lex $P124, "$_"
    $P125 = $P124."ast"()
    $P126 = $P123."push"($P125)
    set $P119, $P126
  if_120_end:
    .return ($P119)
.end


.namespace ["HLL";"Actions"]
.sub "termish"  :subid("18_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_137
.annotate "line", 94
    new $P136, 'ExceptionHandler'
    set_addr $P136, control_135
    $P136."handle_types"(58)
    push_eh $P136
    .lex "self", self
    .lex "$/", param_137
.annotate "line", 95
    find_lex $P138, "$/"
    find_lex $P139, "$/"
    unless_null $P139, vivify_63
    new $P139, "Hash"
  vivify_63:
    set $P140, $P139["term"]
    unless_null $P140, vivify_64
    new $P140, "Undef"
  vivify_64:
    $P141 = $P140."ast"()
    $P142 = $P138."!make"($P141)
.annotate "line", 94
    .return ($P142)
  control_135:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P143, exception, "payload"
    .return ($P143)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("19_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_147
.annotate "line", 98
    new $P146, 'ExceptionHandler'
    set_addr $P146, control_145
    $P146."handle_types"(58)
    push_eh $P146
    .lex "self", self
    .lex "$/", param_147
    find_lex $P148, "$/"
    find_lex $P149, "$/"
    unless_null $P149, vivify_65
    new $P149, "Hash"
  vivify_65:
    set $P150, $P149["circumfix"]
    unless_null $P150, vivify_66
    new $P150, "Undef"
  vivify_66:
    $P151 = $P150."ast"()
    $P152 = $P148."!make"($P151)
    .return ($P152)
  control_145:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P153, exception, "payload"
    .return ($P153)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "integer"  :subid("20_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_157
.annotate "line", 100
    new $P156, 'ExceptionHandler'
    set_addr $P156, control_155
    $P156."handle_types"(58)
    push_eh $P156
    .lex "self", self
    .lex "$/", param_157
.annotate "line", 101
    find_lex $P158, "$/"
.annotate "line", 102
    find_lex $P161, "$/"
    unless_null $P161, vivify_67
    new $P161, "Hash"
  vivify_67:
    set $P162, $P161["decint"]
    unless_null $P162, vivify_68
    new $P162, "Undef"
  vivify_68:
    if $P162, if_160
.annotate "line", 104
    find_lex $P168, "$/"
    unless_null $P168, vivify_69
    new $P168, "Hash"
  vivify_69:
    set $P169, $P168["hexint"]
    unless_null $P169, vivify_70
    new $P169, "Undef"
  vivify_70:
    if $P169, if_167
.annotate "line", 106
    find_lex $P175, "$/"
    unless_null $P175, vivify_71
    new $P175, "Hash"
  vivify_71:
    set $P176, $P175["octint"]
    unless_null $P176, vivify_72
    new $P176, "Undef"
  vivify_72:
    if $P176, if_174
.annotate "line", 107
    find_lex $P180, "$/"
    unless_null $P180, vivify_73
    new $P180, "Hash"
  vivify_73:
    set $P181, $P180["binint"]
    unless_null $P181, vivify_74
    new $P181, "Undef"
  vivify_74:
    $P182 = "string_to_int"($P181, 2)
    set $P173, $P182
.annotate "line", 106
    goto if_174_end
  if_174:
    find_lex $P177, "$/"
    unless_null $P177, vivify_75
    new $P177, "Hash"
  vivify_75:
    set $P178, $P177["octint"]
    unless_null $P178, vivify_76
    new $P178, "Undef"
  vivify_76:
    $P179 = $P178."ast"()
    set $P173, $P179
  if_174_end:
    set $P166, $P173
.annotate "line", 104
    goto if_167_end
  if_167:
    find_lex $P170, "$/"
    unless_null $P170, vivify_77
    new $P170, "Hash"
  vivify_77:
    set $P171, $P170["hexint"]
    unless_null $P171, vivify_78
    new $P171, "Undef"
  vivify_78:
    $P172 = $P171."ast"()
    set $P166, $P172
  if_167_end:
    set $P159, $P166
.annotate "line", 102
    goto if_160_end
  if_160:
    find_lex $P163, "$/"
    unless_null $P163, vivify_79
    new $P163, "Hash"
  vivify_79:
    set $P164, $P163["decint"]
    unless_null $P164, vivify_80
    new $P164, "Undef"
  vivify_80:
    $P165 = "string_to_int"($P164, 10)
    set $P159, $P165
  if_160_end:
    $P183 = $P158."!make"($P159)
.annotate "line", 100
    .return ($P183)
  control_155:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P184, exception, "payload"
    .return ($P184)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("21_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_188
.annotate "line", 112
    new $P187, 'ExceptionHandler'
    set_addr $P187, control_186
    $P187."handle_types"(58)
    push_eh $P187
    .lex "self", self
    .lex "$/", param_188
.annotate "line", 113
    find_lex $P189, "$/"
    find_lex $P190, "$/"
    $P191 = "string_to_int"($P190, 16)
    $P192 = $P189."!make"($P191)
.annotate "line", 112
    .return ($P192)
  control_186:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P193, exception, "payload"
    .return ($P193)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "octint"  :subid("22_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_197
.annotate "line", 116
    new $P196, 'ExceptionHandler'
    set_addr $P196, control_195
    $P196."handle_types"(58)
    push_eh $P196
    .lex "self", self
    .lex "$/", param_197
.annotate "line", 117
    find_lex $P198, "$/"
    find_lex $P199, "$/"
    $P200 = "string_to_int"($P199, 8)
    $P201 = $P198."!make"($P200)
.annotate "line", 116
    .return ($P201)
  control_195:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P202, exception, "payload"
    .return ($P202)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("23_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_206
.annotate "line", 120
    .const 'Sub' $P221 = "24_1257089855.16271" 
    capture_lex $P221
    new $P205, 'ExceptionHandler'
    set_addr $P205, control_204
    $P205."handle_types"(58)
    push_eh $P205
    .lex "self", self
    .lex "$/", param_206
.annotate "line", 121
    new $P207, "Undef"
    .lex "$past", $P207
    find_lex $P208, "$/"
    unless_null $P208, vivify_81
    new $P208, "Hash"
  vivify_81:
    set $P209, $P208["quote_delimited"]
    unless_null $P209, vivify_82
    new $P209, "Undef"
  vivify_82:
    $P210 = $P209."ast"()
    store_lex "$past", $P210
.annotate "line", 122
    get_hll_global $P212, ["HLL";"Grammar"], "quotemod_check"
    find_lex $P213, "$/"
    $P214 = $P212($P213, "w")
    unless $P214, if_211_end
.annotate "line", 123
    find_lex $P216, "$past"
    $P217 = "isaPAST"($P216)
    if $P217, if_215
.annotate "line", 126
    .const 'Sub' $P221 = "24_1257089855.16271" 
    capture_lex $P221
    $P221()
    goto if_215_end
  if_215:
.annotate "line", 124
    find_lex $P218, "$/"
    $P219 = $P218."CURSOR"()
    $P219."panic"("Can't form :w list from non-constant strings (yet)")
  if_215_end:
  if_211_end:
.annotate "line", 134
    find_lex $P251, "$past"
    $P252 = "isaPAST"($P251)
    isfalse $I253, $P252
    unless $I253, if_250_end
.annotate "line", 135
    get_hll_global $P254, ["PAST"], "Val"
    find_lex $P255, "$past"
    set $S256, $P255
    $P257 = $P254."new"($S256 :named("value"))
    store_lex "$past", $P257
  if_250_end:
.annotate "line", 137
    find_lex $P258, "$/"
    find_lex $P259, "$past"
    $P260 = $P258."!make"($P259)
.annotate "line", 120
    .return ($P260)
  control_204:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P261, exception, "payload"
    .return ($P261)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "_block220"  :anon :subid("24_1257089855.16271") :outer("23_1257089855.16271")
.annotate "line", 126
    .const 'Sub' $P242 = "25_1257089855.16271" 
    capture_lex $P242
.annotate "line", 127
    new $P222, "ResizablePMCArray"
    .lex "@words", $P222
    get_hll_global $P223, ["HLL";"Grammar"], "split_words"
    find_lex $P224, "$/"
    find_lex $P225, "$past"
    $P226 = $P223($P224, $P225)
    store_lex "@words", $P226
.annotate "line", 128
    find_lex $P229, "@words"
    set $N230, $P229
    new $P231, "Integer"
    assign $P231, 1
    set $N232, $P231
    isgt $I233, $N230, $N232
    if $I233, if_228
    new $P227, 'Integer'
    set $P227, $I233
    goto if_228_end
  if_228:
.annotate "line", 129
    get_hll_global $P234, ["PAST"], "Op"
    find_lex $P235, "$/"
    $P236 = $P234."new"("list" :named("pasttype"), $P235 :named("node"))
    store_lex "$past", $P236
.annotate "line", 130
    find_lex $P238, "@words"
    defined $I239, $P238
    unless $I239, for_undef_83
    iter $P237, $P238
    new $P248, 'ExceptionHandler'
    set_addr $P248, loop247_handler
    $P248."handle_types"(65, 67, 66)
    push_eh $P248
  loop247_test:
    unless $P237, loop247_done
    shift $P240, $P237
  loop247_redo:
    .const 'Sub' $P242 = "25_1257089855.16271" 
    capture_lex $P242
    $P242($P240)
  loop247_next:
    goto loop247_test
  loop247_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P249, exception, 'type'
    eq $P249, 65, loop247_next
    eq $P249, 67, loop247_redo
  loop247_done:
    pop_eh 
  for_undef_83:
.annotate "line", 128
    set $P227, $P237
  if_228_end:
.annotate "line", 126
    .return ($P227)
.end


.namespace ["HLL";"Actions"]
.sub "_block241"  :anon :subid("25_1257089855.16271") :outer("24_1257089855.16271")
    .param pmc param_243
.annotate "line", 130
    .lex "$_", param_243
    find_lex $P244, "$past"
    find_lex $P245, "$_"
    $P246 = $P244."push"($P245)
    .return ($P246)
.end


.namespace ["HLL";"Actions"]
.sub "quote_delimited"  :subid("26_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_265
.annotate "line", 140
    .const 'Sub' $P277 = "27_1257089855.16271" 
    capture_lex $P277
    new $P264, 'ExceptionHandler'
    set_addr $P264, control_263
    $P264."handle_types"(58)
    push_eh $P264
    .lex "self", self
    .lex "$/", param_265
.annotate "line", 141
    new $P266, "ResizablePMCArray"
    .lex "@parts", $P266
.annotate "line", 142
    new $P267, "Undef"
    .lex "$lastlit", $P267
.annotate "line", 158
    new $P268, "Undef"
    .lex "$past", $P268
.annotate "line", 140
    find_lex $P269, "@parts"
.annotate "line", 142
    new $P270, "String"
    assign $P270, ""
    store_lex "$lastlit", $P270
.annotate "line", 143
    find_lex $P272, "$/"
    unless_null $P272, vivify_84
    new $P272, "Hash"
  vivify_84:
    set $P273, $P272["quote_atom"]
    unless_null $P273, vivify_85
    new $P273, "Undef"
  vivify_85:
    defined $I274, $P273
    unless $I274, for_undef_86
    iter $P271, $P273
    new $P309, 'ExceptionHandler'
    set_addr $P309, loop308_handler
    $P309."handle_types"(65, 67, 66)
    push_eh $P309
  loop308_test:
    unless $P271, loop308_done
    shift $P275, $P271
  loop308_redo:
    .const 'Sub' $P277 = "27_1257089855.16271" 
    capture_lex $P277
    $P277($P275)
  loop308_next:
    goto loop308_test
  loop308_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P310, exception, 'type'
    eq $P310, 65, loop308_next
    eq $P310, 67, loop308_redo
  loop308_done:
    pop_eh 
  for_undef_86:
.annotate "line", 157
    find_lex $P312, "$lastlit"
    set $S313, $P312
    isgt $I314, $S313, ""
    unless $I314, if_311_end
    find_lex $P315, "@parts"
    find_lex $P316, "$lastlit"
    $P315."push"($P316)
  if_311_end:
.annotate "line", 158
    find_lex $P319, "@parts"
    if $P319, if_318
    new $P322, "String"
    assign $P322, ""
    set $P317, $P322
    goto if_318_end
  if_318:
    find_lex $P320, "@parts"
    $P321 = $P320."shift"()
    set $P317, $P321
  if_318_end:
    store_lex "$past", $P317
.annotate "line", 159
    new $P330, 'ExceptionHandler'
    set_addr $P330, loop329_handler
    $P330."handle_types"(65, 67, 66)
    push_eh $P330
  loop329_test:
    find_lex $P323, "@parts"
    unless $P323, loop329_done
  loop329_redo:
.annotate "line", 160
    get_hll_global $P324, ["PAST"], "Op"
    find_lex $P325, "$past"
    find_lex $P326, "@parts"
    $P327 = $P326."shift"()
    $P328 = $P324."new"($P325, $P327, "concat" :named("pirop"))
    store_lex "$past", $P328
  loop329_next:
.annotate "line", 159
    goto loop329_test
  loop329_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P331, exception, 'type'
    eq $P331, 65, loop329_next
    eq $P331, 67, loop329_redo
  loop329_done:
    pop_eh 
.annotate "line", 162
    find_lex $P332, "$/"
    find_lex $P333, "$past"
    $P334 = $P332."!make"($P333)
.annotate "line", 140
    .return ($P334)
  control_263:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P335, exception, "payload"
    .return ($P335)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "_block276"  :anon :subid("27_1257089855.16271") :outer("26_1257089855.16271")
    .param pmc param_279
.annotate "line", 144
    new $P278, "Undef"
    .lex "$ast", $P278
    .lex "$_", param_279
    find_lex $P280, "$_"
    $P281 = $P280."ast"()
    store_lex "$ast", $P281
.annotate "line", 145
    find_lex $P284, "$ast"
    $P285 = "isaPAST"($P284)
    isfalse $I286, $P285
    if $I286, if_283
.annotate "line", 148
    find_lex $P292, "$ast"
    get_hll_global $P293, ["PAST"], "Val"
    $P294 = $P292."isa"($P293)
    if $P294, if_291
.annotate "line", 152
    find_lex $P300, "$lastlit"
    set $S301, $P300
    isgt $I302, $S301, ""
    unless $I302, if_299_end
    find_lex $P303, "@parts"
    find_lex $P304, "$lastlit"
    $P303."push"($P304)
  if_299_end:
.annotate "line", 153
    find_lex $P305, "@parts"
    find_lex $P306, "$ast"
    $P305."push"($P306)
.annotate "line", 154
    new $P307, "String"
    assign $P307, ""
    store_lex "$lastlit", $P307
.annotate "line", 151
    set $P290, $P307
.annotate "line", 148
    goto if_291_end
  if_291:
.annotate "line", 149
    find_lex $P295, "$lastlit"
    find_lex $P296, "$ast"
    $S297 = $P296."value"()
    concat $P298, $P295, $S297
    store_lex "$lastlit", $P298
.annotate "line", 148
    set $P290, $P298
  if_291_end:
    set $P282, $P290
.annotate "line", 145
    goto if_283_end
  if_283:
.annotate "line", 146
    find_lex $P287, "$lastlit"
    find_lex $P288, "$ast"
    concat $P289, $P287, $P288
    store_lex "$lastlit", $P289
.annotate "line", 145
    set $P282, $P289
  if_283_end:
.annotate "line", 143
    .return ($P282)
.end


.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("28_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_339
.annotate "line", 165
    new $P338, 'ExceptionHandler'
    set_addr $P338, control_337
    $P338."handle_types"(58)
    push_eh $P338
    .lex "self", self
    .lex "$/", param_339
.annotate "line", 166
    find_lex $P340, "$/"
    find_lex $P343, "$/"
    unless_null $P343, vivify_87
    new $P343, "Hash"
  vivify_87:
    set $P344, $P343["quote_escape"]
    unless_null $P344, vivify_88
    new $P344, "Undef"
  vivify_88:
    if $P344, if_342
    find_lex $P348, "$/"
    set $S349, $P348
    new $P341, 'String'
    set $P341, $S349
    goto if_342_end
  if_342:
    find_lex $P345, "$/"
    unless_null $P345, vivify_89
    new $P345, "Hash"
  vivify_89:
    set $P346, $P345["quote_escape"]
    unless_null $P346, vivify_90
    new $P346, "Undef"
  vivify_90:
    $P347 = $P346."ast"()
    set $P341, $P347
  if_342_end:
    $P350 = $P340."!make"($P341)
.annotate "line", 165
    .return ($P350)
  control_337:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P351, exception, "payload"
    .return ($P351)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("29_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_355
.annotate "line", 169
    new $P354, 'ExceptionHandler'
    set_addr $P354, control_353
    $P354."handle_types"(58)
    push_eh $P354
    .lex "self", self
    .lex "$/", param_355
    find_lex $P356, "$/"
    $P357 = $P356."!make"("\\")
    .return ($P357)
  control_353:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P358, exception, "payload"
    .return ($P358)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("30_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_362
.annotate "line", 170
    new $P361, 'ExceptionHandler'
    set_addr $P361, control_360
    $P361."handle_types"(58)
    push_eh $P361
    .lex "self", self
    .lex "$/", param_362
    find_lex $P363, "$/"
    find_lex $P364, "$/"
    unless_null $P364, vivify_91
    new $P364, "Hash"
  vivify_91:
    set $P365, $P364["stopper"]
    unless_null $P365, vivify_92
    new $P365, "Undef"
  vivify_92:
    set $S366, $P365
    $P367 = $P363."!make"($S366)
    .return ($P367)
  control_360:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P368, exception, "payload"
    .return ($P368)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("31_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_372
.annotate "line", 172
    new $P371, 'ExceptionHandler'
    set_addr $P371, control_370
    $P371."handle_types"(58)
    push_eh $P371
    .lex "self", self
    .lex "$/", param_372
    find_lex $P373, "$/"
    $P374 = $P373."!make"("\b")
    .return ($P374)
  control_370:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P375, exception, "payload"
    .return ($P375)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("32_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_379
.annotate "line", 173
    new $P378, 'ExceptionHandler'
    set_addr $P378, control_377
    $P378."handle_types"(58)
    push_eh $P378
    .lex "self", self
    .lex "$/", param_379
    find_lex $P380, "$/"
    $P381 = $P380."!make"("\n")
    .return ($P381)
  control_377:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P382, exception, "payload"
    .return ($P382)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("33_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_386
.annotate "line", 174
    new $P385, 'ExceptionHandler'
    set_addr $P385, control_384
    $P385."handle_types"(58)
    push_eh $P385
    .lex "self", self
    .lex "$/", param_386
    find_lex $P387, "$/"
    $P388 = $P387."!make"("\r")
    .return ($P388)
  control_384:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P389, exception, "payload"
    .return ($P389)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("34_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_393
.annotate "line", 175
    new $P392, 'ExceptionHandler'
    set_addr $P392, control_391
    $P392."handle_types"(58)
    push_eh $P392
    .lex "self", self
    .lex "$/", param_393
    find_lex $P394, "$/"
    $P395 = $P394."!make"("\t")
    .return ($P395)
  control_391:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P396, exception, "payload"
    .return ($P396)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("35_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_400
.annotate "line", 177
    new $P399, 'ExceptionHandler'
    set_addr $P399, control_398
    $P399."handle_types"(58)
    push_eh $P399
    .lex "self", self
    .lex "$/", param_400
.annotate "line", 178
    find_lex $P401, "$/"
    find_lex $P404, "$/"
    unless_null $P404, vivify_93
    new $P404, "Hash"
  vivify_93:
    set $P405, $P404["hexint"]
    unless_null $P405, vivify_94
    new $P405, "Undef"
  vivify_94:
    if $P405, if_403
    find_lex $P408, "$/"
    unless_null $P408, vivify_95
    new $P408, "Hash"
  vivify_95:
    set $P409, $P408["hexints"]
    unless_null $P409, vivify_96
    new $P409, "Hash"
  vivify_96:
    set $P410, $P409["hexint"]
    unless_null $P410, vivify_97
    new $P410, "Undef"
  vivify_97:
    set $P402, $P410
    goto if_403_end
  if_403:
    find_lex $P406, "$/"
    unless_null $P406, vivify_98
    new $P406, "Hash"
  vivify_98:
    set $P407, $P406["hexint"]
    unless_null $P407, vivify_99
    new $P407, "Undef"
  vivify_99:
    set $P402, $P407
  if_403_end:
    $P411 = "ints_to_string"($P402)
    $P412 = $P401."!make"($P411)
.annotate "line", 177
    .return ($P412)
  control_398:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P413, exception, "payload"
    .return ($P413)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("36_1257089855.16271") :method :outer("11_1257089855.16271")
    .param pmc param_417
.annotate "line", 181
    new $P416, 'ExceptionHandler'
    set_addr $P416, control_415
    $P416."handle_types"(58)
    push_eh $P416
    .lex "self", self
    .lex "$/", param_417
.annotate "line", 182
    find_lex $P418, "$/"
    find_lex $P421, "$/"
    unless_null $P421, vivify_100
    new $P421, "Hash"
  vivify_100:
    set $P422, $P421["octint"]
    unless_null $P422, vivify_101
    new $P422, "Undef"
  vivify_101:
    if $P422, if_420
    find_lex $P425, "$/"
    unless_null $P425, vivify_102
    new $P425, "Hash"
  vivify_102:
    set $P426, $P425["octints"]
    unless_null $P426, vivify_103
    new $P426, "Hash"
  vivify_103:
    set $P427, $P426["octint"]
    unless_null $P427, vivify_104
    new $P427, "Undef"
  vivify_104:
    set $P419, $P427
    goto if_420_end
  if_420:
    find_lex $P423, "$/"
    unless_null $P423, vivify_105
    new $P423, "Hash"
  vivify_105:
    set $P424, $P423["octint"]
    unless_null $P424, vivify_106
    new $P424, "Undef"
  vivify_106:
    set $P419, $P424
  if_420_end:
    $P428 = "ints_to_string"($P419)
    $P429 = $P418."!make"($P428)
.annotate "line", 181
    .return ($P429)
  control_415:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P430, exception, "payload"
    .return ($P430)
    rethrow exception
.end


=head1 AUTHOR

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=head1 COPYRIGHT

Copyright (C) 2009, Patrick R. Michaud

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
