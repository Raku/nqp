# Copyright (C) 2009, Patrick R. Michaud
# $Id$

=head1 NAME

Regex::P6Regex - Parser/compiler for Perl 6 regexes

=head1 DESCRIPTION

=cut

### .include 'src/cheats/hll-compiler.pir'
# we have to overload PCT::HLLCompiler's parse method to support P6Regex grammars


.namespace ['HLL';'Compiler']

.sub '' :anon :init :load
    load_bytecode 'PCT.pbc'
    .local pmc p6meta
    p6meta = get_hll_global 'P6metaclass'
    p6meta.'new_class'('HLL::Compiler', 'parent'=>'PCT::HLLCompiler')
.end
   

.sub 'parse' :method
    .param pmc source
    .param pmc options         :slurpy :named

    .local pmc parsegrammar, parseactions, match
    parsegrammar = self.'parsegrammar'()
    parseactions = self.'parseactions'()
    $I0 = isa parsegrammar, ['Regex';'Cursor']
    unless $I0 goto parse_old

    match = parsegrammar.'parse'(source, 'from'=>0, 'action'=>parseactions)
    unless match goto err_parsefail
    .return (match)

  err_parsefail:
    self.'panic'('Unable to parse source')
    .return (match)

  parse_old:
    $I0 = isa parsegrammar, ['NameSpace']
    if $I0 goto parse_old_1
    ##  switch from protoobjects to classes, then call parent
    $P0 = parsegrammar.'HOW'()
    $P0 = getattribute $P0, 'parrotclass'
    parsegrammar = $P0.'get_namespace'()
    self.'parsegrammar'(parsegrammar)

    $P0 = parseactions.'HOW'()
    $P0 = getattribute $P0, 'parrotclass'
    parseactions = $P0.'get_namespace'()
    self.'parseactions'(parseactions)

  parse_old_1:
    $P0 = get_hll_global ['PCT'], 'HLLCompiler'
    $P1 = find_method $P0, 'parse'
    .tailcall self.$P1(source, options :flat :named)
.end

# these will eventually move to Regex.pir
### .include 'src/PAST/Regex.pir'
# $Id: Regex.pir 41578 2009-09-30 14:45:23Z pmichaud $

=head1 NAME

PAST::Regex - Regex nodes for PAST

=head1 DESCRIPTION

This file implements the various abstract syntax tree nodes
for regular expressions.  

=cut

.namespace ['PAST';'Regex']

.sub '' :init :load
    load_bytecode 'PCT.pbc'
    .local pmc p6meta
    p6meta = get_hll_global 'P6metaclass'
    p6meta.'new_class'('PAST::Regex', 'parent'=>'PAST::Node')
.end


.sub 'backtrack' :method
    .param pmc value           :optional
    .param int has_value       :opt_flag
    .tailcall self.'attr'('backtrack', value, has_value)
.end


.sub 'capnames' :method
    .param pmc value           :optional
    .param int has_value       :opt_flag
    .tailcall self.'attr'('capnames', value, has_value)
.end


.sub 'negate' :method
    .param pmc value           :optional
    .param int has_value       :opt_flag
    .tailcall self.'attr'('negate', value, has_value)
.end


.sub 'min' :method
    .param pmc value           :optional
    .param int has_value       :opt_flag
    .tailcall self.'attr'('min', value, has_value)
.end


.sub 'max' :method
    .param pmc value           :optional
    .param int has_value       :opt_flag
    .tailcall self.'attr'('max', value, has_value)
.end


.sub 'pasttype' :method
    .param pmc value           :optional
    .param int has_value       :opt_flag
    .tailcall self.'attr'('pasttype', value, has_value)
.end


.sub 'sep' :method
    .param pmc value           :optional
    .param int has_value       :opt_flag
    .tailcall self.'attr'('sep', value, has_value)
.end


.sub 'subtype' :method
    .param pmc value           :optional
    .param int has_value       :opt_flag
    .tailcall self.'attr'('subtype', value, has_value)
.end


.sub 'zerowidth' :method
    .param pmc value           :optional
    .param int has_value       :opt_flag
    .tailcall self.'attr'('zerowidth', value, has_value)
.end


=item prefix()

Returns the prefixes associated with the regex tree rooted
at this node.

=cut

.sub 'prefix' :method
    .param string prefix
    .param pmc tail            :slurpy

    .local string pasttype
    pasttype = self.'pasttype'()
    if pasttype goto have_pasttype
    pasttype = 'concat'
  have_pasttype:

    if pasttype == 'scan' goto prefix_skip

    $S0 = concat 'prefix_', pasttype
    $I0 = can self, $S0
    unless $I0 goto prefix_done
    .tailcall self.$S0(prefix, tail)

  prefix_skip:
    unless tail goto prefix_done
    .local pmc head
    head = shift tail
    .tailcall head.'prefix'(prefix, tail :flat)

  prefix_done:
    .return (prefix)
.end


.sub 'prefix_alt' :method
    .param string prefix
    .param pmc tail

    .local pmc child_it, results
    child_it = self.'iterator'()
    results = new ['ResizablePMCArray']
  child_loop:
    unless child_it goto child_done
    $P0 = shift child_it
    ($P1 :slurpy) = $P0.'prefix'(prefix, tail :flat)
    splice results, $P1, 0, 0
    goto child_loop
  child_done:
    .return (results :flat)
.end


.sub 'prefix_alt_longest' :method
    .param string prefix
    .param pmc tail
    .tailcall self.'prefix_alt'(prefix, tail :flat)
.end


.sub 'prefix_concat' :method
    .param string prefix
    .param pmc tail

    $P0 = self.'list'()
    splice tail, $P0, 0, 0
    unless tail goto done
    $P1 = shift tail
    .tailcall $P1.'prefix'(prefix, tail :flat)
  done:
    .return (prefix)
.end


.sub 'prefix_literal' :method
    .param string prefix
    .param pmc tail

    .local pmc lpast
    lpast = self[0]
    $I0 = isa lpast, ['String']
    unless $I0 goto done
    
    .local string subtype
    subtype = self.'subtype'()
    if subtype == 'ignorecase' goto done

    $S0 = lpast
    prefix = concat prefix, $S0
    unless tail goto done
    $P0 = shift tail
    .tailcall $P0.'prefix'(prefix, tail :flat)

  done:
    .return (prefix)
.end


.sub 'prefix_enumcharlist' :method
    .param string prefix
    .param pmc tail

    .local pmc negate
    negate = self.'negate'()
    .local string subtype, charlist
    subtype = self.'subtype'()
    charlist = self[0]

    if negate goto charlist_negate

    unless tail goto charlist_notail
    if subtype == 'zerowidth' goto charlist_notail

    .local pmc result, head
    result = new ['ResizablePMCArray']
    head = shift tail

    .local int pos, eos
    eos = length charlist
    pos = 0
  charlist_loop:
    unless pos < eos goto charlist_done
    .local string char
    char = substr charlist, pos, 1
    $S0 = concat prefix, char
    ($P0 :slurpy) = head.'prefix'($S0, tail :flat)
    splice result, $P0, 0, 0
    inc pos
    goto charlist_loop
  charlist_done:
    .return (result :flat)

  charlist_notail:
    $P0 = split '', charlist
    .return ($P0 :flat)

  charlist_negate:
    if subtype == 'zerowidth' goto charlist_negate_0
    unless tail goto charlist_negate_0
    .return (prefix)
  charlist_negate_0:
    head = shift tail
    .tailcall head.'prefix'(prefix, tail :flat)
.end


.sub 'prefix_subcapture' :method
    .param string prefix
    .param pmc tail

    .tailcall self.'prefix_concat'(prefix, tail)
.end

.sub 'prefix_subrule' :method
    .param string prefix
    .param pmc tail

    goto subrule_none

    .local pmc name, negate, subtype
    name = self.'name'()
    negate = self.'negate'()
    subtype = self.'subtype'()
    $I0 = does name, 'string'
    unless $I0 goto subrule_none
    if negate goto subrule_none
    if subtype == 'zerowidth' goto subrule_none

    .local pmc selfpast, spast
    $P99 = get_hll_global ['PAST'], 'Var'
    selfpast = $P99.'new'( 'name'=>'self', 'scope'=>'register')
    $P99 = get_hll_global ['PAST'], 'Op'
    spast = $P99.'new'( selfpast, name, prefix, 'name'=>'!subrule_peek', 'pasttype'=>'callmethod')
    .return (spast)

  subrule_none:
    .return (prefix)
.end

=back


=head1 AUTHOR

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.
Please send patches and suggestions to the Parrot porters or
Perl 6 compilers mailing lists.

=head1 COPYRIGHT

Copyright (C) 2009, Patrick R. Michaud.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
### .include 'src/PAST/Compiler-Regex.pir'
# $Id$

=head1 NAME

PAST::Compiler-Regex - Compiler for PAST::Regex nodes

=head1 DESCRIPTION

PAST::Compiler-Regex implements the transformations to convert 
PAST::Regex nodes into POST.  It's still a part of PAST::Compiler;
we've separated out the regex-specific transformations here for
better code management and debugging.

=head2 Compiler methods

=head3 C<PAST::Regex>

=over 4

=item as_post(PAST::Regex node)

Return the POST representation of the regex AST rooted by C<node>.

=cut

.include 'cclass.pasm'
### .include 'src/Regex/constants.pir'
.const int CURSOR_FAIL = -1
.const int CURSOR_FAIL_GROUP = -2
.const int CURSOR_FAIL_RULE = -3
.const int CURSOR_FAIL_MATCH = -4

.const int CURSOR_TYPE_SCAN = 1
.const int CURSOR_TYPE_PEEK = 2

.namespace ['PAST';'Compiler']

.sub 'as_post' :method :multi(_, ['PAST';'Regex'])
    .param pmc node
    .param pmc options         :slurpy :named

    .local pmc ops
    ops = self.'post_new'('Ops', 'node'=>node)

    .local pmc reghash
    reghash = new ['Hash']
    .lex '$*REG', reghash

    .local pmc regexname, regexname_esc
    $P0 = get_global '@?BLOCK'
    $P1 = $P0[0]
    $S0 = $P1.'name'()
    regexname = box $S0
    regexname_esc = self.'escape'($S0)
    .lex '$*REGEXNAME', regexname

    .local string prefix, rname, rtype
    prefix = self.'unique'('rx')
    concat prefix, '_'
    $P0 = split ' ', 'tgt string pos int off int eos int rep int cur pmc'
    $P1 = iter $P0
  iter_loop:
    unless $P1 goto iter_done
    rname = shift $P1
    rtype = shift $P1
    $S1 = concat prefix, rname
    reghash[rname] = $S1
    $S2 = concat '.local ', rtype
    ops.'push_pirop'($S2, $S1)
    goto iter_loop
  iter_done:

    .local pmc startlabel, donelabel, faillabel
    $S0 = concat prefix, 'start'
    startlabel = self.'post_new'('Label', 'result'=>$S0)
    $S0 = concat prefix, 'done'
    donelabel = self.'post_new'('Label', 'result'=>$S0)
    $S0 = concat prefix, 'fail'
    faillabel = self.'post_new'('Label', 'result'=>$S0)
    reghash['fail'] = faillabel

    # If capnames is available, it's a hash where each key is the
    # name of a potential subcapture and the value is greater than 1
    # if it's to be an array.  This builds a list of arrayed subcaptures
    # for use by "!cursor_caparray" below.
    .local pmc capnames, capnames_it, caparray
    capnames = node.'capnames'()
    caparray = box 0
    unless capnames goto capnames_done
    capnames_it = iter capnames
    caparray = new ['ResizablePMCArray']
  capnames_loop:
    unless capnames_it goto capnames_done
    $S0 = shift capnames_it
    $I0 = capnames[$S0]
    unless $I0 > 1 goto capnames_loop
    $S0 = self.'escape'($S0)
    push caparray, $S0
    goto capnames_loop
  capnames_done:

    .local string cur, rep, pos, tgt, off, eos
    (cur, rep, pos, tgt, off, eos) = self.'!rxregs'('cur rep pos tgt off eos')

    unless regexname goto peek_done
    .local pmc tpast, token, tpost
    $P99 = get_hll_global ['PAST'], 'Op'
    tpast = $P99.'new'( 'pasttype'=>'list', 'node'=>node )
    (token :slurpy) = node.'prefix'('')
  token_loop:
    unless token goto token_done
    $P0 = shift token
    push tpast, $P0
    goto token_loop
  token_done:
    $S0 = regexname
    $S0 = concat '!PREFIX__', $S0
    $P99 = get_hll_global ['PAST'], 'Block'
    tpast = $P99.'new'(tpast, 'name'=>$S0, 'lexical'=>0, 'blocktype'=>'method')
    tpost = self.'as_post'(tpast, 'rtype'=>'v')
    ops.'push'(tpost)
  peek_done:

    $S0 = concat '(', cur
    concat $S0, ', '
    concat $S0, pos
    concat $S0, ', '
    concat $S0, tgt
    concat $S0, ', $I10)'
    ops.'push_pirop'('callmethod', '"!cursor_start"', 'self', 'result'=>$S0)
    self.'!cursorop'(ops, '!cursor_debug', 0, '"START "', regexname_esc) 
    unless caparray goto caparray_skip
    self.'!cursorop'(ops, '!cursor_caparray', 0, caparray :flat)
  caparray_skip:

    ops.'push_pirop'('.lex', 'unicode:"$\x{a2}"', cur)
    ops.'push_pirop'('length', eos, tgt, 'result'=>eos)

    # On Parrot, indexing into variable-width encoded strings 
    # (such as utf8) becomes much more expensive as we move
    # farther away from the beginning of the string (via calls
    # to utf8_skip_forward).  For regexes that are starting a match 
    # at a position other than the beginning of the string (e.g.,
    # a subrule call), we can save a lot of useless scanning work
    # in utf8_skip_forward by removing the first C<off = from-1> 
    # characters from the target and then performing all indexed
    # operations on the resulting target relative to C<off>.
    
    ops.'push_pirop'('set', off, 0)
    ops.'push_pirop'('lt', '$I10', 2, startlabel)
    ops.'push_pirop'('sub', off, '$I10', 1, 'result'=>off)
    ops.'push_pirop'('substr', tgt, tgt, off, 'result'=>tgt)
    ops.'push'(startlabel)

    $P0 = self.'post_regex'(node)
    ops.'push'($P0)
    ops.'push'(faillabel)
    self.'!cursorop'(ops, '!mark_fail', 4, rep, pos, '$I10', '$P10', 0)
    ops.'push_pirop'('lt', pos, CURSOR_FAIL, donelabel)
    ops.'push_pirop'('eq', pos, CURSOR_FAIL, faillabel)
    ops.'push_pirop'('jump', '$I10')
    ops.'push'(donelabel)
    self.'!cursorop'(ops, '!cursor_fail', 0)
    self.'!cursorop'(ops, '!cursor_debug', 0, '"FAIL  "', regexname_esc)
    ops.'push_pirop'('return', cur)
    .return (ops)
.end

=item !cursorop(ops, func, retelems, arg :slurpy)

Helper function to push POST nodes onto C<ops> that perform C<func>
on the regex's current cursor.  By default this ends up being a method
call on the cursor, but some values of C<func> can result in inlined
code to perform the equivalent operation without using the method call.

The C<retelems> argument is the number of elements in C<arg> that
represent return values from the function; any remaining elements in arg
are passed to the function as input arguments.

=cut

.sub '!cursorop' :method
    .param pmc ops
    .param string func
    .param int retelems
    .param pmc args            :slurpy

    if retelems < 1 goto result_done
    .local pmc retargs
    retargs = new ['ResizableStringArray']
    $I0 = retelems
  retargs_loop:
    unless $I0 > 0 goto retargs_done
    $S0 = shift args
    push retargs, $S0
    dec $I0
    goto retargs_loop
  retargs_done:
    .local string result
    result = join ', ', retargs
    result = concat '(', result
    concat result, ')'
  result_done:

    .local pmc cur
    cur = self.'!rxregs'('cur')
    $S0 = self.'escape'(func)
    $P0 = ops.'push_pirop'('callmethod', $S0, cur, args :flat)
    if retelems < 1 goto done
    $P0.'result'(result)
  done:
    .return (ops)
.end
    

=item !rxregs(keystr)

Helper function -- looks up the current regex register table
in the dynamic scope and returns a slice based on the keys
given in C<keystr>.

=cut

.sub '!rxregs' :method
    .param string keystr

    .local pmc keys, reghash, vals
    keys = split ' ', keystr
    reghash = find_dynamic_lex '$*REG'
    vals = new ['ResizablePMCArray']
  keys_loop:
    unless keys goto keys_done
    $S0 = shift keys
    $P0 = reghash[$S0]
    push vals, $P0
    goto keys_loop
  keys_done:
    .return (vals :flat)
.end


=item post_regex(PAST::Regex node)

Return the POST representation of the regex component given by C<node>.
Normally this is handled by redispatching to a method corresponding to
the node's "pasttype" and "backtrack" attributes.  If no "pasttype" is
given, then "concat" is assumed.

=cut

.sub 'post_regex' :method :multi(_, ['PAST';'Regex'])
    .param pmc node
    .param string cur          :optional
    .param int have_cur        :opt_flag

    .local string pasttype
    pasttype = node.'pasttype'()
    if pasttype goto have_pasttype
    pasttype = 'concat'
  have_pasttype:
    $P0 = find_method self, pasttype
    $P1 = self.$P0(node)
    unless have_cur goto done
    $S0 = $P1.'result'()
    if $S0 == cur goto done
    $P1 = self.'coerce'($P1, cur)
  done:
    .return ($P1)
.end


.sub 'post_regex' :method :multi(_, _)
    .param pmc node
    .param string cur          :optional
    .param int have_cur        :opt_flag

    $P0 = self.'as_post'(node)
    unless have_cur goto done
    $P0 = self.'coerce'($P0, cur)
  done:
    .return ($P0)
.end


=item alt(PAST::Regex node)

=cut

.sub 'alt' :method :multi(_, ['PAST';'Regex'])
    .param pmc node

    .local pmc cur, pos
    (cur, pos) = self.'!rxregs'('cur pos')

    .local string name
    name = self.'unique'('alt')
    concat name, '_'

    .local pmc ops, iter
    ops = self.'post_new'('Ops', 'node'=>node, 'result'=>cur)
    iter = node.'iterator'()
    unless iter goto done

    .local int acount
    .local pmc alabel, endlabel
    acount = 0
    $S0 = acount
    $S0 = concat name, $S0
    alabel = self.'post_new'('Label', 'result'=>$S0)
    $S0 = concat name, 'end'
    endlabel = self.'post_new'('Label', 'result'=>$S0)

  iter_loop:
    ops.'push'(alabel)
    .local pmc apast, apost
    apast = shift iter
    apost = self.'post_regex'(apast, cur)
    unless iter goto iter_done
    inc acount
    $S0 = acount
    $S0 = concat name, $S0
    alabel = self.'post_new'('Label', 'result'=>$S0)
    ops.'push_pirop'('set_addr', '$I10', alabel)
    self.'!cursorop'(ops, '!mark_push', 0, 0, pos, '$I10')
    ops.'push'(apost)
    ops.'push_pirop'('goto', endlabel)
    goto iter_loop
  iter_done:
    ops.'push'(apost)
    ops.'push'(endlabel)
  done:
    .return (ops)
.end


=item alt_longest(PAST::Regex node)

Same as 'alt' above, but use declarative/LTM semantics.
(Currently we cheat and just use 'alt' above.)

=cut

.sub 'alt_longest' :method
    .param pmc node
    .tailcall self.'alt'(node)
.end


=item anchor(PAST::Regex node)

Match various anchor points, including ^, ^^, $, $$.

=cut

.sub 'anchor' :method :multi(_, ['PAST';'Regex'])
    .param pmc node

    .local pmc cur, tgt, pos, off, eos, fail, ops
    (cur, tgt, pos, off, eos, fail) = self.'!rxregs'('cur tgt pos off eos fail')
    ops = self.'post_new'('Ops', 'node'=>node, 'result'=>cur)

    .local string subtype
    subtype = node.'subtype'()

    ops.'push_pirop'('inline', subtype, 'inline'=>'  # rxanchor %0')

    if subtype == 'null' goto done
    if subtype == 'fail' goto anchor_fail
    if subtype == 'bos' goto anchor_bos
    if subtype == 'eos' goto anchor_eos
    if subtype == 'lwb' goto anchor_lwb
    if subtype == 'rwb' goto anchor_rwb

    .local pmc donelabel
    $S0 = self.'unique'('rxanchor')
    concat $S0, '_done'
    donelabel = self.'post_new'('Label', 'result'=>$S0)

    if subtype == 'bol' goto anchor_bol
    if subtype == 'eol' goto anchor_eol

    self.'panic'('Unrecognized subtype "', subtype, '" in PAST::Regex anchor node')

  anchor_fail:
    ops.'push_pirop'('goto', fail)
    goto done

  anchor_bos:
    ops.'push_pirop'('ne', pos, 0, fail)
    goto done

  anchor_eos:
    ops.'push_pirop'('ne', pos, eos, fail)
    goto done

  anchor_bol:
    ops.'push_pirop'('eq', pos, 0, donelabel)
    ops.'push_pirop'('ge', pos, eos, fail)
    ops.'push_pirop'('sub', '$I10', pos, off)
    ops.'push_pirop'('dec', '$I10')
    ops.'push_pirop'('is_cclass', '$I11', .CCLASS_NEWLINE, tgt, '$I10')
    ops.'push_pirop'('unless', '$I11', fail)
    ops.'push'(donelabel)
    goto done

  anchor_eol:
    ops.'push_pirop'('sub', '$I10', pos, off)
    ops.'push_pirop'('is_cclass', '$I11', .CCLASS_NEWLINE, tgt, '$I10')
    ops.'push_pirop'('if', '$I11', donelabel)
    ops.'push_pirop'('ne', pos, eos, fail)
    ops.'push_pirop'('eq', pos, 0, donelabel)
    ops.'push_pirop'('dec', '$I10')
    ops.'push_pirop'('is_cclass', '$I11', .CCLASS_NEWLINE, tgt, '$I10')
    ops.'push_pirop'('if', '$I11', fail)
    ops.'push'(donelabel)
    goto done

  anchor_lwb:
    ops.'push_pirop'('ge', pos, eos, fail)
    ops.'push_pirop'('sub', '$I10', pos, off)
    ops.'push_pirop'('is_cclass', '$I11', .CCLASS_WORD, tgt, '$I10')
    ops.'push_pirop'('unless', '$I11', fail)
    ops.'push_pirop'('dec', '$I10')
    ops.'push_pirop'('is_cclass', '$I11', .CCLASS_WORD, tgt, '$I10')
    ops.'push_pirop'('if', '$I11', fail)
    goto done

  anchor_rwb:
    ops.'push_pirop'('le', pos, 0, fail)
    ops.'push_pirop'('sub', '$I10', pos, off)
    ops.'push_pirop'('is_cclass', '$I11', .CCLASS_WORD, tgt, '$I10')
    ops.'push_pirop'('if', '$I11', fail)
    ops.'push_pirop'('dec', '$I10')
    ops.'push_pirop'('is_cclass', '$I11', .CCLASS_WORD, tgt, '$I10')
    ops.'push_pirop'('unless', '$I11', fail)
    goto done

  done:
    .return (ops)
.end


=item charclass(PAST::Regex node)

Match something in a character class, such as \w, \d, \s, dot, etc.

=cut

.sub 'charclass' :method
    .param pmc node

    .local string subtype
    .local int cclass, negate
    (subtype, cclass, negate) = self.'!charclass_init'(node)

    .local pmc cur, tgt, pos, off, eos, fail, ops
    (cur, tgt, pos, off, eos, fail) = self.'!rxregs'('cur tgt pos off eos fail')
    ops = self.'post_new'('Ops', 'node'=>node, 'result'=>cur)

    ops.'push_pirop'('inline', subtype, 'inline'=>'  # rx charclass %0')
    ops.'push_pirop'('ge', pos, eos, fail)
    if cclass == .CCLASS_ANY goto charclass_done

    .local pmc cctest
    cctest = self.'??!!'(negate, 'if', 'unless')

    ops.'push_pirop'('sub', '$I10', pos, off)
    ops.'push_pirop'('is_cclass', '$I11', cclass, tgt, '$I10')
    ops.'push_pirop'(cctest, '$I11', fail)
    unless subtype == 'nl' goto charclass_done
    # handle logical newline here
    ops.'push_pirop'('substr', '$S10', tgt, '$I10', 2)
    ops.'push_pirop'('iseq', '$I11', '$S10', '"\r\n"')
    ops.'push_pirop'('add', pos, '$I11')

  charclass_done:
    ops.'push_pirop'('inc', pos)

    .return (ops)
.end


=item !charclass_init(PAST::Regex node)

Return the subtype, cclass value, and negation for a
charclass C<node>.

=cut

.sub '!charclass_init' :method
    .param pmc node

    .local string subtype
    .local int negate
    subtype = node.'subtype'()
    $S0 = downcase subtype
    negate = isne subtype, $S0

    $I0 = node.'negate'()
    negate = xor negate, $I0

    if $S0 == '.' goto cclass_dot
    if $S0 == 'd' goto cclass_digit
    if $S0 == 's' goto cclass_space
    if $S0 == 'w' goto cclass_word
    if $S0 == 'n' goto cclass_newline
    if $S0 == 'nl' goto cclass_newline
    self.'panic'('Unrecognized subtype "', subtype, '" in PAST::Regex charclass node')
  cclass_dot:
    .local int cclass
    cclass = .CCLASS_ANY
    goto cclass_done
  cclass_digit:
    cclass = .CCLASS_NUMERIC
    goto cclass_done
  cclass_space:
    cclass = .CCLASS_WHITESPACE
    goto cclass_done
  cclass_word:
    cclass = .CCLASS_WORD
    goto cclass_done
  cclass_newline:
    cclass = .CCLASS_NEWLINE
  cclass_done:
    .return (subtype, cclass, negate)
.end


=item charclass_q(PAST::Regex node)

Optimize certain quantified character class shortcuts, if it
makes sense to do so.  If not, return a null PMC and the
standard quantifier code will handle it.

=cut

.sub 'charclass_q' :method :multi(_, ['PAST';'Regex'])
    .param pmc node
    .param string backtrack
    .param int min
    .param int max

    if backtrack != 'r' goto pessimistic

    .local string subtype
    .local int cclass, negate
    (subtype, cclass, negate) = self.'!charclass_init'(node)

    # positive logical newline matching is special, don't try to optimize it
    if negate goto nl_done
    if subtype == 'nl' goto pessimistic
  nl_done:

    .local pmc findop
    findop = self.'??!!'(negate, 'find_cclass', 'find_not_cclass')

  quant_r:
    .local pmc cur, tgt, pos, off, eos, fail, ops
    (cur, tgt, pos, off, eos, fail) = self.'!rxregs'('cur tgt pos off eos fail')
    ops = self.'post_new'('Ops', 'node'=>node, 'result'=>cur)

    ops.'push_pirop'('inline', subtype, backtrack, min, max, 'inline'=>'  # rx charclass_q %0 %1 %2..%3')
    ops.'push_pirop'('sub', '$I10', pos, off)
    ops.'push_pirop'(findop, '$I11', cclass, tgt, '$I10', eos)
    unless min > 0 goto min_done
    ops.'push_pirop'('add', '$I12', '$I10', min)
    ops.'push_pirop'('lt', '$I11', '$I12', fail)
  min_done:
    unless max > 0 goto max_done
    .local pmc maxlabel
    maxlabel = self.'post_new'('Label', 'name'=>'rx_charclass_')
    ops.'push_pirop'('add', '$I12', '$I10', max)
    ops.'push_pirop'('le', '$I11', '$I12', maxlabel)
    ops.'push_pirop'('set', '$I11', '$I12')
    ops.'push'(maxlabel)
  max_done:
    ops.'push_pirop'('add', pos, off, '$I11')
    .return (ops)

  pessimistic:
    null ops
    .return (ops)
.end
    

=item concat(PAST::Regex node)

Handle a concatenation of regexes.

=cut

.sub 'concat' :method :multi(_, ['PAST';'Regex'])
    .param pmc node

    .local pmc cur, ops, iter
    (cur) = self.'!rxregs'('cur')
    ops = self.'post_new'('Ops', 'node'=>node, 'result'=>cur)
    iter = node.'iterator'()

  iter_loop:
    unless iter goto iter_done
    .local pmc cpast, cpost
    cpast = shift iter
    cpost = self.'post_regex'(cpast, cur)
    ops.'push'(cpost)
    goto iter_loop
  iter_done:

    .return (ops)
.end


=item cut(PAST::Regex node)

Generate POST for the cut-group and cut-rule operators.

=cut

.sub 'cut' :method :multi(_, ['PAST';'Regex'])
    .param pmc node

    .local pmc cur, fail, ops
    (cur, fail) = self.'!rxregs'('cur fail')
    ops = self.'post_new'('Ops', 'node'=>node, 'result'=>cur)
    ops.'push_pirop'('set_addr', '$I10', fail)
    self.'!cursorop'(ops, '!mark_commit', 0, '$I10')
    .return (ops)
.end


=item enumcharlist(PAST::Regex node)

Generate POST for matching a character from an enumerated
character list.

=cut

.sub 'enumcharlist' :method :multi(_, ['PAST';'Regex'])
    .param pmc node

    .local pmc cur, tgt, pos, off, eos, fail, ops
    (cur, tgt, pos, off, eos, fail) = self.'!rxregs'('cur tgt pos off eos fail')
    ops = self.'post_new'('Ops', 'node'=>node, 'result'=>cur)

    .local string charlist
    charlist = node[0]
    charlist = self.'escape'(charlist)
    .local pmc  negate, testop
    negate = node.'negate'()
    testop = self.'??!!'(negate, 'ge', 'lt')
    .local string subtype
    .local int zerowidth
    subtype = node.'subtype'()
    zerowidth = iseq subtype, 'zerowidth'

    ops.'push_pirop'('inline', negate, subtype, 'inline'=>'  # rx enumcharlist negate=%0 %1')
   
    ops.'push_pirop'('ge', pos, eos, fail)
    ops.'push_pirop'('sub', '$I10', pos, off)
    ops.'push_pirop'('substr', '$S10', tgt, '$I10', 1)
    ops.'push_pirop'('index', '$I11', charlist, '$S10')
    ops.'push_pirop'(testop, '$I11', 0, fail)
    if zerowidth goto skip_zero_2
    ops.'push_pirop'('inc', pos)
  skip_zero_2:
    .return (ops)
.end
    

=item literal(PAST::Regex node)

Generate POST for matching a literal string provided as the
second child of this node.

=cut

.sub 'literal' :method :multi(_,['PAST';'Regex'])
    .param pmc node

    .local pmc cur, pos, eos, tgt, fail, off
    (cur, pos, eos, tgt, fail, off) = self.'!rxregs'('cur pos eos tgt fail off')
    .local pmc ops, cpast, cpost, lpast, lpost
    ops = self.'post_new'('Ops', 'node'=>node, 'result'=>cur)

    .local string subtype
    .local int ignorecase
    subtype = node.'subtype'()
    ignorecase = iseq subtype, 'ignorecase'

    # literal to be matched is our first child
    .local int litconst
    lpast = node[0]
    litconst = isa lpast, ['String']
    unless litconst goto lpast_done
    unless ignorecase goto lpast_done
    $S0 = lpast
    $S0 = downcase $S0
    lpast = box $S0
  lpast_done:
    lpost = self.'as_post'(lpast, 'rtype'=>'~')

    $S0 = lpost.'result'()
    ops.'push_pirop'('inline', subtype, $S0, 'inline'=>'  # rx literal %0 %1')
    ops.'push'(lpost)

    # compute constant literal length at compile time
    .local string litlen
    $I0 = isa lpast, ['String']
    if $I0 goto literal_string
    litlen = '$I10'
    ops.'push_pirop'('length', '$I10', lpost)
    goto have_litlen
  literal_string:
    $S0 = lpast
    $I0 = length $S0
    litlen = $I0
    if $I0 > 0 goto have_litlen
    .return (cpost)
  have_litlen:

    # fail if there aren't enough characters left in string
    ops.'push_pirop'('add', '$I11', pos, litlen)
    ops.'push_pirop'('gt', '$I11', eos, fail)

    # compute string to be matched and fail if mismatch
    ops.'push_pirop'('sub', '$I11', pos, off)
    ops.'push_pirop'('substr', '$S10', tgt, '$I11', litlen)
    unless ignorecase goto literal_test
    ops.'push_pirop'('downcase', '$S10', '$S10')
  literal_test:
    ops.'push_pirop'('ne', '$S10', lpost, fail)

    # increase position by literal length and move on
    ops.'push_pirop'('add', pos, litlen)
    .return (ops)
.end


=item pass(PAST::Regex node)

=cut

.sub 'pass' :method :multi(_,['PAST';'Regex'])
    .param pmc node

    .local pmc cur, pos, ops
    (cur, pos) = self.'!rxregs'('cur pos')
    ops = self.'post_new'('Ops', 'node'=>node, 'result'=>cur)

    .local string regexname
    $P0 = find_dynamic_lex '$*REGEXNAME'
    regexname = self.'escape'($P0)

    ops.'push_pirop'('inline', 'inline'=>'  # rx pass')
    self.'!cursorop'(ops, '!cursor_pass', 0, pos, regexname)
    self.'!cursorop'(ops, '!cursor_debug', 0, '"PASS  "', regexname, '" at pos="', pos)
    ops.'push_pirop'('return', cur)
    .return (ops)
.end


=item reduce

=cut

.sub 'reduce' :method :multi(_,['PAST';'Regex'])
    .param pmc node

    .local pmc cur, pos, ops
    (cur, pos) = self.'!rxregs'('cur pos')
    ops = self.'post_new'('Ops', 'node'=>node, 'result'=>cur)

    .local pmc cpost, posargs, namedargs
    (cpost, posargs, namedargs) = self.'post_children'(node, 'signature'=>'v:')

    .local string regexname, key
    $P0 = find_dynamic_lex '$*REGEXNAME'
    regexname = self.'escape'($P0)
    key = posargs[0]

    ops.'push_pirop'('inline', regexname, key, 'inline'=>'  # rx reduce name=%0 key=%1')
    ops.'push'(cpost)
    self.'!cursorop'(ops, '!cursor_pos', 0, pos)
    self.'!cursorop'(ops, '!reduce', 0, regexname, posargs :flat, namedargs :flat)
    .return (ops)
.end


=item quant(PAST::Regex node)

=cut

.sub 'quant' :method :multi(_,['PAST';'Regex'])
    .param pmc node

    .local string backtrack
    backtrack = node.'backtrack'()
    if backtrack goto have_backtrack
    backtrack = 'g'
  have_backtrack:

     .local int min, max
     min = node.'min'()
     $P0 = node.'max'()
     max = $P0
     $I0 = defined $P0
     if $I0 goto have_max
     max = -1                          # -1 represents Inf
   have_max:

   optimize:
     $I0 = node.'list'()
     if $I0 != 1 goto optimize_done
     .local pmc cpast
     cpast = node[0]
     $S0 = cpast.'pasttype'()
     $S0 = concat $S0, '_q'
     $I0 = can self, $S0
     unless $I0 goto optimize_done
     $P0 = self.$S0(cpast, backtrack, min, max)
     if null $P0 goto optimize_done
     .return ($P0)
  optimize_done:

    .local pmc cur, pos, rep, fail
    (cur, pos, rep, fail) = self.'!rxregs'('cur pos rep fail')

    .local string qname
    .local pmc ops, q1label, q2label, btreg, cpost
    $S0 = concat 'rxquant', backtrack
    qname = self.'unique'($S0)
    ops = self.'post_new'('Ops', 'node'=>node)
    $S0 = concat qname, '_loop'
    q1label = self.'post_new'('Label', 'result'=>$S0)
    $S0 = concat qname, '_done'
    q2label = self.'post_new'('Label', 'result'=>$S0)
    cpost = self.'concat'(node)

    .local pmc seppast, seppost
    null seppost
    seppast = node.'sep'()
    unless seppast goto have_seppost
    seppost = self.'post_regex'(seppast)
  have_seppost:

    $S0 = max
    .local int needrep
    $I0 = isgt min, 1
    $I1 = isgt max, 1
    needrep = or $I0, $I1

    unless max < 0 goto have_s0
    $S0 = '*'
  have_s0:
    ops.'push_pirop'('inline', qname, min, $S0, 'inline'=>'  # rx %0 ** %1..%2')

  if backtrack == 'f' goto frugal

  greedy:
    btreg = self.'uniquereg'('I')
    ops.'push_pirop'('set_addr', btreg, q2label)
    .local int needmark
    .local string peekcut
    needmark = needrep
    peekcut = '!mark_peek'
    if backtrack != 'r' goto greedy_1
    needmark = 1
    peekcut = '!mark_commit'
  greedy_1:
    if min == 0 goto greedy_2
    unless needmark goto greedy_loop
    self.'!cursorop'(ops, '!mark_push', 0, 0, CURSOR_FAIL, btreg)
    goto greedy_loop
  greedy_2:
    self.'!cursorop'(ops, '!mark_push', 0, 0, pos, btreg)
  greedy_loop:
    ops.'push'(q1label)
    ops.'push'(cpost)
    unless needmark goto greedy_3
    self.'!cursorop'(ops, peekcut, 1, rep, btreg)
    unless needrep goto greedy_3
    ops.'push_pirop'('inc', rep)
  greedy_3:
    unless max > 1 goto greedy_4
    ops.'push_pirop'('ge', rep, max, q2label)
  greedy_4:
    unless max != 1 goto greedy_5
    self.'!cursorop'(ops, '!mark_push', 0, rep, pos, btreg)
    if null seppost goto greedy_4a
    ops.'push'(seppost)
  greedy_4a:
    ops.'push_pirop'('goto', q1label)
  greedy_5:
    ops.'push'(q2label)
    unless min > 1 goto greedy_6
    ops.'push_pirop'('lt', rep, min, fail)
  greedy_6:
    .return (ops)

  frugal:
    .local pmc ireg
    ireg = self.'uniquereg'('I')
    if min == 0 goto frugal_1
    unless needrep goto frugal_0
    ops.'push_pirop'('set', rep, 0)
  frugal_0:
    if null seppost goto frugal_2
    .local pmc seplabel
    $S0 = concat qname, '_sep'
    seplabel = self.'post_new'('Label', 'result'=>$S0)
    ops.'push_pirop'('goto', seplabel)
    goto frugal_2
  frugal_1:
    ops.'push_pirop'('set_addr', '$I10', q1label)
    self.'!cursorop'(ops, '!mark_push', 0, 0, pos, '$I10')
    ops.'push_pirop'('goto', q2label)
  frugal_2:
    ops.'push'(q1label)
    if null seppost goto frugal_2a
    ops.'push'(seppost)
    ops.'push'(seplabel)
  frugal_2a:
    unless needrep goto frugal_3
    ops.'push_pirop'('set', ireg, rep)
  frugal_3:
    ops.'push'(cpost)
    unless needrep goto frugal_4
    ops.'push_pirop'('add', rep, ireg, 1)
  frugal_4:
    unless min > 1 goto frugal_5
    ops.'push_pirop'('lt', rep, min, q1label)
  frugal_5:
    unless max > 1 goto frugal_6
    ops.'push_pirop'('ge', rep, max, q2label)
  frugal_6:
    unless max != 1 goto frugal_7
    ops.'push_pirop'('set_addr', '$I10', q1label)
    self.'!cursorop'(ops, '!mark_push', 0, ireg, pos, '$I10')
  frugal_7:
    ops.'push'(q2label)
    .return (ops)
.end


=item scan(POST::Regex)

Code for initial regex scan.

=cut

.sub 'scan' :method :multi(_, ['PAST';'Regex'])
    .param pmc node

    .local pmc cur, pos, eos, ops
    (cur, pos, eos) = self.'!rxregs'('cur pos eos')
    ops = self.'post_new'('Ops', 'node'=>node, 'result'=>cur)
    .local pmc looplabel, donelabel
    $S0 = self.'unique'('rxscan')
    $S1 = concat $S0, '_loop'
    looplabel = self.'post_new'('Label', 'result'=>$S1)
    $S1 = concat $S0, '_done'
    donelabel = self.'post_new'('Label', 'result'=>$S1)

    ops.'push_pirop'('ge', pos, 0, donelabel)
    ops.'push'(looplabel)
    self.'!cursorop'(ops, 'from', 1, '$P10')
    ops.'push_pirop'('inc', '$P10')
    ops.'push_pirop'('set', pos, '$P10')
    ops.'push_pirop'('ge', pos, eos, donelabel)
    ops.'push_pirop'('set_addr', '$I10', looplabel)
    self.'!cursorop'(ops, '!mark_push', 0, 0, pos, '$I10')
    ops.'push'(donelabel)
    .return (ops)
.end


=item subcapture(PAST::Regex node)

Perform a subcapture (capture of a portion of a regex).

=cut

.sub 'subcapture' :method :multi(_, ['PAST';'Regex'])
    .param pmc node

    .local pmc cur, pos, tgt, fail
    (cur, pos, tgt, fail) = self.'!rxregs'('cur pos tgt fail')
    .local pmc ops, cpast, cpost
    ops = self.'post_new'('Ops', 'node'=>node, 'result'=>cur)
    cpast = node[0]
    cpost = self.'post_regex'(cpast)

    .local pmc name
    $P0 = node.'name'()
    name = self.'as_post'($P0, 'rtype'=>'*')

    .local string rxname 
    rxname = self.'unique'('rxcap_')

    .local pmc caplabel, donelabel
    $S0 = concat rxname, '_fail'
    caplabel = self.'post_new'('Label', 'result'=>$S0)
    $S0 = concat rxname, '_done'
    donelabel = self.'post_new'('Label', 'result'=>$S0)

    ops.'push_pirop'('inline', name, 'inline'=>'  # rx subcapture %0')
    ops.'push_pirop'('set_addr', '$I10', caplabel)
    self.'!cursorop'(ops, '!mark_push', 0, 0, pos, '$I10')
    ops.'push'(cpost)
    ops.'push_pirop'('set_addr', '$I10', caplabel)
    self.'!cursorop'(ops, '!mark_peek', 2, '$I12', '$I11', '$I10')
    self.'!cursorop'(ops, '!cursor_pos', 0, '$I11')
    self.'!cursorop'(ops, '!cursor_start', 1, '$P10')
    ops.'push_pirop'('callmethod', '"!cursor_pass"', '$P10', pos, '""')
    ops.'push'(name)
    self.'!cursorop'(ops, '!mark_push', 0, 0, CURSOR_FAIL, 0, '$P10')
    ops.'push_pirop'('callmethod', '"!cursor_names"', '$P10', name)
    ops.'push_pirop'('goto', donelabel)
    ops.'push'(caplabel)
    ops.'push_pirop'('goto', fail)
    ops.'push'(donelabel)
    .return (ops)
.end


=item subrule(PAST::Regex node)

Perform a subrule call.

=cut

.sub 'subrule' :method :multi(_, ['PAST';'Regex'])
    .param pmc node

    .local pmc cur, pos, fail, ops
    (cur, pos, fail) = self.'!rxregs'('cur pos fail')
    ops = self.'post_new'('Ops', 'node'=>node, 'result'=>cur)

    .local pmc name
    $P0 = node.'name'()
    name = self.'as_post'($P0, 'rtype'=>'*')

    .local pmc cpost, posargs, namedargs, subpost
    (cpost, posargs, namedargs) = self.'post_children'(node, 'signature'=>'v:')
    subpost = shift posargs

    .local pmc negate
    .local string testop
    negate = node.'negate'()
    testop = self.'??!!'(negate, 'if', 'unless')

    .local pmc subtype
    subtype = node.'subtype'()

    ops.'push_pirop'('inline', subpost, subtype, negate, 'inline'=>"  # rx subrule %0 subtype=%1 negate=%2")

    self.'!cursorop'(ops, '!cursor_pos', 0, pos)
    ops.'push'(cpost)
    ops.'push_pirop'('callmethod', subpost, cur, posargs :flat, namedargs :flat, 'result'=>'$P10')
    ops.'push_pirop'(testop, '$P10', fail)
    if subtype == 'zerowidth' goto done
    if subtype == 'method' goto subrule_pos
    self.'!cursorop'(ops, '!mark_push', 0, 0, CURSOR_FAIL, 0, '$P10')
    ops.'push'(name)
    ops.'push_pirop'('callmethod', '"!cursor_names"', '$P10', name)
  subrule_pos:
    ops.'push_pirop'('callmethod', '"pos"', '$P10', 'result'=>pos)
  done:
    .return (ops)
.end


=item post_new(type, args :slurpy, options :slurpy :named)

Helper method to create a new POST node of C<type>.

=cut

.sub 'post_new' :method
    .param string type
    .param pmc args            :slurpy
    .param pmc options         :slurpy :named

    $P0 = get_hll_global ['POST'], type
    .tailcall $P0.'new'(args :flat, options :flat :named)
.end

=item ??!!(test, trueval, falseval)

Helper method to perform ternary operation -- returns C<trueval> 
if C<test> is true, C<falseval> otherwise.

=cut

.sub '??!!' :method
    .param pmc test
    .param pmc trueval
    .param pmc falseval

    if test goto true
    .return (falseval)
  true:
    .return (trueval)
.end
    

=back

=head1 AUTHOR

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=head1 COPYRIGHT

Copyright (C) 2009, Patrick R. Michaud.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:

### .include 'src/Regex/Cursor.pir'
# Copyright (C) 2009, Patrick R. Michaud
# $Id$

=head1 NAME

Regex::Cursor - Regex Cursor nodes

=head1 DESCRIPTION

This file implements the Regex::Cursor class, used for managing regular
expression control flow.  Regex::Cursor is also a base class for
grammars.

=cut

.include 'cclass.pasm'
### .include 'src/Regex/constants.pir'
.const int CURSOR_FAIL = -1
.const int CURSOR_FAIL_GROUP = -2
.const int CURSOR_FAIL_RULE = -3
.const int CURSOR_FAIL_MATCH = -4

.const int CURSOR_TYPE_SCAN = 1
.const int CURSOR_TYPE_PEEK = 2

.namespace ['Regex';'Cursor']

.sub '' :anon :load :init
    load_bytecode 'P6object.pbc'
    .local pmc p6meta
    p6meta = new 'P6metaclass'
    $P0 = p6meta.'new_class'('Regex::Cursor', 'attr'=>'$!target $!from $!pos $!match $!action $!names $!debug $!type @!bstack @!cstack @!caparray')
    $P0 = box 0
    set_global '$!generation', $P0
    $P0 = new ['Boolean']
    assign $P0, 0
    set_global '$!FALSE', $P0
    $P0 = new ['Boolean']
    assign $P0, 1
    set_global '$!TRUE', $P0
    .return ()
.end

=head2 Methods

=over 4

=item MATCH()

Return this cursor's current Match object, generating a new one
for the Cursor if one hasn't been created yet.

=cut

.sub 'MATCH' :method
    .local pmc match
    match = getattribute self, '$!match'
    if null match goto match_make
    $P0 = get_global '$!TRUE'
    $I0 = issame match, $P0
    unless $I0 goto match_done

    # First, create a Match object and bind it
  match_make:
    match = new ['Regex';'Match']
    setattribute self, '$!match', match
    .local pmc target, from, to
    target = getattribute self, '$!target'
    setattribute match, '$!target', target
    from = getattribute self, '$!from'
    setattribute match, '$!from', from
    to = getattribute self, '$!pos'
    setattribute match, '$!to', to

    # Create any arrayed subcaptures.
    .local pmc caparray, caparray_it, caphash
    caparray = getattribute self, '@!caparray'
    if null caparray goto caparray_done
    caparray_it = iter caparray
    caphash = new ['Hash']
  caparray_loop:
    unless caparray_it goto caparray_done
    .local string subname
    .local pmc arr
    .local int keyint
    subname = shift caparray_it
    arr = new ['ResizablePMCArray']
    caphash[subname] = arr
    keyint = is_cclass .CCLASS_NUMERIC, subname, 0
    if keyint goto caparray_int
    match[subname] = arr
    goto caparray_loop
  caparray_int:
    $I0 = subname
    match[$I0] = arr
  caparray_done:

    # If it's not a successful match, or if there are
    # no saved subcursors, we're done.
    if to < from goto match_done
    .local pmc cstack, cstack_it
    cstack = getattribute self, '@!cstack'
    if null cstack goto cstack_done
    unless cstack goto cstack_done
    cstack_it = iter cstack
  cstack_loop:
    unless cstack_it goto cstack_done
    .local pmc subcur, submatch, names
    subcur = shift cstack_it
    # If the subcursor isn't bound with a name, skip it
    names = getattribute subcur, '$!names'
    if null names goto cstack_loop
    $I0 = isa subcur, ['Regex';'Cursor']
    unless $I0 goto cstack_1
    submatch = subcur.'MATCH'()
    goto cstack_2
  cstack_1:
    submatch = subcur
  cstack_2:
    # See if we have multiple binds
    .local pmc names_it
    subname = names
    names_it = get_global '$!FALSE'
    $I0 = index subname, '='
    if $I0 < 0 goto cstack_subname
    names_it = split '=', subname
  cstack_subname_loop:
    subname = shift names_it
  cstack_subname:
    keyint = is_cclass .CCLASS_NUMERIC, subname, 0
    if null caparray goto cstack_bind
    $I0 = exists caphash[subname]
    unless $I0 goto cstack_bind
    if keyint goto cstack_array_int
    $P0 = match[subname]
    push $P0, submatch
    goto cstack_bind_done
  cstack_array_int:
    $I0 = subname
    $P0 = match[$I0]
    push $P0, submatch
    goto cstack_bind_done
  cstack_bind:
    if keyint goto cstack_bind_int
    match[subname] = submatch
    goto cstack_bind_done
  cstack_bind_int:
    $I0 = subname
    match[$I0] = submatch
  cstack_bind_done:
    if names_it goto cstack_subname_loop
    goto cstack_loop
  cstack_done:

  match_done:
    .return (match)
.end


=item parse(target [, regex])

Parse C<target> in the current grammar starting with C<regex>.
If C<regex> is omitted, then use the C<TOP> rule for the grammar.

=cut

.sub 'parse' :method
    .param pmc target
    .param pmc regex           :optional
    .param int has_regex       :opt_flag
    .param pmc options         :slurpy :named

    if has_regex goto regex_done
    regex = find_method self, 'TOP'
  regex_done:

    .local pmc cur, match
    cur = self.'!cursor_init'(target, options :flat :named)
    cur = cur.regex()
    match = cur.'MATCH'()
    .return (match)
.end


=item pos()

Return the cursor's current position.

=cut

.sub 'pos' :method
    $P0 = getattribute self, '$!pos'
    .return ($P0)
.end


=item from()

Return the cursor's from position.

=cut

.sub 'from' :method
    $P0 = getattribute self, '$!from'
    .return ($P0)
.end


=head2 Private methods

=over 4

=item !cursor_init(target)

Create a new cursor for matching C<target>.

=cut

.sub '!cursor_init' :method
    .param string target
    .param int from            :named('from') :optional
    .param pmc action          :named('action') :optional

    .local pmc parrotclass, cur
    $P0 = self.'HOW'()
    parrotclass = getattribute $P0, 'parrotclass'
    cur = new parrotclass

    $P0 = new ['CodeString']
    $P0 = target
    setattribute cur, '$!target', $P0

    $P0 = box from
    setattribute cur, '$!from', $P0
    $P0 = box from
    setattribute cur, '$!pos', $P0

    setattribute cur, '$!action', action
    .return (cur)
.end

=item !cursor_start([lang])

Create and initialize a new cursor from C<self>.  If C<lang> is
provided, then the new cursor has the same type as lang.

=cut

.sub '!cursor_start' :method
    .param pmc lang            :optional
    .param int has_lang        :opt_flag

    if has_lang goto have_lang
    lang = self
  have_lang:

    .local pmc parrotclass, cur
    $P0 = lang.'HOW'()
    parrotclass = getattribute $P0, 'parrotclass'
    cur = new parrotclass

    .local pmc from, pos, target, action, debug, type

    from = getattribute self, '$!pos'
    setattribute cur, '$!from', from
    setattribute cur, '$!pos', from

    target = getattribute self, '$!target'
    setattribute cur, '$!target', target
    action = getattribute self, '$!action'
    setattribute cur, '$!action', action
    debug = getattribute self, '$!debug'
    setattribute cur, '$!debug', debug

#    type = getattribute self, '$!type'
#    if null type goto type_done
#    if type != CURSOR_TYPE_PEEK goto type_done
#    die "Attempt to create initial cursor from PEEK"
  type_done:

    .return (cur, from, target, from)
.end


=item !cursor_fail(pos)

Permanently fail this cursor.

=cut

.sub '!cursor_fail' :method
    .local pmc pos
    pos = box CURSOR_FAIL_RULE
    setattribute self, '$!pos', pos
    null $P0
    setattribute self, '$!match', $P0
    setattribute self, '@!bstack', $P0
    setattribute self, '@!cstack', $P0
.end


=item !cursor_pass(pos, name)

Set the Cursor as passing at C<pos>; calling any reduction action
C<name> associated with the cursor.  This method simply sets
C<$!match> to a boolean true value to indicate the regex was
successful; the C<MATCH> method above replaces this boolean true
with a "real" Match object when requested.

=cut

.sub '!cursor_pass' :method
    .param pmc pos
    .param string name

    setattribute self, '$!pos', pos
    .local pmc match
    match = get_global '$!TRUE'
    setattribute self, '$!match', match
    unless name goto done
    self.'!reduce'(name)
  done:
    .return (self)
.end


=item !cursor_caparray(caparray :slurpy)

Set the list of subcaptures that produce arrays to C<caparray>.

=cut

.sub '!cursor_caparray' :method
    .param pmc caparray        :slurpy
    setattribute self, '@!caparray', caparray
.end


=item !cursor_names(names)

Set the Cursor's name (for binding) to C<names>.

=cut

.sub '!cursor_names' :method
    .param pmc names
    setattribute self, '$!names', names
.end


=item !cursor_pos(pos)

Set the cursor's position to C<pos>.

=cut

.sub '!cursor_pos' :method
    .param pmc pos
    setattribute self, '$!pos', pos
.end


=item !cursor_debug(args :slurpy)

Log a debug message.

=cut

.sub '!cursor_debug' :method
    .param pmc args            :slurpy
    $P0 = getattribute self, '$!debug'
    if null $P0 goto done
    unless $P0 goto done
    .local pmc from, pos, orig
    .local int line
    from = getattribute self, '$!from'
    orig = getattribute self, '$!target'
    line = orig.'lineof'(from)
    inc line
    printerr from
    printerr '/'
    printerr line
    printerr ': '
    $S0 = join '', args
    printerr $S0
    printerr "\n"
  done:
    .return (self)
.end


=item !mark_push(rep, pos, mark)

Push a new backtracking point onto the cursor with the given
C<rep>, C<pos>, and backtracking C<mark>.  (The C<mark> is typically
the address of a label to branch to when backtracking occurs.)

=cut

.sub '!mark_push' :method
    .param int rep
    .param int pos
    .param int mark
    .param pmc subcur          :optional
    .param int has_subcur      :opt_flag

    # cptr contains the desired number of elements in the cstack
    .local int cptr
    cptr = 0

    # Initialize bstack if needed, and set cptr to be the cstack
    # size requested by the top frame.
    .local pmc bstack
    bstack = getattribute self, '@!bstack'
    if null bstack goto bstack_new
    unless bstack goto bstack_done
    $I0 = elements bstack
    dec $I0
    cptr = bstack[$I0]
    goto bstack_done
  bstack_new:
    bstack = new ['ResizableIntegerArray']
    setattribute self, '@!bstack', bstack
  bstack_done:

    # If a new subcursor is being pushed, then save it in cstack
    # and change cptr to include the new subcursor.
    unless has_subcur goto subcur_done
    .local pmc cstack
    cstack = getattribute self, '@!cstack'
    unless null cstack goto have_cstack
    cstack = new ['ResizablePMCArray']
    setattribute self, '@!cstack', cstack
  have_cstack:
    cstack[cptr] = subcur
    inc cptr
  subcur_done:

    # Save our mark frame information.
    push bstack, mark
    push bstack, pos
    push bstack, rep
    push bstack, cptr
.end


=item !mark_peek(mark)

Return information about the latest frame for C<mark>.
If C<mark> is zero, return information about the latest frame.

=cut

.sub '!mark_peek' :method
    .param int tomark

    .local pmc bstack
    bstack = getattribute self, '@!bstack'
    if null bstack goto no_mark
    unless bstack goto no_mark

    .local int bptr
    bptr = elements bstack

  bptr_loop:
    bptr = bptr - 4
    if bptr < 0 goto no_mark
    .local int rep, pos, mark, cptr
    mark = bstack[bptr]
    unless tomark goto bptr_done
    unless mark == tomark goto bptr_loop
  bptr_done:
    $I0  = bptr + 1
    pos  = bstack[$I0]
    inc $I0
    rep  = bstack[$I0]
    inc $I0
    cptr = bstack[$I0]
    .return (rep, pos, mark, bptr, bstack, cptr)

  no_mark:
    .return (0, CURSOR_FAIL_GROUP, 0, 0, bstack, 0)
.end


=item !mark_fail(tomark)

Remove the most recent C<mark> and backtrack the cursor to the
point given by that mark.  If C<mark> is zero, then
backtracks the most recent mark.  Returns the backtracked
values of repetition count, cursor position, and mark (address).

=cut

.sub '!mark_fail' :method
    .param int mark

    # Get the frame information for C<mark>.
    .local int rep, pos, mark, bptr, cptr
    .local pmc bstack
    (rep, pos, mark, bptr, bstack, cptr) = self.'!mark_peek'(mark)

    .local pmc subcur
    null subcur

    # If there's no bstack, there's nothing else to do.
    if null bstack goto done

    # If there's a subcursor associated with this mark, return it.
    unless cptr > 0 goto cstack_done
    .local pmc cstack
    cstack = getattribute self, '@!cstack'
    dec cptr
    subcur = cstack[cptr]
    # Set the cstack to the size requested by the soon-to-be-top mark frame.
    unless bptr > 0 goto cstack_zero
    $I0 = bptr - 1
    $I0 = bstack[$I0]
    assign cstack, $I0
    goto cstack_done
  cstack_zero:
    assign cstack, 0
  cstack_done:

    # Pop the current mark frame and all above it.
    assign bstack, bptr

  done:
    .return (rep, pos, mark, subcur)
.end


=item !mark_commit(mark)

Like C<!mark_fail> above this backtracks the cursor to C<mark>
(releasing any intermediate marks), but preserves the current 
capture states.

=cut

.sub '!mark_commit' :method
    .param int mark

    # find mark
    .local int rep, pos, mark, bptr, cptr
    .local pmc bstack
    (rep, pos, mark, bptr, bstack) = self.'!mark_peek'(mark)

    # get current cstack size into cptr
    if null bstack goto done
    unless bstack goto done
    $I0 = elements bstack
    dec $I0
    cptr = bstack[$I0]

    # Pop the mark frame and everything above it.
    assign bstack, bptr

    # If we don't need to hold any cstack information, we're done.
    unless cptr > 0 goto done

    # If the top frame is an auto-fail frame, (re)use it to hold
    # our needed cptr, otherwise create a new auto-fail frame to do it.
    unless bptr > 0 goto cstack_push
    $I0 = bptr - 3             # pos is at top-3
    $I1 = bstack[$I0]
    unless $I1 < 0 goto cstack_push
    $I0 = bptr - 1             # cptr is at top-1
    bstack[$I0] = cptr
    goto done
  cstack_push:
    push bstack, 0             # mark
    push bstack, CURSOR_FAIL   # pos
    push bstack, 0             # rep
    push bstack, cptr          # cptr

  done:
    .return (rep, pos, mark)
.end


=item !reduce(name [, key] [, match])

Perform any action associated with the current regex match.

=cut

.sub '!reduce' :method
    .param string name
    .param string key          :optional
    .param int has_key         :opt_flag
    .param pmc match           :optional
    .param int has_match       :opt_flag
    .local pmc action
    action = getattribute self, '$!action'
    if null action goto action_done
    $I0 = can action, name
    unless $I0 goto action_done
    if has_match goto match_done
    match = self.'MATCH'()
  match_done:
    if has_key goto action_key
    action.name(match)
    goto action_done
  action_key:
    .tailcall action.name(match, key)
  action_done:
    .return ()
.end


=item !BACKREF(name)

Match the backreference given by C<name>.

=cut

.sub '!BACKREF' :method
    .param string name
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()

    # search the cursor cstack for the latest occurrence of C<name>
    .local pmc cstack
    cstack = getattribute self, '@!cstack'
    if null cstack goto pass
    .local int cstack_it
    cstack_it = elements cstack
  cstack_loop:
    dec cstack_it
    unless cstack_it >= 0 goto pass
    .local pmc subcur
    subcur = cstack[cstack_it]
    $P0 = getattribute subcur, '$!names'
    if null $P0 goto cstack_loop
    $S0 = $P0
    if name != $S0 goto cstack_loop
    # we found a matching subcursor, get the literal it matched
  cstack_done:
    .local int litlen
    .local string litstr
    $I1 = subcur.'pos'()
    $I0 = subcur.'from'()
    litlen = $I1 - $I0
    litstr = substr tgt, $I0, litlen
    # now test the literal against our target
    $S0 = substr tgt, pos, litlen
    unless $S0 == litstr goto fail
    pos += litlen
  pass:
    cur.'!cursor_pass'(pos, '')
  fail:
    .return (cur)
.end


=back

=head2 Vtable functions

=over 4

=item get_bool

=cut

.sub '' :vtable('get_bool') :method
    .local pmc match
    match = getattribute self, '$!match'
    if null match goto false
    $I0 = istrue match
    .return ($I0)
  false:
    .return (0)
.end


=head1 AUTHORS

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
### .include 'src/Regex/Cursor-builtins.pir'
# Copyright (C) 2009, Patrick R. Michaud
# $Id$

=head1 NAME

Regex::Cursor-builtins - builtin regexes for Cursor objects

=cut

.include 'cclass.pasm'

.namespace ['Regex';'Cursor']

.sub 'before' :method
    .param pmc regex           :optional
    .local pmc cur
    .local int pos
    (cur, pos) = self.'!cursor_start'()
    if null regex goto fail
    $P0 = cur.regex()
    unless $P0 goto fail
    cur.'!cursor_pass'(pos, 'before')
  fail:
    .return (cur)
.end


.sub 'ident' :method
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    eos = length tgt
    $S0 = substr tgt, pos, 1
    if $S0 == '_' goto ident_1
    $I0 = is_cclass .CCLASS_ALPHABETIC, tgt, pos
    unless $I0 goto fail
  ident_1:
    pos = find_not_cclass .CCLASS_WORD, tgt, pos, eos
    cur.'!cursor_pass'(pos, 'ident')
  fail:
    .return (cur)
.end

.sub 'wb' :method
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    if pos == 0 goto pass
    eos = length tgt
    if pos == eos goto pass
    $I0 = pos - 1
    $I1 = is_cclass .CCLASS_WORD, tgt, $I0
    $I2 = is_cclass .CCLASS_WORD, tgt, pos
    if $I1 == $I2 goto fail
  pass:
    cur.'!cursor_pass'(pos, 'wb')
  fail:
    .return (cur)
.end

.sub 'ww' :method
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    if pos == 0 goto fail
    eos = length tgt
    if pos == eos goto fail
    $I0 = is_cclass .CCLASS_WORD, tgt, pos
    unless $I0 goto fail
    $I1 = pos - 1
    $I0 = is_cclass .CCLASS_WORD, tgt, $I1
    unless $I0 goto fail
  pass:
    cur.'!cursor_pass'(pos, 'ww')
  fail:
    .return (cur)
.end

.sub 'ws' :method
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    eos = length tgt
    if pos >= eos goto pass
    if pos == 0 goto ws_scan
    $I0 = is_cclass .CCLASS_WORD, tgt, pos
    unless $I0 goto ws_scan
    $I1 = pos - 1
    $I0 = is_cclass .CCLASS_WORD, tgt, $I1
    if $I0 goto fail
  ws_scan:
    pos = find_not_cclass .CCLASS_WHITESPACE, tgt, pos, eos
  pass:
    cur.'!cursor_pass'(pos, 'ws')
  fail:
    .return (cur)
.end

.sub '!cclass' :anon
    .param pmc self
    .param string name
    .param int cclass
    .local pmc cur
    .local int pos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    $I0 = is_cclass cclass, tgt, pos
    unless $I0 goto fail
    inc pos
    cur.'!cursor_pass'(pos, name)
  fail:
    .return (cur)
.end

.sub 'alpha' :method
    .local pmc cur
    .local int pos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    $I0 = is_cclass .CCLASS_ALPHABETIC, tgt, pos
    if $I0 goto pass
    $S0 = substr tgt, pos, 1
    if $S0 != '_' goto fail
  pass:
    inc pos
    cur.'!cursor_pass'(pos, 'alpha')
  fail:
    .return (cur)
.end

.sub 'upper' :method
    .tailcall '!cclass'(self, 'upper', .CCLASS_UPPERCASE)
.end
    
.sub 'lower' :method
    .tailcall '!cclass'(self, 'lower', .CCLASS_LOWERCASE)
.end
    
.sub 'digit' :method
    .tailcall '!cclass'(self, 'digit', .CCLASS_NUMERIC)
.end

.sub 'xdigit' :method
    .tailcall '!cclass'(self, 'xdigit', .CCLASS_HEXADECIMAL)
.end

.sub 'print' :method
    .tailcall '!cclass'(self, 'print', .CCLASS_PRINTING)
.end

.sub 'graph' :method
    .tailcall '!cclass'(self, 'graph', .CCLASS_GRAPHICAL)
.end

.sub 'cntrl' :method
    .tailcall '!cclass'(self, 'cntrl', .CCLASS_CONTROL)
.end
    
.sub 'punct' :method
    .tailcall '!cclass'(self, 'punct', .CCLASS_PUNCTUATION)
.end

.sub 'alnum' :method
    .tailcall '!cclass'(self, 'alnum', .CCLASS_ALPHANUMERIC)
.end

.sub 'space' :method
    .tailcall '!cclass'(self, 'space', .CCLASS_WHITESPACE)
.end

.sub 'blank' :method
    .tailcall '!cclass'(self, 'blank', .CCLASS_BLANK)
.end

.sub 'FAILGOAL' :method
    .param string goal
    .local string dba
    $P0 = getinterp
    $P0 = $P0['sub';1]
    dba = $P0
  have_dba:
    .local string message
    message = concat "Unable to parse ", dba
    message .= ", couldn't find final "
    message .= goal
    die message
.end

.sub 'DEBUG' :method
    .param pmc arg             :optional
    .param int has_arg         :opt_flag

    if has_arg goto have_arg
    arg = get_global '$!TRUE'
  have_arg:

    setattribute self, '$!debug', arg
    .return (1)
.end
    
=head1 AUTHORS

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
### .include 'src/Regex/Cursor-protoregex-peek.pir'
# Copyright (C) 2009, Patrick R. Michaud

=head1 NAME

    Regex::Cursor-protoregex-peek - simple protoregex implementation

=head1 DESCRIPTION

=over 4

=item !protoregex(name)

Perform a match for protoregex C<name>.

=cut

.sub '!protoregex' :method
    .param string name

    .local pmc tokrx, toklen
    (tokrx, toklen) = self.'!protoregex_tokrx'(name)
  have_tokrx:

    self.'!cursor_debug'('PROTO ', name)

    # If there are no entries at all for this protoregex, we fail outright.
    unless tokrx goto fail

    # Figure out where we are in the current match.
    .local pmc target
    .local int pos
    target = getattribute self, '$!target'
    $P1 = getattribute self, '$!pos'
    pos = $P1

    # Use the character at the current match position to determine
    # the longest possible token we could encounter at this point.
    .local string token1, token
    token1 = substr target, pos, 1
    $I0 = toklen[token1]
    token = substr target, pos, $I0
    $S0 = escape token
    $S1 = escape token1
    self.'!cursor_debug'('        token1="', $S1, '", token="', $S0, '"')

    # Create a hash to keep track of the methods we've already called,
    # so that we don't end up calling it twice.  
    .local pmc mcalled
    mcalled = new ['Hash']

    # Look in the tokrx hash for any rules that are keyed with the
    # current token.  If there aren't any, or the rules we have don't
    # match, then shorten the token by one character and try again
    # until we either have a match or we've run out of candidates.
  token_loop:
    .local pmc rx, result
    rx = tokrx[token]
    if null rx goto token_next
    $I0 = isa rx, ['ResizablePMCArray']
    if $I0 goto rx_array
    .local int rxaddr
    rxaddr = get_addr rx
    result = mcalled[rxaddr]
    unless null result goto token_next
    result = self.rx()
    mcalled[rxaddr] = mcalled
    if result goto done
    goto token_next
  rx_array:
    .local pmc rx_it
    rx_it = iter rx
  cand_loop:
    unless rx_it goto cand_done
    rx = shift rx_it
    rxaddr = get_addr rx
    result = mcalled[rxaddr]
    unless null result goto token_next
    result = self.rx()
    mcalled[rxaddr] = mcalled
    if result goto done
    goto cand_loop
  cand_done:
  token_next:
    unless token goto fail
    chopn token, 1
    goto token_loop

  done:
    pos = result.'pos'()
    self.'!cursor_debug'('PASS  ', name, ' at pos=', pos)
    .return (result)

  fail:
    self.'!cursor_debug'('FAIL  ', name)
    .return (0)
.end


=item !protoregex_generation()

Reset the C<$!generation> flag to indicate that protoregexes 
need to be recalculated (because new protoregexes have been
added).

=cut

.sub '!protoregex_generation' :method
    $P0 = get_global '$!generation'
    # don't change this to 'inc' -- we want to ensure new PMC
    $P1 = add $P0, 1
    set_global '$!generation', $P1
    .return ($P1)
.end

=item !protoregex_tokrx(name)

Return the token list for protoregex C<name>.  If the list
doesn't already exist, or if the existing list is stale,
create a new one and return it.

=cut

.sub '!protoregex_tokrx' :method
    .param string name

    .local pmc generation
    generation = get_global '$!generation'

    # Get the protoregex table for the current grammar.  If
    # a table doesn't exist or it's out of date, generate a
    # new one.
    .local pmc parrotclass, prototable
    parrotclass = typeof self
    prototable = getprop '%!prototable', parrotclass
    if null prototable goto make_prototable
    $P0 = getprop '$!generation', prototable
    $I0 = issame $P0, generation
    if $I0 goto have_prototable
  make_prototable:
    prototable = self.'!protoregex_gen_table'(parrotclass)
  have_prototable:

    # Obtain the toxrk and toklen hashes for the current grammar
    # from the protoregex table.  If they already exist, we're
    # done, otherwise we create new ones below.
    # yet for this table, then do that now.
    .local pmc tokrx, toklen
    $S0 = concat name, '.tokrx'
    tokrx = prototable[$S0]
    $S0 = concat name, '.toklen'
    toklen = prototable[$S0]
    unless null tokrx goto tokrx_done

    self.'!cursor_debug'('Generating protoregex table for ', name)

    .local pmc toklen, tokrx
    toklen = new ['Hash']
    tokrx  = new ['Hash']

    # The prototable has already collected all of the names of
    # protoregex methods into C<prototable>.  We set up a loop
    # to find all of the method names that begin with "name:sym<".
    .local string mprefix
    .local int mlen
    mprefix = concat name, ':sym<'
    mlen   = length mprefix

    .local pmc method_it, method, sorttok
    .local string method_name
    sorttok = new ['ResizablePMCArray']
    method_it = iter prototable
  method_loop:
    unless method_it goto method_done
    method_name = shift method_it
    $S0 = substr method_name, 0, mlen
    if $S0 != mprefix goto method_loop

    # Okay, we've found a method name intended for this protoregex.
    # Look up the method itself.
    .local pmc rx
    rx = find_method self, method_name

    # Now find the prefix tokens for the method; calling the
    # method name with a !PREFIX__ prefix should return us a list
    # of valid token prefixes.  If no such method exists, then
    # our token prefix is a null string.
    .local pmc tokens, tokens_it
    $S0 = concat '!PREFIX__', method_name
    $I0 = can self, $S0
    unless $I0 goto method_peek_none
    tokens = self.$S0()
    goto method_peek_done
  method_peek_none:
    tokens = new ['ResizablePMCArray']
    push tokens, ''
  method_peek_done:

    # Now loop through all of the tokens for the method, updating
    # the longest length per initial token character and adding
    # the token to the tokrx hash.  Entries in the tokrx hash
    # are automatically promoted to arrays when there's more
    # than one candidate, and any arrays created are placed into
    # sorttok so they can have a secondary sort below.
    .local pmc seentok
    seentok = new ['Hash']
  tokens_loop:
    unless tokens goto tokens_done
    .local string tkey, tfirst
    $P0 = shift tokens
    $I0 = isa $P0, ['ResizablePMCArray']
    unless $I0 goto token_item
    splice tokens, $P0, 0, 0
    goto tokens_loop
  token_item:
    tkey = $P0

    # If we've already processed this token for this rule, 
    # don't enter it twice into tokrx.
    $I0 = exists seentok[tkey]
    if $I0 goto tokens_loop
    seentok[tkey] = seentok

    # Keep track of longest token lengths by initial character
    tfirst = substr tkey, 0, 1
    $I0 = length tkey
    $I1 = toklen[tfirst]
    if $I0 <= $I1 goto toklen_done
    toklen[tfirst] = $I0
  toklen_done:

    # Add the regex to the list under the token key, promoting
    # entries to lists as appropriate.
    .local pmc rxlist
    rxlist = tokrx[tkey]
    if null rxlist goto rxlist_0
    $I0 = isa rxlist, ['ResizablePMCArray']
    if $I0 goto rxlist_n
  rxlist_1:
    $I0 = issame rx, rxlist
    if $I0 goto tokens_loop
    $P0 = rxlist
    rxlist = new ['ResizablePMCArray']
    push sorttok, rxlist
    push rxlist, $P0
    push rxlist, rx
    tokrx[tkey] = rxlist
    goto tokens_loop
  rxlist_n:
    push rxlist, rx
    goto tokens_loop
  rxlist_0:
    tokrx[tkey] = rx
    goto tokens_loop
  tokens_done:
    goto method_loop
  method_done:

    # in-place sort the keys that ended up with multiple entries
    .const 'Sub' $P99 = '!protoregex_cmp'
  sorttok_loop:
    unless sorttok goto sorttok_done
    rxlist = shift sorttok
    rxlist.'sort'($P99)
    goto sorttok_loop
  sorttok_done:

    # It's built!  Now store the tokrx and toklen hashes in the
    # prototable and return them to the caller.
    $S0 = concat name, '.tokrx'
    prototable[$S0] = tokrx
    $S0 = concat name, '.toklen'
    prototable[$S0] = toklen

  tokrx_done:
    .return (tokrx, toklen)
.end

.sub '!protoregex_cmp' :anon
    .param pmc a
    .param pmc b
    $S0 = a
    $I0 = length $S0
    $S1 = b
    $I1 = length $S1
    $I2 = cmp $I1, $I0
    .return ($I2)
.end

=item !protoregex_gen_table(parrotclass)

Generate a new protoregex table for C<parrotclass>.  This involves
creating a hash keyed with method names containing ':sym<' from
C<parrotclass> and all of its superclasses.  This new hash is
then given the current C<$!generate> property so we can avoid
recreating it on future calls.

=cut

.sub '!protoregex_gen_table' :method
    .param pmc parrotclass

    .local pmc prototable
    prototable = new ['Hash']
    .local pmc class_it, method_it
    $P0 = parrotclass.'inspect'('all_parents')
    class_it = iter $P0
  class_loop:
    unless class_it goto class_done
    $P0 = shift class_it
    $P0 = $P0.'methods'()
    method_it = iter $P0
  method_loop:
    unless method_it goto class_loop
    $S0 = shift method_it
    $I0 = index $S0, ':sym<'
    if $I0 < 0 goto method_loop
    prototable[$S0] = prototable
    goto method_loop
  class_done:
    $P0 = get_global '$!generation'
    setprop prototable, '$!generation', $P0
    setprop parrotclass, '%!prototable', prototable
    .return (prototable)
.end
    

=item !protoregex_peek(name)

Return the set of initial tokens for protoregex C<name>.
These are conveniently available as the keys of the
tokrx hash.

=cut

.sub '!protoregex_peek' :method
    .param string name

    .local pmc tokrx
    tokrx = self.'!protoregex_tokrx'(name)
    unless tokrx goto peek_none

    .local pmc results, tokrx_it
    results = new ['ResizablePMCArray']
    tokrx_it = iter tokrx
  tokrx_loop:
    unless tokrx_it goto tokrx_done
    $S0 = shift tokrx_it
    push results, $S0
    goto tokrx_loop
  tokrx_done:
    .return (results)

  peek_none:
    .return ('')
.end


.sub '!subrule_peek' :method
    .param string name
    .param string prefix

    $S0 = concat '!PREFIX__', name
    $I0 = can self, $S0
    unless $I0 goto subrule_none
    .local pmc tokens, tokens_it
    tokens = self.$S0()
    unless tokens goto subrule_none
    unless prefix goto tokens_done
    tokens_it = iter tokens
    tokens = new ['ResizablePMCArray']
  tokens_loop:
    unless tokens_it goto tokens_done
    $S0 = shift tokens_it
    $S0 = concat prefix, $S0
    push tokens, $S0
    goto tokens_loop
  tokens_done:
    .return (tokens)

  subrule_none:
    .return (prefix)
.end


.sub 'DUMP_TOKRX' :method
    .param string name

    .local pmc tokrx
    tokrx = self.'!protoregex_tokrx'(name)
    _dumper(tokrx, name)
    .return (1)
.end

=back

=cut
### .include 'src/Regex/Match.pir'
# Copyright (C) 2009, Patrick R. Michaud
# $Id$

=head1 NAME

Regex::Match - Regex Match objects

=head1 DESCRIPTION

This file implements Match objects for the regex engine.

=cut

.namespace ['Regex';'Match']

.sub '' :anon :load :init
    load_bytecode 'P6object.pbc'
    .local pmc p6meta
    p6meta = new 'P6metaclass'
    $P0 = p6meta.'new_class'('Regex::Match', 'parent'=>'Capture', 'attr'=>'$!target $!from $!to $!ast')
    .return ()
.end

=head2 Methods

=over 4

=item from()

Returns the offset in the target string of the beginning of the match.

=cut

.sub 'from' :method
    $P0 = getattribute self, '$!from'
    .return ($P0)
.end


=item to()

Returns the offset in the target string of the end of the match.

=cut

.sub 'to' :method
    $P0 = getattribute self, '$!to'
    .return ($P0)
.end


=item chars()

Returns C<.to() - .from()>

=cut

.sub 'chars' :method
    $I0 = self.'to'()
    $I1 = self.'from'()
    $I2 = $I0 - $I1
    .return ($I2)
.end


=item orig()

Return the original item that was matched against.

=cut

.sub 'orig' :method
    $P0 = getattribute self, '$!target'
    .return ($P0)
.end


=item Str()

Returns the portion of the target corresponding to this match.

=cut

.sub 'Str' :method
    $S0 = self.'orig'()
    $I0 = self.'from'()
    $I1 = self.'to'()
    $I1 -= $I0
    $S1 = substr $S0, $I0, $I1
    .return ($S1)
.end


=item ast()

Returns the "abstract object" for the Match; if no abstract object
has been set then returns C<Str> above.

=cut

.sub 'ast' :method
    .local pmc ast
    ast = getattribute self, '$!ast'
    if null ast goto ret_null
    .return (ast)
  ret_null:
    .tailcall self.'Str'()
.end

.sub 'peek_ast' :method
    .local pmc ast
    ast = getattribute self, '$!ast'
    unless null ast goto have_ast
    ast = new ['Undef']
  have_ast:
    .return (ast)
.end

=back

=head2 Vtable functions

=over 4

=item get_bool()

Returns 1 (true) if this is the result of a successful match,
otherwise returns 0 (false).

=cut

.sub '' :vtable('get_bool') :method
    $P0 = getattribute self, '$!from'
    $P1 = getattribute self, '$!to'
    $I0 = isge $P1, $P0
    .return ($I0)
.end


=item get_integer()

Returns the integer value of the matched text.

=cut

.sub '' :vtable('get_integer') :method
    $I0 = self.'Str'()
    .return ($I0)
.end


=item get_number()

Returns the numeric value of this match

=cut

.sub '' :vtable('get_number') :method
    $N0 = self.'Str'()
    .return ($N0)
.end


=item get_string()

Returns the string value of the match

=cut

.sub '' :vtable('get_string') :method
    $S0 = self.'Str'()
    .return ($S0)
.end
    

=item !make(obj)

Set the "ast object" for the invocant.

=cut

.sub '!make' :method
    .param pmc obj
    setattribute self, '$!ast', obj
    .return (obj)
.end
    

=back

=head1 AUTHORS

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
### .include 'src/Regex/Dumper.pir'
# Copyright (C) 2005-2009, Parrot Foundation.
# $Id$

=head1 TITLE

Regex::Dumper - various methods for displaying Match structures

=head2 C<Regex::Match> Methods

=over 4

=item C<__dump(PMC dumper, STR label)>

This method enables Data::Dumper to work on Regex::Match objects.

=cut

.namespace ['Regex';'Match']

.sub "__dump" :method
    .param pmc dumper
    .param string label
    .local string indent, subindent
    .local pmc it, val
    .local string key
    .local pmc hash, array
    .local int hascapts

    (subindent, indent) = dumper."newIndent"()
    print "=> "
    $S0 = self
    dumper."genericString"("", $S0)
    print " @ "
    $I0 = self.'from'()
    print $I0
    hascapts = 0
    hash = self.'hash'()
    if_null hash, dump_array
    it = iter hash
  dump_hash_1:
    unless it goto dump_array
    if hascapts goto dump_hash_2
    print " {"
    hascapts = 1
  dump_hash_2:
    print "\n"
    print subindent
    key = shift it
    val = hash[key]
    print "<"
    print key
    print "> => "
    dumper."dump"(label, val)
    goto dump_hash_1
  dump_array:
    array = self.'list'()
    if_null array, dump_end
    $I1 = elements array
    $I0 = 0
  dump_array_1:
    if $I0 >= $I1 goto dump_end
    if hascapts goto dump_array_2
    print " {"
    hascapts = 1
  dump_array_2:
    print "\n"
    print subindent
    val = array[$I0]
    print "["
    print $I0
    print "] => "
    dumper."dump"(label, val)
    inc $I0
    goto dump_array_1
  dump_end:
    unless hascapts goto end
    print "\n"
    print indent
    print "}"
  end:
    dumper."deleteIndent"()
.end


=item C<dump_str()>

An alternate dump output for a Match object and all of its subcaptures.

=cut

.sub "dump_str" :method
    .param string prefix       :optional           # name of match variable
    .param int has_prefix      :opt_flag
    .param string b1           :optional           # bracket open
    .param int has_b1          :opt_flag
    .param string b2           :optional           # bracket close
    .param int has_b2          :opt_flag

    .local pmc capt
    .local int spi, spc
    .local pmc it
    .local string prefix1, prefix2
    .local pmc jmpstack
    jmpstack = new 'ResizableIntegerArray'

    if has_b2 goto start
    b2 = "]"
    if has_b1 goto start
    b1 = "["
  start:
    .local string out
    out = concat prefix, ':'
    unless self goto subpats
    out .= ' <'
    $S0 = self
    out .= $S0
    out .= ' @ '
    $S0 = self.'from'()
    out .= $S0
    out .= '> '

  subpats:
    $I0 = self
    $S0 = $I0
    out .= $S0
    out .= "\n"
    capt = self.'list'()
    if_null capt, subrules
    spi = 0
    spc = elements capt
  subpats_1:
    unless spi < spc goto subrules
    prefix1 = concat prefix, b1
    $S0 = spi
    concat prefix1, $S0
    concat prefix1, b2
    $I0 = defined capt[spi]
    unless $I0 goto subpats_2
    $P0 = capt[spi]
    local_branch jmpstack, dumper
  subpats_2:
    inc spi
    goto subpats_1

  subrules:
    capt = self.'hash'()
    if_null capt, end
    it = iter capt
  subrules_1:
    unless it goto end
    $S0 = shift it
    prefix1 = concat prefix, '<'
    concat prefix1, $S0
    concat prefix1, ">"
    $I0 = defined capt[$S0]
    unless $I0 goto subrules_1
    $P0 = capt[$S0]
    local_branch jmpstack, dumper
    goto subrules_1

  dumper:
    $I0 = isa $P0, ['Regex';'Match']
    unless $I0 goto dumper_0
    $S0 = $P0.'dump_str'(prefix1, b1, b2)
    out .= $S0
    local_return jmpstack
  dumper_0:
    $I0 = does $P0, 'array'
    unless $I0 goto dumper_3
    $I0 = 0
    $I1 = elements $P0
  dumper_1:
    if $I0 >= $I1 goto dumper_2
    $P1 = $P0[$I0]
    prefix2 = concat prefix1, b1
    $S0 = $I0
    concat prefix2, $S0
    concat prefix2, b2
    $S0 = $P1.'dump_str'(prefix2, b1, b2)
    out .= $S0
    inc $I0
    goto dumper_1
  dumper_2:
    local_return jmpstack
  dumper_3:
    out .= prefix1
    out .= ': '
    $S0 = $P0
    out .= $S0
    out .= "\n"
    local_return jmpstack

  end:
    .return (out)
.end


=back

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
# .include 'src/cheats/regex-cursor-protoregex.pir'

### .include 'src/gen/p6regex-grammar.pir'

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block11"  :subid("10_1256225891.75885")
.annotate "line", 0
    .const 'Sub' $P423 = "141_1256225891.75885" 
    capture_lex $P423
    .const 'Sub' $P416 = "139_1256225891.75885" 
    capture_lex $P416
    .const 'Sub' $P409 = "137_1256225891.75885" 
    capture_lex $P409
    .const 'Sub' $P392 = "133_1256225891.75885" 
    capture_lex $P392
    .const 'Sub' $P358 = "127_1256225891.75885" 
    capture_lex $P358
    .const 'Sub' $P347 = "124_1256225891.75885" 
    capture_lex $P347
    .const 'Sub' $P335 = "121_1256225891.75885" 
    capture_lex $P335
    .const 'Sub' $P331 = "119_1256225891.75885" 
    capture_lex $P331
    .const 'Sub' $P322 = "116_1256225891.75885" 
    capture_lex $P322
    .const 'Sub' $P313 = "113_1256225891.75885" 
    capture_lex $P313
    .const 'Sub' $P307 = "110_1256225891.75885" 
    capture_lex $P307
    .const 'Sub' $P303 = "108_1256225891.75885" 
    capture_lex $P303
    .const 'Sub' $P299 = "106_1256225891.75885" 
    capture_lex $P299
    .const 'Sub' $P295 = "104_1256225891.75885" 
    capture_lex $P295
    .const 'Sub' $P291 = "102_1256225891.75885" 
    capture_lex $P291
    .const 'Sub' $P286 = "100_1256225891.75885" 
    capture_lex $P286
    .const 'Sub' $P281 = "98_1256225891.75885" 
    capture_lex $P281
    .const 'Sub' $P276 = "96_1256225891.75885" 
    capture_lex $P276
    .const 'Sub' $P271 = "94_1256225891.75885" 
    capture_lex $P271
    .const 'Sub' $P266 = "92_1256225891.75885" 
    capture_lex $P266
    .const 'Sub' $P261 = "90_1256225891.75885" 
    capture_lex $P261
    .const 'Sub' $P256 = "88_1256225891.75885" 
    capture_lex $P256
    .const 'Sub' $P251 = "86_1256225891.75885" 
    capture_lex $P251
    .const 'Sub' $P238 = "83_1256225891.75885" 
    capture_lex $P238
    .const 'Sub' $P233 = "81_1256225891.75885" 
    capture_lex $P233
    .const 'Sub' $P217 = "79_1256225891.75885" 
    capture_lex $P217
    .const 'Sub' $P212 = "77_1256225891.75885" 
    capture_lex $P212
    .const 'Sub' $P208 = "75_1256225891.75885" 
    capture_lex $P208
    .const 'Sub' $P204 = "73_1256225891.75885" 
    capture_lex $P204
    .const 'Sub' $P198 = "71_1256225891.75885" 
    capture_lex $P198
    .const 'Sub' $P192 = "69_1256225891.75885" 
    capture_lex $P192
    .const 'Sub' $P187 = "67_1256225891.75885" 
    capture_lex $P187
    .const 'Sub' $P182 = "65_1256225891.75885" 
    capture_lex $P182
    .const 'Sub' $P177 = "63_1256225891.75885" 
    capture_lex $P177
    .const 'Sub' $P172 = "61_1256225891.75885" 
    capture_lex $P172
    .const 'Sub' $P167 = "59_1256225891.75885" 
    capture_lex $P167
    .const 'Sub' $P162 = "57_1256225891.75885" 
    capture_lex $P162
    .const 'Sub' $P157 = "55_1256225891.75885" 
    capture_lex $P157
    .const 'Sub' $P153 = "53_1256225891.75885" 
    capture_lex $P153
    .const 'Sub' $P149 = "51_1256225891.75885" 
    capture_lex $P149
    .const 'Sub' $P145 = "49_1256225891.75885" 
    capture_lex $P145
    .const 'Sub' $P141 = "47_1256225891.75885" 
    capture_lex $P141
    .const 'Sub' $P128 = "43_1256225891.75885" 
    capture_lex $P128
    .const 'Sub' $P117 = "41_1256225891.75885" 
    capture_lex $P117
    .const 'Sub' $P112 = "39_1256225891.75885" 
    capture_lex $P112
    .const 'Sub' $P107 = "37_1256225891.75885" 
    capture_lex $P107
    .const 'Sub' $P102 = "35_1256225891.75885" 
    capture_lex $P102
    .const 'Sub' $P87 = "31_1256225891.75885" 
    capture_lex $P87
    .const 'Sub' $P76 = "28_1256225891.75885" 
    capture_lex $P76
    .const 'Sub' $P70 = "26_1256225891.75885" 
    capture_lex $P70
    .const 'Sub' $P59 = "24_1256225891.75885" 
    capture_lex $P59
    .const 'Sub' $P54 = "22_1256225891.75885" 
    capture_lex $P54
    .const 'Sub' $P42 = "20_1256225891.75885" 
    capture_lex $P42
    .const 'Sub' $P36 = "18_1256225891.75885" 
    capture_lex $P36
    .const 'Sub' $P29 = "16_1256225891.75885" 
    capture_lex $P29
    .const 'Sub' $P20 = "13_1256225891.75885" 
    capture_lex $P20
    .const 'Sub' $P13 = "11_1256225891.75885" 
    capture_lex $P13
.annotate "line", 165
    .const 'Sub' $P423 = "141_1256225891.75885" 
    capture_lex $P423
.annotate "line", 1
    .return ($P423)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post143") :outer("10_1256225891.75885")
.annotate "line", 0
    get_hll_global $P12, ["Regex";"P6Regex";"Grammar"], "_block11" 
    .local pmc block
    set block, $P12
.annotate "line", 1
    get_hll_global $P430, "P6metaclass"
    $P430."new_class"("Regex::P6Regex::Grammar", "Regex::Cursor" :named("parent"))
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("11_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 3
    .local string rx14_tgt
    .local int rx14_pos
    .local int rx14_off
    .local int rx14_eos
    .local int rx14_rep
    .local pmc rx14_cur
    (rx14_cur, rx14_pos, rx14_tgt, $I10) = self."!cursor_start"()
    rx14_cur."!cursor_debug"("START ", "ws")
    .lex unicode:"$\x{a2}", rx14_cur
    length rx14_eos, rx14_tgt
    set rx14_off, 0
    lt $I10, 2, rx14_start
    sub rx14_off, $I10, 1
    substr rx14_tgt, rx14_tgt, rx14_off
  rx14_start:
  # rx rxquantr17 ** 0..*
    set_addr $I19, rxquantr17_done
    rx14_cur."!mark_push"(0, rx14_pos, $I19)
  rxquantr17_loop:
  alt18_0:
    set_addr $I10, alt18_1
    rx14_cur."!mark_push"(0, rx14_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx14_pos, rx14_off
    find_not_cclass $I11, 32, rx14_tgt, $I10, rx14_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx14_fail
    add rx14_pos, rx14_off, $I11
    goto alt18_end
  alt18_1:
  # rx literal  "#"
    add $I11, rx14_pos, 1
    gt $I11, rx14_eos, rx14_fail
    sub $I11, rx14_pos, rx14_off
    substr $S10, rx14_tgt, $I11, 1
    ne $S10, "#", rx14_fail
    add rx14_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx14_pos, rx14_off
    find_cclass $I11, 4096, rx14_tgt, $I10, rx14_eos
    add rx14_pos, rx14_off, $I11
  alt18_end:
    (rx14_rep) = rx14_cur."!mark_commit"($I19)
    rx14_cur."!mark_push"(rx14_rep, rx14_pos, $I19)
    goto rxquantr17_loop
  rxquantr17_done:
  # rx pass
    rx14_cur."!cursor_pass"(rx14_pos, "ws")
    rx14_cur."!cursor_debug"("PASS  ", "ws", " at pos=", rx14_pos)
    .return (rx14_cur)
  rx14_fail:
    (rx14_rep, rx14_pos, $I10, $P10) = rx14_cur."!mark_fail"(0)
    lt rx14_pos, -1, rx14_done
    eq rx14_pos, -1, rx14_fail
    jump $I10
  rx14_done:
    rx14_cur."!cursor_fail"()
    rx14_cur."!cursor_debug"("FAIL  ", "ws")
    .return (rx14_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :subid("12_1256225891.75885") :method
.annotate "line", 3
    new $P16, "ResizablePMCArray"
    push $P16, ""
    .return ($P16)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("13_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 5
    .const 'Sub' $P25 = "15_1256225891.75885" 
    capture_lex $P25
    .local string rx21_tgt
    .local int rx21_pos
    .local int rx21_off
    .local int rx21_eos
    .local int rx21_rep
    .local pmc rx21_cur
    (rx21_cur, rx21_pos, rx21_tgt, $I10) = self."!cursor_start"()
    rx21_cur."!cursor_debug"("START ", "normspace")
    .lex unicode:"$\x{a2}", rx21_cur
    length rx21_eos, rx21_tgt
    set rx21_off, 0
    lt $I10, 2, rx21_start
    sub rx21_off, $I10, 1
    substr rx21_tgt, rx21_tgt, rx21_off
  rx21_start:
  # rx subrule "before" subtype=zerowidth negate=
    rx21_cur."!cursor_pos"(rx21_pos)
    .const 'Sub' $P25 = "15_1256225891.75885" 
    capture_lex $P25
    $P10 = rx21_cur."before"($P25)
    unless $P10, rx21_fail
  # rx subrule "ws" subtype=method negate=
    rx21_cur."!cursor_pos"(rx21_pos)
    $P10 = rx21_cur."ws"()
    unless $P10, rx21_fail
    rx21_pos = $P10."pos"()
  # rx pass
    rx21_cur."!cursor_pass"(rx21_pos, "normspace")
    rx21_cur."!cursor_debug"("PASS  ", "normspace", " at pos=", rx21_pos)
    .return (rx21_cur)
  rx21_fail:
    (rx21_rep, rx21_pos, $I10, $P10) = rx21_cur."!mark_fail"(0)
    lt rx21_pos, -1, rx21_done
    eq rx21_pos, -1, rx21_fail
    jump $I10
  rx21_done:
    rx21_cur."!cursor_fail"()
    rx21_cur."!cursor_debug"("FAIL  ", "normspace")
    .return (rx21_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :subid("14_1256225891.75885") :method
.annotate "line", 5
    new $P23, "ResizablePMCArray"
    push $P23, ""
    .return ($P23)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block24"  :anon :subid("15_1256225891.75885") :method :outer("13_1256225891.75885")
.annotate "line", 5
    .local string rx26_tgt
    .local int rx26_pos
    .local int rx26_off
    .local int rx26_eos
    .local int rx26_rep
    .local pmc rx26_cur
    (rx26_cur, rx26_pos, rx26_tgt, $I10) = self."!cursor_start"()
    rx26_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx26_cur
    length rx26_eos, rx26_tgt
    set rx26_off, 0
    lt $I10, 2, rx26_start
    sub rx26_off, $I10, 1
    substr rx26_tgt, rx26_tgt, rx26_off
  rx26_start:
    ge rx26_pos, 0, rxscan27_done
  rxscan27_loop:
    ($P10) = rx26_cur."from"()
    inc $P10
    set rx26_pos, $P10
    ge rx26_pos, rx26_eos, rxscan27_done
    set_addr $I10, rxscan27_loop
    rx26_cur."!mark_push"(0, rx26_pos, $I10)
  rxscan27_done:
  alt28_0:
    set_addr $I10, alt28_1
    rx26_cur."!mark_push"(0, rx26_pos, $I10)
  # rx charclass s
    ge rx26_pos, rx26_eos, rx26_fail
    sub $I10, rx26_pos, rx26_off
    is_cclass $I11, 32, rx26_tgt, $I10
    unless $I11, rx26_fail
    inc rx26_pos
    goto alt28_end
  alt28_1:
  # rx literal  "#"
    add $I11, rx26_pos, 1
    gt $I11, rx26_eos, rx26_fail
    sub $I11, rx26_pos, rx26_off
    substr $S10, rx26_tgt, $I11, 1
    ne $S10, "#", rx26_fail
    add rx26_pos, 1
  alt28_end:
  # rx pass
    rx26_cur."!cursor_pass"(rx26_pos, "")
    rx26_cur."!cursor_debug"("PASS  ", "", " at pos=", rx26_pos)
    .return (rx26_cur)
  rx26_fail:
    (rx26_rep, rx26_pos, $I10, $P10) = rx26_cur."!mark_fail"(0)
    lt rx26_pos, -1, rx26_done
    eq rx26_pos, -1, rx26_fail
    jump $I10
  rx26_done:
    rx26_cur."!cursor_fail"()
    rx26_cur."!cursor_debug"("FAIL  ", "")
    .return (rx26_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quote"  :subid("16_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 7
    .local string rx30_tgt
    .local int rx30_pos
    .local int rx30_off
    .local int rx30_eos
    .local int rx30_rep
    .local pmc rx30_cur
    (rx30_cur, rx30_pos, rx30_tgt, $I10) = self."!cursor_start"()
    rx30_cur."!cursor_debug"("START ", "quote")
    .lex unicode:"$\x{a2}", rx30_cur
    length rx30_eos, rx30_tgt
    set rx30_off, 0
    lt $I10, 2, rx30_start
    sub rx30_off, $I10, 1
    substr rx30_tgt, rx30_tgt, rx30_off
  rx30_start:
  # rx literal  "'"
    add $I11, rx30_pos, 1
    gt $I11, rx30_eos, rx30_fail
    sub $I11, rx30_pos, rx30_off
    substr $S10, rx30_tgt, $I11, 1
    ne $S10, "'", rx30_fail
    add rx30_pos, 1
  # rx subcapture "val"
    set_addr $I10, rxcap_35_fail
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  # rx rxquantr33 ** 0..*
    set_addr $I34, rxquantr33_done
    rx30_cur."!mark_push"(0, rx30_pos, $I34)
  rxquantr33_loop:
  # rx enumcharlist negate=1 
    ge rx30_pos, rx30_eos, rx30_fail
    sub $I10, rx30_pos, rx30_off
    substr $S10, rx30_tgt, $I10, 1
    index $I11, "'", $S10
    ge $I11, 0, rx30_fail
    inc rx30_pos
    (rx30_rep) = rx30_cur."!mark_commit"($I34)
    rx30_cur."!mark_push"(rx30_rep, rx30_pos, $I34)
    goto rxquantr33_loop
  rxquantr33_done:
    set_addr $I10, rxcap_35_fail
    ($I12, $I11) = rx30_cur."!mark_peek"($I10)
    rx30_cur."!cursor_pos"($I11)
    ($P10) = rx30_cur."!cursor_start"()
    $P10."!cursor_pass"(rx30_pos, "")
    rx30_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_35_done
  rxcap_35_fail:
    goto rx30_fail
  rxcap_35_done:
  # rx literal  "'"
    add $I11, rx30_pos, 1
    gt $I11, rx30_eos, rx30_fail
    sub $I11, rx30_pos, rx30_off
    substr $S10, rx30_tgt, $I11, 1
    ne $S10, "'", rx30_fail
    add rx30_pos, 1
  # rx pass
    rx30_cur."!cursor_pass"(rx30_pos, "quote")
    rx30_cur."!cursor_debug"("PASS  ", "quote", " at pos=", rx30_pos)
    .return (rx30_cur)
  rx30_fail:
    (rx30_rep, rx30_pos, $I10, $P10) = rx30_cur."!mark_fail"(0)
    lt rx30_pos, -1, rx30_done
    eq rx30_pos, -1, rx30_fail
    jump $I10
  rx30_done:
    rx30_cur."!cursor_fail"()
    rx30_cur."!cursor_debug"("FAIL  ", "quote")
    .return (rx30_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quote"  :subid("17_1256225891.75885") :method
.annotate "line", 7
    new $P32, "ResizablePMCArray"
    push $P32, "'"
    .return ($P32)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("18_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 9
    .local string rx37_tgt
    .local int rx37_pos
    .local int rx37_off
    .local int rx37_eos
    .local int rx37_rep
    .local pmc rx37_cur
    (rx37_cur, rx37_pos, rx37_tgt, $I10) = self."!cursor_start"()
    rx37_cur."!cursor_debug"("START ", "arg")
    .lex unicode:"$\x{a2}", rx37_cur
    length rx37_eos, rx37_tgt
    set rx37_off, 0
    lt $I10, 2, rx37_start
    sub rx37_off, $I10, 1
    substr rx37_tgt, rx37_tgt, rx37_off
  rx37_start:
  alt40_0:
.annotate "line", 10
    set_addr $I10, alt40_1
    rx37_cur."!mark_push"(0, rx37_pos, $I10)
.annotate "line", 11
  # rx subrule "quote" subtype=capture negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."quote"()
    unless $P10, rx37_fail
    rx37_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx37_pos = $P10."pos"()
    goto alt40_end
  alt40_1:
.annotate "line", 12
  # rx subcapture "value"
    set_addr $I10, rxcap_41_fail
    rx37_cur."!mark_push"(0, rx37_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx37_pos, rx37_off
    find_not_cclass $I11, 8, rx37_tgt, $I10, rx37_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx37_fail
    add rx37_pos, rx37_off, $I11
    set_addr $I10, rxcap_41_fail
    ($I12, $I11) = rx37_cur."!mark_peek"($I10)
    rx37_cur."!cursor_pos"($I11)
    ($P10) = rx37_cur."!cursor_start"()
    $P10."!cursor_pass"(rx37_pos, "")
    rx37_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    goto rxcap_41_done
  rxcap_41_fail:
    goto rx37_fail
  rxcap_41_done:
  alt40_end:
.annotate "line", 9
  # rx pass
    rx37_cur."!cursor_pass"(rx37_pos, "arg")
    rx37_cur."!cursor_debug"("PASS  ", "arg", " at pos=", rx37_pos)
    .return (rx37_cur)
  rx37_fail:
    (rx37_rep, rx37_pos, $I10, $P10) = rx37_cur."!mark_fail"(0)
    lt rx37_pos, -1, rx37_done
    eq rx37_pos, -1, rx37_fail
    jump $I10
  rx37_done:
    rx37_cur."!cursor_fail"()
    rx37_cur."!cursor_debug"("FAIL  ", "arg")
    .return (rx37_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :subid("19_1256225891.75885") :method
.annotate "line", 9
    new $P39, "ResizablePMCArray"
    push $P39, ""
    push $P39, ""
    .return ($P39)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("20_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 16
    .local string rx43_tgt
    .local int rx43_pos
    .local int rx43_off
    .local int rx43_eos
    .local int rx43_rep
    .local pmc rx43_cur
    (rx43_cur, rx43_pos, rx43_tgt, $I10) = self."!cursor_start"()
    rx43_cur."!cursor_debug"("START ", "arglist")
    rx43_cur."!cursor_caparray"("arg")
    .lex unicode:"$\x{a2}", rx43_cur
    length rx43_eos, rx43_tgt
    set rx43_off, 0
    lt $I10, 2, rx43_start
    sub rx43_off, $I10, 1
    substr rx43_tgt, rx43_tgt, rx43_off
  rx43_start:
  # rx subrule "ws" subtype=method negate=
    rx43_cur."!cursor_pos"(rx43_pos)
    $P10 = rx43_cur."ws"()
    unless $P10, rx43_fail
    rx43_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx43_cur."!cursor_pos"(rx43_pos)
    $P10 = rx43_cur."arg"()
    unless $P10, rx43_fail
    rx43_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx43_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx43_cur."!cursor_pos"(rx43_pos)
    $P10 = rx43_cur."ws"()
    unless $P10, rx43_fail
    rx43_pos = $P10."pos"()
  # rx rxquantr48 ** 0..*
    set_addr $I52, rxquantr48_done
    rx43_cur."!mark_push"(0, rx43_pos, $I52)
  rxquantr48_loop:
  # rx subrule "ws" subtype=method negate=
    rx43_cur."!cursor_pos"(rx43_pos)
    $P10 = rx43_cur."ws"()
    unless $P10, rx43_fail
    rx43_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx43_pos, 1
    gt $I11, rx43_eos, rx43_fail
    sub $I11, rx43_pos, rx43_off
    substr $S10, rx43_tgt, $I11, 1
    ne $S10, ",", rx43_fail
    add rx43_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx43_cur."!cursor_pos"(rx43_pos)
    $P10 = rx43_cur."ws"()
    unless $P10, rx43_fail
    rx43_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx43_cur."!cursor_pos"(rx43_pos)
    $P10 = rx43_cur."arg"()
    unless $P10, rx43_fail
    rx43_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx43_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx43_cur."!cursor_pos"(rx43_pos)
    $P10 = rx43_cur."ws"()
    unless $P10, rx43_fail
    rx43_pos = $P10."pos"()
    (rx43_rep) = rx43_cur."!mark_commit"($I52)
    rx43_cur."!mark_push"(rx43_rep, rx43_pos, $I52)
    goto rxquantr48_loop
  rxquantr48_done:
  # rx subrule "ws" subtype=method negate=
    rx43_cur."!cursor_pos"(rx43_pos)
    $P10 = rx43_cur."ws"()
    unless $P10, rx43_fail
    rx43_pos = $P10."pos"()
  # rx pass
    rx43_cur."!cursor_pass"(rx43_pos, "arglist")
    rx43_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx43_pos)
    .return (rx43_cur)
  rx43_fail:
    (rx43_rep, rx43_pos, $I10, $P10) = rx43_cur."!mark_fail"(0)
    lt rx43_pos, -1, rx43_done
    eq rx43_pos, -1, rx43_fail
    jump $I10
  rx43_done:
    rx43_cur."!cursor_fail"()
    rx43_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx43_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :subid("21_1256225891.75885") :method
.annotate "line", 16
    new $P45, "ResizablePMCArray"
    push $P45, ""
    .return ($P45)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("22_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 18
    .local string rx55_tgt
    .local int rx55_pos
    .local int rx55_off
    .local int rx55_eos
    .local int rx55_rep
    .local pmc rx55_cur
    (rx55_cur, rx55_pos, rx55_tgt, $I10) = self."!cursor_start"()
    rx55_cur."!cursor_debug"("START ", "TOP")
    .lex unicode:"$\x{a2}", rx55_cur
    length rx55_eos, rx55_tgt
    set rx55_off, 0
    lt $I10, 2, rx55_start
    sub rx55_off, $I10, 1
    substr rx55_tgt, rx55_tgt, rx55_off
  rx55_start:
.annotate "line", 19
  # rx subrule "nibbler" subtype=capture negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."nibbler"()
    unless $P10, rx55_fail
    rx55_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx55_pos = $P10."pos"()
  alt58_0:
.annotate "line", 20
    set_addr $I10, alt58_1
    rx55_cur."!mark_push"(0, rx55_pos, $I10)
  # rxanchor eos
    ne rx55_pos, rx55_eos, rx55_fail
    goto alt58_end
  alt58_1:
  # rx subrule "panic" subtype=method negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."panic"("Confused")
    unless $P10, rx55_fail
    rx55_pos = $P10."pos"()
  alt58_end:
.annotate "line", 18
  # rx pass
    rx55_cur."!cursor_pass"(rx55_pos, "TOP")
    rx55_cur."!cursor_debug"("PASS  ", "TOP", " at pos=", rx55_pos)
    .return (rx55_cur)
  rx55_fail:
    (rx55_rep, rx55_pos, $I10, $P10) = rx55_cur."!mark_fail"(0)
    lt rx55_pos, -1, rx55_done
    eq rx55_pos, -1, rx55_fail
    jump $I10
  rx55_done:
    rx55_cur."!cursor_fail"()
    rx55_cur."!cursor_debug"("FAIL  ", "TOP")
    .return (rx55_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :subid("23_1256225891.75885") :method
.annotate "line", 18
    new $P57, "ResizablePMCArray"
    push $P57, ""
    .return ($P57)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("24_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 23
    .local string rx60_tgt
    .local int rx60_pos
    .local int rx60_off
    .local int rx60_eos
    .local int rx60_rep
    .local pmc rx60_cur
    (rx60_cur, rx60_pos, rx60_tgt, $I10) = self."!cursor_start"()
    rx60_cur."!cursor_debug"("START ", "nibbler")
    rx60_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx60_cur
    length rx60_eos, rx60_tgt
    set rx60_off, 0
    lt $I10, 2, rx60_start
    sub rx60_off, $I10, 1
    substr rx60_tgt, rx60_tgt, rx60_off
  rx60_start:
.annotate "line", 24
  # rx reduce name="nibbler" key="open"
    rx60_cur."!cursor_pos"(rx60_pos)
    rx60_cur."!reduce"("nibbler", "open")
.annotate "line", 25
  # rx rxquantr63 ** 0..1
    set_addr $I65, rxquantr63_done
    rx60_cur."!mark_push"(0, rx60_pos, $I65)
  rxquantr63_loop:
  # rx subrule "ws" subtype=method negate=
    rx60_cur."!cursor_pos"(rx60_pos)
    $P10 = rx60_cur."ws"()
    unless $P10, rx60_fail
    rx60_pos = $P10."pos"()
  alt64_0:
    set_addr $I10, alt64_1
    rx60_cur."!mark_push"(0, rx60_pos, $I10)
  # rx literal  "||"
    add $I11, rx60_pos, 2
    gt $I11, rx60_eos, rx60_fail
    sub $I11, rx60_pos, rx60_off
    substr $S10, rx60_tgt, $I11, 2
    ne $S10, "||", rx60_fail
    add rx60_pos, 2
    goto alt64_end
  alt64_1:
    set_addr $I10, alt64_2
    rx60_cur."!mark_push"(0, rx60_pos, $I10)
  # rx literal  "|"
    add $I11, rx60_pos, 1
    gt $I11, rx60_eos, rx60_fail
    sub $I11, rx60_pos, rx60_off
    substr $S10, rx60_tgt, $I11, 1
    ne $S10, "|", rx60_fail
    add rx60_pos, 1
    goto alt64_end
  alt64_2:
    set_addr $I10, alt64_3
    rx60_cur."!mark_push"(0, rx60_pos, $I10)
  # rx literal  "&&"
    add $I11, rx60_pos, 2
    gt $I11, rx60_eos, rx60_fail
    sub $I11, rx60_pos, rx60_off
    substr $S10, rx60_tgt, $I11, 2
    ne $S10, "&&", rx60_fail
    add rx60_pos, 2
    goto alt64_end
  alt64_3:
  # rx literal  "&"
    add $I11, rx60_pos, 1
    gt $I11, rx60_eos, rx60_fail
    sub $I11, rx60_pos, rx60_off
    substr $S10, rx60_tgt, $I11, 1
    ne $S10, "&", rx60_fail
    add rx60_pos, 1
  alt64_end:
    (rx60_rep) = rx60_cur."!mark_commit"($I65)
  rxquantr63_done:
.annotate "line", 26
  # rx subrule "termish" subtype=capture negate=
    rx60_cur."!cursor_pos"(rx60_pos)
    $P10 = rx60_cur."termish"()
    unless $P10, rx60_fail
    rx60_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx60_pos = $P10."pos"()
.annotate "line", 29
  # rx rxquantr66 ** 0..*
    set_addr $I69, rxquantr66_done
    rx60_cur."!mark_push"(0, rx60_pos, $I69)
  rxquantr66_loop:
  alt67_0:
.annotate "line", 27
    set_addr $I10, alt67_1
    rx60_cur."!mark_push"(0, rx60_pos, $I10)
  # rx literal  "||"
    add $I11, rx60_pos, 2
    gt $I11, rx60_eos, rx60_fail
    sub $I11, rx60_pos, rx60_off
    substr $S10, rx60_tgt, $I11, 2
    ne $S10, "||", rx60_fail
    add rx60_pos, 2
    goto alt67_end
  alt67_1:
  # rx literal  "|"
    add $I11, rx60_pos, 1
    gt $I11, rx60_eos, rx60_fail
    sub $I11, rx60_pos, rx60_off
    substr $S10, rx60_tgt, $I11, 1
    ne $S10, "|", rx60_fail
    add rx60_pos, 1
  alt67_end:
  alt68_0:
.annotate "line", 28
    set_addr $I10, alt68_1
    rx60_cur."!mark_push"(0, rx60_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx60_cur."!cursor_pos"(rx60_pos)
    $P10 = rx60_cur."termish"()
    unless $P10, rx60_fail
    rx60_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx60_pos = $P10."pos"()
    goto alt68_end
  alt68_1:
  # rx subrule "panic" subtype=method negate=
    rx60_cur."!cursor_pos"(rx60_pos)
    $P10 = rx60_cur."panic"("Null pattern not allowed")
    unless $P10, rx60_fail
    rx60_pos = $P10."pos"()
  alt68_end:
.annotate "line", 29
    (rx60_rep) = rx60_cur."!mark_commit"($I69)
    rx60_cur."!mark_push"(rx60_rep, rx60_pos, $I69)
    goto rxquantr66_loop
  rxquantr66_done:
.annotate "line", 23
  # rx pass
    rx60_cur."!cursor_pass"(rx60_pos, "nibbler")
    rx60_cur."!cursor_debug"("PASS  ", "nibbler", " at pos=", rx60_pos)
    .return (rx60_cur)
  rx60_fail:
    (rx60_rep, rx60_pos, $I10, $P10) = rx60_cur."!mark_fail"(0)
    lt rx60_pos, -1, rx60_done
    eq rx60_pos, -1, rx60_fail
    jump $I10
  rx60_done:
    rx60_cur."!cursor_fail"()
    rx60_cur."!cursor_debug"("FAIL  ", "nibbler")
    .return (rx60_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :subid("25_1256225891.75885") :method
.annotate "line", 23
    new $P62, "ResizablePMCArray"
    push $P62, ""
    .return ($P62)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("26_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 32
    .local string rx71_tgt
    .local int rx71_pos
    .local int rx71_off
    .local int rx71_eos
    .local int rx71_rep
    .local pmc rx71_cur
    (rx71_cur, rx71_pos, rx71_tgt, $I10) = self."!cursor_start"()
    rx71_cur."!cursor_debug"("START ", "termish")
    rx71_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx71_cur
    length rx71_eos, rx71_tgt
    set rx71_off, 0
    lt $I10, 2, rx71_start
    sub rx71_off, $I10, 1
    substr rx71_tgt, rx71_tgt, rx71_off
  rx71_start:
.annotate "line", 33
  # rx rxquantr74 ** 1..*
    set_addr $I75, rxquantr74_done
    rx71_cur."!mark_push"(0, -1, $I75)
  rxquantr74_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx71_cur."!cursor_pos"(rx71_pos)
    $P10 = rx71_cur."quantified_atom"()
    unless $P10, rx71_fail
    rx71_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("noun")
    rx71_pos = $P10."pos"()
    (rx71_rep) = rx71_cur."!mark_commit"($I75)
    rx71_cur."!mark_push"(rx71_rep, rx71_pos, $I75)
    goto rxquantr74_loop
  rxquantr74_done:
.annotate "line", 32
  # rx pass
    rx71_cur."!cursor_pass"(rx71_pos, "termish")
    rx71_cur."!cursor_debug"("PASS  ", "termish", " at pos=", rx71_pos)
    .return (rx71_cur)
  rx71_fail:
    (rx71_rep, rx71_pos, $I10, $P10) = rx71_cur."!mark_fail"(0)
    lt rx71_pos, -1, rx71_done
    eq rx71_pos, -1, rx71_fail
    jump $I10
  rx71_done:
    rx71_cur."!cursor_fail"()
    rx71_cur."!cursor_debug"("FAIL  ", "termish")
    .return (rx71_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :subid("27_1256225891.75885") :method
.annotate "line", 32
    new $P73, "ResizablePMCArray"
    push $P73, ""
    .return ($P73)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("28_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 36
    .const 'Sub' $P83 = "30_1256225891.75885" 
    capture_lex $P83
    .local string rx77_tgt
    .local int rx77_pos
    .local int rx77_off
    .local int rx77_eos
    .local int rx77_rep
    .local pmc rx77_cur
    (rx77_cur, rx77_pos, rx77_tgt, $I10) = self."!cursor_start"()
    rx77_cur."!cursor_debug"("START ", "quantified_atom")
    rx77_cur."!cursor_caparray"("quantifier", "backmod")
    .lex unicode:"$\x{a2}", rx77_cur
    length rx77_eos, rx77_tgt
    set rx77_off, 0
    lt $I10, 2, rx77_start
    sub rx77_off, $I10, 1
    substr rx77_tgt, rx77_tgt, rx77_off
  rx77_start:
.annotate "line", 37
  # rx subrule "atom" subtype=capture negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."atom"()
    unless $P10, rx77_fail
    rx77_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx77_pos = $P10."pos"()
  # rx rxquantr80 ** 0..1
    set_addr $I86, rxquantr80_done
    rx77_cur."!mark_push"(0, rx77_pos, $I86)
  rxquantr80_loop:
  # rx subrule "ws" subtype=method negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."ws"()
    unless $P10, rx77_fail
    rx77_pos = $P10."pos"()
  alt81_0:
    set_addr $I10, alt81_1
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."quantifier"()
    unless $P10, rx77_fail
    rx77_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx77_pos = $P10."pos"()
    goto alt81_end
  alt81_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    .const 'Sub' $P83 = "30_1256225891.75885" 
    capture_lex $P83
    $P10 = rx77_cur."before"($P83)
    unless $P10, rx77_fail
  # rx subrule "backmod" subtype=capture negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."backmod"()
    unless $P10, rx77_fail
    rx77_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx77_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."alpha"()
    if $P10, rx77_fail
  alt81_end:
    (rx77_rep) = rx77_cur."!mark_commit"($I86)
  rxquantr80_done:
.annotate "line", 36
  # rx pass
    rx77_cur."!cursor_pass"(rx77_pos, "quantified_atom")
    rx77_cur."!cursor_debug"("PASS  ", "quantified_atom", " at pos=", rx77_pos)
    .return (rx77_cur)
  rx77_fail:
    (rx77_rep, rx77_pos, $I10, $P10) = rx77_cur."!mark_fail"(0)
    lt rx77_pos, -1, rx77_done
    eq rx77_pos, -1, rx77_fail
    jump $I10
  rx77_done:
    rx77_cur."!cursor_fail"()
    rx77_cur."!cursor_debug"("FAIL  ", "quantified_atom")
    .return (rx77_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :subid("29_1256225891.75885") :method
.annotate "line", 36
    new $P79, "ResizablePMCArray"
    push $P79, ""
    .return ($P79)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block82"  :anon :subid("30_1256225891.75885") :method :outer("28_1256225891.75885")
.annotate "line", 37
    .local string rx84_tgt
    .local int rx84_pos
    .local int rx84_off
    .local int rx84_eos
    .local int rx84_rep
    .local pmc rx84_cur
    (rx84_cur, rx84_pos, rx84_tgt, $I10) = self."!cursor_start"()
    rx84_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx84_cur
    length rx84_eos, rx84_tgt
    set rx84_off, 0
    lt $I10, 2, rx84_start
    sub rx84_off, $I10, 1
    substr rx84_tgt, rx84_tgt, rx84_off
  rx84_start:
    ge rx84_pos, 0, rxscan85_done
  rxscan85_loop:
    ($P10) = rx84_cur."from"()
    inc $P10
    set rx84_pos, $P10
    ge rx84_pos, rx84_eos, rxscan85_done
    set_addr $I10, rxscan85_loop
    rx84_cur."!mark_push"(0, rx84_pos, $I10)
  rxscan85_done:
  # rx literal  ":"
    add $I11, rx84_pos, 1
    gt $I11, rx84_eos, rx84_fail
    sub $I11, rx84_pos, rx84_off
    substr $S10, rx84_tgt, $I11, 1
    ne $S10, ":", rx84_fail
    add rx84_pos, 1
  # rx pass
    rx84_cur."!cursor_pass"(rx84_pos, "")
    rx84_cur."!cursor_debug"("PASS  ", "", " at pos=", rx84_pos)
    .return (rx84_cur)
  rx84_fail:
    (rx84_rep, rx84_pos, $I10, $P10) = rx84_cur."!mark_fail"(0)
    lt rx84_pos, -1, rx84_done
    eq rx84_pos, -1, rx84_fail
    jump $I10
  rx84_done:
    rx84_cur."!cursor_fail"()
    rx84_cur."!cursor_debug"("FAIL  ", "")
    .return (rx84_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("31_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 40
    .const 'Sub' $P96 = "33_1256225891.75885" 
    capture_lex $P96
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    (rx88_cur, rx88_pos, rx88_tgt, $I10) = self."!cursor_start"()
    rx88_cur."!cursor_debug"("START ", "atom")
    .lex unicode:"$\x{a2}", rx88_cur
    length rx88_eos, rx88_tgt
    set rx88_off, 0
    lt $I10, 2, rx88_start
    sub rx88_off, $I10, 1
    substr rx88_tgt, rx88_tgt, rx88_off
  rx88_start:
  alt91_0:
.annotate "line", 42
    set_addr $I10, alt91_1
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
.annotate "line", 43
  # rx charclass w
    ge rx88_pos, rx88_eos, rx88_fail
    sub $I10, rx88_pos, rx88_off
    is_cclass $I11, 8192, rx88_tgt, $I10
    unless $I11, rx88_fail
    inc rx88_pos
  # rx rxquantr92 ** 0..1
    set_addr $I99, rxquantr92_done
    rx88_cur."!mark_push"(0, rx88_pos, $I99)
  rxquantr92_loop:
  # rx rxquantg93 ** 1..*
    set_addr $I94, rxquantg93_done
  rxquantg93_loop:
  # rx charclass w
    ge rx88_pos, rx88_eos, rx88_fail
    sub $I10, rx88_pos, rx88_off
    is_cclass $I11, 8192, rx88_tgt, $I10
    unless $I11, rx88_fail
    inc rx88_pos
    rx88_cur."!mark_push"(rx88_rep, rx88_pos, $I94)
    goto rxquantg93_loop
  rxquantg93_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    .const 'Sub' $P96 = "33_1256225891.75885" 
    capture_lex $P96
    $P10 = rx88_cur."before"($P96)
    unless $P10, rx88_fail
    (rx88_rep) = rx88_cur."!mark_commit"($I99)
  rxquantr92_done:
    goto alt91_end
  alt91_1:
.annotate "line", 44
  # rx subrule "metachar" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."metachar"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx88_pos = $P10."pos"()
  alt91_end:
.annotate "line", 40
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "atom")
    rx88_cur."!cursor_debug"("PASS  ", "atom", " at pos=", rx88_pos)
    .return (rx88_cur)
  rx88_fail:
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    rx88_cur."!cursor_debug"("FAIL  ", "atom")
    .return (rx88_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :subid("32_1256225891.75885") :method
.annotate "line", 40
    new $P90, "ResizablePMCArray"
    push $P90, ""
    push $P90, ""
    .return ($P90)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block95"  :anon :subid("33_1256225891.75885") :method :outer("31_1256225891.75885")
.annotate "line", 43
    .local string rx97_tgt
    .local int rx97_pos
    .local int rx97_off
    .local int rx97_eos
    .local int rx97_rep
    .local pmc rx97_cur
    (rx97_cur, rx97_pos, rx97_tgt, $I10) = self."!cursor_start"()
    rx97_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx97_cur
    length rx97_eos, rx97_tgt
    set rx97_off, 0
    lt $I10, 2, rx97_start
    sub rx97_off, $I10, 1
    substr rx97_tgt, rx97_tgt, rx97_off
  rx97_start:
    ge rx97_pos, 0, rxscan98_done
  rxscan98_loop:
    ($P10) = rx97_cur."from"()
    inc $P10
    set rx97_pos, $P10
    ge rx97_pos, rx97_eos, rxscan98_done
    set_addr $I10, rxscan98_loop
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  rxscan98_done:
  # rx charclass w
    ge rx97_pos, rx97_eos, rx97_fail
    sub $I10, rx97_pos, rx97_off
    is_cclass $I11, 8192, rx97_tgt, $I10
    unless $I11, rx97_fail
    inc rx97_pos
  # rx pass
    rx97_cur."!cursor_pass"(rx97_pos, "")
    rx97_cur."!cursor_debug"("PASS  ", "", " at pos=", rx97_pos)
    .return (rx97_cur)
  rx97_fail:
    (rx97_rep, rx97_pos, $I10, $P10) = rx97_cur."!mark_fail"(0)
    lt rx97_pos, -1, rx97_done
    eq rx97_pos, -1, rx97_fail
    jump $I10
  rx97_done:
    rx97_cur."!cursor_fail"()
    rx97_cur."!cursor_debug"("FAIL  ", "")
    .return (rx97_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("34_1256225891.75885") :method
.annotate "line", 48
    $P101 = self."!protoregex"("quantifier")
    .return ($P101)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("35_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 49
    .local string rx103_tgt
    .local int rx103_pos
    .local int rx103_off
    .local int rx103_eos
    .local int rx103_rep
    .local pmc rx103_cur
    (rx103_cur, rx103_pos, rx103_tgt, $I10) = self."!cursor_start"()
    rx103_cur."!cursor_debug"("START ", "quantifier:sym<*>")
    .lex unicode:"$\x{a2}", rx103_cur
    length rx103_eos, rx103_tgt
    set rx103_off, 0
    lt $I10, 2, rx103_start
    sub rx103_off, $I10, 1
    substr rx103_tgt, rx103_tgt, rx103_off
  rx103_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_106_fail
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  # rx literal  "*"
    add $I11, rx103_pos, 1
    gt $I11, rx103_eos, rx103_fail
    sub $I11, rx103_pos, rx103_off
    substr $S10, rx103_tgt, $I11, 1
    ne $S10, "*", rx103_fail
    add rx103_pos, 1
    set_addr $I10, rxcap_106_fail
    ($I12, $I11) = rx103_cur."!mark_peek"($I10)
    rx103_cur."!cursor_pos"($I11)
    ($P10) = rx103_cur."!cursor_start"()
    $P10."!cursor_pass"(rx103_pos, "")
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_106_done
  rxcap_106_fail:
    goto rx103_fail
  rxcap_106_done:
  # rx subrule "backmod" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."backmod"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx103_pos = $P10."pos"()
  # rx pass
    rx103_cur."!cursor_pass"(rx103_pos, "quantifier:sym<*>")
    rx103_cur."!cursor_debug"("PASS  ", "quantifier:sym<*>", " at pos=", rx103_pos)
    .return (rx103_cur)
  rx103_fail:
    (rx103_rep, rx103_pos, $I10, $P10) = rx103_cur."!mark_fail"(0)
    lt rx103_pos, -1, rx103_done
    eq rx103_pos, -1, rx103_fail
    jump $I10
  rx103_done:
    rx103_cur."!cursor_fail"()
    rx103_cur."!cursor_debug"("FAIL  ", "quantifier:sym<*>")
    .return (rx103_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :subid("36_1256225891.75885") :method
.annotate "line", 49
    new $P105, "ResizablePMCArray"
    push $P105, "*"
    .return ($P105)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("37_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 50
    .local string rx108_tgt
    .local int rx108_pos
    .local int rx108_off
    .local int rx108_eos
    .local int rx108_rep
    .local pmc rx108_cur
    (rx108_cur, rx108_pos, rx108_tgt, $I10) = self."!cursor_start"()
    rx108_cur."!cursor_debug"("START ", "quantifier:sym<+>")
    .lex unicode:"$\x{a2}", rx108_cur
    length rx108_eos, rx108_tgt
    set rx108_off, 0
    lt $I10, 2, rx108_start
    sub rx108_off, $I10, 1
    substr rx108_tgt, rx108_tgt, rx108_off
  rx108_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_111_fail
    rx108_cur."!mark_push"(0, rx108_pos, $I10)
  # rx literal  "+"
    add $I11, rx108_pos, 1
    gt $I11, rx108_eos, rx108_fail
    sub $I11, rx108_pos, rx108_off
    substr $S10, rx108_tgt, $I11, 1
    ne $S10, "+", rx108_fail
    add rx108_pos, 1
    set_addr $I10, rxcap_111_fail
    ($I12, $I11) = rx108_cur."!mark_peek"($I10)
    rx108_cur."!cursor_pos"($I11)
    ($P10) = rx108_cur."!cursor_start"()
    $P10."!cursor_pass"(rx108_pos, "")
    rx108_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_111_done
  rxcap_111_fail:
    goto rx108_fail
  rxcap_111_done:
  # rx subrule "backmod" subtype=capture negate=
    rx108_cur."!cursor_pos"(rx108_pos)
    $P10 = rx108_cur."backmod"()
    unless $P10, rx108_fail
    rx108_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx108_pos = $P10."pos"()
  # rx pass
    rx108_cur."!cursor_pass"(rx108_pos, "quantifier:sym<+>")
    rx108_cur."!cursor_debug"("PASS  ", "quantifier:sym<+>", " at pos=", rx108_pos)
    .return (rx108_cur)
  rx108_fail:
    (rx108_rep, rx108_pos, $I10, $P10) = rx108_cur."!mark_fail"(0)
    lt rx108_pos, -1, rx108_done
    eq rx108_pos, -1, rx108_fail
    jump $I10
  rx108_done:
    rx108_cur."!cursor_fail"()
    rx108_cur."!cursor_debug"("FAIL  ", "quantifier:sym<+>")
    .return (rx108_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :subid("38_1256225891.75885") :method
.annotate "line", 50
    new $P110, "ResizablePMCArray"
    push $P110, "+"
    .return ($P110)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("39_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 51
    .local string rx113_tgt
    .local int rx113_pos
    .local int rx113_off
    .local int rx113_eos
    .local int rx113_rep
    .local pmc rx113_cur
    (rx113_cur, rx113_pos, rx113_tgt, $I10) = self."!cursor_start"()
    rx113_cur."!cursor_debug"("START ", "quantifier:sym<?>")
    .lex unicode:"$\x{a2}", rx113_cur
    length rx113_eos, rx113_tgt
    set rx113_off, 0
    lt $I10, 2, rx113_start
    sub rx113_off, $I10, 1
    substr rx113_tgt, rx113_tgt, rx113_off
  rx113_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_116_fail
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  # rx literal  "?"
    add $I11, rx113_pos, 1
    gt $I11, rx113_eos, rx113_fail
    sub $I11, rx113_pos, rx113_off
    substr $S10, rx113_tgt, $I11, 1
    ne $S10, "?", rx113_fail
    add rx113_pos, 1
    set_addr $I10, rxcap_116_fail
    ($I12, $I11) = rx113_cur."!mark_peek"($I10)
    rx113_cur."!cursor_pos"($I11)
    ($P10) = rx113_cur."!cursor_start"()
    $P10."!cursor_pass"(rx113_pos, "")
    rx113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_116_done
  rxcap_116_fail:
    goto rx113_fail
  rxcap_116_done:
  # rx subrule "backmod" subtype=capture negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."backmod"()
    unless $P10, rx113_fail
    rx113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx113_pos = $P10."pos"()
  # rx pass
    rx113_cur."!cursor_pass"(rx113_pos, "quantifier:sym<?>")
    rx113_cur."!cursor_debug"("PASS  ", "quantifier:sym<?>", " at pos=", rx113_pos)
    .return (rx113_cur)
  rx113_fail:
    (rx113_rep, rx113_pos, $I10, $P10) = rx113_cur."!mark_fail"(0)
    lt rx113_pos, -1, rx113_done
    eq rx113_pos, -1, rx113_fail
    jump $I10
  rx113_done:
    rx113_cur."!cursor_fail"()
    rx113_cur."!cursor_debug"("FAIL  ", "quantifier:sym<?>")
    .return (rx113_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :subid("40_1256225891.75885") :method
.annotate "line", 51
    new $P115, "ResizablePMCArray"
    push $P115, "?"
    .return ($P115)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("41_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 52
    .local string rx118_tgt
    .local int rx118_pos
    .local int rx118_off
    .local int rx118_eos
    .local int rx118_rep
    .local pmc rx118_cur
    (rx118_cur, rx118_pos, rx118_tgt, $I10) = self."!cursor_start"()
    rx118_cur."!cursor_debug"("START ", "quantifier:sym<**>")
    rx118_cur."!cursor_caparray"("max")
    .lex unicode:"$\x{a2}", rx118_cur
    length rx118_eos, rx118_tgt
    set rx118_off, 0
    lt $I10, 2, rx118_start
    sub rx118_off, $I10, 1
    substr rx118_tgt, rx118_tgt, rx118_off
  rx118_start:
.annotate "line", 53
  # rx subcapture "sym"
    set_addr $I10, rxcap_121_fail
    rx118_cur."!mark_push"(0, rx118_pos, $I10)
  # rx literal  "**"
    add $I11, rx118_pos, 2
    gt $I11, rx118_eos, rx118_fail
    sub $I11, rx118_pos, rx118_off
    substr $S10, rx118_tgt, $I11, 2
    ne $S10, "**", rx118_fail
    add rx118_pos, 2
    set_addr $I10, rxcap_121_fail
    ($I12, $I11) = rx118_cur."!mark_peek"($I10)
    rx118_cur."!cursor_pos"($I11)
    ($P10) = rx118_cur."!cursor_start"()
    $P10."!cursor_pass"(rx118_pos, "")
    rx118_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_121_done
  rxcap_121_fail:
    goto rx118_fail
  rxcap_121_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx118_pos, rx118_off
    find_not_cclass $I11, 32, rx118_tgt, $I10, rx118_eos
    add rx118_pos, rx118_off, $I11
  # rx subrule "backmod" subtype=capture negate=
    rx118_cur."!cursor_pos"(rx118_pos)
    $P10 = rx118_cur."backmod"()
    unless $P10, rx118_fail
    rx118_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx118_pos = $P10."pos"()
  # rx charclass_q s r 0..-1
    sub $I10, rx118_pos, rx118_off
    find_not_cclass $I11, 32, rx118_tgt, $I10, rx118_eos
    add rx118_pos, rx118_off, $I11
  alt122_0:
.annotate "line", 54
    set_addr $I10, alt122_1
    rx118_cur."!mark_push"(0, rx118_pos, $I10)
.annotate "line", 55
  # rx subcapture "min"
    set_addr $I10, rxcap_123_fail
    rx118_cur."!mark_push"(0, rx118_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx118_pos, rx118_off
    find_not_cclass $I11, 8, rx118_tgt, $I10, rx118_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx118_fail
    add rx118_pos, rx118_off, $I11
    set_addr $I10, rxcap_123_fail
    ($I12, $I11) = rx118_cur."!mark_peek"($I10)
    rx118_cur."!cursor_pos"($I11)
    ($P10) = rx118_cur."!cursor_start"()
    $P10."!cursor_pass"(rx118_pos, "")
    rx118_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_123_done
  rxcap_123_fail:
    goto rx118_fail
  rxcap_123_done:
  # rx rxquantr124 ** 0..1
    set_addr $I127, rxquantr124_done
    rx118_cur."!mark_push"(0, rx118_pos, $I127)
  rxquantr124_loop:
  # rx literal  ".."
    add $I11, rx118_pos, 2
    gt $I11, rx118_eos, rx118_fail
    sub $I11, rx118_pos, rx118_off
    substr $S10, rx118_tgt, $I11, 2
    ne $S10, "..", rx118_fail
    add rx118_pos, 2
  # rx subcapture "max"
    set_addr $I10, rxcap_126_fail
    rx118_cur."!mark_push"(0, rx118_pos, $I10)
  alt125_0:
    set_addr $I10, alt125_1
    rx118_cur."!mark_push"(0, rx118_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx118_pos, rx118_off
    find_not_cclass $I11, 8, rx118_tgt, $I10, rx118_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx118_fail
    add rx118_pos, rx118_off, $I11
    goto alt125_end
  alt125_1:
  # rx literal  "*"
    add $I11, rx118_pos, 1
    gt $I11, rx118_eos, rx118_fail
    sub $I11, rx118_pos, rx118_off
    substr $S10, rx118_tgt, $I11, 1
    ne $S10, "*", rx118_fail
    add rx118_pos, 1
  alt125_end:
    set_addr $I10, rxcap_126_fail
    ($I12, $I11) = rx118_cur."!mark_peek"($I10)
    rx118_cur."!cursor_pos"($I11)
    ($P10) = rx118_cur."!cursor_start"()
    $P10."!cursor_pass"(rx118_pos, "")
    rx118_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_126_done
  rxcap_126_fail:
    goto rx118_fail
  rxcap_126_done:
    (rx118_rep) = rx118_cur."!mark_commit"($I127)
  rxquantr124_done:
    goto alt122_end
  alt122_1:
.annotate "line", 56
  # rx subrule "quantified_atom" subtype=capture negate=
    rx118_cur."!cursor_pos"(rx118_pos)
    $P10 = rx118_cur."quantified_atom"()
    unless $P10, rx118_fail
    rx118_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx118_pos = $P10."pos"()
  alt122_end:
.annotate "line", 52
  # rx pass
    rx118_cur."!cursor_pass"(rx118_pos, "quantifier:sym<**>")
    rx118_cur."!cursor_debug"("PASS  ", "quantifier:sym<**>", " at pos=", rx118_pos)
    .return (rx118_cur)
  rx118_fail:
    (rx118_rep, rx118_pos, $I10, $P10) = rx118_cur."!mark_fail"(0)
    lt rx118_pos, -1, rx118_done
    eq rx118_pos, -1, rx118_fail
    jump $I10
  rx118_done:
    rx118_cur."!cursor_fail"()
    rx118_cur."!cursor_debug"("FAIL  ", "quantifier:sym<**>")
    .return (rx118_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :subid("42_1256225891.75885") :method
.annotate "line", 52
    new $P120, "ResizablePMCArray"
    push $P120, "**"
    .return ($P120)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("43_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 60
    .const 'Sub' $P136 = "45_1256225891.75885" 
    capture_lex $P136
    .local string rx129_tgt
    .local int rx129_pos
    .local int rx129_off
    .local int rx129_eos
    .local int rx129_rep
    .local pmc rx129_cur
    (rx129_cur, rx129_pos, rx129_tgt, $I10) = self."!cursor_start"()
    rx129_cur."!cursor_debug"("START ", "backmod")
    .lex unicode:"$\x{a2}", rx129_cur
    length rx129_eos, rx129_tgt
    set rx129_off, 0
    lt $I10, 2, rx129_start
    sub rx129_off, $I10, 1
    substr rx129_tgt, rx129_tgt, rx129_off
  rx129_start:
  # rx rxquantr132 ** 0..1
    set_addr $I133, rxquantr132_done
    rx129_cur."!mark_push"(0, rx129_pos, $I133)
  rxquantr132_loop:
  # rx literal  ":"
    add $I11, rx129_pos, 1
    gt $I11, rx129_eos, rx129_fail
    sub $I11, rx129_pos, rx129_off
    substr $S10, rx129_tgt, $I11, 1
    ne $S10, ":", rx129_fail
    add rx129_pos, 1
    (rx129_rep) = rx129_cur."!mark_commit"($I133)
  rxquantr132_done:
  alt134_0:
    set_addr $I10, alt134_1
    rx129_cur."!mark_push"(0, rx129_pos, $I10)
  # rx literal  "?"
    add $I11, rx129_pos, 1
    gt $I11, rx129_eos, rx129_fail
    sub $I11, rx129_pos, rx129_off
    substr $S10, rx129_tgt, $I11, 1
    ne $S10, "?", rx129_fail
    add rx129_pos, 1
    goto alt134_end
  alt134_1:
    set_addr $I10, alt134_2
    rx129_cur."!mark_push"(0, rx129_pos, $I10)
  # rx literal  "!"
    add $I11, rx129_pos, 1
    gt $I11, rx129_eos, rx129_fail
    sub $I11, rx129_pos, rx129_off
    substr $S10, rx129_tgt, $I11, 1
    ne $S10, "!", rx129_fail
    add rx129_pos, 1
    goto alt134_end
  alt134_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx129_cur."!cursor_pos"(rx129_pos)
    .const 'Sub' $P136 = "45_1256225891.75885" 
    capture_lex $P136
    $P10 = rx129_cur."before"($P136)
    if $P10, rx129_fail
  alt134_end:
  # rx pass
    rx129_cur."!cursor_pass"(rx129_pos, "backmod")
    rx129_cur."!cursor_debug"("PASS  ", "backmod", " at pos=", rx129_pos)
    .return (rx129_cur)
  rx129_fail:
    (rx129_rep, rx129_pos, $I10, $P10) = rx129_cur."!mark_fail"(0)
    lt rx129_pos, -1, rx129_done
    eq rx129_pos, -1, rx129_fail
    jump $I10
  rx129_done:
    rx129_cur."!cursor_fail"()
    rx129_cur."!cursor_debug"("FAIL  ", "backmod")
    .return (rx129_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :subid("44_1256225891.75885") :method
.annotate "line", 60
    new $P131, "ResizablePMCArray"
    push $P131, ""
    .return ($P131)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block135"  :anon :subid("45_1256225891.75885") :method :outer("43_1256225891.75885")
.annotate "line", 60
    .local string rx137_tgt
    .local int rx137_pos
    .local int rx137_off
    .local int rx137_eos
    .local int rx137_rep
    .local pmc rx137_cur
    (rx137_cur, rx137_pos, rx137_tgt, $I10) = self."!cursor_start"()
    rx137_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx137_cur
    length rx137_eos, rx137_tgt
    set rx137_off, 0
    lt $I10, 2, rx137_start
    sub rx137_off, $I10, 1
    substr rx137_tgt, rx137_tgt, rx137_off
  rx137_start:
    ge rx137_pos, 0, rxscan138_done
  rxscan138_loop:
    ($P10) = rx137_cur."from"()
    inc $P10
    set rx137_pos, $P10
    ge rx137_pos, rx137_eos, rxscan138_done
    set_addr $I10, rxscan138_loop
    rx137_cur."!mark_push"(0, rx137_pos, $I10)
  rxscan138_done:
  # rx literal  ":"
    add $I11, rx137_pos, 1
    gt $I11, rx137_eos, rx137_fail
    sub $I11, rx137_pos, rx137_off
    substr $S10, rx137_tgt, $I11, 1
    ne $S10, ":", rx137_fail
    add rx137_pos, 1
  # rx pass
    rx137_cur."!cursor_pass"(rx137_pos, "")
    rx137_cur."!cursor_debug"("PASS  ", "", " at pos=", rx137_pos)
    .return (rx137_cur)
  rx137_fail:
    (rx137_rep, rx137_pos, $I10, $P10) = rx137_cur."!mark_fail"(0)
    lt rx137_pos, -1, rx137_done
    eq rx137_pos, -1, rx137_fail
    jump $I10
  rx137_done:
    rx137_cur."!cursor_fail"()
    rx137_cur."!cursor_debug"("FAIL  ", "")
    .return (rx137_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("46_1256225891.75885") :method
.annotate "line", 62
    $P140 = self."!protoregex"("metachar")
    .return ($P140)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("47_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 63
    .local string rx142_tgt
    .local int rx142_pos
    .local int rx142_off
    .local int rx142_eos
    .local int rx142_rep
    .local pmc rx142_cur
    (rx142_cur, rx142_pos, rx142_tgt, $I10) = self."!cursor_start"()
    rx142_cur."!cursor_debug"("START ", "metachar:sym<ws>")
    .lex unicode:"$\x{a2}", rx142_cur
    length rx142_eos, rx142_tgt
    set rx142_off, 0
    lt $I10, 2, rx142_start
    sub rx142_off, $I10, 1
    substr rx142_tgt, rx142_tgt, rx142_off
  rx142_start:
  # rx subrule "normspace" subtype=method negate=
    rx142_cur."!cursor_pos"(rx142_pos)
    $P10 = rx142_cur."normspace"()
    unless $P10, rx142_fail
    rx142_pos = $P10."pos"()
  # rx pass
    rx142_cur."!cursor_pass"(rx142_pos, "metachar:sym<ws>")
    rx142_cur."!cursor_debug"("PASS  ", "metachar:sym<ws>", " at pos=", rx142_pos)
    .return (rx142_cur)
  rx142_fail:
    (rx142_rep, rx142_pos, $I10, $P10) = rx142_cur."!mark_fail"(0)
    lt rx142_pos, -1, rx142_done
    eq rx142_pos, -1, rx142_fail
    jump $I10
  rx142_done:
    rx142_cur."!cursor_fail"()
    rx142_cur."!cursor_debug"("FAIL  ", "metachar:sym<ws>")
    .return (rx142_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :subid("48_1256225891.75885") :method
.annotate "line", 63
    new $P144, "ResizablePMCArray"
    push $P144, ""
    .return ($P144)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("49_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 64
    .local string rx146_tgt
    .local int rx146_pos
    .local int rx146_off
    .local int rx146_eos
    .local int rx146_rep
    .local pmc rx146_cur
    (rx146_cur, rx146_pos, rx146_tgt, $I10) = self."!cursor_start"()
    rx146_cur."!cursor_debug"("START ", "metachar:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx146_cur
    length rx146_eos, rx146_tgt
    set rx146_off, 0
    lt $I10, 2, rx146_start
    sub rx146_off, $I10, 1
    substr rx146_tgt, rx146_tgt, rx146_off
  rx146_start:
  # rx literal  "["
    add $I11, rx146_pos, 1
    gt $I11, rx146_eos, rx146_fail
    sub $I11, rx146_pos, rx146_off
    substr $S10, rx146_tgt, $I11, 1
    ne $S10, "[", rx146_fail
    add rx146_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."nibbler"()
    unless $P10, rx146_fail
    rx146_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx146_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx146_pos, 1
    gt $I11, rx146_eos, rx146_fail
    sub $I11, rx146_pos, rx146_off
    substr $S10, rx146_tgt, $I11, 1
    ne $S10, "]", rx146_fail
    add rx146_pos, 1
  # rx pass
    rx146_cur."!cursor_pass"(rx146_pos, "metachar:sym<[ ]>")
    rx146_cur."!cursor_debug"("PASS  ", "metachar:sym<[ ]>", " at pos=", rx146_pos)
    .return (rx146_cur)
  rx146_fail:
    (rx146_rep, rx146_pos, $I10, $P10) = rx146_cur."!mark_fail"(0)
    lt rx146_pos, -1, rx146_done
    eq rx146_pos, -1, rx146_fail
    jump $I10
  rx146_done:
    rx146_cur."!cursor_fail"()
    rx146_cur."!cursor_debug"("FAIL  ", "metachar:sym<[ ]>")
    .return (rx146_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :subid("50_1256225891.75885") :method
.annotate "line", 64
    new $P148, "ResizablePMCArray"
    push $P148, "["
    .return ($P148)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("51_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 65
    .local string rx150_tgt
    .local int rx150_pos
    .local int rx150_off
    .local int rx150_eos
    .local int rx150_rep
    .local pmc rx150_cur
    (rx150_cur, rx150_pos, rx150_tgt, $I10) = self."!cursor_start"()
    rx150_cur."!cursor_debug"("START ", "metachar:sym<( )>")
    .lex unicode:"$\x{a2}", rx150_cur
    length rx150_eos, rx150_tgt
    set rx150_off, 0
    lt $I10, 2, rx150_start
    sub rx150_off, $I10, 1
    substr rx150_tgt, rx150_tgt, rx150_off
  rx150_start:
  # rx literal  "("
    add $I11, rx150_pos, 1
    gt $I11, rx150_eos, rx150_fail
    sub $I11, rx150_pos, rx150_off
    substr $S10, rx150_tgt, $I11, 1
    ne $S10, "(", rx150_fail
    add rx150_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."nibbler"()
    unless $P10, rx150_fail
    rx150_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx150_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx150_pos, 1
    gt $I11, rx150_eos, rx150_fail
    sub $I11, rx150_pos, rx150_off
    substr $S10, rx150_tgt, $I11, 1
    ne $S10, ")", rx150_fail
    add rx150_pos, 1
  # rx pass
    rx150_cur."!cursor_pass"(rx150_pos, "metachar:sym<( )>")
    rx150_cur."!cursor_debug"("PASS  ", "metachar:sym<( )>", " at pos=", rx150_pos)
    .return (rx150_cur)
  rx150_fail:
    (rx150_rep, rx150_pos, $I10, $P10) = rx150_cur."!mark_fail"(0)
    lt rx150_pos, -1, rx150_done
    eq rx150_pos, -1, rx150_fail
    jump $I10
  rx150_done:
    rx150_cur."!cursor_fail"()
    rx150_cur."!cursor_debug"("FAIL  ", "metachar:sym<( )>")
    .return (rx150_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :subid("52_1256225891.75885") :method
.annotate "line", 65
    new $P152, "ResizablePMCArray"
    push $P152, "("
    .return ($P152)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("53_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 66
    .local string rx154_tgt
    .local int rx154_pos
    .local int rx154_off
    .local int rx154_eos
    .local int rx154_rep
    .local pmc rx154_cur
    (rx154_cur, rx154_pos, rx154_tgt, $I10) = self."!cursor_start"()
    rx154_cur."!cursor_debug"("START ", "metachar:sym<'>")
    .lex unicode:"$\x{a2}", rx154_cur
    length rx154_eos, rx154_tgt
    set rx154_off, 0
    lt $I10, 2, rx154_start
    sub rx154_off, $I10, 1
    substr rx154_tgt, rx154_tgt, rx154_off
  rx154_start:
  # rx subrule "quote" subtype=capture negate=
    rx154_cur."!cursor_pos"(rx154_pos)
    $P10 = rx154_cur."quote"()
    unless $P10, rx154_fail
    rx154_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx154_pos = $P10."pos"()
  # rx pass
    rx154_cur."!cursor_pass"(rx154_pos, "metachar:sym<'>")
    rx154_cur."!cursor_debug"("PASS  ", "metachar:sym<'>", " at pos=", rx154_pos)
    .return (rx154_cur)
  rx154_fail:
    (rx154_rep, rx154_pos, $I10, $P10) = rx154_cur."!mark_fail"(0)
    lt rx154_pos, -1, rx154_done
    eq rx154_pos, -1, rx154_fail
    jump $I10
  rx154_done:
    rx154_cur."!cursor_fail"()
    rx154_cur."!cursor_debug"("FAIL  ", "metachar:sym<'>")
    .return (rx154_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :subid("54_1256225891.75885") :method
.annotate "line", 66
    new $P156, "ResizablePMCArray"
    push $P156, ""
    .return ($P156)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("55_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 67
    .local string rx158_tgt
    .local int rx158_pos
    .local int rx158_off
    .local int rx158_eos
    .local int rx158_rep
    .local pmc rx158_cur
    (rx158_cur, rx158_pos, rx158_tgt, $I10) = self."!cursor_start"()
    rx158_cur."!cursor_debug"("START ", "metachar:sym<.>")
    .lex unicode:"$\x{a2}", rx158_cur
    length rx158_eos, rx158_tgt
    set rx158_off, 0
    lt $I10, 2, rx158_start
    sub rx158_off, $I10, 1
    substr rx158_tgt, rx158_tgt, rx158_off
  rx158_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_161_fail
    rx158_cur."!mark_push"(0, rx158_pos, $I10)
  # rx literal  "."
    add $I11, rx158_pos, 1
    gt $I11, rx158_eos, rx158_fail
    sub $I11, rx158_pos, rx158_off
    substr $S10, rx158_tgt, $I11, 1
    ne $S10, ".", rx158_fail
    add rx158_pos, 1
    set_addr $I10, rxcap_161_fail
    ($I12, $I11) = rx158_cur."!mark_peek"($I10)
    rx158_cur."!cursor_pos"($I11)
    ($P10) = rx158_cur."!cursor_start"()
    $P10."!cursor_pass"(rx158_pos, "")
    rx158_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_161_done
  rxcap_161_fail:
    goto rx158_fail
  rxcap_161_done:
  # rx pass
    rx158_cur."!cursor_pass"(rx158_pos, "metachar:sym<.>")
    rx158_cur."!cursor_debug"("PASS  ", "metachar:sym<.>", " at pos=", rx158_pos)
    .return (rx158_cur)
  rx158_fail:
    (rx158_rep, rx158_pos, $I10, $P10) = rx158_cur."!mark_fail"(0)
    lt rx158_pos, -1, rx158_done
    eq rx158_pos, -1, rx158_fail
    jump $I10
  rx158_done:
    rx158_cur."!cursor_fail"()
    rx158_cur."!cursor_debug"("FAIL  ", "metachar:sym<.>")
    .return (rx158_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :subid("56_1256225891.75885") :method
.annotate "line", 67
    new $P160, "ResizablePMCArray"
    push $P160, "."
    .return ($P160)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("57_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 68
    .local string rx163_tgt
    .local int rx163_pos
    .local int rx163_off
    .local int rx163_eos
    .local int rx163_rep
    .local pmc rx163_cur
    (rx163_cur, rx163_pos, rx163_tgt, $I10) = self."!cursor_start"()
    rx163_cur."!cursor_debug"("START ", "metachar:sym<^>")
    .lex unicode:"$\x{a2}", rx163_cur
    length rx163_eos, rx163_tgt
    set rx163_off, 0
    lt $I10, 2, rx163_start
    sub rx163_off, $I10, 1
    substr rx163_tgt, rx163_tgt, rx163_off
  rx163_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_166_fail
    rx163_cur."!mark_push"(0, rx163_pos, $I10)
  # rx literal  "^"
    add $I11, rx163_pos, 1
    gt $I11, rx163_eos, rx163_fail
    sub $I11, rx163_pos, rx163_off
    substr $S10, rx163_tgt, $I11, 1
    ne $S10, "^", rx163_fail
    add rx163_pos, 1
    set_addr $I10, rxcap_166_fail
    ($I12, $I11) = rx163_cur."!mark_peek"($I10)
    rx163_cur."!cursor_pos"($I11)
    ($P10) = rx163_cur."!cursor_start"()
    $P10."!cursor_pass"(rx163_pos, "")
    rx163_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_166_done
  rxcap_166_fail:
    goto rx163_fail
  rxcap_166_done:
  # rx pass
    rx163_cur."!cursor_pass"(rx163_pos, "metachar:sym<^>")
    rx163_cur."!cursor_debug"("PASS  ", "metachar:sym<^>", " at pos=", rx163_pos)
    .return (rx163_cur)
  rx163_fail:
    (rx163_rep, rx163_pos, $I10, $P10) = rx163_cur."!mark_fail"(0)
    lt rx163_pos, -1, rx163_done
    eq rx163_pos, -1, rx163_fail
    jump $I10
  rx163_done:
    rx163_cur."!cursor_fail"()
    rx163_cur."!cursor_debug"("FAIL  ", "metachar:sym<^>")
    .return (rx163_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :subid("58_1256225891.75885") :method
.annotate "line", 68
    new $P165, "ResizablePMCArray"
    push $P165, "^"
    .return ($P165)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("59_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 69
    .local string rx168_tgt
    .local int rx168_pos
    .local int rx168_off
    .local int rx168_eos
    .local int rx168_rep
    .local pmc rx168_cur
    (rx168_cur, rx168_pos, rx168_tgt, $I10) = self."!cursor_start"()
    rx168_cur."!cursor_debug"("START ", "metachar:sym<^^>")
    .lex unicode:"$\x{a2}", rx168_cur
    length rx168_eos, rx168_tgt
    set rx168_off, 0
    lt $I10, 2, rx168_start
    sub rx168_off, $I10, 1
    substr rx168_tgt, rx168_tgt, rx168_off
  rx168_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_171_fail
    rx168_cur."!mark_push"(0, rx168_pos, $I10)
  # rx literal  "^^"
    add $I11, rx168_pos, 2
    gt $I11, rx168_eos, rx168_fail
    sub $I11, rx168_pos, rx168_off
    substr $S10, rx168_tgt, $I11, 2
    ne $S10, "^^", rx168_fail
    add rx168_pos, 2
    set_addr $I10, rxcap_171_fail
    ($I12, $I11) = rx168_cur."!mark_peek"($I10)
    rx168_cur."!cursor_pos"($I11)
    ($P10) = rx168_cur."!cursor_start"()
    $P10."!cursor_pass"(rx168_pos, "")
    rx168_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_171_done
  rxcap_171_fail:
    goto rx168_fail
  rxcap_171_done:
  # rx pass
    rx168_cur."!cursor_pass"(rx168_pos, "metachar:sym<^^>")
    rx168_cur."!cursor_debug"("PASS  ", "metachar:sym<^^>", " at pos=", rx168_pos)
    .return (rx168_cur)
  rx168_fail:
    (rx168_rep, rx168_pos, $I10, $P10) = rx168_cur."!mark_fail"(0)
    lt rx168_pos, -1, rx168_done
    eq rx168_pos, -1, rx168_fail
    jump $I10
  rx168_done:
    rx168_cur."!cursor_fail"()
    rx168_cur."!cursor_debug"("FAIL  ", "metachar:sym<^^>")
    .return (rx168_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :subid("60_1256225891.75885") :method
.annotate "line", 69
    new $P170, "ResizablePMCArray"
    push $P170, "^^"
    .return ($P170)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("61_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 70
    .local string rx173_tgt
    .local int rx173_pos
    .local int rx173_off
    .local int rx173_eos
    .local int rx173_rep
    .local pmc rx173_cur
    (rx173_cur, rx173_pos, rx173_tgt, $I10) = self."!cursor_start"()
    rx173_cur."!cursor_debug"("START ", "metachar:sym<$>")
    .lex unicode:"$\x{a2}", rx173_cur
    length rx173_eos, rx173_tgt
    set rx173_off, 0
    lt $I10, 2, rx173_start
    sub rx173_off, $I10, 1
    substr rx173_tgt, rx173_tgt, rx173_off
  rx173_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_176_fail
    rx173_cur."!mark_push"(0, rx173_pos, $I10)
  # rx literal  "$"
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail
    sub $I11, rx173_pos, rx173_off
    substr $S10, rx173_tgt, $I11, 1
    ne $S10, "$", rx173_fail
    add rx173_pos, 1
    set_addr $I10, rxcap_176_fail
    ($I12, $I11) = rx173_cur."!mark_peek"($I10)
    rx173_cur."!cursor_pos"($I11)
    ($P10) = rx173_cur."!cursor_start"()
    $P10."!cursor_pass"(rx173_pos, "")
    rx173_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_176_done
  rxcap_176_fail:
    goto rx173_fail
  rxcap_176_done:
  # rx pass
    rx173_cur."!cursor_pass"(rx173_pos, "metachar:sym<$>")
    rx173_cur."!cursor_debug"("PASS  ", "metachar:sym<$>", " at pos=", rx173_pos)
    .return (rx173_cur)
  rx173_fail:
    (rx173_rep, rx173_pos, $I10, $P10) = rx173_cur."!mark_fail"(0)
    lt rx173_pos, -1, rx173_done
    eq rx173_pos, -1, rx173_fail
    jump $I10
  rx173_done:
    rx173_cur."!cursor_fail"()
    rx173_cur."!cursor_debug"("FAIL  ", "metachar:sym<$>")
    .return (rx173_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :subid("62_1256225891.75885") :method
.annotate "line", 70
    new $P175, "ResizablePMCArray"
    push $P175, "$"
    .return ($P175)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("63_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 71
    .local string rx178_tgt
    .local int rx178_pos
    .local int rx178_off
    .local int rx178_eos
    .local int rx178_rep
    .local pmc rx178_cur
    (rx178_cur, rx178_pos, rx178_tgt, $I10) = self."!cursor_start"()
    rx178_cur."!cursor_debug"("START ", "metachar:sym<$$>")
    .lex unicode:"$\x{a2}", rx178_cur
    length rx178_eos, rx178_tgt
    set rx178_off, 0
    lt $I10, 2, rx178_start
    sub rx178_off, $I10, 1
    substr rx178_tgt, rx178_tgt, rx178_off
  rx178_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_181_fail
    rx178_cur."!mark_push"(0, rx178_pos, $I10)
  # rx literal  "$$"
    add $I11, rx178_pos, 2
    gt $I11, rx178_eos, rx178_fail
    sub $I11, rx178_pos, rx178_off
    substr $S10, rx178_tgt, $I11, 2
    ne $S10, "$$", rx178_fail
    add rx178_pos, 2
    set_addr $I10, rxcap_181_fail
    ($I12, $I11) = rx178_cur."!mark_peek"($I10)
    rx178_cur."!cursor_pos"($I11)
    ($P10) = rx178_cur."!cursor_start"()
    $P10."!cursor_pass"(rx178_pos, "")
    rx178_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_181_done
  rxcap_181_fail:
    goto rx178_fail
  rxcap_181_done:
  # rx pass
    rx178_cur."!cursor_pass"(rx178_pos, "metachar:sym<$$>")
    rx178_cur."!cursor_debug"("PASS  ", "metachar:sym<$$>", " at pos=", rx178_pos)
    .return (rx178_cur)
  rx178_fail:
    (rx178_rep, rx178_pos, $I10, $P10) = rx178_cur."!mark_fail"(0)
    lt rx178_pos, -1, rx178_done
    eq rx178_pos, -1, rx178_fail
    jump $I10
  rx178_done:
    rx178_cur."!cursor_fail"()
    rx178_cur."!cursor_debug"("FAIL  ", "metachar:sym<$$>")
    .return (rx178_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :subid("64_1256225891.75885") :method
.annotate "line", 71
    new $P180, "ResizablePMCArray"
    push $P180, "$$"
    .return ($P180)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("65_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 72
    .local string rx183_tgt
    .local int rx183_pos
    .local int rx183_off
    .local int rx183_eos
    .local int rx183_rep
    .local pmc rx183_cur
    (rx183_cur, rx183_pos, rx183_tgt, $I10) = self."!cursor_start"()
    rx183_cur."!cursor_debug"("START ", "metachar:sym<:::>")
    .lex unicode:"$\x{a2}", rx183_cur
    length rx183_eos, rx183_tgt
    set rx183_off, 0
    lt $I10, 2, rx183_start
    sub rx183_off, $I10, 1
    substr rx183_tgt, rx183_tgt, rx183_off
  rx183_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_186_fail
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
  # rx literal  ":::"
    add $I11, rx183_pos, 3
    gt $I11, rx183_eos, rx183_fail
    sub $I11, rx183_pos, rx183_off
    substr $S10, rx183_tgt, $I11, 3
    ne $S10, ":::", rx183_fail
    add rx183_pos, 3
    set_addr $I10, rxcap_186_fail
    ($I12, $I11) = rx183_cur."!mark_peek"($I10)
    rx183_cur."!cursor_pos"($I11)
    ($P10) = rx183_cur."!cursor_start"()
    $P10."!cursor_pass"(rx183_pos, "")
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_186_done
  rxcap_186_fail:
    goto rx183_fail
  rxcap_186_done:
  # rx pass
    rx183_cur."!cursor_pass"(rx183_pos, "metachar:sym<:::>")
    rx183_cur."!cursor_debug"("PASS  ", "metachar:sym<:::>", " at pos=", rx183_pos)
    .return (rx183_cur)
  rx183_fail:
    (rx183_rep, rx183_pos, $I10, $P10) = rx183_cur."!mark_fail"(0)
    lt rx183_pos, -1, rx183_done
    eq rx183_pos, -1, rx183_fail
    jump $I10
  rx183_done:
    rx183_cur."!cursor_fail"()
    rx183_cur."!cursor_debug"("FAIL  ", "metachar:sym<:::>")
    .return (rx183_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :subid("66_1256225891.75885") :method
.annotate "line", 72
    new $P185, "ResizablePMCArray"
    push $P185, ":::"
    .return ($P185)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("67_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 73
    .local string rx188_tgt
    .local int rx188_pos
    .local int rx188_off
    .local int rx188_eos
    .local int rx188_rep
    .local pmc rx188_cur
    (rx188_cur, rx188_pos, rx188_tgt, $I10) = self."!cursor_start"()
    rx188_cur."!cursor_debug"("START ", "metachar:sym<::>")
    .lex unicode:"$\x{a2}", rx188_cur
    length rx188_eos, rx188_tgt
    set rx188_off, 0
    lt $I10, 2, rx188_start
    sub rx188_off, $I10, 1
    substr rx188_tgt, rx188_tgt, rx188_off
  rx188_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_191_fail
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  # rx literal  "::"
    add $I11, rx188_pos, 2
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    substr $S10, rx188_tgt, $I11, 2
    ne $S10, "::", rx188_fail
    add rx188_pos, 2
    set_addr $I10, rxcap_191_fail
    ($I12, $I11) = rx188_cur."!mark_peek"($I10)
    rx188_cur."!cursor_pos"($I11)
    ($P10) = rx188_cur."!cursor_start"()
    $P10."!cursor_pass"(rx188_pos, "")
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_191_done
  rxcap_191_fail:
    goto rx188_fail
  rxcap_191_done:
  # rx pass
    rx188_cur."!cursor_pass"(rx188_pos, "metachar:sym<::>")
    rx188_cur."!cursor_debug"("PASS  ", "metachar:sym<::>", " at pos=", rx188_pos)
    .return (rx188_cur)
  rx188_fail:
    (rx188_rep, rx188_pos, $I10, $P10) = rx188_cur."!mark_fail"(0)
    lt rx188_pos, -1, rx188_done
    eq rx188_pos, -1, rx188_fail
    jump $I10
  rx188_done:
    rx188_cur."!cursor_fail"()
    rx188_cur."!cursor_debug"("FAIL  ", "metachar:sym<::>")
    .return (rx188_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :subid("68_1256225891.75885") :method
.annotate "line", 73
    new $P190, "ResizablePMCArray"
    push $P190, "::"
    .return ($P190)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("69_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 74
    .local string rx193_tgt
    .local int rx193_pos
    .local int rx193_off
    .local int rx193_eos
    .local int rx193_rep
    .local pmc rx193_cur
    (rx193_cur, rx193_pos, rx193_tgt, $I10) = self."!cursor_start"()
    rx193_cur."!cursor_debug"("START ", "metachar:sym<lwb>")
    .lex unicode:"$\x{a2}", rx193_cur
    length rx193_eos, rx193_tgt
    set rx193_off, 0
    lt $I10, 2, rx193_start
    sub rx193_off, $I10, 1
    substr rx193_tgt, rx193_tgt, rx193_off
  rx193_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_197_fail
    rx193_cur."!mark_push"(0, rx193_pos, $I10)
  alt196_0:
    set_addr $I10, alt196_1
    rx193_cur."!mark_push"(0, rx193_pos, $I10)
  # rx literal  "<<"
    add $I11, rx193_pos, 2
    gt $I11, rx193_eos, rx193_fail
    sub $I11, rx193_pos, rx193_off
    substr $S10, rx193_tgt, $I11, 2
    ne $S10, "<<", rx193_fail
    add rx193_pos, 2
    goto alt196_end
  alt196_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx193_pos, 1
    gt $I11, rx193_eos, rx193_fail
    sub $I11, rx193_pos, rx193_off
    substr $S10, rx193_tgt, $I11, 1
    ne $S10, unicode:"\x{ab}", rx193_fail
    add rx193_pos, 1
  alt196_end:
    set_addr $I10, rxcap_197_fail
    ($I12, $I11) = rx193_cur."!mark_peek"($I10)
    rx193_cur."!cursor_pos"($I11)
    ($P10) = rx193_cur."!cursor_start"()
    $P10."!cursor_pass"(rx193_pos, "")
    rx193_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_197_done
  rxcap_197_fail:
    goto rx193_fail
  rxcap_197_done:
  # rx pass
    rx193_cur."!cursor_pass"(rx193_pos, "metachar:sym<lwb>")
    rx193_cur."!cursor_debug"("PASS  ", "metachar:sym<lwb>", " at pos=", rx193_pos)
    .return (rx193_cur)
  rx193_fail:
    (rx193_rep, rx193_pos, $I10, $P10) = rx193_cur."!mark_fail"(0)
    lt rx193_pos, -1, rx193_done
    eq rx193_pos, -1, rx193_fail
    jump $I10
  rx193_done:
    rx193_cur."!cursor_fail"()
    rx193_cur."!cursor_debug"("FAIL  ", "metachar:sym<lwb>")
    .return (rx193_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :subid("70_1256225891.75885") :method
.annotate "line", 74
    new $P195, "ResizablePMCArray"
    push $P195, unicode:"\x{ab}"
    push $P195, "<<"
    .return ($P195)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("71_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 75
    .local string rx199_tgt
    .local int rx199_pos
    .local int rx199_off
    .local int rx199_eos
    .local int rx199_rep
    .local pmc rx199_cur
    (rx199_cur, rx199_pos, rx199_tgt, $I10) = self."!cursor_start"()
    rx199_cur."!cursor_debug"("START ", "metachar:sym<rwb>")
    .lex unicode:"$\x{a2}", rx199_cur
    length rx199_eos, rx199_tgt
    set rx199_off, 0
    lt $I10, 2, rx199_start
    sub rx199_off, $I10, 1
    substr rx199_tgt, rx199_tgt, rx199_off
  rx199_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_203_fail
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  alt202_0:
    set_addr $I10, alt202_1
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  # rx literal  ">>"
    add $I11, rx199_pos, 2
    gt $I11, rx199_eos, rx199_fail
    sub $I11, rx199_pos, rx199_off
    substr $S10, rx199_tgt, $I11, 2
    ne $S10, ">>", rx199_fail
    add rx199_pos, 2
    goto alt202_end
  alt202_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx199_pos, 1
    gt $I11, rx199_eos, rx199_fail
    sub $I11, rx199_pos, rx199_off
    substr $S10, rx199_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx199_fail
    add rx199_pos, 1
  alt202_end:
    set_addr $I10, rxcap_203_fail
    ($I12, $I11) = rx199_cur."!mark_peek"($I10)
    rx199_cur."!cursor_pos"($I11)
    ($P10) = rx199_cur."!cursor_start"()
    $P10."!cursor_pass"(rx199_pos, "")
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_203_done
  rxcap_203_fail:
    goto rx199_fail
  rxcap_203_done:
  # rx pass
    rx199_cur."!cursor_pass"(rx199_pos, "metachar:sym<rwb>")
    rx199_cur."!cursor_debug"("PASS  ", "metachar:sym<rwb>", " at pos=", rx199_pos)
    .return (rx199_cur)
  rx199_fail:
    (rx199_rep, rx199_pos, $I10, $P10) = rx199_cur."!mark_fail"(0)
    lt rx199_pos, -1, rx199_done
    eq rx199_pos, -1, rx199_fail
    jump $I10
  rx199_done:
    rx199_cur."!cursor_fail"()
    rx199_cur."!cursor_debug"("FAIL  ", "metachar:sym<rwb>")
    .return (rx199_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :subid("72_1256225891.75885") :method
.annotate "line", 75
    new $P201, "ResizablePMCArray"
    push $P201, unicode:"\x{bb}"
    push $P201, ">>"
    .return ($P201)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("73_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 76
    .local string rx205_tgt
    .local int rx205_pos
    .local int rx205_off
    .local int rx205_eos
    .local int rx205_rep
    .local pmc rx205_cur
    (rx205_cur, rx205_pos, rx205_tgt, $I10) = self."!cursor_start"()
    rx205_cur."!cursor_debug"("START ", "metachar:sym<bs>")
    .lex unicode:"$\x{a2}", rx205_cur
    length rx205_eos, rx205_tgt
    set rx205_off, 0
    lt $I10, 2, rx205_start
    sub rx205_off, $I10, 1
    substr rx205_tgt, rx205_tgt, rx205_off
  rx205_start:
  # rx literal  "\\"
    add $I11, rx205_pos, 1
    gt $I11, rx205_eos, rx205_fail
    sub $I11, rx205_pos, rx205_off
    substr $S10, rx205_tgt, $I11, 1
    ne $S10, "\\", rx205_fail
    add rx205_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx205_cur."!cursor_pos"(rx205_pos)
    $P10 = rx205_cur."backslash"()
    unless $P10, rx205_fail
    rx205_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx205_pos = $P10."pos"()
  # rx pass
    rx205_cur."!cursor_pass"(rx205_pos, "metachar:sym<bs>")
    rx205_cur."!cursor_debug"("PASS  ", "metachar:sym<bs>", " at pos=", rx205_pos)
    .return (rx205_cur)
  rx205_fail:
    (rx205_rep, rx205_pos, $I10, $P10) = rx205_cur."!mark_fail"(0)
    lt rx205_pos, -1, rx205_done
    eq rx205_pos, -1, rx205_fail
    jump $I10
  rx205_done:
    rx205_cur."!cursor_fail"()
    rx205_cur."!cursor_debug"("FAIL  ", "metachar:sym<bs>")
    .return (rx205_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :subid("74_1256225891.75885") :method
.annotate "line", 76
    new $P207, "ResizablePMCArray"
    push $P207, "\\"
    .return ($P207)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("75_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 77
    .local string rx209_tgt
    .local int rx209_pos
    .local int rx209_off
    .local int rx209_eos
    .local int rx209_rep
    .local pmc rx209_cur
    (rx209_cur, rx209_pos, rx209_tgt, $I10) = self."!cursor_start"()
    rx209_cur."!cursor_debug"("START ", "metachar:sym<mod>")
    .lex unicode:"$\x{a2}", rx209_cur
    length rx209_eos, rx209_tgt
    set rx209_off, 0
    lt $I10, 2, rx209_start
    sub rx209_off, $I10, 1
    substr rx209_tgt, rx209_tgt, rx209_off
  rx209_start:
  # rx subrule "mod_internal" subtype=capture negate=
    rx209_cur."!cursor_pos"(rx209_pos)
    $P10 = rx209_cur."mod_internal"()
    unless $P10, rx209_fail
    rx209_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx209_pos = $P10."pos"()
  # rx pass
    rx209_cur."!cursor_pass"(rx209_pos, "metachar:sym<mod>")
    rx209_cur."!cursor_debug"("PASS  ", "metachar:sym<mod>", " at pos=", rx209_pos)
    .return (rx209_cur)
  rx209_fail:
    (rx209_rep, rx209_pos, $I10, $P10) = rx209_cur."!mark_fail"(0)
    lt rx209_pos, -1, rx209_done
    eq rx209_pos, -1, rx209_fail
    jump $I10
  rx209_done:
    rx209_cur."!cursor_fail"()
    rx209_cur."!cursor_debug"("FAIL  ", "metachar:sym<mod>")
    .return (rx209_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :subid("76_1256225891.75885") :method
.annotate "line", 77
    new $P211, "ResizablePMCArray"
    push $P211, ""
    .return ($P211)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("77_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 80
    .local string rx213_tgt
    .local int rx213_pos
    .local int rx213_off
    .local int rx213_eos
    .local int rx213_rep
    .local pmc rx213_cur
    (rx213_cur, rx213_pos, rx213_tgt, $I10) = self."!cursor_start"()
    rx213_cur."!cursor_debug"("START ", "metachar:sym<~>")
    .lex unicode:"$\x{a2}", rx213_cur
    length rx213_eos, rx213_tgt
    set rx213_off, 0
    lt $I10, 2, rx213_start
    sub rx213_off, $I10, 1
    substr rx213_tgt, rx213_tgt, rx213_off
  rx213_start:
.annotate "line", 81
  # rx subcapture "sym"
    set_addr $I10, rxcap_216_fail
    rx213_cur."!mark_push"(0, rx213_pos, $I10)
  # rx literal  "~"
    add $I11, rx213_pos, 1
    gt $I11, rx213_eos, rx213_fail
    sub $I11, rx213_pos, rx213_off
    substr $S10, rx213_tgt, $I11, 1
    ne $S10, "~", rx213_fail
    add rx213_pos, 1
    set_addr $I10, rxcap_216_fail
    ($I12, $I11) = rx213_cur."!mark_peek"($I10)
    rx213_cur."!cursor_pos"($I11)
    ($P10) = rx213_cur."!cursor_start"()
    $P10."!cursor_pass"(rx213_pos, "")
    rx213_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_216_done
  rxcap_216_fail:
    goto rx213_fail
  rxcap_216_done:
.annotate "line", 82
  # rx subrule "ws" subtype=method negate=
    rx213_cur."!cursor_pos"(rx213_pos)
    $P10 = rx213_cur."ws"()
    unless $P10, rx213_fail
    rx213_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx213_cur."!cursor_pos"(rx213_pos)
    $P10 = rx213_cur."quantified_atom"()
    unless $P10, rx213_fail
    rx213_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx213_pos = $P10."pos"()
.annotate "line", 83
  # rx subrule "ws" subtype=method negate=
    rx213_cur."!cursor_pos"(rx213_pos)
    $P10 = rx213_cur."ws"()
    unless $P10, rx213_fail
    rx213_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx213_cur."!cursor_pos"(rx213_pos)
    $P10 = rx213_cur."quantified_atom"()
    unless $P10, rx213_fail
    rx213_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx213_pos = $P10."pos"()
.annotate "line", 80
  # rx pass
    rx213_cur."!cursor_pass"(rx213_pos, "metachar:sym<~>")
    rx213_cur."!cursor_debug"("PASS  ", "metachar:sym<~>", " at pos=", rx213_pos)
    .return (rx213_cur)
  rx213_fail:
    (rx213_rep, rx213_pos, $I10, $P10) = rx213_cur."!mark_fail"(0)
    lt rx213_pos, -1, rx213_done
    eq rx213_pos, -1, rx213_fail
    jump $I10
  rx213_done:
    rx213_cur."!cursor_fail"()
    rx213_cur."!cursor_debug"("FAIL  ", "metachar:sym<~>")
    .return (rx213_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :subid("78_1256225891.75885") :method
.annotate "line", 80
    new $P215, "ResizablePMCArray"
    push $P215, "~"
    .return ($P215)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("79_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 86
    .local string rx218_tgt
    .local int rx218_pos
    .local int rx218_off
    .local int rx218_eos
    .local int rx218_rep
    .local pmc rx218_cur
    (rx218_cur, rx218_pos, rx218_tgt, $I10) = self."!cursor_start"()
    rx218_cur."!cursor_debug"("START ", "metachar:sym<{*}>")
    rx218_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx218_cur
    length rx218_eos, rx218_tgt
    set rx218_off, 0
    lt $I10, 2, rx218_start
    sub rx218_off, $I10, 1
    substr rx218_tgt, rx218_tgt, rx218_off
  rx218_start:
.annotate "line", 87
  # rx subcapture "sym"
    set_addr $I10, rxcap_221_fail
    rx218_cur."!mark_push"(0, rx218_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx218_pos, 3
    gt $I11, rx218_eos, rx218_fail
    sub $I11, rx218_pos, rx218_off
    substr $S10, rx218_tgt, $I11, 3
    ne $S10, "{*}", rx218_fail
    add rx218_pos, 3
    set_addr $I10, rxcap_221_fail
    ($I12, $I11) = rx218_cur."!mark_peek"($I10)
    rx218_cur."!cursor_pos"($I11)
    ($P10) = rx218_cur."!cursor_start"()
    $P10."!cursor_pass"(rx218_pos, "")
    rx218_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_221_done
  rxcap_221_fail:
    goto rx218_fail
  rxcap_221_done:
.annotate "line", 88
  # rx rxquantr222 ** 0..1
    set_addr $I232, rxquantr222_done
    rx218_cur."!mark_push"(0, rx218_pos, $I232)
  rxquantr222_loop:
  # rx rxquantr223 ** 0..*
    set_addr $I224, rxquantr223_done
    rx218_cur."!mark_push"(0, rx218_pos, $I224)
  rxquantr223_loop:
  # rx enumcharlist negate=0 
    ge rx218_pos, rx218_eos, rx218_fail
    sub $I10, rx218_pos, rx218_off
    substr $S10, rx218_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx218_fail
    inc rx218_pos
    (rx218_rep) = rx218_cur."!mark_commit"($I224)
    rx218_cur."!mark_push"(rx218_rep, rx218_pos, $I224)
    goto rxquantr223_loop
  rxquantr223_done:
  # rx literal  "#= "
    add $I11, rx218_pos, 3
    gt $I11, rx218_eos, rx218_fail
    sub $I11, rx218_pos, rx218_off
    substr $S10, rx218_tgt, $I11, 3
    ne $S10, "#= ", rx218_fail
    add rx218_pos, 3
  # rx rxquantr225 ** 0..*
    set_addr $I226, rxquantr225_done
    rx218_cur."!mark_push"(0, rx218_pos, $I226)
  rxquantr225_loop:
  # rx enumcharlist negate=0 
    ge rx218_pos, rx218_eos, rx218_fail
    sub $I10, rx218_pos, rx218_off
    substr $S10, rx218_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx218_fail
    inc rx218_pos
    (rx218_rep) = rx218_cur."!mark_commit"($I226)
    rx218_cur."!mark_push"(rx218_rep, rx218_pos, $I226)
    goto rxquantr225_loop
  rxquantr225_done:
  # rx subcapture "key"
    set_addr $I10, rxcap_231_fail
    rx218_cur."!mark_push"(0, rx218_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx218_pos, rx218_off
    find_cclass $I11, 32, rx218_tgt, $I10, rx218_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx218_fail
    add rx218_pos, rx218_off, $I11
  # rx rxquantr227 ** 0..*
    set_addr $I230, rxquantr227_done
    rx218_cur."!mark_push"(0, rx218_pos, $I230)
  rxquantr227_loop:
  # rx rxquantr228 ** 1..*
    set_addr $I229, rxquantr228_done
    rx218_cur."!mark_push"(0, -1, $I229)
  rxquantr228_loop:
  # rx enumcharlist negate=0 
    ge rx218_pos, rx218_eos, rx218_fail
    sub $I10, rx218_pos, rx218_off
    substr $S10, rx218_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx218_fail
    inc rx218_pos
    (rx218_rep) = rx218_cur."!mark_commit"($I229)
    rx218_cur."!mark_push"(rx218_rep, rx218_pos, $I229)
    goto rxquantr228_loop
  rxquantr228_done:
  # rx charclass_q S r 1..-1
    sub $I10, rx218_pos, rx218_off
    find_cclass $I11, 32, rx218_tgt, $I10, rx218_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx218_fail
    add rx218_pos, rx218_off, $I11
    (rx218_rep) = rx218_cur."!mark_commit"($I230)
    rx218_cur."!mark_push"(rx218_rep, rx218_pos, $I230)
    goto rxquantr227_loop
  rxquantr227_done:
    set_addr $I10, rxcap_231_fail
    ($I12, $I11) = rx218_cur."!mark_peek"($I10)
    rx218_cur."!cursor_pos"($I11)
    ($P10) = rx218_cur."!cursor_start"()
    $P10."!cursor_pass"(rx218_pos, "")
    rx218_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_231_done
  rxcap_231_fail:
    goto rx218_fail
  rxcap_231_done:
    (rx218_rep) = rx218_cur."!mark_commit"($I232)
  rxquantr222_done:
.annotate "line", 86
  # rx pass
    rx218_cur."!cursor_pass"(rx218_pos, "metachar:sym<{*}>")
    rx218_cur."!cursor_debug"("PASS  ", "metachar:sym<{*}>", " at pos=", rx218_pos)
    .return (rx218_cur)
  rx218_fail:
    (rx218_rep, rx218_pos, $I10, $P10) = rx218_cur."!mark_fail"(0)
    lt rx218_pos, -1, rx218_done
    eq rx218_pos, -1, rx218_fail
    jump $I10
  rx218_done:
    rx218_cur."!cursor_fail"()
    rx218_cur."!cursor_debug"("FAIL  ", "metachar:sym<{*}>")
    .return (rx218_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :subid("80_1256225891.75885") :method
.annotate "line", 86
    new $P220, "ResizablePMCArray"
    push $P220, "{*}"
    .return ($P220)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("81_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 90
    .local string rx234_tgt
    .local int rx234_pos
    .local int rx234_off
    .local int rx234_eos
    .local int rx234_rep
    .local pmc rx234_cur
    (rx234_cur, rx234_pos, rx234_tgt, $I10) = self."!cursor_start"()
    rx234_cur."!cursor_debug"("START ", "metachar:sym<assert>")
    .lex unicode:"$\x{a2}", rx234_cur
    length rx234_eos, rx234_tgt
    set rx234_off, 0
    lt $I10, 2, rx234_start
    sub rx234_off, $I10, 1
    substr rx234_tgt, rx234_tgt, rx234_off
  rx234_start:
.annotate "line", 91
  # rx literal  "<"
    add $I11, rx234_pos, 1
    gt $I11, rx234_eos, rx234_fail
    sub $I11, rx234_pos, rx234_off
    substr $S10, rx234_tgt, $I11, 1
    ne $S10, "<", rx234_fail
    add rx234_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx234_cur."!cursor_pos"(rx234_pos)
    $P10 = rx234_cur."assertion"()
    unless $P10, rx234_fail
    rx234_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx234_pos = $P10."pos"()
  alt237_0:
.annotate "line", 92
    set_addr $I10, alt237_1
    rx234_cur."!mark_push"(0, rx234_pos, $I10)
  # rx literal  ">"
    add $I11, rx234_pos, 1
    gt $I11, rx234_eos, rx234_fail
    sub $I11, rx234_pos, rx234_off
    substr $S10, rx234_tgt, $I11, 1
    ne $S10, ">", rx234_fail
    add rx234_pos, 1
    goto alt237_end
  alt237_1:
  # rx subrule "panic" subtype=method negate=
    rx234_cur."!cursor_pos"(rx234_pos)
    $P10 = rx234_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx234_fail
    rx234_pos = $P10."pos"()
  alt237_end:
.annotate "line", 90
  # rx pass
    rx234_cur."!cursor_pass"(rx234_pos, "metachar:sym<assert>")
    rx234_cur."!cursor_debug"("PASS  ", "metachar:sym<assert>", " at pos=", rx234_pos)
    .return (rx234_cur)
  rx234_fail:
    (rx234_rep, rx234_pos, $I10, $P10) = rx234_cur."!mark_fail"(0)
    lt rx234_pos, -1, rx234_done
    eq rx234_pos, -1, rx234_fail
    jump $I10
  rx234_done:
    rx234_cur."!cursor_fail"()
    rx234_cur."!cursor_debug"("FAIL  ", "metachar:sym<assert>")
    .return (rx234_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :subid("82_1256225891.75885") :method
.annotate "line", 90
    new $P236, "ResizablePMCArray"
    push $P236, "<"
    .return ($P236)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("83_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 95
    .local string rx239_tgt
    .local int rx239_pos
    .local int rx239_off
    .local int rx239_eos
    .local int rx239_rep
    .local pmc rx239_cur
    (rx239_cur, rx239_pos, rx239_tgt, $I10) = self."!cursor_start"()
    rx239_cur."!cursor_debug"("START ", "metachar:sym<var>")
    rx239_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx239_cur
    length rx239_eos, rx239_tgt
    set rx239_off, 0
    lt $I10, 2, rx239_start
    sub rx239_off, $I10, 1
    substr rx239_tgt, rx239_tgt, rx239_off
  rx239_start:
  alt242_0:
.annotate "line", 96
    set_addr $I10, alt242_1
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
.annotate "line", 97
  # rx literal  "$<"
    add $I11, rx239_pos, 2
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I11, 2
    ne $S10, "$<", rx239_fail
    add rx239_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_245_fail
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
  # rx rxquantr243 ** 1..*
    set_addr $I244, rxquantr243_done
    rx239_cur."!mark_push"(0, -1, $I244)
  rxquantr243_loop:
  # rx enumcharlist negate=1 
    ge rx239_pos, rx239_eos, rx239_fail
    sub $I10, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx239_fail
    inc rx239_pos
    (rx239_rep) = rx239_cur."!mark_commit"($I244)
    rx239_cur."!mark_push"(rx239_rep, rx239_pos, $I244)
    goto rxquantr243_loop
  rxquantr243_done:
    set_addr $I10, rxcap_245_fail
    ($I12, $I11) = rx239_cur."!mark_peek"($I10)
    rx239_cur."!cursor_pos"($I11)
    ($P10) = rx239_cur."!cursor_start"()
    $P10."!cursor_pass"(rx239_pos, "")
    rx239_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_245_done
  rxcap_245_fail:
    goto rx239_fail
  rxcap_245_done:
  # rx literal  ">"
    add $I11, rx239_pos, 1
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I11, 1
    ne $S10, ">", rx239_fail
    add rx239_pos, 1
    goto alt242_end
  alt242_1:
.annotate "line", 98
  # rx literal  "$"
    add $I11, rx239_pos, 1
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I11, 1
    ne $S10, "$", rx239_fail
    add rx239_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_246_fail
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx239_pos, rx239_off
    find_not_cclass $I11, 8, rx239_tgt, $I10, rx239_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx239_fail
    add rx239_pos, rx239_off, $I11
    set_addr $I10, rxcap_246_fail
    ($I12, $I11) = rx239_cur."!mark_peek"($I10)
    rx239_cur."!cursor_pos"($I11)
    ($P10) = rx239_cur."!cursor_start"()
    $P10."!cursor_pass"(rx239_pos, "")
    rx239_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_246_done
  rxcap_246_fail:
    goto rx239_fail
  rxcap_246_done:
  alt242_end:
.annotate "line", 101
  # rx rxquantr247 ** 0..1
    set_addr $I248, rxquantr247_done
    rx239_cur."!mark_push"(0, rx239_pos, $I248)
  rxquantr247_loop:
  # rx subrule "ws" subtype=method negate=
    rx239_cur."!cursor_pos"(rx239_pos)
    $P10 = rx239_cur."ws"()
    unless $P10, rx239_fail
    rx239_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx239_pos, 1
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I11, 1
    ne $S10, "=", rx239_fail
    add rx239_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx239_cur."!cursor_pos"(rx239_pos)
    $P10 = rx239_cur."ws"()
    unless $P10, rx239_fail
    rx239_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx239_cur."!cursor_pos"(rx239_pos)
    $P10 = rx239_cur."quantified_atom"()
    unless $P10, rx239_fail
    rx239_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx239_pos = $P10."pos"()
    (rx239_rep) = rx239_cur."!mark_commit"($I248)
  rxquantr247_done:
.annotate "line", 95
  # rx pass
    rx239_cur."!cursor_pass"(rx239_pos, "metachar:sym<var>")
    rx239_cur."!cursor_debug"("PASS  ", "metachar:sym<var>", " at pos=", rx239_pos)
    .return (rx239_cur)
  rx239_fail:
    (rx239_rep, rx239_pos, $I10, $P10) = rx239_cur."!mark_fail"(0)
    lt rx239_pos, -1, rx239_done
    eq rx239_pos, -1, rx239_fail
    jump $I10
  rx239_done:
    rx239_cur."!cursor_fail"()
    rx239_cur."!cursor_debug"("FAIL  ", "metachar:sym<var>")
    .return (rx239_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :subid("84_1256225891.75885") :method
.annotate "line", 95
    new $P241, "ResizablePMCArray"
    push $P241, "$"
    push $P241, "$<"
    .return ($P241)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("85_1256225891.75885") :method
.annotate "line", 104
    $P250 = self."!protoregex"("backslash")
    .return ($P250)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("86_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 105
    .local string rx252_tgt
    .local int rx252_pos
    .local int rx252_off
    .local int rx252_eos
    .local int rx252_rep
    .local pmc rx252_cur
    (rx252_cur, rx252_pos, rx252_tgt, $I10) = self."!cursor_start"()
    rx252_cur."!cursor_debug"("START ", "backslash:sym<w>")
    .lex unicode:"$\x{a2}", rx252_cur
    length rx252_eos, rx252_tgt
    set rx252_off, 0
    lt $I10, 2, rx252_start
    sub rx252_off, $I10, 1
    substr rx252_tgt, rx252_tgt, rx252_off
  rx252_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_255_fail
    rx252_cur."!mark_push"(0, rx252_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx252_pos, rx252_eos, rx252_fail
    sub $I10, rx252_pos, rx252_off
    substr $S10, rx252_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx252_fail
    inc rx252_pos
    set_addr $I10, rxcap_255_fail
    ($I12, $I11) = rx252_cur."!mark_peek"($I10)
    rx252_cur."!cursor_pos"($I11)
    ($P10) = rx252_cur."!cursor_start"()
    $P10."!cursor_pass"(rx252_pos, "")
    rx252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_255_done
  rxcap_255_fail:
    goto rx252_fail
  rxcap_255_done:
  # rx pass
    rx252_cur."!cursor_pass"(rx252_pos, "backslash:sym<w>")
    rx252_cur."!cursor_debug"("PASS  ", "backslash:sym<w>", " at pos=", rx252_pos)
    .return (rx252_cur)
  rx252_fail:
    (rx252_rep, rx252_pos, $I10, $P10) = rx252_cur."!mark_fail"(0)
    lt rx252_pos, -1, rx252_done
    eq rx252_pos, -1, rx252_fail
    jump $I10
  rx252_done:
    rx252_cur."!cursor_fail"()
    rx252_cur."!cursor_debug"("FAIL  ", "backslash:sym<w>")
    .return (rx252_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :subid("87_1256225891.75885") :method
.annotate "line", 105
    new $P254, "ResizablePMCArray"
    push $P254, "N"
    push $P254, "W"
    push $P254, "S"
    push $P254, "D"
    push $P254, "n"
    push $P254, "w"
    push $P254, "s"
    push $P254, "d"
    .return ($P254)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("88_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 106
    .local string rx257_tgt
    .local int rx257_pos
    .local int rx257_off
    .local int rx257_eos
    .local int rx257_rep
    .local pmc rx257_cur
    (rx257_cur, rx257_pos, rx257_tgt, $I10) = self."!cursor_start"()
    rx257_cur."!cursor_debug"("START ", "backslash:sym<b>")
    .lex unicode:"$\x{a2}", rx257_cur
    length rx257_eos, rx257_tgt
    set rx257_off, 0
    lt $I10, 2, rx257_start
    sub rx257_off, $I10, 1
    substr rx257_tgt, rx257_tgt, rx257_off
  rx257_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_260_fail
    rx257_cur."!mark_push"(0, rx257_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx257_pos, rx257_eos, rx257_fail
    sub $I10, rx257_pos, rx257_off
    substr $S10, rx257_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx257_fail
    inc rx257_pos
    set_addr $I10, rxcap_260_fail
    ($I12, $I11) = rx257_cur."!mark_peek"($I10)
    rx257_cur."!cursor_pos"($I11)
    ($P10) = rx257_cur."!cursor_start"()
    $P10."!cursor_pass"(rx257_pos, "")
    rx257_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_260_done
  rxcap_260_fail:
    goto rx257_fail
  rxcap_260_done:
  # rx pass
    rx257_cur."!cursor_pass"(rx257_pos, "backslash:sym<b>")
    rx257_cur."!cursor_debug"("PASS  ", "backslash:sym<b>", " at pos=", rx257_pos)
    .return (rx257_cur)
  rx257_fail:
    (rx257_rep, rx257_pos, $I10, $P10) = rx257_cur."!mark_fail"(0)
    lt rx257_pos, -1, rx257_done
    eq rx257_pos, -1, rx257_fail
    jump $I10
  rx257_done:
    rx257_cur."!cursor_fail"()
    rx257_cur."!cursor_debug"("FAIL  ", "backslash:sym<b>")
    .return (rx257_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :subid("89_1256225891.75885") :method
.annotate "line", 106
    new $P259, "ResizablePMCArray"
    push $P259, "B"
    push $P259, "b"
    .return ($P259)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("90_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 107
    .local string rx262_tgt
    .local int rx262_pos
    .local int rx262_off
    .local int rx262_eos
    .local int rx262_rep
    .local pmc rx262_cur
    (rx262_cur, rx262_pos, rx262_tgt, $I10) = self."!cursor_start"()
    rx262_cur."!cursor_debug"("START ", "backslash:sym<e>")
    .lex unicode:"$\x{a2}", rx262_cur
    length rx262_eos, rx262_tgt
    set rx262_off, 0
    lt $I10, 2, rx262_start
    sub rx262_off, $I10, 1
    substr rx262_tgt, rx262_tgt, rx262_off
  rx262_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_265_fail
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx262_pos, rx262_eos, rx262_fail
    sub $I10, rx262_pos, rx262_off
    substr $S10, rx262_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx262_fail
    inc rx262_pos
    set_addr $I10, rxcap_265_fail
    ($I12, $I11) = rx262_cur."!mark_peek"($I10)
    rx262_cur."!cursor_pos"($I11)
    ($P10) = rx262_cur."!cursor_start"()
    $P10."!cursor_pass"(rx262_pos, "")
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_265_done
  rxcap_265_fail:
    goto rx262_fail
  rxcap_265_done:
  # rx pass
    rx262_cur."!cursor_pass"(rx262_pos, "backslash:sym<e>")
    rx262_cur."!cursor_debug"("PASS  ", "backslash:sym<e>", " at pos=", rx262_pos)
    .return (rx262_cur)
  rx262_fail:
    (rx262_rep, rx262_pos, $I10, $P10) = rx262_cur."!mark_fail"(0)
    lt rx262_pos, -1, rx262_done
    eq rx262_pos, -1, rx262_fail
    jump $I10
  rx262_done:
    rx262_cur."!cursor_fail"()
    rx262_cur."!cursor_debug"("FAIL  ", "backslash:sym<e>")
    .return (rx262_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :subid("91_1256225891.75885") :method
.annotate "line", 107
    new $P264, "ResizablePMCArray"
    push $P264, "E"
    push $P264, "e"
    .return ($P264)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("92_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 108
    .local string rx267_tgt
    .local int rx267_pos
    .local int rx267_off
    .local int rx267_eos
    .local int rx267_rep
    .local pmc rx267_cur
    (rx267_cur, rx267_pos, rx267_tgt, $I10) = self."!cursor_start"()
    rx267_cur."!cursor_debug"("START ", "backslash:sym<f>")
    .lex unicode:"$\x{a2}", rx267_cur
    length rx267_eos, rx267_tgt
    set rx267_off, 0
    lt $I10, 2, rx267_start
    sub rx267_off, $I10, 1
    substr rx267_tgt, rx267_tgt, rx267_off
  rx267_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_270_fail
    rx267_cur."!mark_push"(0, rx267_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx267_pos, rx267_eos, rx267_fail
    sub $I10, rx267_pos, rx267_off
    substr $S10, rx267_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx267_fail
    inc rx267_pos
    set_addr $I10, rxcap_270_fail
    ($I12, $I11) = rx267_cur."!mark_peek"($I10)
    rx267_cur."!cursor_pos"($I11)
    ($P10) = rx267_cur."!cursor_start"()
    $P10."!cursor_pass"(rx267_pos, "")
    rx267_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_270_done
  rxcap_270_fail:
    goto rx267_fail
  rxcap_270_done:
  # rx pass
    rx267_cur."!cursor_pass"(rx267_pos, "backslash:sym<f>")
    rx267_cur."!cursor_debug"("PASS  ", "backslash:sym<f>", " at pos=", rx267_pos)
    .return (rx267_cur)
  rx267_fail:
    (rx267_rep, rx267_pos, $I10, $P10) = rx267_cur."!mark_fail"(0)
    lt rx267_pos, -1, rx267_done
    eq rx267_pos, -1, rx267_fail
    jump $I10
  rx267_done:
    rx267_cur."!cursor_fail"()
    rx267_cur."!cursor_debug"("FAIL  ", "backslash:sym<f>")
    .return (rx267_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :subid("93_1256225891.75885") :method
.annotate "line", 108
    new $P269, "ResizablePMCArray"
    push $P269, "F"
    push $P269, "f"
    .return ($P269)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("94_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 109
    .local string rx272_tgt
    .local int rx272_pos
    .local int rx272_off
    .local int rx272_eos
    .local int rx272_rep
    .local pmc rx272_cur
    (rx272_cur, rx272_pos, rx272_tgt, $I10) = self."!cursor_start"()
    rx272_cur."!cursor_debug"("START ", "backslash:sym<h>")
    .lex unicode:"$\x{a2}", rx272_cur
    length rx272_eos, rx272_tgt
    set rx272_off, 0
    lt $I10, 2, rx272_start
    sub rx272_off, $I10, 1
    substr rx272_tgt, rx272_tgt, rx272_off
  rx272_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_275_fail
    rx272_cur."!mark_push"(0, rx272_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx272_pos, rx272_eos, rx272_fail
    sub $I10, rx272_pos, rx272_off
    substr $S10, rx272_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx272_fail
    inc rx272_pos
    set_addr $I10, rxcap_275_fail
    ($I12, $I11) = rx272_cur."!mark_peek"($I10)
    rx272_cur."!cursor_pos"($I11)
    ($P10) = rx272_cur."!cursor_start"()
    $P10."!cursor_pass"(rx272_pos, "")
    rx272_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_275_done
  rxcap_275_fail:
    goto rx272_fail
  rxcap_275_done:
  # rx pass
    rx272_cur."!cursor_pass"(rx272_pos, "backslash:sym<h>")
    rx272_cur."!cursor_debug"("PASS  ", "backslash:sym<h>", " at pos=", rx272_pos)
    .return (rx272_cur)
  rx272_fail:
    (rx272_rep, rx272_pos, $I10, $P10) = rx272_cur."!mark_fail"(0)
    lt rx272_pos, -1, rx272_done
    eq rx272_pos, -1, rx272_fail
    jump $I10
  rx272_done:
    rx272_cur."!cursor_fail"()
    rx272_cur."!cursor_debug"("FAIL  ", "backslash:sym<h>")
    .return (rx272_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :subid("95_1256225891.75885") :method
.annotate "line", 109
    new $P274, "ResizablePMCArray"
    push $P274, "H"
    push $P274, "h"
    .return ($P274)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("96_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 110
    .local string rx277_tgt
    .local int rx277_pos
    .local int rx277_off
    .local int rx277_eos
    .local int rx277_rep
    .local pmc rx277_cur
    (rx277_cur, rx277_pos, rx277_tgt, $I10) = self."!cursor_start"()
    rx277_cur."!cursor_debug"("START ", "backslash:sym<r>")
    .lex unicode:"$\x{a2}", rx277_cur
    length rx277_eos, rx277_tgt
    set rx277_off, 0
    lt $I10, 2, rx277_start
    sub rx277_off, $I10, 1
    substr rx277_tgt, rx277_tgt, rx277_off
  rx277_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_280_fail
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx277_pos, rx277_eos, rx277_fail
    sub $I10, rx277_pos, rx277_off
    substr $S10, rx277_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx277_fail
    inc rx277_pos
    set_addr $I10, rxcap_280_fail
    ($I12, $I11) = rx277_cur."!mark_peek"($I10)
    rx277_cur."!cursor_pos"($I11)
    ($P10) = rx277_cur."!cursor_start"()
    $P10."!cursor_pass"(rx277_pos, "")
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_280_done
  rxcap_280_fail:
    goto rx277_fail
  rxcap_280_done:
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "backslash:sym<r>")
    rx277_cur."!cursor_debug"("PASS  ", "backslash:sym<r>", " at pos=", rx277_pos)
    .return (rx277_cur)
  rx277_fail:
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    rx277_cur."!cursor_debug"("FAIL  ", "backslash:sym<r>")
    .return (rx277_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :subid("97_1256225891.75885") :method
.annotate "line", 110
    new $P279, "ResizablePMCArray"
    push $P279, "R"
    push $P279, "r"
    .return ($P279)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("98_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 111
    .local string rx282_tgt
    .local int rx282_pos
    .local int rx282_off
    .local int rx282_eos
    .local int rx282_rep
    .local pmc rx282_cur
    (rx282_cur, rx282_pos, rx282_tgt, $I10) = self."!cursor_start"()
    rx282_cur."!cursor_debug"("START ", "backslash:sym<t>")
    .lex unicode:"$\x{a2}", rx282_cur
    length rx282_eos, rx282_tgt
    set rx282_off, 0
    lt $I10, 2, rx282_start
    sub rx282_off, $I10, 1
    substr rx282_tgt, rx282_tgt, rx282_off
  rx282_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_285_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx282_pos, rx282_eos, rx282_fail
    sub $I10, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx282_fail
    inc rx282_pos
    set_addr $I10, rxcap_285_fail
    ($I12, $I11) = rx282_cur."!mark_peek"($I10)
    rx282_cur."!cursor_pos"($I11)
    ($P10) = rx282_cur."!cursor_start"()
    $P10."!cursor_pass"(rx282_pos, "")
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_285_done
  rxcap_285_fail:
    goto rx282_fail
  rxcap_285_done:
  # rx pass
    rx282_cur."!cursor_pass"(rx282_pos, "backslash:sym<t>")
    rx282_cur."!cursor_debug"("PASS  ", "backslash:sym<t>", " at pos=", rx282_pos)
    .return (rx282_cur)
  rx282_fail:
    (rx282_rep, rx282_pos, $I10, $P10) = rx282_cur."!mark_fail"(0)
    lt rx282_pos, -1, rx282_done
    eq rx282_pos, -1, rx282_fail
    jump $I10
  rx282_done:
    rx282_cur."!cursor_fail"()
    rx282_cur."!cursor_debug"("FAIL  ", "backslash:sym<t>")
    .return (rx282_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :subid("99_1256225891.75885") :method
.annotate "line", 111
    new $P284, "ResizablePMCArray"
    push $P284, "T"
    push $P284, "t"
    .return ($P284)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("100_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 112
    .local string rx287_tgt
    .local int rx287_pos
    .local int rx287_off
    .local int rx287_eos
    .local int rx287_rep
    .local pmc rx287_cur
    (rx287_cur, rx287_pos, rx287_tgt, $I10) = self."!cursor_start"()
    rx287_cur."!cursor_debug"("START ", "backslash:sym<v>")
    .lex unicode:"$\x{a2}", rx287_cur
    length rx287_eos, rx287_tgt
    set rx287_off, 0
    lt $I10, 2, rx287_start
    sub rx287_off, $I10, 1
    substr rx287_tgt, rx287_tgt, rx287_off
  rx287_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_290_fail
    rx287_cur."!mark_push"(0, rx287_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx287_pos, rx287_eos, rx287_fail
    sub $I10, rx287_pos, rx287_off
    substr $S10, rx287_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx287_fail
    inc rx287_pos
    set_addr $I10, rxcap_290_fail
    ($I12, $I11) = rx287_cur."!mark_peek"($I10)
    rx287_cur."!cursor_pos"($I11)
    ($P10) = rx287_cur."!cursor_start"()
    $P10."!cursor_pass"(rx287_pos, "")
    rx287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_290_done
  rxcap_290_fail:
    goto rx287_fail
  rxcap_290_done:
  # rx pass
    rx287_cur."!cursor_pass"(rx287_pos, "backslash:sym<v>")
    rx287_cur."!cursor_debug"("PASS  ", "backslash:sym<v>", " at pos=", rx287_pos)
    .return (rx287_cur)
  rx287_fail:
    (rx287_rep, rx287_pos, $I10, $P10) = rx287_cur."!mark_fail"(0)
    lt rx287_pos, -1, rx287_done
    eq rx287_pos, -1, rx287_fail
    jump $I10
  rx287_done:
    rx287_cur."!cursor_fail"()
    rx287_cur."!cursor_debug"("FAIL  ", "backslash:sym<v>")
    .return (rx287_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :subid("101_1256225891.75885") :method
.annotate "line", 112
    new $P289, "ResizablePMCArray"
    push $P289, "V"
    push $P289, "v"
    .return ($P289)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("102_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 113
    .local string rx292_tgt
    .local int rx292_pos
    .local int rx292_off
    .local int rx292_eos
    .local int rx292_rep
    .local pmc rx292_cur
    (rx292_cur, rx292_pos, rx292_tgt, $I10) = self."!cursor_start"()
    rx292_cur."!cursor_debug"("START ", "backslash:sym<A>")
    .lex unicode:"$\x{a2}", rx292_cur
    length rx292_eos, rx292_tgt
    set rx292_off, 0
    lt $I10, 2, rx292_start
    sub rx292_off, $I10, 1
    substr rx292_tgt, rx292_tgt, rx292_off
  rx292_start:
  # rx literal  "A"
    add $I11, rx292_pos, 1
    gt $I11, rx292_eos, rx292_fail
    sub $I11, rx292_pos, rx292_off
    substr $S10, rx292_tgt, $I11, 1
    ne $S10, "A", rx292_fail
    add rx292_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx292_cur."!cursor_pos"(rx292_pos)
    $P10 = rx292_cur."obs"("\\\\A as beginning-of-string matcher;^")
    unless $P10, rx292_fail
    rx292_pos = $P10."pos"()
  # rx pass
    rx292_cur."!cursor_pass"(rx292_pos, "backslash:sym<A>")
    rx292_cur."!cursor_debug"("PASS  ", "backslash:sym<A>", " at pos=", rx292_pos)
    .return (rx292_cur)
  rx292_fail:
    (rx292_rep, rx292_pos, $I10, $P10) = rx292_cur."!mark_fail"(0)
    lt rx292_pos, -1, rx292_done
    eq rx292_pos, -1, rx292_fail
    jump $I10
  rx292_done:
    rx292_cur."!cursor_fail"()
    rx292_cur."!cursor_debug"("FAIL  ", "backslash:sym<A>")
    .return (rx292_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :subid("103_1256225891.75885") :method
.annotate "line", 113
    new $P294, "ResizablePMCArray"
    push $P294, "A"
    .return ($P294)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("104_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 114
    .local string rx296_tgt
    .local int rx296_pos
    .local int rx296_off
    .local int rx296_eos
    .local int rx296_rep
    .local pmc rx296_cur
    (rx296_cur, rx296_pos, rx296_tgt, $I10) = self."!cursor_start"()
    rx296_cur."!cursor_debug"("START ", "backslash:sym<z>")
    .lex unicode:"$\x{a2}", rx296_cur
    length rx296_eos, rx296_tgt
    set rx296_off, 0
    lt $I10, 2, rx296_start
    sub rx296_off, $I10, 1
    substr rx296_tgt, rx296_tgt, rx296_off
  rx296_start:
  # rx literal  "z"
    add $I11, rx296_pos, 1
    gt $I11, rx296_eos, rx296_fail
    sub $I11, rx296_pos, rx296_off
    substr $S10, rx296_tgt, $I11, 1
    ne $S10, "z", rx296_fail
    add rx296_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx296_cur."!cursor_pos"(rx296_pos)
    $P10 = rx296_cur."obs"("\\\\z as end-of-string matcher;$")
    unless $P10, rx296_fail
    rx296_pos = $P10."pos"()
  # rx pass
    rx296_cur."!cursor_pass"(rx296_pos, "backslash:sym<z>")
    rx296_cur."!cursor_debug"("PASS  ", "backslash:sym<z>", " at pos=", rx296_pos)
    .return (rx296_cur)
  rx296_fail:
    (rx296_rep, rx296_pos, $I10, $P10) = rx296_cur."!mark_fail"(0)
    lt rx296_pos, -1, rx296_done
    eq rx296_pos, -1, rx296_fail
    jump $I10
  rx296_done:
    rx296_cur."!cursor_fail"()
    rx296_cur."!cursor_debug"("FAIL  ", "backslash:sym<z>")
    .return (rx296_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :subid("105_1256225891.75885") :method
.annotate "line", 114
    new $P298, "ResizablePMCArray"
    push $P298, "z"
    .return ($P298)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("106_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 115
    .local string rx300_tgt
    .local int rx300_pos
    .local int rx300_off
    .local int rx300_eos
    .local int rx300_rep
    .local pmc rx300_cur
    (rx300_cur, rx300_pos, rx300_tgt, $I10) = self."!cursor_start"()
    rx300_cur."!cursor_debug"("START ", "backslash:sym<Z>")
    .lex unicode:"$\x{a2}", rx300_cur
    length rx300_eos, rx300_tgt
    set rx300_off, 0
    lt $I10, 2, rx300_start
    sub rx300_off, $I10, 1
    substr rx300_tgt, rx300_tgt, rx300_off
  rx300_start:
  # rx literal  "Z"
    add $I11, rx300_pos, 1
    gt $I11, rx300_eos, rx300_fail
    sub $I11, rx300_pos, rx300_off
    substr $S10, rx300_tgt, $I11, 1
    ne $S10, "Z", rx300_fail
    add rx300_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx300_cur."!cursor_pos"(rx300_pos)
    $P10 = rx300_cur."obs"("\\\\Z as end-of-string matcher;\\\\n?$")
    unless $P10, rx300_fail
    rx300_pos = $P10."pos"()
  # rx pass
    rx300_cur."!cursor_pass"(rx300_pos, "backslash:sym<Z>")
    rx300_cur."!cursor_debug"("PASS  ", "backslash:sym<Z>", " at pos=", rx300_pos)
    .return (rx300_cur)
  rx300_fail:
    (rx300_rep, rx300_pos, $I10, $P10) = rx300_cur."!mark_fail"(0)
    lt rx300_pos, -1, rx300_done
    eq rx300_pos, -1, rx300_fail
    jump $I10
  rx300_done:
    rx300_cur."!cursor_fail"()
    rx300_cur."!cursor_debug"("FAIL  ", "backslash:sym<Z>")
    .return (rx300_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :subid("107_1256225891.75885") :method
.annotate "line", 115
    new $P302, "ResizablePMCArray"
    push $P302, "Z"
    .return ($P302)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("108_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 116
    .local string rx304_tgt
    .local int rx304_pos
    .local int rx304_off
    .local int rx304_eos
    .local int rx304_rep
    .local pmc rx304_cur
    (rx304_cur, rx304_pos, rx304_tgt, $I10) = self."!cursor_start"()
    rx304_cur."!cursor_debug"("START ", "backslash:sym<Q>")
    .lex unicode:"$\x{a2}", rx304_cur
    length rx304_eos, rx304_tgt
    set rx304_off, 0
    lt $I10, 2, rx304_start
    sub rx304_off, $I10, 1
    substr rx304_tgt, rx304_tgt, rx304_off
  rx304_start:
  # rx literal  "Q"
    add $I11, rx304_pos, 1
    gt $I11, rx304_eos, rx304_fail
    sub $I11, rx304_pos, rx304_off
    substr $S10, rx304_tgt, $I11, 1
    ne $S10, "Q", rx304_fail
    add rx304_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx304_cur."!cursor_pos"(rx304_pos)
    $P10 = rx304_cur."obs"("\\\\Q as quotemeta;quotes or literal variable match")
    unless $P10, rx304_fail
    rx304_pos = $P10."pos"()
  # rx pass
    rx304_cur."!cursor_pass"(rx304_pos, "backslash:sym<Q>")
    rx304_cur."!cursor_debug"("PASS  ", "backslash:sym<Q>", " at pos=", rx304_pos)
    .return (rx304_cur)
  rx304_fail:
    (rx304_rep, rx304_pos, $I10, $P10) = rx304_cur."!mark_fail"(0)
    lt rx304_pos, -1, rx304_done
    eq rx304_pos, -1, rx304_fail
    jump $I10
  rx304_done:
    rx304_cur."!cursor_fail"()
    rx304_cur."!cursor_debug"("FAIL  ", "backslash:sym<Q>")
    .return (rx304_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :subid("109_1256225891.75885") :method
.annotate "line", 116
    new $P306, "ResizablePMCArray"
    push $P306, "Q"
    .return ($P306)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("110_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 117
    .local string rx308_tgt
    .local int rx308_pos
    .local int rx308_off
    .local int rx308_eos
    .local int rx308_rep
    .local pmc rx308_cur
    (rx308_cur, rx308_pos, rx308_tgt, $I10) = self."!cursor_start"()
    rx308_cur."!cursor_debug"("START ", "backslash:sym<misc>")
    .lex unicode:"$\x{a2}", rx308_cur
    length rx308_eos, rx308_tgt
    set rx308_off, 0
    lt $I10, 2, rx308_start
    sub rx308_off, $I10, 1
    substr rx308_tgt, rx308_tgt, rx308_off
  rx308_start:
  # rx charclass W
    ge rx308_pos, rx308_eos, rx308_fail
    sub $I10, rx308_pos, rx308_off
    is_cclass $I11, 8192, rx308_tgt, $I10
    if $I11, rx308_fail
    inc rx308_pos
  # rx pass
    rx308_cur."!cursor_pass"(rx308_pos, "backslash:sym<misc>")
    rx308_cur."!cursor_debug"("PASS  ", "backslash:sym<misc>", " at pos=", rx308_pos)
    .return (rx308_cur)
  rx308_fail:
    (rx308_rep, rx308_pos, $I10, $P10) = rx308_cur."!mark_fail"(0)
    lt rx308_pos, -1, rx308_done
    eq rx308_pos, -1, rx308_fail
    jump $I10
  rx308_done:
    rx308_cur."!cursor_fail"()
    rx308_cur."!cursor_debug"("FAIL  ", "backslash:sym<misc>")
    .return (rx308_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :subid("111_1256225891.75885") :method
.annotate "line", 117
    new $P310, "ResizablePMCArray"
    push $P310, ""
    .return ($P310)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("112_1256225891.75885") :method
.annotate "line", 119
    $P312 = self."!protoregex"("assertion")
    .return ($P312)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("113_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 121
    .const 'Sub' $P319 = "115_1256225891.75885" 
    capture_lex $P319
    .local string rx314_tgt
    .local int rx314_pos
    .local int rx314_off
    .local int rx314_eos
    .local int rx314_rep
    .local pmc rx314_cur
    (rx314_cur, rx314_pos, rx314_tgt, $I10) = self."!cursor_start"()
    rx314_cur."!cursor_debug"("START ", "assertion:sym<?>")
    .lex unicode:"$\x{a2}", rx314_cur
    length rx314_eos, rx314_tgt
    set rx314_off, 0
    lt $I10, 2, rx314_start
    sub rx314_off, $I10, 1
    substr rx314_tgt, rx314_tgt, rx314_off
  rx314_start:
  # rx literal  "?"
    add $I11, rx314_pos, 1
    gt $I11, rx314_eos, rx314_fail
    sub $I11, rx314_pos, rx314_off
    substr $S10, rx314_tgt, $I11, 1
    ne $S10, "?", rx314_fail
    add rx314_pos, 1
  alt317_0:
    set_addr $I10, alt317_1
    rx314_cur."!mark_push"(0, rx314_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx314_cur."!cursor_pos"(rx314_pos)
    .const 'Sub' $P319 = "115_1256225891.75885" 
    capture_lex $P319
    $P10 = rx314_cur."before"($P319)
    unless $P10, rx314_fail
    goto alt317_end
  alt317_1:
  # rx subrule "assertion" subtype=capture negate=
    rx314_cur."!cursor_pos"(rx314_pos)
    $P10 = rx314_cur."assertion"()
    unless $P10, rx314_fail
    rx314_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx314_pos = $P10."pos"()
  alt317_end:
  # rx pass
    rx314_cur."!cursor_pass"(rx314_pos, "assertion:sym<?>")
    rx314_cur."!cursor_debug"("PASS  ", "assertion:sym<?>", " at pos=", rx314_pos)
    .return (rx314_cur)
  rx314_fail:
    (rx314_rep, rx314_pos, $I10, $P10) = rx314_cur."!mark_fail"(0)
    lt rx314_pos, -1, rx314_done
    eq rx314_pos, -1, rx314_fail
    jump $I10
  rx314_done:
    rx314_cur."!cursor_fail"()
    rx314_cur."!cursor_debug"("FAIL  ", "assertion:sym<?>")
    .return (rx314_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :subid("114_1256225891.75885") :method
.annotate "line", 121
    new $P316, "ResizablePMCArray"
    push $P316, "?"
    push $P316, "?"
    .return ($P316)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block318"  :anon :subid("115_1256225891.75885") :method :outer("113_1256225891.75885")
.annotate "line", 121
    .local string rx320_tgt
    .local int rx320_pos
    .local int rx320_off
    .local int rx320_eos
    .local int rx320_rep
    .local pmc rx320_cur
    (rx320_cur, rx320_pos, rx320_tgt, $I10) = self."!cursor_start"()
    rx320_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx320_cur
    length rx320_eos, rx320_tgt
    set rx320_off, 0
    lt $I10, 2, rx320_start
    sub rx320_off, $I10, 1
    substr rx320_tgt, rx320_tgt, rx320_off
  rx320_start:
    ge rx320_pos, 0, rxscan321_done
  rxscan321_loop:
    ($P10) = rx320_cur."from"()
    inc $P10
    set rx320_pos, $P10
    ge rx320_pos, rx320_eos, rxscan321_done
    set_addr $I10, rxscan321_loop
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
  rxscan321_done:
  # rx literal  ">"
    add $I11, rx320_pos, 1
    gt $I11, rx320_eos, rx320_fail
    sub $I11, rx320_pos, rx320_off
    substr $S10, rx320_tgt, $I11, 1
    ne $S10, ">", rx320_fail
    add rx320_pos, 1
  # rx pass
    rx320_cur."!cursor_pass"(rx320_pos, "")
    rx320_cur."!cursor_debug"("PASS  ", "", " at pos=", rx320_pos)
    .return (rx320_cur)
  rx320_fail:
    (rx320_rep, rx320_pos, $I10, $P10) = rx320_cur."!mark_fail"(0)
    lt rx320_pos, -1, rx320_done
    eq rx320_pos, -1, rx320_fail
    jump $I10
  rx320_done:
    rx320_cur."!cursor_fail"()
    rx320_cur."!cursor_debug"("FAIL  ", "")
    .return (rx320_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("116_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 122
    .const 'Sub' $P328 = "118_1256225891.75885" 
    capture_lex $P328
    .local string rx323_tgt
    .local int rx323_pos
    .local int rx323_off
    .local int rx323_eos
    .local int rx323_rep
    .local pmc rx323_cur
    (rx323_cur, rx323_pos, rx323_tgt, $I10) = self."!cursor_start"()
    rx323_cur."!cursor_debug"("START ", "assertion:sym<!>")
    .lex unicode:"$\x{a2}", rx323_cur
    length rx323_eos, rx323_tgt
    set rx323_off, 0
    lt $I10, 2, rx323_start
    sub rx323_off, $I10, 1
    substr rx323_tgt, rx323_tgt, rx323_off
  rx323_start:
  # rx literal  "!"
    add $I11, rx323_pos, 1
    gt $I11, rx323_eos, rx323_fail
    sub $I11, rx323_pos, rx323_off
    substr $S10, rx323_tgt, $I11, 1
    ne $S10, "!", rx323_fail
    add rx323_pos, 1
  alt326_0:
    set_addr $I10, alt326_1
    rx323_cur."!mark_push"(0, rx323_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx323_cur."!cursor_pos"(rx323_pos)
    .const 'Sub' $P328 = "118_1256225891.75885" 
    capture_lex $P328
    $P10 = rx323_cur."before"($P328)
    unless $P10, rx323_fail
    goto alt326_end
  alt326_1:
  # rx subrule "assertion" subtype=capture negate=
    rx323_cur."!cursor_pos"(rx323_pos)
    $P10 = rx323_cur."assertion"()
    unless $P10, rx323_fail
    rx323_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx323_pos = $P10."pos"()
  alt326_end:
  # rx pass
    rx323_cur."!cursor_pass"(rx323_pos, "assertion:sym<!>")
    rx323_cur."!cursor_debug"("PASS  ", "assertion:sym<!>", " at pos=", rx323_pos)
    .return (rx323_cur)
  rx323_fail:
    (rx323_rep, rx323_pos, $I10, $P10) = rx323_cur."!mark_fail"(0)
    lt rx323_pos, -1, rx323_done
    eq rx323_pos, -1, rx323_fail
    jump $I10
  rx323_done:
    rx323_cur."!cursor_fail"()
    rx323_cur."!cursor_debug"("FAIL  ", "assertion:sym<!>")
    .return (rx323_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :subid("117_1256225891.75885") :method
.annotate "line", 122
    new $P325, "ResizablePMCArray"
    push $P325, "!"
    push $P325, "!"
    .return ($P325)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block327"  :anon :subid("118_1256225891.75885") :method :outer("116_1256225891.75885")
.annotate "line", 122
    .local string rx329_tgt
    .local int rx329_pos
    .local int rx329_off
    .local int rx329_eos
    .local int rx329_rep
    .local pmc rx329_cur
    (rx329_cur, rx329_pos, rx329_tgt, $I10) = self."!cursor_start"()
    rx329_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx329_cur
    length rx329_eos, rx329_tgt
    set rx329_off, 0
    lt $I10, 2, rx329_start
    sub rx329_off, $I10, 1
    substr rx329_tgt, rx329_tgt, rx329_off
  rx329_start:
    ge rx329_pos, 0, rxscan330_done
  rxscan330_loop:
    ($P10) = rx329_cur."from"()
    inc $P10
    set rx329_pos, $P10
    ge rx329_pos, rx329_eos, rxscan330_done
    set_addr $I10, rxscan330_loop
    rx329_cur."!mark_push"(0, rx329_pos, $I10)
  rxscan330_done:
  # rx literal  ">"
    add $I11, rx329_pos, 1
    gt $I11, rx329_eos, rx329_fail
    sub $I11, rx329_pos, rx329_off
    substr $S10, rx329_tgt, $I11, 1
    ne $S10, ">", rx329_fail
    add rx329_pos, 1
  # rx pass
    rx329_cur."!cursor_pass"(rx329_pos, "")
    rx329_cur."!cursor_debug"("PASS  ", "", " at pos=", rx329_pos)
    .return (rx329_cur)
  rx329_fail:
    (rx329_rep, rx329_pos, $I10, $P10) = rx329_cur."!mark_fail"(0)
    lt rx329_pos, -1, rx329_done
    eq rx329_pos, -1, rx329_fail
    jump $I10
  rx329_done:
    rx329_cur."!cursor_fail"()
    rx329_cur."!cursor_debug"("FAIL  ", "")
    .return (rx329_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("119_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 124
    .local string rx332_tgt
    .local int rx332_pos
    .local int rx332_off
    .local int rx332_eos
    .local int rx332_rep
    .local pmc rx332_cur
    (rx332_cur, rx332_pos, rx332_tgt, $I10) = self."!cursor_start"()
    rx332_cur."!cursor_debug"("START ", "assertion:sym<method>")
    .lex unicode:"$\x{a2}", rx332_cur
    length rx332_eos, rx332_tgt
    set rx332_off, 0
    lt $I10, 2, rx332_start
    sub rx332_off, $I10, 1
    substr rx332_tgt, rx332_tgt, rx332_off
  rx332_start:
.annotate "line", 125
  # rx literal  "."
    add $I11, rx332_pos, 1
    gt $I11, rx332_eos, rx332_fail
    sub $I11, rx332_pos, rx332_off
    substr $S10, rx332_tgt, $I11, 1
    ne $S10, ".", rx332_fail
    add rx332_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."assertion"()
    unless $P10, rx332_fail
    rx332_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx332_pos = $P10."pos"()
.annotate "line", 124
  # rx pass
    rx332_cur."!cursor_pass"(rx332_pos, "assertion:sym<method>")
    rx332_cur."!cursor_debug"("PASS  ", "assertion:sym<method>", " at pos=", rx332_pos)
    .return (rx332_cur)
  rx332_fail:
    (rx332_rep, rx332_pos, $I10, $P10) = rx332_cur."!mark_fail"(0)
    lt rx332_pos, -1, rx332_done
    eq rx332_pos, -1, rx332_fail
    jump $I10
  rx332_done:
    rx332_cur."!cursor_fail"()
    rx332_cur."!cursor_debug"("FAIL  ", "assertion:sym<method>")
    .return (rx332_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :subid("120_1256225891.75885") :method
.annotate "line", 124
    new $P334, "ResizablePMCArray"
    push $P334, "."
    .return ($P334)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("121_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 128
    .const 'Sub' $P343 = "123_1256225891.75885" 
    capture_lex $P343
    .local string rx336_tgt
    .local int rx336_pos
    .local int rx336_off
    .local int rx336_eos
    .local int rx336_rep
    .local pmc rx336_cur
    (rx336_cur, rx336_pos, rx336_tgt, $I10) = self."!cursor_start"()
    rx336_cur."!cursor_debug"("START ", "assertion:sym<name>")
    rx336_cur."!cursor_caparray"("assertion", "nibbler", "arglist")
    .lex unicode:"$\x{a2}", rx336_cur
    length rx336_eos, rx336_tgt
    set rx336_off, 0
    lt $I10, 2, rx336_start
    sub rx336_off, $I10, 1
    substr rx336_tgt, rx336_tgt, rx336_off
  rx336_start:
.annotate "line", 129
  # rx subcapture "longname"
    set_addr $I10, rxcap_339_fail
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx336_pos, rx336_off
    find_not_cclass $I11, 8192, rx336_tgt, $I10, rx336_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx336_fail
    add rx336_pos, rx336_off, $I11
    set_addr $I10, rxcap_339_fail
    ($I12, $I11) = rx336_cur."!mark_peek"($I10)
    rx336_cur."!cursor_pos"($I11)
    ($P10) = rx336_cur."!cursor_start"()
    $P10."!cursor_pass"(rx336_pos, "")
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    goto rxcap_339_done
  rxcap_339_fail:
    goto rx336_fail
  rxcap_339_done:
.annotate "line", 136
  # rx rxquantr340 ** 0..1
    set_addr $I346, rxquantr340_done
    rx336_cur."!mark_push"(0, rx336_pos, $I346)
  rxquantr340_loop:
  alt341_0:
.annotate "line", 130
    set_addr $I10, alt341_1
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
.annotate "line", 131
  # rx subrule "before" subtype=zerowidth negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    .const 'Sub' $P343 = "123_1256225891.75885" 
    capture_lex $P343
    $P10 = rx336_cur."before"($P343)
    unless $P10, rx336_fail
    goto alt341_end
  alt341_1:
    set_addr $I10, alt341_2
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
.annotate "line", 132
  # rx literal  "="
    add $I11, rx336_pos, 1
    gt $I11, rx336_eos, rx336_fail
    sub $I11, rx336_pos, rx336_off
    substr $S10, rx336_tgt, $I11, 1
    ne $S10, "=", rx336_fail
    add rx336_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."assertion"()
    unless $P10, rx336_fail
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx336_pos = $P10."pos"()
    goto alt341_end
  alt341_2:
    set_addr $I10, alt341_3
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
.annotate "line", 133
  # rx literal  ":"
    add $I11, rx336_pos, 1
    gt $I11, rx336_eos, rx336_fail
    sub $I11, rx336_pos, rx336_off
    substr $S10, rx336_tgt, $I11, 1
    ne $S10, ":", rx336_fail
    add rx336_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."arglist"()
    unless $P10, rx336_fail
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx336_pos = $P10."pos"()
    goto alt341_end
  alt341_3:
    set_addr $I10, alt341_4
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
.annotate "line", 134
  # rx literal  "("
    add $I11, rx336_pos, 1
    gt $I11, rx336_eos, rx336_fail
    sub $I11, rx336_pos, rx336_off
    substr $S10, rx336_tgt, $I11, 1
    ne $S10, "(", rx336_fail
    add rx336_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."arglist"()
    unless $P10, rx336_fail
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx336_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx336_pos, 1
    gt $I11, rx336_eos, rx336_fail
    sub $I11, rx336_pos, rx336_off
    substr $S10, rx336_tgt, $I11, 1
    ne $S10, ")", rx336_fail
    add rx336_pos, 1
    goto alt341_end
  alt341_4:
.annotate "line", 135
  # rx subrule "normspace" subtype=method negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."normspace"()
    unless $P10, rx336_fail
    rx336_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."nibbler"()
    unless $P10, rx336_fail
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx336_pos = $P10."pos"()
  alt341_end:
.annotate "line", 136
    (rx336_rep) = rx336_cur."!mark_commit"($I346)
  rxquantr340_done:
.annotate "line", 128
  # rx pass
    rx336_cur."!cursor_pass"(rx336_pos, "assertion:sym<name>")
    rx336_cur."!cursor_debug"("PASS  ", "assertion:sym<name>", " at pos=", rx336_pos)
    .return (rx336_cur)
  rx336_fail:
    (rx336_rep, rx336_pos, $I10, $P10) = rx336_cur."!mark_fail"(0)
    lt rx336_pos, -1, rx336_done
    eq rx336_pos, -1, rx336_fail
    jump $I10
  rx336_done:
    rx336_cur."!cursor_fail"()
    rx336_cur."!cursor_debug"("FAIL  ", "assertion:sym<name>")
    .return (rx336_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :subid("122_1256225891.75885") :method
.annotate "line", 128
    new $P338, "ResizablePMCArray"
    push $P338, ""
    .return ($P338)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block342"  :anon :subid("123_1256225891.75885") :method :outer("121_1256225891.75885")
.annotate "line", 131
    .local string rx344_tgt
    .local int rx344_pos
    .local int rx344_off
    .local int rx344_eos
    .local int rx344_rep
    .local pmc rx344_cur
    (rx344_cur, rx344_pos, rx344_tgt, $I10) = self."!cursor_start"()
    rx344_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx344_cur
    length rx344_eos, rx344_tgt
    set rx344_off, 0
    lt $I10, 2, rx344_start
    sub rx344_off, $I10, 1
    substr rx344_tgt, rx344_tgt, rx344_off
  rx344_start:
    ge rx344_pos, 0, rxscan345_done
  rxscan345_loop:
    ($P10) = rx344_cur."from"()
    inc $P10
    set rx344_pos, $P10
    ge rx344_pos, rx344_eos, rxscan345_done
    set_addr $I10, rxscan345_loop
    rx344_cur."!mark_push"(0, rx344_pos, $I10)
  rxscan345_done:
  # rx literal  ">"
    add $I11, rx344_pos, 1
    gt $I11, rx344_eos, rx344_fail
    sub $I11, rx344_pos, rx344_off
    substr $S10, rx344_tgt, $I11, 1
    ne $S10, ">", rx344_fail
    add rx344_pos, 1
  # rx pass
    rx344_cur."!cursor_pass"(rx344_pos, "")
    rx344_cur."!cursor_debug"("PASS  ", "", " at pos=", rx344_pos)
    .return (rx344_cur)
  rx344_fail:
    (rx344_rep, rx344_pos, $I10, $P10) = rx344_cur."!mark_fail"(0)
    lt rx344_pos, -1, rx344_done
    eq rx344_pos, -1, rx344_fail
    jump $I10
  rx344_done:
    rx344_cur."!cursor_fail"()
    rx344_cur."!cursor_debug"("FAIL  ", "")
    .return (rx344_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("124_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 139
    .const 'Sub' $P352 = "126_1256225891.75885" 
    capture_lex $P352
    .local string rx348_tgt
    .local int rx348_pos
    .local int rx348_off
    .local int rx348_eos
    .local int rx348_rep
    .local pmc rx348_cur
    (rx348_cur, rx348_pos, rx348_tgt, $I10) = self."!cursor_start"()
    rx348_cur."!cursor_debug"("START ", "assertion:sym<[>")
    rx348_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx348_cur
    length rx348_eos, rx348_tgt
    set rx348_off, 0
    lt $I10, 2, rx348_start
    sub rx348_off, $I10, 1
    substr rx348_tgt, rx348_tgt, rx348_off
  rx348_start:
  # rx subrule "before" subtype=zerowidth negate=
    rx348_cur."!cursor_pos"(rx348_pos)
    .const 'Sub' $P352 = "126_1256225891.75885" 
    capture_lex $P352
    $P10 = rx348_cur."before"($P352)
    unless $P10, rx348_fail
  # rx rxquantr356 ** 1..*
    set_addr $I357, rxquantr356_done
    rx348_cur."!mark_push"(0, -1, $I357)
  rxquantr356_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx348_cur."!cursor_pos"(rx348_pos)
    $P10 = rx348_cur."cclass_elem"()
    unless $P10, rx348_fail
    rx348_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx348_pos = $P10."pos"()
    (rx348_rep) = rx348_cur."!mark_commit"($I357)
    rx348_cur."!mark_push"(rx348_rep, rx348_pos, $I357)
    goto rxquantr356_loop
  rxquantr356_done:
  # rx pass
    rx348_cur."!cursor_pass"(rx348_pos, "assertion:sym<[>")
    rx348_cur."!cursor_debug"("PASS  ", "assertion:sym<[>", " at pos=", rx348_pos)
    .return (rx348_cur)
  rx348_fail:
    (rx348_rep, rx348_pos, $I10, $P10) = rx348_cur."!mark_fail"(0)
    lt rx348_pos, -1, rx348_done
    eq rx348_pos, -1, rx348_fail
    jump $I10
  rx348_done:
    rx348_cur."!cursor_fail"()
    rx348_cur."!cursor_debug"("FAIL  ", "assertion:sym<[>")
    .return (rx348_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :subid("125_1256225891.75885") :method
.annotate "line", 139
    new $P350, "ResizablePMCArray"
    push $P350, ""
    .return ($P350)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block351"  :anon :subid("126_1256225891.75885") :method :outer("124_1256225891.75885")
.annotate "line", 139
    .local string rx353_tgt
    .local int rx353_pos
    .local int rx353_off
    .local int rx353_eos
    .local int rx353_rep
    .local pmc rx353_cur
    (rx353_cur, rx353_pos, rx353_tgt, $I10) = self."!cursor_start"()
    rx353_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx353_cur
    length rx353_eos, rx353_tgt
    set rx353_off, 0
    lt $I10, 2, rx353_start
    sub rx353_off, $I10, 1
    substr rx353_tgt, rx353_tgt, rx353_off
  rx353_start:
    ge rx353_pos, 0, rxscan354_done
  rxscan354_loop:
    ($P10) = rx353_cur."from"()
    inc $P10
    set rx353_pos, $P10
    ge rx353_pos, rx353_eos, rxscan354_done
    set_addr $I10, rxscan354_loop
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  rxscan354_done:
  alt355_0:
    set_addr $I10, alt355_1
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  "["
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "[", rx353_fail
    add rx353_pos, 1
    goto alt355_end
  alt355_1:
    set_addr $I10, alt355_2
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  "+"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "+", rx353_fail
    add rx353_pos, 1
    goto alt355_end
  alt355_2:
  # rx literal  "-"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "-", rx353_fail
    add rx353_pos, 1
  alt355_end:
  # rx pass
    rx353_cur."!cursor_pass"(rx353_pos, "")
    rx353_cur."!cursor_debug"("PASS  ", "", " at pos=", rx353_pos)
    .return (rx353_cur)
  rx353_fail:
    (rx353_rep, rx353_pos, $I10, $P10) = rx353_cur."!mark_fail"(0)
    lt rx353_pos, -1, rx353_done
    eq rx353_pos, -1, rx353_fail
    jump $I10
  rx353_done:
    rx353_cur."!cursor_fail"()
    rx353_cur."!cursor_debug"("FAIL  ", "")
    .return (rx353_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("127_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 141
    .const 'Sub' $P369 = "129_1256225891.75885" 
    capture_lex $P369
    .local string rx359_tgt
    .local int rx359_pos
    .local int rx359_off
    .local int rx359_eos
    .local int rx359_rep
    .local pmc rx359_cur
    (rx359_cur, rx359_pos, rx359_tgt, $I10) = self."!cursor_start"()
    rx359_cur."!cursor_debug"("START ", "cclass_elem")
    rx359_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx359_cur
    length rx359_eos, rx359_tgt
    set rx359_off, 0
    lt $I10, 2, rx359_start
    sub rx359_off, $I10, 1
    substr rx359_tgt, rx359_tgt, rx359_off
  rx359_start:
.annotate "line", 142
  # rx subcapture "sign"
    set_addr $I10, rxcap_363_fail
    rx359_cur."!mark_push"(0, rx359_pos, $I10)
  alt362_0:
    set_addr $I10, alt362_1
    rx359_cur."!mark_push"(0, rx359_pos, $I10)
  # rx literal  "+"
    add $I11, rx359_pos, 1
    gt $I11, rx359_eos, rx359_fail
    sub $I11, rx359_pos, rx359_off
    substr $S10, rx359_tgt, $I11, 1
    ne $S10, "+", rx359_fail
    add rx359_pos, 1
    goto alt362_end
  alt362_1:
    set_addr $I10, alt362_2
    rx359_cur."!mark_push"(0, rx359_pos, $I10)
  # rx literal  "-"
    add $I11, rx359_pos, 1
    gt $I11, rx359_eos, rx359_fail
    sub $I11, rx359_pos, rx359_off
    substr $S10, rx359_tgt, $I11, 1
    ne $S10, "-", rx359_fail
    add rx359_pos, 1
    goto alt362_end
  alt362_2:
  alt362_end:
    set_addr $I10, rxcap_363_fail
    ($I12, $I11) = rx359_cur."!mark_peek"($I10)
    rx359_cur."!cursor_pos"($I11)
    ($P10) = rx359_cur."!cursor_start"()
    $P10."!cursor_pass"(rx359_pos, "")
    rx359_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_363_done
  rxcap_363_fail:
    goto rx359_fail
  rxcap_363_done:
.annotate "line", 143
  # rx rxquantr364 ** 0..1
    set_addr $I365, rxquantr364_done
    rx359_cur."!mark_push"(0, rx359_pos, $I365)
  rxquantr364_loop:
  # rx subrule "normspace" subtype=method negate=
    rx359_cur."!cursor_pos"(rx359_pos)
    $P10 = rx359_cur."normspace"()
    unless $P10, rx359_fail
    rx359_pos = $P10."pos"()
    (rx359_rep) = rx359_cur."!mark_commit"($I365)
  rxquantr364_done:
  alt366_0:
.annotate "line", 144
    set_addr $I10, alt366_1
    rx359_cur."!mark_push"(0, rx359_pos, $I10)
.annotate "line", 145
  # rx literal  "["
    add $I11, rx359_pos, 1
    gt $I11, rx359_eos, rx359_fail
    sub $I11, rx359_pos, rx359_off
    substr $S10, rx359_tgt, $I11, 1
    ne $S10, "[", rx359_fail
    add rx359_pos, 1
.annotate "line", 148
  # rx rxquantr367 ** 0..*
    set_addr $I388, rxquantr367_done
    rx359_cur."!mark_push"(0, rx359_pos, $I388)
  rxquantr367_loop:
.annotate "line", 145
  # rx subrule $P369 subtype=capture negate=
    rx359_cur."!cursor_pos"(rx359_pos)
    .const 'Sub' $P369 = "129_1256225891.75885" 
    capture_lex $P369
    $P10 = rx359_cur.$P369()
    unless $P10, rx359_fail
    rx359_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx359_pos = $P10."pos"()
.annotate "line", 148
    (rx359_rep) = rx359_cur."!mark_commit"($I388)
    rx359_cur."!mark_push"(rx359_rep, rx359_pos, $I388)
    goto rxquantr367_loop
  rxquantr367_done:
.annotate "line", 149
  # rx charclass_q s r 0..-1
    sub $I10, rx359_pos, rx359_off
    find_not_cclass $I11, 32, rx359_tgt, $I10, rx359_eos
    add rx359_pos, rx359_off, $I11
  # rx literal  "]"
    add $I11, rx359_pos, 1
    gt $I11, rx359_eos, rx359_fail
    sub $I11, rx359_pos, rx359_off
    substr $S10, rx359_tgt, $I11, 1
    ne $S10, "]", rx359_fail
    add rx359_pos, 1
.annotate "line", 145
    goto alt366_end
  alt366_1:
.annotate "line", 150
  # rx subcapture "name"
    set_addr $I10, rxcap_389_fail
    rx359_cur."!mark_push"(0, rx359_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx359_pos, rx359_off
    find_not_cclass $I11, 8192, rx359_tgt, $I10, rx359_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx359_fail
    add rx359_pos, rx359_off, $I11
    set_addr $I10, rxcap_389_fail
    ($I12, $I11) = rx359_cur."!mark_peek"($I10)
    rx359_cur."!cursor_pos"($I11)
    ($P10) = rx359_cur."!cursor_start"()
    $P10."!cursor_pass"(rx359_pos, "")
    rx359_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_389_done
  rxcap_389_fail:
    goto rx359_fail
  rxcap_389_done:
  alt366_end:
.annotate "line", 152
  # rx rxquantr390 ** 0..1
    set_addr $I391, rxquantr390_done
    rx359_cur."!mark_push"(0, rx359_pos, $I391)
  rxquantr390_loop:
  # rx subrule "normspace" subtype=method negate=
    rx359_cur."!cursor_pos"(rx359_pos)
    $P10 = rx359_cur."normspace"()
    unless $P10, rx359_fail
    rx359_pos = $P10."pos"()
    (rx359_rep) = rx359_cur."!mark_commit"($I391)
  rxquantr390_done:
.annotate "line", 141
  # rx pass
    rx359_cur."!cursor_pass"(rx359_pos, "cclass_elem")
    rx359_cur."!cursor_debug"("PASS  ", "cclass_elem", " at pos=", rx359_pos)
    .return (rx359_cur)
  rx359_fail:
    (rx359_rep, rx359_pos, $I10, $P10) = rx359_cur."!mark_fail"(0)
    lt rx359_pos, -1, rx359_done
    eq rx359_pos, -1, rx359_fail
    jump $I10
  rx359_done:
    rx359_cur."!cursor_fail"()
    rx359_cur."!cursor_debug"("FAIL  ", "cclass_elem")
    .return (rx359_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :subid("128_1256225891.75885") :method
.annotate "line", 141
    new $P361, "ResizablePMCArray"
    push $P361, ""
    push $P361, "-"
    push $P361, "+"
    .return ($P361)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block368"  :anon :subid("129_1256225891.75885") :method :outer("127_1256225891.75885")
.annotate "line", 145
    .const 'Sub' $P384 = "132_1256225891.75885" 
    capture_lex $P384
    .const 'Sub' $P379 = "131_1256225891.75885" 
    capture_lex $P379
    .const 'Sub' $P375 = "130_1256225891.75885" 
    capture_lex $P375
    .local string rx370_tgt
    .local int rx370_pos
    .local int rx370_off
    .local int rx370_eos
    .local int rx370_rep
    .local pmc rx370_cur
    (rx370_cur, rx370_pos, rx370_tgt, $I10) = self."!cursor_start"()
    rx370_cur."!cursor_debug"("START ", "")
    rx370_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx370_cur
    length rx370_eos, rx370_tgt
    set rx370_off, 0
    lt $I10, 2, rx370_start
    sub rx370_off, $I10, 1
    substr rx370_tgt, rx370_tgt, rx370_off
  rx370_start:
    ge rx370_pos, 0, rxscan371_done
  rxscan371_loop:
    ($P10) = rx370_cur."from"()
    inc $P10
    set rx370_pos, $P10
    ge rx370_pos, rx370_eos, rxscan371_done
    set_addr $I10, rxscan371_loop
    rx370_cur."!mark_push"(0, rx370_pos, $I10)
  rxscan371_done:
  alt372_0:
    set_addr $I10, alt372_1
    rx370_cur."!mark_push"(0, rx370_pos, $I10)
.annotate "line", 146
  # rx charclass_q s r 0..-1
    sub $I10, rx370_pos, rx370_off
    find_not_cclass $I11, 32, rx370_tgt, $I10, rx370_eos
    add rx370_pos, rx370_off, $I11
  # rx literal  "-"
    add $I11, rx370_pos, 1
    gt $I11, rx370_eos, rx370_fail
    sub $I11, rx370_pos, rx370_off
    substr $S10, rx370_tgt, $I11, 1
    ne $S10, "-", rx370_fail
    add rx370_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx370_cur."!cursor_pos"(rx370_pos)
    $P10 = rx370_cur."obs"("hyphen in enumerated character class;..")
    unless $P10, rx370_fail
    rx370_pos = $P10."pos"()
    goto alt372_end
  alt372_1:
.annotate "line", 147
  # rx charclass_q s r 0..-1
    sub $I10, rx370_pos, rx370_off
    find_not_cclass $I11, 32, rx370_tgt, $I10, rx370_eos
    add rx370_pos, rx370_off, $I11
  alt373_0:
    set_addr $I10, alt373_1
    rx370_cur."!mark_push"(0, rx370_pos, $I10)
  # rx literal  "\\"
    add $I11, rx370_pos, 1
    gt $I11, rx370_eos, rx370_fail
    sub $I11, rx370_pos, rx370_off
    substr $S10, rx370_tgt, $I11, 1
    ne $S10, "\\", rx370_fail
    add rx370_pos, 1
  # rx subrule $P375 subtype=capture negate=
    rx370_cur."!cursor_pos"(rx370_pos)
    .const 'Sub' $P375 = "130_1256225891.75885" 
    capture_lex $P375
    $P10 = rx370_cur.$P375()
    unless $P10, rx370_fail
    rx370_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx370_pos = $P10."pos"()
    goto alt373_end
  alt373_1:
  # rx subrule $P379 subtype=capture negate=
    rx370_cur."!cursor_pos"(rx370_pos)
    .const 'Sub' $P379 = "131_1256225891.75885" 
    capture_lex $P379
    $P10 = rx370_cur.$P379()
    unless $P10, rx370_fail
    rx370_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx370_pos = $P10."pos"()
  alt373_end:
  # rx rxquantr382 ** 0..1
    set_addr $I387, rxquantr382_done
    rx370_cur."!mark_push"(0, rx370_pos, $I387)
  rxquantr382_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx370_pos, rx370_off
    find_not_cclass $I11, 32, rx370_tgt, $I10, rx370_eos
    add rx370_pos, rx370_off, $I11
  # rx literal  ".."
    add $I11, rx370_pos, 2
    gt $I11, rx370_eos, rx370_fail
    sub $I11, rx370_pos, rx370_off
    substr $S10, rx370_tgt, $I11, 2
    ne $S10, "..", rx370_fail
    add rx370_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx370_pos, rx370_off
    find_not_cclass $I11, 32, rx370_tgt, $I10, rx370_eos
    add rx370_pos, rx370_off, $I11
  # rx subrule $P384 subtype=capture negate=
    rx370_cur."!cursor_pos"(rx370_pos)
    .const 'Sub' $P384 = "132_1256225891.75885" 
    capture_lex $P384
    $P10 = rx370_cur.$P384()
    unless $P10, rx370_fail
    rx370_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx370_pos = $P10."pos"()
    (rx370_rep) = rx370_cur."!mark_commit"($I387)
  rxquantr382_done:
  alt372_end:
.annotate "line", 145
  # rx pass
    rx370_cur."!cursor_pass"(rx370_pos, "")
    rx370_cur."!cursor_debug"("PASS  ", "", " at pos=", rx370_pos)
    .return (rx370_cur)
  rx370_fail:
    (rx370_rep, rx370_pos, $I10, $P10) = rx370_cur."!mark_fail"(0)
    lt rx370_pos, -1, rx370_done
    eq rx370_pos, -1, rx370_fail
    jump $I10
  rx370_done:
    rx370_cur."!cursor_fail"()
    rx370_cur."!cursor_debug"("FAIL  ", "")
    .return (rx370_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block374"  :anon :subid("130_1256225891.75885") :method :outer("129_1256225891.75885")
.annotate "line", 147
    .local string rx376_tgt
    .local int rx376_pos
    .local int rx376_off
    .local int rx376_eos
    .local int rx376_rep
    .local pmc rx376_cur
    (rx376_cur, rx376_pos, rx376_tgt, $I10) = self."!cursor_start"()
    rx376_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx376_cur
    length rx376_eos, rx376_tgt
    set rx376_off, 0
    lt $I10, 2, rx376_start
    sub rx376_off, $I10, 1
    substr rx376_tgt, rx376_tgt, rx376_off
  rx376_start:
    ge rx376_pos, 0, rxscan377_done
  rxscan377_loop:
    ($P10) = rx376_cur."from"()
    inc $P10
    set rx376_pos, $P10
    ge rx376_pos, rx376_eos, rxscan377_done
    set_addr $I10, rxscan377_loop
    rx376_cur."!mark_push"(0, rx376_pos, $I10)
  rxscan377_done:
  # rx charclass .
    ge rx376_pos, rx376_eos, rx376_fail
    inc rx376_pos
  # rx pass
    rx376_cur."!cursor_pass"(rx376_pos, "")
    rx376_cur."!cursor_debug"("PASS  ", "", " at pos=", rx376_pos)
    .return (rx376_cur)
  rx376_fail:
    (rx376_rep, rx376_pos, $I10, $P10) = rx376_cur."!mark_fail"(0)
    lt rx376_pos, -1, rx376_done
    eq rx376_pos, -1, rx376_fail
    jump $I10
  rx376_done:
    rx376_cur."!cursor_fail"()
    rx376_cur."!cursor_debug"("FAIL  ", "")
    .return (rx376_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block378"  :anon :subid("131_1256225891.75885") :method :outer("129_1256225891.75885")
.annotate "line", 147
    .local string rx380_tgt
    .local int rx380_pos
    .local int rx380_off
    .local int rx380_eos
    .local int rx380_rep
    .local pmc rx380_cur
    (rx380_cur, rx380_pos, rx380_tgt, $I10) = self."!cursor_start"()
    rx380_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx380_cur
    length rx380_eos, rx380_tgt
    set rx380_off, 0
    lt $I10, 2, rx380_start
    sub rx380_off, $I10, 1
    substr rx380_tgt, rx380_tgt, rx380_off
  rx380_start:
    ge rx380_pos, 0, rxscan381_done
  rxscan381_loop:
    ($P10) = rx380_cur."from"()
    inc $P10
    set rx380_pos, $P10
    ge rx380_pos, rx380_eos, rxscan381_done
    set_addr $I10, rxscan381_loop
    rx380_cur."!mark_push"(0, rx380_pos, $I10)
  rxscan381_done:
  # rx enumcharlist negate=1 
    ge rx380_pos, rx380_eos, rx380_fail
    sub $I10, rx380_pos, rx380_off
    substr $S10, rx380_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx380_fail
    inc rx380_pos
  # rx pass
    rx380_cur."!cursor_pass"(rx380_pos, "")
    rx380_cur."!cursor_debug"("PASS  ", "", " at pos=", rx380_pos)
    .return (rx380_cur)
  rx380_fail:
    (rx380_rep, rx380_pos, $I10, $P10) = rx380_cur."!mark_fail"(0)
    lt rx380_pos, -1, rx380_done
    eq rx380_pos, -1, rx380_fail
    jump $I10
  rx380_done:
    rx380_cur."!cursor_fail"()
    rx380_cur."!cursor_debug"("FAIL  ", "")
    .return (rx380_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block383"  :anon :subid("132_1256225891.75885") :method :outer("129_1256225891.75885")
.annotate "line", 147
    .local string rx385_tgt
    .local int rx385_pos
    .local int rx385_off
    .local int rx385_eos
    .local int rx385_rep
    .local pmc rx385_cur
    (rx385_cur, rx385_pos, rx385_tgt, $I10) = self."!cursor_start"()
    rx385_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx385_cur
    length rx385_eos, rx385_tgt
    set rx385_off, 0
    lt $I10, 2, rx385_start
    sub rx385_off, $I10, 1
    substr rx385_tgt, rx385_tgt, rx385_off
  rx385_start:
    ge rx385_pos, 0, rxscan386_done
  rxscan386_loop:
    ($P10) = rx385_cur."from"()
    inc $P10
    set rx385_pos, $P10
    ge rx385_pos, rx385_eos, rxscan386_done
    set_addr $I10, rxscan386_loop
    rx385_cur."!mark_push"(0, rx385_pos, $I10)
  rxscan386_done:
  # rx charclass .
    ge rx385_pos, rx385_eos, rx385_fail
    inc rx385_pos
  # rx pass
    rx385_cur."!cursor_pass"(rx385_pos, "")
    rx385_cur."!cursor_debug"("PASS  ", "", " at pos=", rx385_pos)
    .return (rx385_cur)
  rx385_fail:
    (rx385_rep, rx385_pos, $I10, $P10) = rx385_cur."!mark_fail"(0)
    lt rx385_pos, -1, rx385_done
    eq rx385_pos, -1, rx385_fail
    jump $I10
  rx385_done:
    rx385_cur."!cursor_fail"()
    rx385_cur."!cursor_debug"("FAIL  ", "")
    .return (rx385_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("133_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 155
    .const 'Sub' $P399 = "135_1256225891.75885" 
    capture_lex $P399
    .local string rx393_tgt
    .local int rx393_pos
    .local int rx393_off
    .local int rx393_eos
    .local int rx393_rep
    .local pmc rx393_cur
    (rx393_cur, rx393_pos, rx393_tgt, $I10) = self."!cursor_start"()
    rx393_cur."!cursor_debug"("START ", "mod_internal")
    rx393_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx393_cur
    length rx393_eos, rx393_tgt
    set rx393_off, 0
    lt $I10, 2, rx393_start
    sub rx393_off, $I10, 1
    substr rx393_tgt, rx393_tgt, rx393_off
  rx393_start:
  alt396_0:
.annotate "line", 156
    set_addr $I10, alt396_1
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
.annotate "line", 157
  # rx literal  ":"
    add $I11, rx393_pos, 1
    gt $I11, rx393_eos, rx393_fail
    sub $I11, rx393_pos, rx393_off
    substr $S10, rx393_tgt, $I11, 1
    ne $S10, ":", rx393_fail
    add rx393_pos, 1
  # rx rxquantr397 ** 1..1
    set_addr $I403, rxquantr397_done
    rx393_cur."!mark_push"(0, -1, $I403)
  rxquantr397_loop:
  # rx subrule $P399 subtype=capture negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    .const 'Sub' $P399 = "135_1256225891.75885" 
    capture_lex $P399
    $P10 = rx393_cur.$P399()
    unless $P10, rx393_fail
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    rx393_pos = $P10."pos"()
    (rx393_rep) = rx393_cur."!mark_commit"($I403)
  rxquantr397_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."mod_ident"()
    unless $P10, rx393_fail
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx393_pos = $P10."pos"()
  # rxanchor rwb
    le rx393_pos, 0, rx393_fail
    sub $I10, rx393_pos, rx393_off
    is_cclass $I11, 8192, rx393_tgt, $I10
    if $I11, rx393_fail
    dec $I10
    is_cclass $I11, 8192, rx393_tgt, $I10
    unless $I11, rx393_fail
    goto alt396_end
  alt396_1:
.annotate "line", 158
  # rx literal  ":"
    add $I11, rx393_pos, 1
    gt $I11, rx393_eos, rx393_fail
    sub $I11, rx393_pos, rx393_off
    substr $S10, rx393_tgt, $I11, 1
    ne $S10, ":", rx393_fail
    add rx393_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."mod_ident"()
    unless $P10, rx393_fail
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx393_pos = $P10."pos"()
  # rx rxquantr404 ** 0..1
    set_addr $I406, rxquantr404_done
    rx393_cur."!mark_push"(0, rx393_pos, $I406)
  rxquantr404_loop:
  # rx literal  "("
    add $I11, rx393_pos, 1
    gt $I11, rx393_eos, rx393_fail
    sub $I11, rx393_pos, rx393_off
    substr $S10, rx393_tgt, $I11, 1
    ne $S10, "(", rx393_fail
    add rx393_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_405_fail
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx393_pos, rx393_off
    find_not_cclass $I11, 8, rx393_tgt, $I10, rx393_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx393_fail
    add rx393_pos, rx393_off, $I11
    set_addr $I10, rxcap_405_fail
    ($I12, $I11) = rx393_cur."!mark_peek"($I10)
    rx393_cur."!cursor_pos"($I11)
    ($P10) = rx393_cur."!cursor_start"()
    $P10."!cursor_pass"(rx393_pos, "")
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_405_done
  rxcap_405_fail:
    goto rx393_fail
  rxcap_405_done:
  # rx literal  ")"
    add $I11, rx393_pos, 1
    gt $I11, rx393_eos, rx393_fail
    sub $I11, rx393_pos, rx393_off
    substr $S10, rx393_tgt, $I11, 1
    ne $S10, ")", rx393_fail
    add rx393_pos, 1
    (rx393_rep) = rx393_cur."!mark_commit"($I406)
  rxquantr404_done:
  alt396_end:
.annotate "line", 155
  # rx pass
    rx393_cur."!cursor_pass"(rx393_pos, "mod_internal")
    rx393_cur."!cursor_debug"("PASS  ", "mod_internal", " at pos=", rx393_pos)
    .return (rx393_cur)
  rx393_fail:
    (rx393_rep, rx393_pos, $I10, $P10) = rx393_cur."!mark_fail"(0)
    lt rx393_pos, -1, rx393_done
    eq rx393_pos, -1, rx393_fail
    jump $I10
  rx393_done:
    rx393_cur."!cursor_fail"()
    rx393_cur."!cursor_debug"("FAIL  ", "mod_internal")
    .return (rx393_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :subid("134_1256225891.75885") :method
.annotate "line", 155
    new $P395, "ResizablePMCArray"
    push $P395, ":"
    push $P395, ":"
    .return ($P395)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block398"  :anon :subid("135_1256225891.75885") :method :outer("133_1256225891.75885")
.annotate "line", 157
    .local string rx400_tgt
    .local int rx400_pos
    .local int rx400_off
    .local int rx400_eos
    .local int rx400_rep
    .local pmc rx400_cur
    (rx400_cur, rx400_pos, rx400_tgt, $I10) = self."!cursor_start"()
    rx400_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx400_cur
    length rx400_eos, rx400_tgt
    set rx400_off, 0
    lt $I10, 2, rx400_start
    sub rx400_off, $I10, 1
    substr rx400_tgt, rx400_tgt, rx400_off
  rx400_start:
    ge rx400_pos, 0, rxscan401_done
  rxscan401_loop:
    ($P10) = rx400_cur."from"()
    inc $P10
    set rx400_pos, $P10
    ge rx400_pos, rx400_eos, rxscan401_done
    set_addr $I10, rxscan401_loop
    rx400_cur."!mark_push"(0, rx400_pos, $I10)
  rxscan401_done:
  alt402_0:
    set_addr $I10, alt402_1
    rx400_cur."!mark_push"(0, rx400_pos, $I10)
  # rx literal  "!"
    add $I11, rx400_pos, 1
    gt $I11, rx400_eos, rx400_fail
    sub $I11, rx400_pos, rx400_off
    substr $S10, rx400_tgt, $I11, 1
    ne $S10, "!", rx400_fail
    add rx400_pos, 1
    goto alt402_end
  alt402_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx400_pos, rx400_off
    find_not_cclass $I11, 8, rx400_tgt, $I10, rx400_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx400_fail
    add rx400_pos, rx400_off, $I11
  alt402_end:
  # rx pass
    rx400_cur."!cursor_pass"(rx400_pos, "")
    rx400_cur."!cursor_debug"("PASS  ", "", " at pos=", rx400_pos)
    .return (rx400_cur)
  rx400_fail:
    (rx400_rep, rx400_pos, $I10, $P10) = rx400_cur."!mark_fail"(0)
    lt rx400_pos, -1, rx400_done
    eq rx400_pos, -1, rx400_fail
    jump $I10
  rx400_done:
    rx400_cur."!cursor_fail"()
    rx400_cur."!cursor_debug"("FAIL  ", "")
    .return (rx400_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("136_1256225891.75885") :method
.annotate "line", 162
    $P408 = self."!protoregex"("mod_ident")
    .return ($P408)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("137_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 163
    .local string rx410_tgt
    .local int rx410_pos
    .local int rx410_off
    .local int rx410_eos
    .local int rx410_rep
    .local pmc rx410_cur
    (rx410_cur, rx410_pos, rx410_tgt, $I10) = self."!cursor_start"()
    rx410_cur."!cursor_debug"("START ", "mod_ident:sym<ignorecase>")
    .lex unicode:"$\x{a2}", rx410_cur
    length rx410_eos, rx410_tgt
    set rx410_off, 0
    lt $I10, 2, rx410_start
    sub rx410_off, $I10, 1
    substr rx410_tgt, rx410_tgt, rx410_off
  rx410_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_413_fail
    rx410_cur."!mark_push"(0, rx410_pos, $I10)
  # rx literal  "i"
    add $I11, rx410_pos, 1
    gt $I11, rx410_eos, rx410_fail
    sub $I11, rx410_pos, rx410_off
    substr $S10, rx410_tgt, $I11, 1
    ne $S10, "i", rx410_fail
    add rx410_pos, 1
    set_addr $I10, rxcap_413_fail
    ($I12, $I11) = rx410_cur."!mark_peek"($I10)
    rx410_cur."!cursor_pos"($I11)
    ($P10) = rx410_cur."!cursor_start"()
    $P10."!cursor_pass"(rx410_pos, "")
    rx410_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_413_done
  rxcap_413_fail:
    goto rx410_fail
  rxcap_413_done:
  # rx rxquantr414 ** 0..1
    set_addr $I415, rxquantr414_done
    rx410_cur."!mark_push"(0, rx410_pos, $I415)
  rxquantr414_loop:
  # rx literal  "gnorecase"
    add $I11, rx410_pos, 9
    gt $I11, rx410_eos, rx410_fail
    sub $I11, rx410_pos, rx410_off
    substr $S10, rx410_tgt, $I11, 9
    ne $S10, "gnorecase", rx410_fail
    add rx410_pos, 9
    (rx410_rep) = rx410_cur."!mark_commit"($I415)
  rxquantr414_done:
  # rx pass
    rx410_cur."!cursor_pass"(rx410_pos, "mod_ident:sym<ignorecase>")
    rx410_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ignorecase>", " at pos=", rx410_pos)
    .return (rx410_cur)
  rx410_fail:
    (rx410_rep, rx410_pos, $I10, $P10) = rx410_cur."!mark_fail"(0)
    lt rx410_pos, -1, rx410_done
    eq rx410_pos, -1, rx410_fail
    jump $I10
  rx410_done:
    rx410_cur."!cursor_fail"()
    rx410_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ignorecase>")
    .return (rx410_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :subid("138_1256225891.75885") :method
.annotate "line", 163
    new $P412, "ResizablePMCArray"
    push $P412, "i"
    .return ($P412)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("139_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 164
    .local string rx417_tgt
    .local int rx417_pos
    .local int rx417_off
    .local int rx417_eos
    .local int rx417_rep
    .local pmc rx417_cur
    (rx417_cur, rx417_pos, rx417_tgt, $I10) = self."!cursor_start"()
    rx417_cur."!cursor_debug"("START ", "mod_ident:sym<ratchet>")
    .lex unicode:"$\x{a2}", rx417_cur
    length rx417_eos, rx417_tgt
    set rx417_off, 0
    lt $I10, 2, rx417_start
    sub rx417_off, $I10, 1
    substr rx417_tgt, rx417_tgt, rx417_off
  rx417_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_420_fail
    rx417_cur."!mark_push"(0, rx417_pos, $I10)
  # rx literal  "r"
    add $I11, rx417_pos, 1
    gt $I11, rx417_eos, rx417_fail
    sub $I11, rx417_pos, rx417_off
    substr $S10, rx417_tgt, $I11, 1
    ne $S10, "r", rx417_fail
    add rx417_pos, 1
    set_addr $I10, rxcap_420_fail
    ($I12, $I11) = rx417_cur."!mark_peek"($I10)
    rx417_cur."!cursor_pos"($I11)
    ($P10) = rx417_cur."!cursor_start"()
    $P10."!cursor_pass"(rx417_pos, "")
    rx417_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_420_done
  rxcap_420_fail:
    goto rx417_fail
  rxcap_420_done:
  # rx rxquantr421 ** 0..1
    set_addr $I422, rxquantr421_done
    rx417_cur."!mark_push"(0, rx417_pos, $I422)
  rxquantr421_loop:
  # rx literal  "atchet"
    add $I11, rx417_pos, 6
    gt $I11, rx417_eos, rx417_fail
    sub $I11, rx417_pos, rx417_off
    substr $S10, rx417_tgt, $I11, 6
    ne $S10, "atchet", rx417_fail
    add rx417_pos, 6
    (rx417_rep) = rx417_cur."!mark_commit"($I422)
  rxquantr421_done:
  # rx pass
    rx417_cur."!cursor_pass"(rx417_pos, "mod_ident:sym<ratchet>")
    rx417_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ratchet>", " at pos=", rx417_pos)
    .return (rx417_cur)
  rx417_fail:
    (rx417_rep, rx417_pos, $I10, $P10) = rx417_cur."!mark_fail"(0)
    lt rx417_pos, -1, rx417_done
    eq rx417_pos, -1, rx417_fail
    jump $I10
  rx417_done:
    rx417_cur."!cursor_fail"()
    rx417_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ratchet>")
    .return (rx417_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :subid("140_1256225891.75885") :method
.annotate "line", 164
    new $P419, "ResizablePMCArray"
    push $P419, "r"
    .return ($P419)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("141_1256225891.75885") :method :outer("10_1256225891.75885")
.annotate "line", 165
    .local string rx424_tgt
    .local int rx424_pos
    .local int rx424_off
    .local int rx424_eos
    .local int rx424_rep
    .local pmc rx424_cur
    (rx424_cur, rx424_pos, rx424_tgt, $I10) = self."!cursor_start"()
    rx424_cur."!cursor_debug"("START ", "mod_ident:sym<sigspace>")
    .lex unicode:"$\x{a2}", rx424_cur
    length rx424_eos, rx424_tgt
    set rx424_off, 0
    lt $I10, 2, rx424_start
    sub rx424_off, $I10, 1
    substr rx424_tgt, rx424_tgt, rx424_off
  rx424_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_427_fail
    rx424_cur."!mark_push"(0, rx424_pos, $I10)
  # rx literal  "s"
    add $I11, rx424_pos, 1
    gt $I11, rx424_eos, rx424_fail
    sub $I11, rx424_pos, rx424_off
    substr $S10, rx424_tgt, $I11, 1
    ne $S10, "s", rx424_fail
    add rx424_pos, 1
    set_addr $I10, rxcap_427_fail
    ($I12, $I11) = rx424_cur."!mark_peek"($I10)
    rx424_cur."!cursor_pos"($I11)
    ($P10) = rx424_cur."!cursor_start"()
    $P10."!cursor_pass"(rx424_pos, "")
    rx424_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_427_done
  rxcap_427_fail:
    goto rx424_fail
  rxcap_427_done:
  # rx rxquantr428 ** 0..1
    set_addr $I429, rxquantr428_done
    rx424_cur."!mark_push"(0, rx424_pos, $I429)
  rxquantr428_loop:
  # rx literal  "igspace"
    add $I11, rx424_pos, 7
    gt $I11, rx424_eos, rx424_fail
    sub $I11, rx424_pos, rx424_off
    substr $S10, rx424_tgt, $I11, 7
    ne $S10, "igspace", rx424_fail
    add rx424_pos, 7
    (rx424_rep) = rx424_cur."!mark_commit"($I429)
  rxquantr428_done:
  # rx pass
    rx424_cur."!cursor_pass"(rx424_pos, "mod_ident:sym<sigspace>")
    rx424_cur."!cursor_debug"("PASS  ", "mod_ident:sym<sigspace>", " at pos=", rx424_pos)
    .return (rx424_cur)
  rx424_fail:
    (rx424_rep, rx424_pos, $I10, $P10) = rx424_cur."!mark_fail"(0)
    lt rx424_pos, -1, rx424_done
    eq rx424_pos, -1, rx424_fail
    jump $I10
  rx424_done:
    rx424_cur."!cursor_fail"()
    rx424_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<sigspace>")
    .return (rx424_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :subid("142_1256225891.75885") :method
.annotate "line", 165
    new $P426, "ResizablePMCArray"
    push $P426, "s"
    .return ($P426)
.end

### .include 'src/gen/p6regex-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256225882.94197")
.annotate "line", 4
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
.annotate "line", 1
    .return ($P14)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block13" :init :load :subid("11_1256225882.94197")
.annotate "line", 4
    .const 'Sub' $P1412 = "121_1256225882.94197" 
    capture_lex $P1412
    .const 'Sub' $P1371 = "117_1256225882.94197" 
    capture_lex $P1371
    .const 'Sub' $P1108 = "99_1256225882.94197" 
    capture_lex $P1108
    .const 'Sub' $P1088 = "98_1256225882.94197" 
    capture_lex $P1088
    .const 'Sub' $P1061 = "97_1256225882.94197" 
    capture_lex $P1061
    .const 'Sub' $P993 = "91_1256225882.94197" 
    capture_lex $P993
    .const 'Sub' $P924 = "86_1256225882.94197" 
    capture_lex $P924
    .const 'Sub' $P854 = "80_1256225882.94197" 
    capture_lex $P854
    .const 'Sub' $P842 = "79_1256225882.94197" 
    capture_lex $P842
    .const 'Sub' $P814 = "76_1256225882.94197" 
    capture_lex $P814
    .const 'Sub' $P792 = "73_1256225882.94197" 
    capture_lex $P792
    .const 'Sub' $P779 = "72_1256225882.94197" 
    capture_lex $P779
    .const 'Sub' $P764 = "71_1256225882.94197" 
    capture_lex $P764
    .const 'Sub' $P749 = "70_1256225882.94197" 
    capture_lex $P749
    .const 'Sub' $P734 = "69_1256225882.94197" 
    capture_lex $P734
    .const 'Sub' $P719 = "68_1256225882.94197" 
    capture_lex $P719
    .const 'Sub' $P704 = "67_1256225882.94197" 
    capture_lex $P704
    .const 'Sub' $P689 = "66_1256225882.94197" 
    capture_lex $P689
    .const 'Sub' $P674 = "65_1256225882.94197" 
    capture_lex $P674
    .const 'Sub' $P652 = "64_1256225882.94197" 
    capture_lex $P652
    .const 'Sub' $P581 = "58_1256225882.94197" 
    capture_lex $P581
    .const 'Sub' $P561 = "57_1256225882.94197" 
    capture_lex $P561
    .const 'Sub' $P539 = "56_1256225882.94197" 
    capture_lex $P539
    .const 'Sub' $P529 = "55_1256225882.94197" 
    capture_lex $P529
    .const 'Sub' $P519 = "54_1256225882.94197" 
    capture_lex $P519
    .const 'Sub' $P509 = "53_1256225882.94197" 
    capture_lex $P509
    .const 'Sub' $P498 = "52_1256225882.94197" 
    capture_lex $P498
    .const 'Sub' $P487 = "51_1256225882.94197" 
    capture_lex $P487
    .const 'Sub' $P476 = "50_1256225882.94197" 
    capture_lex $P476
    .const 'Sub' $P465 = "49_1256225882.94197" 
    capture_lex $P465
    .const 'Sub' $P454 = "48_1256225882.94197" 
    capture_lex $P454
    .const 'Sub' $P443 = "47_1256225882.94197" 
    capture_lex $P443
    .const 'Sub' $P432 = "46_1256225882.94197" 
    capture_lex $P432
    .const 'Sub' $P421 = "45_1256225882.94197" 
    capture_lex $P421
    .const 'Sub' $P406 = "44_1256225882.94197" 
    capture_lex $P406
    .const 'Sub' $P390 = "43_1256225882.94197" 
    capture_lex $P390
    .const 'Sub' $P380 = "42_1256225882.94197" 
    capture_lex $P380
    .const 'Sub' $P363 = "41_1256225882.94197" 
    capture_lex $P363
    .const 'Sub' $P303 = "36_1256225882.94197" 
    capture_lex $P303
    .const 'Sub' $P287 = "35_1256225882.94197" 
    capture_lex $P287
    .const 'Sub' $P273 = "34_1256225882.94197" 
    capture_lex $P273
    .const 'Sub' $P259 = "33_1256225882.94197" 
    capture_lex $P259
    .const 'Sub' $P225 = "29_1256225882.94197" 
    capture_lex $P225
    .const 'Sub' $P168 = "24_1256225882.94197" 
    capture_lex $P168
    .const 'Sub' $P107 = "19_1256225882.94197" 
    capture_lex $P107
    .const 'Sub' $P49 = "14_1256225882.94197" 
    capture_lex $P49
    .const 'Sub' $P35 = "13_1256225882.94197" 
    capture_lex $P35
    .const 'Sub' $P17 = "12_1256225882.94197" 
    capture_lex $P17
$P15 = get_root_global ["parrot"], "P6metaclass"
    $P15."new_class"("Regex::P6Regex::Actions")
 
        $P16 = new ['ResizablePMCArray'] 
        $P0 = new ['Hash']
        push $P16, $P0
    
    set_global "@MODIFIERS", $P16
.annotate "line", 498
    .const 'Sub' $P1412 = "121_1256225882.94197" 
    capture_lex $P1412
.annotate "line", 4
    .return ($P1412)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("12_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_20
.annotate "line", 10
    new $P19, 'ExceptionHandler'
    set_addr $P19, control_18
    $P19."handle_types"(58)
    push_eh $P19
    .lex "self", self
    .lex "$/", param_20
.annotate "line", 11
    find_lex $P21, "$/"
    find_lex $P24, "$/"
    set $P25, $P24["quote"]
    unless_null $P25, vivify_123
    new $P25, "Undef"
  vivify_123:
    if $P25, if_23
    find_lex $P30, "$/"
    set $P31, $P30["val"]
    unless_null $P31, vivify_124
    new $P31, "Undef"
  vivify_124:
    set $N32, $P31
    new $P22, 'Float'
    set $P22, $N32
    goto if_23_end
  if_23:
    find_lex $P26, "$/"
    set $P27, $P26["quote"]
    unless_null $P27, vivify_125
    new $P27, "Hash"
  vivify_125:
    set $P28, $P27["val"]
    unless_null $P28, vivify_126
    new $P28, "Undef"
  vivify_126:
    set $S29, $P28
    new $P22, 'String'
    set $P22, $S29
  if_23_end:
    $P33 = $P21."!make"($P22)
.annotate "line", 10
    .return ($P33)
  control_18:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P34, exception, "payload"
    .return ($P34)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("13_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_38
.annotate "line", 14
    new $P37, 'ExceptionHandler'
    set_addr $P37, control_36
    $P37."handle_types"(58)
    push_eh $P37
    .lex "self", self
    .lex "$/", param_38
.annotate "line", 15
    find_lex $P39, "$/"
    set $P40, $P39["nibbler"]
    unless_null $P40, vivify_127
    new $P40, "Undef"
  vivify_127:
    $P41 = $P40."ast"()
    $P42 = "buildsub"($P41)
    .lex "$past", $P42
.annotate "line", 16
    find_lex $P43, "$past"
    unless_null $P43, vivify_128
    new $P43, "Undef"
  vivify_128:
    find_lex $P44, "$/"
    unless_null $P44, vivify_129
    new $P44, "Undef"
  vivify_129:
    $P43."node"($P44)
    find_lex $P45, "$/"
.annotate "line", 17
    find_lex $P46, "$past"
    unless_null $P46, vivify_130
    new $P46, "Undef"
  vivify_130:
    $P47 = $P45."!make"($P46)
.annotate "line", 14
    .return ($P47)
  control_36:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P48, exception, "payload"
    .return ($P48)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "nibbler"  :subid("14_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_52
    .param pmc param_53 :optional
    .param int has_param_53 :opt_flag
.annotate "line", 20
    .const 'Sub' $P98 = "18_1256225882.94197" 
    capture_lex $P98
    .const 'Sub' $P78 = "16_1256225882.94197" 
    capture_lex $P78
    .const 'Sub' $P60 = "15_1256225882.94197" 
    capture_lex $P60
    new $P51, 'ExceptionHandler'
    set_addr $P51, control_50
    $P51."handle_types"(58)
    push_eh $P51
    .lex "self", self
    .lex "$/", param_52
    if has_param_53, optparam_131
    new $P54, "Undef"
    set param_53, $P54
  optparam_131:
    .lex "$key", param_53
.annotate "line", 21
    find_lex $P56, "$key"
    unless_null $P56, vivify_132
    new $P56, "Undef"
  vivify_132:
    set $S57, $P56
    iseq $I58, $S57, "open"
    unless $I58, if_55_end
    .const 'Sub' $P60 = "15_1256225882.94197" 
    capture_lex $P60
    $P60()
  if_55_end:
.annotate "line", 31
    get_global $P68, "@MODIFIERS"
    unless_null $P68, vivify_137
    new $P68, "ResizablePMCArray"
  vivify_137:
    $P68."shift"()
.annotate "line", 32
    new $P69, "Undef"
    .lex "$past", $P69
.annotate "line", 33
    find_lex $P71, "$/"
    set $P72, $P71["termish"]
    unless_null $P72, vivify_138
    new $P72, "Undef"
  vivify_138:
    set $N73, $P72
    new $P74, "Integer"
    assign $P74, 1
    set $N75, $P74
    isgt $I76, $N73, $N75
    if $I76, if_70
.annotate "line", 39
    .const 'Sub' $P98 = "18_1256225882.94197" 
    capture_lex $P98
    $P98()
    goto if_70_end
  if_70:
.annotate "line", 33
    .const 'Sub' $P78 = "16_1256225882.94197" 
    capture_lex $P78
    $P78()
  if_70_end:
    find_lex $P103, "$/"
.annotate "line", 42
    find_lex $P104, "$past"
    unless_null $P104, vivify_146
    new $P104, "Undef"
  vivify_146:
    $P105 = $P103."!make"($P104)
.annotate "line", 20
    .return ($P105)
  control_50:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block59"  :anon :subid("15_1256225882.94197") :outer("14_1256225882.94197")
.annotate "line", 22
    get_global $P61, "@MODIFIERS"
    unless_null $P61, vivify_133
    new $P61, "ResizablePMCArray"
  vivify_133:
    set $P62, $P61[0]
    unless_null $P62, vivify_134
    new $P62, "Undef"
  vivify_134:
    .lex "%old", $P62
.annotate "line", 23

                       $P0 = find_lex '%old'
                       $P63 = clone $P0
                   
    .lex "%new", $P63
.annotate "line", 27
    get_global $P64, "@MODIFIERS"
    unless_null $P64, vivify_135
    new $P64, "ResizablePMCArray"
  vivify_135:
    find_lex $P65, "%new"
    unless_null $P65, vivify_136
    new $P65, "Hash"
  vivify_136:
    $P64."unshift"($P65)
.annotate "line", 28
    new $P66, "Exception"
    set $P66['type'], 58
    new $P67, "Integer"
    assign $P67, 1
    setattribute $P66, 'payload', $P67
    throw $P66
.annotate "line", 21
    .return ()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block97"  :anon :subid("18_1256225882.94197") :outer("14_1256225882.94197")
.annotate "line", 40
    find_lex $P99, "$/"
    set $P100, $P99["termish"]
    unless_null $P100, vivify_139
    new $P100, "ResizablePMCArray"
  vivify_139:
    set $P101, $P100[0]
    unless_null $P101, vivify_140
    new $P101, "Undef"
  vivify_140:
    $P102 = $P101."ast"()
    store_lex "$past", $P102
.annotate "line", 39
    .return ($P102)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block77"  :anon :subid("16_1256225882.94197") :outer("14_1256225882.94197")
.annotate "line", 33
    .const 'Sub' $P88 = "17_1256225882.94197" 
    capture_lex $P88
.annotate "line", 34
    get_hll_global $P79, ["PAST"], "Regex"
    find_lex $P80, "$/"
    unless_null $P80, vivify_141
    new $P80, "Undef"
  vivify_141:
    $P81 = $P79."new"("alt" :named("pasttype"), $P80 :named("node"))
    store_lex "$past", $P81
.annotate "line", 35
    find_lex $P83, "$/"
    set $P84, $P83["termish"]
    unless_null $P84, vivify_142
    new $P84, "Undef"
  vivify_142:
    defined $I85, $P84
    unless $I85, for_undef_143
    iter $P82, $P84
    new $P95, 'ExceptionHandler'
    set_addr $P95, loop94_handler
    $P95."handle_types"(65, 67, 66)
    push_eh $P95
  loop94_test:
    unless $P82, loop94_done
    shift $P86, $P82
  loop94_redo:
    .const 'Sub' $P88 = "17_1256225882.94197" 
    capture_lex $P88
    $P88($P86)
  loop94_next:
    goto loop94_test
  loop94_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P96, exception, 'type'
    eq $P96, 65, loop94_next
    eq $P96, 67, loop94_redo
  loop94_done:
    pop_eh 
  for_undef_143:
.annotate "line", 33
    .return ($P82)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block87"  :anon :subid("17_1256225882.94197") :outer("16_1256225882.94197")
    .param pmc param_89
.annotate "line", 35
    .lex "$_", param_89
.annotate "line", 36
    find_lex $P90, "$past"
    unless_null $P90, vivify_144
    new $P90, "Undef"
  vivify_144:
    find_lex $P91, "$_"
    unless_null $P91, vivify_145
    new $P91, "Undef"
  vivify_145:
    $P92 = $P91."ast"()
    $P93 = $P90."push"($P92)
.annotate "line", 35
    .return ($P93)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "termish"  :subid("19_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_110
.annotate "line", 45
    .const 'Sub' $P121 = "20_1256225882.94197" 
    capture_lex $P121
    new $P109, 'ExceptionHandler'
    set_addr $P109, control_108
    $P109."handle_types"(58)
    push_eh $P109
    .lex "self", self
    .lex "$/", param_110
.annotate "line", 46
    get_hll_global $P111, ["PAST"], "Regex"
    find_lex $P112, "$/"
    unless_null $P112, vivify_147
    new $P112, "Undef"
  vivify_147:
    $P113 = $P111."new"("concat" :named("pasttype"), $P112 :named("node"))
    .lex "$past", $P113
.annotate "line", 47
    new $P114, "Integer"
    assign $P114, 0
    .lex "$lastlit", $P114
.annotate "line", 48
    find_lex $P116, "$/"
    set $P117, $P116["noun"]
    unless_null $P117, vivify_148
    new $P117, "Undef"
  vivify_148:
    defined $I118, $P117
    unless $I118, for_undef_149
    iter $P115, $P117
    new $P162, 'ExceptionHandler'
    set_addr $P162, loop161_handler
    $P162."handle_types"(65, 67, 66)
    push_eh $P162
  loop161_test:
    unless $P115, loop161_done
    shift $P119, $P115
  loop161_redo:
    .const 'Sub' $P121 = "20_1256225882.94197" 
    capture_lex $P121
    $P121($P119)
  loop161_next:
    goto loop161_test
  loop161_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P163, exception, 'type'
    eq $P163, 65, loop161_next
    eq $P163, 67, loop161_redo
  loop161_done:
    pop_eh 
  for_undef_149:
    find_lex $P164, "$/"
.annotate "line", 59
    find_lex $P165, "$past"
    unless_null $P165, vivify_163
    new $P165, "Undef"
  vivify_163:
    $P166 = $P164."!make"($P165)
.annotate "line", 45
    .return ($P166)
  control_108:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P167, exception, "payload"
    .return ($P167)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block120"  :anon :subid("20_1256225882.94197") :outer("19_1256225882.94197")
    .param pmc param_122
.annotate "line", 48
    .const 'Sub' $P150 = "23_1256225882.94197" 
    capture_lex $P150
    .const 'Sub' $P141 = "22_1256225882.94197" 
    capture_lex $P141
    .const 'Sub' $P130 = "21_1256225882.94197" 
    capture_lex $P130
    .lex "$_", param_122
.annotate "line", 49
    find_lex $P123, "$_"
    unless_null $P123, vivify_150
    new $P123, "Undef"
  vivify_150:
    $P124 = $P123."ast"()
    .lex "$ast", $P124
.annotate "line", 50
    find_lex $P127, "$ast"
    unless_null $P127, vivify_151
    new $P127, "Undef"
  vivify_151:
    isfalse $I128, $P127
    if $I128, if_126
.annotate "line", 51
    find_lex $P136, "$lastlit"
    unless_null $P136, vivify_152
    new $P136, "Undef"
  vivify_152:
    if $P136, if_135
    set $P134, $P136
    goto if_135_end
  if_135:
    find_lex $P137, "$ast"
    unless_null $P137, vivify_153
    new $P137, "Undef"
  vivify_153:
    $S138 = $P137."pasttype"()
    iseq $I139, $S138, "literal"
    new $P134, 'Integer'
    set $P134, $I139
  if_135_end:
    if $P134, if_133
.annotate "line", 54
    .const 'Sub' $P150 = "23_1256225882.94197" 
    capture_lex $P150
    $P160 = $P150()
    set $P132, $P160
.annotate "line", 51
    goto if_133_end
  if_133:
    .const 'Sub' $P141 = "22_1256225882.94197" 
    capture_lex $P141
    $P148 = $P141()
    set $P132, $P148
  if_133_end:
.annotate "line", 50
    set $P125, $P132
    goto if_126_end
  if_126:
    .const 'Sub' $P130 = "21_1256225882.94197" 
    capture_lex $P130
    $P131 = $P130()
    set $P125, $P131
  if_126_end:
.annotate "line", 48
    .return ($P125)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block149"  :anon :subid("23_1256225882.94197") :outer("20_1256225882.94197")
.annotate "line", 55
    find_lex $P151, "$past"
    unless_null $P151, vivify_154
    new $P151, "Undef"
  vivify_154:
    find_lex $P152, "$ast"
    unless_null $P152, vivify_155
    new $P152, "Undef"
  vivify_155:
    $P151."push"($P152)
.annotate "line", 56
    find_lex $P155, "$ast"
    unless_null $P155, vivify_156
    new $P155, "Undef"
  vivify_156:
    $S156 = $P155."pasttype"()
    iseq $I157, $S156, "literal"
    if $I157, if_154
    new $P159, "Integer"
    assign $P159, 0
    set $P153, $P159
    goto if_154_end
  if_154:
    find_lex $P158, "$ast"
    unless_null $P158, vivify_157
    new $P158, "Undef"
  vivify_157:
    set $P153, $P158
  if_154_end:
    store_lex "$lastlit", $P153
.annotate "line", 54
    .return ($P153)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block140"  :anon :subid("22_1256225882.94197") :outer("20_1256225882.94197")
.annotate "line", 52
    find_lex $P142, "$lastlit"
    unless_null $P142, vivify_158
    new $P142, "ResizablePMCArray"
  vivify_158:
    set $P143, $P142[0]
    unless_null $P143, vivify_159
    new $P143, "Undef"
  vivify_159:
    find_lex $P144, "$ast"
    unless_null $P144, vivify_160
    new $P144, "ResizablePMCArray"
  vivify_160:
    set $P145, $P144[0]
    unless_null $P145, vivify_161
    new $P145, "Undef"
  vivify_161:
    concat $P146, $P143, $P145
    find_lex $P147, "$lastlit"
    unless_null $P147, vivify_162
    new $P147, "ResizablePMCArray"
    store_lex "$lastlit", $P147
  vivify_162:
    set $P147[0], $P146
.annotate "line", 51
    .return ($P146)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block129"  :anon :subid("21_1256225882.94197") :outer("20_1256225882.94197")
.annotate "line", 50
    .return ()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("24_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_171
.annotate "line", 62
    .const 'Sub' $P218 = "28_1256225882.94197" 
    capture_lex $P218
    .const 'Sub' $P199 = "27_1256225882.94197" 
    capture_lex $P199
    .const 'Sub' $P179 = "25_1256225882.94197" 
    capture_lex $P179
    new $P170, 'ExceptionHandler'
    set_addr $P170, control_169
    $P170."handle_types"(58)
    push_eh $P170
    .lex "self", self
    .lex "$/", param_171
.annotate "line", 63
    find_lex $P172, "$/"
    set $P173, $P172["atom"]
    unless_null $P173, vivify_164
    new $P173, "Undef"
  vivify_164:
    $P174 = $P173."ast"()
    .lex "$past", $P174
.annotate "line", 64
    find_lex $P176, "$/"
    set $P177, $P176["quantifier"]
    unless_null $P177, vivify_165
    new $P177, "Undef"
  vivify_165:
    if $P177, if_175
.annotate "line", 70
    find_lex $P195, "$/"
    set $P196, $P195["backmod"]
    unless_null $P196, vivify_166
    new $P196, "ResizablePMCArray"
  vivify_166:
    set $P197, $P196[0]
    unless_null $P197, vivify_167
    new $P197, "Undef"
  vivify_167:
    unless $P197, if_194_end
    .const 'Sub' $P199 = "27_1256225882.94197" 
    capture_lex $P199
    $P199()
  if_194_end:
.annotate "line", 64
    goto if_175_end
  if_175:
    .const 'Sub' $P179 = "25_1256225882.94197" 
    capture_lex $P179
    $P179()
  if_175_end:
.annotate "line", 71
    find_lex $P210, "$past"
    unless_null $P210, vivify_178
    new $P210, "Undef"
  vivify_178:
    if $P210, if_209
    set $P208, $P210
    goto if_209_end
  if_209:
    find_lex $P211, "$past"
    unless_null $P211, vivify_179
    new $P211, "Undef"
  vivify_179:
    $P212 = $P211."backtrack"()
    isfalse $I213, $P212
    new $P208, 'Integer'
    set $P208, $I213
  if_209_end:
    if $P208, if_207
    set $P206, $P208
    goto if_207_end
  if_207:
    get_global $P214, "@MODIFIERS"
    unless_null $P214, vivify_180
    new $P214, "ResizablePMCArray"
  vivify_180:
    set $P215, $P214[0]
    unless_null $P215, vivify_181
    new $P215, "Hash"
  vivify_181:
    set $P216, $P215["r"]
    unless_null $P216, vivify_182
    new $P216, "Undef"
  vivify_182:
    set $P206, $P216
  if_207_end:
    unless $P206, if_205_end
    .const 'Sub' $P218 = "28_1256225882.94197" 
    capture_lex $P218
    $P218()
  if_205_end:
    find_lex $P221, "$/"
.annotate "line", 74
    find_lex $P222, "$past"
    unless_null $P222, vivify_184
    new $P222, "Undef"
  vivify_184:
    $P223 = $P221."!make"($P222)
.annotate "line", 62
    .return ($P223)
  control_169:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P224, exception, "payload"
    .return ($P224)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block198"  :anon :subid("27_1256225882.94197") :outer("24_1256225882.94197")
.annotate "line", 70
    find_lex $P200, "$past"
    unless_null $P200, vivify_168
    new $P200, "Undef"
  vivify_168:
    find_lex $P201, "$/"
    set $P202, $P201["backmod"]
    unless_null $P202, vivify_169
    new $P202, "ResizablePMCArray"
  vivify_169:
    set $P203, $P202[0]
    unless_null $P203, vivify_170
    new $P203, "Undef"
  vivify_170:
    $P204 = "backmod"($P200, $P203)
    .return ($P204)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block178"  :anon :subid("25_1256225882.94197") :outer("24_1256225882.94197")
.annotate "line", 64
    .const 'Sub' $P184 = "26_1256225882.94197" 
    capture_lex $P184
.annotate "line", 65
    find_lex $P181, "$past"
    unless_null $P181, vivify_171
    new $P181, "Undef"
  vivify_171:
    isfalse $I182, $P181
    unless $I182, if_180_end
    .const 'Sub' $P184 = "26_1256225882.94197" 
    capture_lex $P184
    $P184()
  if_180_end:
.annotate "line", 66
    find_lex $P187, "$/"
    set $P188, $P187["quantifier"]
    unless_null $P188, vivify_173
    new $P188, "ResizablePMCArray"
  vivify_173:
    set $P189, $P188[0]
    unless_null $P189, vivify_174
    new $P189, "Undef"
  vivify_174:
    $P190 = $P189."ast"()
    .lex "$qast", $P190
.annotate "line", 67
    find_lex $P191, "$qast"
    unless_null $P191, vivify_175
    new $P191, "Undef"
  vivify_175:
    find_lex $P192, "$past"
    unless_null $P192, vivify_176
    new $P192, "Undef"
  vivify_176:
    $P191."unshift"($P192)
.annotate "line", 68
    find_lex $P193, "$qast"
    unless_null $P193, vivify_177
    new $P193, "Undef"
  vivify_177:
    store_lex "$past", $P193
.annotate "line", 64
    .return ($P193)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block183"  :anon :subid("26_1256225882.94197") :outer("25_1256225882.94197")
.annotate "line", 65
    find_lex $P185, "$/"
    unless_null $P185, vivify_172
    new $P185, "Undef"
  vivify_172:
    $P186 = $P185."panic"("Can't quantify zero-width atom")
    .return ($P186)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block217"  :anon :subid("28_1256225882.94197") :outer("24_1256225882.94197")
.annotate "line", 72
    find_lex $P219, "$past"
    unless_null $P219, vivify_183
    new $P219, "Undef"
  vivify_183:
    $P220 = $P219."backtrack"("r")
.annotate "line", 71
    .return ($P220)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("29_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_228
.annotate "line", 77
    .const 'Sub' $P239 = "31_1256225882.94197" 
    capture_lex $P239
    .const 'Sub' $P234 = "30_1256225882.94197" 
    capture_lex $P234
    new $P227, 'ExceptionHandler'
    set_addr $P227, control_226
    $P227."handle_types"(58)
    push_eh $P227
    .lex "self", self
    .lex "$/", param_228
.annotate "line", 78
    new $P229, "Undef"
    .lex "$past", $P229
.annotate "line", 79
    find_lex $P231, "$/"
    set $P232, $P231["metachar"]
    unless_null $P232, vivify_185
    new $P232, "Undef"
  vivify_185:
    if $P232, if_230
.annotate "line", 80
    .const 'Sub' $P239 = "31_1256225882.94197" 
    capture_lex $P239
    $P239()
    goto if_230_end
  if_230:
.annotate "line", 79
    .const 'Sub' $P234 = "30_1256225882.94197" 
    capture_lex $P234
    $P234()
  if_230_end:
    find_lex $P255, "$/"
.annotate "line", 84
    find_lex $P256, "$past"
    unless_null $P256, vivify_193
    new $P256, "Undef"
  vivify_193:
    $P257 = $P255."!make"($P256)
.annotate "line", 77
    .return ($P257)
  control_226:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P258, exception, "payload"
    .return ($P258)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block238"  :anon :subid("31_1256225882.94197") :outer("29_1256225882.94197")
.annotate "line", 80
    .const 'Sub' $P251 = "32_1256225882.94197" 
    capture_lex $P251
.annotate "line", 81
    get_hll_global $P240, ["PAST"], "Regex"
    find_lex $P241, "$/"
    unless_null $P241, vivify_186
    new $P241, "Undef"
  vivify_186:
    set $S242, $P241
    find_lex $P243, "$/"
    unless_null $P243, vivify_187
    new $P243, "Undef"
  vivify_187:
    $P244 = $P240."new"($S242, "literal" :named("pasttype"), $P243 :named("node"))
    store_lex "$past", $P244
.annotate "line", 82
    get_global $P247, "@MODIFIERS"
    unless_null $P247, vivify_188
    new $P247, "ResizablePMCArray"
  vivify_188:
    set $P248, $P247[0]
    unless_null $P248, vivify_189
    new $P248, "Hash"
  vivify_189:
    set $P249, $P248["i"]
    unless_null $P249, vivify_190
    new $P249, "Undef"
  vivify_190:
    if $P249, if_246
    set $P245, $P249
    goto if_246_end
  if_246:
    .const 'Sub' $P251 = "32_1256225882.94197" 
    capture_lex $P251
    $P254 = $P251()
    set $P245, $P254
  if_246_end:
.annotate "line", 80
    .return ($P245)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block250"  :anon :subid("32_1256225882.94197") :outer("31_1256225882.94197")
.annotate "line", 82
    find_lex $P252, "$past"
    unless_null $P252, vivify_191
    new $P252, "Undef"
  vivify_191:
    $P253 = $P252."subtype"("ignorecase")
    .return ($P253)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block233"  :anon :subid("30_1256225882.94197") :outer("29_1256225882.94197")
.annotate "line", 79
    find_lex $P235, "$/"
    set $P236, $P235["metachar"]
    unless_null $P236, vivify_192
    new $P236, "Undef"
  vivify_192:
    $P237 = $P236."ast"()
    store_lex "$past", $P237
    .return ($P237)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("33_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_262
.annotate "line", 87
    new $P261, 'ExceptionHandler'
    set_addr $P261, control_260
    $P261."handle_types"(58)
    push_eh $P261
    .lex "self", self
    .lex "$/", param_262
.annotate "line", 88
    get_hll_global $P263, ["PAST"], "Regex"
    find_lex $P264, "$/"
    unless_null $P264, vivify_194
    new $P264, "Undef"
  vivify_194:
    $P265 = $P263."new"("quant" :named("pasttype"), $P264 :named("node"))
    .lex "$past", $P265
    find_lex $P266, "$/"
.annotate "line", 89
    find_lex $P267, "$past"
    unless_null $P267, vivify_195
    new $P267, "Undef"
  vivify_195:
    find_lex $P268, "$/"
    set $P269, $P268["backmod"]
    unless_null $P269, vivify_196
    new $P269, "Undef"
  vivify_196:
    $P270 = "backmod"($P267, $P269)
    $P271 = $P266."!make"($P270)
.annotate "line", 87
    .return ($P271)
  control_260:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P272, exception, "payload"
    .return ($P272)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("34_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_276
.annotate "line", 92
    new $P275, 'ExceptionHandler'
    set_addr $P275, control_274
    $P275."handle_types"(58)
    push_eh $P275
    .lex "self", self
    .lex "$/", param_276
.annotate "line", 93
    get_hll_global $P277, ["PAST"], "Regex"
    find_lex $P278, "$/"
    unless_null $P278, vivify_197
    new $P278, "Undef"
  vivify_197:
    $P279 = $P277."new"("quant" :named("pasttype"), 1 :named("min"), $P278 :named("node"))
    .lex "$past", $P279
    find_lex $P280, "$/"
.annotate "line", 94
    find_lex $P281, "$past"
    unless_null $P281, vivify_198
    new $P281, "Undef"
  vivify_198:
    find_lex $P282, "$/"
    set $P283, $P282["backmod"]
    unless_null $P283, vivify_199
    new $P283, "Undef"
  vivify_199:
    $P284 = "backmod"($P281, $P283)
    $P285 = $P280."!make"($P284)
.annotate "line", 92
    .return ($P285)
  control_274:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P286, exception, "payload"
    .return ($P286)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("35_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_290
.annotate "line", 97
    new $P289, 'ExceptionHandler'
    set_addr $P289, control_288
    $P289."handle_types"(58)
    push_eh $P289
    .lex "self", self
    .lex "$/", param_290
.annotate "line", 98
    get_hll_global $P291, ["PAST"], "Regex"
    find_lex $P292, "$/"
    unless_null $P292, vivify_200
    new $P292, "Undef"
  vivify_200:
    $P293 = $P291."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P292 :named("node"))
    .lex "$past", $P293
    find_lex $P294, "$/"
.annotate "line", 99
    find_lex $P295, "$past"
    unless_null $P295, vivify_201
    new $P295, "Undef"
  vivify_201:
    find_lex $P296, "$/"
    set $P297, $P296["backmod"]
    unless_null $P297, vivify_202
    new $P297, "Undef"
  vivify_202:
    $P298 = "backmod"($P295, $P297)
    $P294."!make"($P298)
.annotate "line", 98
    find_lex $P299, "$/"
.annotate "line", 100
    find_lex $P300, "$past"
    unless_null $P300, vivify_203
    new $P300, "Undef"
  vivify_203:
    $P301 = $P299."!make"($P300)
.annotate "line", 97
    .return ($P301)
  control_288:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P302, exception, "payload"
    .return ($P302)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("36_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_306
.annotate "line", 103
    .const 'Sub' $P320 = "38_1256225882.94197" 
    capture_lex $P320
    .const 'Sub' $P312 = "37_1256225882.94197" 
    capture_lex $P312
    new $P305, 'ExceptionHandler'
    set_addr $P305, control_304
    $P305."handle_types"(58)
    push_eh $P305
    .lex "self", self
    .lex "$/", param_306
.annotate "line", 104
    new $P307, "Undef"
    .lex "$past", $P307
.annotate "line", 105
    find_lex $P309, "$/"
    set $P310, $P309["quantified_atom"]
    unless_null $P310, vivify_204
    new $P310, "Undef"
  vivify_204:
    if $P310, if_308
.annotate "line", 109
    .const 'Sub' $P320 = "38_1256225882.94197" 
    capture_lex $P320
    $P320()
    goto if_308_end
  if_308:
.annotate "line", 105
    .const 'Sub' $P312 = "37_1256225882.94197" 
    capture_lex $P312
    $P312()
  if_308_end:
    find_lex $P356, "$/"
.annotate "line", 114
    find_lex $P357, "$past"
    unless_null $P357, vivify_217
    new $P357, "Undef"
  vivify_217:
    find_lex $P358, "$/"
    set $P359, $P358["backmod"]
    unless_null $P359, vivify_218
    new $P359, "Undef"
  vivify_218:
    $P360 = "backmod"($P357, $P359)
    $P361 = $P356."!make"($P360)
.annotate "line", 103
    .return ($P361)
  control_304:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P362, exception, "payload"
    .return ($P362)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block319"  :anon :subid("38_1256225882.94197") :outer("36_1256225882.94197")
.annotate "line", 109
    .const 'Sub' $P348 = "40_1256225882.94197" 
    capture_lex $P348
    .const 'Sub' $P333 = "39_1256225882.94197" 
    capture_lex $P333
.annotate "line", 110
    get_hll_global $P321, ["PAST"], "Regex"
    find_lex $P322, "$/"
    set $P323, $P322["min"]
    unless_null $P323, vivify_205
    new $P323, "Undef"
  vivify_205:
    set $N324, $P323
    find_lex $P325, "$/"
    unless_null $P325, vivify_206
    new $P325, "Undef"
  vivify_206:
    $P326 = $P321."new"("quant" :named("pasttype"), $N324 :named("min"), $P325 :named("node"))
    store_lex "$past", $P326
.annotate "line", 111
    find_lex $P329, "$/"
    set $P330, $P329["max"]
    unless_null $P330, vivify_207
    new $P330, "Undef"
  vivify_207:
    isfalse $I331, $P330
    if $I331, if_328
.annotate "line", 112
    find_lex $P342, "$/"
    set $P343, $P342["max"]
    unless_null $P343, vivify_208
    new $P343, "ResizablePMCArray"
  vivify_208:
    set $P344, $P343[0]
    unless_null $P344, vivify_209
    new $P344, "Undef"
  vivify_209:
    set $S345, $P344
    isne $I346, $S345, "*"
    if $I346, if_341
    new $P340, 'Integer'
    set $P340, $I346
    goto if_341_end
  if_341:
    .const 'Sub' $P348 = "40_1256225882.94197" 
    capture_lex $P348
    $P355 = $P348()
    set $P340, $P355
  if_341_end:
.annotate "line", 111
    set $P327, $P340
    goto if_328_end
  if_328:
    .const 'Sub' $P333 = "39_1256225882.94197" 
    capture_lex $P333
    $P339 = $P333()
    set $P327, $P339
  if_328_end:
.annotate "line", 109
    .return ($P327)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block347"  :anon :subid("40_1256225882.94197") :outer("38_1256225882.94197")
.annotate "line", 112
    find_lex $P349, "$past"
    unless_null $P349, vivify_210
    new $P349, "Undef"
  vivify_210:
    find_lex $P350, "$/"
    set $P351, $P350["max"]
    unless_null $P351, vivify_211
    new $P351, "ResizablePMCArray"
  vivify_211:
    set $P352, $P351[0]
    unless_null $P352, vivify_212
    new $P352, "Undef"
  vivify_212:
    set $N353, $P352
    $P354 = $P349."max"($N353)
    .return ($P354)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block332"  :anon :subid("39_1256225882.94197") :outer("38_1256225882.94197")
.annotate "line", 111
    find_lex $P334, "$past"
    unless_null $P334, vivify_213
    new $P334, "Undef"
  vivify_213:
    find_lex $P335, "$/"
    set $P336, $P335["min"]
    unless_null $P336, vivify_214
    new $P336, "Undef"
  vivify_214:
    set $N337, $P336
    $P338 = $P334."max"($N337)
    .return ($P338)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block311"  :anon :subid("37_1256225882.94197") :outer("36_1256225882.94197")
.annotate "line", 106
    get_hll_global $P313, ["PAST"], "Regex"
.annotate "line", 107
    find_lex $P314, "$/"
    set $P315, $P314["quantified_atom"]
    unless_null $P315, vivify_215
    new $P315, "Undef"
  vivify_215:
    $P316 = $P315."ast"()
    find_lex $P317, "$/"
    unless_null $P317, vivify_216
    new $P317, "Undef"
  vivify_216:
    $P318 = $P313."new"("quant" :named("pasttype"), 1 :named("min"), $P316 :named("sep"), $P317 :named("node"))
.annotate "line", 106
    store_lex "$past", $P318
.annotate "line", 105
    .return ($P318)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("41_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_366
.annotate "line", 117
    new $P365, 'ExceptionHandler'
    set_addr $P365, control_364
    $P365."handle_types"(58)
    push_eh $P365
    .lex "self", self
    .lex "$/", param_366
.annotate "line", 118
    get_global $P369, "@MODIFIERS"
    unless_null $P369, vivify_219
    new $P369, "ResizablePMCArray"
  vivify_219:
    set $P370, $P369[0]
    unless_null $P370, vivify_220
    new $P370, "Hash"
  vivify_220:
    set $P371, $P370["s"]
    unless_null $P371, vivify_221
    new $P371, "Undef"
  vivify_221:
    if $P371, if_368
.annotate "line", 121
    new $P375, "Integer"
    assign $P375, 0
    set $P367, $P375
.annotate "line", 118
    goto if_368_end
  if_368:
.annotate "line", 119
    get_hll_global $P372, ["PAST"], "Regex"
.annotate "line", 120
    find_lex $P373, "$/"
    unless_null $P373, vivify_222
    new $P373, "Undef"
  vivify_222:
    $P374 = $P372."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P373 :named("node"))
.annotate "line", 119
    set $P367, $P374
  if_368_end:
    .lex "$past", $P367
.annotate "line", 118
    find_lex $P376, "$/"
.annotate "line", 122
    find_lex $P377, "$past"
    unless_null $P377, vivify_223
    new $P377, "Undef"
  vivify_223:
    $P378 = $P376."!make"($P377)
.annotate "line", 117
    .return ($P378)
  control_364:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P379, exception, "payload"
    .return ($P379)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("42_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_383
.annotate "line", 126
    new $P382, 'ExceptionHandler'
    set_addr $P382, control_381
    $P382."handle_types"(58)
    push_eh $P382
    .lex "self", self
    .lex "$/", param_383
.annotate "line", 127
    find_lex $P384, "$/"
    find_lex $P385, "$/"
    set $P386, $P385["nibbler"]
    unless_null $P386, vivify_224
    new $P386, "Undef"
  vivify_224:
    $P387 = $P386."ast"()
    $P388 = $P384."!make"($P387)
.annotate "line", 126
    .return ($P388)
  control_381:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P389, exception, "payload"
    .return ($P389)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("43_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_393
.annotate "line", 130
    new $P392, 'ExceptionHandler'
    set_addr $P392, control_391
    $P392."handle_types"(58)
    push_eh $P392
    .lex "self", self
    .lex "$/", param_393
.annotate "line", 131
    find_lex $P394, "$/"
    set $P395, $P394["nibbler"]
    unless_null $P395, vivify_225
    new $P395, "Undef"
  vivify_225:
    $P396 = $P395."ast"()
    $P397 = "buildsub"($P396)
    .lex "$subpast", $P397
.annotate "line", 132
    get_hll_global $P398, ["PAST"], "Regex"
    find_lex $P399, "$subpast"
    unless_null $P399, vivify_226
    new $P399, "Undef"
  vivify_226:
.annotate "line", 133
    find_lex $P400, "$/"
    unless_null $P400, vivify_227
    new $P400, "Undef"
  vivify_227:
    $P401 = $P398."new"($P399, "subrule" :named("pasttype"), "capture" :named("subtype"), $P400 :named("node"))
.annotate "line", 132
    .lex "$past", $P401
    find_lex $P402, "$/"
.annotate "line", 134
    find_lex $P403, "$past"
    unless_null $P403, vivify_228
    new $P403, "Undef"
  vivify_228:
    $P404 = $P402."!make"($P403)
.annotate "line", 130
    .return ($P404)
  control_391:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P405, exception, "payload"
    .return ($P405)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("44_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_409
.annotate "line", 137
    new $P408, 'ExceptionHandler'
    set_addr $P408, control_407
    $P408."handle_types"(58)
    push_eh $P408
    .lex "self", self
    .lex "$/", param_409
.annotate "line", 138
    get_hll_global $P410, ["PAST"], "Regex"
    find_lex $P411, "$/"
    set $P412, $P411["quote"]
    unless_null $P412, vivify_229
    new $P412, "Hash"
  vivify_229:
    set $P413, $P412["val"]
    unless_null $P413, vivify_230
    new $P413, "Undef"
  vivify_230:
    set $S414, $P413
    find_lex $P415, "$/"
    unless_null $P415, vivify_231
    new $P415, "Undef"
  vivify_231:
    $P416 = $P410."new"($S414, "literal" :named("pasttype"), $P415 :named("node"))
    .lex "$past", $P416
    find_lex $P417, "$/"
.annotate "line", 139
    find_lex $P418, "$past"
    unless_null $P418, vivify_232
    new $P418, "Undef"
  vivify_232:
    $P419 = $P417."!make"($P418)
.annotate "line", 137
    .return ($P419)
  control_407:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P420, exception, "payload"
    .return ($P420)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("45_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_424
.annotate "line", 142
    new $P423, 'ExceptionHandler'
    set_addr $P423, control_422
    $P423."handle_types"(58)
    push_eh $P423
    .lex "self", self
    .lex "$/", param_424
.annotate "line", 143
    get_hll_global $P425, ["PAST"], "Regex"
    find_lex $P426, "$/"
    unless_null $P426, vivify_233
    new $P426, "Undef"
  vivify_233:
    $P427 = $P425."new"("charclass" :named("pasttype"), "." :named("subtype"), $P426 :named("node"))
    .lex "$past", $P427
    find_lex $P428, "$/"
.annotate "line", 144
    find_lex $P429, "$past"
    unless_null $P429, vivify_234
    new $P429, "Undef"
  vivify_234:
    $P430 = $P428."!make"($P429)
.annotate "line", 142
    .return ($P430)
  control_422:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P431, exception, "payload"
    .return ($P431)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("46_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_435
.annotate "line", 147
    new $P434, 'ExceptionHandler'
    set_addr $P434, control_433
    $P434."handle_types"(58)
    push_eh $P434
    .lex "self", self
    .lex "$/", param_435
.annotate "line", 148
    get_hll_global $P436, ["PAST"], "Regex"
    find_lex $P437, "$/"
    unless_null $P437, vivify_235
    new $P437, "Undef"
  vivify_235:
    $P438 = $P436."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P437 :named("node"))
    .lex "$past", $P438
    find_lex $P439, "$/"
.annotate "line", 149
    find_lex $P440, "$past"
    unless_null $P440, vivify_236
    new $P440, "Undef"
  vivify_236:
    $P441 = $P439."!make"($P440)
.annotate "line", 147
    .return ($P441)
  control_433:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P442, exception, "payload"
    .return ($P442)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("47_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_446
.annotate "line", 152
    new $P445, 'ExceptionHandler'
    set_addr $P445, control_444
    $P445."handle_types"(58)
    push_eh $P445
    .lex "self", self
    .lex "$/", param_446
.annotate "line", 153
    get_hll_global $P447, ["PAST"], "Regex"
    find_lex $P448, "$/"
    unless_null $P448, vivify_237
    new $P448, "Undef"
  vivify_237:
    $P449 = $P447."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P448 :named("node"))
    .lex "$past", $P449
    find_lex $P450, "$/"
.annotate "line", 154
    find_lex $P451, "$past"
    unless_null $P451, vivify_238
    new $P451, "Undef"
  vivify_238:
    $P452 = $P450."!make"($P451)
.annotate "line", 152
    .return ($P452)
  control_444:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P453, exception, "payload"
    .return ($P453)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("48_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_457
.annotate "line", 157
    new $P456, 'ExceptionHandler'
    set_addr $P456, control_455
    $P456."handle_types"(58)
    push_eh $P456
    .lex "self", self
    .lex "$/", param_457
.annotate "line", 158
    get_hll_global $P458, ["PAST"], "Regex"
    find_lex $P459, "$/"
    unless_null $P459, vivify_239
    new $P459, "Undef"
  vivify_239:
    $P460 = $P458."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P459 :named("node"))
    .lex "$past", $P460
    find_lex $P461, "$/"
.annotate "line", 159
    find_lex $P462, "$past"
    unless_null $P462, vivify_240
    new $P462, "Undef"
  vivify_240:
    $P463 = $P461."!make"($P462)
.annotate "line", 157
    .return ($P463)
  control_455:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P464, exception, "payload"
    .return ($P464)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("49_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_468
.annotate "line", 162
    new $P467, 'ExceptionHandler'
    set_addr $P467, control_466
    $P467."handle_types"(58)
    push_eh $P467
    .lex "self", self
    .lex "$/", param_468
.annotate "line", 163
    get_hll_global $P469, ["PAST"], "Regex"
    find_lex $P470, "$/"
    unless_null $P470, vivify_241
    new $P470, "Undef"
  vivify_241:
    $P471 = $P469."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P470 :named("node"))
    .lex "$past", $P471
    find_lex $P472, "$/"
.annotate "line", 164
    find_lex $P473, "$past"
    unless_null $P473, vivify_242
    new $P473, "Undef"
  vivify_242:
    $P474 = $P472."!make"($P473)
.annotate "line", 162
    .return ($P474)
  control_466:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P475, exception, "payload"
    .return ($P475)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("50_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_479
.annotate "line", 167
    new $P478, 'ExceptionHandler'
    set_addr $P478, control_477
    $P478."handle_types"(58)
    push_eh $P478
    .lex "self", self
    .lex "$/", param_479
.annotate "line", 168
    get_hll_global $P480, ["PAST"], "Regex"
    find_lex $P481, "$/"
    unless_null $P481, vivify_243
    new $P481, "Undef"
  vivify_243:
    $P482 = $P480."new"("cut" :named("pasttype"), $P481 :named("node"))
    .lex "$past", $P482
    find_lex $P483, "$/"
.annotate "line", 169
    find_lex $P484, "$past"
    unless_null $P484, vivify_244
    new $P484, "Undef"
  vivify_244:
    $P485 = $P483."!make"($P484)
.annotate "line", 167
    .return ($P485)
  control_477:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P486, exception, "payload"
    .return ($P486)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("51_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_490
.annotate "line", 172
    new $P489, 'ExceptionHandler'
    set_addr $P489, control_488
    $P489."handle_types"(58)
    push_eh $P489
    .lex "self", self
    .lex "$/", param_490
.annotate "line", 173
    get_hll_global $P491, ["PAST"], "Regex"
    find_lex $P492, "$/"
    unless_null $P492, vivify_245
    new $P492, "Undef"
  vivify_245:
    $P493 = $P491."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P492 :named("node"))
    .lex "$past", $P493
    find_lex $P494, "$/"
.annotate "line", 174
    find_lex $P495, "$past"
    unless_null $P495, vivify_246
    new $P495, "Undef"
  vivify_246:
    $P496 = $P494."!make"($P495)
.annotate "line", 172
    .return ($P496)
  control_488:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P497, exception, "payload"
    .return ($P497)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("52_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_501
.annotate "line", 177
    new $P500, 'ExceptionHandler'
    set_addr $P500, control_499
    $P500."handle_types"(58)
    push_eh $P500
    .lex "self", self
    .lex "$/", param_501
.annotate "line", 178
    get_hll_global $P502, ["PAST"], "Regex"
    find_lex $P503, "$/"
    unless_null $P503, vivify_247
    new $P503, "Undef"
  vivify_247:
    $P504 = $P502."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P503 :named("node"))
    .lex "$past", $P504
    find_lex $P505, "$/"
.annotate "line", 179
    find_lex $P506, "$past"
    unless_null $P506, vivify_248
    new $P506, "Undef"
  vivify_248:
    $P507 = $P505."!make"($P506)
.annotate "line", 177
    .return ($P507)
  control_499:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P508, exception, "payload"
    .return ($P508)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("53_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_512
.annotate "line", 182
    new $P511, 'ExceptionHandler'
    set_addr $P511, control_510
    $P511."handle_types"(58)
    push_eh $P511
    .lex "self", self
    .lex "$/", param_512
.annotate "line", 183
    find_lex $P513, "$/"
    find_lex $P514, "$/"
    set $P515, $P514["backslash"]
    unless_null $P515, vivify_249
    new $P515, "Undef"
  vivify_249:
    $P516 = $P515."ast"()
    $P517 = $P513."!make"($P516)
.annotate "line", 182
    .return ($P517)
  control_510:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P518, exception, "payload"
    .return ($P518)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("54_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_522
.annotate "line", 186
    new $P521, 'ExceptionHandler'
    set_addr $P521, control_520
    $P521."handle_types"(58)
    push_eh $P521
    .lex "self", self
    .lex "$/", param_522
.annotate "line", 187
    find_lex $P523, "$/"
    find_lex $P524, "$/"
    set $P525, $P524["mod_internal"]
    unless_null $P525, vivify_250
    new $P525, "Undef"
  vivify_250:
    $P526 = $P525."ast"()
    $P527 = $P523."!make"($P526)
.annotate "line", 186
    .return ($P527)
  control_520:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P528, exception, "payload"
    .return ($P528)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("55_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_532
.annotate "line", 190
    new $P531, 'ExceptionHandler'
    set_addr $P531, control_530
    $P531."handle_types"(58)
    push_eh $P531
    .lex "self", self
    .lex "$/", param_532
.annotate "line", 191
    find_lex $P533, "$/"
    find_lex $P534, "$/"
    set $P535, $P534["assertion"]
    unless_null $P535, vivify_251
    new $P535, "Undef"
  vivify_251:
    $P536 = $P535."ast"()
    $P537 = $P533."!make"($P536)
.annotate "line", 190
    .return ($P537)
  control_530:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P538, exception, "payload"
    .return ($P538)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("56_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_542
.annotate "line", 194
    new $P541, 'ExceptionHandler'
    set_addr $P541, control_540
    $P541."handle_types"(58)
    push_eh $P541
    .lex "self", self
    .lex "$/", param_542
.annotate "line", 195
    find_lex $P543, "$/"
    get_hll_global $P544, ["PAST"], "Regex"
.annotate "line", 196
    find_lex $P545, "$/"
    set $P546, $P545["EXPR"]
    unless_null $P546, vivify_252
    new $P546, "Undef"
  vivify_252:
    $P547 = $P546."ast"()
.annotate "line", 197
    get_hll_global $P548, ["PAST"], "Regex"
.annotate "line", 198
    find_lex $P549, "$/"
    set $P550, $P549["GOAL"]
    unless_null $P550, vivify_253
    new $P550, "Undef"
  vivify_253:
    $P551 = $P550."ast"()
.annotate "line", 199
    get_hll_global $P552, ["PAST"], "Regex"
    find_lex $P553, "$/"
    set $P554, $P553["GOAL"]
    unless_null $P554, vivify_254
    new $P554, "Undef"
  vivify_254:
    set $S555, $P554
.annotate "line", 200
    $P556 = $P552."new"("FAILGOAL", $S555, "subrule" :named("pasttype"), "method" :named("subtype"))
.annotate "line", 201
    $P557 = $P548."new"($P551, $P556, "alt" :named("pasttype"))
.annotate "line", 203
    $P558 = $P544."new"($P547, $P557, "concat" :named("pasttype"))
.annotate "line", 195
    $P559 = $P543."!make"($P558)
.annotate "line", 194
    .return ($P559)
  control_540:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P560, exception, "payload"
    .return ($P560)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("57_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_564
.annotate "line", 207
    new $P563, 'ExceptionHandler'
    set_addr $P563, control_562
    $P563."handle_types"(58)
    push_eh $P563
    .lex "self", self
    .lex "$/", param_564
.annotate "line", 209
    find_lex $P567, "$/"
    set $P568, $P567["key"]
    unless_null $P568, vivify_255
    new $P568, "Undef"
  vivify_255:
    if $P568, if_566
.annotate "line", 210
    new $P576, "Integer"
    assign $P576, 0
    set $P565, $P576
.annotate "line", 209
    goto if_566_end
  if_566:
    get_hll_global $P569, ["PAST"], "Regex"
    find_lex $P570, "$/"
    set $P571, $P570["key"]
    unless_null $P571, vivify_256
    new $P571, "ResizablePMCArray"
  vivify_256:
    set $P572, $P571[0]
    unless_null $P572, vivify_257
    new $P572, "Undef"
  vivify_257:
    set $S573, $P572
    find_lex $P574, "$/"
    unless_null $P574, vivify_258
    new $P574, "Undef"
  vivify_258:
    $P575 = $P569."new"($S573, "reduce" :named("pasttype"), $P574 :named("node"))
    set $P565, $P575
  if_566_end:
    .lex "$past", $P565
.annotate "line", 208
    find_lex $P577, "$/"
.annotate "line", 211
    find_lex $P578, "$past"
    unless_null $P578, vivify_259
    new $P578, "Undef"
  vivify_259:
    $P579 = $P577."!make"($P578)
.annotate "line", 207
    .return ($P579)
  control_562:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P580, exception, "payload"
    .return ($P580)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("58_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_584
.annotate "line", 214
    .const 'Sub' $P643 = "63_1256225882.94197" 
    capture_lex $P643
    .const 'Sub' $P600 = "59_1256225882.94197" 
    capture_lex $P600
    new $P583, 'ExceptionHandler'
    set_addr $P583, control_582
    $P583."handle_types"(58)
    push_eh $P583
    .lex "self", self
    .lex "$/", param_584
.annotate "line", 215
    new $P585, "Undef"
    .lex "$past", $P585
.annotate "line", 216
    find_lex $P588, "$/"
    set $P589, $P588["pos"]
    unless_null $P589, vivify_260
    new $P589, "Undef"
  vivify_260:
    if $P589, if_587
    find_lex $P593, "$/"
    set $P594, $P593["name"]
    unless_null $P594, vivify_261
    new $P594, "Undef"
  vivify_261:
    set $S595, $P594
    new $P586, 'String'
    set $P586, $S595
    goto if_587_end
  if_587:
    find_lex $P590, "$/"
    set $P591, $P590["pos"]
    unless_null $P591, vivify_262
    new $P591, "Undef"
  vivify_262:
    set $N592, $P591
    new $P586, 'Float'
    set $P586, $N592
  if_587_end:
    .lex "$name", $P586
.annotate "line", 217
    find_lex $P597, "$/"
    set $P598, $P597["quantified_atom"]
    unless_null $P598, vivify_263
    new $P598, "Undef"
  vivify_263:
    if $P598, if_596
.annotate "line", 227
    .const 'Sub' $P643 = "63_1256225882.94197" 
    capture_lex $P643
    $P643()
    goto if_596_end
  if_596:
.annotate "line", 217
    .const 'Sub' $P600 = "59_1256225882.94197" 
    capture_lex $P600
    $P600()
  if_596_end:
    find_lex $P648, "$/"
.annotate "line", 231
    find_lex $P649, "$past"
    unless_null $P649, vivify_280
    new $P649, "Undef"
  vivify_280:
    $P650 = $P648."!make"($P649)
.annotate "line", 214
    .return ($P650)
  control_582:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P651, exception, "payload"
    .return ($P651)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block642"  :anon :subid("63_1256225882.94197") :outer("58_1256225882.94197")
.annotate "line", 228
    get_hll_global $P644, ["PAST"], "Regex"
    find_lex $P645, "$name"
    unless_null $P645, vivify_264
    new $P645, "Undef"
  vivify_264:
.annotate "line", 229
    find_lex $P646, "$/"
    unless_null $P646, vivify_265
    new $P646, "Undef"
  vivify_265:
    $P647 = $P644."new"("!BACKREF", $P645, "subrule" :named("pasttype"), "method" :named("subtype"), $P646 :named("node"))
.annotate "line", 228
    store_lex "$past", $P647
.annotate "line", 227
    .return ($P647)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block599"  :anon :subid("59_1256225882.94197") :outer("58_1256225882.94197")
.annotate "line", 217
    .const 'Sub' $P635 = "62_1256225882.94197" 
    capture_lex $P635
    .const 'Sub' $P629 = "61_1256225882.94197" 
    capture_lex $P629
    .const 'Sub' $P617 = "60_1256225882.94197" 
    capture_lex $P617
.annotate "line", 218
    find_lex $P601, "$/"
    set $P602, $P601["quantified_atom"]
    unless_null $P602, vivify_266
    new $P602, "ResizablePMCArray"
  vivify_266:
    set $P603, $P602[0]
    unless_null $P603, vivify_267
    new $P603, "Undef"
  vivify_267:
    $P604 = $P603."ast"()
    store_lex "$past", $P604
.annotate "line", 219
    find_lex $P609, "$past"
    unless_null $P609, vivify_268
    new $P609, "Undef"
  vivify_268:
    $S610 = $P609."pasttype"()
    iseq $I611, $S610, "quant"
    if $I611, if_608
    new $P607, 'Integer'
    set $P607, $I611
    goto if_608_end
  if_608:
    find_lex $P612, "$past"
    unless_null $P612, vivify_269
    new $P612, "ResizablePMCArray"
  vivify_269:
    set $P613, $P612[0]
    unless_null $P613, vivify_270
    new $P613, "Undef"
  vivify_270:
    $S614 = $P613."pasttype"()
    iseq $I615, $S614, "subrule"
    new $P607, 'Integer'
    set $P607, $I615
  if_608_end:
    if $P607, if_606
.annotate "line", 222
    find_lex $P625, "$past"
    unless_null $P625, vivify_271
    new $P625, "Undef"
  vivify_271:
    $S626 = $P625."pasttype"()
    iseq $I627, $S626, "subrule"
    if $I627, if_624
.annotate "line", 223
    .const 'Sub' $P635 = "62_1256225882.94197" 
    capture_lex $P635
    $P641 = $P635()
    set $P623, $P641
.annotate "line", 222
    goto if_624_end
  if_624:
    .const 'Sub' $P629 = "61_1256225882.94197" 
    capture_lex $P629
    $P633 = $P629()
    set $P623, $P633
  if_624_end:
.annotate "line", 219
    set $P605, $P623
    goto if_606_end
  if_606:
    .const 'Sub' $P617 = "60_1256225882.94197" 
    capture_lex $P617
    $P622 = $P617()
    set $P605, $P622
  if_606_end:
.annotate "line", 217
    .return ($P605)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block634"  :anon :subid("62_1256225882.94197") :outer("59_1256225882.94197")
.annotate "line", 224
    get_hll_global $P636, ["PAST"], "Regex"
    find_lex $P637, "$past"
    unless_null $P637, vivify_272
    new $P637, "Undef"
  vivify_272:
    find_lex $P638, "$name"
    unless_null $P638, vivify_273
    new $P638, "Undef"
  vivify_273:
    find_lex $P639, "$/"
    unless_null $P639, vivify_274
    new $P639, "Undef"
  vivify_274:
    $P640 = $P636."new"($P637, $P638 :named("name"), "subcapture" :named("pasttype"), $P639 :named("node"))
    store_lex "$past", $P640
.annotate "line", 223
    .return ($P640)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block628"  :anon :subid("61_1256225882.94197") :outer("59_1256225882.94197")
.annotate "line", 222
    find_lex $P630, "$past"
    unless_null $P630, vivify_275
    new $P630, "Undef"
  vivify_275:
    find_lex $P631, "$name"
    unless_null $P631, vivify_276
    new $P631, "Undef"
  vivify_276:
    $P632 = "subrule_alias"($P630, $P631)
    .return ($P632)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block616"  :anon :subid("60_1256225882.94197") :outer("59_1256225882.94197")
.annotate "line", 220
    find_lex $P618, "$past"
    unless_null $P618, vivify_277
    new $P618, "ResizablePMCArray"
  vivify_277:
    set $P619, $P618[0]
    unless_null $P619, vivify_278
    new $P619, "Undef"
  vivify_278:
    find_lex $P620, "$name"
    unless_null $P620, vivify_279
    new $P620, "Undef"
  vivify_279:
    $P621 = "subrule_alias"($P619, $P620)
.annotate "line", 219
    .return ($P621)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("64_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_655
.annotate "line", 234
    new $P654, 'ExceptionHandler'
    set_addr $P654, control_653
    $P654."handle_types"(58)
    push_eh $P654
    .lex "self", self
    .lex "$/", param_655
.annotate "line", 235
    find_lex $P658, "$/"
    set $P659, $P658["sym"]
    unless_null $P659, vivify_281
    new $P659, "Undef"
  vivify_281:
    set $S660, $P659
    iseq $I661, $S660, "n"
    if $I661, if_657
    find_lex $P663, "$/"
    set $P664, $P663["sym"]
    unless_null $P664, vivify_282
    new $P664, "Undef"
  vivify_282:
    set $S665, $P664
    new $P656, 'String'
    set $P656, $S665
    goto if_657_end
  if_657:
    new $P662, "String"
    assign $P662, "nl"
    set $P656, $P662
  if_657_end:
    .lex "$subtype", $P656
.annotate "line", 236
    get_hll_global $P666, ["PAST"], "Regex"
    find_lex $P667, "$subtype"
    unless_null $P667, vivify_283
    new $P667, "Undef"
  vivify_283:
    find_lex $P668, "$/"
    unless_null $P668, vivify_284
    new $P668, "Undef"
  vivify_284:
    $P669 = $P666."new"("charclass" :named("pasttype"), $P667 :named("subtype"), $P668 :named("node"))
    .lex "$past", $P669
    find_lex $P670, "$/"
.annotate "line", 237
    find_lex $P671, "$past"
    unless_null $P671, vivify_285
    new $P671, "Undef"
  vivify_285:
    $P672 = $P670."!make"($P671)
.annotate "line", 234
    .return ($P672)
  control_653:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P673, exception, "payload"
    .return ($P673)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("65_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_677
.annotate "line", 240
    new $P676, 'ExceptionHandler'
    set_addr $P676, control_675
    $P676."handle_types"(58)
    push_eh $P676
    .lex "self", self
    .lex "$/", param_677
.annotate "line", 241
    get_hll_global $P678, ["PAST"], "Regex"
.annotate "line", 242
    find_lex $P679, "$/"
    set $P680, $P679["sym"]
    unless_null $P680, vivify_286
    new $P680, "Undef"
  vivify_286:
    set $S681, $P680
    iseq $I682, $S681, "B"
    find_lex $P683, "$/"
    unless_null $P683, vivify_287
    new $P683, "Undef"
  vivify_287:
    $P684 = $P678."new"("\b", "enumcharlist" :named("pasttype"), $I682 :named("negate"), $P683 :named("node"))
.annotate "line", 241
    .lex "$past", $P684
    find_lex $P685, "$/"
.annotate "line", 243
    find_lex $P686, "$past"
    unless_null $P686, vivify_288
    new $P686, "Undef"
  vivify_288:
    $P687 = $P685."!make"($P686)
.annotate "line", 240
    .return ($P687)
  control_675:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P688, exception, "payload"
    .return ($P688)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("66_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_692
.annotate "line", 246
    new $P691, 'ExceptionHandler'
    set_addr $P691, control_690
    $P691."handle_types"(58)
    push_eh $P691
    .lex "self", self
    .lex "$/", param_692
.annotate "line", 247
    get_hll_global $P693, ["PAST"], "Regex"
.annotate "line", 248
    find_lex $P694, "$/"
    set $P695, $P694["sym"]
    unless_null $P695, vivify_289
    new $P695, "Undef"
  vivify_289:
    set $S696, $P695
    iseq $I697, $S696, "E"
    find_lex $P698, "$/"
    unless_null $P698, vivify_290
    new $P698, "Undef"
  vivify_290:
    $P699 = $P693."new"("\e", "enumcharlist" :named("pasttype"), $I697 :named("negate"), $P698 :named("node"))
.annotate "line", 247
    .lex "$past", $P699
    find_lex $P700, "$/"
.annotate "line", 249
    find_lex $P701, "$past"
    unless_null $P701, vivify_291
    new $P701, "Undef"
  vivify_291:
    $P702 = $P700."!make"($P701)
.annotate "line", 246
    .return ($P702)
  control_690:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P703, exception, "payload"
    .return ($P703)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("67_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_707
.annotate "line", 252
    new $P706, 'ExceptionHandler'
    set_addr $P706, control_705
    $P706."handle_types"(58)
    push_eh $P706
    .lex "self", self
    .lex "$/", param_707
.annotate "line", 253
    get_hll_global $P708, ["PAST"], "Regex"
.annotate "line", 254
    find_lex $P709, "$/"
    set $P710, $P709["sym"]
    unless_null $P710, vivify_292
    new $P710, "Undef"
  vivify_292:
    set $S711, $P710
    iseq $I712, $S711, "F"
    find_lex $P713, "$/"
    unless_null $P713, vivify_293
    new $P713, "Undef"
  vivify_293:
    $P714 = $P708."new"("\f", "enumcharlist" :named("pasttype"), $I712 :named("negate"), $P713 :named("node"))
.annotate "line", 253
    .lex "$past", $P714
    find_lex $P715, "$/"
.annotate "line", 255
    find_lex $P716, "$past"
    unless_null $P716, vivify_294
    new $P716, "Undef"
  vivify_294:
    $P717 = $P715."!make"($P716)
.annotate "line", 252
    .return ($P717)
  control_705:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P718, exception, "payload"
    .return ($P718)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("68_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_722
.annotate "line", 258
    new $P721, 'ExceptionHandler'
    set_addr $P721, control_720
    $P721."handle_types"(58)
    push_eh $P721
    .lex "self", self
    .lex "$/", param_722
.annotate "line", 259
    get_hll_global $P723, ["PAST"], "Regex"
.annotate "line", 260
    find_lex $P724, "$/"
    set $P725, $P724["sym"]
    unless_null $P725, vivify_295
    new $P725, "Undef"
  vivify_295:
    set $S726, $P725
    iseq $I727, $S726, "H"
    find_lex $P728, "$/"
    unless_null $P728, vivify_296
    new $P728, "Undef"
  vivify_296:
    $P729 = $P723."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I727 :named("negate"), $P728 :named("node"))
.annotate "line", 259
    .lex "$past", $P729
    find_lex $P730, "$/"
.annotate "line", 261
    find_lex $P731, "$past"
    unless_null $P731, vivify_297
    new $P731, "Undef"
  vivify_297:
    $P732 = $P730."!make"($P731)
.annotate "line", 258
    .return ($P732)
  control_720:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P733, exception, "payload"
    .return ($P733)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("69_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_737
.annotate "line", 264
    new $P736, 'ExceptionHandler'
    set_addr $P736, control_735
    $P736."handle_types"(58)
    push_eh $P736
    .lex "self", self
    .lex "$/", param_737
.annotate "line", 265
    get_hll_global $P738, ["PAST"], "Regex"
.annotate "line", 266
    find_lex $P739, "$/"
    set $P740, $P739["sym"]
    unless_null $P740, vivify_298
    new $P740, "Undef"
  vivify_298:
    set $S741, $P740
    iseq $I742, $S741, "R"
    find_lex $P743, "$/"
    unless_null $P743, vivify_299
    new $P743, "Undef"
  vivify_299:
    $P744 = $P738."new"("\r", "enumcharlist" :named("pasttype"), $I742 :named("negate"), $P743 :named("node"))
.annotate "line", 265
    .lex "$past", $P744
    find_lex $P745, "$/"
.annotate "line", 267
    find_lex $P746, "$past"
    unless_null $P746, vivify_300
    new $P746, "Undef"
  vivify_300:
    $P747 = $P745."!make"($P746)
.annotate "line", 264
    .return ($P747)
  control_735:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P748, exception, "payload"
    .return ($P748)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("70_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_752
.annotate "line", 270
    new $P751, 'ExceptionHandler'
    set_addr $P751, control_750
    $P751."handle_types"(58)
    push_eh $P751
    .lex "self", self
    .lex "$/", param_752
.annotate "line", 271
    get_hll_global $P753, ["PAST"], "Regex"
.annotate "line", 272
    find_lex $P754, "$/"
    set $P755, $P754["sym"]
    unless_null $P755, vivify_301
    new $P755, "Undef"
  vivify_301:
    set $S756, $P755
    iseq $I757, $S756, "T"
    find_lex $P758, "$/"
    unless_null $P758, vivify_302
    new $P758, "Undef"
  vivify_302:
    $P759 = $P753."new"("\t", "enumcharlist" :named("pasttype"), $I757 :named("negate"), $P758 :named("node"))
.annotate "line", 271
    .lex "$past", $P759
    find_lex $P760, "$/"
.annotate "line", 273
    find_lex $P761, "$past"
    unless_null $P761, vivify_303
    new $P761, "Undef"
  vivify_303:
    $P762 = $P760."!make"($P761)
.annotate "line", 270
    .return ($P762)
  control_750:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P763, exception, "payload"
    .return ($P763)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("71_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_767
.annotate "line", 276
    new $P766, 'ExceptionHandler'
    set_addr $P766, control_765
    $P766."handle_types"(58)
    push_eh $P766
    .lex "self", self
    .lex "$/", param_767
.annotate "line", 277
    get_hll_global $P768, ["PAST"], "Regex"
.annotate "line", 278
    find_lex $P769, "$/"
    set $P770, $P769["sym"]
    unless_null $P770, vivify_304
    new $P770, "Undef"
  vivify_304:
    set $S771, $P770
    iseq $I772, $S771, "V"
    find_lex $P773, "$/"
    unless_null $P773, vivify_305
    new $P773, "Undef"
  vivify_305:
    $P774 = $P768."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I772 :named("negate"), $P773 :named("node"))
.annotate "line", 277
    .lex "$past", $P774
    find_lex $P775, "$/"
.annotate "line", 279
    find_lex $P776, "$past"
    unless_null $P776, vivify_306
    new $P776, "Undef"
  vivify_306:
    $P777 = $P775."!make"($P776)
.annotate "line", 276
    .return ($P777)
  control_765:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P778, exception, "payload"
    .return ($P778)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("72_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_782
.annotate "line", 283
    new $P781, 'ExceptionHandler'
    set_addr $P781, control_780
    $P781."handle_types"(58)
    push_eh $P781
    .lex "self", self
    .lex "$/", param_782
.annotate "line", 284
    get_hll_global $P783, ["PAST"], "Regex"
    find_lex $P784, "$/"
    unless_null $P784, vivify_307
    new $P784, "Undef"
  vivify_307:
    set $S785, $P784
    find_lex $P786, "$/"
    unless_null $P786, vivify_308
    new $P786, "Undef"
  vivify_308:
    $P787 = $P783."new"($S785, "literal" :named("pasttype"), $P786 :named("node"))
    .lex "$past", $P787
    find_lex $P788, "$/"
.annotate "line", 285
    find_lex $P789, "$past"
    unless_null $P789, vivify_309
    new $P789, "Undef"
  vivify_309:
    $P790 = $P788."!make"($P789)
.annotate "line", 283
    .return ($P790)
  control_780:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P791, exception, "payload"
    .return ($P791)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("73_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_795
.annotate "line", 289
    .const 'Sub' $P808 = "75_1256225882.94197" 
    capture_lex $P808
    .const 'Sub' $P801 = "74_1256225882.94197" 
    capture_lex $P801
    new $P794, 'ExceptionHandler'
    set_addr $P794, control_793
    $P794."handle_types"(58)
    push_eh $P794
    .lex "self", self
    .lex "$/", param_795
.annotate "line", 290
    new $P796, "Undef"
    .lex "$past", $P796
.annotate "line", 291
    find_lex $P798, "$/"
    set $P799, $P798["assertion"]
    unless_null $P799, vivify_310
    new $P799, "Undef"
  vivify_310:
    if $P799, if_797
.annotate "line", 295
    .const 'Sub' $P808 = "75_1256225882.94197" 
    capture_lex $P808
    $P808()
    goto if_797_end
  if_797:
.annotate "line", 291
    .const 'Sub' $P801 = "74_1256225882.94197" 
    capture_lex $P801
    $P801()
  if_797_end:
    find_lex $P810, "$/"
.annotate "line", 296
    find_lex $P811, "$past"
    unless_null $P811, vivify_313
    new $P811, "Undef"
  vivify_313:
    $P812 = $P810."!make"($P811)
.annotate "line", 289
    .return ($P812)
  control_793:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P813, exception, "payload"
    .return ($P813)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block807"  :anon :subid("75_1256225882.94197") :outer("73_1256225882.94197")
.annotate "line", 295
    new $P809, "Integer"
    assign $P809, 0
    store_lex "$past", $P809
    .return ($P809)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block800"  :anon :subid("74_1256225882.94197") :outer("73_1256225882.94197")
.annotate "line", 292
    find_lex $P802, "$/"
    set $P803, $P802["assertion"]
    unless_null $P803, vivify_311
    new $P803, "Undef"
  vivify_311:
    $P804 = $P803."ast"()
    store_lex "$past", $P804
.annotate "line", 293
    find_lex $P805, "$past"
    unless_null $P805, vivify_312
    new $P805, "Undef"
  vivify_312:
    $P806 = $P805."subtype"("zerowidth")
.annotate "line", 291
    .return ($P806)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("76_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_817
.annotate "line", 299
    .const 'Sub' $P834 = "78_1256225882.94197" 
    capture_lex $P834
    .const 'Sub' $P823 = "77_1256225882.94197" 
    capture_lex $P823
    new $P816, 'ExceptionHandler'
    set_addr $P816, control_815
    $P816."handle_types"(58)
    push_eh $P816
    .lex "self", self
    .lex "$/", param_817
.annotate "line", 300
    new $P818, "Undef"
    .lex "$past", $P818
.annotate "line", 301
    find_lex $P820, "$/"
    set $P821, $P820["assertion"]
    unless_null $P821, vivify_314
    new $P821, "Undef"
  vivify_314:
    if $P821, if_819
.annotate "line", 306
    .const 'Sub' $P834 = "78_1256225882.94197" 
    capture_lex $P834
    $P834()
    goto if_819_end
  if_819:
.annotate "line", 301
    .const 'Sub' $P823 = "77_1256225882.94197" 
    capture_lex $P823
    $P823()
  if_819_end:
    find_lex $P838, "$/"
.annotate "line", 309
    find_lex $P839, "$past"
    unless_null $P839, vivify_320
    new $P839, "Undef"
  vivify_320:
    $P840 = $P838."!make"($P839)
.annotate "line", 299
    .return ($P840)
  control_815:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P841, exception, "payload"
    .return ($P841)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block833"  :anon :subid("78_1256225882.94197") :outer("76_1256225882.94197")
.annotate "line", 307
    get_hll_global $P835, ["PAST"], "Regex"
    find_lex $P836, "$/"
    unless_null $P836, vivify_315
    new $P836, "Undef"
  vivify_315:
    $P837 = $P835."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P836 :named("node"))
    store_lex "$past", $P837
.annotate "line", 306
    .return ($P837)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block822"  :anon :subid("77_1256225882.94197") :outer("76_1256225882.94197")
.annotate "line", 302
    find_lex $P824, "$/"
    set $P825, $P824["assertion"]
    unless_null $P825, vivify_316
    new $P825, "Undef"
  vivify_316:
    $P826 = $P825."ast"()
    store_lex "$past", $P826
.annotate "line", 303
    find_lex $P827, "$past"
    unless_null $P827, vivify_317
    new $P827, "Undef"
  vivify_317:
    find_lex $P828, "$past"
    unless_null $P828, vivify_318
    new $P828, "Undef"
  vivify_318:
    $P829 = $P828."negate"()
    isfalse $I830, $P829
    $P827."negate"($I830)
.annotate "line", 304
    find_lex $P831, "$past"
    unless_null $P831, vivify_319
    new $P831, "Undef"
  vivify_319:
    $P832 = $P831."subtype"("zerowidth")
.annotate "line", 301
    .return ($P832)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("79_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_845
.annotate "line", 312
    new $P844, 'ExceptionHandler'
    set_addr $P844, control_843
    $P844."handle_types"(58)
    push_eh $P844
    .lex "self", self
    .lex "$/", param_845
.annotate "line", 313
    find_lex $P846, "$/"
    set $P847, $P846["assertion"]
    unless_null $P847, vivify_321
    new $P847, "Undef"
  vivify_321:
    $P848 = $P847."ast"()
    .lex "$past", $P848
.annotate "line", 314
    find_lex $P849, "$past"
    unless_null $P849, vivify_322
    new $P849, "Undef"
  vivify_322:
    $P849."subtype"("method")
    find_lex $P850, "$/"
.annotate "line", 315
    find_lex $P851, "$past"
    unless_null $P851, vivify_323
    new $P851, "Undef"
  vivify_323:
    $P852 = $P850."!make"($P851)
.annotate "line", 312
    .return ($P852)
  control_843:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P853, exception, "payload"
    .return ($P853)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<name>"  :subid("80_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_857
.annotate "line", 318
    .const 'Sub' $P876 = "82_1256225882.94197" 
    capture_lex $P876
    .const 'Sub' $P867 = "81_1256225882.94197" 
    capture_lex $P867
    new $P856, 'ExceptionHandler'
    set_addr $P856, control_855
    $P856."handle_types"(58)
    push_eh $P856
    .lex "self", self
    .lex "$/", param_857
.annotate "line", 319
    find_lex $P858, "$/"
    set $P859, $P858["longname"]
    unless_null $P859, vivify_324
    new $P859, "Undef"
  vivify_324:
    set $S860, $P859
    new $P861, 'String'
    set $P861, $S860
    .lex "$name", $P861
.annotate "line", 320
    new $P862, "Undef"
    .lex "$past", $P862
.annotate "line", 321
    find_lex $P864, "$/"
    set $P865, $P864["assertion"]
    unless_null $P865, vivify_325
    new $P865, "Undef"
  vivify_325:
    if $P865, if_863
.annotate "line", 325
    .const 'Sub' $P876 = "82_1256225882.94197" 
    capture_lex $P876
    $P876()
    goto if_863_end
  if_863:
.annotate "line", 321
    .const 'Sub' $P867 = "81_1256225882.94197" 
    capture_lex $P867
    $P867()
  if_863_end:
    find_lex $P920, "$/"
.annotate "line", 337
    find_lex $P921, "$past"
    unless_null $P921, vivify_344
    new $P921, "Undef"
  vivify_344:
    $P922 = $P920."!make"($P921)
.annotate "line", 318
    .return ($P922)
  control_855:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P923, exception, "payload"
    .return ($P923)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block875"  :anon :subid("82_1256225882.94197") :outer("80_1256225882.94197")
.annotate "line", 325
    .const 'Sub' $P901 = "84_1256225882.94197" 
    capture_lex $P901
    .const 'Sub' $P887 = "83_1256225882.94197" 
    capture_lex $P887
.annotate "line", 326
    get_hll_global $P877, ["PAST"], "Regex"
    find_lex $P878, "$name"
    unless_null $P878, vivify_326
    new $P878, "Undef"
  vivify_326:
    find_lex $P879, "$name"
    unless_null $P879, vivify_327
    new $P879, "Undef"
  vivify_327:
.annotate "line", 327
    find_lex $P880, "$/"
    unless_null $P880, vivify_328
    new $P880, "Undef"
  vivify_328:
    $P881 = $P877."new"($P878, $P879 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P880 :named("node"))
.annotate "line", 326
    store_lex "$past", $P881
.annotate "line", 328
    find_lex $P884, "$/"
    set $P885, $P884["nibbler"]
    unless_null $P885, vivify_329
    new $P885, "Undef"
  vivify_329:
    if $P885, if_883
    find_lex $P898, "$/"
    set $P899, $P898["arglist"]
    unless_null $P899, vivify_330
    new $P899, "Undef"
  vivify_330:
    if $P899, if_897
    set $P896, $P899
    goto if_897_end
  if_897:
.annotate "line", 331
    .const 'Sub' $P901 = "84_1256225882.94197" 
    capture_lex $P901
    $P919 = $P901()
    set $P896, $P919
  if_897_end:
.annotate "line", 328
    set $P882, $P896
    goto if_883_end
  if_883:
    .const 'Sub' $P887 = "83_1256225882.94197" 
    capture_lex $P887
    $P895 = $P887()
    set $P882, $P895
  if_883_end:
.annotate "line", 325
    .return ($P882)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block900"  :anon :subid("84_1256225882.94197") :outer("82_1256225882.94197")
.annotate "line", 331
    .const 'Sub' $P910 = "85_1256225882.94197" 
    capture_lex $P910
.annotate "line", 332
    find_lex $P903, "$/"
    set $P904, $P903["arglist"]
    unless_null $P904, vivify_331
    new $P904, "ResizablePMCArray"
  vivify_331:
    set $P905, $P904[0]
    unless_null $P905, vivify_332
    new $P905, "Hash"
  vivify_332:
    set $P906, $P905["arg"]
    unless_null $P906, vivify_333
    new $P906, "Undef"
  vivify_333:
    defined $I907, $P906
    unless $I907, for_undef_334
    iter $P902, $P906
    new $P917, 'ExceptionHandler'
    set_addr $P917, loop916_handler
    $P917."handle_types"(65, 67, 66)
    push_eh $P917
  loop916_test:
    unless $P902, loop916_done
    shift $P908, $P902
  loop916_redo:
    .const 'Sub' $P910 = "85_1256225882.94197" 
    capture_lex $P910
    $P910($P908)
  loop916_next:
    goto loop916_test
  loop916_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P918, exception, 'type'
    eq $P918, 65, loop916_next
    eq $P918, 67, loop916_redo
  loop916_done:
    pop_eh 
  for_undef_334:
.annotate "line", 331
    .return ($P902)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block909"  :anon :subid("85_1256225882.94197") :outer("84_1256225882.94197")
    .param pmc param_911
.annotate "line", 332
    .lex "$_", param_911
.annotate "line", 333
    find_lex $P912, "$past"
    unless_null $P912, vivify_335
    new $P912, "Undef"
  vivify_335:
    find_lex $P913, "$_"
    unless_null $P913, vivify_336
    new $P913, "Undef"
  vivify_336:
    $P914 = $P913."ast"()
    $P915 = $P912."push"($P914)
.annotate "line", 332
    .return ($P915)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block886"  :anon :subid("83_1256225882.94197") :outer("82_1256225882.94197")
.annotate "line", 329
    find_lex $P888, "$past"
    unless_null $P888, vivify_337
    new $P888, "Undef"
  vivify_337:
    find_lex $P889, "$/"
    set $P890, $P889["nibbler"]
    unless_null $P890, vivify_338
    new $P890, "ResizablePMCArray"
  vivify_338:
    set $P891, $P890[0]
    unless_null $P891, vivify_339
    new $P891, "Undef"
  vivify_339:
    $P892 = $P891."ast"()
    $P893 = "buildsub"($P892)
    $P894 = $P888."push"($P893)
.annotate "line", 328
    .return ($P894)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block866"  :anon :subid("81_1256225882.94197") :outer("80_1256225882.94197")
.annotate "line", 322
    find_lex $P868, "$/"
    set $P869, $P868["assertion"]
    unless_null $P869, vivify_340
    new $P869, "ResizablePMCArray"
  vivify_340:
    set $P870, $P869[0]
    unless_null $P870, vivify_341
    new $P870, "Undef"
  vivify_341:
    $P871 = $P870."ast"()
    store_lex "$past", $P871
.annotate "line", 323
    find_lex $P872, "$past"
    unless_null $P872, vivify_342
    new $P872, "Undef"
  vivify_342:
    find_lex $P873, "$name"
    unless_null $P873, vivify_343
    new $P873, "Undef"
  vivify_343:
    $P874 = "subrule_alias"($P872, $P873)
.annotate "line", 321
    .return ($P874)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<[>"  :subid("86_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_927
.annotate "line", 340
    .const 'Sub' $P960 = "88_1256225882.94197" 
    capture_lex $P960
    .const 'Sub' $P942 = "87_1256225882.94197" 
    capture_lex $P942
    new $P926, 'ExceptionHandler'
    set_addr $P926, control_925
    $P926."handle_types"(58)
    push_eh $P926
    .lex "self", self
    .lex "$/", param_927
.annotate "line", 341
    find_lex $P928, "$/"
    set $P929, $P928["cclass_elem"]
    unless_null $P929, vivify_345
    new $P929, "Undef"
  vivify_345:
    .lex "$clist", $P929
.annotate "line", 342
    find_lex $P930, "$clist"
    unless_null $P930, vivify_346
    new $P930, "ResizablePMCArray"
  vivify_346:
    set $P931, $P930[0]
    unless_null $P931, vivify_347
    new $P931, "Undef"
  vivify_347:
    $P932 = $P931."ast"()
    .lex "$past", $P932
.annotate "line", 343
    find_lex $P936, "$past"
    unless_null $P936, vivify_348
    new $P936, "Undef"
  vivify_348:
    $P937 = $P936."negate"()
    if $P937, if_935
    set $P934, $P937
    goto if_935_end
  if_935:
    find_lex $P938, "$past"
    unless_null $P938, vivify_349
    new $P938, "Undef"
  vivify_349:
    $S939 = $P938."pasttype"()
    iseq $I940, $S939, "subrule"
    new $P934, 'Integer'
    set $P934, $I940
  if_935_end:
    unless $P934, if_933_end
    .const 'Sub' $P942 = "87_1256225882.94197" 
    capture_lex $P942
    $P942()
  if_933_end:
.annotate "line", 351
    new $P950, "Integer"
    assign $P950, 1
    .lex "$i", $P950
.annotate "line", 352
    find_lex $P951, "$clist"
    unless_null $P951, vivify_353
    new $P951, "Undef"
  vivify_353:
    set $N952, $P951
    new $P953, 'Float'
    set $P953, $N952
    .lex "$n", $P953
.annotate "line", 353
    new $P987, 'ExceptionHandler'
    set_addr $P987, loop986_handler
    $P987."handle_types"(65, 67, 66)
    push_eh $P987
  loop986_test:
    find_lex $P954, "$i"
    unless_null $P954, vivify_354
    new $P954, "Undef"
  vivify_354:
    set $N955, $P954
    find_lex $P956, "$n"
    unless_null $P956, vivify_355
    new $P956, "Undef"
  vivify_355:
    set $N957, $P956
    islt $I958, $N955, $N957
    unless $I958, loop986_done
  loop986_redo:
    .const 'Sub' $P960 = "88_1256225882.94197" 
    capture_lex $P960
    $P960()
  loop986_next:
    goto loop986_test
  loop986_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P988, exception, 'type'
    eq $P988, 65, loop986_next
    eq $P988, 67, loop986_redo
  loop986_done:
    pop_eh 
    find_lex $P989, "$/"
.annotate "line", 364
    find_lex $P990, "$past"
    unless_null $P990, vivify_368
    new $P990, "Undef"
  vivify_368:
    $P991 = $P989."!make"($P990)
.annotate "line", 340
    .return ($P991)
  control_925:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P992, exception, "payload"
    .return ($P992)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block941"  :anon :subid("87_1256225882.94197") :outer("86_1256225882.94197")
.annotate "line", 344
    find_lex $P943, "$past"
    unless_null $P943, vivify_350
    new $P943, "Undef"
  vivify_350:
    $P943."subtype"("zerowidth")
.annotate "line", 345
    get_hll_global $P944, ["PAST"], "Regex"
.annotate "line", 346
    find_lex $P945, "$past"
    unless_null $P945, vivify_351
    new $P945, "Undef"
  vivify_351:
.annotate "line", 347
    get_hll_global $P946, ["PAST"], "Regex"
    $P947 = $P946."new"("charclass" :named("pasttype"), "." :named("subtype"))
.annotate "line", 348
    find_lex $P948, "$/"
    unless_null $P948, vivify_352
    new $P948, "Undef"
  vivify_352:
    $P949 = $P944."new"($P945, $P947, $P948 :named("node"))
.annotate "line", 345
    store_lex "$past", $P949
.annotate "line", 343
    .return ($P949)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block959"  :anon :subid("88_1256225882.94197") :outer("86_1256225882.94197")
.annotate "line", 353
    .const 'Sub' $P978 = "90_1256225882.94197" 
    capture_lex $P978
    .const 'Sub' $P970 = "89_1256225882.94197" 
    capture_lex $P970
.annotate "line", 354
    find_lex $P961, "$i"
    unless_null $P961, vivify_356
    new $P961, "Undef"
  vivify_356:
    set $I962, $P961
    find_lex $P963, "$clist"
    unless_null $P963, vivify_357
    new $P963, "ResizablePMCArray"
  vivify_357:
    set $P964, $P963[$I962]
    unless_null $P964, vivify_358
    new $P964, "Undef"
  vivify_358:
    $P965 = $P964."ast"()
    .lex "$ast", $P965
.annotate "line", 355
    find_lex $P967, "$ast"
    unless_null $P967, vivify_359
    new $P967, "Undef"
  vivify_359:
    $P968 = $P967."negate"()
    if $P968, if_966
.annotate "line", 359
    .const 'Sub' $P978 = "90_1256225882.94197" 
    capture_lex $P978
    $P978()
    goto if_966_end
  if_966:
.annotate "line", 355
    .const 'Sub' $P970 = "89_1256225882.94197" 
    capture_lex $P970
    $P970()
  if_966_end:
.annotate "line", 362
    find_lex $P984, "$i"
    unless_null $P984, vivify_367
    new $P984, "Undef"
  vivify_367:
    add $P985, $P984, 1
    store_lex "$i", $P985
.annotate "line", 353
    .return ($P985)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block977"  :anon :subid("90_1256225882.94197") :outer("88_1256225882.94197")
.annotate "line", 360
    get_hll_global $P979, ["PAST"], "Regex"
    find_lex $P980, "$past"
    unless_null $P980, vivify_360
    new $P980, "Undef"
  vivify_360:
    find_lex $P981, "$ast"
    unless_null $P981, vivify_361
    new $P981, "Undef"
  vivify_361:
    find_lex $P982, "$/"
    unless_null $P982, vivify_362
    new $P982, "Undef"
  vivify_362:
    $P983 = $P979."new"($P980, $P981, "alt" :named("pasttype"), $P982 :named("node"))
    store_lex "$past", $P983
.annotate "line", 359
    .return ($P983)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block969"  :anon :subid("89_1256225882.94197") :outer("88_1256225882.94197")
.annotate "line", 356
    find_lex $P971, "$ast"
    unless_null $P971, vivify_363
    new $P971, "Undef"
  vivify_363:
    $P971."subtype"("zerowidth")
.annotate "line", 357
    get_hll_global $P972, ["PAST"], "Regex"
    find_lex $P973, "$ast"
    unless_null $P973, vivify_364
    new $P973, "Undef"
  vivify_364:
    find_lex $P974, "$past"
    unless_null $P974, vivify_365
    new $P974, "Undef"
  vivify_365:
    find_lex $P975, "$/"
    unless_null $P975, vivify_366
    new $P975, "Undef"
  vivify_366:
    $P976 = $P972."new"($P973, $P974, "concat" :named("pasttype"), $P975 :named("node"))
    store_lex "$past", $P976
.annotate "line", 355
    .return ($P976)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "cclass_elem"  :subid("91_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_996
.annotate "line", 367
    .const 'Sub' $P1013 = "93_1256225882.94197" 
    capture_lex $P1013
    .const 'Sub' $P1003 = "92_1256225882.94197" 
    capture_lex $P1003
    new $P995, 'ExceptionHandler'
    set_addr $P995, control_994
    $P995."handle_types"(58)
    push_eh $P995
    .lex "self", self
    .lex "$/", param_996
.annotate "line", 368
    new $P997, "String"
    assign $P997, ""
    .lex "$str", $P997
.annotate "line", 369
    new $P998, "Undef"
    .lex "$past", $P998
.annotate "line", 370
    find_lex $P1000, "$/"
    set $P1001, $P1000["name"]
    unless_null $P1001, vivify_369
    new $P1001, "Undef"
  vivify_369:
    if $P1001, if_999
.annotate "line", 373
    .const 'Sub' $P1013 = "93_1256225882.94197" 
    capture_lex $P1013
    $P1013()
    goto if_999_end
  if_999:
.annotate "line", 370
    .const 'Sub' $P1003 = "92_1256225882.94197" 
    capture_lex $P1003
    $P1003()
  if_999_end:
.annotate "line", 401
    find_lex $P1052, "$past"
    unless_null $P1052, vivify_389
    new $P1052, "Undef"
  vivify_389:
    find_lex $P1053, "$/"
    set $P1054, $P1053["sign"]
    unless_null $P1054, vivify_390
    new $P1054, "Undef"
  vivify_390:
    set $S1055, $P1054
    iseq $I1056, $S1055, "-"
    $P1052."negate"($I1056)
    find_lex $P1057, "$/"
.annotate "line", 402
    find_lex $P1058, "$past"
    unless_null $P1058, vivify_391
    new $P1058, "Undef"
  vivify_391:
    $P1059 = $P1057."!make"($P1058)
.annotate "line", 367
    .return ($P1059)
  control_994:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1060, exception, "payload"
    .return ($P1060)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1012"  :anon :subid("93_1256225882.94197") :outer("91_1256225882.94197")
.annotate "line", 373
    .const 'Sub' $P1020 = "94_1256225882.94197" 
    capture_lex $P1020
.annotate "line", 374
    find_lex $P1015, "$/"
    set $P1016, $P1015["charspec"]
    unless_null $P1016, vivify_370
    new $P1016, "Undef"
  vivify_370:
    defined $I1017, $P1016
    unless $I1017, for_undef_371
    iter $P1014, $P1016
    new $P1046, 'ExceptionHandler'
    set_addr $P1046, loop1045_handler
    $P1046."handle_types"(65, 67, 66)
    push_eh $P1046
  loop1045_test:
    unless $P1014, loop1045_done
    shift $P1018, $P1014
  loop1045_redo:
    .const 'Sub' $P1020 = "94_1256225882.94197" 
    capture_lex $P1020
    $P1020($P1018)
  loop1045_next:
    goto loop1045_test
  loop1045_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1047, exception, 'type'
    eq $P1047, 65, loop1045_next
    eq $P1047, 67, loop1045_redo
  loop1045_done:
    pop_eh 
  for_undef_371:
.annotate "line", 399
    get_hll_global $P1048, ["PAST"], "Regex"
    find_lex $P1049, "$str"
    unless_null $P1049, vivify_384
    new $P1049, "Undef"
  vivify_384:
    find_lex $P1050, "$/"
    unless_null $P1050, vivify_385
    new $P1050, "Undef"
  vivify_385:
    $P1051 = $P1048."new"($P1049, "enumcharlist" :named("pasttype"), $P1050 :named("node"))
    store_lex "$past", $P1051
.annotate "line", 373
    .return ($P1051)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1019"  :anon :subid("94_1256225882.94197") :outer("93_1256225882.94197")
    .param pmc param_1021
.annotate "line", 374
    .const 'Sub' $P1039 = "96_1256225882.94197" 
    capture_lex $P1039
    .const 'Sub' $P1027 = "95_1256225882.94197" 
    capture_lex $P1027
    .lex "$_", param_1021
.annotate "line", 375
    find_lex $P1024, "$_"
    unless_null $P1024, vivify_372
    new $P1024, "ResizablePMCArray"
  vivify_372:
    set $P1025, $P1024[1]
    unless_null $P1025, vivify_373
    new $P1025, "Undef"
  vivify_373:
    if $P1025, if_1023
.annotate "line", 397
    .const 'Sub' $P1039 = "96_1256225882.94197" 
    capture_lex $P1039
    $P1044 = $P1039()
    set $P1022, $P1044
.annotate "line", 375
    goto if_1023_end
  if_1023:
    .const 'Sub' $P1027 = "95_1256225882.94197" 
    capture_lex $P1027
    $P1037 = $P1027()
    set $P1022, $P1037
  if_1023_end:
.annotate "line", 374
    .return ($P1022)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1038"  :anon :subid("96_1256225882.94197") :outer("94_1256225882.94197")
.annotate "line", 397
    find_lex $P1040, "$str"
    unless_null $P1040, vivify_374
    new $P1040, "Undef"
  vivify_374:
    find_lex $P1041, "$_"
    unless_null $P1041, vivify_375
    new $P1041, "ResizablePMCArray"
  vivify_375:
    set $P1042, $P1041[0]
    unless_null $P1042, vivify_376
    new $P1042, "Undef"
  vivify_376:
    concat $P1043, $P1040, $P1042
    store_lex "$str", $P1043
    .return ($P1043)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1026"  :anon :subid("95_1256225882.94197") :outer("94_1256225882.94197")
.annotate "line", 376
    find_lex $P1028, "$_"
    unless_null $P1028, vivify_377
    new $P1028, "ResizablePMCArray"
  vivify_377:
    set $P1029, $P1028[0]
    unless_null $P1029, vivify_378
    new $P1029, "Undef"
  vivify_378:
    .lex "$a", $P1029
.annotate "line", 377
    find_lex $P1030, "$_"
    unless_null $P1030, vivify_379
    new $P1030, "ResizablePMCArray"
  vivify_379:
    set $P1031, $P1030[1]
    unless_null $P1031, vivify_380
    new $P1031, "ResizablePMCArray"
  vivify_380:
    set $P1032, $P1031[0]
    unless_null $P1032, vivify_381
    new $P1032, "Undef"
  vivify_381:
    .lex "$b", $P1032
.annotate "line", 378

                             $P0 = find_lex '$a'
                             $S0 = $P0
                             $I0 = ord $S0
                             $P1 = find_lex '$b'
                             $S1 = $P1
                             $I1 = ord $S1
                             $S2 = ''
                           cclass_loop:
                             if $I0 > $I1 goto cclass_done
                             $S0 = chr $I0
                             $S2 .= $S0
                             inc $I0
                             goto cclass_loop
                           cclass_done:
                             $P1033 = box $S2
                         
    .lex "$c", $P1033
.annotate "line", 395
    find_lex $P1034, "$str"
    unless_null $P1034, vivify_382
    new $P1034, "Undef"
  vivify_382:
    find_lex $P1035, "$c"
    unless_null $P1035, vivify_383
    new $P1035, "Undef"
  vivify_383:
    concat $P1036, $P1034, $P1035
    store_lex "$str", $P1036
.annotate "line", 375
    .return ($P1036)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1002"  :anon :subid("92_1256225882.94197") :outer("91_1256225882.94197")
.annotate "line", 371
    find_lex $P1004, "$/"
    set $P1005, $P1004["name"]
    unless_null $P1005, vivify_386
    new $P1005, "Undef"
  vivify_386:
    set $S1006, $P1005
    new $P1007, 'String'
    set $P1007, $S1006
    .lex "$name", $P1007
.annotate "line", 372
    get_hll_global $P1008, ["PAST"], "Regex"
    find_lex $P1009, "$name"
    unless_null $P1009, vivify_387
    new $P1009, "Undef"
  vivify_387:
    find_lex $P1010, "$/"
    unless_null $P1010, vivify_388
    new $P1010, "Undef"
  vivify_388:
    $P1011 = $P1008."new"($P1009, "subrule" :named("pasttype"), "method" :named("subtype"), $P1010 :named("node"))
    store_lex "$past", $P1011
.annotate "line", 370
    .return ($P1011)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("97_1256225882.94197") :method :outer("11_1256225882.94197")
    .param pmc param_1064
.annotate "line", 405
    new $P1063, 'ExceptionHandler'
    set_addr $P1063, control_1062
    $P1063."handle_types"(58)
    push_eh $P1063
    .lex "self", self
    .lex "$/", param_1064
.annotate "line", 406
    get_global $P1065, "@MODIFIERS"
    unless_null $P1065, vivify_392
    new $P1065, "ResizablePMCArray"
  vivify_392:
    set $P1066, $P1065[0]
    unless_null $P1066, vivify_393
    new $P1066, "Undef"
  vivify_393:
    .lex "%mods", $P1066
.annotate "line", 407
    find_lex $P1069, "$/"
    set $P1070, $P1069["n"]
    unless_null $P1070, vivify_394
    new $P1070, "ResizablePMCArray"
  vivify_394:
    set $P1071, $P1070[0]
    unless_null $P1071, vivify_395
    new $P1071, "Undef"
  vivify_395:
    set $S1072, $P1071
    isgt $I1073, $S1072, ""
    if $I1073, if_1068
    new $P1078, "Integer"
    assign $P1078, 1
    set $P1067, $P1078
    goto if_1068_end
  if_1068:
    find_lex $P1074, "$/"
    set $P1075, $P1074["n"]
    unless_null $P1075, vivify_396
    new $P1075, "ResizablePMCArray"
  vivify_396:
    set $P1076, $P1075[0]
    unless_null $P1076, vivify_397
    new $P1076, "Undef"
  vivify_397:
    set $N1077, $P1076
    new $P1067, 'Float'
    set $P1067, $N1077
  if_1068_end:
    .lex "$n", $P1067
.annotate "line", 408
    find_lex $P1079, "$n"
    unless_null $P1079, vivify_398
    new $P1079, "Undef"
  vivify_398:
    find_lex $P1080, "$/"
    set $P1081, $P1080["mod_ident"]
    unless_null $P1081, vivify_399
    new $P1081, "Hash"
  vivify_399:
    set $P1082, $P1081["sym"]
    unless_null $P1082, vivify_400
    new $P1082, "Undef"
  vivify_400:
    set $S1083, $P1082
    find_lex $P1084, "%mods"
    unless_null $P1084, vivify_401
    new $P1084, "Hash"
    store_lex "%mods", $P1084
  vivify_401:
    set $P1084[$S1083], $P1079
    find_lex $P1085, "$/"
.annotate "line", 409
    $P1086 = $P1085."!make"(0)
.annotate "line", 405
    .return ($P1086)
  control_1062:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1087, exception, "payload"
    .return ($P1087)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("98_1256225882.94197") :outer("11_1256225882.94197")
    .param pmc param_1091
.annotate "line", 412
    new $P1090, 'ExceptionHandler'
    set_addr $P1090, control_1089
    $P1090."handle_types"(58)
    push_eh $P1090
    .lex "$rpast", param_1091
.annotate "line", 413
    find_lex $P1092, "$rpast"
    unless_null $P1092, vivify_402
    new $P1092, "Undef"
  vivify_402:
    $P1093 = "capnames"($P1092, 0)
    .lex "%capnames", $P1093
.annotate "line", 414
    new $P1094, "Integer"
    assign $P1094, 0
    find_lex $P1095, "%capnames"
    unless_null $P1095, vivify_403
    new $P1095, "Hash"
    store_lex "%capnames", $P1095
  vivify_403:
    set $P1095[""], $P1094
.annotate "line", 415
    get_hll_global $P1096, ["PAST"], "Regex"
.annotate "line", 416
    get_hll_global $P1097, ["PAST"], "Regex"
    $P1098 = $P1097."new"("scan" :named("pasttype"))
.annotate "line", 417
    find_lex $P1099, "$rpast"
    unless_null $P1099, vivify_404
    new $P1099, "Undef"
  vivify_404:
.annotate "line", 418
    get_hll_global $P1100, ["PAST"], "Regex"
    $P1101 = $P1100."new"("pass" :named("pasttype"))
.annotate "line", 420
    find_lex $P1102, "%capnames"
    unless_null $P1102, vivify_405
    new $P1102, "Hash"
  vivify_405:
    $P1103 = $P1096."new"($P1098, $P1099, $P1101, "concat" :named("pasttype"), $P1102 :named("capnames"))
.annotate "line", 415
    store_lex "$rpast", $P1103
.annotate "line", 422
    get_hll_global $P1104, ["PAST"], "Block"
    find_lex $P1105, "$rpast"
    unless_null $P1105, vivify_406
    new $P1105, "Undef"
  vivify_406:
    $P1106 = $P1104."new"($P1105, "method" :named("blocktype"))
.annotate "line", 412
    .return ($P1106)
  control_1089:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1107, exception, "payload"
    .return ($P1107)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "capnames"  :subid("99_1256225882.94197") :outer("11_1256225882.94197")
    .param pmc param_1111
    .param pmc param_1112
.annotate "line", 425
    .const 'Sub' $P1347 = "115_1256225882.94197" 
    capture_lex $P1347
    .const 'Sub' $P1283 = "111_1256225882.94197" 
    capture_lex $P1283
    .const 'Sub' $P1236 = "107_1256225882.94197" 
    capture_lex $P1236
    .const 'Sub' $P1188 = "104_1256225882.94197" 
    capture_lex $P1188
    .const 'Sub' $P1121 = "100_1256225882.94197" 
    capture_lex $P1121
    new $P1110, 'ExceptionHandler'
    set_addr $P1110, control_1109
    $P1110."handle_types"(58)
    push_eh $P1110
    .lex "$ast", param_1111
    .lex "$count", param_1112
.annotate "line", 426
    new $P1113, "Hash"
    .lex "%capnames", $P1113
.annotate "line", 427
    find_lex $P1114, "$ast"
    unless_null $P1114, vivify_407
    new $P1114, "Undef"
  vivify_407:
    $P1115 = $P1114."pasttype"()
    .lex "$pasttype", $P1115
.annotate "line", 428
    find_lex $P1117, "$pasttype"
    unless_null $P1117, vivify_408
    new $P1117, "Undef"
  vivify_408:
    set $S1118, $P1117
    iseq $I1119, $S1118, "alt"
    if $I1119, if_1116
.annotate "line", 441
    find_lex $P1184, "$pasttype"
    unless_null $P1184, vivify_409
    new $P1184, "Undef"
  vivify_409:
    set $S1185, $P1184
    iseq $I1186, $S1185, "concat"
    if $I1186, if_1183
.annotate "line", 450
    find_lex $P1229, "$pasttype"
    unless_null $P1229, vivify_410
    new $P1229, "Undef"
  vivify_410:
    set $S1230, $P1229
    iseq $I1231, $S1230, "subrule"
    if $I1231, if_1228
    new $P1227, 'Integer'
    set $P1227, $I1231
    goto if_1228_end
  if_1228:
    find_lex $P1232, "$ast"
    unless_null $P1232, vivify_411
    new $P1232, "Undef"
  vivify_411:
    $S1233 = $P1232."subtype"()
    iseq $I1234, $S1233, "capture"
    new $P1227, 'Integer'
    set $P1227, $I1234
  if_1228_end:
    if $P1227, if_1226
.annotate "line", 463
    find_lex $P1279, "$pasttype"
    unless_null $P1279, vivify_412
    new $P1279, "Undef"
  vivify_412:
    set $S1280, $P1279
    iseq $I1281, $S1280, "subcapture"
    if $I1281, if_1278
.annotate "line", 480
    find_lex $P1343, "$pasttype"
    unless_null $P1343, vivify_413
    new $P1343, "Undef"
  vivify_413:
    set $S1344, $P1343
    iseq $I1345, $S1344, "quant"
    unless $I1345, if_1342_end
    .const 'Sub' $P1347 = "115_1256225882.94197" 
    capture_lex $P1347
    $P1347()
  if_1342_end:
.annotate "line", 428
    goto if_1278_end
  if_1278:
.annotate "line", 463
    .const 'Sub' $P1283 = "111_1256225882.94197" 
    capture_lex $P1283
    $P1283()
  if_1278_end:
.annotate "line", 428
    goto if_1226_end
  if_1226:
.annotate "line", 450
    .const 'Sub' $P1236 = "107_1256225882.94197" 
    capture_lex $P1236
    $P1236()
  if_1226_end:
.annotate "line", 428
    goto if_1183_end
  if_1183:
.annotate "line", 441
    .const 'Sub' $P1188 = "104_1256225882.94197" 
    capture_lex $P1188
    $P1188()
  if_1183_end:
.annotate "line", 428
    goto if_1116_end
  if_1116:
    .const 'Sub' $P1121 = "100_1256225882.94197" 
    capture_lex $P1121
    $P1121()
  if_1116_end:
.annotate "line", 487
    find_lex $P1367, "$count"
    unless_null $P1367, vivify_495
    new $P1367, "Undef"
  vivify_495:
    find_lex $P1368, "%capnames"
    unless_null $P1368, vivify_496
    new $P1368, "Hash"
    store_lex "%capnames", $P1368
  vivify_496:
    set $P1368[""], $P1367
.annotate "line", 488
    find_lex $P1369, "%capnames"
    unless_null $P1369, vivify_497
    new $P1369, "Hash"
  vivify_497:
.annotate "line", 425
    .return ($P1369)
  control_1109:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1370, exception, "payload"
    .return ($P1370)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1346"  :anon :subid("115_1256225882.94197") :outer("99_1256225882.94197")
.annotate "line", 480
    .const 'Sub' $P1357 = "116_1256225882.94197" 
    capture_lex $P1357
.annotate "line", 481
    find_lex $P1348, "$ast"
    unless_null $P1348, vivify_414
    new $P1348, "ResizablePMCArray"
  vivify_414:
    set $P1349, $P1348[0]
    unless_null $P1349, vivify_415
    new $P1349, "Undef"
  vivify_415:
    find_lex $P1350, "$count"
    unless_null $P1350, vivify_416
    new $P1350, "Undef"
  vivify_416:
    $P1351 = "capnames"($P1349, $P1350)
    .lex "%astcap", $P1351
.annotate "line", 482
    find_lex $P1353, "%astcap"
    unless_null $P1353, vivify_417
    new $P1353, "Hash"
  vivify_417:
    defined $I1354, $P1353
    unless $I1354, for_undef_418
    iter $P1352, $P1353
    new $P1363, 'ExceptionHandler'
    set_addr $P1363, loop1362_handler
    $P1363."handle_types"(65, 67, 66)
    push_eh $P1363
  loop1362_test:
    unless $P1352, loop1362_done
    shift $P1355, $P1352
  loop1362_redo:
    .const 'Sub' $P1357 = "116_1256225882.94197" 
    capture_lex $P1357
    $P1357($P1355)
  loop1362_next:
    goto loop1362_test
  loop1362_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1364, exception, 'type'
    eq $P1364, 65, loop1362_next
    eq $P1364, 67, loop1362_redo
  loop1362_done:
    pop_eh 
  for_undef_418:
.annotate "line", 485
    find_lex $P1365, "%astcap"
    unless_null $P1365, vivify_421
    new $P1365, "Hash"
  vivify_421:
    set $P1366, $P1365[""]
    unless_null $P1366, vivify_422
    new $P1366, "Undef"
  vivify_422:
    store_lex "$count", $P1366
.annotate "line", 480
    .return ($P1366)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1356"  :anon :subid("116_1256225882.94197") :outer("115_1256225882.94197")
    .param pmc param_1358
.annotate "line", 482
    .lex "$_", param_1358
.annotate "line", 483
    new $P1359, "Integer"
    assign $P1359, 2
    find_lex $P1360, "$_"
    unless_null $P1360, vivify_419
    new $P1360, "Undef"
  vivify_419:
    find_lex $P1361, "%capnames"
    unless_null $P1361, vivify_420
    new $P1361, "Hash"
    store_lex "%capnames", $P1361
  vivify_420:
    set $P1361[$P1360], $P1359
.annotate "line", 482
    .return ($P1359)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1282"  :anon :subid("111_1256225882.94197") :outer("99_1256225882.94197")
.annotate "line", 463
    .const 'Sub' $P1324 = "114_1256225882.94197" 
    capture_lex $P1324
    .const 'Sub' $P1292 = "112_1256225882.94197" 
    capture_lex $P1292
.annotate "line", 464
    find_lex $P1284, "$ast"
    unless_null $P1284, vivify_423
    new $P1284, "Undef"
  vivify_423:
    $P1285 = $P1284."name"()
    .lex "$name", $P1285
.annotate "line", 465

            $P0 = find_lex '$name'
            $S0 = $P0
            $P1286 = split '=', $S0
        
    .lex "@names", $P1286
.annotate "line", 470
    find_lex $P1288, "@names"
    unless_null $P1288, vivify_424
    new $P1288, "ResizablePMCArray"
  vivify_424:
    defined $I1289, $P1288
    unless $I1289, for_undef_425
    iter $P1287, $P1288
    new $P1313, 'ExceptionHandler'
    set_addr $P1313, loop1312_handler
    $P1313."handle_types"(65, 67, 66)
    push_eh $P1313
  loop1312_test:
    unless $P1287, loop1312_done
    shift $P1290, $P1287
  loop1312_redo:
    .const 'Sub' $P1292 = "112_1256225882.94197" 
    capture_lex $P1292
    $P1292($P1290)
  loop1312_next:
    goto loop1312_test
  loop1312_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1314, exception, 'type'
    eq $P1314, 65, loop1312_next
    eq $P1314, 67, loop1312_redo
  loop1312_done:
    pop_eh 
  for_undef_425:
.annotate "line", 474
    find_lex $P1315, "$ast"
    unless_null $P1315, vivify_431
    new $P1315, "ResizablePMCArray"
  vivify_431:
    set $P1316, $P1315[0]
    unless_null $P1316, vivify_432
    new $P1316, "Undef"
  vivify_432:
    find_lex $P1317, "$count"
    unless_null $P1317, vivify_433
    new $P1317, "Undef"
  vivify_433:
    $P1318 = "capnames"($P1316, $P1317)
    .lex "%x", $P1318
.annotate "line", 475
    find_lex $P1320, "%x"
    unless_null $P1320, vivify_434
    new $P1320, "Hash"
  vivify_434:
    defined $I1321, $P1320
    unless $I1321, for_undef_435
    iter $P1319, $P1320
    new $P1338, 'ExceptionHandler'
    set_addr $P1338, loop1337_handler
    $P1338."handle_types"(65, 67, 66)
    push_eh $P1338
  loop1337_test:
    unless $P1319, loop1337_done
    shift $P1322, $P1319
  loop1337_redo:
    .const 'Sub' $P1324 = "114_1256225882.94197" 
    capture_lex $P1324
    $P1324($P1322)
  loop1337_next:
    goto loop1337_test
  loop1337_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1339, exception, 'type'
    eq $P1339, 65, loop1337_next
    eq $P1339, 67, loop1337_redo
  loop1337_done:
    pop_eh 
  for_undef_435:
.annotate "line", 478
    find_lex $P1340, "%x"
    unless_null $P1340, vivify_444
    new $P1340, "Hash"
  vivify_444:
    set $P1341, $P1340[""]
    unless_null $P1341, vivify_445
    new $P1341, "Undef"
  vivify_445:
    store_lex "$count", $P1341
.annotate "line", 463
    .return ($P1341)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1291"  :anon :subid("112_1256225882.94197") :outer("111_1256225882.94197")
    .param pmc param_1293
.annotate "line", 470
    .const 'Sub' $P1306 = "113_1256225882.94197" 
    capture_lex $P1306
    .lex "$_", param_1293
.annotate "line", 471
    find_lex $P1297, "$_"
    unless_null $P1297, vivify_426
    new $P1297, "Undef"
  vivify_426:
    set $S1298, $P1297
    iseq $I1299, $S1298, "0"
    unless $I1299, unless_1296
    new $P1295, 'Integer'
    set $P1295, $I1299
    goto unless_1296_end
  unless_1296:
    find_lex $P1300, "$_"
    unless_null $P1300, vivify_427
    new $P1300, "Undef"
  vivify_427:
    set $N1301, $P1300
    new $P1302, "Integer"
    assign $P1302, 0
    set $N1303, $P1302
    isgt $I1304, $N1301, $N1303
    new $P1295, 'Integer'
    set $P1295, $I1304
  unless_1296_end:
    unless $P1295, if_1294_end
    .const 'Sub' $P1306 = "113_1256225882.94197" 
    capture_lex $P1306
    $P1306()
  if_1294_end:
.annotate "line", 472
    new $P1309, "Integer"
    assign $P1309, 1
    find_lex $P1310, "$_"
    unless_null $P1310, vivify_429
    new $P1310, "Undef"
  vivify_429:
    find_lex $P1311, "%capnames"
    unless_null $P1311, vivify_430
    new $P1311, "Hash"
    store_lex "%capnames", $P1311
  vivify_430:
    set $P1311[$P1310], $P1309
.annotate "line", 470
    .return ($P1309)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1305"  :anon :subid("113_1256225882.94197") :outer("112_1256225882.94197")
.annotate "line", 471
    find_lex $P1307, "$_"
    unless_null $P1307, vivify_428
    new $P1307, "Undef"
  vivify_428:
    add $P1308, $P1307, 1
    store_lex "$count", $P1308
    .return ($P1308)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1323"  :anon :subid("114_1256225882.94197") :outer("111_1256225882.94197")
    .param pmc param_1325
.annotate "line", 475
    .lex "$_", param_1325
.annotate "line", 476
    find_lex $P1326, "$_"
    unless_null $P1326, vivify_436
    new $P1326, "Undef"
  vivify_436:
    find_lex $P1327, "%capnames"
    unless_null $P1327, vivify_437
    new $P1327, "Hash"
  vivify_437:
    set $P1328, $P1327[$P1326]
    unless_null $P1328, vivify_438
    new $P1328, "Undef"
  vivify_438:
    set $N1329, $P1328
    new $P1330, 'Float'
    set $P1330, $N1329
    find_lex $P1331, "$_"
    unless_null $P1331, vivify_439
    new $P1331, "Undef"
  vivify_439:
    find_lex $P1332, "%x"
    unless_null $P1332, vivify_440
    new $P1332, "Hash"
  vivify_440:
    set $P1333, $P1332[$P1331]
    unless_null $P1333, vivify_441
    new $P1333, "Undef"
  vivify_441:
    add $P1334, $P1330, $P1333
    find_lex $P1335, "$_"
    unless_null $P1335, vivify_442
    new $P1335, "Undef"
  vivify_442:
    find_lex $P1336, "%capnames"
    unless_null $P1336, vivify_443
    new $P1336, "Hash"
    store_lex "%capnames", $P1336
  vivify_443:
    set $P1336[$P1335], $P1334
.annotate "line", 475
    .return ($P1334)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1235"  :anon :subid("107_1256225882.94197") :outer("99_1256225882.94197")
.annotate "line", 450
    .const 'Sub' $P1255 = "109_1256225882.94197" 
    capture_lex $P1255
    .const 'Sub' $P1244 = "108_1256225882.94197" 
    capture_lex $P1244
.annotate "line", 451
    find_lex $P1237, "$ast"
    unless_null $P1237, vivify_446
    new $P1237, "Undef"
  vivify_446:
    $P1238 = $P1237."name"()
    .lex "$name", $P1238
.annotate "line", 452
    find_lex $P1240, "$name"
    unless_null $P1240, vivify_447
    new $P1240, "Undef"
  vivify_447:
    set $S1241, $P1240
    iseq $I1242, $S1241, ""
    unless $I1242, if_1239_end
    .const 'Sub' $P1244 = "108_1256225882.94197" 
    capture_lex $P1244
    $P1244()
  if_1239_end:
.annotate "line", 453

            $P0 = find_lex '$name'
            $S0 = $P0
            $P1249 = split '=', $S0
        
    .lex "@names", $P1249
.annotate "line", 458
    find_lex $P1251, "@names"
    unless_null $P1251, vivify_451
    new $P1251, "ResizablePMCArray"
  vivify_451:
    defined $I1252, $P1251
    unless $I1252, for_undef_452
    iter $P1250, $P1251
    new $P1276, 'ExceptionHandler'
    set_addr $P1276, loop1275_handler
    $P1276."handle_types"(65, 67, 66)
    push_eh $P1276
  loop1275_test:
    unless $P1250, loop1275_done
    shift $P1253, $P1250
  loop1275_redo:
    .const 'Sub' $P1255 = "109_1256225882.94197" 
    capture_lex $P1255
    $P1255($P1253)
  loop1275_next:
    goto loop1275_test
  loop1275_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1277, exception, 'type'
    eq $P1277, 65, loop1275_next
    eq $P1277, 67, loop1275_redo
  loop1275_done:
    pop_eh 
  for_undef_452:
.annotate "line", 450
    .return ($P1250)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1243"  :anon :subid("108_1256225882.94197") :outer("107_1256225882.94197")
.annotate "line", 452
    find_lex $P1245, "$count"
    unless_null $P1245, vivify_448
    new $P1245, "Undef"
  vivify_448:
    store_lex "$name", $P1245
    find_lex $P1246, "$ast"
    unless_null $P1246, vivify_449
    new $P1246, "Undef"
  vivify_449:
    find_lex $P1247, "$name"
    unless_null $P1247, vivify_450
    new $P1247, "Undef"
  vivify_450:
    $P1248 = $P1246."name"($P1247)
    .return ($P1248)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1254"  :anon :subid("109_1256225882.94197") :outer("107_1256225882.94197")
    .param pmc param_1256
.annotate "line", 458
    .const 'Sub' $P1269 = "110_1256225882.94197" 
    capture_lex $P1269
    .lex "$_", param_1256
.annotate "line", 459
    find_lex $P1260, "$_"
    unless_null $P1260, vivify_453
    new $P1260, "Undef"
  vivify_453:
    set $S1261, $P1260
    iseq $I1262, $S1261, "0"
    unless $I1262, unless_1259
    new $P1258, 'Integer'
    set $P1258, $I1262
    goto unless_1259_end
  unless_1259:
    find_lex $P1263, "$_"
    unless_null $P1263, vivify_454
    new $P1263, "Undef"
  vivify_454:
    set $N1264, $P1263
    new $P1265, "Integer"
    assign $P1265, 0
    set $N1266, $P1265
    isgt $I1267, $N1264, $N1266
    new $P1258, 'Integer'
    set $P1258, $I1267
  unless_1259_end:
    unless $P1258, if_1257_end
    .const 'Sub' $P1269 = "110_1256225882.94197" 
    capture_lex $P1269
    $P1269()
  if_1257_end:
.annotate "line", 460
    new $P1272, "Integer"
    assign $P1272, 1
    find_lex $P1273, "$_"
    unless_null $P1273, vivify_456
    new $P1273, "Undef"
  vivify_456:
    find_lex $P1274, "%capnames"
    unless_null $P1274, vivify_457
    new $P1274, "Hash"
    store_lex "%capnames", $P1274
  vivify_457:
    set $P1274[$P1273], $P1272
.annotate "line", 458
    .return ($P1272)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1268"  :anon :subid("110_1256225882.94197") :outer("109_1256225882.94197")
.annotate "line", 459
    find_lex $P1270, "$_"
    unless_null $P1270, vivify_455
    new $P1270, "Undef"
  vivify_455:
    add $P1271, $P1270, 1
    store_lex "$count", $P1271
    .return ($P1271)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1187"  :anon :subid("104_1256225882.94197") :outer("99_1256225882.94197")
.annotate "line", 441
    .const 'Sub' $P1195 = "105_1256225882.94197" 
    capture_lex $P1195
.annotate "line", 442
    find_lex $P1190, "$ast"
    unless_null $P1190, vivify_458
    new $P1190, "Undef"
  vivify_458:
    $P1191 = $P1190."list"()
    defined $I1192, $P1191
    unless $I1192, for_undef_459
    iter $P1189, $P1191
    new $P1224, 'ExceptionHandler'
    set_addr $P1224, loop1223_handler
    $P1224."handle_types"(65, 67, 66)
    push_eh $P1224
  loop1223_test:
    unless $P1189, loop1223_done
    shift $P1193, $P1189
  loop1223_redo:
    .const 'Sub' $P1195 = "105_1256225882.94197" 
    capture_lex $P1195
    $P1195($P1193)
  loop1223_next:
    goto loop1223_test
  loop1223_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1225, exception, 'type'
    eq $P1225, 65, loop1223_next
    eq $P1225, 67, loop1223_redo
  loop1223_done:
    pop_eh 
  for_undef_459:
.annotate "line", 441
    .return ($P1189)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1194"  :anon :subid("105_1256225882.94197") :outer("104_1256225882.94197")
    .param pmc param_1196
.annotate "line", 442
    .const 'Sub' $P1205 = "106_1256225882.94197" 
    capture_lex $P1205
    .lex "$_", param_1196
.annotate "line", 443
    find_lex $P1197, "$_"
    unless_null $P1197, vivify_460
    new $P1197, "Undef"
  vivify_460:
    find_lex $P1198, "$count"
    unless_null $P1198, vivify_461
    new $P1198, "Undef"
  vivify_461:
    $P1199 = "capnames"($P1197, $P1198)
    .lex "%x", $P1199
.annotate "line", 444
    find_lex $P1201, "%x"
    unless_null $P1201, vivify_462
    new $P1201, "Hash"
  vivify_462:
    defined $I1202, $P1201
    unless $I1202, for_undef_463
    iter $P1200, $P1201
    new $P1219, 'ExceptionHandler'
    set_addr $P1219, loop1218_handler
    $P1219."handle_types"(65, 67, 66)
    push_eh $P1219
  loop1218_test:
    unless $P1200, loop1218_done
    shift $P1203, $P1200
  loop1218_redo:
    .const 'Sub' $P1205 = "106_1256225882.94197" 
    capture_lex $P1205
    $P1205($P1203)
  loop1218_next:
    goto loop1218_test
  loop1218_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1220, exception, 'type'
    eq $P1220, 65, loop1218_next
    eq $P1220, 67, loop1218_redo
  loop1218_done:
    pop_eh 
  for_undef_463:
.annotate "line", 447
    find_lex $P1221, "%x"
    unless_null $P1221, vivify_472
    new $P1221, "Hash"
  vivify_472:
    set $P1222, $P1221[""]
    unless_null $P1222, vivify_473
    new $P1222, "Undef"
  vivify_473:
    store_lex "$count", $P1222
.annotate "line", 442
    .return ($P1222)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1204"  :anon :subid("106_1256225882.94197") :outer("105_1256225882.94197")
    .param pmc param_1206
.annotate "line", 444
    .lex "$_", param_1206
.annotate "line", 445
    find_lex $P1207, "$_"
    unless_null $P1207, vivify_464
    new $P1207, "Undef"
  vivify_464:
    find_lex $P1208, "%capnames"
    unless_null $P1208, vivify_465
    new $P1208, "Hash"
  vivify_465:
    set $P1209, $P1208[$P1207]
    unless_null $P1209, vivify_466
    new $P1209, "Undef"
  vivify_466:
    set $N1210, $P1209
    new $P1211, 'Float'
    set $P1211, $N1210
    find_lex $P1212, "$_"
    unless_null $P1212, vivify_467
    new $P1212, "Undef"
  vivify_467:
    find_lex $P1213, "%x"
    unless_null $P1213, vivify_468
    new $P1213, "Hash"
  vivify_468:
    set $P1214, $P1213[$P1212]
    unless_null $P1214, vivify_469
    new $P1214, "Undef"
  vivify_469:
    add $P1215, $P1211, $P1214
    find_lex $P1216, "$_"
    unless_null $P1216, vivify_470
    new $P1216, "Undef"
  vivify_470:
    find_lex $P1217, "%capnames"
    unless_null $P1217, vivify_471
    new $P1217, "Hash"
    store_lex "%capnames", $P1217
  vivify_471:
    set $P1217[$P1216], $P1215
.annotate "line", 444
    .return ($P1215)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1120"  :anon :subid("100_1256225882.94197") :outer("99_1256225882.94197")
.annotate "line", 428
    .const 'Sub' $P1129 = "101_1256225882.94197" 
    capture_lex $P1129
.annotate "line", 429
    find_lex $P1122, "$count"
    unless_null $P1122, vivify_474
    new $P1122, "Undef"
  vivify_474:
    .lex "$max", $P1122
.annotate "line", 430
    find_lex $P1124, "$ast"
    unless_null $P1124, vivify_475
    new $P1124, "Undef"
  vivify_475:
    $P1125 = $P1124."list"()
    defined $I1126, $P1125
    unless $I1126, for_undef_476
    iter $P1123, $P1125
    new $P1180, 'ExceptionHandler'
    set_addr $P1180, loop1179_handler
    $P1180."handle_types"(65, 67, 66)
    push_eh $P1180
  loop1179_test:
    unless $P1123, loop1179_done
    shift $P1127, $P1123
  loop1179_redo:
    .const 'Sub' $P1129 = "101_1256225882.94197" 
    capture_lex $P1129
    $P1129($P1127)
  loop1179_next:
    goto loop1179_test
  loop1179_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1181, exception, 'type'
    eq $P1181, 65, loop1179_next
    eq $P1181, 67, loop1179_redo
  loop1179_done:
    pop_eh 
  for_undef_476:
.annotate "line", 439
    find_lex $P1182, "$max"
    unless_null $P1182, vivify_494
    new $P1182, "Undef"
  vivify_494:
    store_lex "$count", $P1182
.annotate "line", 428
    .return ($P1182)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1128"  :anon :subid("101_1256225882.94197") :outer("100_1256225882.94197")
    .param pmc param_1130
.annotate "line", 430
    .const 'Sub' $P1175 = "103_1256225882.94197" 
    capture_lex $P1175
    .const 'Sub' $P1139 = "102_1256225882.94197" 
    capture_lex $P1139
    .lex "$_", param_1130
.annotate "line", 431
    find_lex $P1131, "$_"
    unless_null $P1131, vivify_477
    new $P1131, "Undef"
  vivify_477:
    find_lex $P1132, "$count"
    unless_null $P1132, vivify_478
    new $P1132, "Undef"
  vivify_478:
    $P1133 = "capnames"($P1131, $P1132)
    .lex "%x", $P1133
.annotate "line", 432
    find_lex $P1135, "%x"
    unless_null $P1135, vivify_479
    new $P1135, "Hash"
  vivify_479:
    defined $I1136, $P1135
    unless $I1136, for_undef_480
    iter $P1134, $P1135
    new $P1164, 'ExceptionHandler'
    set_addr $P1164, loop1163_handler
    $P1164."handle_types"(65, 67, 66)
    push_eh $P1164
  loop1163_test:
    unless $P1134, loop1163_done
    shift $P1137, $P1134
  loop1163_redo:
    .const 'Sub' $P1139 = "102_1256225882.94197" 
    capture_lex $P1139
    $P1139($P1137)
  loop1163_next:
    goto loop1163_test
  loop1163_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1165, exception, 'type'
    eq $P1165, 65, loop1163_next
    eq $P1165, 67, loop1163_redo
  loop1163_done:
    pop_eh 
  for_undef_480:
.annotate "line", 437
    find_lex $P1168, "%x"
    unless_null $P1168, vivify_489
    new $P1168, "Hash"
  vivify_489:
    set $P1169, $P1168[""]
    unless_null $P1169, vivify_490
    new $P1169, "Undef"
  vivify_490:
    set $N1170, $P1169
    find_lex $P1171, "$max"
    unless_null $P1171, vivify_491
    new $P1171, "Undef"
  vivify_491:
    set $N1172, $P1171
    isgt $I1173, $N1170, $N1172
    if $I1173, if_1167
    new $P1166, 'Integer'
    set $P1166, $I1173
    goto if_1167_end
  if_1167:
    .const 'Sub' $P1175 = "103_1256225882.94197" 
    capture_lex $P1175
    $P1178 = $P1175()
    set $P1166, $P1178
  if_1167_end:
.annotate "line", 430
    .return ($P1166)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1138"  :anon :subid("102_1256225882.94197") :outer("101_1256225882.94197")
    .param pmc param_1140
.annotate "line", 432
    .lex "$_", param_1140
.annotate "line", 433
    find_lex $P1145, "$_"
    unless_null $P1145, vivify_481
    new $P1145, "Undef"
  vivify_481:
    find_lex $P1146, "%capnames"
    unless_null $P1146, vivify_482
    new $P1146, "Hash"
  vivify_482:
    set $P1147, $P1146[$P1145]
    unless_null $P1147, vivify_483
    new $P1147, "Undef"
  vivify_483:
    set $N1148, $P1147
    new $P1149, "Integer"
    assign $P1149, 2
    set $N1150, $P1149
    islt $I1151, $N1148, $N1150
    if $I1151, if_1144
    new $P1143, 'Integer'
    set $P1143, $I1151
    goto if_1144_end
  if_1144:
    find_lex $P1152, "$_"
    unless_null $P1152, vivify_484
    new $P1152, "Undef"
  vivify_484:
    find_lex $P1153, "%x"
    unless_null $P1153, vivify_485
    new $P1153, "Hash"
  vivify_485:
    set $P1154, $P1153[$P1152]
    unless_null $P1154, vivify_486
    new $P1154, "Undef"
  vivify_486:
    set $N1155, $P1154
    new $P1156, "Integer"
    assign $P1156, 1
    set $N1157, $P1156
    iseq $I1158, $N1155, $N1157
    new $P1143, 'Integer'
    set $P1143, $I1158
  if_1144_end:
    if $P1143, if_1142
.annotate "line", 435
    new $P1160, "Integer"
    assign $P1160, 2
    set $P1141, $P1160
.annotate "line", 433
    goto if_1142_end
  if_1142:
.annotate "line", 434
    new $P1159, "Integer"
    assign $P1159, 1
    set $P1141, $P1159
  if_1142_end:
.annotate "line", 433
    find_lex $P1161, "$_"
    unless_null $P1161, vivify_487
    new $P1161, "Undef"
  vivify_487:
    find_lex $P1162, "%capnames"
    unless_null $P1162, vivify_488
    new $P1162, "Hash"
    store_lex "%capnames", $P1162
  vivify_488:
    set $P1162[$P1161], $P1141
.annotate "line", 432
    .return ($P1141)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1174"  :anon :subid("103_1256225882.94197") :outer("101_1256225882.94197")
.annotate "line", 437
    find_lex $P1176, "%x"
    unless_null $P1176, vivify_492
    new $P1176, "Hash"
  vivify_492:
    set $P1177, $P1176[""]
    unless_null $P1177, vivify_493
    new $P1177, "Undef"
  vivify_493:
    store_lex "$max", $P1177
    .return ($P1177)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("117_1256225882.94197") :outer("11_1256225882.94197")
    .param pmc param_1374
    .param pmc param_1375
.annotate "line", 491
    .const 'Sub' $P1407 = "120_1256225882.94197" 
    capture_lex $P1407
    .const 'Sub' $P1394 = "119_1256225882.94197" 
    capture_lex $P1394
    .const 'Sub' $P1381 = "118_1256225882.94197" 
    capture_lex $P1381
    new $P1373, 'ExceptionHandler'
    set_addr $P1373, control_1372
    $P1373."handle_types"(58)
    push_eh $P1373
    .lex "$ast", param_1374
    .lex "$backmod", param_1375
.annotate "line", 492
    find_lex $P1377, "$backmod"
    unless_null $P1377, vivify_498
    new $P1377, "Undef"
  vivify_498:
    set $S1378, $P1377
    iseq $I1379, $S1378, ":"
    if $I1379, if_1376
.annotate "line", 493
    find_lex $P1387, "$backmod"
    unless_null $P1387, vivify_499
    new $P1387, "Undef"
  vivify_499:
    set $S1388, $P1387
    iseq $I1389, $S1388, ":?"
    unless $I1389, unless_1386
    new $P1385, 'Integer'
    set $P1385, $I1389
    goto unless_1386_end
  unless_1386:
    find_lex $P1390, "$backmod"
    unless_null $P1390, vivify_500
    new $P1390, "Undef"
  vivify_500:
    set $S1391, $P1390
    iseq $I1392, $S1391, "?"
    new $P1385, 'Integer'
    set $P1385, $I1392
  unless_1386_end:
    if $P1385, if_1384
.annotate "line", 494
    find_lex $P1400, "$backmod"
    unless_null $P1400, vivify_501
    new $P1400, "Undef"
  vivify_501:
    set $S1401, $P1400
    iseq $I1402, $S1401, ":!"
    unless $I1402, unless_1399
    new $P1398, 'Integer'
    set $P1398, $I1402
    goto unless_1399_end
  unless_1399:
    find_lex $P1403, "$backmod"
    unless_null $P1403, vivify_502
    new $P1403, "Undef"
  vivify_502:
    set $S1404, $P1403
    iseq $I1405, $S1404, "!"
    new $P1398, 'Integer'
    set $P1398, $I1405
  unless_1399_end:
    unless $P1398, if_1397_end
    .const 'Sub' $P1407 = "120_1256225882.94197" 
    capture_lex $P1407
    $P1407()
  if_1397_end:
.annotate "line", 492
    goto if_1384_end
  if_1384:
.annotate "line", 493
    .const 'Sub' $P1394 = "119_1256225882.94197" 
    capture_lex $P1394
    $P1394()
  if_1384_end:
.annotate "line", 492
    goto if_1376_end
  if_1376:
    .const 'Sub' $P1381 = "118_1256225882.94197" 
    capture_lex $P1381
    $P1381()
  if_1376_end:
.annotate "line", 495
    find_lex $P1410, "$ast"
    unless_null $P1410, vivify_506
    new $P1410, "Undef"
  vivify_506:
.annotate "line", 491
    .return ($P1410)
  control_1372:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1411, exception, "payload"
    .return ($P1411)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1406"  :anon :subid("120_1256225882.94197") :outer("117_1256225882.94197")
.annotate "line", 494
    find_lex $P1408, "$ast"
    unless_null $P1408, vivify_503
    new $P1408, "Undef"
  vivify_503:
    $P1409 = $P1408."backtrack"("g")
    .return ($P1409)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1393"  :anon :subid("119_1256225882.94197") :outer("117_1256225882.94197")
.annotate "line", 493
    find_lex $P1395, "$ast"
    unless_null $P1395, vivify_504
    new $P1395, "Undef"
  vivify_504:
    $P1396 = $P1395."backtrack"("f")
    .return ($P1396)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1380"  :anon :subid("118_1256225882.94197") :outer("117_1256225882.94197")
.annotate "line", 492
    find_lex $P1382, "$ast"
    unless_null $P1382, vivify_505
    new $P1382, "Undef"
  vivify_505:
    $P1383 = $P1382."backtrack"("r")
    .return ($P1383)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("121_1256225882.94197") :outer("11_1256225882.94197")
    .param pmc param_1415
    .param pmc param_1416
.annotate "line", 498
    .const 'Sub' $P1421 = "122_1256225882.94197" 
    capture_lex $P1421
    new $P1414, 'ExceptionHandler'
    set_addr $P1414, control_1413
    $P1414."handle_types"(58)
    push_eh $P1414
    .lex "$past", param_1415
    .lex "$name", param_1416
.annotate "line", 499
    find_lex $P1418, "$past"
    unless_null $P1418, vivify_507
    new $P1418, "Hash"
  vivify_507:
    set $P1419, $P1418["aliased"]
    unless_null $P1419, vivify_508
    new $P1419, "Undef"
  vivify_508:
    unless $P1419, if_1417_end
    .const 'Sub' $P1421 = "122_1256225882.94197" 
    capture_lex $P1421
    $P1421()
  if_1417_end:
.annotate "line", 500
    find_lex $P1427, "$past"
    unless_null $P1427, vivify_511
    new $P1427, "Undef"
  vivify_511:
    find_lex $P1428, "$name"
    unless_null $P1428, vivify_512
    new $P1428, "Undef"
  vivify_512:
    $P1427."name"($P1428)
.annotate "line", 501
    new $P1429, "Integer"
    assign $P1429, 1
    find_lex $P1430, "$past"
    unless_null $P1430, vivify_513
    new $P1430, "Hash"
    store_lex "$past", $P1430
  vivify_513:
    set $P1430["aliased"], $P1429
.annotate "line", 498
    .return ($P1429)
  control_1413:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1431, exception, "payload"
    .return ($P1431)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1420"  :anon :subid("122_1256225882.94197") :outer("121_1256225882.94197")
.annotate "line", 499
    find_lex $P1422, "$name"
    unless_null $P1422, vivify_509
    new $P1422, "Undef"
  vivify_509:
    concat $P1423, $P1422, "="
    find_lex $P1424, "$past"
    unless_null $P1424, vivify_510
    new $P1424, "Undef"
  vivify_510:
    $S1425 = $P1424."name"()
    concat $P1426, $P1423, $S1425
    store_lex "$name", $P1426
    .return ($P1426)
.end

### .include 'src/cheats/p6regex-grammar.pir'
.namespace ['Regex';'P6Regex';'Grammar']

.sub 'panic' :method
    .param pmc args            :slurpy

    .local int pos
    .local pmc target
    $I0 = isa self, ['Regex';'Cursor']
    if $I0 goto cursor_pos
    pos = self.'to'()
    target = self.'orig'()
    goto have_pos
  cursor_pos:
    pos = self.'pos'()
    target = getattribute self, '$!target'
  have_pos:

    $I1 = target.'lineof'(pos)
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

.sub 'obs' :method
    .param string oldstr
    .param pmc options         :slurpy :named

    .local string newstr
    $P0 = split ';', oldstr
    oldstr = $P0[0]
    newstr = $P0[1]

    self.'panic'('Obsolete use of ', oldstr, '; please use ', newstr, ' instead')
.end

.namespace ['Regex';'P6Regex';'Compiler']

.sub '' :anon :load :init
    load_bytecode 'PCT.pbc'
    .local pmc p6meta, p6regex
    p6meta = get_hll_global 'P6metaclass'
    p6regex = p6meta.'new_class'('Regex::P6Regex::Compiler', 'parent'=>'HLL::Compiler')
    p6regex.'language'('Regex::P6Regex')
    $P0 = get_hll_global ['Regex';'P6Regex'], 'Grammar'
    p6regex.'parsegrammar'($P0)
    $P0 = get_hll_global ['Regex';'P6Regex'], 'Actions'
    p6regex.'parseactions'($P0)
.end


.sub 'main' :main
    .param pmc args_str

    $P0 = compreg 'Regex::P6Regex'
    $P1 = $P0.'command_line'(args_str, 'encoding'=>'utf8', 'transcode'=>'ascii iso-8859-1')
    exit 0
.end


=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
