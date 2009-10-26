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


.sub 'prefix_anchor' :method
    .param string prefix
    .param pmc tail

    unless tail goto anchor_done
    .local pmc head
    head = shift tail
    .tailcall head.'prefix'(prefix, tail :flat)
  anchor_done:
    .return (prefix)
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
    spast = $P99.'new'( selfpast, name, prefix, 'name'=>'!PREFIX__!subrule', 'pasttype'=>'callmethod')
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


=item 'pastnode'(PAST::Regex node)

=cut

.sub 'pastnode' :method :multi(_, ['PAST';'Regex'])
    .param pmc node
    $P0 = node[0]
    .tailcall self.'as_post'($P0)
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
    setattribute match, '$!cursor', self
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
    unless token > '' goto fail
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
    # protoregex methods as keys in C<prototable>.  First
    # get a list of all of the methods that begin with "name:sym<".
    .local string mprefix
    .local int mlen
    mprefix = concat name, ':sym<'
    mlen   = length mprefix
    .local pmc methodlist, proto_it
    methodlist = new ['ResizableStringArray']
    proto_it = iter prototable
  proto_loop:
    unless proto_it goto proto_done
    .local string methodname
    methodname = shift proto_it
    $S0 = substr methodname, 0, mlen
    if $S0 != mprefix goto proto_loop
    push methodlist, methodname
    goto proto_loop
  proto_done:
  
    # Now, walk through all of the methods, building the
    # tokrx and toklen tables as we go.
    .local pmc sorttok
    sorttok = new ['ResizablePMCArray']
  method_loop:
    unless methodlist goto method_done
    methodname = shift methodlist

    # Look up the method itself.
    .local pmc rx
    rx = find_method self, methodname

    # Now find the prefix tokens for the method; calling the
    # method name with a !PREFIX__ prefix should return us a list
    # of valid token prefixes.  If no such method exists, then
    # our token prefix is a null string.
    .local pmc tokens, tokens_it
    $S0 = concat '!PREFIX__', methodname
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
    

=item !PREFIX__!protoregex(name)

Return the set of initial tokens for protoregex C<name>.
These are conveniently available as the keys of the
tokrx hash.

=cut

.sub '!PREFIX__!protoregex' :method
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


.sub '!PREFIX__!subrule' :method
    .param string name
    .param string prefix

    .local string peekname
    peekname = concat '!PREFIX__', name
    $I0 = can self, peekname
    unless $I0 goto subrule_none

    # make sure we aren't recursing
    .local pmc context
    $P0 = getinterp
    context = $P0['context';1]
  caller_loop:
    if null context goto caller_done
    $P0 = context['current_sub']
    $S0 = $P0
    # stop if we find a name that doesn't begin with ! (33)
    $I0 = ord $S0
    if $I0 != 33 goto caller_done
    if $S0 == peekname goto subrule_none
    context = context['caller_ctx']
    goto caller_loop
  caller_done:

    .local pmc tokens, tokens_it
    tokens = self.peekname()
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
    $P0 = p6meta.'new_class'('Regex::Match', 'parent'=>'Capture', 'attr'=>'$!cursor $!target $!from $!to $!ast')
    .return ()
.end

=head2 Methods

=over 4

=item CURSOR()

Returns the Cursor associated with this match object.

=cut

.sub 'CURSOR' :method
    $P0 = getattribute self, '$!cursor'
    .return ($P0)
.end

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
### .include 'gen/p6regex-grammar.pir'

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block11"  :subid("10_1256575576.91565")
.annotate "line", 0
    .const 'Sub' $P463 = "148_1256575576.91565" 
    capture_lex $P463
    .const 'Sub' $P456 = "146_1256575576.91565" 
    capture_lex $P456
    .const 'Sub' $P449 = "144_1256575576.91565" 
    capture_lex $P449
    .const 'Sub' $P429 = "139_1256575576.91565" 
    capture_lex $P429
    .const 'Sub' $P395 = "133_1256575576.91565" 
    capture_lex $P395
    .const 'Sub' $P384 = "130_1256575576.91565" 
    capture_lex $P384
    .const 'Sub' $P372 = "127_1256575576.91565" 
    capture_lex $P372
    .const 'Sub' $P367 = "125_1256575576.91565" 
    capture_lex $P367
    .const 'Sub' $P357 = "122_1256575576.91565" 
    capture_lex $P357
    .const 'Sub' $P347 = "119_1256575576.91565" 
    capture_lex $P347
    .const 'Sub' $P339 = "115_1256575576.91565" 
    capture_lex $P339
    .const 'Sub' $P334 = "113_1256575576.91565" 
    capture_lex $P334
    .const 'Sub' $P329 = "111_1256575576.91565" 
    capture_lex $P329
    .const 'Sub' $P324 = "109_1256575576.91565" 
    capture_lex $P324
    .const 'Sub' $P319 = "107_1256575576.91565" 
    capture_lex $P319
    .const 'Sub' $P314 = "105_1256575576.91565" 
    capture_lex $P314
    .const 'Sub' $P309 = "103_1256575576.91565" 
    capture_lex $P309
    .const 'Sub' $P304 = "101_1256575576.91565" 
    capture_lex $P304
    .const 'Sub' $P299 = "99_1256575576.91565" 
    capture_lex $P299
    .const 'Sub' $P294 = "97_1256575576.91565" 
    capture_lex $P294
    .const 'Sub' $P289 = "95_1256575576.91565" 
    capture_lex $P289
    .const 'Sub' $P284 = "93_1256575576.91565" 
    capture_lex $P284
    .const 'Sub' $P279 = "91_1256575576.91565" 
    capture_lex $P279
    .const 'Sub' $P268 = "87_1256575576.91565" 
    capture_lex $P268
    .const 'Sub' $P257 = "85_1256575576.91565" 
    capture_lex $P257
    .const 'Sub' $P251 = "83_1256575576.91565" 
    capture_lex $P251
    .const 'Sub' $P235 = "81_1256575576.91565" 
    capture_lex $P235
    .const 'Sub' $P229 = "79_1256575576.91565" 
    capture_lex $P229
    .const 'Sub' $P224 = "77_1256575576.91565" 
    capture_lex $P224
    .const 'Sub' $P219 = "75_1256575576.91565" 
    capture_lex $P219
    .const 'Sub' $P213 = "73_1256575576.91565" 
    capture_lex $P213
    .const 'Sub' $P207 = "71_1256575576.91565" 
    capture_lex $P207
    .const 'Sub' $P202 = "69_1256575576.91565" 
    capture_lex $P202
    .const 'Sub' $P197 = "67_1256575576.91565" 
    capture_lex $P197
    .const 'Sub' $P192 = "65_1256575576.91565" 
    capture_lex $P192
    .const 'Sub' $P187 = "63_1256575576.91565" 
    capture_lex $P187
    .const 'Sub' $P182 = "61_1256575576.91565" 
    capture_lex $P182
    .const 'Sub' $P177 = "59_1256575576.91565" 
    capture_lex $P177
    .const 'Sub' $P172 = "57_1256575576.91565" 
    capture_lex $P172
    .const 'Sub' $P167 = "55_1256575576.91565" 
    capture_lex $P167
    .const 'Sub' $P162 = "53_1256575576.91565" 
    capture_lex $P162
    .const 'Sub' $P157 = "51_1256575576.91565" 
    capture_lex $P157
    .const 'Sub' $P152 = "49_1256575576.91565" 
    capture_lex $P152
    .const 'Sub' $P137 = "44_1256575576.91565" 
    capture_lex $P137
    .const 'Sub' $P126 = "42_1256575576.91565" 
    capture_lex $P126
    .const 'Sub' $P120 = "40_1256575576.91565" 
    capture_lex $P120
    .const 'Sub' $P114 = "38_1256575576.91565" 
    capture_lex $P114
    .const 'Sub' $P108 = "36_1256575576.91565" 
    capture_lex $P108
    .const 'Sub' $P90 = "31_1256575576.91565" 
    capture_lex $P90
    .const 'Sub' $P78 = "28_1256575576.91565" 
    capture_lex $P78
    .const 'Sub' $P72 = "26_1256575576.91565" 
    capture_lex $P72
    .const 'Sub' $P61 = "24_1256575576.91565" 
    capture_lex $P61
    .const 'Sub' $P55 = "22_1256575576.91565" 
    capture_lex $P55
    .const 'Sub' $P43 = "20_1256575576.91565" 
    capture_lex $P43
    .const 'Sub' $P36 = "18_1256575576.91565" 
    capture_lex $P36
    .const 'Sub' $P29 = "16_1256575576.91565" 
    capture_lex $P29
    .const 'Sub' $P20 = "13_1256575576.91565" 
    capture_lex $P20
    .const 'Sub' $P13 = "11_1256575576.91565" 
    capture_lex $P13
.annotate "line", 169
    .const 'Sub' $P463 = "148_1256575576.91565" 
    capture_lex $P463
.annotate "line", 1
    .return ($P463)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post150") :outer("10_1256575576.91565")
.annotate "line", 0
    get_hll_global $P12, ["Regex";"P6Regex";"Grammar"], "_block11" 
    .local pmc block
    set block, $P12
.annotate "line", 1
    get_hll_global $P470, "P6metaclass"
    $P470."new_class"("Regex::P6Regex::Grammar", "Regex::Cursor" :named("parent"))
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("11_1256575576.91565") :method :outer("10_1256575576.91565")
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
.sub "!PREFIX__ws"  :subid("12_1256575576.91565") :method
.annotate "line", 3
    new $P16, "ResizablePMCArray"
    push $P16, ""
    .return ($P16)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("13_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 5
    .const 'Sub' $P25 = "15_1256575576.91565" 
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
    .const 'Sub' $P25 = "15_1256575576.91565" 
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
.sub "!PREFIX__normspace"  :subid("14_1256575576.91565") :method
.annotate "line", 5
    new $P23, "ResizablePMCArray"
    push $P23, ""
    .return ($P23)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block24"  :anon :subid("15_1256575576.91565") :method :outer("13_1256575576.91565")
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
.sub "quote"  :subid("16_1256575576.91565") :method :outer("10_1256575576.91565")
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
.sub "!PREFIX__quote"  :subid("17_1256575576.91565") :method
.annotate "line", 7
    new $P32, "ResizablePMCArray"
    push $P32, "'"
    .return ($P32)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("18_1256575576.91565") :method :outer("10_1256575576.91565")
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
  alt41_0:
.annotate "line", 10
    set_addr $I10, alt41_1
    rx37_cur."!mark_push"(0, rx37_pos, $I10)
.annotate "line", 11
  # rx subrule "quote" subtype=capture negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."quote"()
    unless $P10, rx37_fail
    rx37_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx37_pos = $P10."pos"()
    goto alt41_end
  alt41_1:
.annotate "line", 12
  # rx subcapture "value"
    set_addr $I10, rxcap_42_fail
    rx37_cur."!mark_push"(0, rx37_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx37_pos, rx37_off
    find_not_cclass $I11, 8, rx37_tgt, $I10, rx37_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx37_fail
    add rx37_pos, rx37_off, $I11
    set_addr $I10, rxcap_42_fail
    ($I12, $I11) = rx37_cur."!mark_peek"($I10)
    rx37_cur."!cursor_pos"($I11)
    ($P10) = rx37_cur."!cursor_start"()
    $P10."!cursor_pass"(rx37_pos, "")
    rx37_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    goto rxcap_42_done
  rxcap_42_fail:
    goto rx37_fail
  rxcap_42_done:
  alt41_end:
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
.sub "!PREFIX__arg"  :subid("19_1256575576.91565") :method
.annotate "line", 9
    $P39 = self."!PREFIX__!subrule"("quote", "")
    new $P40, "ResizablePMCArray"
    push $P40, ""
    push $P40, $P39
    .return ($P40)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("20_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 16
    .local string rx44_tgt
    .local int rx44_pos
    .local int rx44_off
    .local int rx44_eos
    .local int rx44_rep
    .local pmc rx44_cur
    (rx44_cur, rx44_pos, rx44_tgt, $I10) = self."!cursor_start"()
    rx44_cur."!cursor_debug"("START ", "arglist")
    rx44_cur."!cursor_caparray"("arg")
    .lex unicode:"$\x{a2}", rx44_cur
    length rx44_eos, rx44_tgt
    set rx44_off, 0
    lt $I10, 2, rx44_start
    sub rx44_off, $I10, 1
    substr rx44_tgt, rx44_tgt, rx44_off
  rx44_start:
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."arg"()
    unless $P10, rx44_fail
    rx44_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx44_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
  # rx rxquantr49 ** 0..*
    set_addr $I53, rxquantr49_done
    rx44_cur."!mark_push"(0, rx44_pos, $I53)
  rxquantr49_loop:
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx44_pos, 1
    gt $I11, rx44_eos, rx44_fail
    sub $I11, rx44_pos, rx44_off
    substr $S10, rx44_tgt, $I11, 1
    ne $S10, ",", rx44_fail
    add rx44_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."arg"()
    unless $P10, rx44_fail
    rx44_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx44_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
    (rx44_rep) = rx44_cur."!mark_commit"($I53)
    rx44_cur."!mark_push"(rx44_rep, rx44_pos, $I53)
    goto rxquantr49_loop
  rxquantr49_done:
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
  # rx pass
    rx44_cur."!cursor_pass"(rx44_pos, "arglist")
    rx44_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx44_pos)
    .return (rx44_cur)
  rx44_fail:
    (rx44_rep, rx44_pos, $I10, $P10) = rx44_cur."!mark_fail"(0)
    lt rx44_pos, -1, rx44_done
    eq rx44_pos, -1, rx44_fail
    jump $I10
  rx44_done:
    rx44_cur."!cursor_fail"()
    rx44_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx44_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :subid("21_1256575576.91565") :method
.annotate "line", 16
    new $P46, "ResizablePMCArray"
    push $P46, ""
    .return ($P46)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("22_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 18
    .local string rx56_tgt
    .local int rx56_pos
    .local int rx56_off
    .local int rx56_eos
    .local int rx56_rep
    .local pmc rx56_cur
    (rx56_cur, rx56_pos, rx56_tgt, $I10) = self."!cursor_start"()
    rx56_cur."!cursor_debug"("START ", "TOP")
    .lex unicode:"$\x{a2}", rx56_cur
    length rx56_eos, rx56_tgt
    set rx56_off, 0
    lt $I10, 2, rx56_start
    sub rx56_off, $I10, 1
    substr rx56_tgt, rx56_tgt, rx56_off
  rx56_start:
.annotate "line", 19
  # rx subrule "nibbler" subtype=capture negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."nibbler"()
    unless $P10, rx56_fail
    rx56_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx56_pos = $P10."pos"()
  alt60_0:
.annotate "line", 20
    set_addr $I10, alt60_1
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
  # rxanchor eos
    ne rx56_pos, rx56_eos, rx56_fail
    goto alt60_end
  alt60_1:
  # rx subrule "panic" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."panic"("Confused")
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  alt60_end:
.annotate "line", 18
  # rx pass
    rx56_cur."!cursor_pass"(rx56_pos, "TOP")
    rx56_cur."!cursor_debug"("PASS  ", "TOP", " at pos=", rx56_pos)
    .return (rx56_cur)
  rx56_fail:
    (rx56_rep, rx56_pos, $I10, $P10) = rx56_cur."!mark_fail"(0)
    lt rx56_pos, -1, rx56_done
    eq rx56_pos, -1, rx56_fail
    jump $I10
  rx56_done:
    rx56_cur."!cursor_fail"()
    rx56_cur."!cursor_debug"("FAIL  ", "TOP")
    .return (rx56_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :subid("23_1256575576.91565") :method
.annotate "line", 18
    $P58 = self."!PREFIX__!subrule"("nibbler", "")
    new $P59, "ResizablePMCArray"
    push $P59, $P58
    .return ($P59)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("24_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 23
    .local string rx62_tgt
    .local int rx62_pos
    .local int rx62_off
    .local int rx62_eos
    .local int rx62_rep
    .local pmc rx62_cur
    (rx62_cur, rx62_pos, rx62_tgt, $I10) = self."!cursor_start"()
    rx62_cur."!cursor_debug"("START ", "nibbler")
    rx62_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx62_cur
    length rx62_eos, rx62_tgt
    set rx62_off, 0
    lt $I10, 2, rx62_start
    sub rx62_off, $I10, 1
    substr rx62_tgt, rx62_tgt, rx62_off
  rx62_start:
.annotate "line", 24
  # rx reduce name="nibbler" key="open"
    rx62_cur."!cursor_pos"(rx62_pos)
    rx62_cur."!reduce"("nibbler", "open")
.annotate "line", 25
  # rx rxquantr65 ** 0..1
    set_addr $I67, rxquantr65_done
    rx62_cur."!mark_push"(0, rx62_pos, $I67)
  rxquantr65_loop:
  # rx subrule "ws" subtype=method negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."ws"()
    unless $P10, rx62_fail
    rx62_pos = $P10."pos"()
  alt66_0:
    set_addr $I10, alt66_1
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  # rx literal  "||"
    add $I11, rx62_pos, 2
    gt $I11, rx62_eos, rx62_fail
    sub $I11, rx62_pos, rx62_off
    substr $S10, rx62_tgt, $I11, 2
    ne $S10, "||", rx62_fail
    add rx62_pos, 2
    goto alt66_end
  alt66_1:
    set_addr $I10, alt66_2
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  # rx literal  "|"
    add $I11, rx62_pos, 1
    gt $I11, rx62_eos, rx62_fail
    sub $I11, rx62_pos, rx62_off
    substr $S10, rx62_tgt, $I11, 1
    ne $S10, "|", rx62_fail
    add rx62_pos, 1
    goto alt66_end
  alt66_2:
    set_addr $I10, alt66_3
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  # rx literal  "&&"
    add $I11, rx62_pos, 2
    gt $I11, rx62_eos, rx62_fail
    sub $I11, rx62_pos, rx62_off
    substr $S10, rx62_tgt, $I11, 2
    ne $S10, "&&", rx62_fail
    add rx62_pos, 2
    goto alt66_end
  alt66_3:
  # rx literal  "&"
    add $I11, rx62_pos, 1
    gt $I11, rx62_eos, rx62_fail
    sub $I11, rx62_pos, rx62_off
    substr $S10, rx62_tgt, $I11, 1
    ne $S10, "&", rx62_fail
    add rx62_pos, 1
  alt66_end:
    (rx62_rep) = rx62_cur."!mark_commit"($I67)
  rxquantr65_done:
.annotate "line", 26
  # rx subrule "termish" subtype=capture negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."termish"()
    unless $P10, rx62_fail
    rx62_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx62_pos = $P10."pos"()
.annotate "line", 29
  # rx rxquantr68 ** 0..*
    set_addr $I71, rxquantr68_done
    rx62_cur."!mark_push"(0, rx62_pos, $I71)
  rxquantr68_loop:
  alt69_0:
.annotate "line", 27
    set_addr $I10, alt69_1
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  # rx literal  "||"
    add $I11, rx62_pos, 2
    gt $I11, rx62_eos, rx62_fail
    sub $I11, rx62_pos, rx62_off
    substr $S10, rx62_tgt, $I11, 2
    ne $S10, "||", rx62_fail
    add rx62_pos, 2
    goto alt69_end
  alt69_1:
  # rx literal  "|"
    add $I11, rx62_pos, 1
    gt $I11, rx62_eos, rx62_fail
    sub $I11, rx62_pos, rx62_off
    substr $S10, rx62_tgt, $I11, 1
    ne $S10, "|", rx62_fail
    add rx62_pos, 1
  alt69_end:
  alt70_0:
.annotate "line", 28
    set_addr $I10, alt70_1
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."termish"()
    unless $P10, rx62_fail
    rx62_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx62_pos = $P10."pos"()
    goto alt70_end
  alt70_1:
  # rx subrule "panic" subtype=method negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."panic"("Null pattern not allowed")
    unless $P10, rx62_fail
    rx62_pos = $P10."pos"()
  alt70_end:
.annotate "line", 29
    (rx62_rep) = rx62_cur."!mark_commit"($I71)
    rx62_cur."!mark_push"(rx62_rep, rx62_pos, $I71)
    goto rxquantr68_loop
  rxquantr68_done:
.annotate "line", 23
  # rx pass
    rx62_cur."!cursor_pass"(rx62_pos, "nibbler")
    rx62_cur."!cursor_debug"("PASS  ", "nibbler", " at pos=", rx62_pos)
    .return (rx62_cur)
  rx62_fail:
    (rx62_rep, rx62_pos, $I10, $P10) = rx62_cur."!mark_fail"(0)
    lt rx62_pos, -1, rx62_done
    eq rx62_pos, -1, rx62_fail
    jump $I10
  rx62_done:
    rx62_cur."!cursor_fail"()
    rx62_cur."!cursor_debug"("FAIL  ", "nibbler")
    .return (rx62_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :subid("25_1256575576.91565") :method
.annotate "line", 23
    new $P64, "ResizablePMCArray"
    push $P64, ""
    .return ($P64)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("26_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 32
    .local string rx73_tgt
    .local int rx73_pos
    .local int rx73_off
    .local int rx73_eos
    .local int rx73_rep
    .local pmc rx73_cur
    (rx73_cur, rx73_pos, rx73_tgt, $I10) = self."!cursor_start"()
    rx73_cur."!cursor_debug"("START ", "termish")
    rx73_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx73_cur
    length rx73_eos, rx73_tgt
    set rx73_off, 0
    lt $I10, 2, rx73_start
    sub rx73_off, $I10, 1
    substr rx73_tgt, rx73_tgt, rx73_off
  rx73_start:
.annotate "line", 33
  # rx rxquantr76 ** 1..*
    set_addr $I77, rxquantr76_done
    rx73_cur."!mark_push"(0, -1, $I77)
  rxquantr76_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx73_cur."!cursor_pos"(rx73_pos)
    $P10 = rx73_cur."quantified_atom"()
    unless $P10, rx73_fail
    rx73_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("noun")
    rx73_pos = $P10."pos"()
    (rx73_rep) = rx73_cur."!mark_commit"($I77)
    rx73_cur."!mark_push"(rx73_rep, rx73_pos, $I77)
    goto rxquantr76_loop
  rxquantr76_done:
.annotate "line", 32
  # rx pass
    rx73_cur."!cursor_pass"(rx73_pos, "termish")
    rx73_cur."!cursor_debug"("PASS  ", "termish", " at pos=", rx73_pos)
    .return (rx73_cur)
  rx73_fail:
    (rx73_rep, rx73_pos, $I10, $P10) = rx73_cur."!mark_fail"(0)
    lt rx73_pos, -1, rx73_done
    eq rx73_pos, -1, rx73_fail
    jump $I10
  rx73_done:
    rx73_cur."!cursor_fail"()
    rx73_cur."!cursor_debug"("FAIL  ", "termish")
    .return (rx73_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :subid("27_1256575576.91565") :method
.annotate "line", 32
    new $P75, "ResizablePMCArray"
    push $P75, ""
    .return ($P75)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("28_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 36
    .const 'Sub' $P86 = "30_1256575576.91565" 
    capture_lex $P86
    .local string rx79_tgt
    .local int rx79_pos
    .local int rx79_off
    .local int rx79_eos
    .local int rx79_rep
    .local pmc rx79_cur
    (rx79_cur, rx79_pos, rx79_tgt, $I10) = self."!cursor_start"()
    rx79_cur."!cursor_debug"("START ", "quantified_atom")
    rx79_cur."!cursor_caparray"("backmod", "quantifier")
    .lex unicode:"$\x{a2}", rx79_cur
    length rx79_eos, rx79_tgt
    set rx79_off, 0
    lt $I10, 2, rx79_start
    sub rx79_off, $I10, 1
    substr rx79_tgt, rx79_tgt, rx79_off
  rx79_start:
.annotate "line", 37
  # rx subrule "atom" subtype=capture negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."atom"()
    unless $P10, rx79_fail
    rx79_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx79_pos = $P10."pos"()
  # rx rxquantr83 ** 0..1
    set_addr $I89, rxquantr83_done
    rx79_cur."!mark_push"(0, rx79_pos, $I89)
  rxquantr83_loop:
  # rx subrule "ws" subtype=method negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."ws"()
    unless $P10, rx79_fail
    rx79_pos = $P10."pos"()
  alt84_0:
    set_addr $I10, alt84_1
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."quantifier"()
    unless $P10, rx79_fail
    rx79_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx79_pos = $P10."pos"()
    goto alt84_end
  alt84_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    .const 'Sub' $P86 = "30_1256575576.91565" 
    capture_lex $P86
    $P10 = rx79_cur."before"($P86)
    unless $P10, rx79_fail
  # rx subrule "backmod" subtype=capture negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."backmod"()
    unless $P10, rx79_fail
    rx79_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx79_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."alpha"()
    if $P10, rx79_fail
  alt84_end:
    (rx79_rep) = rx79_cur."!mark_commit"($I89)
  rxquantr83_done:
.annotate "line", 36
  # rx pass
    rx79_cur."!cursor_pass"(rx79_pos, "quantified_atom")
    rx79_cur."!cursor_debug"("PASS  ", "quantified_atom", " at pos=", rx79_pos)
    .return (rx79_cur)
  rx79_fail:
    (rx79_rep, rx79_pos, $I10, $P10) = rx79_cur."!mark_fail"(0)
    lt rx79_pos, -1, rx79_done
    eq rx79_pos, -1, rx79_fail
    jump $I10
  rx79_done:
    rx79_cur."!cursor_fail"()
    rx79_cur."!cursor_debug"("FAIL  ", "quantified_atom")
    .return (rx79_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :subid("29_1256575576.91565") :method
.annotate "line", 36
    $P81 = self."!PREFIX__!subrule"("atom", "")
    new $P82, "ResizablePMCArray"
    push $P82, $P81
    .return ($P82)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block85"  :anon :subid("30_1256575576.91565") :method :outer("28_1256575576.91565")
.annotate "line", 37
    .local string rx87_tgt
    .local int rx87_pos
    .local int rx87_off
    .local int rx87_eos
    .local int rx87_rep
    .local pmc rx87_cur
    (rx87_cur, rx87_pos, rx87_tgt, $I10) = self."!cursor_start"()
    rx87_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx87_cur
    length rx87_eos, rx87_tgt
    set rx87_off, 0
    lt $I10, 2, rx87_start
    sub rx87_off, $I10, 1
    substr rx87_tgt, rx87_tgt, rx87_off
  rx87_start:
    ge rx87_pos, 0, rxscan88_done
  rxscan88_loop:
    ($P10) = rx87_cur."from"()
    inc $P10
    set rx87_pos, $P10
    ge rx87_pos, rx87_eos, rxscan88_done
    set_addr $I10, rxscan88_loop
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  rxscan88_done:
  # rx literal  ":"
    add $I11, rx87_pos, 1
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    substr $S10, rx87_tgt, $I11, 1
    ne $S10, ":", rx87_fail
    add rx87_pos, 1
  # rx pass
    rx87_cur."!cursor_pass"(rx87_pos, "")
    rx87_cur."!cursor_debug"("PASS  ", "", " at pos=", rx87_pos)
    .return (rx87_cur)
  rx87_fail:
    (rx87_rep, rx87_pos, $I10, $P10) = rx87_cur."!mark_fail"(0)
    lt rx87_pos, -1, rx87_done
    eq rx87_pos, -1, rx87_fail
    jump $I10
  rx87_done:
    rx87_cur."!cursor_fail"()
    rx87_cur."!cursor_debug"("FAIL  ", "")
    .return (rx87_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("31_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 40
    .const 'Sub' $P100 = "33_1256575576.91565" 
    capture_lex $P100
    .local string rx91_tgt
    .local int rx91_pos
    .local int rx91_off
    .local int rx91_eos
    .local int rx91_rep
    .local pmc rx91_cur
    (rx91_cur, rx91_pos, rx91_tgt, $I10) = self."!cursor_start"()
    rx91_cur."!cursor_debug"("START ", "atom")
    .lex unicode:"$\x{a2}", rx91_cur
    length rx91_eos, rx91_tgt
    set rx91_off, 0
    lt $I10, 2, rx91_start
    sub rx91_off, $I10, 1
    substr rx91_tgt, rx91_tgt, rx91_off
  rx91_start:
  alt95_0:
.annotate "line", 42
    set_addr $I10, alt95_1
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
.annotate "line", 43
  # rx charclass w
    ge rx91_pos, rx91_eos, rx91_fail
    sub $I10, rx91_pos, rx91_off
    is_cclass $I11, 8192, rx91_tgt, $I10
    unless $I11, rx91_fail
    inc rx91_pos
  # rx rxquantr96 ** 0..1
    set_addr $I103, rxquantr96_done
    rx91_cur."!mark_push"(0, rx91_pos, $I103)
  rxquantr96_loop:
  # rx rxquantg97 ** 1..*
    set_addr $I98, rxquantg97_done
  rxquantg97_loop:
  # rx charclass w
    ge rx91_pos, rx91_eos, rx91_fail
    sub $I10, rx91_pos, rx91_off
    is_cclass $I11, 8192, rx91_tgt, $I10
    unless $I11, rx91_fail
    inc rx91_pos
    rx91_cur."!mark_push"(rx91_rep, rx91_pos, $I98)
    goto rxquantg97_loop
  rxquantg97_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx91_cur."!cursor_pos"(rx91_pos)
    .const 'Sub' $P100 = "33_1256575576.91565" 
    capture_lex $P100
    $P10 = rx91_cur."before"($P100)
    unless $P10, rx91_fail
    (rx91_rep) = rx91_cur."!mark_commit"($I103)
  rxquantr96_done:
    goto alt95_end
  alt95_1:
.annotate "line", 44
  # rx subrule "metachar" subtype=capture negate=
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."metachar"()
    unless $P10, rx91_fail
    rx91_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx91_pos = $P10."pos"()
  alt95_end:
.annotate "line", 40
  # rx pass
    rx91_cur."!cursor_pass"(rx91_pos, "atom")
    rx91_cur."!cursor_debug"("PASS  ", "atom", " at pos=", rx91_pos)
    .return (rx91_cur)
  rx91_fail:
    (rx91_rep, rx91_pos, $I10, $P10) = rx91_cur."!mark_fail"(0)
    lt rx91_pos, -1, rx91_done
    eq rx91_pos, -1, rx91_fail
    jump $I10
  rx91_done:
    rx91_cur."!cursor_fail"()
    rx91_cur."!cursor_debug"("FAIL  ", "atom")
    .return (rx91_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :subid("32_1256575576.91565") :method
.annotate "line", 40
    $P93 = self."!PREFIX__!subrule"("metachar", "")
    new $P94, "ResizablePMCArray"
    push $P94, $P93
    push $P94, ""
    .return ($P94)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block99"  :anon :subid("33_1256575576.91565") :method :outer("31_1256575576.91565")
.annotate "line", 43
    .local string rx101_tgt
    .local int rx101_pos
    .local int rx101_off
    .local int rx101_eos
    .local int rx101_rep
    .local pmc rx101_cur
    (rx101_cur, rx101_pos, rx101_tgt, $I10) = self."!cursor_start"()
    rx101_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx101_cur
    length rx101_eos, rx101_tgt
    set rx101_off, 0
    lt $I10, 2, rx101_start
    sub rx101_off, $I10, 1
    substr rx101_tgt, rx101_tgt, rx101_off
  rx101_start:
    ge rx101_pos, 0, rxscan102_done
  rxscan102_loop:
    ($P10) = rx101_cur."from"()
    inc $P10
    set rx101_pos, $P10
    ge rx101_pos, rx101_eos, rxscan102_done
    set_addr $I10, rxscan102_loop
    rx101_cur."!mark_push"(0, rx101_pos, $I10)
  rxscan102_done:
  # rx charclass w
    ge rx101_pos, rx101_eos, rx101_fail
    sub $I10, rx101_pos, rx101_off
    is_cclass $I11, 8192, rx101_tgt, $I10
    unless $I11, rx101_fail
    inc rx101_pos
  # rx pass
    rx101_cur."!cursor_pass"(rx101_pos, "")
    rx101_cur."!cursor_debug"("PASS  ", "", " at pos=", rx101_pos)
    .return (rx101_cur)
  rx101_fail:
    (rx101_rep, rx101_pos, $I10, $P10) = rx101_cur."!mark_fail"(0)
    lt rx101_pos, -1, rx101_done
    eq rx101_pos, -1, rx101_fail
    jump $I10
  rx101_done:
    rx101_cur."!cursor_fail"()
    rx101_cur."!cursor_debug"("FAIL  ", "")
    .return (rx101_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("34_1256575576.91565") :method
.annotate "line", 48
    $P105 = self."!protoregex"("quantifier")
    .return ($P105)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("35_1256575576.91565") :method
.annotate "line", 48
    $P107 = self."!PREFIX__!protoregex"("quantifier")
    .return ($P107)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("36_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 49
    .local string rx109_tgt
    .local int rx109_pos
    .local int rx109_off
    .local int rx109_eos
    .local int rx109_rep
    .local pmc rx109_cur
    (rx109_cur, rx109_pos, rx109_tgt, $I10) = self."!cursor_start"()
    rx109_cur."!cursor_debug"("START ", "quantifier:sym<*>")
    .lex unicode:"$\x{a2}", rx109_cur
    length rx109_eos, rx109_tgt
    set rx109_off, 0
    lt $I10, 2, rx109_start
    sub rx109_off, $I10, 1
    substr rx109_tgt, rx109_tgt, rx109_off
  rx109_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_113_fail
    rx109_cur."!mark_push"(0, rx109_pos, $I10)
  # rx literal  "*"
    add $I11, rx109_pos, 1
    gt $I11, rx109_eos, rx109_fail
    sub $I11, rx109_pos, rx109_off
    substr $S10, rx109_tgt, $I11, 1
    ne $S10, "*", rx109_fail
    add rx109_pos, 1
    set_addr $I10, rxcap_113_fail
    ($I12, $I11) = rx109_cur."!mark_peek"($I10)
    rx109_cur."!cursor_pos"($I11)
    ($P10) = rx109_cur."!cursor_start"()
    $P10."!cursor_pass"(rx109_pos, "")
    rx109_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_113_done
  rxcap_113_fail:
    goto rx109_fail
  rxcap_113_done:
  # rx subrule "backmod" subtype=capture negate=
    rx109_cur."!cursor_pos"(rx109_pos)
    $P10 = rx109_cur."backmod"()
    unless $P10, rx109_fail
    rx109_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx109_pos = $P10."pos"()
  # rx pass
    rx109_cur."!cursor_pass"(rx109_pos, "quantifier:sym<*>")
    rx109_cur."!cursor_debug"("PASS  ", "quantifier:sym<*>", " at pos=", rx109_pos)
    .return (rx109_cur)
  rx109_fail:
    (rx109_rep, rx109_pos, $I10, $P10) = rx109_cur."!mark_fail"(0)
    lt rx109_pos, -1, rx109_done
    eq rx109_pos, -1, rx109_fail
    jump $I10
  rx109_done:
    rx109_cur."!cursor_fail"()
    rx109_cur."!cursor_debug"("FAIL  ", "quantifier:sym<*>")
    .return (rx109_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :subid("37_1256575576.91565") :method
.annotate "line", 49
    $P111 = self."!PREFIX__!subrule"("backmod", "*")
    new $P112, "ResizablePMCArray"
    push $P112, $P111
    .return ($P112)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("38_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 50
    .local string rx115_tgt
    .local int rx115_pos
    .local int rx115_off
    .local int rx115_eos
    .local int rx115_rep
    .local pmc rx115_cur
    (rx115_cur, rx115_pos, rx115_tgt, $I10) = self."!cursor_start"()
    rx115_cur."!cursor_debug"("START ", "quantifier:sym<+>")
    .lex unicode:"$\x{a2}", rx115_cur
    length rx115_eos, rx115_tgt
    set rx115_off, 0
    lt $I10, 2, rx115_start
    sub rx115_off, $I10, 1
    substr rx115_tgt, rx115_tgt, rx115_off
  rx115_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_119_fail
    rx115_cur."!mark_push"(0, rx115_pos, $I10)
  # rx literal  "+"
    add $I11, rx115_pos, 1
    gt $I11, rx115_eos, rx115_fail
    sub $I11, rx115_pos, rx115_off
    substr $S10, rx115_tgt, $I11, 1
    ne $S10, "+", rx115_fail
    add rx115_pos, 1
    set_addr $I10, rxcap_119_fail
    ($I12, $I11) = rx115_cur."!mark_peek"($I10)
    rx115_cur."!cursor_pos"($I11)
    ($P10) = rx115_cur."!cursor_start"()
    $P10."!cursor_pass"(rx115_pos, "")
    rx115_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_119_done
  rxcap_119_fail:
    goto rx115_fail
  rxcap_119_done:
  # rx subrule "backmod" subtype=capture negate=
    rx115_cur."!cursor_pos"(rx115_pos)
    $P10 = rx115_cur."backmod"()
    unless $P10, rx115_fail
    rx115_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx115_pos = $P10."pos"()
  # rx pass
    rx115_cur."!cursor_pass"(rx115_pos, "quantifier:sym<+>")
    rx115_cur."!cursor_debug"("PASS  ", "quantifier:sym<+>", " at pos=", rx115_pos)
    .return (rx115_cur)
  rx115_fail:
    (rx115_rep, rx115_pos, $I10, $P10) = rx115_cur."!mark_fail"(0)
    lt rx115_pos, -1, rx115_done
    eq rx115_pos, -1, rx115_fail
    jump $I10
  rx115_done:
    rx115_cur."!cursor_fail"()
    rx115_cur."!cursor_debug"("FAIL  ", "quantifier:sym<+>")
    .return (rx115_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :subid("39_1256575576.91565") :method
.annotate "line", 50
    $P117 = self."!PREFIX__!subrule"("backmod", "+")
    new $P118, "ResizablePMCArray"
    push $P118, $P117
    .return ($P118)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("40_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 51
    .local string rx121_tgt
    .local int rx121_pos
    .local int rx121_off
    .local int rx121_eos
    .local int rx121_rep
    .local pmc rx121_cur
    (rx121_cur, rx121_pos, rx121_tgt, $I10) = self."!cursor_start"()
    rx121_cur."!cursor_debug"("START ", "quantifier:sym<?>")
    .lex unicode:"$\x{a2}", rx121_cur
    length rx121_eos, rx121_tgt
    set rx121_off, 0
    lt $I10, 2, rx121_start
    sub rx121_off, $I10, 1
    substr rx121_tgt, rx121_tgt, rx121_off
  rx121_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_125_fail
    rx121_cur."!mark_push"(0, rx121_pos, $I10)
  # rx literal  "?"
    add $I11, rx121_pos, 1
    gt $I11, rx121_eos, rx121_fail
    sub $I11, rx121_pos, rx121_off
    substr $S10, rx121_tgt, $I11, 1
    ne $S10, "?", rx121_fail
    add rx121_pos, 1
    set_addr $I10, rxcap_125_fail
    ($I12, $I11) = rx121_cur."!mark_peek"($I10)
    rx121_cur."!cursor_pos"($I11)
    ($P10) = rx121_cur."!cursor_start"()
    $P10."!cursor_pass"(rx121_pos, "")
    rx121_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_125_done
  rxcap_125_fail:
    goto rx121_fail
  rxcap_125_done:
  # rx subrule "backmod" subtype=capture negate=
    rx121_cur."!cursor_pos"(rx121_pos)
    $P10 = rx121_cur."backmod"()
    unless $P10, rx121_fail
    rx121_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx121_pos = $P10."pos"()
  # rx pass
    rx121_cur."!cursor_pass"(rx121_pos, "quantifier:sym<?>")
    rx121_cur."!cursor_debug"("PASS  ", "quantifier:sym<?>", " at pos=", rx121_pos)
    .return (rx121_cur)
  rx121_fail:
    (rx121_rep, rx121_pos, $I10, $P10) = rx121_cur."!mark_fail"(0)
    lt rx121_pos, -1, rx121_done
    eq rx121_pos, -1, rx121_fail
    jump $I10
  rx121_done:
    rx121_cur."!cursor_fail"()
    rx121_cur."!cursor_debug"("FAIL  ", "quantifier:sym<?>")
    .return (rx121_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :subid("41_1256575576.91565") :method
.annotate "line", 51
    $P123 = self."!PREFIX__!subrule"("backmod", "?")
    new $P124, "ResizablePMCArray"
    push $P124, $P123
    .return ($P124)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("42_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 52
    .local string rx127_tgt
    .local int rx127_pos
    .local int rx127_off
    .local int rx127_eos
    .local int rx127_rep
    .local pmc rx127_cur
    (rx127_cur, rx127_pos, rx127_tgt, $I10) = self."!cursor_start"()
    rx127_cur."!cursor_debug"("START ", "quantifier:sym<**>")
    rx127_cur."!cursor_caparray"("max")
    .lex unicode:"$\x{a2}", rx127_cur
    length rx127_eos, rx127_tgt
    set rx127_off, 0
    lt $I10, 2, rx127_start
    sub rx127_off, $I10, 1
    substr rx127_tgt, rx127_tgt, rx127_off
  rx127_start:
.annotate "line", 53
  # rx subcapture "sym"
    set_addr $I10, rxcap_130_fail
    rx127_cur."!mark_push"(0, rx127_pos, $I10)
  # rx literal  "**"
    add $I11, rx127_pos, 2
    gt $I11, rx127_eos, rx127_fail
    sub $I11, rx127_pos, rx127_off
    substr $S10, rx127_tgt, $I11, 2
    ne $S10, "**", rx127_fail
    add rx127_pos, 2
    set_addr $I10, rxcap_130_fail
    ($I12, $I11) = rx127_cur."!mark_peek"($I10)
    rx127_cur."!cursor_pos"($I11)
    ($P10) = rx127_cur."!cursor_start"()
    $P10."!cursor_pass"(rx127_pos, "")
    rx127_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_130_done
  rxcap_130_fail:
    goto rx127_fail
  rxcap_130_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx127_pos, rx127_off
    find_not_cclass $I11, 32, rx127_tgt, $I10, rx127_eos
    add rx127_pos, rx127_off, $I11
  # rx subrule "backmod" subtype=capture negate=
    rx127_cur."!cursor_pos"(rx127_pos)
    $P10 = rx127_cur."backmod"()
    unless $P10, rx127_fail
    rx127_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx127_pos = $P10."pos"()
  # rx charclass_q s r 0..-1
    sub $I10, rx127_pos, rx127_off
    find_not_cclass $I11, 32, rx127_tgt, $I10, rx127_eos
    add rx127_pos, rx127_off, $I11
  alt131_0:
.annotate "line", 54
    set_addr $I10, alt131_1
    rx127_cur."!mark_push"(0, rx127_pos, $I10)
.annotate "line", 55
  # rx subcapture "min"
    set_addr $I10, rxcap_132_fail
    rx127_cur."!mark_push"(0, rx127_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx127_pos, rx127_off
    find_not_cclass $I11, 8, rx127_tgt, $I10, rx127_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx127_fail
    add rx127_pos, rx127_off, $I11
    set_addr $I10, rxcap_132_fail
    ($I12, $I11) = rx127_cur."!mark_peek"($I10)
    rx127_cur."!cursor_pos"($I11)
    ($P10) = rx127_cur."!cursor_start"()
    $P10."!cursor_pass"(rx127_pos, "")
    rx127_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_132_done
  rxcap_132_fail:
    goto rx127_fail
  rxcap_132_done:
  # rx rxquantr133 ** 0..1
    set_addr $I136, rxquantr133_done
    rx127_cur."!mark_push"(0, rx127_pos, $I136)
  rxquantr133_loop:
  # rx literal  ".."
    add $I11, rx127_pos, 2
    gt $I11, rx127_eos, rx127_fail
    sub $I11, rx127_pos, rx127_off
    substr $S10, rx127_tgt, $I11, 2
    ne $S10, "..", rx127_fail
    add rx127_pos, 2
  # rx subcapture "max"
    set_addr $I10, rxcap_135_fail
    rx127_cur."!mark_push"(0, rx127_pos, $I10)
  alt134_0:
    set_addr $I10, alt134_1
    rx127_cur."!mark_push"(0, rx127_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx127_pos, rx127_off
    find_not_cclass $I11, 8, rx127_tgt, $I10, rx127_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx127_fail
    add rx127_pos, rx127_off, $I11
    goto alt134_end
  alt134_1:
  # rx literal  "*"
    add $I11, rx127_pos, 1
    gt $I11, rx127_eos, rx127_fail
    sub $I11, rx127_pos, rx127_off
    substr $S10, rx127_tgt, $I11, 1
    ne $S10, "*", rx127_fail
    add rx127_pos, 1
  alt134_end:
    set_addr $I10, rxcap_135_fail
    ($I12, $I11) = rx127_cur."!mark_peek"($I10)
    rx127_cur."!cursor_pos"($I11)
    ($P10) = rx127_cur."!cursor_start"()
    $P10."!cursor_pass"(rx127_pos, "")
    rx127_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_135_done
  rxcap_135_fail:
    goto rx127_fail
  rxcap_135_done:
    (rx127_rep) = rx127_cur."!mark_commit"($I136)
  rxquantr133_done:
    goto alt131_end
  alt131_1:
.annotate "line", 56
  # rx subrule "quantified_atom" subtype=capture negate=
    rx127_cur."!cursor_pos"(rx127_pos)
    $P10 = rx127_cur."quantified_atom"()
    unless $P10, rx127_fail
    rx127_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx127_pos = $P10."pos"()
  alt131_end:
.annotate "line", 52
  # rx pass
    rx127_cur."!cursor_pass"(rx127_pos, "quantifier:sym<**>")
    rx127_cur."!cursor_debug"("PASS  ", "quantifier:sym<**>", " at pos=", rx127_pos)
    .return (rx127_cur)
  rx127_fail:
    (rx127_rep, rx127_pos, $I10, $P10) = rx127_cur."!mark_fail"(0)
    lt rx127_pos, -1, rx127_done
    eq rx127_pos, -1, rx127_fail
    jump $I10
  rx127_done:
    rx127_cur."!cursor_fail"()
    rx127_cur."!cursor_debug"("FAIL  ", "quantifier:sym<**>")
    .return (rx127_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :subid("43_1256575576.91565") :method
.annotate "line", 52
    new $P129, "ResizablePMCArray"
    push $P129, "**"
    .return ($P129)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("44_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 60
    .const 'Sub' $P145 = "46_1256575576.91565" 
    capture_lex $P145
    .local string rx138_tgt
    .local int rx138_pos
    .local int rx138_off
    .local int rx138_eos
    .local int rx138_rep
    .local pmc rx138_cur
    (rx138_cur, rx138_pos, rx138_tgt, $I10) = self."!cursor_start"()
    rx138_cur."!cursor_debug"("START ", "backmod")
    .lex unicode:"$\x{a2}", rx138_cur
    length rx138_eos, rx138_tgt
    set rx138_off, 0
    lt $I10, 2, rx138_start
    sub rx138_off, $I10, 1
    substr rx138_tgt, rx138_tgt, rx138_off
  rx138_start:
  # rx rxquantr141 ** 0..1
    set_addr $I142, rxquantr141_done
    rx138_cur."!mark_push"(0, rx138_pos, $I142)
  rxquantr141_loop:
  # rx literal  ":"
    add $I11, rx138_pos, 1
    gt $I11, rx138_eos, rx138_fail
    sub $I11, rx138_pos, rx138_off
    substr $S10, rx138_tgt, $I11, 1
    ne $S10, ":", rx138_fail
    add rx138_pos, 1
    (rx138_rep) = rx138_cur."!mark_commit"($I142)
  rxquantr141_done:
  alt143_0:
    set_addr $I10, alt143_1
    rx138_cur."!mark_push"(0, rx138_pos, $I10)
  # rx literal  "?"
    add $I11, rx138_pos, 1
    gt $I11, rx138_eos, rx138_fail
    sub $I11, rx138_pos, rx138_off
    substr $S10, rx138_tgt, $I11, 1
    ne $S10, "?", rx138_fail
    add rx138_pos, 1
    goto alt143_end
  alt143_1:
    set_addr $I10, alt143_2
    rx138_cur."!mark_push"(0, rx138_pos, $I10)
  # rx literal  "!"
    add $I11, rx138_pos, 1
    gt $I11, rx138_eos, rx138_fail
    sub $I11, rx138_pos, rx138_off
    substr $S10, rx138_tgt, $I11, 1
    ne $S10, "!", rx138_fail
    add rx138_pos, 1
    goto alt143_end
  alt143_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx138_cur."!cursor_pos"(rx138_pos)
    .const 'Sub' $P145 = "46_1256575576.91565" 
    capture_lex $P145
    $P10 = rx138_cur."before"($P145)
    if $P10, rx138_fail
  alt143_end:
  # rx pass
    rx138_cur."!cursor_pass"(rx138_pos, "backmod")
    rx138_cur."!cursor_debug"("PASS  ", "backmod", " at pos=", rx138_pos)
    .return (rx138_cur)
  rx138_fail:
    (rx138_rep, rx138_pos, $I10, $P10) = rx138_cur."!mark_fail"(0)
    lt rx138_pos, -1, rx138_done
    eq rx138_pos, -1, rx138_fail
    jump $I10
  rx138_done:
    rx138_cur."!cursor_fail"()
    rx138_cur."!cursor_debug"("FAIL  ", "backmod")
    .return (rx138_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :subid("45_1256575576.91565") :method
.annotate "line", 60
    new $P140, "ResizablePMCArray"
    push $P140, ""
    .return ($P140)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block144"  :anon :subid("46_1256575576.91565") :method :outer("44_1256575576.91565")
.annotate "line", 60
    .local string rx146_tgt
    .local int rx146_pos
    .local int rx146_off
    .local int rx146_eos
    .local int rx146_rep
    .local pmc rx146_cur
    (rx146_cur, rx146_pos, rx146_tgt, $I10) = self."!cursor_start"()
    rx146_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx146_cur
    length rx146_eos, rx146_tgt
    set rx146_off, 0
    lt $I10, 2, rx146_start
    sub rx146_off, $I10, 1
    substr rx146_tgt, rx146_tgt, rx146_off
  rx146_start:
    ge rx146_pos, 0, rxscan147_done
  rxscan147_loop:
    ($P10) = rx146_cur."from"()
    inc $P10
    set rx146_pos, $P10
    ge rx146_pos, rx146_eos, rxscan147_done
    set_addr $I10, rxscan147_loop
    rx146_cur."!mark_push"(0, rx146_pos, $I10)
  rxscan147_done:
  # rx literal  ":"
    add $I11, rx146_pos, 1
    gt $I11, rx146_eos, rx146_fail
    sub $I11, rx146_pos, rx146_off
    substr $S10, rx146_tgt, $I11, 1
    ne $S10, ":", rx146_fail
    add rx146_pos, 1
  # rx pass
    rx146_cur."!cursor_pass"(rx146_pos, "")
    rx146_cur."!cursor_debug"("PASS  ", "", " at pos=", rx146_pos)
    .return (rx146_cur)
  rx146_fail:
    (rx146_rep, rx146_pos, $I10, $P10) = rx146_cur."!mark_fail"(0)
    lt rx146_pos, -1, rx146_done
    eq rx146_pos, -1, rx146_fail
    jump $I10
  rx146_done:
    rx146_cur."!cursor_fail"()
    rx146_cur."!cursor_debug"("FAIL  ", "")
    .return (rx146_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("47_1256575576.91565") :method
.annotate "line", 62
    $P149 = self."!protoregex"("metachar")
    .return ($P149)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("48_1256575576.91565") :method
.annotate "line", 62
    $P151 = self."!PREFIX__!protoregex"("metachar")
    .return ($P151)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("49_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 63
    .local string rx153_tgt
    .local int rx153_pos
    .local int rx153_off
    .local int rx153_eos
    .local int rx153_rep
    .local pmc rx153_cur
    (rx153_cur, rx153_pos, rx153_tgt, $I10) = self."!cursor_start"()
    rx153_cur."!cursor_debug"("START ", "metachar:sym<ws>")
    .lex unicode:"$\x{a2}", rx153_cur
    length rx153_eos, rx153_tgt
    set rx153_off, 0
    lt $I10, 2, rx153_start
    sub rx153_off, $I10, 1
    substr rx153_tgt, rx153_tgt, rx153_off
  rx153_start:
  # rx subrule "normspace" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."normspace"()
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
  # rx pass
    rx153_cur."!cursor_pass"(rx153_pos, "metachar:sym<ws>")
    rx153_cur."!cursor_debug"("PASS  ", "metachar:sym<ws>", " at pos=", rx153_pos)
    .return (rx153_cur)
  rx153_fail:
    (rx153_rep, rx153_pos, $I10, $P10) = rx153_cur."!mark_fail"(0)
    lt rx153_pos, -1, rx153_done
    eq rx153_pos, -1, rx153_fail
    jump $I10
  rx153_done:
    rx153_cur."!cursor_fail"()
    rx153_cur."!cursor_debug"("FAIL  ", "metachar:sym<ws>")
    .return (rx153_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :subid("50_1256575576.91565") :method
.annotate "line", 63
    $P155 = self."!PREFIX__!subrule"("normspace", "")
    new $P156, "ResizablePMCArray"
    push $P156, $P155
    .return ($P156)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("51_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 64
    .local string rx158_tgt
    .local int rx158_pos
    .local int rx158_off
    .local int rx158_eos
    .local int rx158_rep
    .local pmc rx158_cur
    (rx158_cur, rx158_pos, rx158_tgt, $I10) = self."!cursor_start"()
    rx158_cur."!cursor_debug"("START ", "metachar:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx158_cur
    length rx158_eos, rx158_tgt
    set rx158_off, 0
    lt $I10, 2, rx158_start
    sub rx158_off, $I10, 1
    substr rx158_tgt, rx158_tgt, rx158_off
  rx158_start:
  # rx literal  "["
    add $I11, rx158_pos, 1
    gt $I11, rx158_eos, rx158_fail
    sub $I11, rx158_pos, rx158_off
    substr $S10, rx158_tgt, $I11, 1
    ne $S10, "[", rx158_fail
    add rx158_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx158_cur."!cursor_pos"(rx158_pos)
    $P10 = rx158_cur."nibbler"()
    unless $P10, rx158_fail
    rx158_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx158_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx158_pos, 1
    gt $I11, rx158_eos, rx158_fail
    sub $I11, rx158_pos, rx158_off
    substr $S10, rx158_tgt, $I11, 1
    ne $S10, "]", rx158_fail
    add rx158_pos, 1
  # rx pass
    rx158_cur."!cursor_pass"(rx158_pos, "metachar:sym<[ ]>")
    rx158_cur."!cursor_debug"("PASS  ", "metachar:sym<[ ]>", " at pos=", rx158_pos)
    .return (rx158_cur)
  rx158_fail:
    (rx158_rep, rx158_pos, $I10, $P10) = rx158_cur."!mark_fail"(0)
    lt rx158_pos, -1, rx158_done
    eq rx158_pos, -1, rx158_fail
    jump $I10
  rx158_done:
    rx158_cur."!cursor_fail"()
    rx158_cur."!cursor_debug"("FAIL  ", "metachar:sym<[ ]>")
    .return (rx158_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :subid("52_1256575576.91565") :method
.annotate "line", 64
    $P160 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P161, "ResizablePMCArray"
    push $P161, $P160
    .return ($P161)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("53_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 65
    .local string rx163_tgt
    .local int rx163_pos
    .local int rx163_off
    .local int rx163_eos
    .local int rx163_rep
    .local pmc rx163_cur
    (rx163_cur, rx163_pos, rx163_tgt, $I10) = self."!cursor_start"()
    rx163_cur."!cursor_debug"("START ", "metachar:sym<( )>")
    .lex unicode:"$\x{a2}", rx163_cur
    length rx163_eos, rx163_tgt
    set rx163_off, 0
    lt $I10, 2, rx163_start
    sub rx163_off, $I10, 1
    substr rx163_tgt, rx163_tgt, rx163_off
  rx163_start:
  # rx literal  "("
    add $I11, rx163_pos, 1
    gt $I11, rx163_eos, rx163_fail
    sub $I11, rx163_pos, rx163_off
    substr $S10, rx163_tgt, $I11, 1
    ne $S10, "(", rx163_fail
    add rx163_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."nibbler"()
    unless $P10, rx163_fail
    rx163_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx163_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx163_pos, 1
    gt $I11, rx163_eos, rx163_fail
    sub $I11, rx163_pos, rx163_off
    substr $S10, rx163_tgt, $I11, 1
    ne $S10, ")", rx163_fail
    add rx163_pos, 1
  # rx pass
    rx163_cur."!cursor_pass"(rx163_pos, "metachar:sym<( )>")
    rx163_cur."!cursor_debug"("PASS  ", "metachar:sym<( )>", " at pos=", rx163_pos)
    .return (rx163_cur)
  rx163_fail:
    (rx163_rep, rx163_pos, $I10, $P10) = rx163_cur."!mark_fail"(0)
    lt rx163_pos, -1, rx163_done
    eq rx163_pos, -1, rx163_fail
    jump $I10
  rx163_done:
    rx163_cur."!cursor_fail"()
    rx163_cur."!cursor_debug"("FAIL  ", "metachar:sym<( )>")
    .return (rx163_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :subid("54_1256575576.91565") :method
.annotate "line", 65
    $P165 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P166, "ResizablePMCArray"
    push $P166, $P165
    .return ($P166)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("55_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 66
    .local string rx168_tgt
    .local int rx168_pos
    .local int rx168_off
    .local int rx168_eos
    .local int rx168_rep
    .local pmc rx168_cur
    (rx168_cur, rx168_pos, rx168_tgt, $I10) = self."!cursor_start"()
    rx168_cur."!cursor_debug"("START ", "metachar:sym<'>")
    .lex unicode:"$\x{a2}", rx168_cur
    length rx168_eos, rx168_tgt
    set rx168_off, 0
    lt $I10, 2, rx168_start
    sub rx168_off, $I10, 1
    substr rx168_tgt, rx168_tgt, rx168_off
  rx168_start:
  # rx subrule "quote" subtype=capture negate=
    rx168_cur."!cursor_pos"(rx168_pos)
    $P10 = rx168_cur."quote"()
    unless $P10, rx168_fail
    rx168_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx168_pos = $P10."pos"()
  # rx pass
    rx168_cur."!cursor_pass"(rx168_pos, "metachar:sym<'>")
    rx168_cur."!cursor_debug"("PASS  ", "metachar:sym<'>", " at pos=", rx168_pos)
    .return (rx168_cur)
  rx168_fail:
    (rx168_rep, rx168_pos, $I10, $P10) = rx168_cur."!mark_fail"(0)
    lt rx168_pos, -1, rx168_done
    eq rx168_pos, -1, rx168_fail
    jump $I10
  rx168_done:
    rx168_cur."!cursor_fail"()
    rx168_cur."!cursor_debug"("FAIL  ", "metachar:sym<'>")
    .return (rx168_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :subid("56_1256575576.91565") :method
.annotate "line", 66
    $P170 = self."!PREFIX__!subrule"("quote", "")
    new $P171, "ResizablePMCArray"
    push $P171, $P170
    .return ($P171)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("57_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 67
    .local string rx173_tgt
    .local int rx173_pos
    .local int rx173_off
    .local int rx173_eos
    .local int rx173_rep
    .local pmc rx173_cur
    (rx173_cur, rx173_pos, rx173_tgt, $I10) = self."!cursor_start"()
    rx173_cur."!cursor_debug"("START ", "metachar:sym<.>")
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
  # rx literal  "."
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail
    sub $I11, rx173_pos, rx173_off
    substr $S10, rx173_tgt, $I11, 1
    ne $S10, ".", rx173_fail
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
    rx173_cur."!cursor_pass"(rx173_pos, "metachar:sym<.>")
    rx173_cur."!cursor_debug"("PASS  ", "metachar:sym<.>", " at pos=", rx173_pos)
    .return (rx173_cur)
  rx173_fail:
    (rx173_rep, rx173_pos, $I10, $P10) = rx173_cur."!mark_fail"(0)
    lt rx173_pos, -1, rx173_done
    eq rx173_pos, -1, rx173_fail
    jump $I10
  rx173_done:
    rx173_cur."!cursor_fail"()
    rx173_cur."!cursor_debug"("FAIL  ", "metachar:sym<.>")
    .return (rx173_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :subid("58_1256575576.91565") :method
.annotate "line", 67
    new $P175, "ResizablePMCArray"
    push $P175, "."
    .return ($P175)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("59_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 68
    .local string rx178_tgt
    .local int rx178_pos
    .local int rx178_off
    .local int rx178_eos
    .local int rx178_rep
    .local pmc rx178_cur
    (rx178_cur, rx178_pos, rx178_tgt, $I10) = self."!cursor_start"()
    rx178_cur."!cursor_debug"("START ", "metachar:sym<^>")
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
  # rx literal  "^"
    add $I11, rx178_pos, 1
    gt $I11, rx178_eos, rx178_fail
    sub $I11, rx178_pos, rx178_off
    substr $S10, rx178_tgt, $I11, 1
    ne $S10, "^", rx178_fail
    add rx178_pos, 1
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
    rx178_cur."!cursor_pass"(rx178_pos, "metachar:sym<^>")
    rx178_cur."!cursor_debug"("PASS  ", "metachar:sym<^>", " at pos=", rx178_pos)
    .return (rx178_cur)
  rx178_fail:
    (rx178_rep, rx178_pos, $I10, $P10) = rx178_cur."!mark_fail"(0)
    lt rx178_pos, -1, rx178_done
    eq rx178_pos, -1, rx178_fail
    jump $I10
  rx178_done:
    rx178_cur."!cursor_fail"()
    rx178_cur."!cursor_debug"("FAIL  ", "metachar:sym<^>")
    .return (rx178_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :subid("60_1256575576.91565") :method
.annotate "line", 68
    new $P180, "ResizablePMCArray"
    push $P180, "^"
    .return ($P180)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("61_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 69
    .local string rx183_tgt
    .local int rx183_pos
    .local int rx183_off
    .local int rx183_eos
    .local int rx183_rep
    .local pmc rx183_cur
    (rx183_cur, rx183_pos, rx183_tgt, $I10) = self."!cursor_start"()
    rx183_cur."!cursor_debug"("START ", "metachar:sym<^^>")
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
  # rx literal  "^^"
    add $I11, rx183_pos, 2
    gt $I11, rx183_eos, rx183_fail
    sub $I11, rx183_pos, rx183_off
    substr $S10, rx183_tgt, $I11, 2
    ne $S10, "^^", rx183_fail
    add rx183_pos, 2
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
    rx183_cur."!cursor_pass"(rx183_pos, "metachar:sym<^^>")
    rx183_cur."!cursor_debug"("PASS  ", "metachar:sym<^^>", " at pos=", rx183_pos)
    .return (rx183_cur)
  rx183_fail:
    (rx183_rep, rx183_pos, $I10, $P10) = rx183_cur."!mark_fail"(0)
    lt rx183_pos, -1, rx183_done
    eq rx183_pos, -1, rx183_fail
    jump $I10
  rx183_done:
    rx183_cur."!cursor_fail"()
    rx183_cur."!cursor_debug"("FAIL  ", "metachar:sym<^^>")
    .return (rx183_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :subid("62_1256575576.91565") :method
.annotate "line", 69
    new $P185, "ResizablePMCArray"
    push $P185, "^^"
    .return ($P185)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("63_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 70
    .local string rx188_tgt
    .local int rx188_pos
    .local int rx188_off
    .local int rx188_eos
    .local int rx188_rep
    .local pmc rx188_cur
    (rx188_cur, rx188_pos, rx188_tgt, $I10) = self."!cursor_start"()
    rx188_cur."!cursor_debug"("START ", "metachar:sym<$>")
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
  # rx literal  "$"
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    substr $S10, rx188_tgt, $I11, 1
    ne $S10, "$", rx188_fail
    add rx188_pos, 1
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
    rx188_cur."!cursor_pass"(rx188_pos, "metachar:sym<$>")
    rx188_cur."!cursor_debug"("PASS  ", "metachar:sym<$>", " at pos=", rx188_pos)
    .return (rx188_cur)
  rx188_fail:
    (rx188_rep, rx188_pos, $I10, $P10) = rx188_cur."!mark_fail"(0)
    lt rx188_pos, -1, rx188_done
    eq rx188_pos, -1, rx188_fail
    jump $I10
  rx188_done:
    rx188_cur."!cursor_fail"()
    rx188_cur."!cursor_debug"("FAIL  ", "metachar:sym<$>")
    .return (rx188_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :subid("64_1256575576.91565") :method
.annotate "line", 70
    new $P190, "ResizablePMCArray"
    push $P190, "$"
    .return ($P190)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("65_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 71
    .local string rx193_tgt
    .local int rx193_pos
    .local int rx193_off
    .local int rx193_eos
    .local int rx193_rep
    .local pmc rx193_cur
    (rx193_cur, rx193_pos, rx193_tgt, $I10) = self."!cursor_start"()
    rx193_cur."!cursor_debug"("START ", "metachar:sym<$$>")
    .lex unicode:"$\x{a2}", rx193_cur
    length rx193_eos, rx193_tgt
    set rx193_off, 0
    lt $I10, 2, rx193_start
    sub rx193_off, $I10, 1
    substr rx193_tgt, rx193_tgt, rx193_off
  rx193_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_196_fail
    rx193_cur."!mark_push"(0, rx193_pos, $I10)
  # rx literal  "$$"
    add $I11, rx193_pos, 2
    gt $I11, rx193_eos, rx193_fail
    sub $I11, rx193_pos, rx193_off
    substr $S10, rx193_tgt, $I11, 2
    ne $S10, "$$", rx193_fail
    add rx193_pos, 2
    set_addr $I10, rxcap_196_fail
    ($I12, $I11) = rx193_cur."!mark_peek"($I10)
    rx193_cur."!cursor_pos"($I11)
    ($P10) = rx193_cur."!cursor_start"()
    $P10."!cursor_pass"(rx193_pos, "")
    rx193_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_196_done
  rxcap_196_fail:
    goto rx193_fail
  rxcap_196_done:
  # rx pass
    rx193_cur."!cursor_pass"(rx193_pos, "metachar:sym<$$>")
    rx193_cur."!cursor_debug"("PASS  ", "metachar:sym<$$>", " at pos=", rx193_pos)
    .return (rx193_cur)
  rx193_fail:
    (rx193_rep, rx193_pos, $I10, $P10) = rx193_cur."!mark_fail"(0)
    lt rx193_pos, -1, rx193_done
    eq rx193_pos, -1, rx193_fail
    jump $I10
  rx193_done:
    rx193_cur."!cursor_fail"()
    rx193_cur."!cursor_debug"("FAIL  ", "metachar:sym<$$>")
    .return (rx193_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :subid("66_1256575576.91565") :method
.annotate "line", 71
    new $P195, "ResizablePMCArray"
    push $P195, "$$"
    .return ($P195)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("67_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 72
    .local string rx198_tgt
    .local int rx198_pos
    .local int rx198_off
    .local int rx198_eos
    .local int rx198_rep
    .local pmc rx198_cur
    (rx198_cur, rx198_pos, rx198_tgt, $I10) = self."!cursor_start"()
    rx198_cur."!cursor_debug"("START ", "metachar:sym<:::>")
    .lex unicode:"$\x{a2}", rx198_cur
    length rx198_eos, rx198_tgt
    set rx198_off, 0
    lt $I10, 2, rx198_start
    sub rx198_off, $I10, 1
    substr rx198_tgt, rx198_tgt, rx198_off
  rx198_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_201_fail
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
  # rx literal  ":::"
    add $I11, rx198_pos, 3
    gt $I11, rx198_eos, rx198_fail
    sub $I11, rx198_pos, rx198_off
    substr $S10, rx198_tgt, $I11, 3
    ne $S10, ":::", rx198_fail
    add rx198_pos, 3
    set_addr $I10, rxcap_201_fail
    ($I12, $I11) = rx198_cur."!mark_peek"($I10)
    rx198_cur."!cursor_pos"($I11)
    ($P10) = rx198_cur."!cursor_start"()
    $P10."!cursor_pass"(rx198_pos, "")
    rx198_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_201_done
  rxcap_201_fail:
    goto rx198_fail
  rxcap_201_done:
  # rx pass
    rx198_cur."!cursor_pass"(rx198_pos, "metachar:sym<:::>")
    rx198_cur."!cursor_debug"("PASS  ", "metachar:sym<:::>", " at pos=", rx198_pos)
    .return (rx198_cur)
  rx198_fail:
    (rx198_rep, rx198_pos, $I10, $P10) = rx198_cur."!mark_fail"(0)
    lt rx198_pos, -1, rx198_done
    eq rx198_pos, -1, rx198_fail
    jump $I10
  rx198_done:
    rx198_cur."!cursor_fail"()
    rx198_cur."!cursor_debug"("FAIL  ", "metachar:sym<:::>")
    .return (rx198_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :subid("68_1256575576.91565") :method
.annotate "line", 72
    new $P200, "ResizablePMCArray"
    push $P200, ":::"
    .return ($P200)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("69_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 73
    .local string rx203_tgt
    .local int rx203_pos
    .local int rx203_off
    .local int rx203_eos
    .local int rx203_rep
    .local pmc rx203_cur
    (rx203_cur, rx203_pos, rx203_tgt, $I10) = self."!cursor_start"()
    rx203_cur."!cursor_debug"("START ", "metachar:sym<::>")
    .lex unicode:"$\x{a2}", rx203_cur
    length rx203_eos, rx203_tgt
    set rx203_off, 0
    lt $I10, 2, rx203_start
    sub rx203_off, $I10, 1
    substr rx203_tgt, rx203_tgt, rx203_off
  rx203_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_206_fail
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
  # rx literal  "::"
    add $I11, rx203_pos, 2
    gt $I11, rx203_eos, rx203_fail
    sub $I11, rx203_pos, rx203_off
    substr $S10, rx203_tgt, $I11, 2
    ne $S10, "::", rx203_fail
    add rx203_pos, 2
    set_addr $I10, rxcap_206_fail
    ($I12, $I11) = rx203_cur."!mark_peek"($I10)
    rx203_cur."!cursor_pos"($I11)
    ($P10) = rx203_cur."!cursor_start"()
    $P10."!cursor_pass"(rx203_pos, "")
    rx203_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_206_done
  rxcap_206_fail:
    goto rx203_fail
  rxcap_206_done:
  # rx pass
    rx203_cur."!cursor_pass"(rx203_pos, "metachar:sym<::>")
    rx203_cur."!cursor_debug"("PASS  ", "metachar:sym<::>", " at pos=", rx203_pos)
    .return (rx203_cur)
  rx203_fail:
    (rx203_rep, rx203_pos, $I10, $P10) = rx203_cur."!mark_fail"(0)
    lt rx203_pos, -1, rx203_done
    eq rx203_pos, -1, rx203_fail
    jump $I10
  rx203_done:
    rx203_cur."!cursor_fail"()
    rx203_cur."!cursor_debug"("FAIL  ", "metachar:sym<::>")
    .return (rx203_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :subid("70_1256575576.91565") :method
.annotate "line", 73
    new $P205, "ResizablePMCArray"
    push $P205, "::"
    .return ($P205)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("71_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 74
    .local string rx208_tgt
    .local int rx208_pos
    .local int rx208_off
    .local int rx208_eos
    .local int rx208_rep
    .local pmc rx208_cur
    (rx208_cur, rx208_pos, rx208_tgt, $I10) = self."!cursor_start"()
    rx208_cur."!cursor_debug"("START ", "metachar:sym<lwb>")
    .lex unicode:"$\x{a2}", rx208_cur
    length rx208_eos, rx208_tgt
    set rx208_off, 0
    lt $I10, 2, rx208_start
    sub rx208_off, $I10, 1
    substr rx208_tgt, rx208_tgt, rx208_off
  rx208_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_212_fail
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
  alt211_0:
    set_addr $I10, alt211_1
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
  # rx literal  "<<"
    add $I11, rx208_pos, 2
    gt $I11, rx208_eos, rx208_fail
    sub $I11, rx208_pos, rx208_off
    substr $S10, rx208_tgt, $I11, 2
    ne $S10, "<<", rx208_fail
    add rx208_pos, 2
    goto alt211_end
  alt211_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx208_pos, 1
    gt $I11, rx208_eos, rx208_fail
    sub $I11, rx208_pos, rx208_off
    substr $S10, rx208_tgt, $I11, 1
    ne $S10, unicode:"\x{ab}", rx208_fail
    add rx208_pos, 1
  alt211_end:
    set_addr $I10, rxcap_212_fail
    ($I12, $I11) = rx208_cur."!mark_peek"($I10)
    rx208_cur."!cursor_pos"($I11)
    ($P10) = rx208_cur."!cursor_start"()
    $P10."!cursor_pass"(rx208_pos, "")
    rx208_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_212_done
  rxcap_212_fail:
    goto rx208_fail
  rxcap_212_done:
  # rx pass
    rx208_cur."!cursor_pass"(rx208_pos, "metachar:sym<lwb>")
    rx208_cur."!cursor_debug"("PASS  ", "metachar:sym<lwb>", " at pos=", rx208_pos)
    .return (rx208_cur)
  rx208_fail:
    (rx208_rep, rx208_pos, $I10, $P10) = rx208_cur."!mark_fail"(0)
    lt rx208_pos, -1, rx208_done
    eq rx208_pos, -1, rx208_fail
    jump $I10
  rx208_done:
    rx208_cur."!cursor_fail"()
    rx208_cur."!cursor_debug"("FAIL  ", "metachar:sym<lwb>")
    .return (rx208_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :subid("72_1256575576.91565") :method
.annotate "line", 74
    new $P210, "ResizablePMCArray"
    push $P210, unicode:"\x{ab}"
    push $P210, "<<"
    .return ($P210)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("73_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 75
    .local string rx214_tgt
    .local int rx214_pos
    .local int rx214_off
    .local int rx214_eos
    .local int rx214_rep
    .local pmc rx214_cur
    (rx214_cur, rx214_pos, rx214_tgt, $I10) = self."!cursor_start"()
    rx214_cur."!cursor_debug"("START ", "metachar:sym<rwb>")
    .lex unicode:"$\x{a2}", rx214_cur
    length rx214_eos, rx214_tgt
    set rx214_off, 0
    lt $I10, 2, rx214_start
    sub rx214_off, $I10, 1
    substr rx214_tgt, rx214_tgt, rx214_off
  rx214_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_218_fail
    rx214_cur."!mark_push"(0, rx214_pos, $I10)
  alt217_0:
    set_addr $I10, alt217_1
    rx214_cur."!mark_push"(0, rx214_pos, $I10)
  # rx literal  ">>"
    add $I11, rx214_pos, 2
    gt $I11, rx214_eos, rx214_fail
    sub $I11, rx214_pos, rx214_off
    substr $S10, rx214_tgt, $I11, 2
    ne $S10, ">>", rx214_fail
    add rx214_pos, 2
    goto alt217_end
  alt217_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx214_pos, 1
    gt $I11, rx214_eos, rx214_fail
    sub $I11, rx214_pos, rx214_off
    substr $S10, rx214_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx214_fail
    add rx214_pos, 1
  alt217_end:
    set_addr $I10, rxcap_218_fail
    ($I12, $I11) = rx214_cur."!mark_peek"($I10)
    rx214_cur."!cursor_pos"($I11)
    ($P10) = rx214_cur."!cursor_start"()
    $P10."!cursor_pass"(rx214_pos, "")
    rx214_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_218_done
  rxcap_218_fail:
    goto rx214_fail
  rxcap_218_done:
  # rx pass
    rx214_cur."!cursor_pass"(rx214_pos, "metachar:sym<rwb>")
    rx214_cur."!cursor_debug"("PASS  ", "metachar:sym<rwb>", " at pos=", rx214_pos)
    .return (rx214_cur)
  rx214_fail:
    (rx214_rep, rx214_pos, $I10, $P10) = rx214_cur."!mark_fail"(0)
    lt rx214_pos, -1, rx214_done
    eq rx214_pos, -1, rx214_fail
    jump $I10
  rx214_done:
    rx214_cur."!cursor_fail"()
    rx214_cur."!cursor_debug"("FAIL  ", "metachar:sym<rwb>")
    .return (rx214_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :subid("74_1256575576.91565") :method
.annotate "line", 75
    new $P216, "ResizablePMCArray"
    push $P216, unicode:"\x{bb}"
    push $P216, ">>"
    .return ($P216)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("75_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 76
    .local string rx220_tgt
    .local int rx220_pos
    .local int rx220_off
    .local int rx220_eos
    .local int rx220_rep
    .local pmc rx220_cur
    (rx220_cur, rx220_pos, rx220_tgt, $I10) = self."!cursor_start"()
    rx220_cur."!cursor_debug"("START ", "metachar:sym<bs>")
    .lex unicode:"$\x{a2}", rx220_cur
    length rx220_eos, rx220_tgt
    set rx220_off, 0
    lt $I10, 2, rx220_start
    sub rx220_off, $I10, 1
    substr rx220_tgt, rx220_tgt, rx220_off
  rx220_start:
  # rx literal  "\\"
    add $I11, rx220_pos, 1
    gt $I11, rx220_eos, rx220_fail
    sub $I11, rx220_pos, rx220_off
    substr $S10, rx220_tgt, $I11, 1
    ne $S10, "\\", rx220_fail
    add rx220_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx220_cur."!cursor_pos"(rx220_pos)
    $P10 = rx220_cur."backslash"()
    unless $P10, rx220_fail
    rx220_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx220_pos = $P10."pos"()
  # rx pass
    rx220_cur."!cursor_pass"(rx220_pos, "metachar:sym<bs>")
    rx220_cur."!cursor_debug"("PASS  ", "metachar:sym<bs>", " at pos=", rx220_pos)
    .return (rx220_cur)
  rx220_fail:
    (rx220_rep, rx220_pos, $I10, $P10) = rx220_cur."!mark_fail"(0)
    lt rx220_pos, -1, rx220_done
    eq rx220_pos, -1, rx220_fail
    jump $I10
  rx220_done:
    rx220_cur."!cursor_fail"()
    rx220_cur."!cursor_debug"("FAIL  ", "metachar:sym<bs>")
    .return (rx220_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :subid("76_1256575576.91565") :method
.annotate "line", 76
    $P222 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P223, "ResizablePMCArray"
    push $P223, $P222
    .return ($P223)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("77_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 77
    .local string rx225_tgt
    .local int rx225_pos
    .local int rx225_off
    .local int rx225_eos
    .local int rx225_rep
    .local pmc rx225_cur
    (rx225_cur, rx225_pos, rx225_tgt, $I10) = self."!cursor_start"()
    rx225_cur."!cursor_debug"("START ", "metachar:sym<mod>")
    .lex unicode:"$\x{a2}", rx225_cur
    length rx225_eos, rx225_tgt
    set rx225_off, 0
    lt $I10, 2, rx225_start
    sub rx225_off, $I10, 1
    substr rx225_tgt, rx225_tgt, rx225_off
  rx225_start:
  # rx subrule "mod_internal" subtype=capture negate=
    rx225_cur."!cursor_pos"(rx225_pos)
    $P10 = rx225_cur."mod_internal"()
    unless $P10, rx225_fail
    rx225_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx225_pos = $P10."pos"()
  # rx pass
    rx225_cur."!cursor_pass"(rx225_pos, "metachar:sym<mod>")
    rx225_cur."!cursor_debug"("PASS  ", "metachar:sym<mod>", " at pos=", rx225_pos)
    .return (rx225_cur)
  rx225_fail:
    (rx225_rep, rx225_pos, $I10, $P10) = rx225_cur."!mark_fail"(0)
    lt rx225_pos, -1, rx225_done
    eq rx225_pos, -1, rx225_fail
    jump $I10
  rx225_done:
    rx225_cur."!cursor_fail"()
    rx225_cur."!cursor_debug"("FAIL  ", "metachar:sym<mod>")
    .return (rx225_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :subid("78_1256575576.91565") :method
.annotate "line", 77
    $P227 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P228, "ResizablePMCArray"
    push $P228, $P227
    .return ($P228)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("79_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 80
    .local string rx230_tgt
    .local int rx230_pos
    .local int rx230_off
    .local int rx230_eos
    .local int rx230_rep
    .local pmc rx230_cur
    (rx230_cur, rx230_pos, rx230_tgt, $I10) = self."!cursor_start"()
    rx230_cur."!cursor_debug"("START ", "metachar:sym<~>")
    .lex unicode:"$\x{a2}", rx230_cur
    length rx230_eos, rx230_tgt
    set rx230_off, 0
    lt $I10, 2, rx230_start
    sub rx230_off, $I10, 1
    substr rx230_tgt, rx230_tgt, rx230_off
  rx230_start:
.annotate "line", 81
  # rx subcapture "sym"
    set_addr $I10, rxcap_234_fail
    rx230_cur."!mark_push"(0, rx230_pos, $I10)
  # rx literal  "~"
    add $I11, rx230_pos, 1
    gt $I11, rx230_eos, rx230_fail
    sub $I11, rx230_pos, rx230_off
    substr $S10, rx230_tgt, $I11, 1
    ne $S10, "~", rx230_fail
    add rx230_pos, 1
    set_addr $I10, rxcap_234_fail
    ($I12, $I11) = rx230_cur."!mark_peek"($I10)
    rx230_cur."!cursor_pos"($I11)
    ($P10) = rx230_cur."!cursor_start"()
    $P10."!cursor_pass"(rx230_pos, "")
    rx230_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_234_done
  rxcap_234_fail:
    goto rx230_fail
  rxcap_234_done:
.annotate "line", 82
  # rx subrule "ws" subtype=method negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."ws"()
    unless $P10, rx230_fail
    rx230_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."quantified_atom"()
    unless $P10, rx230_fail
    rx230_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx230_pos = $P10."pos"()
.annotate "line", 83
  # rx subrule "ws" subtype=method negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."ws"()
    unless $P10, rx230_fail
    rx230_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."quantified_atom"()
    unless $P10, rx230_fail
    rx230_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx230_pos = $P10."pos"()
.annotate "line", 80
  # rx pass
    rx230_cur."!cursor_pass"(rx230_pos, "metachar:sym<~>")
    rx230_cur."!cursor_debug"("PASS  ", "metachar:sym<~>", " at pos=", rx230_pos)
    .return (rx230_cur)
  rx230_fail:
    (rx230_rep, rx230_pos, $I10, $P10) = rx230_cur."!mark_fail"(0)
    lt rx230_pos, -1, rx230_done
    eq rx230_pos, -1, rx230_fail
    jump $I10
  rx230_done:
    rx230_cur."!cursor_fail"()
    rx230_cur."!cursor_debug"("FAIL  ", "metachar:sym<~>")
    .return (rx230_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :subid("80_1256575576.91565") :method
.annotate "line", 80
    $P232 = self."!PREFIX__!subrule"("ws", "~")
    new $P233, "ResizablePMCArray"
    push $P233, $P232
    .return ($P233)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("81_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 86
    .local string rx236_tgt
    .local int rx236_pos
    .local int rx236_off
    .local int rx236_eos
    .local int rx236_rep
    .local pmc rx236_cur
    (rx236_cur, rx236_pos, rx236_tgt, $I10) = self."!cursor_start"()
    rx236_cur."!cursor_debug"("START ", "metachar:sym<{*}>")
    rx236_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx236_cur
    length rx236_eos, rx236_tgt
    set rx236_off, 0
    lt $I10, 2, rx236_start
    sub rx236_off, $I10, 1
    substr rx236_tgt, rx236_tgt, rx236_off
  rx236_start:
.annotate "line", 87
  # rx subcapture "sym"
    set_addr $I10, rxcap_239_fail
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx236_pos, 3
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 3
    ne $S10, "{*}", rx236_fail
    add rx236_pos, 3
    set_addr $I10, rxcap_239_fail
    ($I12, $I11) = rx236_cur."!mark_peek"($I10)
    rx236_cur."!cursor_pos"($I11)
    ($P10) = rx236_cur."!cursor_start"()
    $P10."!cursor_pass"(rx236_pos, "")
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_239_done
  rxcap_239_fail:
    goto rx236_fail
  rxcap_239_done:
.annotate "line", 88
  # rx rxquantr240 ** 0..1
    set_addr $I250, rxquantr240_done
    rx236_cur."!mark_push"(0, rx236_pos, $I250)
  rxquantr240_loop:
  # rx rxquantr241 ** 0..*
    set_addr $I242, rxquantr241_done
    rx236_cur."!mark_push"(0, rx236_pos, $I242)
  rxquantr241_loop:
  # rx enumcharlist negate=0 
    ge rx236_pos, rx236_eos, rx236_fail
    sub $I10, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx236_fail
    inc rx236_pos
    (rx236_rep) = rx236_cur."!mark_commit"($I242)
    rx236_cur."!mark_push"(rx236_rep, rx236_pos, $I242)
    goto rxquantr241_loop
  rxquantr241_done:
  # rx literal  "#= "
    add $I11, rx236_pos, 3
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 3
    ne $S10, "#= ", rx236_fail
    add rx236_pos, 3
  # rx rxquantr243 ** 0..*
    set_addr $I244, rxquantr243_done
    rx236_cur."!mark_push"(0, rx236_pos, $I244)
  rxquantr243_loop:
  # rx enumcharlist negate=0 
    ge rx236_pos, rx236_eos, rx236_fail
    sub $I10, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx236_fail
    inc rx236_pos
    (rx236_rep) = rx236_cur."!mark_commit"($I244)
    rx236_cur."!mark_push"(rx236_rep, rx236_pos, $I244)
    goto rxquantr243_loop
  rxquantr243_done:
  # rx subcapture "key"
    set_addr $I10, rxcap_249_fail
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx236_pos, rx236_off
    find_cclass $I11, 32, rx236_tgt, $I10, rx236_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx236_fail
    add rx236_pos, rx236_off, $I11
  # rx rxquantr245 ** 0..*
    set_addr $I248, rxquantr245_done
    rx236_cur."!mark_push"(0, rx236_pos, $I248)
  rxquantr245_loop:
  # rx rxquantr246 ** 1..*
    set_addr $I247, rxquantr246_done
    rx236_cur."!mark_push"(0, -1, $I247)
  rxquantr246_loop:
  # rx enumcharlist negate=0 
    ge rx236_pos, rx236_eos, rx236_fail
    sub $I10, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx236_fail
    inc rx236_pos
    (rx236_rep) = rx236_cur."!mark_commit"($I247)
    rx236_cur."!mark_push"(rx236_rep, rx236_pos, $I247)
    goto rxquantr246_loop
  rxquantr246_done:
  # rx charclass_q S r 1..-1
    sub $I10, rx236_pos, rx236_off
    find_cclass $I11, 32, rx236_tgt, $I10, rx236_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx236_fail
    add rx236_pos, rx236_off, $I11
    (rx236_rep) = rx236_cur."!mark_commit"($I248)
    rx236_cur."!mark_push"(rx236_rep, rx236_pos, $I248)
    goto rxquantr245_loop
  rxquantr245_done:
    set_addr $I10, rxcap_249_fail
    ($I12, $I11) = rx236_cur."!mark_peek"($I10)
    rx236_cur."!cursor_pos"($I11)
    ($P10) = rx236_cur."!cursor_start"()
    $P10."!cursor_pass"(rx236_pos, "")
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_249_done
  rxcap_249_fail:
    goto rx236_fail
  rxcap_249_done:
    (rx236_rep) = rx236_cur."!mark_commit"($I250)
  rxquantr240_done:
.annotate "line", 86
  # rx pass
    rx236_cur."!cursor_pass"(rx236_pos, "metachar:sym<{*}>")
    rx236_cur."!cursor_debug"("PASS  ", "metachar:sym<{*}>", " at pos=", rx236_pos)
    .return (rx236_cur)
  rx236_fail:
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    rx236_cur."!cursor_debug"("FAIL  ", "metachar:sym<{*}>")
    .return (rx236_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :subid("82_1256575576.91565") :method
.annotate "line", 86
    new $P238, "ResizablePMCArray"
    push $P238, "{*}"
    .return ($P238)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("83_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 90
    .local string rx252_tgt
    .local int rx252_pos
    .local int rx252_off
    .local int rx252_eos
    .local int rx252_rep
    .local pmc rx252_cur
    (rx252_cur, rx252_pos, rx252_tgt, $I10) = self."!cursor_start"()
    rx252_cur."!cursor_debug"("START ", "metachar:sym<assert>")
    .lex unicode:"$\x{a2}", rx252_cur
    length rx252_eos, rx252_tgt
    set rx252_off, 0
    lt $I10, 2, rx252_start
    sub rx252_off, $I10, 1
    substr rx252_tgt, rx252_tgt, rx252_off
  rx252_start:
.annotate "line", 91
  # rx literal  "<"
    add $I11, rx252_pos, 1
    gt $I11, rx252_eos, rx252_fail
    sub $I11, rx252_pos, rx252_off
    substr $S10, rx252_tgt, $I11, 1
    ne $S10, "<", rx252_fail
    add rx252_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx252_cur."!cursor_pos"(rx252_pos)
    $P10 = rx252_cur."assertion"()
    unless $P10, rx252_fail
    rx252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx252_pos = $P10."pos"()
  alt256_0:
.annotate "line", 92
    set_addr $I10, alt256_1
    rx252_cur."!mark_push"(0, rx252_pos, $I10)
  # rx literal  ">"
    add $I11, rx252_pos, 1
    gt $I11, rx252_eos, rx252_fail
    sub $I11, rx252_pos, rx252_off
    substr $S10, rx252_tgt, $I11, 1
    ne $S10, ">", rx252_fail
    add rx252_pos, 1
    goto alt256_end
  alt256_1:
  # rx subrule "panic" subtype=method negate=
    rx252_cur."!cursor_pos"(rx252_pos)
    $P10 = rx252_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx252_fail
    rx252_pos = $P10."pos"()
  alt256_end:
.annotate "line", 90
  # rx pass
    rx252_cur."!cursor_pass"(rx252_pos, "metachar:sym<assert>")
    rx252_cur."!cursor_debug"("PASS  ", "metachar:sym<assert>", " at pos=", rx252_pos)
    .return (rx252_cur)
  rx252_fail:
    (rx252_rep, rx252_pos, $I10, $P10) = rx252_cur."!mark_fail"(0)
    lt rx252_pos, -1, rx252_done
    eq rx252_pos, -1, rx252_fail
    jump $I10
  rx252_done:
    rx252_cur."!cursor_fail"()
    rx252_cur."!cursor_debug"("FAIL  ", "metachar:sym<assert>")
    .return (rx252_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :subid("84_1256575576.91565") :method
.annotate "line", 90
    $P254 = self."!PREFIX__!subrule"("assertion", "<")
    new $P255, "ResizablePMCArray"
    push $P255, $P254
    .return ($P255)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("85_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 95
    .local string rx258_tgt
    .local int rx258_pos
    .local int rx258_off
    .local int rx258_eos
    .local int rx258_rep
    .local pmc rx258_cur
    (rx258_cur, rx258_pos, rx258_tgt, $I10) = self."!cursor_start"()
    rx258_cur."!cursor_debug"("START ", "metachar:sym<var>")
    rx258_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx258_cur
    length rx258_eos, rx258_tgt
    set rx258_off, 0
    lt $I10, 2, rx258_start
    sub rx258_off, $I10, 1
    substr rx258_tgt, rx258_tgt, rx258_off
  rx258_start:
  alt261_0:
.annotate "line", 96
    set_addr $I10, alt261_1
    rx258_cur."!mark_push"(0, rx258_pos, $I10)
.annotate "line", 97
  # rx literal  "$<"
    add $I11, rx258_pos, 2
    gt $I11, rx258_eos, rx258_fail
    sub $I11, rx258_pos, rx258_off
    substr $S10, rx258_tgt, $I11, 2
    ne $S10, "$<", rx258_fail
    add rx258_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_264_fail
    rx258_cur."!mark_push"(0, rx258_pos, $I10)
  # rx rxquantr262 ** 1..*
    set_addr $I263, rxquantr262_done
    rx258_cur."!mark_push"(0, -1, $I263)
  rxquantr262_loop:
  # rx enumcharlist negate=1 
    ge rx258_pos, rx258_eos, rx258_fail
    sub $I10, rx258_pos, rx258_off
    substr $S10, rx258_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx258_fail
    inc rx258_pos
    (rx258_rep) = rx258_cur."!mark_commit"($I263)
    rx258_cur."!mark_push"(rx258_rep, rx258_pos, $I263)
    goto rxquantr262_loop
  rxquantr262_done:
    set_addr $I10, rxcap_264_fail
    ($I12, $I11) = rx258_cur."!mark_peek"($I10)
    rx258_cur."!cursor_pos"($I11)
    ($P10) = rx258_cur."!cursor_start"()
    $P10."!cursor_pass"(rx258_pos, "")
    rx258_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_264_done
  rxcap_264_fail:
    goto rx258_fail
  rxcap_264_done:
  # rx literal  ">"
    add $I11, rx258_pos, 1
    gt $I11, rx258_eos, rx258_fail
    sub $I11, rx258_pos, rx258_off
    substr $S10, rx258_tgt, $I11, 1
    ne $S10, ">", rx258_fail
    add rx258_pos, 1
    goto alt261_end
  alt261_1:
.annotate "line", 98
  # rx literal  "$"
    add $I11, rx258_pos, 1
    gt $I11, rx258_eos, rx258_fail
    sub $I11, rx258_pos, rx258_off
    substr $S10, rx258_tgt, $I11, 1
    ne $S10, "$", rx258_fail
    add rx258_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_265_fail
    rx258_cur."!mark_push"(0, rx258_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx258_pos, rx258_off
    find_not_cclass $I11, 8, rx258_tgt, $I10, rx258_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx258_fail
    add rx258_pos, rx258_off, $I11
    set_addr $I10, rxcap_265_fail
    ($I12, $I11) = rx258_cur."!mark_peek"($I10)
    rx258_cur."!cursor_pos"($I11)
    ($P10) = rx258_cur."!cursor_start"()
    $P10."!cursor_pass"(rx258_pos, "")
    rx258_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_265_done
  rxcap_265_fail:
    goto rx258_fail
  rxcap_265_done:
  alt261_end:
.annotate "line", 101
  # rx rxquantr266 ** 0..1
    set_addr $I267, rxquantr266_done
    rx258_cur."!mark_push"(0, rx258_pos, $I267)
  rxquantr266_loop:
  # rx subrule "ws" subtype=method negate=
    rx258_cur."!cursor_pos"(rx258_pos)
    $P10 = rx258_cur."ws"()
    unless $P10, rx258_fail
    rx258_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx258_pos, 1
    gt $I11, rx258_eos, rx258_fail
    sub $I11, rx258_pos, rx258_off
    substr $S10, rx258_tgt, $I11, 1
    ne $S10, "=", rx258_fail
    add rx258_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx258_cur."!cursor_pos"(rx258_pos)
    $P10 = rx258_cur."ws"()
    unless $P10, rx258_fail
    rx258_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx258_cur."!cursor_pos"(rx258_pos)
    $P10 = rx258_cur."quantified_atom"()
    unless $P10, rx258_fail
    rx258_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx258_pos = $P10."pos"()
    (rx258_rep) = rx258_cur."!mark_commit"($I267)
  rxquantr266_done:
.annotate "line", 95
  # rx pass
    rx258_cur."!cursor_pass"(rx258_pos, "metachar:sym<var>")
    rx258_cur."!cursor_debug"("PASS  ", "metachar:sym<var>", " at pos=", rx258_pos)
    .return (rx258_cur)
  rx258_fail:
    (rx258_rep, rx258_pos, $I10, $P10) = rx258_cur."!mark_fail"(0)
    lt rx258_pos, -1, rx258_done
    eq rx258_pos, -1, rx258_fail
    jump $I10
  rx258_done:
    rx258_cur."!cursor_fail"()
    rx258_cur."!cursor_debug"("FAIL  ", "metachar:sym<var>")
    .return (rx258_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :subid("86_1256575576.91565") :method
.annotate "line", 95
    new $P260, "ResizablePMCArray"
    push $P260, "$"
    push $P260, "$<"
    .return ($P260)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("87_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 104
    .local string rx269_tgt
    .local int rx269_pos
    .local int rx269_off
    .local int rx269_eos
    .local int rx269_rep
    .local pmc rx269_cur
    (rx269_cur, rx269_pos, rx269_tgt, $I10) = self."!cursor_start"()
    rx269_cur."!cursor_debug"("START ", "metachar:sym<PIR>")
    .lex unicode:"$\x{a2}", rx269_cur
    length rx269_eos, rx269_tgt
    set rx269_off, 0
    lt $I10, 2, rx269_start
    sub rx269_off, $I10, 1
    substr rx269_tgt, rx269_tgt, rx269_off
  rx269_start:
.annotate "line", 105
  # rx literal  ":PIR{{"
    add $I11, rx269_pos, 6
    gt $I11, rx269_eos, rx269_fail
    sub $I11, rx269_pos, rx269_off
    substr $S10, rx269_tgt, $I11, 6
    ne $S10, ":PIR{{", rx269_fail
    add rx269_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_274_fail
    rx269_cur."!mark_push"(0, rx269_pos, $I10)
  # rx rxquantf272 ** 0..*
    set_addr $I10, rxquantf272_loop
    rx269_cur."!mark_push"(0, rx269_pos, $I10)
    goto rxquantf272_done
  rxquantf272_loop:
  # rx charclass .
    ge rx269_pos, rx269_eos, rx269_fail
    inc rx269_pos
    set_addr $I10, rxquantf272_loop
    rx269_cur."!mark_push"($I273, rx269_pos, $I10)
  rxquantf272_done:
    set_addr $I10, rxcap_274_fail
    ($I12, $I11) = rx269_cur."!mark_peek"($I10)
    rx269_cur."!cursor_pos"($I11)
    ($P10) = rx269_cur."!cursor_start"()
    $P10."!cursor_pass"(rx269_pos, "")
    rx269_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_274_done
  rxcap_274_fail:
    goto rx269_fail
  rxcap_274_done:
  # rx literal  "}}"
    add $I11, rx269_pos, 2
    gt $I11, rx269_eos, rx269_fail
    sub $I11, rx269_pos, rx269_off
    substr $S10, rx269_tgt, $I11, 2
    ne $S10, "}}", rx269_fail
    add rx269_pos, 2
.annotate "line", 104
  # rx pass
    rx269_cur."!cursor_pass"(rx269_pos, "metachar:sym<PIR>")
    rx269_cur."!cursor_debug"("PASS  ", "metachar:sym<PIR>", " at pos=", rx269_pos)
    .return (rx269_cur)
  rx269_fail:
    (rx269_rep, rx269_pos, $I10, $P10) = rx269_cur."!mark_fail"(0)
    lt rx269_pos, -1, rx269_done
    eq rx269_pos, -1, rx269_fail
    jump $I10
  rx269_done:
    rx269_cur."!cursor_fail"()
    rx269_cur."!cursor_debug"("FAIL  ", "metachar:sym<PIR>")
    .return (rx269_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :subid("88_1256575576.91565") :method
.annotate "line", 104
    new $P271, "ResizablePMCArray"
    push $P271, ":PIR{{"
    .return ($P271)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("89_1256575576.91565") :method
.annotate "line", 108
    $P276 = self."!protoregex"("backslash")
    .return ($P276)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("90_1256575576.91565") :method
.annotate "line", 108
    $P278 = self."!PREFIX__!protoregex"("backslash")
    .return ($P278)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("91_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 109
    .local string rx280_tgt
    .local int rx280_pos
    .local int rx280_off
    .local int rx280_eos
    .local int rx280_rep
    .local pmc rx280_cur
    (rx280_cur, rx280_pos, rx280_tgt, $I10) = self."!cursor_start"()
    rx280_cur."!cursor_debug"("START ", "backslash:sym<w>")
    .lex unicode:"$\x{a2}", rx280_cur
    length rx280_eos, rx280_tgt
    set rx280_off, 0
    lt $I10, 2, rx280_start
    sub rx280_off, $I10, 1
    substr rx280_tgt, rx280_tgt, rx280_off
  rx280_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_283_fail
    rx280_cur."!mark_push"(0, rx280_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx280_pos, rx280_eos, rx280_fail
    sub $I10, rx280_pos, rx280_off
    substr $S10, rx280_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx280_fail
    inc rx280_pos
    set_addr $I10, rxcap_283_fail
    ($I12, $I11) = rx280_cur."!mark_peek"($I10)
    rx280_cur."!cursor_pos"($I11)
    ($P10) = rx280_cur."!cursor_start"()
    $P10."!cursor_pass"(rx280_pos, "")
    rx280_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_283_done
  rxcap_283_fail:
    goto rx280_fail
  rxcap_283_done:
  # rx pass
    rx280_cur."!cursor_pass"(rx280_pos, "backslash:sym<w>")
    rx280_cur."!cursor_debug"("PASS  ", "backslash:sym<w>", " at pos=", rx280_pos)
    .return (rx280_cur)
  rx280_fail:
    (rx280_rep, rx280_pos, $I10, $P10) = rx280_cur."!mark_fail"(0)
    lt rx280_pos, -1, rx280_done
    eq rx280_pos, -1, rx280_fail
    jump $I10
  rx280_done:
    rx280_cur."!cursor_fail"()
    rx280_cur."!cursor_debug"("FAIL  ", "backslash:sym<w>")
    .return (rx280_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :subid("92_1256575576.91565") :method
.annotate "line", 109
    new $P282, "ResizablePMCArray"
    push $P282, "N"
    push $P282, "W"
    push $P282, "S"
    push $P282, "D"
    push $P282, "n"
    push $P282, "w"
    push $P282, "s"
    push $P282, "d"
    .return ($P282)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("93_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 110
    .local string rx285_tgt
    .local int rx285_pos
    .local int rx285_off
    .local int rx285_eos
    .local int rx285_rep
    .local pmc rx285_cur
    (rx285_cur, rx285_pos, rx285_tgt, $I10) = self."!cursor_start"()
    rx285_cur."!cursor_debug"("START ", "backslash:sym<b>")
    .lex unicode:"$\x{a2}", rx285_cur
    length rx285_eos, rx285_tgt
    set rx285_off, 0
    lt $I10, 2, rx285_start
    sub rx285_off, $I10, 1
    substr rx285_tgt, rx285_tgt, rx285_off
  rx285_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_288_fail
    rx285_cur."!mark_push"(0, rx285_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx285_pos, rx285_eos, rx285_fail
    sub $I10, rx285_pos, rx285_off
    substr $S10, rx285_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx285_fail
    inc rx285_pos
    set_addr $I10, rxcap_288_fail
    ($I12, $I11) = rx285_cur."!mark_peek"($I10)
    rx285_cur."!cursor_pos"($I11)
    ($P10) = rx285_cur."!cursor_start"()
    $P10."!cursor_pass"(rx285_pos, "")
    rx285_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_288_done
  rxcap_288_fail:
    goto rx285_fail
  rxcap_288_done:
  # rx pass
    rx285_cur."!cursor_pass"(rx285_pos, "backslash:sym<b>")
    rx285_cur."!cursor_debug"("PASS  ", "backslash:sym<b>", " at pos=", rx285_pos)
    .return (rx285_cur)
  rx285_fail:
    (rx285_rep, rx285_pos, $I10, $P10) = rx285_cur."!mark_fail"(0)
    lt rx285_pos, -1, rx285_done
    eq rx285_pos, -1, rx285_fail
    jump $I10
  rx285_done:
    rx285_cur."!cursor_fail"()
    rx285_cur."!cursor_debug"("FAIL  ", "backslash:sym<b>")
    .return (rx285_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :subid("94_1256575576.91565") :method
.annotate "line", 110
    new $P287, "ResizablePMCArray"
    push $P287, "B"
    push $P287, "b"
    .return ($P287)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("95_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 111
    .local string rx290_tgt
    .local int rx290_pos
    .local int rx290_off
    .local int rx290_eos
    .local int rx290_rep
    .local pmc rx290_cur
    (rx290_cur, rx290_pos, rx290_tgt, $I10) = self."!cursor_start"()
    rx290_cur."!cursor_debug"("START ", "backslash:sym<e>")
    .lex unicode:"$\x{a2}", rx290_cur
    length rx290_eos, rx290_tgt
    set rx290_off, 0
    lt $I10, 2, rx290_start
    sub rx290_off, $I10, 1
    substr rx290_tgt, rx290_tgt, rx290_off
  rx290_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_293_fail
    rx290_cur."!mark_push"(0, rx290_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx290_pos, rx290_eos, rx290_fail
    sub $I10, rx290_pos, rx290_off
    substr $S10, rx290_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx290_fail
    inc rx290_pos
    set_addr $I10, rxcap_293_fail
    ($I12, $I11) = rx290_cur."!mark_peek"($I10)
    rx290_cur."!cursor_pos"($I11)
    ($P10) = rx290_cur."!cursor_start"()
    $P10."!cursor_pass"(rx290_pos, "")
    rx290_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_293_done
  rxcap_293_fail:
    goto rx290_fail
  rxcap_293_done:
  # rx pass
    rx290_cur."!cursor_pass"(rx290_pos, "backslash:sym<e>")
    rx290_cur."!cursor_debug"("PASS  ", "backslash:sym<e>", " at pos=", rx290_pos)
    .return (rx290_cur)
  rx290_fail:
    (rx290_rep, rx290_pos, $I10, $P10) = rx290_cur."!mark_fail"(0)
    lt rx290_pos, -1, rx290_done
    eq rx290_pos, -1, rx290_fail
    jump $I10
  rx290_done:
    rx290_cur."!cursor_fail"()
    rx290_cur."!cursor_debug"("FAIL  ", "backslash:sym<e>")
    .return (rx290_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :subid("96_1256575576.91565") :method
.annotate "line", 111
    new $P292, "ResizablePMCArray"
    push $P292, "E"
    push $P292, "e"
    .return ($P292)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("97_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 112
    .local string rx295_tgt
    .local int rx295_pos
    .local int rx295_off
    .local int rx295_eos
    .local int rx295_rep
    .local pmc rx295_cur
    (rx295_cur, rx295_pos, rx295_tgt, $I10) = self."!cursor_start"()
    rx295_cur."!cursor_debug"("START ", "backslash:sym<f>")
    .lex unicode:"$\x{a2}", rx295_cur
    length rx295_eos, rx295_tgt
    set rx295_off, 0
    lt $I10, 2, rx295_start
    sub rx295_off, $I10, 1
    substr rx295_tgt, rx295_tgt, rx295_off
  rx295_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_298_fail
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx295_pos, rx295_eos, rx295_fail
    sub $I10, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx295_fail
    inc rx295_pos
    set_addr $I10, rxcap_298_fail
    ($I12, $I11) = rx295_cur."!mark_peek"($I10)
    rx295_cur."!cursor_pos"($I11)
    ($P10) = rx295_cur."!cursor_start"()
    $P10."!cursor_pass"(rx295_pos, "")
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_298_done
  rxcap_298_fail:
    goto rx295_fail
  rxcap_298_done:
  # rx pass
    rx295_cur."!cursor_pass"(rx295_pos, "backslash:sym<f>")
    rx295_cur."!cursor_debug"("PASS  ", "backslash:sym<f>", " at pos=", rx295_pos)
    .return (rx295_cur)
  rx295_fail:
    (rx295_rep, rx295_pos, $I10, $P10) = rx295_cur."!mark_fail"(0)
    lt rx295_pos, -1, rx295_done
    eq rx295_pos, -1, rx295_fail
    jump $I10
  rx295_done:
    rx295_cur."!cursor_fail"()
    rx295_cur."!cursor_debug"("FAIL  ", "backslash:sym<f>")
    .return (rx295_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :subid("98_1256575576.91565") :method
.annotate "line", 112
    new $P297, "ResizablePMCArray"
    push $P297, "F"
    push $P297, "f"
    .return ($P297)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("99_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 113
    .local string rx300_tgt
    .local int rx300_pos
    .local int rx300_off
    .local int rx300_eos
    .local int rx300_rep
    .local pmc rx300_cur
    (rx300_cur, rx300_pos, rx300_tgt, $I10) = self."!cursor_start"()
    rx300_cur."!cursor_debug"("START ", "backslash:sym<h>")
    .lex unicode:"$\x{a2}", rx300_cur
    length rx300_eos, rx300_tgt
    set rx300_off, 0
    lt $I10, 2, rx300_start
    sub rx300_off, $I10, 1
    substr rx300_tgt, rx300_tgt, rx300_off
  rx300_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_303_fail
    rx300_cur."!mark_push"(0, rx300_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx300_pos, rx300_eos, rx300_fail
    sub $I10, rx300_pos, rx300_off
    substr $S10, rx300_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx300_fail
    inc rx300_pos
    set_addr $I10, rxcap_303_fail
    ($I12, $I11) = rx300_cur."!mark_peek"($I10)
    rx300_cur."!cursor_pos"($I11)
    ($P10) = rx300_cur."!cursor_start"()
    $P10."!cursor_pass"(rx300_pos, "")
    rx300_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_303_done
  rxcap_303_fail:
    goto rx300_fail
  rxcap_303_done:
  # rx pass
    rx300_cur."!cursor_pass"(rx300_pos, "backslash:sym<h>")
    rx300_cur."!cursor_debug"("PASS  ", "backslash:sym<h>", " at pos=", rx300_pos)
    .return (rx300_cur)
  rx300_fail:
    (rx300_rep, rx300_pos, $I10, $P10) = rx300_cur."!mark_fail"(0)
    lt rx300_pos, -1, rx300_done
    eq rx300_pos, -1, rx300_fail
    jump $I10
  rx300_done:
    rx300_cur."!cursor_fail"()
    rx300_cur."!cursor_debug"("FAIL  ", "backslash:sym<h>")
    .return (rx300_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :subid("100_1256575576.91565") :method
.annotate "line", 113
    new $P302, "ResizablePMCArray"
    push $P302, "H"
    push $P302, "h"
    .return ($P302)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("101_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 114
    .local string rx305_tgt
    .local int rx305_pos
    .local int rx305_off
    .local int rx305_eos
    .local int rx305_rep
    .local pmc rx305_cur
    (rx305_cur, rx305_pos, rx305_tgt, $I10) = self."!cursor_start"()
    rx305_cur."!cursor_debug"("START ", "backslash:sym<r>")
    .lex unicode:"$\x{a2}", rx305_cur
    length rx305_eos, rx305_tgt
    set rx305_off, 0
    lt $I10, 2, rx305_start
    sub rx305_off, $I10, 1
    substr rx305_tgt, rx305_tgt, rx305_off
  rx305_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_308_fail
    rx305_cur."!mark_push"(0, rx305_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx305_pos, rx305_eos, rx305_fail
    sub $I10, rx305_pos, rx305_off
    substr $S10, rx305_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx305_fail
    inc rx305_pos
    set_addr $I10, rxcap_308_fail
    ($I12, $I11) = rx305_cur."!mark_peek"($I10)
    rx305_cur."!cursor_pos"($I11)
    ($P10) = rx305_cur."!cursor_start"()
    $P10."!cursor_pass"(rx305_pos, "")
    rx305_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_308_done
  rxcap_308_fail:
    goto rx305_fail
  rxcap_308_done:
  # rx pass
    rx305_cur."!cursor_pass"(rx305_pos, "backslash:sym<r>")
    rx305_cur."!cursor_debug"("PASS  ", "backslash:sym<r>", " at pos=", rx305_pos)
    .return (rx305_cur)
  rx305_fail:
    (rx305_rep, rx305_pos, $I10, $P10) = rx305_cur."!mark_fail"(0)
    lt rx305_pos, -1, rx305_done
    eq rx305_pos, -1, rx305_fail
    jump $I10
  rx305_done:
    rx305_cur."!cursor_fail"()
    rx305_cur."!cursor_debug"("FAIL  ", "backslash:sym<r>")
    .return (rx305_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :subid("102_1256575576.91565") :method
.annotate "line", 114
    new $P307, "ResizablePMCArray"
    push $P307, "R"
    push $P307, "r"
    .return ($P307)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("103_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 115
    .local string rx310_tgt
    .local int rx310_pos
    .local int rx310_off
    .local int rx310_eos
    .local int rx310_rep
    .local pmc rx310_cur
    (rx310_cur, rx310_pos, rx310_tgt, $I10) = self."!cursor_start"()
    rx310_cur."!cursor_debug"("START ", "backslash:sym<t>")
    .lex unicode:"$\x{a2}", rx310_cur
    length rx310_eos, rx310_tgt
    set rx310_off, 0
    lt $I10, 2, rx310_start
    sub rx310_off, $I10, 1
    substr rx310_tgt, rx310_tgt, rx310_off
  rx310_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_313_fail
    rx310_cur."!mark_push"(0, rx310_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx310_pos, rx310_eos, rx310_fail
    sub $I10, rx310_pos, rx310_off
    substr $S10, rx310_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx310_fail
    inc rx310_pos
    set_addr $I10, rxcap_313_fail
    ($I12, $I11) = rx310_cur."!mark_peek"($I10)
    rx310_cur."!cursor_pos"($I11)
    ($P10) = rx310_cur."!cursor_start"()
    $P10."!cursor_pass"(rx310_pos, "")
    rx310_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_313_done
  rxcap_313_fail:
    goto rx310_fail
  rxcap_313_done:
  # rx pass
    rx310_cur."!cursor_pass"(rx310_pos, "backslash:sym<t>")
    rx310_cur."!cursor_debug"("PASS  ", "backslash:sym<t>", " at pos=", rx310_pos)
    .return (rx310_cur)
  rx310_fail:
    (rx310_rep, rx310_pos, $I10, $P10) = rx310_cur."!mark_fail"(0)
    lt rx310_pos, -1, rx310_done
    eq rx310_pos, -1, rx310_fail
    jump $I10
  rx310_done:
    rx310_cur."!cursor_fail"()
    rx310_cur."!cursor_debug"("FAIL  ", "backslash:sym<t>")
    .return (rx310_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :subid("104_1256575576.91565") :method
.annotate "line", 115
    new $P312, "ResizablePMCArray"
    push $P312, "T"
    push $P312, "t"
    .return ($P312)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("105_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 116
    .local string rx315_tgt
    .local int rx315_pos
    .local int rx315_off
    .local int rx315_eos
    .local int rx315_rep
    .local pmc rx315_cur
    (rx315_cur, rx315_pos, rx315_tgt, $I10) = self."!cursor_start"()
    rx315_cur."!cursor_debug"("START ", "backslash:sym<v>")
    .lex unicode:"$\x{a2}", rx315_cur
    length rx315_eos, rx315_tgt
    set rx315_off, 0
    lt $I10, 2, rx315_start
    sub rx315_off, $I10, 1
    substr rx315_tgt, rx315_tgt, rx315_off
  rx315_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_318_fail
    rx315_cur."!mark_push"(0, rx315_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx315_pos, rx315_eos, rx315_fail
    sub $I10, rx315_pos, rx315_off
    substr $S10, rx315_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx315_fail
    inc rx315_pos
    set_addr $I10, rxcap_318_fail
    ($I12, $I11) = rx315_cur."!mark_peek"($I10)
    rx315_cur."!cursor_pos"($I11)
    ($P10) = rx315_cur."!cursor_start"()
    $P10."!cursor_pass"(rx315_pos, "")
    rx315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_318_done
  rxcap_318_fail:
    goto rx315_fail
  rxcap_318_done:
  # rx pass
    rx315_cur."!cursor_pass"(rx315_pos, "backslash:sym<v>")
    rx315_cur."!cursor_debug"("PASS  ", "backslash:sym<v>", " at pos=", rx315_pos)
    .return (rx315_cur)
  rx315_fail:
    (rx315_rep, rx315_pos, $I10, $P10) = rx315_cur."!mark_fail"(0)
    lt rx315_pos, -1, rx315_done
    eq rx315_pos, -1, rx315_fail
    jump $I10
  rx315_done:
    rx315_cur."!cursor_fail"()
    rx315_cur."!cursor_debug"("FAIL  ", "backslash:sym<v>")
    .return (rx315_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :subid("106_1256575576.91565") :method
.annotate "line", 116
    new $P317, "ResizablePMCArray"
    push $P317, "V"
    push $P317, "v"
    .return ($P317)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("107_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 117
    .local string rx320_tgt
    .local int rx320_pos
    .local int rx320_off
    .local int rx320_eos
    .local int rx320_rep
    .local pmc rx320_cur
    (rx320_cur, rx320_pos, rx320_tgt, $I10) = self."!cursor_start"()
    rx320_cur."!cursor_debug"("START ", "backslash:sym<A>")
    .lex unicode:"$\x{a2}", rx320_cur
    length rx320_eos, rx320_tgt
    set rx320_off, 0
    lt $I10, 2, rx320_start
    sub rx320_off, $I10, 1
    substr rx320_tgt, rx320_tgt, rx320_off
  rx320_start:
  # rx literal  "A"
    add $I11, rx320_pos, 1
    gt $I11, rx320_eos, rx320_fail
    sub $I11, rx320_pos, rx320_off
    substr $S10, rx320_tgt, $I11, 1
    ne $S10, "A", rx320_fail
    add rx320_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx320_cur."!cursor_pos"(rx320_pos)
    $P10 = rx320_cur."obs"("\\\\A as beginning-of-string matcher;^")
    unless $P10, rx320_fail
    rx320_pos = $P10."pos"()
  # rx pass
    rx320_cur."!cursor_pass"(rx320_pos, "backslash:sym<A>")
    rx320_cur."!cursor_debug"("PASS  ", "backslash:sym<A>", " at pos=", rx320_pos)
    .return (rx320_cur)
  rx320_fail:
    (rx320_rep, rx320_pos, $I10, $P10) = rx320_cur."!mark_fail"(0)
    lt rx320_pos, -1, rx320_done
    eq rx320_pos, -1, rx320_fail
    jump $I10
  rx320_done:
    rx320_cur."!cursor_fail"()
    rx320_cur."!cursor_debug"("FAIL  ", "backslash:sym<A>")
    .return (rx320_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :subid("108_1256575576.91565") :method
.annotate "line", 117
    $P322 = self."!PREFIX__!subrule"("obs", "A")
    new $P323, "ResizablePMCArray"
    push $P323, $P322
    .return ($P323)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("109_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 118
    .local string rx325_tgt
    .local int rx325_pos
    .local int rx325_off
    .local int rx325_eos
    .local int rx325_rep
    .local pmc rx325_cur
    (rx325_cur, rx325_pos, rx325_tgt, $I10) = self."!cursor_start"()
    rx325_cur."!cursor_debug"("START ", "backslash:sym<z>")
    .lex unicode:"$\x{a2}", rx325_cur
    length rx325_eos, rx325_tgt
    set rx325_off, 0
    lt $I10, 2, rx325_start
    sub rx325_off, $I10, 1
    substr rx325_tgt, rx325_tgt, rx325_off
  rx325_start:
  # rx literal  "z"
    add $I11, rx325_pos, 1
    gt $I11, rx325_eos, rx325_fail
    sub $I11, rx325_pos, rx325_off
    substr $S10, rx325_tgt, $I11, 1
    ne $S10, "z", rx325_fail
    add rx325_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."obs"("\\\\z as end-of-string matcher;$")
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
  # rx pass
    rx325_cur."!cursor_pass"(rx325_pos, "backslash:sym<z>")
    rx325_cur."!cursor_debug"("PASS  ", "backslash:sym<z>", " at pos=", rx325_pos)
    .return (rx325_cur)
  rx325_fail:
    (rx325_rep, rx325_pos, $I10, $P10) = rx325_cur."!mark_fail"(0)
    lt rx325_pos, -1, rx325_done
    eq rx325_pos, -1, rx325_fail
    jump $I10
  rx325_done:
    rx325_cur."!cursor_fail"()
    rx325_cur."!cursor_debug"("FAIL  ", "backslash:sym<z>")
    .return (rx325_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :subid("110_1256575576.91565") :method
.annotate "line", 118
    $P327 = self."!PREFIX__!subrule"("obs", "z")
    new $P328, "ResizablePMCArray"
    push $P328, $P327
    .return ($P328)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("111_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 119
    .local string rx330_tgt
    .local int rx330_pos
    .local int rx330_off
    .local int rx330_eos
    .local int rx330_rep
    .local pmc rx330_cur
    (rx330_cur, rx330_pos, rx330_tgt, $I10) = self."!cursor_start"()
    rx330_cur."!cursor_debug"("START ", "backslash:sym<Z>")
    .lex unicode:"$\x{a2}", rx330_cur
    length rx330_eos, rx330_tgt
    set rx330_off, 0
    lt $I10, 2, rx330_start
    sub rx330_off, $I10, 1
    substr rx330_tgt, rx330_tgt, rx330_off
  rx330_start:
  # rx literal  "Z"
    add $I11, rx330_pos, 1
    gt $I11, rx330_eos, rx330_fail
    sub $I11, rx330_pos, rx330_off
    substr $S10, rx330_tgt, $I11, 1
    ne $S10, "Z", rx330_fail
    add rx330_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx330_cur."!cursor_pos"(rx330_pos)
    $P10 = rx330_cur."obs"("\\\\Z as end-of-string matcher;\\\\n?$")
    unless $P10, rx330_fail
    rx330_pos = $P10."pos"()
  # rx pass
    rx330_cur."!cursor_pass"(rx330_pos, "backslash:sym<Z>")
    rx330_cur."!cursor_debug"("PASS  ", "backslash:sym<Z>", " at pos=", rx330_pos)
    .return (rx330_cur)
  rx330_fail:
    (rx330_rep, rx330_pos, $I10, $P10) = rx330_cur."!mark_fail"(0)
    lt rx330_pos, -1, rx330_done
    eq rx330_pos, -1, rx330_fail
    jump $I10
  rx330_done:
    rx330_cur."!cursor_fail"()
    rx330_cur."!cursor_debug"("FAIL  ", "backslash:sym<Z>")
    .return (rx330_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :subid("112_1256575576.91565") :method
.annotate "line", 119
    $P332 = self."!PREFIX__!subrule"("obs", "Z")
    new $P333, "ResizablePMCArray"
    push $P333, $P332
    .return ($P333)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("113_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 120
    .local string rx335_tgt
    .local int rx335_pos
    .local int rx335_off
    .local int rx335_eos
    .local int rx335_rep
    .local pmc rx335_cur
    (rx335_cur, rx335_pos, rx335_tgt, $I10) = self."!cursor_start"()
    rx335_cur."!cursor_debug"("START ", "backslash:sym<Q>")
    .lex unicode:"$\x{a2}", rx335_cur
    length rx335_eos, rx335_tgt
    set rx335_off, 0
    lt $I10, 2, rx335_start
    sub rx335_off, $I10, 1
    substr rx335_tgt, rx335_tgt, rx335_off
  rx335_start:
  # rx literal  "Q"
    add $I11, rx335_pos, 1
    gt $I11, rx335_eos, rx335_fail
    sub $I11, rx335_pos, rx335_off
    substr $S10, rx335_tgt, $I11, 1
    ne $S10, "Q", rx335_fail
    add rx335_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx335_cur."!cursor_pos"(rx335_pos)
    $P10 = rx335_cur."obs"("\\\\Q as quotemeta;quotes or literal variable match")
    unless $P10, rx335_fail
    rx335_pos = $P10."pos"()
  # rx pass
    rx335_cur."!cursor_pass"(rx335_pos, "backslash:sym<Q>")
    rx335_cur."!cursor_debug"("PASS  ", "backslash:sym<Q>", " at pos=", rx335_pos)
    .return (rx335_cur)
  rx335_fail:
    (rx335_rep, rx335_pos, $I10, $P10) = rx335_cur."!mark_fail"(0)
    lt rx335_pos, -1, rx335_done
    eq rx335_pos, -1, rx335_fail
    jump $I10
  rx335_done:
    rx335_cur."!cursor_fail"()
    rx335_cur."!cursor_debug"("FAIL  ", "backslash:sym<Q>")
    .return (rx335_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :subid("114_1256575576.91565") :method
.annotate "line", 120
    $P337 = self."!PREFIX__!subrule"("obs", "Q")
    new $P338, "ResizablePMCArray"
    push $P338, $P337
    .return ($P338)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("115_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 121
    .local string rx340_tgt
    .local int rx340_pos
    .local int rx340_off
    .local int rx340_eos
    .local int rx340_rep
    .local pmc rx340_cur
    (rx340_cur, rx340_pos, rx340_tgt, $I10) = self."!cursor_start"()
    rx340_cur."!cursor_debug"("START ", "backslash:sym<misc>")
    .lex unicode:"$\x{a2}", rx340_cur
    length rx340_eos, rx340_tgt
    set rx340_off, 0
    lt $I10, 2, rx340_start
    sub rx340_off, $I10, 1
    substr rx340_tgt, rx340_tgt, rx340_off
  rx340_start:
  # rx charclass W
    ge rx340_pos, rx340_eos, rx340_fail
    sub $I10, rx340_pos, rx340_off
    is_cclass $I11, 8192, rx340_tgt, $I10
    if $I11, rx340_fail
    inc rx340_pos
  # rx pass
    rx340_cur."!cursor_pass"(rx340_pos, "backslash:sym<misc>")
    rx340_cur."!cursor_debug"("PASS  ", "backslash:sym<misc>", " at pos=", rx340_pos)
    .return (rx340_cur)
  rx340_fail:
    (rx340_rep, rx340_pos, $I10, $P10) = rx340_cur."!mark_fail"(0)
    lt rx340_pos, -1, rx340_done
    eq rx340_pos, -1, rx340_fail
    jump $I10
  rx340_done:
    rx340_cur."!cursor_fail"()
    rx340_cur."!cursor_debug"("FAIL  ", "backslash:sym<misc>")
    .return (rx340_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :subid("116_1256575576.91565") :method
.annotate "line", 121
    new $P342, "ResizablePMCArray"
    push $P342, ""
    .return ($P342)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("117_1256575576.91565") :method
.annotate "line", 123
    $P344 = self."!protoregex"("assertion")
    .return ($P344)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("118_1256575576.91565") :method
.annotate "line", 123
    $P346 = self."!PREFIX__!protoregex"("assertion")
    .return ($P346)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("119_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 125
    .const 'Sub' $P354 = "121_1256575576.91565" 
    capture_lex $P354
    .local string rx348_tgt
    .local int rx348_pos
    .local int rx348_off
    .local int rx348_eos
    .local int rx348_rep
    .local pmc rx348_cur
    (rx348_cur, rx348_pos, rx348_tgt, $I10) = self."!cursor_start"()
    rx348_cur."!cursor_debug"("START ", "assertion:sym<?>")
    .lex unicode:"$\x{a2}", rx348_cur
    length rx348_eos, rx348_tgt
    set rx348_off, 0
    lt $I10, 2, rx348_start
    sub rx348_off, $I10, 1
    substr rx348_tgt, rx348_tgt, rx348_off
  rx348_start:
  # rx literal  "?"
    add $I11, rx348_pos, 1
    gt $I11, rx348_eos, rx348_fail
    sub $I11, rx348_pos, rx348_off
    substr $S10, rx348_tgt, $I11, 1
    ne $S10, "?", rx348_fail
    add rx348_pos, 1
  alt352_0:
    set_addr $I10, alt352_1
    rx348_cur."!mark_push"(0, rx348_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx348_cur."!cursor_pos"(rx348_pos)
    .const 'Sub' $P354 = "121_1256575576.91565" 
    capture_lex $P354
    $P10 = rx348_cur."before"($P354)
    unless $P10, rx348_fail
    goto alt352_end
  alt352_1:
  # rx subrule "assertion" subtype=capture negate=
    rx348_cur."!cursor_pos"(rx348_pos)
    $P10 = rx348_cur."assertion"()
    unless $P10, rx348_fail
    rx348_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx348_pos = $P10."pos"()
  alt352_end:
  # rx pass
    rx348_cur."!cursor_pass"(rx348_pos, "assertion:sym<?>")
    rx348_cur."!cursor_debug"("PASS  ", "assertion:sym<?>", " at pos=", rx348_pos)
    .return (rx348_cur)
  rx348_fail:
    (rx348_rep, rx348_pos, $I10, $P10) = rx348_cur."!mark_fail"(0)
    lt rx348_pos, -1, rx348_done
    eq rx348_pos, -1, rx348_fail
    jump $I10
  rx348_done:
    rx348_cur."!cursor_fail"()
    rx348_cur."!cursor_debug"("FAIL  ", "assertion:sym<?>")
    .return (rx348_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :subid("120_1256575576.91565") :method
.annotate "line", 125
    $P350 = self."!PREFIX__!subrule"("assertion", "?")
    new $P351, "ResizablePMCArray"
    push $P351, $P350
    push $P351, "?"
    .return ($P351)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block353"  :anon :subid("121_1256575576.91565") :method :outer("119_1256575576.91565")
.annotate "line", 125
    .local string rx355_tgt
    .local int rx355_pos
    .local int rx355_off
    .local int rx355_eos
    .local int rx355_rep
    .local pmc rx355_cur
    (rx355_cur, rx355_pos, rx355_tgt, $I10) = self."!cursor_start"()
    rx355_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx355_cur
    length rx355_eos, rx355_tgt
    set rx355_off, 0
    lt $I10, 2, rx355_start
    sub rx355_off, $I10, 1
    substr rx355_tgt, rx355_tgt, rx355_off
  rx355_start:
    ge rx355_pos, 0, rxscan356_done
  rxscan356_loop:
    ($P10) = rx355_cur."from"()
    inc $P10
    set rx355_pos, $P10
    ge rx355_pos, rx355_eos, rxscan356_done
    set_addr $I10, rxscan356_loop
    rx355_cur."!mark_push"(0, rx355_pos, $I10)
  rxscan356_done:
  # rx literal  ">"
    add $I11, rx355_pos, 1
    gt $I11, rx355_eos, rx355_fail
    sub $I11, rx355_pos, rx355_off
    substr $S10, rx355_tgt, $I11, 1
    ne $S10, ">", rx355_fail
    add rx355_pos, 1
  # rx pass
    rx355_cur."!cursor_pass"(rx355_pos, "")
    rx355_cur."!cursor_debug"("PASS  ", "", " at pos=", rx355_pos)
    .return (rx355_cur)
  rx355_fail:
    (rx355_rep, rx355_pos, $I10, $P10) = rx355_cur."!mark_fail"(0)
    lt rx355_pos, -1, rx355_done
    eq rx355_pos, -1, rx355_fail
    jump $I10
  rx355_done:
    rx355_cur."!cursor_fail"()
    rx355_cur."!cursor_debug"("FAIL  ", "")
    .return (rx355_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("122_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 126
    .const 'Sub' $P364 = "124_1256575576.91565" 
    capture_lex $P364
    .local string rx358_tgt
    .local int rx358_pos
    .local int rx358_off
    .local int rx358_eos
    .local int rx358_rep
    .local pmc rx358_cur
    (rx358_cur, rx358_pos, rx358_tgt, $I10) = self."!cursor_start"()
    rx358_cur."!cursor_debug"("START ", "assertion:sym<!>")
    .lex unicode:"$\x{a2}", rx358_cur
    length rx358_eos, rx358_tgt
    set rx358_off, 0
    lt $I10, 2, rx358_start
    sub rx358_off, $I10, 1
    substr rx358_tgt, rx358_tgt, rx358_off
  rx358_start:
  # rx literal  "!"
    add $I11, rx358_pos, 1
    gt $I11, rx358_eos, rx358_fail
    sub $I11, rx358_pos, rx358_off
    substr $S10, rx358_tgt, $I11, 1
    ne $S10, "!", rx358_fail
    add rx358_pos, 1
  alt362_0:
    set_addr $I10, alt362_1
    rx358_cur."!mark_push"(0, rx358_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx358_cur."!cursor_pos"(rx358_pos)
    .const 'Sub' $P364 = "124_1256575576.91565" 
    capture_lex $P364
    $P10 = rx358_cur."before"($P364)
    unless $P10, rx358_fail
    goto alt362_end
  alt362_1:
  # rx subrule "assertion" subtype=capture negate=
    rx358_cur."!cursor_pos"(rx358_pos)
    $P10 = rx358_cur."assertion"()
    unless $P10, rx358_fail
    rx358_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx358_pos = $P10."pos"()
  alt362_end:
  # rx pass
    rx358_cur."!cursor_pass"(rx358_pos, "assertion:sym<!>")
    rx358_cur."!cursor_debug"("PASS  ", "assertion:sym<!>", " at pos=", rx358_pos)
    .return (rx358_cur)
  rx358_fail:
    (rx358_rep, rx358_pos, $I10, $P10) = rx358_cur."!mark_fail"(0)
    lt rx358_pos, -1, rx358_done
    eq rx358_pos, -1, rx358_fail
    jump $I10
  rx358_done:
    rx358_cur."!cursor_fail"()
    rx358_cur."!cursor_debug"("FAIL  ", "assertion:sym<!>")
    .return (rx358_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :subid("123_1256575576.91565") :method
.annotate "line", 126
    $P360 = self."!PREFIX__!subrule"("assertion", "!")
    new $P361, "ResizablePMCArray"
    push $P361, $P360
    push $P361, "!"
    .return ($P361)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block363"  :anon :subid("124_1256575576.91565") :method :outer("122_1256575576.91565")
.annotate "line", 126
    .local string rx365_tgt
    .local int rx365_pos
    .local int rx365_off
    .local int rx365_eos
    .local int rx365_rep
    .local pmc rx365_cur
    (rx365_cur, rx365_pos, rx365_tgt, $I10) = self."!cursor_start"()
    rx365_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx365_cur
    length rx365_eos, rx365_tgt
    set rx365_off, 0
    lt $I10, 2, rx365_start
    sub rx365_off, $I10, 1
    substr rx365_tgt, rx365_tgt, rx365_off
  rx365_start:
    ge rx365_pos, 0, rxscan366_done
  rxscan366_loop:
    ($P10) = rx365_cur."from"()
    inc $P10
    set rx365_pos, $P10
    ge rx365_pos, rx365_eos, rxscan366_done
    set_addr $I10, rxscan366_loop
    rx365_cur."!mark_push"(0, rx365_pos, $I10)
  rxscan366_done:
  # rx literal  ">"
    add $I11, rx365_pos, 1
    gt $I11, rx365_eos, rx365_fail
    sub $I11, rx365_pos, rx365_off
    substr $S10, rx365_tgt, $I11, 1
    ne $S10, ">", rx365_fail
    add rx365_pos, 1
  # rx pass
    rx365_cur."!cursor_pass"(rx365_pos, "")
    rx365_cur."!cursor_debug"("PASS  ", "", " at pos=", rx365_pos)
    .return (rx365_cur)
  rx365_fail:
    (rx365_rep, rx365_pos, $I10, $P10) = rx365_cur."!mark_fail"(0)
    lt rx365_pos, -1, rx365_done
    eq rx365_pos, -1, rx365_fail
    jump $I10
  rx365_done:
    rx365_cur."!cursor_fail"()
    rx365_cur."!cursor_debug"("FAIL  ", "")
    .return (rx365_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("125_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 128
    .local string rx368_tgt
    .local int rx368_pos
    .local int rx368_off
    .local int rx368_eos
    .local int rx368_rep
    .local pmc rx368_cur
    (rx368_cur, rx368_pos, rx368_tgt, $I10) = self."!cursor_start"()
    rx368_cur."!cursor_debug"("START ", "assertion:sym<method>")
    .lex unicode:"$\x{a2}", rx368_cur
    length rx368_eos, rx368_tgt
    set rx368_off, 0
    lt $I10, 2, rx368_start
    sub rx368_off, $I10, 1
    substr rx368_tgt, rx368_tgt, rx368_off
  rx368_start:
.annotate "line", 129
  # rx literal  "."
    add $I11, rx368_pos, 1
    gt $I11, rx368_eos, rx368_fail
    sub $I11, rx368_pos, rx368_off
    substr $S10, rx368_tgt, $I11, 1
    ne $S10, ".", rx368_fail
    add rx368_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx368_cur."!cursor_pos"(rx368_pos)
    $P10 = rx368_cur."assertion"()
    unless $P10, rx368_fail
    rx368_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx368_pos = $P10."pos"()
.annotate "line", 128
  # rx pass
    rx368_cur."!cursor_pass"(rx368_pos, "assertion:sym<method>")
    rx368_cur."!cursor_debug"("PASS  ", "assertion:sym<method>", " at pos=", rx368_pos)
    .return (rx368_cur)
  rx368_fail:
    (rx368_rep, rx368_pos, $I10, $P10) = rx368_cur."!mark_fail"(0)
    lt rx368_pos, -1, rx368_done
    eq rx368_pos, -1, rx368_fail
    jump $I10
  rx368_done:
    rx368_cur."!cursor_fail"()
    rx368_cur."!cursor_debug"("FAIL  ", "assertion:sym<method>")
    .return (rx368_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :subid("126_1256575576.91565") :method
.annotate "line", 128
    $P370 = self."!PREFIX__!subrule"("assertion", ".")
    new $P371, "ResizablePMCArray"
    push $P371, $P370
    .return ($P371)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("127_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 132
    .const 'Sub' $P380 = "129_1256575576.91565" 
    capture_lex $P380
    .local string rx373_tgt
    .local int rx373_pos
    .local int rx373_off
    .local int rx373_eos
    .local int rx373_rep
    .local pmc rx373_cur
    (rx373_cur, rx373_pos, rx373_tgt, $I10) = self."!cursor_start"()
    rx373_cur."!cursor_debug"("START ", "assertion:sym<name>")
    rx373_cur."!cursor_caparray"("arglist", "nibbler", "assertion")
    .lex unicode:"$\x{a2}", rx373_cur
    length rx373_eos, rx373_tgt
    set rx373_off, 0
    lt $I10, 2, rx373_start
    sub rx373_off, $I10, 1
    substr rx373_tgt, rx373_tgt, rx373_off
  rx373_start:
.annotate "line", 133
  # rx subcapture "longname"
    set_addr $I10, rxcap_376_fail
    rx373_cur."!mark_push"(0, rx373_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx373_pos, rx373_off
    find_not_cclass $I11, 8192, rx373_tgt, $I10, rx373_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx373_fail
    add rx373_pos, rx373_off, $I11
    set_addr $I10, rxcap_376_fail
    ($I12, $I11) = rx373_cur."!mark_peek"($I10)
    rx373_cur."!cursor_pos"($I11)
    ($P10) = rx373_cur."!cursor_start"()
    $P10."!cursor_pass"(rx373_pos, "")
    rx373_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    goto rxcap_376_done
  rxcap_376_fail:
    goto rx373_fail
  rxcap_376_done:
.annotate "line", 140
  # rx rxquantr377 ** 0..1
    set_addr $I383, rxquantr377_done
    rx373_cur."!mark_push"(0, rx373_pos, $I383)
  rxquantr377_loop:
  alt378_0:
.annotate "line", 134
    set_addr $I10, alt378_1
    rx373_cur."!mark_push"(0, rx373_pos, $I10)
.annotate "line", 135
  # rx subrule "before" subtype=zerowidth negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    .const 'Sub' $P380 = "129_1256575576.91565" 
    capture_lex $P380
    $P10 = rx373_cur."before"($P380)
    unless $P10, rx373_fail
    goto alt378_end
  alt378_1:
    set_addr $I10, alt378_2
    rx373_cur."!mark_push"(0, rx373_pos, $I10)
.annotate "line", 136
  # rx literal  "="
    add $I11, rx373_pos, 1
    gt $I11, rx373_eos, rx373_fail
    sub $I11, rx373_pos, rx373_off
    substr $S10, rx373_tgt, $I11, 1
    ne $S10, "=", rx373_fail
    add rx373_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    $P10 = rx373_cur."assertion"()
    unless $P10, rx373_fail
    rx373_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx373_pos = $P10."pos"()
    goto alt378_end
  alt378_2:
    set_addr $I10, alt378_3
    rx373_cur."!mark_push"(0, rx373_pos, $I10)
.annotate "line", 137
  # rx literal  ":"
    add $I11, rx373_pos, 1
    gt $I11, rx373_eos, rx373_fail
    sub $I11, rx373_pos, rx373_off
    substr $S10, rx373_tgt, $I11, 1
    ne $S10, ":", rx373_fail
    add rx373_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    $P10 = rx373_cur."arglist"()
    unless $P10, rx373_fail
    rx373_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx373_pos = $P10."pos"()
    goto alt378_end
  alt378_3:
    set_addr $I10, alt378_4
    rx373_cur."!mark_push"(0, rx373_pos, $I10)
.annotate "line", 138
  # rx literal  "("
    add $I11, rx373_pos, 1
    gt $I11, rx373_eos, rx373_fail
    sub $I11, rx373_pos, rx373_off
    substr $S10, rx373_tgt, $I11, 1
    ne $S10, "(", rx373_fail
    add rx373_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    $P10 = rx373_cur."arglist"()
    unless $P10, rx373_fail
    rx373_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx373_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx373_pos, 1
    gt $I11, rx373_eos, rx373_fail
    sub $I11, rx373_pos, rx373_off
    substr $S10, rx373_tgt, $I11, 1
    ne $S10, ")", rx373_fail
    add rx373_pos, 1
    goto alt378_end
  alt378_4:
.annotate "line", 139
  # rx subrule "normspace" subtype=method negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    $P10 = rx373_cur."normspace"()
    unless $P10, rx373_fail
    rx373_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    $P10 = rx373_cur."nibbler"()
    unless $P10, rx373_fail
    rx373_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx373_pos = $P10."pos"()
  alt378_end:
.annotate "line", 140
    (rx373_rep) = rx373_cur."!mark_commit"($I383)
  rxquantr377_done:
.annotate "line", 132
  # rx pass
    rx373_cur."!cursor_pass"(rx373_pos, "assertion:sym<name>")
    rx373_cur."!cursor_debug"("PASS  ", "assertion:sym<name>", " at pos=", rx373_pos)
    .return (rx373_cur)
  rx373_fail:
    (rx373_rep, rx373_pos, $I10, $P10) = rx373_cur."!mark_fail"(0)
    lt rx373_pos, -1, rx373_done
    eq rx373_pos, -1, rx373_fail
    jump $I10
  rx373_done:
    rx373_cur."!cursor_fail"()
    rx373_cur."!cursor_debug"("FAIL  ", "assertion:sym<name>")
    .return (rx373_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :subid("128_1256575576.91565") :method
.annotate "line", 132
    new $P375, "ResizablePMCArray"
    push $P375, ""
    .return ($P375)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block379"  :anon :subid("129_1256575576.91565") :method :outer("127_1256575576.91565")
.annotate "line", 135
    .local string rx381_tgt
    .local int rx381_pos
    .local int rx381_off
    .local int rx381_eos
    .local int rx381_rep
    .local pmc rx381_cur
    (rx381_cur, rx381_pos, rx381_tgt, $I10) = self."!cursor_start"()
    rx381_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx381_cur
    length rx381_eos, rx381_tgt
    set rx381_off, 0
    lt $I10, 2, rx381_start
    sub rx381_off, $I10, 1
    substr rx381_tgt, rx381_tgt, rx381_off
  rx381_start:
    ge rx381_pos, 0, rxscan382_done
  rxscan382_loop:
    ($P10) = rx381_cur."from"()
    inc $P10
    set rx381_pos, $P10
    ge rx381_pos, rx381_eos, rxscan382_done
    set_addr $I10, rxscan382_loop
    rx381_cur."!mark_push"(0, rx381_pos, $I10)
  rxscan382_done:
  # rx literal  ">"
    add $I11, rx381_pos, 1
    gt $I11, rx381_eos, rx381_fail
    sub $I11, rx381_pos, rx381_off
    substr $S10, rx381_tgt, $I11, 1
    ne $S10, ">", rx381_fail
    add rx381_pos, 1
  # rx pass
    rx381_cur."!cursor_pass"(rx381_pos, "")
    rx381_cur."!cursor_debug"("PASS  ", "", " at pos=", rx381_pos)
    .return (rx381_cur)
  rx381_fail:
    (rx381_rep, rx381_pos, $I10, $P10) = rx381_cur."!mark_fail"(0)
    lt rx381_pos, -1, rx381_done
    eq rx381_pos, -1, rx381_fail
    jump $I10
  rx381_done:
    rx381_cur."!cursor_fail"()
    rx381_cur."!cursor_debug"("FAIL  ", "")
    .return (rx381_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("130_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 143
    .const 'Sub' $P389 = "132_1256575576.91565" 
    capture_lex $P389
    .local string rx385_tgt
    .local int rx385_pos
    .local int rx385_off
    .local int rx385_eos
    .local int rx385_rep
    .local pmc rx385_cur
    (rx385_cur, rx385_pos, rx385_tgt, $I10) = self."!cursor_start"()
    rx385_cur."!cursor_debug"("START ", "assertion:sym<[>")
    rx385_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx385_cur
    length rx385_eos, rx385_tgt
    set rx385_off, 0
    lt $I10, 2, rx385_start
    sub rx385_off, $I10, 1
    substr rx385_tgt, rx385_tgt, rx385_off
  rx385_start:
  # rx subrule "before" subtype=zerowidth negate=
    rx385_cur."!cursor_pos"(rx385_pos)
    .const 'Sub' $P389 = "132_1256575576.91565" 
    capture_lex $P389
    $P10 = rx385_cur."before"($P389)
    unless $P10, rx385_fail
  # rx rxquantr393 ** 1..*
    set_addr $I394, rxquantr393_done
    rx385_cur."!mark_push"(0, -1, $I394)
  rxquantr393_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx385_cur."!cursor_pos"(rx385_pos)
    $P10 = rx385_cur."cclass_elem"()
    unless $P10, rx385_fail
    rx385_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx385_pos = $P10."pos"()
    (rx385_rep) = rx385_cur."!mark_commit"($I394)
    rx385_cur."!mark_push"(rx385_rep, rx385_pos, $I394)
    goto rxquantr393_loop
  rxquantr393_done:
  # rx pass
    rx385_cur."!cursor_pass"(rx385_pos, "assertion:sym<[>")
    rx385_cur."!cursor_debug"("PASS  ", "assertion:sym<[>", " at pos=", rx385_pos)
    .return (rx385_cur)
  rx385_fail:
    (rx385_rep, rx385_pos, $I10, $P10) = rx385_cur."!mark_fail"(0)
    lt rx385_pos, -1, rx385_done
    eq rx385_pos, -1, rx385_fail
    jump $I10
  rx385_done:
    rx385_cur."!cursor_fail"()
    rx385_cur."!cursor_debug"("FAIL  ", "assertion:sym<[>")
    .return (rx385_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :subid("131_1256575576.91565") :method
.annotate "line", 143
    new $P387, "ResizablePMCArray"
    push $P387, ""
    .return ($P387)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block388"  :anon :subid("132_1256575576.91565") :method :outer("130_1256575576.91565")
.annotate "line", 143
    .local string rx390_tgt
    .local int rx390_pos
    .local int rx390_off
    .local int rx390_eos
    .local int rx390_rep
    .local pmc rx390_cur
    (rx390_cur, rx390_pos, rx390_tgt, $I10) = self."!cursor_start"()
    rx390_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx390_cur
    length rx390_eos, rx390_tgt
    set rx390_off, 0
    lt $I10, 2, rx390_start
    sub rx390_off, $I10, 1
    substr rx390_tgt, rx390_tgt, rx390_off
  rx390_start:
    ge rx390_pos, 0, rxscan391_done
  rxscan391_loop:
    ($P10) = rx390_cur."from"()
    inc $P10
    set rx390_pos, $P10
    ge rx390_pos, rx390_eos, rxscan391_done
    set_addr $I10, rxscan391_loop
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
  rxscan391_done:
  alt392_0:
    set_addr $I10, alt392_1
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
  # rx literal  "["
    add $I11, rx390_pos, 1
    gt $I11, rx390_eos, rx390_fail
    sub $I11, rx390_pos, rx390_off
    substr $S10, rx390_tgt, $I11, 1
    ne $S10, "[", rx390_fail
    add rx390_pos, 1
    goto alt392_end
  alt392_1:
    set_addr $I10, alt392_2
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
  # rx literal  "+"
    add $I11, rx390_pos, 1
    gt $I11, rx390_eos, rx390_fail
    sub $I11, rx390_pos, rx390_off
    substr $S10, rx390_tgt, $I11, 1
    ne $S10, "+", rx390_fail
    add rx390_pos, 1
    goto alt392_end
  alt392_2:
  # rx literal  "-"
    add $I11, rx390_pos, 1
    gt $I11, rx390_eos, rx390_fail
    sub $I11, rx390_pos, rx390_off
    substr $S10, rx390_tgt, $I11, 1
    ne $S10, "-", rx390_fail
    add rx390_pos, 1
  alt392_end:
  # rx pass
    rx390_cur."!cursor_pass"(rx390_pos, "")
    rx390_cur."!cursor_debug"("PASS  ", "", " at pos=", rx390_pos)
    .return (rx390_cur)
  rx390_fail:
    (rx390_rep, rx390_pos, $I10, $P10) = rx390_cur."!mark_fail"(0)
    lt rx390_pos, -1, rx390_done
    eq rx390_pos, -1, rx390_fail
    jump $I10
  rx390_done:
    rx390_cur."!cursor_fail"()
    rx390_cur."!cursor_debug"("FAIL  ", "")
    .return (rx390_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("133_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 145
    .const 'Sub' $P406 = "135_1256575576.91565" 
    capture_lex $P406
    .local string rx396_tgt
    .local int rx396_pos
    .local int rx396_off
    .local int rx396_eos
    .local int rx396_rep
    .local pmc rx396_cur
    (rx396_cur, rx396_pos, rx396_tgt, $I10) = self."!cursor_start"()
    rx396_cur."!cursor_debug"("START ", "cclass_elem")
    rx396_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx396_cur
    length rx396_eos, rx396_tgt
    set rx396_off, 0
    lt $I10, 2, rx396_start
    sub rx396_off, $I10, 1
    substr rx396_tgt, rx396_tgt, rx396_off
  rx396_start:
.annotate "line", 146
  # rx subcapture "sign"
    set_addr $I10, rxcap_400_fail
    rx396_cur."!mark_push"(0, rx396_pos, $I10)
  alt399_0:
    set_addr $I10, alt399_1
    rx396_cur."!mark_push"(0, rx396_pos, $I10)
  # rx literal  "+"
    add $I11, rx396_pos, 1
    gt $I11, rx396_eos, rx396_fail
    sub $I11, rx396_pos, rx396_off
    substr $S10, rx396_tgt, $I11, 1
    ne $S10, "+", rx396_fail
    add rx396_pos, 1
    goto alt399_end
  alt399_1:
    set_addr $I10, alt399_2
    rx396_cur."!mark_push"(0, rx396_pos, $I10)
  # rx literal  "-"
    add $I11, rx396_pos, 1
    gt $I11, rx396_eos, rx396_fail
    sub $I11, rx396_pos, rx396_off
    substr $S10, rx396_tgt, $I11, 1
    ne $S10, "-", rx396_fail
    add rx396_pos, 1
    goto alt399_end
  alt399_2:
  alt399_end:
    set_addr $I10, rxcap_400_fail
    ($I12, $I11) = rx396_cur."!mark_peek"($I10)
    rx396_cur."!cursor_pos"($I11)
    ($P10) = rx396_cur."!cursor_start"()
    $P10."!cursor_pass"(rx396_pos, "")
    rx396_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_400_done
  rxcap_400_fail:
    goto rx396_fail
  rxcap_400_done:
.annotate "line", 147
  # rx rxquantr401 ** 0..1
    set_addr $I402, rxquantr401_done
    rx396_cur."!mark_push"(0, rx396_pos, $I402)
  rxquantr401_loop:
  # rx subrule "normspace" subtype=method negate=
    rx396_cur."!cursor_pos"(rx396_pos)
    $P10 = rx396_cur."normspace"()
    unless $P10, rx396_fail
    rx396_pos = $P10."pos"()
    (rx396_rep) = rx396_cur."!mark_commit"($I402)
  rxquantr401_done:
  alt403_0:
.annotate "line", 148
    set_addr $I10, alt403_1
    rx396_cur."!mark_push"(0, rx396_pos, $I10)
.annotate "line", 149
  # rx literal  "["
    add $I11, rx396_pos, 1
    gt $I11, rx396_eos, rx396_fail
    sub $I11, rx396_pos, rx396_off
    substr $S10, rx396_tgt, $I11, 1
    ne $S10, "[", rx396_fail
    add rx396_pos, 1
.annotate "line", 152
  # rx rxquantr404 ** 0..*
    set_addr $I425, rxquantr404_done
    rx396_cur."!mark_push"(0, rx396_pos, $I425)
  rxquantr404_loop:
.annotate "line", 149
  # rx subrule $P406 subtype=capture negate=
    rx396_cur."!cursor_pos"(rx396_pos)
    .const 'Sub' $P406 = "135_1256575576.91565" 
    capture_lex $P406
    $P10 = rx396_cur.$P406()
    unless $P10, rx396_fail
    rx396_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx396_pos = $P10."pos"()
.annotate "line", 152
    (rx396_rep) = rx396_cur."!mark_commit"($I425)
    rx396_cur."!mark_push"(rx396_rep, rx396_pos, $I425)
    goto rxquantr404_loop
  rxquantr404_done:
.annotate "line", 153
  # rx charclass_q s r 0..-1
    sub $I10, rx396_pos, rx396_off
    find_not_cclass $I11, 32, rx396_tgt, $I10, rx396_eos
    add rx396_pos, rx396_off, $I11
  # rx literal  "]"
    add $I11, rx396_pos, 1
    gt $I11, rx396_eos, rx396_fail
    sub $I11, rx396_pos, rx396_off
    substr $S10, rx396_tgt, $I11, 1
    ne $S10, "]", rx396_fail
    add rx396_pos, 1
.annotate "line", 149
    goto alt403_end
  alt403_1:
.annotate "line", 154
  # rx subcapture "name"
    set_addr $I10, rxcap_426_fail
    rx396_cur."!mark_push"(0, rx396_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx396_pos, rx396_off
    find_not_cclass $I11, 8192, rx396_tgt, $I10, rx396_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx396_fail
    add rx396_pos, rx396_off, $I11
    set_addr $I10, rxcap_426_fail
    ($I12, $I11) = rx396_cur."!mark_peek"($I10)
    rx396_cur."!cursor_pos"($I11)
    ($P10) = rx396_cur."!cursor_start"()
    $P10."!cursor_pass"(rx396_pos, "")
    rx396_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_426_done
  rxcap_426_fail:
    goto rx396_fail
  rxcap_426_done:
  alt403_end:
.annotate "line", 156
  # rx rxquantr427 ** 0..1
    set_addr $I428, rxquantr427_done
    rx396_cur."!mark_push"(0, rx396_pos, $I428)
  rxquantr427_loop:
  # rx subrule "normspace" subtype=method negate=
    rx396_cur."!cursor_pos"(rx396_pos)
    $P10 = rx396_cur."normspace"()
    unless $P10, rx396_fail
    rx396_pos = $P10."pos"()
    (rx396_rep) = rx396_cur."!mark_commit"($I428)
  rxquantr427_done:
.annotate "line", 145
  # rx pass
    rx396_cur."!cursor_pass"(rx396_pos, "cclass_elem")
    rx396_cur."!cursor_debug"("PASS  ", "cclass_elem", " at pos=", rx396_pos)
    .return (rx396_cur)
  rx396_fail:
    (rx396_rep, rx396_pos, $I10, $P10) = rx396_cur."!mark_fail"(0)
    lt rx396_pos, -1, rx396_done
    eq rx396_pos, -1, rx396_fail
    jump $I10
  rx396_done:
    rx396_cur."!cursor_fail"()
    rx396_cur."!cursor_debug"("FAIL  ", "cclass_elem")
    .return (rx396_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :subid("134_1256575576.91565") :method
.annotate "line", 145
    new $P398, "ResizablePMCArray"
    push $P398, ""
    push $P398, "-"
    push $P398, "+"
    .return ($P398)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block405"  :anon :subid("135_1256575576.91565") :method :outer("133_1256575576.91565")
.annotate "line", 149
    .const 'Sub' $P421 = "138_1256575576.91565" 
    capture_lex $P421
    .const 'Sub' $P416 = "137_1256575576.91565" 
    capture_lex $P416
    .const 'Sub' $P412 = "136_1256575576.91565" 
    capture_lex $P412
    .local string rx407_tgt
    .local int rx407_pos
    .local int rx407_off
    .local int rx407_eos
    .local int rx407_rep
    .local pmc rx407_cur
    (rx407_cur, rx407_pos, rx407_tgt, $I10) = self."!cursor_start"()
    rx407_cur."!cursor_debug"("START ", "")
    rx407_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx407_cur
    length rx407_eos, rx407_tgt
    set rx407_off, 0
    lt $I10, 2, rx407_start
    sub rx407_off, $I10, 1
    substr rx407_tgt, rx407_tgt, rx407_off
  rx407_start:
    ge rx407_pos, 0, rxscan408_done
  rxscan408_loop:
    ($P10) = rx407_cur."from"()
    inc $P10
    set rx407_pos, $P10
    ge rx407_pos, rx407_eos, rxscan408_done
    set_addr $I10, rxscan408_loop
    rx407_cur."!mark_push"(0, rx407_pos, $I10)
  rxscan408_done:
  alt409_0:
    set_addr $I10, alt409_1
    rx407_cur."!mark_push"(0, rx407_pos, $I10)
.annotate "line", 150
  # rx charclass_q s r 0..-1
    sub $I10, rx407_pos, rx407_off
    find_not_cclass $I11, 32, rx407_tgt, $I10, rx407_eos
    add rx407_pos, rx407_off, $I11
  # rx literal  "-"
    add $I11, rx407_pos, 1
    gt $I11, rx407_eos, rx407_fail
    sub $I11, rx407_pos, rx407_off
    substr $S10, rx407_tgt, $I11, 1
    ne $S10, "-", rx407_fail
    add rx407_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."obs"("hyphen in enumerated character class;..")
    unless $P10, rx407_fail
    rx407_pos = $P10."pos"()
    goto alt409_end
  alt409_1:
.annotate "line", 151
  # rx charclass_q s r 0..-1
    sub $I10, rx407_pos, rx407_off
    find_not_cclass $I11, 32, rx407_tgt, $I10, rx407_eos
    add rx407_pos, rx407_off, $I11
  alt410_0:
    set_addr $I10, alt410_1
    rx407_cur."!mark_push"(0, rx407_pos, $I10)
  # rx literal  "\\"
    add $I11, rx407_pos, 1
    gt $I11, rx407_eos, rx407_fail
    sub $I11, rx407_pos, rx407_off
    substr $S10, rx407_tgt, $I11, 1
    ne $S10, "\\", rx407_fail
    add rx407_pos, 1
  # rx subrule $P412 subtype=capture negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    .const 'Sub' $P412 = "136_1256575576.91565" 
    capture_lex $P412
    $P10 = rx407_cur.$P412()
    unless $P10, rx407_fail
    rx407_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx407_pos = $P10."pos"()
    goto alt410_end
  alt410_1:
  # rx subrule $P416 subtype=capture negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    .const 'Sub' $P416 = "137_1256575576.91565" 
    capture_lex $P416
    $P10 = rx407_cur.$P416()
    unless $P10, rx407_fail
    rx407_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx407_pos = $P10."pos"()
  alt410_end:
  # rx rxquantr419 ** 0..1
    set_addr $I424, rxquantr419_done
    rx407_cur."!mark_push"(0, rx407_pos, $I424)
  rxquantr419_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx407_pos, rx407_off
    find_not_cclass $I11, 32, rx407_tgt, $I10, rx407_eos
    add rx407_pos, rx407_off, $I11
  # rx literal  ".."
    add $I11, rx407_pos, 2
    gt $I11, rx407_eos, rx407_fail
    sub $I11, rx407_pos, rx407_off
    substr $S10, rx407_tgt, $I11, 2
    ne $S10, "..", rx407_fail
    add rx407_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx407_pos, rx407_off
    find_not_cclass $I11, 32, rx407_tgt, $I10, rx407_eos
    add rx407_pos, rx407_off, $I11
  # rx subrule $P421 subtype=capture negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    .const 'Sub' $P421 = "138_1256575576.91565" 
    capture_lex $P421
    $P10 = rx407_cur.$P421()
    unless $P10, rx407_fail
    rx407_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx407_pos = $P10."pos"()
    (rx407_rep) = rx407_cur."!mark_commit"($I424)
  rxquantr419_done:
  alt409_end:
.annotate "line", 149
  # rx pass
    rx407_cur."!cursor_pass"(rx407_pos, "")
    rx407_cur."!cursor_debug"("PASS  ", "", " at pos=", rx407_pos)
    .return (rx407_cur)
  rx407_fail:
    (rx407_rep, rx407_pos, $I10, $P10) = rx407_cur."!mark_fail"(0)
    lt rx407_pos, -1, rx407_done
    eq rx407_pos, -1, rx407_fail
    jump $I10
  rx407_done:
    rx407_cur."!cursor_fail"()
    rx407_cur."!cursor_debug"("FAIL  ", "")
    .return (rx407_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block411"  :anon :subid("136_1256575576.91565") :method :outer("135_1256575576.91565")
.annotate "line", 151
    .local string rx413_tgt
    .local int rx413_pos
    .local int rx413_off
    .local int rx413_eos
    .local int rx413_rep
    .local pmc rx413_cur
    (rx413_cur, rx413_pos, rx413_tgt, $I10) = self."!cursor_start"()
    rx413_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx413_cur
    length rx413_eos, rx413_tgt
    set rx413_off, 0
    lt $I10, 2, rx413_start
    sub rx413_off, $I10, 1
    substr rx413_tgt, rx413_tgt, rx413_off
  rx413_start:
    ge rx413_pos, 0, rxscan414_done
  rxscan414_loop:
    ($P10) = rx413_cur."from"()
    inc $P10
    set rx413_pos, $P10
    ge rx413_pos, rx413_eos, rxscan414_done
    set_addr $I10, rxscan414_loop
    rx413_cur."!mark_push"(0, rx413_pos, $I10)
  rxscan414_done:
  # rx charclass .
    ge rx413_pos, rx413_eos, rx413_fail
    inc rx413_pos
  # rx pass
    rx413_cur."!cursor_pass"(rx413_pos, "")
    rx413_cur."!cursor_debug"("PASS  ", "", " at pos=", rx413_pos)
    .return (rx413_cur)
  rx413_fail:
    (rx413_rep, rx413_pos, $I10, $P10) = rx413_cur."!mark_fail"(0)
    lt rx413_pos, -1, rx413_done
    eq rx413_pos, -1, rx413_fail
    jump $I10
  rx413_done:
    rx413_cur."!cursor_fail"()
    rx413_cur."!cursor_debug"("FAIL  ", "")
    .return (rx413_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block415"  :anon :subid("137_1256575576.91565") :method :outer("135_1256575576.91565")
.annotate "line", 151
    .local string rx417_tgt
    .local int rx417_pos
    .local int rx417_off
    .local int rx417_eos
    .local int rx417_rep
    .local pmc rx417_cur
    (rx417_cur, rx417_pos, rx417_tgt, $I10) = self."!cursor_start"()
    rx417_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx417_cur
    length rx417_eos, rx417_tgt
    set rx417_off, 0
    lt $I10, 2, rx417_start
    sub rx417_off, $I10, 1
    substr rx417_tgt, rx417_tgt, rx417_off
  rx417_start:
    ge rx417_pos, 0, rxscan418_done
  rxscan418_loop:
    ($P10) = rx417_cur."from"()
    inc $P10
    set rx417_pos, $P10
    ge rx417_pos, rx417_eos, rxscan418_done
    set_addr $I10, rxscan418_loop
    rx417_cur."!mark_push"(0, rx417_pos, $I10)
  rxscan418_done:
  # rx enumcharlist negate=1 
    ge rx417_pos, rx417_eos, rx417_fail
    sub $I10, rx417_pos, rx417_off
    substr $S10, rx417_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx417_fail
    inc rx417_pos
  # rx pass
    rx417_cur."!cursor_pass"(rx417_pos, "")
    rx417_cur."!cursor_debug"("PASS  ", "", " at pos=", rx417_pos)
    .return (rx417_cur)
  rx417_fail:
    (rx417_rep, rx417_pos, $I10, $P10) = rx417_cur."!mark_fail"(0)
    lt rx417_pos, -1, rx417_done
    eq rx417_pos, -1, rx417_fail
    jump $I10
  rx417_done:
    rx417_cur."!cursor_fail"()
    rx417_cur."!cursor_debug"("FAIL  ", "")
    .return (rx417_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block420"  :anon :subid("138_1256575576.91565") :method :outer("135_1256575576.91565")
.annotate "line", 151
    .local string rx422_tgt
    .local int rx422_pos
    .local int rx422_off
    .local int rx422_eos
    .local int rx422_rep
    .local pmc rx422_cur
    (rx422_cur, rx422_pos, rx422_tgt, $I10) = self."!cursor_start"()
    rx422_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx422_cur
    length rx422_eos, rx422_tgt
    set rx422_off, 0
    lt $I10, 2, rx422_start
    sub rx422_off, $I10, 1
    substr rx422_tgt, rx422_tgt, rx422_off
  rx422_start:
    ge rx422_pos, 0, rxscan423_done
  rxscan423_loop:
    ($P10) = rx422_cur."from"()
    inc $P10
    set rx422_pos, $P10
    ge rx422_pos, rx422_eos, rxscan423_done
    set_addr $I10, rxscan423_loop
    rx422_cur."!mark_push"(0, rx422_pos, $I10)
  rxscan423_done:
  # rx charclass .
    ge rx422_pos, rx422_eos, rx422_fail
    inc rx422_pos
  # rx pass
    rx422_cur."!cursor_pass"(rx422_pos, "")
    rx422_cur."!cursor_debug"("PASS  ", "", " at pos=", rx422_pos)
    .return (rx422_cur)
  rx422_fail:
    (rx422_rep, rx422_pos, $I10, $P10) = rx422_cur."!mark_fail"(0)
    lt rx422_pos, -1, rx422_done
    eq rx422_pos, -1, rx422_fail
    jump $I10
  rx422_done:
    rx422_cur."!cursor_fail"()
    rx422_cur."!cursor_debug"("FAIL  ", "")
    .return (rx422_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("139_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 159
    .const 'Sub' $P437 = "141_1256575576.91565" 
    capture_lex $P437
    .local string rx430_tgt
    .local int rx430_pos
    .local int rx430_off
    .local int rx430_eos
    .local int rx430_rep
    .local pmc rx430_cur
    (rx430_cur, rx430_pos, rx430_tgt, $I10) = self."!cursor_start"()
    rx430_cur."!cursor_debug"("START ", "mod_internal")
    rx430_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx430_cur
    length rx430_eos, rx430_tgt
    set rx430_off, 0
    lt $I10, 2, rx430_start
    sub rx430_off, $I10, 1
    substr rx430_tgt, rx430_tgt, rx430_off
  rx430_start:
  alt434_0:
.annotate "line", 160
    set_addr $I10, alt434_1
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
.annotate "line", 161
  # rx literal  ":"
    add $I11, rx430_pos, 1
    gt $I11, rx430_eos, rx430_fail
    sub $I11, rx430_pos, rx430_off
    substr $S10, rx430_tgt, $I11, 1
    ne $S10, ":", rx430_fail
    add rx430_pos, 1
  # rx rxquantr435 ** 1..1
    set_addr $I441, rxquantr435_done
    rx430_cur."!mark_push"(0, -1, $I441)
  rxquantr435_loop:
  # rx subrule $P437 subtype=capture negate=
    rx430_cur."!cursor_pos"(rx430_pos)
    .const 'Sub' $P437 = "141_1256575576.91565" 
    capture_lex $P437
    $P10 = rx430_cur.$P437()
    unless $P10, rx430_fail
    rx430_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    rx430_pos = $P10."pos"()
    (rx430_rep) = rx430_cur."!mark_commit"($I441)
  rxquantr435_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx430_cur."!cursor_pos"(rx430_pos)
    $P10 = rx430_cur."mod_ident"()
    unless $P10, rx430_fail
    rx430_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx430_pos = $P10."pos"()
  # rxanchor rwb
    le rx430_pos, 0, rx430_fail
    sub $I10, rx430_pos, rx430_off
    is_cclass $I11, 8192, rx430_tgt, $I10
    if $I11, rx430_fail
    dec $I10
    is_cclass $I11, 8192, rx430_tgt, $I10
    unless $I11, rx430_fail
    goto alt434_end
  alt434_1:
.annotate "line", 162
  # rx literal  ":"
    add $I11, rx430_pos, 1
    gt $I11, rx430_eos, rx430_fail
    sub $I11, rx430_pos, rx430_off
    substr $S10, rx430_tgt, $I11, 1
    ne $S10, ":", rx430_fail
    add rx430_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx430_cur."!cursor_pos"(rx430_pos)
    $P10 = rx430_cur."mod_ident"()
    unless $P10, rx430_fail
    rx430_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx430_pos = $P10."pos"()
  # rx rxquantr442 ** 0..1
    set_addr $I444, rxquantr442_done
    rx430_cur."!mark_push"(0, rx430_pos, $I444)
  rxquantr442_loop:
  # rx literal  "("
    add $I11, rx430_pos, 1
    gt $I11, rx430_eos, rx430_fail
    sub $I11, rx430_pos, rx430_off
    substr $S10, rx430_tgt, $I11, 1
    ne $S10, "(", rx430_fail
    add rx430_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_443_fail
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx430_pos, rx430_off
    find_not_cclass $I11, 8, rx430_tgt, $I10, rx430_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx430_fail
    add rx430_pos, rx430_off, $I11
    set_addr $I10, rxcap_443_fail
    ($I12, $I11) = rx430_cur."!mark_peek"($I10)
    rx430_cur."!cursor_pos"($I11)
    ($P10) = rx430_cur."!cursor_start"()
    $P10."!cursor_pass"(rx430_pos, "")
    rx430_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_443_done
  rxcap_443_fail:
    goto rx430_fail
  rxcap_443_done:
  # rx literal  ")"
    add $I11, rx430_pos, 1
    gt $I11, rx430_eos, rx430_fail
    sub $I11, rx430_pos, rx430_off
    substr $S10, rx430_tgt, $I11, 1
    ne $S10, ")", rx430_fail
    add rx430_pos, 1
    (rx430_rep) = rx430_cur."!mark_commit"($I444)
  rxquantr442_done:
  alt434_end:
.annotate "line", 159
  # rx pass
    rx430_cur."!cursor_pass"(rx430_pos, "mod_internal")
    rx430_cur."!cursor_debug"("PASS  ", "mod_internal", " at pos=", rx430_pos)
    .return (rx430_cur)
  rx430_fail:
    (rx430_rep, rx430_pos, $I10, $P10) = rx430_cur."!mark_fail"(0)
    lt rx430_pos, -1, rx430_done
    eq rx430_pos, -1, rx430_fail
    jump $I10
  rx430_done:
    rx430_cur."!cursor_fail"()
    rx430_cur."!cursor_debug"("FAIL  ", "mod_internal")
    .return (rx430_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :subid("140_1256575576.91565") :method
.annotate "line", 159
    $P432 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P433, "ResizablePMCArray"
    push $P433, $P432
    push $P433, ":"
    .return ($P433)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block436"  :anon :subid("141_1256575576.91565") :method :outer("139_1256575576.91565")
.annotate "line", 161
    .local string rx438_tgt
    .local int rx438_pos
    .local int rx438_off
    .local int rx438_eos
    .local int rx438_rep
    .local pmc rx438_cur
    (rx438_cur, rx438_pos, rx438_tgt, $I10) = self."!cursor_start"()
    rx438_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx438_cur
    length rx438_eos, rx438_tgt
    set rx438_off, 0
    lt $I10, 2, rx438_start
    sub rx438_off, $I10, 1
    substr rx438_tgt, rx438_tgt, rx438_off
  rx438_start:
    ge rx438_pos, 0, rxscan439_done
  rxscan439_loop:
    ($P10) = rx438_cur."from"()
    inc $P10
    set rx438_pos, $P10
    ge rx438_pos, rx438_eos, rxscan439_done
    set_addr $I10, rxscan439_loop
    rx438_cur."!mark_push"(0, rx438_pos, $I10)
  rxscan439_done:
  alt440_0:
    set_addr $I10, alt440_1
    rx438_cur."!mark_push"(0, rx438_pos, $I10)
  # rx literal  "!"
    add $I11, rx438_pos, 1
    gt $I11, rx438_eos, rx438_fail
    sub $I11, rx438_pos, rx438_off
    substr $S10, rx438_tgt, $I11, 1
    ne $S10, "!", rx438_fail
    add rx438_pos, 1
    goto alt440_end
  alt440_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx438_pos, rx438_off
    find_not_cclass $I11, 8, rx438_tgt, $I10, rx438_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx438_fail
    add rx438_pos, rx438_off, $I11
  alt440_end:
  # rx pass
    rx438_cur."!cursor_pass"(rx438_pos, "")
    rx438_cur."!cursor_debug"("PASS  ", "", " at pos=", rx438_pos)
    .return (rx438_cur)
  rx438_fail:
    (rx438_rep, rx438_pos, $I10, $P10) = rx438_cur."!mark_fail"(0)
    lt rx438_pos, -1, rx438_done
    eq rx438_pos, -1, rx438_fail
    jump $I10
  rx438_done:
    rx438_cur."!cursor_fail"()
    rx438_cur."!cursor_debug"("FAIL  ", "")
    .return (rx438_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("142_1256575576.91565") :method
.annotate "line", 166
    $P446 = self."!protoregex"("mod_ident")
    .return ($P446)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("143_1256575576.91565") :method
.annotate "line", 166
    $P448 = self."!PREFIX__!protoregex"("mod_ident")
    .return ($P448)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("144_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 167
    .local string rx450_tgt
    .local int rx450_pos
    .local int rx450_off
    .local int rx450_eos
    .local int rx450_rep
    .local pmc rx450_cur
    (rx450_cur, rx450_pos, rx450_tgt, $I10) = self."!cursor_start"()
    rx450_cur."!cursor_debug"("START ", "mod_ident:sym<ignorecase>")
    .lex unicode:"$\x{a2}", rx450_cur
    length rx450_eos, rx450_tgt
    set rx450_off, 0
    lt $I10, 2, rx450_start
    sub rx450_off, $I10, 1
    substr rx450_tgt, rx450_tgt, rx450_off
  rx450_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_453_fail
    rx450_cur."!mark_push"(0, rx450_pos, $I10)
  # rx literal  "i"
    add $I11, rx450_pos, 1
    gt $I11, rx450_eos, rx450_fail
    sub $I11, rx450_pos, rx450_off
    substr $S10, rx450_tgt, $I11, 1
    ne $S10, "i", rx450_fail
    add rx450_pos, 1
    set_addr $I10, rxcap_453_fail
    ($I12, $I11) = rx450_cur."!mark_peek"($I10)
    rx450_cur."!cursor_pos"($I11)
    ($P10) = rx450_cur."!cursor_start"()
    $P10."!cursor_pass"(rx450_pos, "")
    rx450_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_453_done
  rxcap_453_fail:
    goto rx450_fail
  rxcap_453_done:
  # rx rxquantr454 ** 0..1
    set_addr $I455, rxquantr454_done
    rx450_cur."!mark_push"(0, rx450_pos, $I455)
  rxquantr454_loop:
  # rx literal  "gnorecase"
    add $I11, rx450_pos, 9
    gt $I11, rx450_eos, rx450_fail
    sub $I11, rx450_pos, rx450_off
    substr $S10, rx450_tgt, $I11, 9
    ne $S10, "gnorecase", rx450_fail
    add rx450_pos, 9
    (rx450_rep) = rx450_cur."!mark_commit"($I455)
  rxquantr454_done:
  # rx pass
    rx450_cur."!cursor_pass"(rx450_pos, "mod_ident:sym<ignorecase>")
    rx450_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ignorecase>", " at pos=", rx450_pos)
    .return (rx450_cur)
  rx450_fail:
    (rx450_rep, rx450_pos, $I10, $P10) = rx450_cur."!mark_fail"(0)
    lt rx450_pos, -1, rx450_done
    eq rx450_pos, -1, rx450_fail
    jump $I10
  rx450_done:
    rx450_cur."!cursor_fail"()
    rx450_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ignorecase>")
    .return (rx450_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :subid("145_1256575576.91565") :method
.annotate "line", 167
    new $P452, "ResizablePMCArray"
    push $P452, "i"
    .return ($P452)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("146_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 168
    .local string rx457_tgt
    .local int rx457_pos
    .local int rx457_off
    .local int rx457_eos
    .local int rx457_rep
    .local pmc rx457_cur
    (rx457_cur, rx457_pos, rx457_tgt, $I10) = self."!cursor_start"()
    rx457_cur."!cursor_debug"("START ", "mod_ident:sym<ratchet>")
    .lex unicode:"$\x{a2}", rx457_cur
    length rx457_eos, rx457_tgt
    set rx457_off, 0
    lt $I10, 2, rx457_start
    sub rx457_off, $I10, 1
    substr rx457_tgt, rx457_tgt, rx457_off
  rx457_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_460_fail
    rx457_cur."!mark_push"(0, rx457_pos, $I10)
  # rx literal  "r"
    add $I11, rx457_pos, 1
    gt $I11, rx457_eos, rx457_fail
    sub $I11, rx457_pos, rx457_off
    substr $S10, rx457_tgt, $I11, 1
    ne $S10, "r", rx457_fail
    add rx457_pos, 1
    set_addr $I10, rxcap_460_fail
    ($I12, $I11) = rx457_cur."!mark_peek"($I10)
    rx457_cur."!cursor_pos"($I11)
    ($P10) = rx457_cur."!cursor_start"()
    $P10."!cursor_pass"(rx457_pos, "")
    rx457_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_460_done
  rxcap_460_fail:
    goto rx457_fail
  rxcap_460_done:
  # rx rxquantr461 ** 0..1
    set_addr $I462, rxquantr461_done
    rx457_cur."!mark_push"(0, rx457_pos, $I462)
  rxquantr461_loop:
  # rx literal  "atchet"
    add $I11, rx457_pos, 6
    gt $I11, rx457_eos, rx457_fail
    sub $I11, rx457_pos, rx457_off
    substr $S10, rx457_tgt, $I11, 6
    ne $S10, "atchet", rx457_fail
    add rx457_pos, 6
    (rx457_rep) = rx457_cur."!mark_commit"($I462)
  rxquantr461_done:
  # rx pass
    rx457_cur."!cursor_pass"(rx457_pos, "mod_ident:sym<ratchet>")
    rx457_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ratchet>", " at pos=", rx457_pos)
    .return (rx457_cur)
  rx457_fail:
    (rx457_rep, rx457_pos, $I10, $P10) = rx457_cur."!mark_fail"(0)
    lt rx457_pos, -1, rx457_done
    eq rx457_pos, -1, rx457_fail
    jump $I10
  rx457_done:
    rx457_cur."!cursor_fail"()
    rx457_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ratchet>")
    .return (rx457_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :subid("147_1256575576.91565") :method
.annotate "line", 168
    new $P459, "ResizablePMCArray"
    push $P459, "r"
    .return ($P459)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("148_1256575576.91565") :method :outer("10_1256575576.91565")
.annotate "line", 169
    .local string rx464_tgt
    .local int rx464_pos
    .local int rx464_off
    .local int rx464_eos
    .local int rx464_rep
    .local pmc rx464_cur
    (rx464_cur, rx464_pos, rx464_tgt, $I10) = self."!cursor_start"()
    rx464_cur."!cursor_debug"("START ", "mod_ident:sym<sigspace>")
    .lex unicode:"$\x{a2}", rx464_cur
    length rx464_eos, rx464_tgt
    set rx464_off, 0
    lt $I10, 2, rx464_start
    sub rx464_off, $I10, 1
    substr rx464_tgt, rx464_tgt, rx464_off
  rx464_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_467_fail
    rx464_cur."!mark_push"(0, rx464_pos, $I10)
  # rx literal  "s"
    add $I11, rx464_pos, 1
    gt $I11, rx464_eos, rx464_fail
    sub $I11, rx464_pos, rx464_off
    substr $S10, rx464_tgt, $I11, 1
    ne $S10, "s", rx464_fail
    add rx464_pos, 1
    set_addr $I10, rxcap_467_fail
    ($I12, $I11) = rx464_cur."!mark_peek"($I10)
    rx464_cur."!cursor_pos"($I11)
    ($P10) = rx464_cur."!cursor_start"()
    $P10."!cursor_pass"(rx464_pos, "")
    rx464_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_467_done
  rxcap_467_fail:
    goto rx464_fail
  rxcap_467_done:
  # rx rxquantr468 ** 0..1
    set_addr $I469, rxquantr468_done
    rx464_cur."!mark_push"(0, rx464_pos, $I469)
  rxquantr468_loop:
  # rx literal  "igspace"
    add $I11, rx464_pos, 7
    gt $I11, rx464_eos, rx464_fail
    sub $I11, rx464_pos, rx464_off
    substr $S10, rx464_tgt, $I11, 7
    ne $S10, "igspace", rx464_fail
    add rx464_pos, 7
    (rx464_rep) = rx464_cur."!mark_commit"($I469)
  rxquantr468_done:
  # rx pass
    rx464_cur."!cursor_pass"(rx464_pos, "mod_ident:sym<sigspace>")
    rx464_cur."!cursor_debug"("PASS  ", "mod_ident:sym<sigspace>", " at pos=", rx464_pos)
    .return (rx464_cur)
  rx464_fail:
    (rx464_rep, rx464_pos, $I10, $P10) = rx464_cur."!mark_fail"(0)
    lt rx464_pos, -1, rx464_done
    eq rx464_pos, -1, rx464_fail
    jump $I10
  rx464_done:
    rx464_cur."!cursor_fail"()
    rx464_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<sigspace>")
    .return (rx464_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :subid("149_1256575576.91565") :method
.annotate "line", 169
    new $P466, "ResizablePMCArray"
    push $P466, "s"
    .return ($P466)
.end

### .include 'gen/p6regex-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256575582.72382")
.annotate "line", 4
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
.annotate "line", 1
    .return ($P14)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block13" :init :load :subid("11_1256575582.72382")
.annotate "line", 4
    .const 'Sub' $P1441 = "123_1256575582.72382" 
    capture_lex $P1441
    .const 'Sub' $P1400 = "119_1256575582.72382" 
    capture_lex $P1400
    .const 'Sub' $P1137 = "101_1256575582.72382" 
    capture_lex $P1137
    .const 'Sub' $P1117 = "100_1256575582.72382" 
    capture_lex $P1117
    .const 'Sub' $P1090 = "99_1256575582.72382" 
    capture_lex $P1090
    .const 'Sub' $P1022 = "93_1256575582.72382" 
    capture_lex $P1022
    .const 'Sub' $P953 = "88_1256575582.72382" 
    capture_lex $P953
    .const 'Sub' $P869 = "81_1256575582.72382" 
    capture_lex $P869
    .const 'Sub' $P857 = "80_1256575582.72382" 
    capture_lex $P857
    .const 'Sub' $P829 = "77_1256575582.72382" 
    capture_lex $P829
    .const 'Sub' $P807 = "74_1256575582.72382" 
    capture_lex $P807
    .const 'Sub' $P794 = "73_1256575582.72382" 
    capture_lex $P794
    .const 'Sub' $P779 = "72_1256575582.72382" 
    capture_lex $P779
    .const 'Sub' $P764 = "71_1256575582.72382" 
    capture_lex $P764
    .const 'Sub' $P749 = "70_1256575582.72382" 
    capture_lex $P749
    .const 'Sub' $P734 = "69_1256575582.72382" 
    capture_lex $P734
    .const 'Sub' $P719 = "68_1256575582.72382" 
    capture_lex $P719
    .const 'Sub' $P704 = "67_1256575582.72382" 
    capture_lex $P704
    .const 'Sub' $P689 = "66_1256575582.72382" 
    capture_lex $P689
    .const 'Sub' $P667 = "65_1256575582.72382" 
    capture_lex $P667
    .const 'Sub' $P652 = "64_1256575582.72382" 
    capture_lex $P652
    .const 'Sub' $P581 = "58_1256575582.72382" 
    capture_lex $P581
    .const 'Sub' $P561 = "57_1256575582.72382" 
    capture_lex $P561
    .const 'Sub' $P539 = "56_1256575582.72382" 
    capture_lex $P539
    .const 'Sub' $P529 = "55_1256575582.72382" 
    capture_lex $P529
    .const 'Sub' $P519 = "54_1256575582.72382" 
    capture_lex $P519
    .const 'Sub' $P509 = "53_1256575582.72382" 
    capture_lex $P509
    .const 'Sub' $P498 = "52_1256575582.72382" 
    capture_lex $P498
    .const 'Sub' $P487 = "51_1256575582.72382" 
    capture_lex $P487
    .const 'Sub' $P476 = "50_1256575582.72382" 
    capture_lex $P476
    .const 'Sub' $P465 = "49_1256575582.72382" 
    capture_lex $P465
    .const 'Sub' $P454 = "48_1256575582.72382" 
    capture_lex $P454
    .const 'Sub' $P443 = "47_1256575582.72382" 
    capture_lex $P443
    .const 'Sub' $P432 = "46_1256575582.72382" 
    capture_lex $P432
    .const 'Sub' $P421 = "45_1256575582.72382" 
    capture_lex $P421
    .const 'Sub' $P406 = "44_1256575582.72382" 
    capture_lex $P406
    .const 'Sub' $P390 = "43_1256575582.72382" 
    capture_lex $P390
    .const 'Sub' $P380 = "42_1256575582.72382" 
    capture_lex $P380
    .const 'Sub' $P363 = "41_1256575582.72382" 
    capture_lex $P363
    .const 'Sub' $P303 = "36_1256575582.72382" 
    capture_lex $P303
    .const 'Sub' $P287 = "35_1256575582.72382" 
    capture_lex $P287
    .const 'Sub' $P273 = "34_1256575582.72382" 
    capture_lex $P273
    .const 'Sub' $P259 = "33_1256575582.72382" 
    capture_lex $P259
    .const 'Sub' $P225 = "29_1256575582.72382" 
    capture_lex $P225
    .const 'Sub' $P168 = "24_1256575582.72382" 
    capture_lex $P168
    .const 'Sub' $P107 = "19_1256575582.72382" 
    capture_lex $P107
    .const 'Sub' $P49 = "14_1256575582.72382" 
    capture_lex $P49
    .const 'Sub' $P35 = "13_1256575582.72382" 
    capture_lex $P35
    .const 'Sub' $P17 = "12_1256575582.72382" 
    capture_lex $P17
$P15 = get_root_global ["parrot"], "P6metaclass"
    $P15."new_class"("Regex::P6Regex::Actions")
 
        $P16 = new ['ResizablePMCArray'] 
        $P0 = new ['Hash']
        push $P16, $P0
    
    set_global "@MODIFIERS", $P16
.annotate "line", 521
    .const 'Sub' $P1441 = "123_1256575582.72382" 
    capture_lex $P1441
.annotate "line", 4
    .return ($P1441)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("12_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P25, vivify_125
    new $P25, "Undef"
  vivify_125:
    if $P25, if_23
    find_lex $P30, "$/"
    set $P31, $P30["val"]
    unless_null $P31, vivify_126
    new $P31, "Undef"
  vivify_126:
    set $N32, $P31
    new $P22, 'Float'
    set $P22, $N32
    goto if_23_end
  if_23:
    find_lex $P26, "$/"
    set $P27, $P26["quote"]
    unless_null $P27, vivify_127
    new $P27, "Hash"
  vivify_127:
    set $P28, $P27["val"]
    unless_null $P28, vivify_128
    new $P28, "Undef"
  vivify_128:
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
.sub "TOP"  :subid("13_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P40, vivify_129
    new $P40, "Undef"
  vivify_129:
    $P41 = $P40."ast"()
    $P42 = "buildsub"($P41)
    .lex "$past", $P42
.annotate "line", 16
    find_lex $P43, "$past"
    unless_null $P43, vivify_130
    new $P43, "Undef"
  vivify_130:
    find_lex $P44, "$/"
    unless_null $P44, vivify_131
    new $P44, "Undef"
  vivify_131:
    $P43."node"($P44)
    find_lex $P45, "$/"
.annotate "line", 17
    find_lex $P46, "$past"
    unless_null $P46, vivify_132
    new $P46, "Undef"
  vivify_132:
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
.sub "nibbler"  :subid("14_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_52
    .param pmc param_53 :optional
    .param int has_param_53 :opt_flag
.annotate "line", 20
    .const 'Sub' $P98 = "18_1256575582.72382" 
    capture_lex $P98
    .const 'Sub' $P78 = "16_1256575582.72382" 
    capture_lex $P78
    .const 'Sub' $P60 = "15_1256575582.72382" 
    capture_lex $P60
    new $P51, 'ExceptionHandler'
    set_addr $P51, control_50
    $P51."handle_types"(58)
    push_eh $P51
    .lex "self", self
    .lex "$/", param_52
    if has_param_53, optparam_133
    new $P54, "Undef"
    set param_53, $P54
  optparam_133:
    .lex "$key", param_53
.annotate "line", 21
    find_lex $P56, "$key"
    unless_null $P56, vivify_134
    new $P56, "Undef"
  vivify_134:
    set $S57, $P56
    iseq $I58, $S57, "open"
    unless $I58, if_55_end
    .const 'Sub' $P60 = "15_1256575582.72382" 
    capture_lex $P60
    $P60()
  if_55_end:
.annotate "line", 31
    get_global $P68, "@MODIFIERS"
    unless_null $P68, vivify_139
    new $P68, "ResizablePMCArray"
  vivify_139:
    $P68."shift"()
.annotate "line", 32
    new $P69, "Undef"
    .lex "$past", $P69
.annotate "line", 33
    find_lex $P71, "$/"
    set $P72, $P71["termish"]
    unless_null $P72, vivify_140
    new $P72, "Undef"
  vivify_140:
    set $N73, $P72
    new $P74, "Integer"
    assign $P74, 1
    set $N75, $P74
    isgt $I76, $N73, $N75
    if $I76, if_70
.annotate "line", 39
    .const 'Sub' $P98 = "18_1256575582.72382" 
    capture_lex $P98
    $P98()
    goto if_70_end
  if_70:
.annotate "line", 33
    .const 'Sub' $P78 = "16_1256575582.72382" 
    capture_lex $P78
    $P78()
  if_70_end:
    find_lex $P103, "$/"
.annotate "line", 42
    find_lex $P104, "$past"
    unless_null $P104, vivify_148
    new $P104, "Undef"
  vivify_148:
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
.sub "_block59"  :anon :subid("15_1256575582.72382") :outer("14_1256575582.72382")
.annotate "line", 22
    get_global $P61, "@MODIFIERS"
    unless_null $P61, vivify_135
    new $P61, "ResizablePMCArray"
  vivify_135:
    set $P62, $P61[0]
    unless_null $P62, vivify_136
    new $P62, "Undef"
  vivify_136:
    .lex "%old", $P62
.annotate "line", 23

                       $P0 = find_lex '%old'
                       $P63 = clone $P0
                   
    .lex "%new", $P63
.annotate "line", 27
    get_global $P64, "@MODIFIERS"
    unless_null $P64, vivify_137
    new $P64, "ResizablePMCArray"
  vivify_137:
    find_lex $P65, "%new"
    unless_null $P65, vivify_138
    new $P65, "Hash"
  vivify_138:
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
.sub "_block97"  :anon :subid("18_1256575582.72382") :outer("14_1256575582.72382")
.annotate "line", 40
    find_lex $P99, "$/"
    set $P100, $P99["termish"]
    unless_null $P100, vivify_141
    new $P100, "ResizablePMCArray"
  vivify_141:
    set $P101, $P100[0]
    unless_null $P101, vivify_142
    new $P101, "Undef"
  vivify_142:
    $P102 = $P101."ast"()
    store_lex "$past", $P102
.annotate "line", 39
    .return ($P102)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block77"  :anon :subid("16_1256575582.72382") :outer("14_1256575582.72382")
.annotate "line", 33
    .const 'Sub' $P88 = "17_1256575582.72382" 
    capture_lex $P88
.annotate "line", 34
    get_hll_global $P79, ["PAST"], "Regex"
    find_lex $P80, "$/"
    unless_null $P80, vivify_143
    new $P80, "Undef"
  vivify_143:
    $P81 = $P79."new"("alt" :named("pasttype"), $P80 :named("node"))
    store_lex "$past", $P81
.annotate "line", 35
    find_lex $P83, "$/"
    set $P84, $P83["termish"]
    unless_null $P84, vivify_144
    new $P84, "Undef"
  vivify_144:
    defined $I85, $P84
    unless $I85, for_undef_145
    iter $P82, $P84
    new $P95, 'ExceptionHandler'
    set_addr $P95, loop94_handler
    $P95."handle_types"(65, 67, 66)
    push_eh $P95
  loop94_test:
    unless $P82, loop94_done
    shift $P86, $P82
  loop94_redo:
    .const 'Sub' $P88 = "17_1256575582.72382" 
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
  for_undef_145:
.annotate "line", 33
    .return ($P82)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block87"  :anon :subid("17_1256575582.72382") :outer("16_1256575582.72382")
    .param pmc param_89
.annotate "line", 35
    .lex "$_", param_89
.annotate "line", 36
    find_lex $P90, "$past"
    unless_null $P90, vivify_146
    new $P90, "Undef"
  vivify_146:
    find_lex $P91, "$_"
    unless_null $P91, vivify_147
    new $P91, "Undef"
  vivify_147:
    $P92 = $P91."ast"()
    $P93 = $P90."push"($P92)
.annotate "line", 35
    .return ($P93)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "termish"  :subid("19_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_110
.annotate "line", 45
    .const 'Sub' $P121 = "20_1256575582.72382" 
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
    unless_null $P112, vivify_149
    new $P112, "Undef"
  vivify_149:
    $P113 = $P111."new"("concat" :named("pasttype"), $P112 :named("node"))
    .lex "$past", $P113
.annotate "line", 47
    new $P114, "Integer"
    assign $P114, 0
    .lex "$lastlit", $P114
.annotate "line", 48
    find_lex $P116, "$/"
    set $P117, $P116["noun"]
    unless_null $P117, vivify_150
    new $P117, "Undef"
  vivify_150:
    defined $I118, $P117
    unless $I118, for_undef_151
    iter $P115, $P117
    new $P162, 'ExceptionHandler'
    set_addr $P162, loop161_handler
    $P162."handle_types"(65, 67, 66)
    push_eh $P162
  loop161_test:
    unless $P115, loop161_done
    shift $P119, $P115
  loop161_redo:
    .const 'Sub' $P121 = "20_1256575582.72382" 
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
  for_undef_151:
    find_lex $P164, "$/"
.annotate "line", 59
    find_lex $P165, "$past"
    unless_null $P165, vivify_165
    new $P165, "Undef"
  vivify_165:
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
.sub "_block120"  :anon :subid("20_1256575582.72382") :outer("19_1256575582.72382")
    .param pmc param_122
.annotate "line", 48
    .const 'Sub' $P150 = "23_1256575582.72382" 
    capture_lex $P150
    .const 'Sub' $P141 = "22_1256575582.72382" 
    capture_lex $P141
    .const 'Sub' $P130 = "21_1256575582.72382" 
    capture_lex $P130
    .lex "$_", param_122
.annotate "line", 49
    find_lex $P123, "$_"
    unless_null $P123, vivify_152
    new $P123, "Undef"
  vivify_152:
    $P124 = $P123."ast"()
    .lex "$ast", $P124
.annotate "line", 50
    find_lex $P127, "$ast"
    unless_null $P127, vivify_153
    new $P127, "Undef"
  vivify_153:
    isfalse $I128, $P127
    if $I128, if_126
.annotate "line", 51
    find_lex $P136, "$lastlit"
    unless_null $P136, vivify_154
    new $P136, "Undef"
  vivify_154:
    if $P136, if_135
    set $P134, $P136
    goto if_135_end
  if_135:
    find_lex $P137, "$ast"
    unless_null $P137, vivify_155
    new $P137, "Undef"
  vivify_155:
    $S138 = $P137."pasttype"()
    iseq $I139, $S138, "literal"
    new $P134, 'Integer'
    set $P134, $I139
  if_135_end:
    if $P134, if_133
.annotate "line", 54
    .const 'Sub' $P150 = "23_1256575582.72382" 
    capture_lex $P150
    $P160 = $P150()
    set $P132, $P160
.annotate "line", 51
    goto if_133_end
  if_133:
    .const 'Sub' $P141 = "22_1256575582.72382" 
    capture_lex $P141
    $P148 = $P141()
    set $P132, $P148
  if_133_end:
.annotate "line", 50
    set $P125, $P132
    goto if_126_end
  if_126:
    .const 'Sub' $P130 = "21_1256575582.72382" 
    capture_lex $P130
    $P131 = $P130()
    set $P125, $P131
  if_126_end:
.annotate "line", 48
    .return ($P125)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block149"  :anon :subid("23_1256575582.72382") :outer("20_1256575582.72382")
.annotate "line", 55
    find_lex $P151, "$past"
    unless_null $P151, vivify_156
    new $P151, "Undef"
  vivify_156:
    find_lex $P152, "$ast"
    unless_null $P152, vivify_157
    new $P152, "Undef"
  vivify_157:
    $P151."push"($P152)
.annotate "line", 56
    find_lex $P155, "$ast"
    unless_null $P155, vivify_158
    new $P155, "Undef"
  vivify_158:
    $S156 = $P155."pasttype"()
    iseq $I157, $S156, "literal"
    if $I157, if_154
    new $P159, "Integer"
    assign $P159, 0
    set $P153, $P159
    goto if_154_end
  if_154:
    find_lex $P158, "$ast"
    unless_null $P158, vivify_159
    new $P158, "Undef"
  vivify_159:
    set $P153, $P158
  if_154_end:
    store_lex "$lastlit", $P153
.annotate "line", 54
    .return ($P153)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block140"  :anon :subid("22_1256575582.72382") :outer("20_1256575582.72382")
.annotate "line", 52
    find_lex $P142, "$lastlit"
    unless_null $P142, vivify_160
    new $P142, "ResizablePMCArray"
  vivify_160:
    set $P143, $P142[0]
    unless_null $P143, vivify_161
    new $P143, "Undef"
  vivify_161:
    find_lex $P144, "$ast"
    unless_null $P144, vivify_162
    new $P144, "ResizablePMCArray"
  vivify_162:
    set $P145, $P144[0]
    unless_null $P145, vivify_163
    new $P145, "Undef"
  vivify_163:
    concat $P146, $P143, $P145
    find_lex $P147, "$lastlit"
    unless_null $P147, vivify_164
    new $P147, "ResizablePMCArray"
    store_lex "$lastlit", $P147
  vivify_164:
    set $P147[0], $P146
.annotate "line", 51
    .return ($P146)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block129"  :anon :subid("21_1256575582.72382") :outer("20_1256575582.72382")
.annotate "line", 50
    .return ()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("24_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_171
.annotate "line", 62
    .const 'Sub' $P218 = "28_1256575582.72382" 
    capture_lex $P218
    .const 'Sub' $P199 = "27_1256575582.72382" 
    capture_lex $P199
    .const 'Sub' $P179 = "25_1256575582.72382" 
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
    unless_null $P173, vivify_166
    new $P173, "Undef"
  vivify_166:
    $P174 = $P173."ast"()
    .lex "$past", $P174
.annotate "line", 64
    find_lex $P176, "$/"
    set $P177, $P176["quantifier"]
    unless_null $P177, vivify_167
    new $P177, "Undef"
  vivify_167:
    if $P177, if_175
.annotate "line", 70
    find_lex $P195, "$/"
    set $P196, $P195["backmod"]
    unless_null $P196, vivify_168
    new $P196, "ResizablePMCArray"
  vivify_168:
    set $P197, $P196[0]
    unless_null $P197, vivify_169
    new $P197, "Undef"
  vivify_169:
    unless $P197, if_194_end
    .const 'Sub' $P199 = "27_1256575582.72382" 
    capture_lex $P199
    $P199()
  if_194_end:
.annotate "line", 64
    goto if_175_end
  if_175:
    .const 'Sub' $P179 = "25_1256575582.72382" 
    capture_lex $P179
    $P179()
  if_175_end:
.annotate "line", 71
    find_lex $P210, "$past"
    unless_null $P210, vivify_180
    new $P210, "Undef"
  vivify_180:
    if $P210, if_209
    set $P208, $P210
    goto if_209_end
  if_209:
    find_lex $P211, "$past"
    unless_null $P211, vivify_181
    new $P211, "Undef"
  vivify_181:
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
    unless_null $P214, vivify_182
    new $P214, "ResizablePMCArray"
  vivify_182:
    set $P215, $P214[0]
    unless_null $P215, vivify_183
    new $P215, "Hash"
  vivify_183:
    set $P216, $P215["r"]
    unless_null $P216, vivify_184
    new $P216, "Undef"
  vivify_184:
    set $P206, $P216
  if_207_end:
    unless $P206, if_205_end
    .const 'Sub' $P218 = "28_1256575582.72382" 
    capture_lex $P218
    $P218()
  if_205_end:
    find_lex $P221, "$/"
.annotate "line", 74
    find_lex $P222, "$past"
    unless_null $P222, vivify_186
    new $P222, "Undef"
  vivify_186:
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
.sub "_block198"  :anon :subid("27_1256575582.72382") :outer("24_1256575582.72382")
.annotate "line", 70
    find_lex $P200, "$past"
    unless_null $P200, vivify_170
    new $P200, "Undef"
  vivify_170:
    find_lex $P201, "$/"
    set $P202, $P201["backmod"]
    unless_null $P202, vivify_171
    new $P202, "ResizablePMCArray"
  vivify_171:
    set $P203, $P202[0]
    unless_null $P203, vivify_172
    new $P203, "Undef"
  vivify_172:
    $P204 = "backmod"($P200, $P203)
    .return ($P204)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block178"  :anon :subid("25_1256575582.72382") :outer("24_1256575582.72382")
.annotate "line", 64
    .const 'Sub' $P184 = "26_1256575582.72382" 
    capture_lex $P184
.annotate "line", 65
    find_lex $P181, "$past"
    unless_null $P181, vivify_173
    new $P181, "Undef"
  vivify_173:
    isfalse $I182, $P181
    unless $I182, if_180_end
    .const 'Sub' $P184 = "26_1256575582.72382" 
    capture_lex $P184
    $P184()
  if_180_end:
.annotate "line", 66
    find_lex $P187, "$/"
    set $P188, $P187["quantifier"]
    unless_null $P188, vivify_175
    new $P188, "ResizablePMCArray"
  vivify_175:
    set $P189, $P188[0]
    unless_null $P189, vivify_176
    new $P189, "Undef"
  vivify_176:
    $P190 = $P189."ast"()
    .lex "$qast", $P190
.annotate "line", 67
    find_lex $P191, "$qast"
    unless_null $P191, vivify_177
    new $P191, "Undef"
  vivify_177:
    find_lex $P192, "$past"
    unless_null $P192, vivify_178
    new $P192, "Undef"
  vivify_178:
    $P191."unshift"($P192)
.annotate "line", 68
    find_lex $P193, "$qast"
    unless_null $P193, vivify_179
    new $P193, "Undef"
  vivify_179:
    store_lex "$past", $P193
.annotate "line", 64
    .return ($P193)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block183"  :anon :subid("26_1256575582.72382") :outer("25_1256575582.72382")
.annotate "line", 65
    find_lex $P185, "$/"
    unless_null $P185, vivify_174
    new $P185, "Undef"
  vivify_174:
    $P186 = $P185."panic"("Can't quantify zero-width atom")
    .return ($P186)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block217"  :anon :subid("28_1256575582.72382") :outer("24_1256575582.72382")
.annotate "line", 72
    find_lex $P219, "$past"
    unless_null $P219, vivify_185
    new $P219, "Undef"
  vivify_185:
    $P220 = $P219."backtrack"("r")
.annotate "line", 71
    .return ($P220)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("29_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_228
.annotate "line", 77
    .const 'Sub' $P239 = "31_1256575582.72382" 
    capture_lex $P239
    .const 'Sub' $P234 = "30_1256575582.72382" 
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
    unless_null $P232, vivify_187
    new $P232, "Undef"
  vivify_187:
    if $P232, if_230
.annotate "line", 80
    .const 'Sub' $P239 = "31_1256575582.72382" 
    capture_lex $P239
    $P239()
    goto if_230_end
  if_230:
.annotate "line", 79
    .const 'Sub' $P234 = "30_1256575582.72382" 
    capture_lex $P234
    $P234()
  if_230_end:
    find_lex $P255, "$/"
.annotate "line", 84
    find_lex $P256, "$past"
    unless_null $P256, vivify_195
    new $P256, "Undef"
  vivify_195:
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
.sub "_block238"  :anon :subid("31_1256575582.72382") :outer("29_1256575582.72382")
.annotate "line", 80
    .const 'Sub' $P251 = "32_1256575582.72382" 
    capture_lex $P251
.annotate "line", 81
    get_hll_global $P240, ["PAST"], "Regex"
    find_lex $P241, "$/"
    unless_null $P241, vivify_188
    new $P241, "Undef"
  vivify_188:
    set $S242, $P241
    find_lex $P243, "$/"
    unless_null $P243, vivify_189
    new $P243, "Undef"
  vivify_189:
    $P244 = $P240."new"($S242, "literal" :named("pasttype"), $P243 :named("node"))
    store_lex "$past", $P244
.annotate "line", 82
    get_global $P247, "@MODIFIERS"
    unless_null $P247, vivify_190
    new $P247, "ResizablePMCArray"
  vivify_190:
    set $P248, $P247[0]
    unless_null $P248, vivify_191
    new $P248, "Hash"
  vivify_191:
    set $P249, $P248["i"]
    unless_null $P249, vivify_192
    new $P249, "Undef"
  vivify_192:
    if $P249, if_246
    set $P245, $P249
    goto if_246_end
  if_246:
    .const 'Sub' $P251 = "32_1256575582.72382" 
    capture_lex $P251
    $P254 = $P251()
    set $P245, $P254
  if_246_end:
.annotate "line", 80
    .return ($P245)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block250"  :anon :subid("32_1256575582.72382") :outer("31_1256575582.72382")
.annotate "line", 82
    find_lex $P252, "$past"
    unless_null $P252, vivify_193
    new $P252, "Undef"
  vivify_193:
    $P253 = $P252."subtype"("ignorecase")
    .return ($P253)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block233"  :anon :subid("30_1256575582.72382") :outer("29_1256575582.72382")
.annotate "line", 79
    find_lex $P235, "$/"
    set $P236, $P235["metachar"]
    unless_null $P236, vivify_194
    new $P236, "Undef"
  vivify_194:
    $P237 = $P236."ast"()
    store_lex "$past", $P237
    .return ($P237)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("33_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P264, vivify_196
    new $P264, "Undef"
  vivify_196:
    $P265 = $P263."new"("quant" :named("pasttype"), $P264 :named("node"))
    .lex "$past", $P265
    find_lex $P266, "$/"
.annotate "line", 89
    find_lex $P267, "$past"
    unless_null $P267, vivify_197
    new $P267, "Undef"
  vivify_197:
    find_lex $P268, "$/"
    set $P269, $P268["backmod"]
    unless_null $P269, vivify_198
    new $P269, "Undef"
  vivify_198:
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
.sub "quantifier:sym<+>"  :subid("34_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P278, vivify_199
    new $P278, "Undef"
  vivify_199:
    $P279 = $P277."new"("quant" :named("pasttype"), 1 :named("min"), $P278 :named("node"))
    .lex "$past", $P279
    find_lex $P280, "$/"
.annotate "line", 94
    find_lex $P281, "$past"
    unless_null $P281, vivify_200
    new $P281, "Undef"
  vivify_200:
    find_lex $P282, "$/"
    set $P283, $P282["backmod"]
    unless_null $P283, vivify_201
    new $P283, "Undef"
  vivify_201:
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
.sub "quantifier:sym<?>"  :subid("35_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P292, vivify_202
    new $P292, "Undef"
  vivify_202:
    $P293 = $P291."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P292 :named("node"))
    .lex "$past", $P293
    find_lex $P294, "$/"
.annotate "line", 99
    find_lex $P295, "$past"
    unless_null $P295, vivify_203
    new $P295, "Undef"
  vivify_203:
    find_lex $P296, "$/"
    set $P297, $P296["backmod"]
    unless_null $P297, vivify_204
    new $P297, "Undef"
  vivify_204:
    $P298 = "backmod"($P295, $P297)
    $P294."!make"($P298)
.annotate "line", 98
    find_lex $P299, "$/"
.annotate "line", 100
    find_lex $P300, "$past"
    unless_null $P300, vivify_205
    new $P300, "Undef"
  vivify_205:
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
.sub "quantifier:sym<**>"  :subid("36_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_306
.annotate "line", 103
    .const 'Sub' $P320 = "38_1256575582.72382" 
    capture_lex $P320
    .const 'Sub' $P312 = "37_1256575582.72382" 
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
    unless_null $P310, vivify_206
    new $P310, "Undef"
  vivify_206:
    if $P310, if_308
.annotate "line", 109
    .const 'Sub' $P320 = "38_1256575582.72382" 
    capture_lex $P320
    $P320()
    goto if_308_end
  if_308:
.annotate "line", 105
    .const 'Sub' $P312 = "37_1256575582.72382" 
    capture_lex $P312
    $P312()
  if_308_end:
    find_lex $P356, "$/"
.annotate "line", 114
    find_lex $P357, "$past"
    unless_null $P357, vivify_219
    new $P357, "Undef"
  vivify_219:
    find_lex $P358, "$/"
    set $P359, $P358["backmod"]
    unless_null $P359, vivify_220
    new $P359, "Undef"
  vivify_220:
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
.sub "_block319"  :anon :subid("38_1256575582.72382") :outer("36_1256575582.72382")
.annotate "line", 109
    .const 'Sub' $P348 = "40_1256575582.72382" 
    capture_lex $P348
    .const 'Sub' $P333 = "39_1256575582.72382" 
    capture_lex $P333
.annotate "line", 110
    get_hll_global $P321, ["PAST"], "Regex"
    find_lex $P322, "$/"
    set $P323, $P322["min"]
    unless_null $P323, vivify_207
    new $P323, "Undef"
  vivify_207:
    set $N324, $P323
    find_lex $P325, "$/"
    unless_null $P325, vivify_208
    new $P325, "Undef"
  vivify_208:
    $P326 = $P321."new"("quant" :named("pasttype"), $N324 :named("min"), $P325 :named("node"))
    store_lex "$past", $P326
.annotate "line", 111
    find_lex $P329, "$/"
    set $P330, $P329["max"]
    unless_null $P330, vivify_209
    new $P330, "Undef"
  vivify_209:
    isfalse $I331, $P330
    if $I331, if_328
.annotate "line", 112
    find_lex $P342, "$/"
    set $P343, $P342["max"]
    unless_null $P343, vivify_210
    new $P343, "ResizablePMCArray"
  vivify_210:
    set $P344, $P343[0]
    unless_null $P344, vivify_211
    new $P344, "Undef"
  vivify_211:
    set $S345, $P344
    isne $I346, $S345, "*"
    if $I346, if_341
    new $P340, 'Integer'
    set $P340, $I346
    goto if_341_end
  if_341:
    .const 'Sub' $P348 = "40_1256575582.72382" 
    capture_lex $P348
    $P355 = $P348()
    set $P340, $P355
  if_341_end:
.annotate "line", 111
    set $P327, $P340
    goto if_328_end
  if_328:
    .const 'Sub' $P333 = "39_1256575582.72382" 
    capture_lex $P333
    $P339 = $P333()
    set $P327, $P339
  if_328_end:
.annotate "line", 109
    .return ($P327)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block347"  :anon :subid("40_1256575582.72382") :outer("38_1256575582.72382")
.annotate "line", 112
    find_lex $P349, "$past"
    unless_null $P349, vivify_212
    new $P349, "Undef"
  vivify_212:
    find_lex $P350, "$/"
    set $P351, $P350["max"]
    unless_null $P351, vivify_213
    new $P351, "ResizablePMCArray"
  vivify_213:
    set $P352, $P351[0]
    unless_null $P352, vivify_214
    new $P352, "Undef"
  vivify_214:
    set $N353, $P352
    $P354 = $P349."max"($N353)
    .return ($P354)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block332"  :anon :subid("39_1256575582.72382") :outer("38_1256575582.72382")
.annotate "line", 111
    find_lex $P334, "$past"
    unless_null $P334, vivify_215
    new $P334, "Undef"
  vivify_215:
    find_lex $P335, "$/"
    set $P336, $P335["min"]
    unless_null $P336, vivify_216
    new $P336, "Undef"
  vivify_216:
    set $N337, $P336
    $P338 = $P334."max"($N337)
    .return ($P338)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block311"  :anon :subid("37_1256575582.72382") :outer("36_1256575582.72382")
.annotate "line", 106
    get_hll_global $P313, ["PAST"], "Regex"
.annotate "line", 107
    find_lex $P314, "$/"
    set $P315, $P314["quantified_atom"]
    unless_null $P315, vivify_217
    new $P315, "Undef"
  vivify_217:
    $P316 = $P315."ast"()
    find_lex $P317, "$/"
    unless_null $P317, vivify_218
    new $P317, "Undef"
  vivify_218:
    $P318 = $P313."new"("quant" :named("pasttype"), 1 :named("min"), $P316 :named("sep"), $P317 :named("node"))
.annotate "line", 106
    store_lex "$past", $P318
.annotate "line", 105
    .return ($P318)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("41_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P369, vivify_221
    new $P369, "ResizablePMCArray"
  vivify_221:
    set $P370, $P369[0]
    unless_null $P370, vivify_222
    new $P370, "Hash"
  vivify_222:
    set $P371, $P370["s"]
    unless_null $P371, vivify_223
    new $P371, "Undef"
  vivify_223:
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
    unless_null $P373, vivify_224
    new $P373, "Undef"
  vivify_224:
    $P374 = $P372."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P373 :named("node"))
.annotate "line", 119
    set $P367, $P374
  if_368_end:
    .lex "$past", $P367
.annotate "line", 118
    find_lex $P376, "$/"
.annotate "line", 122
    find_lex $P377, "$past"
    unless_null $P377, vivify_225
    new $P377, "Undef"
  vivify_225:
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
.sub "metachar:sym<[ ]>"  :subid("42_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P386, vivify_226
    new $P386, "Undef"
  vivify_226:
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
.sub "metachar:sym<( )>"  :subid("43_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P395, vivify_227
    new $P395, "Undef"
  vivify_227:
    $P396 = $P395."ast"()
    $P397 = "buildsub"($P396)
    .lex "$subpast", $P397
.annotate "line", 132
    get_hll_global $P398, ["PAST"], "Regex"
    find_lex $P399, "$subpast"
    unless_null $P399, vivify_228
    new $P399, "Undef"
  vivify_228:
.annotate "line", 133
    find_lex $P400, "$/"
    unless_null $P400, vivify_229
    new $P400, "Undef"
  vivify_229:
    $P401 = $P398."new"($P399, "subrule" :named("pasttype"), "capture" :named("subtype"), $P400 :named("node"))
.annotate "line", 132
    .lex "$past", $P401
    find_lex $P402, "$/"
.annotate "line", 134
    find_lex $P403, "$past"
    unless_null $P403, vivify_230
    new $P403, "Undef"
  vivify_230:
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
.sub "metachar:sym<'>"  :subid("44_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P412, vivify_231
    new $P412, "Hash"
  vivify_231:
    set $P413, $P412["val"]
    unless_null $P413, vivify_232
    new $P413, "Undef"
  vivify_232:
    set $S414, $P413
    find_lex $P415, "$/"
    unless_null $P415, vivify_233
    new $P415, "Undef"
  vivify_233:
    $P416 = $P410."new"($S414, "literal" :named("pasttype"), $P415 :named("node"))
    .lex "$past", $P416
    find_lex $P417, "$/"
.annotate "line", 139
    find_lex $P418, "$past"
    unless_null $P418, vivify_234
    new $P418, "Undef"
  vivify_234:
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
.sub "metachar:sym<.>"  :subid("45_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P426, vivify_235
    new $P426, "Undef"
  vivify_235:
    $P427 = $P425."new"("charclass" :named("pasttype"), "." :named("subtype"), $P426 :named("node"))
    .lex "$past", $P427
    find_lex $P428, "$/"
.annotate "line", 144
    find_lex $P429, "$past"
    unless_null $P429, vivify_236
    new $P429, "Undef"
  vivify_236:
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
.sub "metachar:sym<^>"  :subid("46_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P437, vivify_237
    new $P437, "Undef"
  vivify_237:
    $P438 = $P436."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P437 :named("node"))
    .lex "$past", $P438
    find_lex $P439, "$/"
.annotate "line", 149
    find_lex $P440, "$past"
    unless_null $P440, vivify_238
    new $P440, "Undef"
  vivify_238:
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
.sub "metachar:sym<^^>"  :subid("47_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P448, vivify_239
    new $P448, "Undef"
  vivify_239:
    $P449 = $P447."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P448 :named("node"))
    .lex "$past", $P449
    find_lex $P450, "$/"
.annotate "line", 154
    find_lex $P451, "$past"
    unless_null $P451, vivify_240
    new $P451, "Undef"
  vivify_240:
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
.sub "metachar:sym<$>"  :subid("48_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P459, vivify_241
    new $P459, "Undef"
  vivify_241:
    $P460 = $P458."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P459 :named("node"))
    .lex "$past", $P460
    find_lex $P461, "$/"
.annotate "line", 159
    find_lex $P462, "$past"
    unless_null $P462, vivify_242
    new $P462, "Undef"
  vivify_242:
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
.sub "metachar:sym<$$>"  :subid("49_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P470, vivify_243
    new $P470, "Undef"
  vivify_243:
    $P471 = $P469."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P470 :named("node"))
    .lex "$past", $P471
    find_lex $P472, "$/"
.annotate "line", 164
    find_lex $P473, "$past"
    unless_null $P473, vivify_244
    new $P473, "Undef"
  vivify_244:
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
.sub "metachar:sym<:::>"  :subid("50_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P481, vivify_245
    new $P481, "Undef"
  vivify_245:
    $P482 = $P480."new"("cut" :named("pasttype"), $P481 :named("node"))
    .lex "$past", $P482
    find_lex $P483, "$/"
.annotate "line", 169
    find_lex $P484, "$past"
    unless_null $P484, vivify_246
    new $P484, "Undef"
  vivify_246:
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
.sub "metachar:sym<lwb>"  :subid("51_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P492, vivify_247
    new $P492, "Undef"
  vivify_247:
    $P493 = $P491."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P492 :named("node"))
    .lex "$past", $P493
    find_lex $P494, "$/"
.annotate "line", 174
    find_lex $P495, "$past"
    unless_null $P495, vivify_248
    new $P495, "Undef"
  vivify_248:
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
.sub "metachar:sym<rwb>"  :subid("52_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P503, vivify_249
    new $P503, "Undef"
  vivify_249:
    $P504 = $P502."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P503 :named("node"))
    .lex "$past", $P504
    find_lex $P505, "$/"
.annotate "line", 179
    find_lex $P506, "$past"
    unless_null $P506, vivify_250
    new $P506, "Undef"
  vivify_250:
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
.sub "metachar:sym<bs>"  :subid("53_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P515, vivify_251
    new $P515, "Undef"
  vivify_251:
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
.sub "metachar:sym<mod>"  :subid("54_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P525, vivify_252
    new $P525, "Undef"
  vivify_252:
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
.sub "metachar:sym<assert>"  :subid("55_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P535, vivify_253
    new $P535, "Undef"
  vivify_253:
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
.sub "metachar:sym<~>"  :subid("56_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P546, vivify_254
    new $P546, "Undef"
  vivify_254:
    $P547 = $P546."ast"()
.annotate "line", 197
    get_hll_global $P548, ["PAST"], "Regex"
.annotate "line", 198
    find_lex $P549, "$/"
    set $P550, $P549["GOAL"]
    unless_null $P550, vivify_255
    new $P550, "Undef"
  vivify_255:
    $P551 = $P550."ast"()
.annotate "line", 199
    get_hll_global $P552, ["PAST"], "Regex"
    find_lex $P553, "$/"
    set $P554, $P553["GOAL"]
    unless_null $P554, vivify_256
    new $P554, "Undef"
  vivify_256:
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
.sub "metachar:sym<{*}>"  :subid("57_1256575582.72382") :method :outer("11_1256575582.72382")
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
    unless_null $P568, vivify_257
    new $P568, "Undef"
  vivify_257:
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
    unless_null $P571, vivify_258
    new $P571, "ResizablePMCArray"
  vivify_258:
    set $P572, $P571[0]
    unless_null $P572, vivify_259
    new $P572, "Undef"
  vivify_259:
    set $S573, $P572
    find_lex $P574, "$/"
    unless_null $P574, vivify_260
    new $P574, "Undef"
  vivify_260:
    $P575 = $P569."new"($S573, "reduce" :named("pasttype"), $P574 :named("node"))
    set $P565, $P575
  if_566_end:
    .lex "$past", $P565
.annotate "line", 208
    find_lex $P577, "$/"
.annotate "line", 211
    find_lex $P578, "$past"
    unless_null $P578, vivify_261
    new $P578, "Undef"
  vivify_261:
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
.sub "metachar:sym<var>"  :subid("58_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_584
.annotate "line", 214
    .const 'Sub' $P643 = "63_1256575582.72382" 
    capture_lex $P643
    .const 'Sub' $P600 = "59_1256575582.72382" 
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
    unless_null $P589, vivify_262
    new $P589, "Undef"
  vivify_262:
    if $P589, if_587
    find_lex $P593, "$/"
    set $P594, $P593["name"]
    unless_null $P594, vivify_263
    new $P594, "Undef"
  vivify_263:
    set $S595, $P594
    new $P586, 'String'
    set $P586, $S595
    goto if_587_end
  if_587:
    find_lex $P590, "$/"
    set $P591, $P590["pos"]
    unless_null $P591, vivify_264
    new $P591, "Undef"
  vivify_264:
    set $N592, $P591
    new $P586, 'Float'
    set $P586, $N592
  if_587_end:
    .lex "$name", $P586
.annotate "line", 217
    find_lex $P597, "$/"
    set $P598, $P597["quantified_atom"]
    unless_null $P598, vivify_265
    new $P598, "Undef"
  vivify_265:
    if $P598, if_596
.annotate "line", 227
    .const 'Sub' $P643 = "63_1256575582.72382" 
    capture_lex $P643
    $P643()
    goto if_596_end
  if_596:
.annotate "line", 217
    .const 'Sub' $P600 = "59_1256575582.72382" 
    capture_lex $P600
    $P600()
  if_596_end:
    find_lex $P648, "$/"
.annotate "line", 231
    find_lex $P649, "$past"
    unless_null $P649, vivify_282
    new $P649, "Undef"
  vivify_282:
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
.sub "_block642"  :anon :subid("63_1256575582.72382") :outer("58_1256575582.72382")
.annotate "line", 228
    get_hll_global $P644, ["PAST"], "Regex"
    find_lex $P645, "$name"
    unless_null $P645, vivify_266
    new $P645, "Undef"
  vivify_266:
.annotate "line", 229
    find_lex $P646, "$/"
    unless_null $P646, vivify_267
    new $P646, "Undef"
  vivify_267:
    $P647 = $P644."new"("!BACKREF", $P645, "subrule" :named("pasttype"), "method" :named("subtype"), $P646 :named("node"))
.annotate "line", 228
    store_lex "$past", $P647
.annotate "line", 227
    .return ($P647)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block599"  :anon :subid("59_1256575582.72382") :outer("58_1256575582.72382")
.annotate "line", 217
    .const 'Sub' $P635 = "62_1256575582.72382" 
    capture_lex $P635
    .const 'Sub' $P629 = "61_1256575582.72382" 
    capture_lex $P629
    .const 'Sub' $P617 = "60_1256575582.72382" 
    capture_lex $P617
.annotate "line", 218
    find_lex $P601, "$/"
    set $P602, $P601["quantified_atom"]
    unless_null $P602, vivify_268
    new $P602, "ResizablePMCArray"
  vivify_268:
    set $P603, $P602[0]
    unless_null $P603, vivify_269
    new $P603, "Undef"
  vivify_269:
    $P604 = $P603."ast"()
    store_lex "$past", $P604
.annotate "line", 219
    find_lex $P609, "$past"
    unless_null $P609, vivify_270
    new $P609, "Undef"
  vivify_270:
    $S610 = $P609."pasttype"()
    iseq $I611, $S610, "quant"
    if $I611, if_608
    new $P607, 'Integer'
    set $P607, $I611
    goto if_608_end
  if_608:
    find_lex $P612, "$past"
    unless_null $P612, vivify_271
    new $P612, "ResizablePMCArray"
  vivify_271:
    set $P613, $P612[0]
    unless_null $P613, vivify_272
    new $P613, "Undef"
  vivify_272:
    $S614 = $P613."pasttype"()
    iseq $I615, $S614, "subrule"
    new $P607, 'Integer'
    set $P607, $I615
  if_608_end:
    if $P607, if_606
.annotate "line", 222
    find_lex $P625, "$past"
    unless_null $P625, vivify_273
    new $P625, "Undef"
  vivify_273:
    $S626 = $P625."pasttype"()
    iseq $I627, $S626, "subrule"
    if $I627, if_624
.annotate "line", 223
    .const 'Sub' $P635 = "62_1256575582.72382" 
    capture_lex $P635
    $P641 = $P635()
    set $P623, $P641
.annotate "line", 222
    goto if_624_end
  if_624:
    .const 'Sub' $P629 = "61_1256575582.72382" 
    capture_lex $P629
    $P633 = $P629()
    set $P623, $P633
  if_624_end:
.annotate "line", 219
    set $P605, $P623
    goto if_606_end
  if_606:
    .const 'Sub' $P617 = "60_1256575582.72382" 
    capture_lex $P617
    $P622 = $P617()
    set $P605, $P622
  if_606_end:
.annotate "line", 217
    .return ($P605)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block634"  :anon :subid("62_1256575582.72382") :outer("59_1256575582.72382")
.annotate "line", 224
    get_hll_global $P636, ["PAST"], "Regex"
    find_lex $P637, "$past"
    unless_null $P637, vivify_274
    new $P637, "Undef"
  vivify_274:
    find_lex $P638, "$name"
    unless_null $P638, vivify_275
    new $P638, "Undef"
  vivify_275:
    find_lex $P639, "$/"
    unless_null $P639, vivify_276
    new $P639, "Undef"
  vivify_276:
    $P640 = $P636."new"($P637, $P638 :named("name"), "subcapture" :named("pasttype"), $P639 :named("node"))
    store_lex "$past", $P640
.annotate "line", 223
    .return ($P640)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block628"  :anon :subid("61_1256575582.72382") :outer("59_1256575582.72382")
.annotate "line", 222
    find_lex $P630, "$past"
    unless_null $P630, vivify_277
    new $P630, "Undef"
  vivify_277:
    find_lex $P631, "$name"
    unless_null $P631, vivify_278
    new $P631, "Undef"
  vivify_278:
    $P632 = "subrule_alias"($P630, $P631)
    .return ($P632)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block616"  :anon :subid("60_1256575582.72382") :outer("59_1256575582.72382")
.annotate "line", 220
    find_lex $P618, "$past"
    unless_null $P618, vivify_279
    new $P618, "ResizablePMCArray"
  vivify_279:
    set $P619, $P618[0]
    unless_null $P619, vivify_280
    new $P619, "Undef"
  vivify_280:
    find_lex $P620, "$name"
    unless_null $P620, vivify_281
    new $P620, "Undef"
  vivify_281:
    $P621 = "subrule_alias"($P619, $P620)
.annotate "line", 219
    .return ($P621)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("64_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_655
.annotate "line", 234
    new $P654, 'ExceptionHandler'
    set_addr $P654, control_653
    $P654."handle_types"(58)
    push_eh $P654
    .lex "self", self
    .lex "$/", param_655
.annotate "line", 235
    find_lex $P656, "$/"
    get_hll_global $P657, ["PAST"], "Regex"
.annotate "line", 236
    get_hll_global $P658, ["PAST"], "Op"
    find_lex $P659, "$/"
    set $P660, $P659["pir"]
    unless_null $P660, vivify_283
    new $P660, "Undef"
  vivify_283:
    set $S661, $P660
    $P662 = $P658."new"($S661 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 237
    find_lex $P663, "$/"
    unless_null $P663, vivify_284
    new $P663, "Undef"
  vivify_284:
    $P664 = $P657."new"($P662, "pastnode" :named("pasttype"), $P663 :named("node"))
.annotate "line", 235
    $P665 = $P656."!make"($P664)
.annotate "line", 234
    .return ($P665)
  control_653:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P666, exception, "payload"
    .return ($P666)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("65_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_670
.annotate "line", 242
    new $P669, 'ExceptionHandler'
    set_addr $P669, control_668
    $P669."handle_types"(58)
    push_eh $P669
    .lex "self", self
    .lex "$/", param_670
.annotate "line", 243
    find_lex $P673, "$/"
    set $P674, $P673["sym"]
    unless_null $P674, vivify_285
    new $P674, "Undef"
  vivify_285:
    set $S675, $P674
    iseq $I676, $S675, "n"
    if $I676, if_672
    find_lex $P678, "$/"
    set $P679, $P678["sym"]
    unless_null $P679, vivify_286
    new $P679, "Undef"
  vivify_286:
    set $S680, $P679
    new $P671, 'String'
    set $P671, $S680
    goto if_672_end
  if_672:
    new $P677, "String"
    assign $P677, "nl"
    set $P671, $P677
  if_672_end:
    .lex "$subtype", $P671
.annotate "line", 244
    get_hll_global $P681, ["PAST"], "Regex"
    find_lex $P682, "$subtype"
    unless_null $P682, vivify_287
    new $P682, "Undef"
  vivify_287:
    find_lex $P683, "$/"
    unless_null $P683, vivify_288
    new $P683, "Undef"
  vivify_288:
    $P684 = $P681."new"("charclass" :named("pasttype"), $P682 :named("subtype"), $P683 :named("node"))
    .lex "$past", $P684
    find_lex $P685, "$/"
.annotate "line", 245
    find_lex $P686, "$past"
    unless_null $P686, vivify_289
    new $P686, "Undef"
  vivify_289:
    $P687 = $P685."!make"($P686)
.annotate "line", 242
    .return ($P687)
  control_668:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P688, exception, "payload"
    .return ($P688)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("66_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_692
.annotate "line", 248
    new $P691, 'ExceptionHandler'
    set_addr $P691, control_690
    $P691."handle_types"(58)
    push_eh $P691
    .lex "self", self
    .lex "$/", param_692
.annotate "line", 249
    get_hll_global $P693, ["PAST"], "Regex"
.annotate "line", 250
    find_lex $P694, "$/"
    set $P695, $P694["sym"]
    unless_null $P695, vivify_290
    new $P695, "Undef"
  vivify_290:
    set $S696, $P695
    iseq $I697, $S696, "B"
    find_lex $P698, "$/"
    unless_null $P698, vivify_291
    new $P698, "Undef"
  vivify_291:
    $P699 = $P693."new"("\b", "enumcharlist" :named("pasttype"), $I697 :named("negate"), $P698 :named("node"))
.annotate "line", 249
    .lex "$past", $P699
    find_lex $P700, "$/"
.annotate "line", 251
    find_lex $P701, "$past"
    unless_null $P701, vivify_292
    new $P701, "Undef"
  vivify_292:
    $P702 = $P700."!make"($P701)
.annotate "line", 248
    .return ($P702)
  control_690:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P703, exception, "payload"
    .return ($P703)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("67_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_707
.annotate "line", 254
    new $P706, 'ExceptionHandler'
    set_addr $P706, control_705
    $P706."handle_types"(58)
    push_eh $P706
    .lex "self", self
    .lex "$/", param_707
.annotate "line", 255
    get_hll_global $P708, ["PAST"], "Regex"
.annotate "line", 256
    find_lex $P709, "$/"
    set $P710, $P709["sym"]
    unless_null $P710, vivify_293
    new $P710, "Undef"
  vivify_293:
    set $S711, $P710
    iseq $I712, $S711, "E"
    find_lex $P713, "$/"
    unless_null $P713, vivify_294
    new $P713, "Undef"
  vivify_294:
    $P714 = $P708."new"("\e", "enumcharlist" :named("pasttype"), $I712 :named("negate"), $P713 :named("node"))
.annotate "line", 255
    .lex "$past", $P714
    find_lex $P715, "$/"
.annotate "line", 257
    find_lex $P716, "$past"
    unless_null $P716, vivify_295
    new $P716, "Undef"
  vivify_295:
    $P717 = $P715."!make"($P716)
.annotate "line", 254
    .return ($P717)
  control_705:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P718, exception, "payload"
    .return ($P718)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("68_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_722
.annotate "line", 260
    new $P721, 'ExceptionHandler'
    set_addr $P721, control_720
    $P721."handle_types"(58)
    push_eh $P721
    .lex "self", self
    .lex "$/", param_722
.annotate "line", 261
    get_hll_global $P723, ["PAST"], "Regex"
.annotate "line", 262
    find_lex $P724, "$/"
    set $P725, $P724["sym"]
    unless_null $P725, vivify_296
    new $P725, "Undef"
  vivify_296:
    set $S726, $P725
    iseq $I727, $S726, "F"
    find_lex $P728, "$/"
    unless_null $P728, vivify_297
    new $P728, "Undef"
  vivify_297:
    $P729 = $P723."new"("\f", "enumcharlist" :named("pasttype"), $I727 :named("negate"), $P728 :named("node"))
.annotate "line", 261
    .lex "$past", $P729
    find_lex $P730, "$/"
.annotate "line", 263
    find_lex $P731, "$past"
    unless_null $P731, vivify_298
    new $P731, "Undef"
  vivify_298:
    $P732 = $P730."!make"($P731)
.annotate "line", 260
    .return ($P732)
  control_720:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P733, exception, "payload"
    .return ($P733)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("69_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_737
.annotate "line", 266
    new $P736, 'ExceptionHandler'
    set_addr $P736, control_735
    $P736."handle_types"(58)
    push_eh $P736
    .lex "self", self
    .lex "$/", param_737
.annotate "line", 267
    get_hll_global $P738, ["PAST"], "Regex"
.annotate "line", 268
    find_lex $P739, "$/"
    set $P740, $P739["sym"]
    unless_null $P740, vivify_299
    new $P740, "Undef"
  vivify_299:
    set $S741, $P740
    iseq $I742, $S741, "H"
    find_lex $P743, "$/"
    unless_null $P743, vivify_300
    new $P743, "Undef"
  vivify_300:
    $P744 = $P738."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I742 :named("negate"), $P743 :named("node"))
.annotate "line", 267
    .lex "$past", $P744
    find_lex $P745, "$/"
.annotate "line", 269
    find_lex $P746, "$past"
    unless_null $P746, vivify_301
    new $P746, "Undef"
  vivify_301:
    $P747 = $P745."!make"($P746)
.annotate "line", 266
    .return ($P747)
  control_735:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P748, exception, "payload"
    .return ($P748)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("70_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_752
.annotate "line", 272
    new $P751, 'ExceptionHandler'
    set_addr $P751, control_750
    $P751."handle_types"(58)
    push_eh $P751
    .lex "self", self
    .lex "$/", param_752
.annotate "line", 273
    get_hll_global $P753, ["PAST"], "Regex"
.annotate "line", 274
    find_lex $P754, "$/"
    set $P755, $P754["sym"]
    unless_null $P755, vivify_302
    new $P755, "Undef"
  vivify_302:
    set $S756, $P755
    iseq $I757, $S756, "R"
    find_lex $P758, "$/"
    unless_null $P758, vivify_303
    new $P758, "Undef"
  vivify_303:
    $P759 = $P753."new"("\r", "enumcharlist" :named("pasttype"), $I757 :named("negate"), $P758 :named("node"))
.annotate "line", 273
    .lex "$past", $P759
    find_lex $P760, "$/"
.annotate "line", 275
    find_lex $P761, "$past"
    unless_null $P761, vivify_304
    new $P761, "Undef"
  vivify_304:
    $P762 = $P760."!make"($P761)
.annotate "line", 272
    .return ($P762)
  control_750:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P763, exception, "payload"
    .return ($P763)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("71_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_767
.annotate "line", 278
    new $P766, 'ExceptionHandler'
    set_addr $P766, control_765
    $P766."handle_types"(58)
    push_eh $P766
    .lex "self", self
    .lex "$/", param_767
.annotate "line", 279
    get_hll_global $P768, ["PAST"], "Regex"
.annotate "line", 280
    find_lex $P769, "$/"
    set $P770, $P769["sym"]
    unless_null $P770, vivify_305
    new $P770, "Undef"
  vivify_305:
    set $S771, $P770
    iseq $I772, $S771, "T"
    find_lex $P773, "$/"
    unless_null $P773, vivify_306
    new $P773, "Undef"
  vivify_306:
    $P774 = $P768."new"("\t", "enumcharlist" :named("pasttype"), $I772 :named("negate"), $P773 :named("node"))
.annotate "line", 279
    .lex "$past", $P774
    find_lex $P775, "$/"
.annotate "line", 281
    find_lex $P776, "$past"
    unless_null $P776, vivify_307
    new $P776, "Undef"
  vivify_307:
    $P777 = $P775."!make"($P776)
.annotate "line", 278
    .return ($P777)
  control_765:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P778, exception, "payload"
    .return ($P778)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("72_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_782
.annotate "line", 284
    new $P781, 'ExceptionHandler'
    set_addr $P781, control_780
    $P781."handle_types"(58)
    push_eh $P781
    .lex "self", self
    .lex "$/", param_782
.annotate "line", 285
    get_hll_global $P783, ["PAST"], "Regex"
.annotate "line", 286
    find_lex $P784, "$/"
    set $P785, $P784["sym"]
    unless_null $P785, vivify_308
    new $P785, "Undef"
  vivify_308:
    set $S786, $P785
    iseq $I787, $S786, "V"
    find_lex $P788, "$/"
    unless_null $P788, vivify_309
    new $P788, "Undef"
  vivify_309:
    $P789 = $P783."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I787 :named("negate"), $P788 :named("node"))
.annotate "line", 285
    .lex "$past", $P789
    find_lex $P790, "$/"
.annotate "line", 287
    find_lex $P791, "$past"
    unless_null $P791, vivify_310
    new $P791, "Undef"
  vivify_310:
    $P792 = $P790."!make"($P791)
.annotate "line", 284
    .return ($P792)
  control_780:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P793, exception, "payload"
    .return ($P793)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("73_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_797
.annotate "line", 291
    new $P796, 'ExceptionHandler'
    set_addr $P796, control_795
    $P796."handle_types"(58)
    push_eh $P796
    .lex "self", self
    .lex "$/", param_797
.annotate "line", 292
    get_hll_global $P798, ["PAST"], "Regex"
    find_lex $P799, "$/"
    unless_null $P799, vivify_311
    new $P799, "Undef"
  vivify_311:
    set $S800, $P799
    find_lex $P801, "$/"
    unless_null $P801, vivify_312
    new $P801, "Undef"
  vivify_312:
    $P802 = $P798."new"($S800, "literal" :named("pasttype"), $P801 :named("node"))
    .lex "$past", $P802
    find_lex $P803, "$/"
.annotate "line", 293
    find_lex $P804, "$past"
    unless_null $P804, vivify_313
    new $P804, "Undef"
  vivify_313:
    $P805 = $P803."!make"($P804)
.annotate "line", 291
    .return ($P805)
  control_795:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P806, exception, "payload"
    .return ($P806)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("74_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_810
.annotate "line", 297
    .const 'Sub' $P823 = "76_1256575582.72382" 
    capture_lex $P823
    .const 'Sub' $P816 = "75_1256575582.72382" 
    capture_lex $P816
    new $P809, 'ExceptionHandler'
    set_addr $P809, control_808
    $P809."handle_types"(58)
    push_eh $P809
    .lex "self", self
    .lex "$/", param_810
.annotate "line", 298
    new $P811, "Undef"
    .lex "$past", $P811
.annotate "line", 299
    find_lex $P813, "$/"
    set $P814, $P813["assertion"]
    unless_null $P814, vivify_314
    new $P814, "Undef"
  vivify_314:
    if $P814, if_812
.annotate "line", 303
    .const 'Sub' $P823 = "76_1256575582.72382" 
    capture_lex $P823
    $P823()
    goto if_812_end
  if_812:
.annotate "line", 299
    .const 'Sub' $P816 = "75_1256575582.72382" 
    capture_lex $P816
    $P816()
  if_812_end:
    find_lex $P825, "$/"
.annotate "line", 304
    find_lex $P826, "$past"
    unless_null $P826, vivify_317
    new $P826, "Undef"
  vivify_317:
    $P827 = $P825."!make"($P826)
.annotate "line", 297
    .return ($P827)
  control_808:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P828, exception, "payload"
    .return ($P828)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block822"  :anon :subid("76_1256575582.72382") :outer("74_1256575582.72382")
.annotate "line", 303
    new $P824, "Integer"
    assign $P824, 0
    store_lex "$past", $P824
    .return ($P824)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block815"  :anon :subid("75_1256575582.72382") :outer("74_1256575582.72382")
.annotate "line", 300
    find_lex $P817, "$/"
    set $P818, $P817["assertion"]
    unless_null $P818, vivify_315
    new $P818, "Undef"
  vivify_315:
    $P819 = $P818."ast"()
    store_lex "$past", $P819
.annotate "line", 301
    find_lex $P820, "$past"
    unless_null $P820, vivify_316
    new $P820, "Undef"
  vivify_316:
    $P821 = $P820."subtype"("zerowidth")
.annotate "line", 299
    .return ($P821)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("77_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_832
.annotate "line", 307
    .const 'Sub' $P849 = "79_1256575582.72382" 
    capture_lex $P849
    .const 'Sub' $P838 = "78_1256575582.72382" 
    capture_lex $P838
    new $P831, 'ExceptionHandler'
    set_addr $P831, control_830
    $P831."handle_types"(58)
    push_eh $P831
    .lex "self", self
    .lex "$/", param_832
.annotate "line", 308
    new $P833, "Undef"
    .lex "$past", $P833
.annotate "line", 309
    find_lex $P835, "$/"
    set $P836, $P835["assertion"]
    unless_null $P836, vivify_318
    new $P836, "Undef"
  vivify_318:
    if $P836, if_834
.annotate "line", 314
    .const 'Sub' $P849 = "79_1256575582.72382" 
    capture_lex $P849
    $P849()
    goto if_834_end
  if_834:
.annotate "line", 309
    .const 'Sub' $P838 = "78_1256575582.72382" 
    capture_lex $P838
    $P838()
  if_834_end:
    find_lex $P853, "$/"
.annotate "line", 317
    find_lex $P854, "$past"
    unless_null $P854, vivify_324
    new $P854, "Undef"
  vivify_324:
    $P855 = $P853."!make"($P854)
.annotate "line", 307
    .return ($P855)
  control_830:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P856, exception, "payload"
    .return ($P856)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block848"  :anon :subid("79_1256575582.72382") :outer("77_1256575582.72382")
.annotate "line", 315
    get_hll_global $P850, ["PAST"], "Regex"
    find_lex $P851, "$/"
    unless_null $P851, vivify_319
    new $P851, "Undef"
  vivify_319:
    $P852 = $P850."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P851 :named("node"))
    store_lex "$past", $P852
.annotate "line", 314
    .return ($P852)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block837"  :anon :subid("78_1256575582.72382") :outer("77_1256575582.72382")
.annotate "line", 310
    find_lex $P839, "$/"
    set $P840, $P839["assertion"]
    unless_null $P840, vivify_320
    new $P840, "Undef"
  vivify_320:
    $P841 = $P840."ast"()
    store_lex "$past", $P841
.annotate "line", 311
    find_lex $P842, "$past"
    unless_null $P842, vivify_321
    new $P842, "Undef"
  vivify_321:
    find_lex $P843, "$past"
    unless_null $P843, vivify_322
    new $P843, "Undef"
  vivify_322:
    $P844 = $P843."negate"()
    isfalse $I845, $P844
    $P842."negate"($I845)
.annotate "line", 312
    find_lex $P846, "$past"
    unless_null $P846, vivify_323
    new $P846, "Undef"
  vivify_323:
    $P847 = $P846."subtype"("zerowidth")
.annotate "line", 309
    .return ($P847)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("80_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_860
.annotate "line", 320
    new $P859, 'ExceptionHandler'
    set_addr $P859, control_858
    $P859."handle_types"(58)
    push_eh $P859
    .lex "self", self
    .lex "$/", param_860
.annotate "line", 321
    find_lex $P861, "$/"
    set $P862, $P861["assertion"]
    unless_null $P862, vivify_325
    new $P862, "Undef"
  vivify_325:
    $P863 = $P862."ast"()
    .lex "$past", $P863
.annotate "line", 322
    find_lex $P864, "$past"
    unless_null $P864, vivify_326
    new $P864, "Undef"
  vivify_326:
    $P864."subtype"("method")
    find_lex $P865, "$/"
.annotate "line", 323
    find_lex $P866, "$past"
    unless_null $P866, vivify_327
    new $P866, "Undef"
  vivify_327:
    $P867 = $P865."!make"($P866)
.annotate "line", 320
    .return ($P867)
  control_858:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P868, exception, "payload"
    .return ($P868)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<name>"  :subid("81_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_872
.annotate "line", 326
    .const 'Sub' $P905 = "84_1256575582.72382" 
    capture_lex $P905
    .const 'Sub' $P895 = "83_1256575582.72382" 
    capture_lex $P895
    .const 'Sub' $P882 = "82_1256575582.72382" 
    capture_lex $P882
    new $P871, 'ExceptionHandler'
    set_addr $P871, control_870
    $P871."handle_types"(58)
    push_eh $P871
    .lex "self", self
    .lex "$/", param_872
.annotate "line", 327
    find_lex $P873, "$/"
    set $P874, $P873["longname"]
    unless_null $P874, vivify_328
    new $P874, "Undef"
  vivify_328:
    set $S875, $P874
    new $P876, 'String'
    set $P876, $S875
    .lex "$name", $P876
.annotate "line", 328
    new $P877, "Undef"
    .lex "$past", $P877
.annotate "line", 329
    find_lex $P879, "$/"
    set $P880, $P879["assertion"]
    unless_null $P880, vivify_329
    new $P880, "Undef"
  vivify_329:
    if $P880, if_878
.annotate "line", 333
    find_lex $P891, "$name"
    unless_null $P891, vivify_330
    new $P891, "Undef"
  vivify_330:
    set $S892, $P891
    iseq $I893, $S892, "sym"
    if $I893, if_890
.annotate "line", 348
    .const 'Sub' $P905 = "84_1256575582.72382" 
    capture_lex $P905
    $P905()
    goto if_890_end
  if_890:
.annotate "line", 333
    .const 'Sub' $P895 = "83_1256575582.72382" 
    capture_lex $P895
    $P895()
  if_890_end:
.annotate "line", 329
    goto if_878_end
  if_878:
    .const 'Sub' $P882 = "82_1256575582.72382" 
    capture_lex $P882
    $P882()
  if_878_end:
    find_lex $P949, "$/"
.annotate "line", 360
    find_lex $P950, "$past"
    unless_null $P950, vivify_352
    new $P950, "Undef"
  vivify_352:
    $P951 = $P949."!make"($P950)
.annotate "line", 326
    .return ($P951)
  control_870:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P952, exception, "payload"
    .return ($P952)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block904"  :anon :subid("84_1256575582.72382") :outer("81_1256575582.72382")
.annotate "line", 348
    .const 'Sub' $P930 = "86_1256575582.72382" 
    capture_lex $P930
    .const 'Sub' $P916 = "85_1256575582.72382" 
    capture_lex $P916
.annotate "line", 349
    get_hll_global $P906, ["PAST"], "Regex"
    find_lex $P907, "$name"
    unless_null $P907, vivify_331
    new $P907, "Undef"
  vivify_331:
    find_lex $P908, "$name"
    unless_null $P908, vivify_332
    new $P908, "Undef"
  vivify_332:
.annotate "line", 350
    find_lex $P909, "$/"
    unless_null $P909, vivify_333
    new $P909, "Undef"
  vivify_333:
    $P910 = $P906."new"($P907, $P908 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P909 :named("node"))
.annotate "line", 349
    store_lex "$past", $P910
.annotate "line", 351
    find_lex $P913, "$/"
    set $P914, $P913["nibbler"]
    unless_null $P914, vivify_334
    new $P914, "Undef"
  vivify_334:
    if $P914, if_912
    find_lex $P927, "$/"
    set $P928, $P927["arglist"]
    unless_null $P928, vivify_335
    new $P928, "Undef"
  vivify_335:
    if $P928, if_926
    set $P925, $P928
    goto if_926_end
  if_926:
.annotate "line", 354
    .const 'Sub' $P930 = "86_1256575582.72382" 
    capture_lex $P930
    $P948 = $P930()
    set $P925, $P948
  if_926_end:
.annotate "line", 351
    set $P911, $P925
    goto if_912_end
  if_912:
    .const 'Sub' $P916 = "85_1256575582.72382" 
    capture_lex $P916
    $P924 = $P916()
    set $P911, $P924
  if_912_end:
.annotate "line", 348
    .return ($P911)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block929"  :anon :subid("86_1256575582.72382") :outer("84_1256575582.72382")
.annotate "line", 354
    .const 'Sub' $P939 = "87_1256575582.72382" 
    capture_lex $P939
.annotate "line", 355
    find_lex $P932, "$/"
    set $P933, $P932["arglist"]
    unless_null $P933, vivify_336
    new $P933, "ResizablePMCArray"
  vivify_336:
    set $P934, $P933[0]
    unless_null $P934, vivify_337
    new $P934, "Hash"
  vivify_337:
    set $P935, $P934["arg"]
    unless_null $P935, vivify_338
    new $P935, "Undef"
  vivify_338:
    defined $I936, $P935
    unless $I936, for_undef_339
    iter $P931, $P935
    new $P946, 'ExceptionHandler'
    set_addr $P946, loop945_handler
    $P946."handle_types"(65, 67, 66)
    push_eh $P946
  loop945_test:
    unless $P931, loop945_done
    shift $P937, $P931
  loop945_redo:
    .const 'Sub' $P939 = "87_1256575582.72382" 
    capture_lex $P939
    $P939($P937)
  loop945_next:
    goto loop945_test
  loop945_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P947, exception, 'type'
    eq $P947, 65, loop945_next
    eq $P947, 67, loop945_redo
  loop945_done:
    pop_eh 
  for_undef_339:
.annotate "line", 354
    .return ($P931)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block938"  :anon :subid("87_1256575582.72382") :outer("86_1256575582.72382")
    .param pmc param_940
.annotate "line", 355
    .lex "$_", param_940
.annotate "line", 356
    find_lex $P941, "$past"
    unless_null $P941, vivify_340
    new $P941, "Undef"
  vivify_340:
    find_lex $P942, "$_"
    unless_null $P942, vivify_341
    new $P942, "Undef"
  vivify_341:
    $P943 = $P942."ast"()
    $P944 = $P941."push"($P943)
.annotate "line", 355
    .return ($P944)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block915"  :anon :subid("85_1256575582.72382") :outer("84_1256575582.72382")
.annotate "line", 352
    find_lex $P917, "$past"
    unless_null $P917, vivify_342
    new $P917, "Undef"
  vivify_342:
    find_lex $P918, "$/"
    set $P919, $P918["nibbler"]
    unless_null $P919, vivify_343
    new $P919, "ResizablePMCArray"
  vivify_343:
    set $P920, $P919[0]
    unless_null $P920, vivify_344
    new $P920, "Undef"
  vivify_344:
    $P921 = $P920."ast"()
    $P922 = "buildsub"($P921)
    $P923 = $P917."push"($P922)
.annotate "line", 351
    .return ($P923)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block894"  :anon :subid("83_1256575582.72382") :outer("81_1256575582.72382")
.annotate "line", 334

            $P0 = get_global '$REGEXNAME'
            $S0 = $P0
            $I0 = index $S0, ':sym<'
            add $I0, 5
            $S0 = substr $S0, $I0
            chopn $S0, 1
            $P896 = box $S0
        
    .lex "$regexsym", $P896
.annotate "line", 343
    get_hll_global $P897, ["PAST"], "Regex"
.annotate "line", 344
    get_hll_global $P898, ["PAST"], "Regex"
    find_lex $P899, "$regexsym"
    unless_null $P899, vivify_345
    new $P899, "Undef"
  vivify_345:
    $P900 = $P898."new"($P899, "literal" :named("pasttype"))
.annotate "line", 345
    find_lex $P901, "$name"
    unless_null $P901, vivify_346
    new $P901, "Undef"
  vivify_346:
    find_lex $P902, "$/"
    unless_null $P902, vivify_347
    new $P902, "Undef"
  vivify_347:
    $P903 = $P897."new"($P900, $P901 :named("name"), "subcapture" :named("pasttype"), $P902 :named("node"))
.annotate "line", 343
    store_lex "$past", $P903
.annotate "line", 333
    .return ($P903)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block881"  :anon :subid("82_1256575582.72382") :outer("81_1256575582.72382")
.annotate "line", 330
    find_lex $P883, "$/"
    set $P884, $P883["assertion"]
    unless_null $P884, vivify_348
    new $P884, "ResizablePMCArray"
  vivify_348:
    set $P885, $P884[0]
    unless_null $P885, vivify_349
    new $P885, "Undef"
  vivify_349:
    $P886 = $P885."ast"()
    store_lex "$past", $P886
.annotate "line", 331
    find_lex $P887, "$past"
    unless_null $P887, vivify_350
    new $P887, "Undef"
  vivify_350:
    find_lex $P888, "$name"
    unless_null $P888, vivify_351
    new $P888, "Undef"
  vivify_351:
    $P889 = "subrule_alias"($P887, $P888)
.annotate "line", 329
    .return ($P889)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<[>"  :subid("88_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_956
.annotate "line", 363
    .const 'Sub' $P989 = "90_1256575582.72382" 
    capture_lex $P989
    .const 'Sub' $P971 = "89_1256575582.72382" 
    capture_lex $P971
    new $P955, 'ExceptionHandler'
    set_addr $P955, control_954
    $P955."handle_types"(58)
    push_eh $P955
    .lex "self", self
    .lex "$/", param_956
.annotate "line", 364
    find_lex $P957, "$/"
    set $P958, $P957["cclass_elem"]
    unless_null $P958, vivify_353
    new $P958, "Undef"
  vivify_353:
    .lex "$clist", $P958
.annotate "line", 365
    find_lex $P959, "$clist"
    unless_null $P959, vivify_354
    new $P959, "ResizablePMCArray"
  vivify_354:
    set $P960, $P959[0]
    unless_null $P960, vivify_355
    new $P960, "Undef"
  vivify_355:
    $P961 = $P960."ast"()
    .lex "$past", $P961
.annotate "line", 366
    find_lex $P965, "$past"
    unless_null $P965, vivify_356
    new $P965, "Undef"
  vivify_356:
    $P966 = $P965."negate"()
    if $P966, if_964
    set $P963, $P966
    goto if_964_end
  if_964:
    find_lex $P967, "$past"
    unless_null $P967, vivify_357
    new $P967, "Undef"
  vivify_357:
    $S968 = $P967."pasttype"()
    iseq $I969, $S968, "subrule"
    new $P963, 'Integer'
    set $P963, $I969
  if_964_end:
    unless $P963, if_962_end
    .const 'Sub' $P971 = "89_1256575582.72382" 
    capture_lex $P971
    $P971()
  if_962_end:
.annotate "line", 374
    new $P979, "Integer"
    assign $P979, 1
    .lex "$i", $P979
.annotate "line", 375
    find_lex $P980, "$clist"
    unless_null $P980, vivify_361
    new $P980, "Undef"
  vivify_361:
    set $N981, $P980
    new $P982, 'Float'
    set $P982, $N981
    .lex "$n", $P982
.annotate "line", 376
    new $P1016, 'ExceptionHandler'
    set_addr $P1016, loop1015_handler
    $P1016."handle_types"(65, 67, 66)
    push_eh $P1016
  loop1015_test:
    find_lex $P983, "$i"
    unless_null $P983, vivify_362
    new $P983, "Undef"
  vivify_362:
    set $N984, $P983
    find_lex $P985, "$n"
    unless_null $P985, vivify_363
    new $P985, "Undef"
  vivify_363:
    set $N986, $P985
    islt $I987, $N984, $N986
    unless $I987, loop1015_done
  loop1015_redo:
    .const 'Sub' $P989 = "90_1256575582.72382" 
    capture_lex $P989
    $P989()
  loop1015_next:
    goto loop1015_test
  loop1015_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1017, exception, 'type'
    eq $P1017, 65, loop1015_next
    eq $P1017, 67, loop1015_redo
  loop1015_done:
    pop_eh 
    find_lex $P1018, "$/"
.annotate "line", 387
    find_lex $P1019, "$past"
    unless_null $P1019, vivify_376
    new $P1019, "Undef"
  vivify_376:
    $P1020 = $P1018."!make"($P1019)
.annotate "line", 363
    .return ($P1020)
  control_954:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1021, exception, "payload"
    .return ($P1021)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block970"  :anon :subid("89_1256575582.72382") :outer("88_1256575582.72382")
.annotate "line", 367
    find_lex $P972, "$past"
    unless_null $P972, vivify_358
    new $P972, "Undef"
  vivify_358:
    $P972."subtype"("zerowidth")
.annotate "line", 368
    get_hll_global $P973, ["PAST"], "Regex"
.annotate "line", 369
    find_lex $P974, "$past"
    unless_null $P974, vivify_359
    new $P974, "Undef"
  vivify_359:
.annotate "line", 370
    get_hll_global $P975, ["PAST"], "Regex"
    $P976 = $P975."new"("charclass" :named("pasttype"), "." :named("subtype"))
.annotate "line", 371
    find_lex $P977, "$/"
    unless_null $P977, vivify_360
    new $P977, "Undef"
  vivify_360:
    $P978 = $P973."new"($P974, $P976, $P977 :named("node"))
.annotate "line", 368
    store_lex "$past", $P978
.annotate "line", 366
    .return ($P978)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block988"  :anon :subid("90_1256575582.72382") :outer("88_1256575582.72382")
.annotate "line", 376
    .const 'Sub' $P1007 = "92_1256575582.72382" 
    capture_lex $P1007
    .const 'Sub' $P999 = "91_1256575582.72382" 
    capture_lex $P999
.annotate "line", 377
    find_lex $P990, "$i"
    unless_null $P990, vivify_364
    new $P990, "Undef"
  vivify_364:
    set $I991, $P990
    find_lex $P992, "$clist"
    unless_null $P992, vivify_365
    new $P992, "ResizablePMCArray"
  vivify_365:
    set $P993, $P992[$I991]
    unless_null $P993, vivify_366
    new $P993, "Undef"
  vivify_366:
    $P994 = $P993."ast"()
    .lex "$ast", $P994
.annotate "line", 378
    find_lex $P996, "$ast"
    unless_null $P996, vivify_367
    new $P996, "Undef"
  vivify_367:
    $P997 = $P996."negate"()
    if $P997, if_995
.annotate "line", 382
    .const 'Sub' $P1007 = "92_1256575582.72382" 
    capture_lex $P1007
    $P1007()
    goto if_995_end
  if_995:
.annotate "line", 378
    .const 'Sub' $P999 = "91_1256575582.72382" 
    capture_lex $P999
    $P999()
  if_995_end:
.annotate "line", 385
    find_lex $P1013, "$i"
    unless_null $P1013, vivify_375
    new $P1013, "Undef"
  vivify_375:
    add $P1014, $P1013, 1
    store_lex "$i", $P1014
.annotate "line", 376
    .return ($P1014)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1006"  :anon :subid("92_1256575582.72382") :outer("90_1256575582.72382")
.annotate "line", 383
    get_hll_global $P1008, ["PAST"], "Regex"
    find_lex $P1009, "$past"
    unless_null $P1009, vivify_368
    new $P1009, "Undef"
  vivify_368:
    find_lex $P1010, "$ast"
    unless_null $P1010, vivify_369
    new $P1010, "Undef"
  vivify_369:
    find_lex $P1011, "$/"
    unless_null $P1011, vivify_370
    new $P1011, "Undef"
  vivify_370:
    $P1012 = $P1008."new"($P1009, $P1010, "alt" :named("pasttype"), $P1011 :named("node"))
    store_lex "$past", $P1012
.annotate "line", 382
    .return ($P1012)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block998"  :anon :subid("91_1256575582.72382") :outer("90_1256575582.72382")
.annotate "line", 379
    find_lex $P1000, "$ast"
    unless_null $P1000, vivify_371
    new $P1000, "Undef"
  vivify_371:
    $P1000."subtype"("zerowidth")
.annotate "line", 380
    get_hll_global $P1001, ["PAST"], "Regex"
    find_lex $P1002, "$ast"
    unless_null $P1002, vivify_372
    new $P1002, "Undef"
  vivify_372:
    find_lex $P1003, "$past"
    unless_null $P1003, vivify_373
    new $P1003, "Undef"
  vivify_373:
    find_lex $P1004, "$/"
    unless_null $P1004, vivify_374
    new $P1004, "Undef"
  vivify_374:
    $P1005 = $P1001."new"($P1002, $P1003, "concat" :named("pasttype"), $P1004 :named("node"))
    store_lex "$past", $P1005
.annotate "line", 378
    .return ($P1005)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "cclass_elem"  :subid("93_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_1025
.annotate "line", 390
    .const 'Sub' $P1042 = "95_1256575582.72382" 
    capture_lex $P1042
    .const 'Sub' $P1032 = "94_1256575582.72382" 
    capture_lex $P1032
    new $P1024, 'ExceptionHandler'
    set_addr $P1024, control_1023
    $P1024."handle_types"(58)
    push_eh $P1024
    .lex "self", self
    .lex "$/", param_1025
.annotate "line", 391
    new $P1026, "String"
    assign $P1026, ""
    .lex "$str", $P1026
.annotate "line", 392
    new $P1027, "Undef"
    .lex "$past", $P1027
.annotate "line", 393
    find_lex $P1029, "$/"
    set $P1030, $P1029["name"]
    unless_null $P1030, vivify_377
    new $P1030, "Undef"
  vivify_377:
    if $P1030, if_1028
.annotate "line", 396
    .const 'Sub' $P1042 = "95_1256575582.72382" 
    capture_lex $P1042
    $P1042()
    goto if_1028_end
  if_1028:
.annotate "line", 393
    .const 'Sub' $P1032 = "94_1256575582.72382" 
    capture_lex $P1032
    $P1032()
  if_1028_end:
.annotate "line", 424
    find_lex $P1081, "$past"
    unless_null $P1081, vivify_397
    new $P1081, "Undef"
  vivify_397:
    find_lex $P1082, "$/"
    set $P1083, $P1082["sign"]
    unless_null $P1083, vivify_398
    new $P1083, "Undef"
  vivify_398:
    set $S1084, $P1083
    iseq $I1085, $S1084, "-"
    $P1081."negate"($I1085)
    find_lex $P1086, "$/"
.annotate "line", 425
    find_lex $P1087, "$past"
    unless_null $P1087, vivify_399
    new $P1087, "Undef"
  vivify_399:
    $P1088 = $P1086."!make"($P1087)
.annotate "line", 390
    .return ($P1088)
  control_1023:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1089, exception, "payload"
    .return ($P1089)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1041"  :anon :subid("95_1256575582.72382") :outer("93_1256575582.72382")
.annotate "line", 396
    .const 'Sub' $P1049 = "96_1256575582.72382" 
    capture_lex $P1049
.annotate "line", 397
    find_lex $P1044, "$/"
    set $P1045, $P1044["charspec"]
    unless_null $P1045, vivify_378
    new $P1045, "Undef"
  vivify_378:
    defined $I1046, $P1045
    unless $I1046, for_undef_379
    iter $P1043, $P1045
    new $P1075, 'ExceptionHandler'
    set_addr $P1075, loop1074_handler
    $P1075."handle_types"(65, 67, 66)
    push_eh $P1075
  loop1074_test:
    unless $P1043, loop1074_done
    shift $P1047, $P1043
  loop1074_redo:
    .const 'Sub' $P1049 = "96_1256575582.72382" 
    capture_lex $P1049
    $P1049($P1047)
  loop1074_next:
    goto loop1074_test
  loop1074_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1076, exception, 'type'
    eq $P1076, 65, loop1074_next
    eq $P1076, 67, loop1074_redo
  loop1074_done:
    pop_eh 
  for_undef_379:
.annotate "line", 422
    get_hll_global $P1077, ["PAST"], "Regex"
    find_lex $P1078, "$str"
    unless_null $P1078, vivify_392
    new $P1078, "Undef"
  vivify_392:
    find_lex $P1079, "$/"
    unless_null $P1079, vivify_393
    new $P1079, "Undef"
  vivify_393:
    $P1080 = $P1077."new"($P1078, "enumcharlist" :named("pasttype"), $P1079 :named("node"))
    store_lex "$past", $P1080
.annotate "line", 396
    .return ($P1080)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1048"  :anon :subid("96_1256575582.72382") :outer("95_1256575582.72382")
    .param pmc param_1050
.annotate "line", 397
    .const 'Sub' $P1068 = "98_1256575582.72382" 
    capture_lex $P1068
    .const 'Sub' $P1056 = "97_1256575582.72382" 
    capture_lex $P1056
    .lex "$_", param_1050
.annotate "line", 398
    find_lex $P1053, "$_"
    unless_null $P1053, vivify_380
    new $P1053, "ResizablePMCArray"
  vivify_380:
    set $P1054, $P1053[1]
    unless_null $P1054, vivify_381
    new $P1054, "Undef"
  vivify_381:
    if $P1054, if_1052
.annotate "line", 420
    .const 'Sub' $P1068 = "98_1256575582.72382" 
    capture_lex $P1068
    $P1073 = $P1068()
    set $P1051, $P1073
.annotate "line", 398
    goto if_1052_end
  if_1052:
    .const 'Sub' $P1056 = "97_1256575582.72382" 
    capture_lex $P1056
    $P1066 = $P1056()
    set $P1051, $P1066
  if_1052_end:
.annotate "line", 397
    .return ($P1051)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1067"  :anon :subid("98_1256575582.72382") :outer("96_1256575582.72382")
.annotate "line", 420
    find_lex $P1069, "$str"
    unless_null $P1069, vivify_382
    new $P1069, "Undef"
  vivify_382:
    find_lex $P1070, "$_"
    unless_null $P1070, vivify_383
    new $P1070, "ResizablePMCArray"
  vivify_383:
    set $P1071, $P1070[0]
    unless_null $P1071, vivify_384
    new $P1071, "Undef"
  vivify_384:
    concat $P1072, $P1069, $P1071
    store_lex "$str", $P1072
    .return ($P1072)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1055"  :anon :subid("97_1256575582.72382") :outer("96_1256575582.72382")
.annotate "line", 399
    find_lex $P1057, "$_"
    unless_null $P1057, vivify_385
    new $P1057, "ResizablePMCArray"
  vivify_385:
    set $P1058, $P1057[0]
    unless_null $P1058, vivify_386
    new $P1058, "Undef"
  vivify_386:
    .lex "$a", $P1058
.annotate "line", 400
    find_lex $P1059, "$_"
    unless_null $P1059, vivify_387
    new $P1059, "ResizablePMCArray"
  vivify_387:
    set $P1060, $P1059[1]
    unless_null $P1060, vivify_388
    new $P1060, "ResizablePMCArray"
  vivify_388:
    set $P1061, $P1060[0]
    unless_null $P1061, vivify_389
    new $P1061, "Undef"
  vivify_389:
    .lex "$b", $P1061
.annotate "line", 401

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
                             $P1062 = box $S2
                         
    .lex "$c", $P1062
.annotate "line", 418
    find_lex $P1063, "$str"
    unless_null $P1063, vivify_390
    new $P1063, "Undef"
  vivify_390:
    find_lex $P1064, "$c"
    unless_null $P1064, vivify_391
    new $P1064, "Undef"
  vivify_391:
    concat $P1065, $P1063, $P1064
    store_lex "$str", $P1065
.annotate "line", 398
    .return ($P1065)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1031"  :anon :subid("94_1256575582.72382") :outer("93_1256575582.72382")
.annotate "line", 394
    find_lex $P1033, "$/"
    set $P1034, $P1033["name"]
    unless_null $P1034, vivify_394
    new $P1034, "Undef"
  vivify_394:
    set $S1035, $P1034
    new $P1036, 'String'
    set $P1036, $S1035
    .lex "$name", $P1036
.annotate "line", 395
    get_hll_global $P1037, ["PAST"], "Regex"
    find_lex $P1038, "$name"
    unless_null $P1038, vivify_395
    new $P1038, "Undef"
  vivify_395:
    find_lex $P1039, "$/"
    unless_null $P1039, vivify_396
    new $P1039, "Undef"
  vivify_396:
    $P1040 = $P1037."new"($P1038, "subrule" :named("pasttype"), "method" :named("subtype"), $P1039 :named("node"))
    store_lex "$past", $P1040
.annotate "line", 393
    .return ($P1040)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("99_1256575582.72382") :method :outer("11_1256575582.72382")
    .param pmc param_1093
.annotate "line", 428
    new $P1092, 'ExceptionHandler'
    set_addr $P1092, control_1091
    $P1092."handle_types"(58)
    push_eh $P1092
    .lex "self", self
    .lex "$/", param_1093
.annotate "line", 429
    get_global $P1094, "@MODIFIERS"
    unless_null $P1094, vivify_400
    new $P1094, "ResizablePMCArray"
  vivify_400:
    set $P1095, $P1094[0]
    unless_null $P1095, vivify_401
    new $P1095, "Undef"
  vivify_401:
    .lex "%mods", $P1095
.annotate "line", 430
    find_lex $P1098, "$/"
    set $P1099, $P1098["n"]
    unless_null $P1099, vivify_402
    new $P1099, "ResizablePMCArray"
  vivify_402:
    set $P1100, $P1099[0]
    unless_null $P1100, vivify_403
    new $P1100, "Undef"
  vivify_403:
    set $S1101, $P1100
    isgt $I1102, $S1101, ""
    if $I1102, if_1097
    new $P1107, "Integer"
    assign $P1107, 1
    set $P1096, $P1107
    goto if_1097_end
  if_1097:
    find_lex $P1103, "$/"
    set $P1104, $P1103["n"]
    unless_null $P1104, vivify_404
    new $P1104, "ResizablePMCArray"
  vivify_404:
    set $P1105, $P1104[0]
    unless_null $P1105, vivify_405
    new $P1105, "Undef"
  vivify_405:
    set $N1106, $P1105
    new $P1096, 'Float'
    set $P1096, $N1106
  if_1097_end:
    .lex "$n", $P1096
.annotate "line", 431
    find_lex $P1108, "$n"
    unless_null $P1108, vivify_406
    new $P1108, "Undef"
  vivify_406:
    find_lex $P1109, "$/"
    set $P1110, $P1109["mod_ident"]
    unless_null $P1110, vivify_407
    new $P1110, "Hash"
  vivify_407:
    set $P1111, $P1110["sym"]
    unless_null $P1111, vivify_408
    new $P1111, "Undef"
  vivify_408:
    set $S1112, $P1111
    find_lex $P1113, "%mods"
    unless_null $P1113, vivify_409
    new $P1113, "Hash"
    store_lex "%mods", $P1113
  vivify_409:
    set $P1113[$S1112], $P1108
    find_lex $P1114, "$/"
.annotate "line", 432
    $P1115 = $P1114."!make"(0)
.annotate "line", 428
    .return ($P1115)
  control_1091:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1116, exception, "payload"
    .return ($P1116)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("100_1256575582.72382") :outer("11_1256575582.72382")
    .param pmc param_1120
.annotate "line", 435
    new $P1119, 'ExceptionHandler'
    set_addr $P1119, control_1118
    $P1119."handle_types"(58)
    push_eh $P1119
    .lex "$rpast", param_1120
.annotate "line", 436
    find_lex $P1121, "$rpast"
    unless_null $P1121, vivify_410
    new $P1121, "Undef"
  vivify_410:
    $P1122 = "capnames"($P1121, 0)
    .lex "%capnames", $P1122
.annotate "line", 437
    new $P1123, "Integer"
    assign $P1123, 0
    find_lex $P1124, "%capnames"
    unless_null $P1124, vivify_411
    new $P1124, "Hash"
    store_lex "%capnames", $P1124
  vivify_411:
    set $P1124[""], $P1123
.annotate "line", 438
    get_hll_global $P1125, ["PAST"], "Regex"
.annotate "line", 439
    get_hll_global $P1126, ["PAST"], "Regex"
    $P1127 = $P1126."new"("scan" :named("pasttype"))
.annotate "line", 440
    find_lex $P1128, "$rpast"
    unless_null $P1128, vivify_412
    new $P1128, "Undef"
  vivify_412:
.annotate "line", 441
    get_hll_global $P1129, ["PAST"], "Regex"
    $P1130 = $P1129."new"("pass" :named("pasttype"))
.annotate "line", 443
    find_lex $P1131, "%capnames"
    unless_null $P1131, vivify_413
    new $P1131, "Hash"
  vivify_413:
    $P1132 = $P1125."new"($P1127, $P1128, $P1130, "concat" :named("pasttype"), $P1131 :named("capnames"))
.annotate "line", 438
    store_lex "$rpast", $P1132
.annotate "line", 445
    get_hll_global $P1133, ["PAST"], "Block"
    find_lex $P1134, "$rpast"
    unless_null $P1134, vivify_414
    new $P1134, "Undef"
  vivify_414:
    $P1135 = $P1133."new"($P1134, "method" :named("blocktype"))
.annotate "line", 435
    .return ($P1135)
  control_1118:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1136, exception, "payload"
    .return ($P1136)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "capnames"  :subid("101_1256575582.72382") :outer("11_1256575582.72382")
    .param pmc param_1140
    .param pmc param_1141
.annotate "line", 448
    .const 'Sub' $P1376 = "117_1256575582.72382" 
    capture_lex $P1376
    .const 'Sub' $P1312 = "113_1256575582.72382" 
    capture_lex $P1312
    .const 'Sub' $P1265 = "109_1256575582.72382" 
    capture_lex $P1265
    .const 'Sub' $P1217 = "106_1256575582.72382" 
    capture_lex $P1217
    .const 'Sub' $P1150 = "102_1256575582.72382" 
    capture_lex $P1150
    new $P1139, 'ExceptionHandler'
    set_addr $P1139, control_1138
    $P1139."handle_types"(58)
    push_eh $P1139
    .lex "$ast", param_1140
    .lex "$count", param_1141
.annotate "line", 449
    new $P1142, "Hash"
    .lex "%capnames", $P1142
.annotate "line", 450
    find_lex $P1143, "$ast"
    unless_null $P1143, vivify_415
    new $P1143, "Undef"
  vivify_415:
    $P1144 = $P1143."pasttype"()
    .lex "$pasttype", $P1144
.annotate "line", 451
    find_lex $P1146, "$pasttype"
    unless_null $P1146, vivify_416
    new $P1146, "Undef"
  vivify_416:
    set $S1147, $P1146
    iseq $I1148, $S1147, "alt"
    if $I1148, if_1145
.annotate "line", 464
    find_lex $P1213, "$pasttype"
    unless_null $P1213, vivify_417
    new $P1213, "Undef"
  vivify_417:
    set $S1214, $P1213
    iseq $I1215, $S1214, "concat"
    if $I1215, if_1212
.annotate "line", 473
    find_lex $P1258, "$pasttype"
    unless_null $P1258, vivify_418
    new $P1258, "Undef"
  vivify_418:
    set $S1259, $P1258
    iseq $I1260, $S1259, "subrule"
    if $I1260, if_1257
    new $P1256, 'Integer'
    set $P1256, $I1260
    goto if_1257_end
  if_1257:
    find_lex $P1261, "$ast"
    unless_null $P1261, vivify_419
    new $P1261, "Undef"
  vivify_419:
    $S1262 = $P1261."subtype"()
    iseq $I1263, $S1262, "capture"
    new $P1256, 'Integer'
    set $P1256, $I1263
  if_1257_end:
    if $P1256, if_1255
.annotate "line", 486
    find_lex $P1308, "$pasttype"
    unless_null $P1308, vivify_420
    new $P1308, "Undef"
  vivify_420:
    set $S1309, $P1308
    iseq $I1310, $S1309, "subcapture"
    if $I1310, if_1307
.annotate "line", 503
    find_lex $P1372, "$pasttype"
    unless_null $P1372, vivify_421
    new $P1372, "Undef"
  vivify_421:
    set $S1373, $P1372
    iseq $I1374, $S1373, "quant"
    unless $I1374, if_1371_end
    .const 'Sub' $P1376 = "117_1256575582.72382" 
    capture_lex $P1376
    $P1376()
  if_1371_end:
.annotate "line", 451
    goto if_1307_end
  if_1307:
.annotate "line", 486
    .const 'Sub' $P1312 = "113_1256575582.72382" 
    capture_lex $P1312
    $P1312()
  if_1307_end:
.annotate "line", 451
    goto if_1255_end
  if_1255:
.annotate "line", 473
    .const 'Sub' $P1265 = "109_1256575582.72382" 
    capture_lex $P1265
    $P1265()
  if_1255_end:
.annotate "line", 451
    goto if_1212_end
  if_1212:
.annotate "line", 464
    .const 'Sub' $P1217 = "106_1256575582.72382" 
    capture_lex $P1217
    $P1217()
  if_1212_end:
.annotate "line", 451
    goto if_1145_end
  if_1145:
    .const 'Sub' $P1150 = "102_1256575582.72382" 
    capture_lex $P1150
    $P1150()
  if_1145_end:
.annotate "line", 510
    find_lex $P1396, "$count"
    unless_null $P1396, vivify_503
    new $P1396, "Undef"
  vivify_503:
    find_lex $P1397, "%capnames"
    unless_null $P1397, vivify_504
    new $P1397, "Hash"
    store_lex "%capnames", $P1397
  vivify_504:
    set $P1397[""], $P1396
.annotate "line", 511
    find_lex $P1398, "%capnames"
    unless_null $P1398, vivify_505
    new $P1398, "Hash"
  vivify_505:
.annotate "line", 448
    .return ($P1398)
  control_1138:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1399, exception, "payload"
    .return ($P1399)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1375"  :anon :subid("117_1256575582.72382") :outer("101_1256575582.72382")
.annotate "line", 503
    .const 'Sub' $P1386 = "118_1256575582.72382" 
    capture_lex $P1386
.annotate "line", 504
    find_lex $P1377, "$ast"
    unless_null $P1377, vivify_422
    new $P1377, "ResizablePMCArray"
  vivify_422:
    set $P1378, $P1377[0]
    unless_null $P1378, vivify_423
    new $P1378, "Undef"
  vivify_423:
    find_lex $P1379, "$count"
    unless_null $P1379, vivify_424
    new $P1379, "Undef"
  vivify_424:
    $P1380 = "capnames"($P1378, $P1379)
    .lex "%astcap", $P1380
.annotate "line", 505
    find_lex $P1382, "%astcap"
    unless_null $P1382, vivify_425
    new $P1382, "Hash"
  vivify_425:
    defined $I1383, $P1382
    unless $I1383, for_undef_426
    iter $P1381, $P1382
    new $P1392, 'ExceptionHandler'
    set_addr $P1392, loop1391_handler
    $P1392."handle_types"(65, 67, 66)
    push_eh $P1392
  loop1391_test:
    unless $P1381, loop1391_done
    shift $P1384, $P1381
  loop1391_redo:
    .const 'Sub' $P1386 = "118_1256575582.72382" 
    capture_lex $P1386
    $P1386($P1384)
  loop1391_next:
    goto loop1391_test
  loop1391_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1393, exception, 'type'
    eq $P1393, 65, loop1391_next
    eq $P1393, 67, loop1391_redo
  loop1391_done:
    pop_eh 
  for_undef_426:
.annotate "line", 508
    find_lex $P1394, "%astcap"
    unless_null $P1394, vivify_429
    new $P1394, "Hash"
  vivify_429:
    set $P1395, $P1394[""]
    unless_null $P1395, vivify_430
    new $P1395, "Undef"
  vivify_430:
    store_lex "$count", $P1395
.annotate "line", 503
    .return ($P1395)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1385"  :anon :subid("118_1256575582.72382") :outer("117_1256575582.72382")
    .param pmc param_1387
.annotate "line", 505
    .lex "$_", param_1387
.annotate "line", 506
    new $P1388, "Integer"
    assign $P1388, 2
    find_lex $P1389, "$_"
    unless_null $P1389, vivify_427
    new $P1389, "Undef"
  vivify_427:
    find_lex $P1390, "%capnames"
    unless_null $P1390, vivify_428
    new $P1390, "Hash"
    store_lex "%capnames", $P1390
  vivify_428:
    set $P1390[$P1389], $P1388
.annotate "line", 505
    .return ($P1388)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1311"  :anon :subid("113_1256575582.72382") :outer("101_1256575582.72382")
.annotate "line", 486
    .const 'Sub' $P1353 = "116_1256575582.72382" 
    capture_lex $P1353
    .const 'Sub' $P1321 = "114_1256575582.72382" 
    capture_lex $P1321
.annotate "line", 487
    find_lex $P1313, "$ast"
    unless_null $P1313, vivify_431
    new $P1313, "Undef"
  vivify_431:
    $P1314 = $P1313."name"()
    .lex "$name", $P1314
.annotate "line", 488

            $P0 = find_lex '$name'
            $S0 = $P0
            $P1315 = split '=', $S0
        
    .lex "@names", $P1315
.annotate "line", 493
    find_lex $P1317, "@names"
    unless_null $P1317, vivify_432
    new $P1317, "ResizablePMCArray"
  vivify_432:
    defined $I1318, $P1317
    unless $I1318, for_undef_433
    iter $P1316, $P1317
    new $P1342, 'ExceptionHandler'
    set_addr $P1342, loop1341_handler
    $P1342."handle_types"(65, 67, 66)
    push_eh $P1342
  loop1341_test:
    unless $P1316, loop1341_done
    shift $P1319, $P1316
  loop1341_redo:
    .const 'Sub' $P1321 = "114_1256575582.72382" 
    capture_lex $P1321
    $P1321($P1319)
  loop1341_next:
    goto loop1341_test
  loop1341_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1343, exception, 'type'
    eq $P1343, 65, loop1341_next
    eq $P1343, 67, loop1341_redo
  loop1341_done:
    pop_eh 
  for_undef_433:
.annotate "line", 497
    find_lex $P1344, "$ast"
    unless_null $P1344, vivify_439
    new $P1344, "ResizablePMCArray"
  vivify_439:
    set $P1345, $P1344[0]
    unless_null $P1345, vivify_440
    new $P1345, "Undef"
  vivify_440:
    find_lex $P1346, "$count"
    unless_null $P1346, vivify_441
    new $P1346, "Undef"
  vivify_441:
    $P1347 = "capnames"($P1345, $P1346)
    .lex "%x", $P1347
.annotate "line", 498
    find_lex $P1349, "%x"
    unless_null $P1349, vivify_442
    new $P1349, "Hash"
  vivify_442:
    defined $I1350, $P1349
    unless $I1350, for_undef_443
    iter $P1348, $P1349
    new $P1367, 'ExceptionHandler'
    set_addr $P1367, loop1366_handler
    $P1367."handle_types"(65, 67, 66)
    push_eh $P1367
  loop1366_test:
    unless $P1348, loop1366_done
    shift $P1351, $P1348
  loop1366_redo:
    .const 'Sub' $P1353 = "116_1256575582.72382" 
    capture_lex $P1353
    $P1353($P1351)
  loop1366_next:
    goto loop1366_test
  loop1366_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1368, exception, 'type'
    eq $P1368, 65, loop1366_next
    eq $P1368, 67, loop1366_redo
  loop1366_done:
    pop_eh 
  for_undef_443:
.annotate "line", 501
    find_lex $P1369, "%x"
    unless_null $P1369, vivify_452
    new $P1369, "Hash"
  vivify_452:
    set $P1370, $P1369[""]
    unless_null $P1370, vivify_453
    new $P1370, "Undef"
  vivify_453:
    store_lex "$count", $P1370
.annotate "line", 486
    .return ($P1370)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1320"  :anon :subid("114_1256575582.72382") :outer("113_1256575582.72382")
    .param pmc param_1322
.annotate "line", 493
    .const 'Sub' $P1335 = "115_1256575582.72382" 
    capture_lex $P1335
    .lex "$_", param_1322
.annotate "line", 494
    find_lex $P1326, "$_"
    unless_null $P1326, vivify_434
    new $P1326, "Undef"
  vivify_434:
    set $S1327, $P1326
    iseq $I1328, $S1327, "0"
    unless $I1328, unless_1325
    new $P1324, 'Integer'
    set $P1324, $I1328
    goto unless_1325_end
  unless_1325:
    find_lex $P1329, "$_"
    unless_null $P1329, vivify_435
    new $P1329, "Undef"
  vivify_435:
    set $N1330, $P1329
    new $P1331, "Integer"
    assign $P1331, 0
    set $N1332, $P1331
    isgt $I1333, $N1330, $N1332
    new $P1324, 'Integer'
    set $P1324, $I1333
  unless_1325_end:
    unless $P1324, if_1323_end
    .const 'Sub' $P1335 = "115_1256575582.72382" 
    capture_lex $P1335
    $P1335()
  if_1323_end:
.annotate "line", 495
    new $P1338, "Integer"
    assign $P1338, 1
    find_lex $P1339, "$_"
    unless_null $P1339, vivify_437
    new $P1339, "Undef"
  vivify_437:
    find_lex $P1340, "%capnames"
    unless_null $P1340, vivify_438
    new $P1340, "Hash"
    store_lex "%capnames", $P1340
  vivify_438:
    set $P1340[$P1339], $P1338
.annotate "line", 493
    .return ($P1338)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1334"  :anon :subid("115_1256575582.72382") :outer("114_1256575582.72382")
.annotate "line", 494
    find_lex $P1336, "$_"
    unless_null $P1336, vivify_436
    new $P1336, "Undef"
  vivify_436:
    add $P1337, $P1336, 1
    store_lex "$count", $P1337
    .return ($P1337)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1352"  :anon :subid("116_1256575582.72382") :outer("113_1256575582.72382")
    .param pmc param_1354
.annotate "line", 498
    .lex "$_", param_1354
.annotate "line", 499
    find_lex $P1355, "$_"
    unless_null $P1355, vivify_444
    new $P1355, "Undef"
  vivify_444:
    find_lex $P1356, "%capnames"
    unless_null $P1356, vivify_445
    new $P1356, "Hash"
  vivify_445:
    set $P1357, $P1356[$P1355]
    unless_null $P1357, vivify_446
    new $P1357, "Undef"
  vivify_446:
    set $N1358, $P1357
    new $P1359, 'Float'
    set $P1359, $N1358
    find_lex $P1360, "$_"
    unless_null $P1360, vivify_447
    new $P1360, "Undef"
  vivify_447:
    find_lex $P1361, "%x"
    unless_null $P1361, vivify_448
    new $P1361, "Hash"
  vivify_448:
    set $P1362, $P1361[$P1360]
    unless_null $P1362, vivify_449
    new $P1362, "Undef"
  vivify_449:
    add $P1363, $P1359, $P1362
    find_lex $P1364, "$_"
    unless_null $P1364, vivify_450
    new $P1364, "Undef"
  vivify_450:
    find_lex $P1365, "%capnames"
    unless_null $P1365, vivify_451
    new $P1365, "Hash"
    store_lex "%capnames", $P1365
  vivify_451:
    set $P1365[$P1364], $P1363
.annotate "line", 498
    .return ($P1363)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1264"  :anon :subid("109_1256575582.72382") :outer("101_1256575582.72382")
.annotate "line", 473
    .const 'Sub' $P1284 = "111_1256575582.72382" 
    capture_lex $P1284
    .const 'Sub' $P1273 = "110_1256575582.72382" 
    capture_lex $P1273
.annotate "line", 474
    find_lex $P1266, "$ast"
    unless_null $P1266, vivify_454
    new $P1266, "Undef"
  vivify_454:
    $P1267 = $P1266."name"()
    .lex "$name", $P1267
.annotate "line", 475
    find_lex $P1269, "$name"
    unless_null $P1269, vivify_455
    new $P1269, "Undef"
  vivify_455:
    set $S1270, $P1269
    iseq $I1271, $S1270, ""
    unless $I1271, if_1268_end
    .const 'Sub' $P1273 = "110_1256575582.72382" 
    capture_lex $P1273
    $P1273()
  if_1268_end:
.annotate "line", 476

            $P0 = find_lex '$name'
            $S0 = $P0
            $P1278 = split '=', $S0
        
    .lex "@names", $P1278
.annotate "line", 481
    find_lex $P1280, "@names"
    unless_null $P1280, vivify_459
    new $P1280, "ResizablePMCArray"
  vivify_459:
    defined $I1281, $P1280
    unless $I1281, for_undef_460
    iter $P1279, $P1280
    new $P1305, 'ExceptionHandler'
    set_addr $P1305, loop1304_handler
    $P1305."handle_types"(65, 67, 66)
    push_eh $P1305
  loop1304_test:
    unless $P1279, loop1304_done
    shift $P1282, $P1279
  loop1304_redo:
    .const 'Sub' $P1284 = "111_1256575582.72382" 
    capture_lex $P1284
    $P1284($P1282)
  loop1304_next:
    goto loop1304_test
  loop1304_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1306, exception, 'type'
    eq $P1306, 65, loop1304_next
    eq $P1306, 67, loop1304_redo
  loop1304_done:
    pop_eh 
  for_undef_460:
.annotate "line", 473
    .return ($P1279)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1272"  :anon :subid("110_1256575582.72382") :outer("109_1256575582.72382")
.annotate "line", 475
    find_lex $P1274, "$count"
    unless_null $P1274, vivify_456
    new $P1274, "Undef"
  vivify_456:
    store_lex "$name", $P1274
    find_lex $P1275, "$ast"
    unless_null $P1275, vivify_457
    new $P1275, "Undef"
  vivify_457:
    find_lex $P1276, "$name"
    unless_null $P1276, vivify_458
    new $P1276, "Undef"
  vivify_458:
    $P1277 = $P1275."name"($P1276)
    .return ($P1277)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1283"  :anon :subid("111_1256575582.72382") :outer("109_1256575582.72382")
    .param pmc param_1285
.annotate "line", 481
    .const 'Sub' $P1298 = "112_1256575582.72382" 
    capture_lex $P1298
    .lex "$_", param_1285
.annotate "line", 482
    find_lex $P1289, "$_"
    unless_null $P1289, vivify_461
    new $P1289, "Undef"
  vivify_461:
    set $S1290, $P1289
    iseq $I1291, $S1290, "0"
    unless $I1291, unless_1288
    new $P1287, 'Integer'
    set $P1287, $I1291
    goto unless_1288_end
  unless_1288:
    find_lex $P1292, "$_"
    unless_null $P1292, vivify_462
    new $P1292, "Undef"
  vivify_462:
    set $N1293, $P1292
    new $P1294, "Integer"
    assign $P1294, 0
    set $N1295, $P1294
    isgt $I1296, $N1293, $N1295
    new $P1287, 'Integer'
    set $P1287, $I1296
  unless_1288_end:
    unless $P1287, if_1286_end
    .const 'Sub' $P1298 = "112_1256575582.72382" 
    capture_lex $P1298
    $P1298()
  if_1286_end:
.annotate "line", 483
    new $P1301, "Integer"
    assign $P1301, 1
    find_lex $P1302, "$_"
    unless_null $P1302, vivify_464
    new $P1302, "Undef"
  vivify_464:
    find_lex $P1303, "%capnames"
    unless_null $P1303, vivify_465
    new $P1303, "Hash"
    store_lex "%capnames", $P1303
  vivify_465:
    set $P1303[$P1302], $P1301
.annotate "line", 481
    .return ($P1301)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1297"  :anon :subid("112_1256575582.72382") :outer("111_1256575582.72382")
.annotate "line", 482
    find_lex $P1299, "$_"
    unless_null $P1299, vivify_463
    new $P1299, "Undef"
  vivify_463:
    add $P1300, $P1299, 1
    store_lex "$count", $P1300
    .return ($P1300)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1216"  :anon :subid("106_1256575582.72382") :outer("101_1256575582.72382")
.annotate "line", 464
    .const 'Sub' $P1224 = "107_1256575582.72382" 
    capture_lex $P1224
.annotate "line", 465
    find_lex $P1219, "$ast"
    unless_null $P1219, vivify_466
    new $P1219, "Undef"
  vivify_466:
    $P1220 = $P1219."list"()
    defined $I1221, $P1220
    unless $I1221, for_undef_467
    iter $P1218, $P1220
    new $P1253, 'ExceptionHandler'
    set_addr $P1253, loop1252_handler
    $P1253."handle_types"(65, 67, 66)
    push_eh $P1253
  loop1252_test:
    unless $P1218, loop1252_done
    shift $P1222, $P1218
  loop1252_redo:
    .const 'Sub' $P1224 = "107_1256575582.72382" 
    capture_lex $P1224
    $P1224($P1222)
  loop1252_next:
    goto loop1252_test
  loop1252_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1254, exception, 'type'
    eq $P1254, 65, loop1252_next
    eq $P1254, 67, loop1252_redo
  loop1252_done:
    pop_eh 
  for_undef_467:
.annotate "line", 464
    .return ($P1218)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1223"  :anon :subid("107_1256575582.72382") :outer("106_1256575582.72382")
    .param pmc param_1225
.annotate "line", 465
    .const 'Sub' $P1234 = "108_1256575582.72382" 
    capture_lex $P1234
    .lex "$_", param_1225
.annotate "line", 466
    find_lex $P1226, "$_"
    unless_null $P1226, vivify_468
    new $P1226, "Undef"
  vivify_468:
    find_lex $P1227, "$count"
    unless_null $P1227, vivify_469
    new $P1227, "Undef"
  vivify_469:
    $P1228 = "capnames"($P1226, $P1227)
    .lex "%x", $P1228
.annotate "line", 467
    find_lex $P1230, "%x"
    unless_null $P1230, vivify_470
    new $P1230, "Hash"
  vivify_470:
    defined $I1231, $P1230
    unless $I1231, for_undef_471
    iter $P1229, $P1230
    new $P1248, 'ExceptionHandler'
    set_addr $P1248, loop1247_handler
    $P1248."handle_types"(65, 67, 66)
    push_eh $P1248
  loop1247_test:
    unless $P1229, loop1247_done
    shift $P1232, $P1229
  loop1247_redo:
    .const 'Sub' $P1234 = "108_1256575582.72382" 
    capture_lex $P1234
    $P1234($P1232)
  loop1247_next:
    goto loop1247_test
  loop1247_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1249, exception, 'type'
    eq $P1249, 65, loop1247_next
    eq $P1249, 67, loop1247_redo
  loop1247_done:
    pop_eh 
  for_undef_471:
.annotate "line", 470
    find_lex $P1250, "%x"
    unless_null $P1250, vivify_480
    new $P1250, "Hash"
  vivify_480:
    set $P1251, $P1250[""]
    unless_null $P1251, vivify_481
    new $P1251, "Undef"
  vivify_481:
    store_lex "$count", $P1251
.annotate "line", 465
    .return ($P1251)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1233"  :anon :subid("108_1256575582.72382") :outer("107_1256575582.72382")
    .param pmc param_1235
.annotate "line", 467
    .lex "$_", param_1235
.annotate "line", 468
    find_lex $P1236, "$_"
    unless_null $P1236, vivify_472
    new $P1236, "Undef"
  vivify_472:
    find_lex $P1237, "%capnames"
    unless_null $P1237, vivify_473
    new $P1237, "Hash"
  vivify_473:
    set $P1238, $P1237[$P1236]
    unless_null $P1238, vivify_474
    new $P1238, "Undef"
  vivify_474:
    set $N1239, $P1238
    new $P1240, 'Float'
    set $P1240, $N1239
    find_lex $P1241, "$_"
    unless_null $P1241, vivify_475
    new $P1241, "Undef"
  vivify_475:
    find_lex $P1242, "%x"
    unless_null $P1242, vivify_476
    new $P1242, "Hash"
  vivify_476:
    set $P1243, $P1242[$P1241]
    unless_null $P1243, vivify_477
    new $P1243, "Undef"
  vivify_477:
    add $P1244, $P1240, $P1243
    find_lex $P1245, "$_"
    unless_null $P1245, vivify_478
    new $P1245, "Undef"
  vivify_478:
    find_lex $P1246, "%capnames"
    unless_null $P1246, vivify_479
    new $P1246, "Hash"
    store_lex "%capnames", $P1246
  vivify_479:
    set $P1246[$P1245], $P1244
.annotate "line", 467
    .return ($P1244)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1149"  :anon :subid("102_1256575582.72382") :outer("101_1256575582.72382")
.annotate "line", 451
    .const 'Sub' $P1158 = "103_1256575582.72382" 
    capture_lex $P1158
.annotate "line", 452
    find_lex $P1151, "$count"
    unless_null $P1151, vivify_482
    new $P1151, "Undef"
  vivify_482:
    .lex "$max", $P1151
.annotate "line", 453
    find_lex $P1153, "$ast"
    unless_null $P1153, vivify_483
    new $P1153, "Undef"
  vivify_483:
    $P1154 = $P1153."list"()
    defined $I1155, $P1154
    unless $I1155, for_undef_484
    iter $P1152, $P1154
    new $P1209, 'ExceptionHandler'
    set_addr $P1209, loop1208_handler
    $P1209."handle_types"(65, 67, 66)
    push_eh $P1209
  loop1208_test:
    unless $P1152, loop1208_done
    shift $P1156, $P1152
  loop1208_redo:
    .const 'Sub' $P1158 = "103_1256575582.72382" 
    capture_lex $P1158
    $P1158($P1156)
  loop1208_next:
    goto loop1208_test
  loop1208_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1210, exception, 'type'
    eq $P1210, 65, loop1208_next
    eq $P1210, 67, loop1208_redo
  loop1208_done:
    pop_eh 
  for_undef_484:
.annotate "line", 462
    find_lex $P1211, "$max"
    unless_null $P1211, vivify_502
    new $P1211, "Undef"
  vivify_502:
    store_lex "$count", $P1211
.annotate "line", 451
    .return ($P1211)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1157"  :anon :subid("103_1256575582.72382") :outer("102_1256575582.72382")
    .param pmc param_1159
.annotate "line", 453
    .const 'Sub' $P1204 = "105_1256575582.72382" 
    capture_lex $P1204
    .const 'Sub' $P1168 = "104_1256575582.72382" 
    capture_lex $P1168
    .lex "$_", param_1159
.annotate "line", 454
    find_lex $P1160, "$_"
    unless_null $P1160, vivify_485
    new $P1160, "Undef"
  vivify_485:
    find_lex $P1161, "$count"
    unless_null $P1161, vivify_486
    new $P1161, "Undef"
  vivify_486:
    $P1162 = "capnames"($P1160, $P1161)
    .lex "%x", $P1162
.annotate "line", 455
    find_lex $P1164, "%x"
    unless_null $P1164, vivify_487
    new $P1164, "Hash"
  vivify_487:
    defined $I1165, $P1164
    unless $I1165, for_undef_488
    iter $P1163, $P1164
    new $P1193, 'ExceptionHandler'
    set_addr $P1193, loop1192_handler
    $P1193."handle_types"(65, 67, 66)
    push_eh $P1193
  loop1192_test:
    unless $P1163, loop1192_done
    shift $P1166, $P1163
  loop1192_redo:
    .const 'Sub' $P1168 = "104_1256575582.72382" 
    capture_lex $P1168
    $P1168($P1166)
  loop1192_next:
    goto loop1192_test
  loop1192_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1194, exception, 'type'
    eq $P1194, 65, loop1192_next
    eq $P1194, 67, loop1192_redo
  loop1192_done:
    pop_eh 
  for_undef_488:
.annotate "line", 460
    find_lex $P1197, "%x"
    unless_null $P1197, vivify_497
    new $P1197, "Hash"
  vivify_497:
    set $P1198, $P1197[""]
    unless_null $P1198, vivify_498
    new $P1198, "Undef"
  vivify_498:
    set $N1199, $P1198
    find_lex $P1200, "$max"
    unless_null $P1200, vivify_499
    new $P1200, "Undef"
  vivify_499:
    set $N1201, $P1200
    isgt $I1202, $N1199, $N1201
    if $I1202, if_1196
    new $P1195, 'Integer'
    set $P1195, $I1202
    goto if_1196_end
  if_1196:
    .const 'Sub' $P1204 = "105_1256575582.72382" 
    capture_lex $P1204
    $P1207 = $P1204()
    set $P1195, $P1207
  if_1196_end:
.annotate "line", 453
    .return ($P1195)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1167"  :anon :subid("104_1256575582.72382") :outer("103_1256575582.72382")
    .param pmc param_1169
.annotate "line", 455
    .lex "$_", param_1169
.annotate "line", 456
    find_lex $P1174, "$_"
    unless_null $P1174, vivify_489
    new $P1174, "Undef"
  vivify_489:
    find_lex $P1175, "%capnames"
    unless_null $P1175, vivify_490
    new $P1175, "Hash"
  vivify_490:
    set $P1176, $P1175[$P1174]
    unless_null $P1176, vivify_491
    new $P1176, "Undef"
  vivify_491:
    set $N1177, $P1176
    new $P1178, "Integer"
    assign $P1178, 2
    set $N1179, $P1178
    islt $I1180, $N1177, $N1179
    if $I1180, if_1173
    new $P1172, 'Integer'
    set $P1172, $I1180
    goto if_1173_end
  if_1173:
    find_lex $P1181, "$_"
    unless_null $P1181, vivify_492
    new $P1181, "Undef"
  vivify_492:
    find_lex $P1182, "%x"
    unless_null $P1182, vivify_493
    new $P1182, "Hash"
  vivify_493:
    set $P1183, $P1182[$P1181]
    unless_null $P1183, vivify_494
    new $P1183, "Undef"
  vivify_494:
    set $N1184, $P1183
    new $P1185, "Integer"
    assign $P1185, 1
    set $N1186, $P1185
    iseq $I1187, $N1184, $N1186
    new $P1172, 'Integer'
    set $P1172, $I1187
  if_1173_end:
    if $P1172, if_1171
.annotate "line", 458
    new $P1189, "Integer"
    assign $P1189, 2
    set $P1170, $P1189
.annotate "line", 456
    goto if_1171_end
  if_1171:
.annotate "line", 457
    new $P1188, "Integer"
    assign $P1188, 1
    set $P1170, $P1188
  if_1171_end:
.annotate "line", 456
    find_lex $P1190, "$_"
    unless_null $P1190, vivify_495
    new $P1190, "Undef"
  vivify_495:
    find_lex $P1191, "%capnames"
    unless_null $P1191, vivify_496
    new $P1191, "Hash"
    store_lex "%capnames", $P1191
  vivify_496:
    set $P1191[$P1190], $P1170
.annotate "line", 455
    .return ($P1170)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1203"  :anon :subid("105_1256575582.72382") :outer("103_1256575582.72382")
.annotate "line", 460
    find_lex $P1205, "%x"
    unless_null $P1205, vivify_500
    new $P1205, "Hash"
  vivify_500:
    set $P1206, $P1205[""]
    unless_null $P1206, vivify_501
    new $P1206, "Undef"
  vivify_501:
    store_lex "$max", $P1206
    .return ($P1206)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("119_1256575582.72382") :outer("11_1256575582.72382")
    .param pmc param_1403
    .param pmc param_1404
.annotate "line", 514
    .const 'Sub' $P1436 = "122_1256575582.72382" 
    capture_lex $P1436
    .const 'Sub' $P1423 = "121_1256575582.72382" 
    capture_lex $P1423
    .const 'Sub' $P1410 = "120_1256575582.72382" 
    capture_lex $P1410
    new $P1402, 'ExceptionHandler'
    set_addr $P1402, control_1401
    $P1402."handle_types"(58)
    push_eh $P1402
    .lex "$ast", param_1403
    .lex "$backmod", param_1404
.annotate "line", 515
    find_lex $P1406, "$backmod"
    unless_null $P1406, vivify_506
    new $P1406, "Undef"
  vivify_506:
    set $S1407, $P1406
    iseq $I1408, $S1407, ":"
    if $I1408, if_1405
.annotate "line", 516
    find_lex $P1416, "$backmod"
    unless_null $P1416, vivify_507
    new $P1416, "Undef"
  vivify_507:
    set $S1417, $P1416
    iseq $I1418, $S1417, ":?"
    unless $I1418, unless_1415
    new $P1414, 'Integer'
    set $P1414, $I1418
    goto unless_1415_end
  unless_1415:
    find_lex $P1419, "$backmod"
    unless_null $P1419, vivify_508
    new $P1419, "Undef"
  vivify_508:
    set $S1420, $P1419
    iseq $I1421, $S1420, "?"
    new $P1414, 'Integer'
    set $P1414, $I1421
  unless_1415_end:
    if $P1414, if_1413
.annotate "line", 517
    find_lex $P1429, "$backmod"
    unless_null $P1429, vivify_509
    new $P1429, "Undef"
  vivify_509:
    set $S1430, $P1429
    iseq $I1431, $S1430, ":!"
    unless $I1431, unless_1428
    new $P1427, 'Integer'
    set $P1427, $I1431
    goto unless_1428_end
  unless_1428:
    find_lex $P1432, "$backmod"
    unless_null $P1432, vivify_510
    new $P1432, "Undef"
  vivify_510:
    set $S1433, $P1432
    iseq $I1434, $S1433, "!"
    new $P1427, 'Integer'
    set $P1427, $I1434
  unless_1428_end:
    unless $P1427, if_1426_end
    .const 'Sub' $P1436 = "122_1256575582.72382" 
    capture_lex $P1436
    $P1436()
  if_1426_end:
.annotate "line", 515
    goto if_1413_end
  if_1413:
.annotate "line", 516
    .const 'Sub' $P1423 = "121_1256575582.72382" 
    capture_lex $P1423
    $P1423()
  if_1413_end:
.annotate "line", 515
    goto if_1405_end
  if_1405:
    .const 'Sub' $P1410 = "120_1256575582.72382" 
    capture_lex $P1410
    $P1410()
  if_1405_end:
.annotate "line", 518
    find_lex $P1439, "$ast"
    unless_null $P1439, vivify_514
    new $P1439, "Undef"
  vivify_514:
.annotate "line", 514
    .return ($P1439)
  control_1401:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1440, exception, "payload"
    .return ($P1440)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1435"  :anon :subid("122_1256575582.72382") :outer("119_1256575582.72382")
.annotate "line", 517
    find_lex $P1437, "$ast"
    unless_null $P1437, vivify_511
    new $P1437, "Undef"
  vivify_511:
    $P1438 = $P1437."backtrack"("g")
    .return ($P1438)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1422"  :anon :subid("121_1256575582.72382") :outer("119_1256575582.72382")
.annotate "line", 516
    find_lex $P1424, "$ast"
    unless_null $P1424, vivify_512
    new $P1424, "Undef"
  vivify_512:
    $P1425 = $P1424."backtrack"("f")
    .return ($P1425)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1409"  :anon :subid("120_1256575582.72382") :outer("119_1256575582.72382")
.annotate "line", 515
    find_lex $P1411, "$ast"
    unless_null $P1411, vivify_513
    new $P1411, "Undef"
  vivify_513:
    $P1412 = $P1411."backtrack"("r")
    .return ($P1412)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("123_1256575582.72382") :outer("11_1256575582.72382")
    .param pmc param_1444
    .param pmc param_1445
.annotate "line", 521
    .const 'Sub' $P1450 = "124_1256575582.72382" 
    capture_lex $P1450
    new $P1443, 'ExceptionHandler'
    set_addr $P1443, control_1442
    $P1443."handle_types"(58)
    push_eh $P1443
    .lex "$past", param_1444
    .lex "$name", param_1445
.annotate "line", 522
    find_lex $P1447, "$past"
    unless_null $P1447, vivify_515
    new $P1447, "Hash"
  vivify_515:
    set $P1448, $P1447["aliased"]
    unless_null $P1448, vivify_516
    new $P1448, "Undef"
  vivify_516:
    unless $P1448, if_1446_end
    .const 'Sub' $P1450 = "124_1256575582.72382" 
    capture_lex $P1450
    $P1450()
  if_1446_end:
.annotate "line", 523
    find_lex $P1456, "$past"
    unless_null $P1456, vivify_519
    new $P1456, "Undef"
  vivify_519:
    find_lex $P1457, "$name"
    unless_null $P1457, vivify_520
    new $P1457, "Undef"
  vivify_520:
    $P1456."name"($P1457)
.annotate "line", 524
    new $P1458, "Integer"
    assign $P1458, 1
    find_lex $P1459, "$past"
    unless_null $P1459, vivify_521
    new $P1459, "Hash"
    store_lex "$past", $P1459
  vivify_521:
    set $P1459["aliased"], $P1458
.annotate "line", 521
    .return ($P1458)
  control_1442:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1460, exception, "payload"
    .return ($P1460)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1449"  :anon :subid("124_1256575582.72382") :outer("123_1256575582.72382")
.annotate "line", 522
    find_lex $P1451, "$name"
    unless_null $P1451, vivify_517
    new $P1451, "Undef"
  vivify_517:
    concat $P1452, $P1451, "="
    find_lex $P1453, "$past"
    unless_null $P1453, vivify_518
    new $P1453, "Undef"
  vivify_518:
    $S1454 = $P1453."name"()
    concat $P1455, $P1452, $S1454
    store_lex "$name", $P1455
    .return ($P1455)
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
