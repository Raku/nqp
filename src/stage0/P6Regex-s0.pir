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

    null parseactions
    $S0 = options['target']
    if $S0 == 'parse' goto have_parseactions
    parseactions = self.'parseactions'()
  have_parseactions:

    match = parsegrammar.'parse'(source, 'from'=>0, 'action'=>parseactions)
    unless match goto err_parsefail
    .return (match)

  err_parsefail:
    self.'panic'('Unable to parse source')
    .return (match)
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
    $P0 = getattribute self, '$!target'
    $I0 = can $P0, 'lineof'
    unless $I0 goto have_line
    message .= ' at line '
    $I0 = self.'pos'()
    $I0 = $P0.'lineof'($I0)
    inc $I0
    $S0 = $I0
    message .= $S0
  have_line:
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

.namespace []
.sub "_block11"  :anon :subid("10_1256765552.18122")
.annotate "line", 0
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
    $P472 = $P14()
.annotate "line", 1
    .return ($P472)
.end


.namespace []
.sub "" :load :init :subid("post151") :outer("10_1256765552.18122")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1256765552.18122" 
    .local pmc block
    set block, $P12
    $P473 = get_root_global ["parrot"], "P6metaclass"
    $P473."new_class"("Regex::P6Regex::Grammar", "Regex::Cursor" :named("parent"))
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block13"  :subid("11_1256765552.18122") :outer("10_1256765552.18122")
.annotate "line", 3
    .const 'Sub' $P465 = "149_1256765552.18122" 
    capture_lex $P465
    .const 'Sub' $P458 = "147_1256765552.18122" 
    capture_lex $P458
    .const 'Sub' $P451 = "145_1256765552.18122" 
    capture_lex $P451
    .const 'Sub' $P431 = "140_1256765552.18122" 
    capture_lex $P431
    .const 'Sub' $P397 = "134_1256765552.18122" 
    capture_lex $P397
    .const 'Sub' $P386 = "131_1256765552.18122" 
    capture_lex $P386
    .const 'Sub' $P374 = "128_1256765552.18122" 
    capture_lex $P374
    .const 'Sub' $P369 = "126_1256765552.18122" 
    capture_lex $P369
    .const 'Sub' $P359 = "123_1256765552.18122" 
    capture_lex $P359
    .const 'Sub' $P349 = "120_1256765552.18122" 
    capture_lex $P349
    .const 'Sub' $P341 = "116_1256765552.18122" 
    capture_lex $P341
    .const 'Sub' $P336 = "114_1256765552.18122" 
    capture_lex $P336
    .const 'Sub' $P331 = "112_1256765552.18122" 
    capture_lex $P331
    .const 'Sub' $P326 = "110_1256765552.18122" 
    capture_lex $P326
    .const 'Sub' $P321 = "108_1256765552.18122" 
    capture_lex $P321
    .const 'Sub' $P316 = "106_1256765552.18122" 
    capture_lex $P316
    .const 'Sub' $P311 = "104_1256765552.18122" 
    capture_lex $P311
    .const 'Sub' $P306 = "102_1256765552.18122" 
    capture_lex $P306
    .const 'Sub' $P301 = "100_1256765552.18122" 
    capture_lex $P301
    .const 'Sub' $P296 = "98_1256765552.18122" 
    capture_lex $P296
    .const 'Sub' $P291 = "96_1256765552.18122" 
    capture_lex $P291
    .const 'Sub' $P286 = "94_1256765552.18122" 
    capture_lex $P286
    .const 'Sub' $P281 = "92_1256765552.18122" 
    capture_lex $P281
    .const 'Sub' $P270 = "88_1256765552.18122" 
    capture_lex $P270
    .const 'Sub' $P259 = "86_1256765552.18122" 
    capture_lex $P259
    .const 'Sub' $P253 = "84_1256765552.18122" 
    capture_lex $P253
    .const 'Sub' $P237 = "82_1256765552.18122" 
    capture_lex $P237
    .const 'Sub' $P231 = "80_1256765552.18122" 
    capture_lex $P231
    .const 'Sub' $P226 = "78_1256765552.18122" 
    capture_lex $P226
    .const 'Sub' $P221 = "76_1256765552.18122" 
    capture_lex $P221
    .const 'Sub' $P215 = "74_1256765552.18122" 
    capture_lex $P215
    .const 'Sub' $P209 = "72_1256765552.18122" 
    capture_lex $P209
    .const 'Sub' $P204 = "70_1256765552.18122" 
    capture_lex $P204
    .const 'Sub' $P199 = "68_1256765552.18122" 
    capture_lex $P199
    .const 'Sub' $P194 = "66_1256765552.18122" 
    capture_lex $P194
    .const 'Sub' $P189 = "64_1256765552.18122" 
    capture_lex $P189
    .const 'Sub' $P184 = "62_1256765552.18122" 
    capture_lex $P184
    .const 'Sub' $P179 = "60_1256765552.18122" 
    capture_lex $P179
    .const 'Sub' $P174 = "58_1256765552.18122" 
    capture_lex $P174
    .const 'Sub' $P169 = "56_1256765552.18122" 
    capture_lex $P169
    .const 'Sub' $P164 = "54_1256765552.18122" 
    capture_lex $P164
    .const 'Sub' $P159 = "52_1256765552.18122" 
    capture_lex $P159
    .const 'Sub' $P154 = "50_1256765552.18122" 
    capture_lex $P154
    .const 'Sub' $P139 = "45_1256765552.18122" 
    capture_lex $P139
    .const 'Sub' $P128 = "43_1256765552.18122" 
    capture_lex $P128
    .const 'Sub' $P122 = "41_1256765552.18122" 
    capture_lex $P122
    .const 'Sub' $P116 = "39_1256765552.18122" 
    capture_lex $P116
    .const 'Sub' $P110 = "37_1256765552.18122" 
    capture_lex $P110
    .const 'Sub' $P92 = "32_1256765552.18122" 
    capture_lex $P92
    .const 'Sub' $P80 = "29_1256765552.18122" 
    capture_lex $P80
    .const 'Sub' $P74 = "27_1256765552.18122" 
    capture_lex $P74
    .const 'Sub' $P63 = "25_1256765552.18122" 
    capture_lex $P63
    .const 'Sub' $P57 = "23_1256765552.18122" 
    capture_lex $P57
    .const 'Sub' $P45 = "21_1256765552.18122" 
    capture_lex $P45
    .const 'Sub' $P38 = "19_1256765552.18122" 
    capture_lex $P38
    .const 'Sub' $P31 = "17_1256765552.18122" 
    capture_lex $P31
    .const 'Sub' $P22 = "14_1256765552.18122" 
    capture_lex $P22
    .const 'Sub' $P15 = "12_1256765552.18122" 
    capture_lex $P15
    .const 'Sub' $P465 = "149_1256765552.18122" 
    capture_lex $P465
    .return ($P465)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("12_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx16_tgt
    .local int rx16_pos
    .local int rx16_off
    .local int rx16_eos
    .local int rx16_rep
    .local pmc rx16_cur
    (rx16_cur, rx16_pos, rx16_tgt, $I10) = self."!cursor_start"()
    rx16_cur."!cursor_debug"("START ", "ws")
    .lex unicode:"$\x{a2}", rx16_cur
    length rx16_eos, rx16_tgt
    set rx16_off, 0
    lt $I10, 2, rx16_start
    sub rx16_off, $I10, 1
    substr rx16_tgt, rx16_tgt, rx16_off
  rx16_start:
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


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :subid("13_1256765552.18122") :method
.annotate "line", 3
    new $P18, "ResizablePMCArray"
    push $P18, ""
    .return ($P18)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("14_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .const 'Sub' $P27 = "16_1256765552.18122" 
    capture_lex $P27
    .local string rx23_tgt
    .local int rx23_pos
    .local int rx23_off
    .local int rx23_eos
    .local int rx23_rep
    .local pmc rx23_cur
    (rx23_cur, rx23_pos, rx23_tgt, $I10) = self."!cursor_start"()
    rx23_cur."!cursor_debug"("START ", "normspace")
    .lex unicode:"$\x{a2}", rx23_cur
    length rx23_eos, rx23_tgt
    set rx23_off, 0
    lt $I10, 2, rx23_start
    sub rx23_off, $I10, 1
    substr rx23_tgt, rx23_tgt, rx23_off
  rx23_start:
.annotate "line", 5
  # rx subrule "before" subtype=zerowidth negate=
    rx23_cur."!cursor_pos"(rx23_pos)
    .const 'Sub' $P27 = "16_1256765552.18122" 
    capture_lex $P27
    $P10 = rx23_cur."before"($P27)
    unless $P10, rx23_fail
  # rx subrule "ws" subtype=method negate=
    rx23_cur."!cursor_pos"(rx23_pos)
    $P10 = rx23_cur."ws"()
    unless $P10, rx23_fail
    rx23_pos = $P10."pos"()
  # rx pass
    rx23_cur."!cursor_pass"(rx23_pos, "normspace")
    rx23_cur."!cursor_debug"("PASS  ", "normspace", " at pos=", rx23_pos)
    .return (rx23_cur)
  rx23_fail:
.annotate "line", 3
    (rx23_rep, rx23_pos, $I10, $P10) = rx23_cur."!mark_fail"(0)
    lt rx23_pos, -1, rx23_done
    eq rx23_pos, -1, rx23_fail
    jump $I10
  rx23_done:
    rx23_cur."!cursor_fail"()
    rx23_cur."!cursor_debug"("FAIL  ", "normspace")
    .return (rx23_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :subid("15_1256765552.18122") :method
.annotate "line", 3
    new $P25, "ResizablePMCArray"
    push $P25, ""
    .return ($P25)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block26"  :anon :subid("16_1256765552.18122") :method :outer("14_1256765552.18122")
.annotate "line", 5
    .local string rx28_tgt
    .local int rx28_pos
    .local int rx28_off
    .local int rx28_eos
    .local int rx28_rep
    .local pmc rx28_cur
    (rx28_cur, rx28_pos, rx28_tgt, $I10) = self."!cursor_start"()
    rx28_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx28_cur
    length rx28_eos, rx28_tgt
    set rx28_off, 0
    lt $I10, 2, rx28_start
    sub rx28_off, $I10, 1
    substr rx28_tgt, rx28_tgt, rx28_off
  rx28_start:
    ge rx28_pos, 0, rxscan29_done
  rxscan29_loop:
    ($P10) = rx28_cur."from"()
    inc $P10
    set rx28_pos, $P10
    ge rx28_pos, rx28_eos, rxscan29_done
    set_addr $I10, rxscan29_loop
    rx28_cur."!mark_push"(0, rx28_pos, $I10)
  rxscan29_done:
  alt30_0:
    set_addr $I10, alt30_1
    rx28_cur."!mark_push"(0, rx28_pos, $I10)
  # rx charclass s
    ge rx28_pos, rx28_eos, rx28_fail
    sub $I10, rx28_pos, rx28_off
    is_cclass $I11, 32, rx28_tgt, $I10
    unless $I11, rx28_fail
    inc rx28_pos
    goto alt30_end
  alt30_1:
  # rx literal  "#"
    add $I11, rx28_pos, 1
    gt $I11, rx28_eos, rx28_fail
    sub $I11, rx28_pos, rx28_off
    substr $S10, rx28_tgt, $I11, 1
    ne $S10, "#", rx28_fail
    add rx28_pos, 1
  alt30_end:
  # rx pass
    rx28_cur."!cursor_pass"(rx28_pos, "")
    rx28_cur."!cursor_debug"("PASS  ", "", " at pos=", rx28_pos)
    .return (rx28_cur)
  rx28_fail:
    (rx28_rep, rx28_pos, $I10, $P10) = rx28_cur."!mark_fail"(0)
    lt rx28_pos, -1, rx28_done
    eq rx28_pos, -1, rx28_fail
    jump $I10
  rx28_done:
    rx28_cur."!cursor_fail"()
    rx28_cur."!cursor_debug"("FAIL  ", "")
    .return (rx28_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quote"  :subid("17_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx32_tgt
    .local int rx32_pos
    .local int rx32_off
    .local int rx32_eos
    .local int rx32_rep
    .local pmc rx32_cur
    (rx32_cur, rx32_pos, rx32_tgt, $I10) = self."!cursor_start"()
    rx32_cur."!cursor_debug"("START ", "quote")
    .lex unicode:"$\x{a2}", rx32_cur
    length rx32_eos, rx32_tgt
    set rx32_off, 0
    lt $I10, 2, rx32_start
    sub rx32_off, $I10, 1
    substr rx32_tgt, rx32_tgt, rx32_off
  rx32_start:
.annotate "line", 7
  # rx literal  "'"
    add $I11, rx32_pos, 1
    gt $I11, rx32_eos, rx32_fail
    sub $I11, rx32_pos, rx32_off
    substr $S10, rx32_tgt, $I11, 1
    ne $S10, "'", rx32_fail
    add rx32_pos, 1
  # rx subcapture "val"
    set_addr $I10, rxcap_37_fail
    rx32_cur."!mark_push"(0, rx32_pos, $I10)
  # rx rxquantr35 ** 0..*
    set_addr $I36, rxquantr35_done
    rx32_cur."!mark_push"(0, rx32_pos, $I36)
  rxquantr35_loop:
  # rx enumcharlist negate=1 
    ge rx32_pos, rx32_eos, rx32_fail
    sub $I10, rx32_pos, rx32_off
    substr $S10, rx32_tgt, $I10, 1
    index $I11, "'", $S10
    ge $I11, 0, rx32_fail
    inc rx32_pos
    (rx32_rep) = rx32_cur."!mark_commit"($I36)
    rx32_cur."!mark_push"(rx32_rep, rx32_pos, $I36)
    goto rxquantr35_loop
  rxquantr35_done:
    set_addr $I10, rxcap_37_fail
    ($I12, $I11) = rx32_cur."!mark_peek"($I10)
    rx32_cur."!cursor_pos"($I11)
    ($P10) = rx32_cur."!cursor_start"()
    $P10."!cursor_pass"(rx32_pos, "")
    rx32_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_37_done
  rxcap_37_fail:
    goto rx32_fail
  rxcap_37_done:
  # rx literal  "'"
    add $I11, rx32_pos, 1
    gt $I11, rx32_eos, rx32_fail
    sub $I11, rx32_pos, rx32_off
    substr $S10, rx32_tgt, $I11, 1
    ne $S10, "'", rx32_fail
    add rx32_pos, 1
  # rx pass
    rx32_cur."!cursor_pass"(rx32_pos, "quote")
    rx32_cur."!cursor_debug"("PASS  ", "quote", " at pos=", rx32_pos)
    .return (rx32_cur)
  rx32_fail:
.annotate "line", 3
    (rx32_rep, rx32_pos, $I10, $P10) = rx32_cur."!mark_fail"(0)
    lt rx32_pos, -1, rx32_done
    eq rx32_pos, -1, rx32_fail
    jump $I10
  rx32_done:
    rx32_cur."!cursor_fail"()
    rx32_cur."!cursor_debug"("FAIL  ", "quote")
    .return (rx32_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quote"  :subid("18_1256765552.18122") :method
.annotate "line", 3
    new $P34, "ResizablePMCArray"
    push $P34, "'"
    .return ($P34)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("19_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx39_tgt
    .local int rx39_pos
    .local int rx39_off
    .local int rx39_eos
    .local int rx39_rep
    .local pmc rx39_cur
    (rx39_cur, rx39_pos, rx39_tgt, $I10) = self."!cursor_start"()
    rx39_cur."!cursor_debug"("START ", "arg")
    .lex unicode:"$\x{a2}", rx39_cur
    length rx39_eos, rx39_tgt
    set rx39_off, 0
    lt $I10, 2, rx39_start
    sub rx39_off, $I10, 1
    substr rx39_tgt, rx39_tgt, rx39_off
  rx39_start:
  alt43_0:
.annotate "line", 10
    set_addr $I10, alt43_1
    rx39_cur."!mark_push"(0, rx39_pos, $I10)
.annotate "line", 11
  # rx subrule "quote" subtype=capture negate=
    rx39_cur."!cursor_pos"(rx39_pos)
    $P10 = rx39_cur."quote"()
    unless $P10, rx39_fail
    rx39_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx39_pos = $P10."pos"()
    goto alt43_end
  alt43_1:
.annotate "line", 12
  # rx subcapture "value"
    set_addr $I10, rxcap_44_fail
    rx39_cur."!mark_push"(0, rx39_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx39_pos, rx39_off
    find_not_cclass $I11, 8, rx39_tgt, $I10, rx39_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx39_fail
    add rx39_pos, rx39_off, $I11
    set_addr $I10, rxcap_44_fail
    ($I12, $I11) = rx39_cur."!mark_peek"($I10)
    rx39_cur."!cursor_pos"($I11)
    ($P10) = rx39_cur."!cursor_start"()
    $P10."!cursor_pass"(rx39_pos, "")
    rx39_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    goto rxcap_44_done
  rxcap_44_fail:
    goto rx39_fail
  rxcap_44_done:
  alt43_end:
.annotate "line", 9
  # rx pass
    rx39_cur."!cursor_pass"(rx39_pos, "arg")
    rx39_cur."!cursor_debug"("PASS  ", "arg", " at pos=", rx39_pos)
    .return (rx39_cur)
  rx39_fail:
.annotate "line", 3
    (rx39_rep, rx39_pos, $I10, $P10) = rx39_cur."!mark_fail"(0)
    lt rx39_pos, -1, rx39_done
    eq rx39_pos, -1, rx39_fail
    jump $I10
  rx39_done:
    rx39_cur."!cursor_fail"()
    rx39_cur."!cursor_debug"("FAIL  ", "arg")
    .return (rx39_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :subid("20_1256765552.18122") :method
.annotate "line", 3
    $P41 = self."!PREFIX__!subrule"("quote", "")
    new $P42, "ResizablePMCArray"
    push $P42, ""
    push $P42, $P41
    .return ($P42)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("21_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx46_tgt
    .local int rx46_pos
    .local int rx46_off
    .local int rx46_eos
    .local int rx46_rep
    .local pmc rx46_cur
    (rx46_cur, rx46_pos, rx46_tgt, $I10) = self."!cursor_start"()
    rx46_cur."!cursor_debug"("START ", "arglist")
    rx46_cur."!cursor_caparray"("arg")
    .lex unicode:"$\x{a2}", rx46_cur
    length rx46_eos, rx46_tgt
    set rx46_off, 0
    lt $I10, 2, rx46_start
    sub rx46_off, $I10, 1
    substr rx46_tgt, rx46_tgt, rx46_off
  rx46_start:
.annotate "line", 16
  # rx subrule "ws" subtype=method negate=
    rx46_cur."!cursor_pos"(rx46_pos)
    $P10 = rx46_cur."ws"()
    unless $P10, rx46_fail
    rx46_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx46_cur."!cursor_pos"(rx46_pos)
    $P10 = rx46_cur."arg"()
    unless $P10, rx46_fail
    rx46_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx46_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx46_cur."!cursor_pos"(rx46_pos)
    $P10 = rx46_cur."ws"()
    unless $P10, rx46_fail
    rx46_pos = $P10."pos"()
  # rx rxquantr51 ** 0..*
    set_addr $I55, rxquantr51_done
    rx46_cur."!mark_push"(0, rx46_pos, $I55)
  rxquantr51_loop:
  # rx subrule "ws" subtype=method negate=
    rx46_cur."!cursor_pos"(rx46_pos)
    $P10 = rx46_cur."ws"()
    unless $P10, rx46_fail
    rx46_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx46_pos, 1
    gt $I11, rx46_eos, rx46_fail
    sub $I11, rx46_pos, rx46_off
    substr $S10, rx46_tgt, $I11, 1
    ne $S10, ",", rx46_fail
    add rx46_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx46_cur."!cursor_pos"(rx46_pos)
    $P10 = rx46_cur."ws"()
    unless $P10, rx46_fail
    rx46_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx46_cur."!cursor_pos"(rx46_pos)
    $P10 = rx46_cur."arg"()
    unless $P10, rx46_fail
    rx46_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx46_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx46_cur."!cursor_pos"(rx46_pos)
    $P10 = rx46_cur."ws"()
    unless $P10, rx46_fail
    rx46_pos = $P10."pos"()
    (rx46_rep) = rx46_cur."!mark_commit"($I55)
    rx46_cur."!mark_push"(rx46_rep, rx46_pos, $I55)
    goto rxquantr51_loop
  rxquantr51_done:
  # rx subrule "ws" subtype=method negate=
    rx46_cur."!cursor_pos"(rx46_pos)
    $P10 = rx46_cur."ws"()
    unless $P10, rx46_fail
    rx46_pos = $P10."pos"()
  # rx pass
    rx46_cur."!cursor_pass"(rx46_pos, "arglist")
    rx46_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx46_pos)
    .return (rx46_cur)
  rx46_fail:
.annotate "line", 3
    (rx46_rep, rx46_pos, $I10, $P10) = rx46_cur."!mark_fail"(0)
    lt rx46_pos, -1, rx46_done
    eq rx46_pos, -1, rx46_fail
    jump $I10
  rx46_done:
    rx46_cur."!cursor_fail"()
    rx46_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx46_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :subid("22_1256765552.18122") :method
.annotate "line", 3
    new $P48, "ResizablePMCArray"
    push $P48, ""
    .return ($P48)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("23_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx58_tgt
    .local int rx58_pos
    .local int rx58_off
    .local int rx58_eos
    .local int rx58_rep
    .local pmc rx58_cur
    (rx58_cur, rx58_pos, rx58_tgt, $I10) = self."!cursor_start"()
    rx58_cur."!cursor_debug"("START ", "TOP")
    .lex unicode:"$\x{a2}", rx58_cur
    length rx58_eos, rx58_tgt
    set rx58_off, 0
    lt $I10, 2, rx58_start
    sub rx58_off, $I10, 1
    substr rx58_tgt, rx58_tgt, rx58_off
  rx58_start:
.annotate "line", 19
  # rx subrule "nibbler" subtype=capture negate=
    rx58_cur."!cursor_pos"(rx58_pos)
    $P10 = rx58_cur."nibbler"()
    unless $P10, rx58_fail
    rx58_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx58_pos = $P10."pos"()
  alt62_0:
.annotate "line", 20
    set_addr $I10, alt62_1
    rx58_cur."!mark_push"(0, rx58_pos, $I10)
  # rxanchor eos
    ne rx58_pos, rx58_eos, rx58_fail
    goto alt62_end
  alt62_1:
  # rx subrule "panic" subtype=method negate=
    rx58_cur."!cursor_pos"(rx58_pos)
    $P10 = rx58_cur."panic"("Confused")
    unless $P10, rx58_fail
    rx58_pos = $P10."pos"()
  alt62_end:
.annotate "line", 18
  # rx pass
    rx58_cur."!cursor_pass"(rx58_pos, "TOP")
    rx58_cur."!cursor_debug"("PASS  ", "TOP", " at pos=", rx58_pos)
    .return (rx58_cur)
  rx58_fail:
.annotate "line", 3
    (rx58_rep, rx58_pos, $I10, $P10) = rx58_cur."!mark_fail"(0)
    lt rx58_pos, -1, rx58_done
    eq rx58_pos, -1, rx58_fail
    jump $I10
  rx58_done:
    rx58_cur."!cursor_fail"()
    rx58_cur."!cursor_debug"("FAIL  ", "TOP")
    .return (rx58_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :subid("24_1256765552.18122") :method
.annotate "line", 3
    $P60 = self."!PREFIX__!subrule"("nibbler", "")
    new $P61, "ResizablePMCArray"
    push $P61, $P60
    .return ($P61)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("25_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx64_tgt
    .local int rx64_pos
    .local int rx64_off
    .local int rx64_eos
    .local int rx64_rep
    .local pmc rx64_cur
    (rx64_cur, rx64_pos, rx64_tgt, $I10) = self."!cursor_start"()
    rx64_cur."!cursor_debug"("START ", "nibbler")
    rx64_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx64_cur
    length rx64_eos, rx64_tgt
    set rx64_off, 0
    lt $I10, 2, rx64_start
    sub rx64_off, $I10, 1
    substr rx64_tgt, rx64_tgt, rx64_off
  rx64_start:
.annotate "line", 24
  # rx reduce name="nibbler" key="open"
    rx64_cur."!cursor_pos"(rx64_pos)
    rx64_cur."!reduce"("nibbler", "open")
.annotate "line", 25
  # rx rxquantr67 ** 0..1
    set_addr $I69, rxquantr67_done
    rx64_cur."!mark_push"(0, rx64_pos, $I69)
  rxquantr67_loop:
  # rx subrule "ws" subtype=method negate=
    rx64_cur."!cursor_pos"(rx64_pos)
    $P10 = rx64_cur."ws"()
    unless $P10, rx64_fail
    rx64_pos = $P10."pos"()
  alt68_0:
    set_addr $I10, alt68_1
    rx64_cur."!mark_push"(0, rx64_pos, $I10)
  # rx literal  "||"
    add $I11, rx64_pos, 2
    gt $I11, rx64_eos, rx64_fail
    sub $I11, rx64_pos, rx64_off
    substr $S10, rx64_tgt, $I11, 2
    ne $S10, "||", rx64_fail
    add rx64_pos, 2
    goto alt68_end
  alt68_1:
    set_addr $I10, alt68_2
    rx64_cur."!mark_push"(0, rx64_pos, $I10)
  # rx literal  "|"
    add $I11, rx64_pos, 1
    gt $I11, rx64_eos, rx64_fail
    sub $I11, rx64_pos, rx64_off
    substr $S10, rx64_tgt, $I11, 1
    ne $S10, "|", rx64_fail
    add rx64_pos, 1
    goto alt68_end
  alt68_2:
    set_addr $I10, alt68_3
    rx64_cur."!mark_push"(0, rx64_pos, $I10)
  # rx literal  "&&"
    add $I11, rx64_pos, 2
    gt $I11, rx64_eos, rx64_fail
    sub $I11, rx64_pos, rx64_off
    substr $S10, rx64_tgt, $I11, 2
    ne $S10, "&&", rx64_fail
    add rx64_pos, 2
    goto alt68_end
  alt68_3:
  # rx literal  "&"
    add $I11, rx64_pos, 1
    gt $I11, rx64_eos, rx64_fail
    sub $I11, rx64_pos, rx64_off
    substr $S10, rx64_tgt, $I11, 1
    ne $S10, "&", rx64_fail
    add rx64_pos, 1
  alt68_end:
    (rx64_rep) = rx64_cur."!mark_commit"($I69)
  rxquantr67_done:
.annotate "line", 26
  # rx subrule "termish" subtype=capture negate=
    rx64_cur."!cursor_pos"(rx64_pos)
    $P10 = rx64_cur."termish"()
    unless $P10, rx64_fail
    rx64_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx64_pos = $P10."pos"()
.annotate "line", 29
  # rx rxquantr70 ** 0..*
    set_addr $I73, rxquantr70_done
    rx64_cur."!mark_push"(0, rx64_pos, $I73)
  rxquantr70_loop:
  alt71_0:
.annotate "line", 27
    set_addr $I10, alt71_1
    rx64_cur."!mark_push"(0, rx64_pos, $I10)
  # rx literal  "||"
    add $I11, rx64_pos, 2
    gt $I11, rx64_eos, rx64_fail
    sub $I11, rx64_pos, rx64_off
    substr $S10, rx64_tgt, $I11, 2
    ne $S10, "||", rx64_fail
    add rx64_pos, 2
    goto alt71_end
  alt71_1:
  # rx literal  "|"
    add $I11, rx64_pos, 1
    gt $I11, rx64_eos, rx64_fail
    sub $I11, rx64_pos, rx64_off
    substr $S10, rx64_tgt, $I11, 1
    ne $S10, "|", rx64_fail
    add rx64_pos, 1
  alt71_end:
  alt72_0:
.annotate "line", 28
    set_addr $I10, alt72_1
    rx64_cur."!mark_push"(0, rx64_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx64_cur."!cursor_pos"(rx64_pos)
    $P10 = rx64_cur."termish"()
    unless $P10, rx64_fail
    rx64_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx64_pos = $P10."pos"()
    goto alt72_end
  alt72_1:
  # rx subrule "panic" subtype=method negate=
    rx64_cur."!cursor_pos"(rx64_pos)
    $P10 = rx64_cur."panic"("Null pattern not allowed")
    unless $P10, rx64_fail
    rx64_pos = $P10."pos"()
  alt72_end:
.annotate "line", 29
    (rx64_rep) = rx64_cur."!mark_commit"($I73)
    rx64_cur."!mark_push"(rx64_rep, rx64_pos, $I73)
    goto rxquantr70_loop
  rxquantr70_done:
.annotate "line", 23
  # rx pass
    rx64_cur."!cursor_pass"(rx64_pos, "nibbler")
    rx64_cur."!cursor_debug"("PASS  ", "nibbler", " at pos=", rx64_pos)
    .return (rx64_cur)
  rx64_fail:
.annotate "line", 3
    (rx64_rep, rx64_pos, $I10, $P10) = rx64_cur."!mark_fail"(0)
    lt rx64_pos, -1, rx64_done
    eq rx64_pos, -1, rx64_fail
    jump $I10
  rx64_done:
    rx64_cur."!cursor_fail"()
    rx64_cur."!cursor_debug"("FAIL  ", "nibbler")
    .return (rx64_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :subid("26_1256765552.18122") :method
.annotate "line", 3
    new $P66, "ResizablePMCArray"
    push $P66, ""
    .return ($P66)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("27_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx75_tgt
    .local int rx75_pos
    .local int rx75_off
    .local int rx75_eos
    .local int rx75_rep
    .local pmc rx75_cur
    (rx75_cur, rx75_pos, rx75_tgt, $I10) = self."!cursor_start"()
    rx75_cur."!cursor_debug"("START ", "termish")
    rx75_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx75_cur
    length rx75_eos, rx75_tgt
    set rx75_off, 0
    lt $I10, 2, rx75_start
    sub rx75_off, $I10, 1
    substr rx75_tgt, rx75_tgt, rx75_off
  rx75_start:
.annotate "line", 33
  # rx rxquantr78 ** 1..*
    set_addr $I79, rxquantr78_done
    rx75_cur."!mark_push"(0, -1, $I79)
  rxquantr78_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."quantified_atom"()
    unless $P10, rx75_fail
    rx75_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("noun")
    rx75_pos = $P10."pos"()
    (rx75_rep) = rx75_cur."!mark_commit"($I79)
    rx75_cur."!mark_push"(rx75_rep, rx75_pos, $I79)
    goto rxquantr78_loop
  rxquantr78_done:
.annotate "line", 32
  # rx pass
    rx75_cur."!cursor_pass"(rx75_pos, "termish")
    rx75_cur."!cursor_debug"("PASS  ", "termish", " at pos=", rx75_pos)
    .return (rx75_cur)
  rx75_fail:
.annotate "line", 3
    (rx75_rep, rx75_pos, $I10, $P10) = rx75_cur."!mark_fail"(0)
    lt rx75_pos, -1, rx75_done
    eq rx75_pos, -1, rx75_fail
    jump $I10
  rx75_done:
    rx75_cur."!cursor_fail"()
    rx75_cur."!cursor_debug"("FAIL  ", "termish")
    .return (rx75_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :subid("28_1256765552.18122") :method
.annotate "line", 3
    new $P77, "ResizablePMCArray"
    push $P77, ""
    .return ($P77)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("29_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .const 'Sub' $P88 = "31_1256765552.18122" 
    capture_lex $P88
    .local string rx81_tgt
    .local int rx81_pos
    .local int rx81_off
    .local int rx81_eos
    .local int rx81_rep
    .local pmc rx81_cur
    (rx81_cur, rx81_pos, rx81_tgt, $I10) = self."!cursor_start"()
    rx81_cur."!cursor_debug"("START ", "quantified_atom")
    rx81_cur."!cursor_caparray"("quantifier", "backmod")
    .lex unicode:"$\x{a2}", rx81_cur
    length rx81_eos, rx81_tgt
    set rx81_off, 0
    lt $I10, 2, rx81_start
    sub rx81_off, $I10, 1
    substr rx81_tgt, rx81_tgt, rx81_off
  rx81_start:
.annotate "line", 37
  # rx subrule "atom" subtype=capture negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."atom"()
    unless $P10, rx81_fail
    rx81_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx81_pos = $P10."pos"()
  # rx rxquantr85 ** 0..1
    set_addr $I91, rxquantr85_done
    rx81_cur."!mark_push"(0, rx81_pos, $I91)
  rxquantr85_loop:
  # rx subrule "ws" subtype=method negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."ws"()
    unless $P10, rx81_fail
    rx81_pos = $P10."pos"()
  alt86_0:
    set_addr $I10, alt86_1
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."quantifier"()
    unless $P10, rx81_fail
    rx81_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx81_pos = $P10."pos"()
    goto alt86_end
  alt86_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    .const 'Sub' $P88 = "31_1256765552.18122" 
    capture_lex $P88
    $P10 = rx81_cur."before"($P88)
    unless $P10, rx81_fail
  # rx subrule "backmod" subtype=capture negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."backmod"()
    unless $P10, rx81_fail
    rx81_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx81_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."alpha"()
    if $P10, rx81_fail
  alt86_end:
    (rx81_rep) = rx81_cur."!mark_commit"($I91)
  rxquantr85_done:
.annotate "line", 36
  # rx pass
    rx81_cur."!cursor_pass"(rx81_pos, "quantified_atom")
    rx81_cur."!cursor_debug"("PASS  ", "quantified_atom", " at pos=", rx81_pos)
    .return (rx81_cur)
  rx81_fail:
.annotate "line", 3
    (rx81_rep, rx81_pos, $I10, $P10) = rx81_cur."!mark_fail"(0)
    lt rx81_pos, -1, rx81_done
    eq rx81_pos, -1, rx81_fail
    jump $I10
  rx81_done:
    rx81_cur."!cursor_fail"()
    rx81_cur."!cursor_debug"("FAIL  ", "quantified_atom")
    .return (rx81_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :subid("30_1256765552.18122") :method
.annotate "line", 3
    $P83 = self."!PREFIX__!subrule"("atom", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block87"  :anon :subid("31_1256765552.18122") :method :outer("29_1256765552.18122")
.annotate "line", 37
    .local string rx89_tgt
    .local int rx89_pos
    .local int rx89_off
    .local int rx89_eos
    .local int rx89_rep
    .local pmc rx89_cur
    (rx89_cur, rx89_pos, rx89_tgt, $I10) = self."!cursor_start"()
    rx89_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx89_cur
    length rx89_eos, rx89_tgt
    set rx89_off, 0
    lt $I10, 2, rx89_start
    sub rx89_off, $I10, 1
    substr rx89_tgt, rx89_tgt, rx89_off
  rx89_start:
    ge rx89_pos, 0, rxscan90_done
  rxscan90_loop:
    ($P10) = rx89_cur."from"()
    inc $P10
    set rx89_pos, $P10
    ge rx89_pos, rx89_eos, rxscan90_done
    set_addr $I10, rxscan90_loop
    rx89_cur."!mark_push"(0, rx89_pos, $I10)
  rxscan90_done:
  # rx literal  ":"
    add $I11, rx89_pos, 1
    gt $I11, rx89_eos, rx89_fail
    sub $I11, rx89_pos, rx89_off
    substr $S10, rx89_tgt, $I11, 1
    ne $S10, ":", rx89_fail
    add rx89_pos, 1
  # rx pass
    rx89_cur."!cursor_pass"(rx89_pos, "")
    rx89_cur."!cursor_debug"("PASS  ", "", " at pos=", rx89_pos)
    .return (rx89_cur)
  rx89_fail:
    (rx89_rep, rx89_pos, $I10, $P10) = rx89_cur."!mark_fail"(0)
    lt rx89_pos, -1, rx89_done
    eq rx89_pos, -1, rx89_fail
    jump $I10
  rx89_done:
    rx89_cur."!cursor_fail"()
    rx89_cur."!cursor_debug"("FAIL  ", "")
    .return (rx89_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("32_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .const 'Sub' $P102 = "34_1256765552.18122" 
    capture_lex $P102
    .local string rx93_tgt
    .local int rx93_pos
    .local int rx93_off
    .local int rx93_eos
    .local int rx93_rep
    .local pmc rx93_cur
    (rx93_cur, rx93_pos, rx93_tgt, $I10) = self."!cursor_start"()
    rx93_cur."!cursor_debug"("START ", "atom")
    .lex unicode:"$\x{a2}", rx93_cur
    length rx93_eos, rx93_tgt
    set rx93_off, 0
    lt $I10, 2, rx93_start
    sub rx93_off, $I10, 1
    substr rx93_tgt, rx93_tgt, rx93_off
  rx93_start:
  alt97_0:
.annotate "line", 42
    set_addr $I10, alt97_1
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
.annotate "line", 43
  # rx charclass w
    ge rx93_pos, rx93_eos, rx93_fail
    sub $I10, rx93_pos, rx93_off
    is_cclass $I11, 8192, rx93_tgt, $I10
    unless $I11, rx93_fail
    inc rx93_pos
  # rx rxquantr98 ** 0..1
    set_addr $I105, rxquantr98_done
    rx93_cur."!mark_push"(0, rx93_pos, $I105)
  rxquantr98_loop:
  # rx rxquantg99 ** 1..*
    set_addr $I100, rxquantg99_done
  rxquantg99_loop:
  # rx charclass w
    ge rx93_pos, rx93_eos, rx93_fail
    sub $I10, rx93_pos, rx93_off
    is_cclass $I11, 8192, rx93_tgt, $I10
    unless $I11, rx93_fail
    inc rx93_pos
    rx93_cur."!mark_push"(rx93_rep, rx93_pos, $I100)
    goto rxquantg99_loop
  rxquantg99_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    .const 'Sub' $P102 = "34_1256765552.18122" 
    capture_lex $P102
    $P10 = rx93_cur."before"($P102)
    unless $P10, rx93_fail
    (rx93_rep) = rx93_cur."!mark_commit"($I105)
  rxquantr98_done:
    goto alt97_end
  alt97_1:
.annotate "line", 44
  # rx subrule "metachar" subtype=capture negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."metachar"()
    unless $P10, rx93_fail
    rx93_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx93_pos = $P10."pos"()
  alt97_end:
.annotate "line", 40
  # rx pass
    rx93_cur."!cursor_pass"(rx93_pos, "atom")
    rx93_cur."!cursor_debug"("PASS  ", "atom", " at pos=", rx93_pos)
    .return (rx93_cur)
  rx93_fail:
.annotate "line", 3
    (rx93_rep, rx93_pos, $I10, $P10) = rx93_cur."!mark_fail"(0)
    lt rx93_pos, -1, rx93_done
    eq rx93_pos, -1, rx93_fail
    jump $I10
  rx93_done:
    rx93_cur."!cursor_fail"()
    rx93_cur."!cursor_debug"("FAIL  ", "atom")
    .return (rx93_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :subid("33_1256765552.18122") :method
.annotate "line", 3
    $P95 = self."!PREFIX__!subrule"("metachar", "")
    new $P96, "ResizablePMCArray"
    push $P96, $P95
    push $P96, ""
    .return ($P96)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block101"  :anon :subid("34_1256765552.18122") :method :outer("32_1256765552.18122")
.annotate "line", 43
    .local string rx103_tgt
    .local int rx103_pos
    .local int rx103_off
    .local int rx103_eos
    .local int rx103_rep
    .local pmc rx103_cur
    (rx103_cur, rx103_pos, rx103_tgt, $I10) = self."!cursor_start"()
    rx103_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx103_cur
    length rx103_eos, rx103_tgt
    set rx103_off, 0
    lt $I10, 2, rx103_start
    sub rx103_off, $I10, 1
    substr rx103_tgt, rx103_tgt, rx103_off
  rx103_start:
    ge rx103_pos, 0, rxscan104_done
  rxscan104_loop:
    ($P10) = rx103_cur."from"()
    inc $P10
    set rx103_pos, $P10
    ge rx103_pos, rx103_eos, rxscan104_done
    set_addr $I10, rxscan104_loop
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  rxscan104_done:
  # rx charclass w
    ge rx103_pos, rx103_eos, rx103_fail
    sub $I10, rx103_pos, rx103_off
    is_cclass $I11, 8192, rx103_tgt, $I10
    unless $I11, rx103_fail
    inc rx103_pos
  # rx pass
    rx103_cur."!cursor_pass"(rx103_pos, "")
    rx103_cur."!cursor_debug"("PASS  ", "", " at pos=", rx103_pos)
    .return (rx103_cur)
  rx103_fail:
    (rx103_rep, rx103_pos, $I10, $P10) = rx103_cur."!mark_fail"(0)
    lt rx103_pos, -1, rx103_done
    eq rx103_pos, -1, rx103_fail
    jump $I10
  rx103_done:
    rx103_cur."!cursor_fail"()
    rx103_cur."!cursor_debug"("FAIL  ", "")
    .return (rx103_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("35_1256765552.18122") :method
.annotate "line", 48
    $P107 = self."!protoregex"("quantifier")
    .return ($P107)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("36_1256765552.18122") :method
.annotate "line", 48
    $P109 = self."!PREFIX__!protoregex"("quantifier")
    .return ($P109)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("37_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx111_tgt
    .local int rx111_pos
    .local int rx111_off
    .local int rx111_eos
    .local int rx111_rep
    .local pmc rx111_cur
    (rx111_cur, rx111_pos, rx111_tgt, $I10) = self."!cursor_start"()
    rx111_cur."!cursor_debug"("START ", "quantifier:sym<*>")
    .lex unicode:"$\x{a2}", rx111_cur
    length rx111_eos, rx111_tgt
    set rx111_off, 0
    lt $I10, 2, rx111_start
    sub rx111_off, $I10, 1
    substr rx111_tgt, rx111_tgt, rx111_off
  rx111_start:
.annotate "line", 49
  # rx subcapture "sym"
    set_addr $I10, rxcap_115_fail
    rx111_cur."!mark_push"(0, rx111_pos, $I10)
  # rx literal  "*"
    add $I11, rx111_pos, 1
    gt $I11, rx111_eos, rx111_fail
    sub $I11, rx111_pos, rx111_off
    substr $S10, rx111_tgt, $I11, 1
    ne $S10, "*", rx111_fail
    add rx111_pos, 1
    set_addr $I10, rxcap_115_fail
    ($I12, $I11) = rx111_cur."!mark_peek"($I10)
    rx111_cur."!cursor_pos"($I11)
    ($P10) = rx111_cur."!cursor_start"()
    $P10."!cursor_pass"(rx111_pos, "")
    rx111_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_115_done
  rxcap_115_fail:
    goto rx111_fail
  rxcap_115_done:
  # rx subrule "backmod" subtype=capture negate=
    rx111_cur."!cursor_pos"(rx111_pos)
    $P10 = rx111_cur."backmod"()
    unless $P10, rx111_fail
    rx111_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx111_pos = $P10."pos"()
  # rx pass
    rx111_cur."!cursor_pass"(rx111_pos, "quantifier:sym<*>")
    rx111_cur."!cursor_debug"("PASS  ", "quantifier:sym<*>", " at pos=", rx111_pos)
    .return (rx111_cur)
  rx111_fail:
.annotate "line", 3
    (rx111_rep, rx111_pos, $I10, $P10) = rx111_cur."!mark_fail"(0)
    lt rx111_pos, -1, rx111_done
    eq rx111_pos, -1, rx111_fail
    jump $I10
  rx111_done:
    rx111_cur."!cursor_fail"()
    rx111_cur."!cursor_debug"("FAIL  ", "quantifier:sym<*>")
    .return (rx111_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :subid("38_1256765552.18122") :method
.annotate "line", 3
    $P113 = self."!PREFIX__!subrule"("backmod", "*")
    new $P114, "ResizablePMCArray"
    push $P114, $P113
    .return ($P114)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("39_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx117_tgt
    .local int rx117_pos
    .local int rx117_off
    .local int rx117_eos
    .local int rx117_rep
    .local pmc rx117_cur
    (rx117_cur, rx117_pos, rx117_tgt, $I10) = self."!cursor_start"()
    rx117_cur."!cursor_debug"("START ", "quantifier:sym<+>")
    .lex unicode:"$\x{a2}", rx117_cur
    length rx117_eos, rx117_tgt
    set rx117_off, 0
    lt $I10, 2, rx117_start
    sub rx117_off, $I10, 1
    substr rx117_tgt, rx117_tgt, rx117_off
  rx117_start:
.annotate "line", 50
  # rx subcapture "sym"
    set_addr $I10, rxcap_121_fail
    rx117_cur."!mark_push"(0, rx117_pos, $I10)
  # rx literal  "+"
    add $I11, rx117_pos, 1
    gt $I11, rx117_eos, rx117_fail
    sub $I11, rx117_pos, rx117_off
    substr $S10, rx117_tgt, $I11, 1
    ne $S10, "+", rx117_fail
    add rx117_pos, 1
    set_addr $I10, rxcap_121_fail
    ($I12, $I11) = rx117_cur."!mark_peek"($I10)
    rx117_cur."!cursor_pos"($I11)
    ($P10) = rx117_cur."!cursor_start"()
    $P10."!cursor_pass"(rx117_pos, "")
    rx117_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_121_done
  rxcap_121_fail:
    goto rx117_fail
  rxcap_121_done:
  # rx subrule "backmod" subtype=capture negate=
    rx117_cur."!cursor_pos"(rx117_pos)
    $P10 = rx117_cur."backmod"()
    unless $P10, rx117_fail
    rx117_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx117_pos = $P10."pos"()
  # rx pass
    rx117_cur."!cursor_pass"(rx117_pos, "quantifier:sym<+>")
    rx117_cur."!cursor_debug"("PASS  ", "quantifier:sym<+>", " at pos=", rx117_pos)
    .return (rx117_cur)
  rx117_fail:
.annotate "line", 3
    (rx117_rep, rx117_pos, $I10, $P10) = rx117_cur."!mark_fail"(0)
    lt rx117_pos, -1, rx117_done
    eq rx117_pos, -1, rx117_fail
    jump $I10
  rx117_done:
    rx117_cur."!cursor_fail"()
    rx117_cur."!cursor_debug"("FAIL  ", "quantifier:sym<+>")
    .return (rx117_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :subid("40_1256765552.18122") :method
.annotate "line", 3
    $P119 = self."!PREFIX__!subrule"("backmod", "+")
    new $P120, "ResizablePMCArray"
    push $P120, $P119
    .return ($P120)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("41_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx123_tgt
    .local int rx123_pos
    .local int rx123_off
    .local int rx123_eos
    .local int rx123_rep
    .local pmc rx123_cur
    (rx123_cur, rx123_pos, rx123_tgt, $I10) = self."!cursor_start"()
    rx123_cur."!cursor_debug"("START ", "quantifier:sym<?>")
    .lex unicode:"$\x{a2}", rx123_cur
    length rx123_eos, rx123_tgt
    set rx123_off, 0
    lt $I10, 2, rx123_start
    sub rx123_off, $I10, 1
    substr rx123_tgt, rx123_tgt, rx123_off
  rx123_start:
.annotate "line", 51
  # rx subcapture "sym"
    set_addr $I10, rxcap_127_fail
    rx123_cur."!mark_push"(0, rx123_pos, $I10)
  # rx literal  "?"
    add $I11, rx123_pos, 1
    gt $I11, rx123_eos, rx123_fail
    sub $I11, rx123_pos, rx123_off
    substr $S10, rx123_tgt, $I11, 1
    ne $S10, "?", rx123_fail
    add rx123_pos, 1
    set_addr $I10, rxcap_127_fail
    ($I12, $I11) = rx123_cur."!mark_peek"($I10)
    rx123_cur."!cursor_pos"($I11)
    ($P10) = rx123_cur."!cursor_start"()
    $P10."!cursor_pass"(rx123_pos, "")
    rx123_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_127_done
  rxcap_127_fail:
    goto rx123_fail
  rxcap_127_done:
  # rx subrule "backmod" subtype=capture negate=
    rx123_cur."!cursor_pos"(rx123_pos)
    $P10 = rx123_cur."backmod"()
    unless $P10, rx123_fail
    rx123_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx123_pos = $P10."pos"()
  # rx pass
    rx123_cur."!cursor_pass"(rx123_pos, "quantifier:sym<?>")
    rx123_cur."!cursor_debug"("PASS  ", "quantifier:sym<?>", " at pos=", rx123_pos)
    .return (rx123_cur)
  rx123_fail:
.annotate "line", 3
    (rx123_rep, rx123_pos, $I10, $P10) = rx123_cur."!mark_fail"(0)
    lt rx123_pos, -1, rx123_done
    eq rx123_pos, -1, rx123_fail
    jump $I10
  rx123_done:
    rx123_cur."!cursor_fail"()
    rx123_cur."!cursor_debug"("FAIL  ", "quantifier:sym<?>")
    .return (rx123_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :subid("42_1256765552.18122") :method
.annotate "line", 3
    $P125 = self."!PREFIX__!subrule"("backmod", "?")
    new $P126, "ResizablePMCArray"
    push $P126, $P125
    .return ($P126)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("43_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx129_tgt
    .local int rx129_pos
    .local int rx129_off
    .local int rx129_eos
    .local int rx129_rep
    .local pmc rx129_cur
    (rx129_cur, rx129_pos, rx129_tgt, $I10) = self."!cursor_start"()
    rx129_cur."!cursor_debug"("START ", "quantifier:sym<**>")
    rx129_cur."!cursor_caparray"("max")
    .lex unicode:"$\x{a2}", rx129_cur
    length rx129_eos, rx129_tgt
    set rx129_off, 0
    lt $I10, 2, rx129_start
    sub rx129_off, $I10, 1
    substr rx129_tgt, rx129_tgt, rx129_off
  rx129_start:
.annotate "line", 53
  # rx subcapture "sym"
    set_addr $I10, rxcap_132_fail
    rx129_cur."!mark_push"(0, rx129_pos, $I10)
  # rx literal  "**"
    add $I11, rx129_pos, 2
    gt $I11, rx129_eos, rx129_fail
    sub $I11, rx129_pos, rx129_off
    substr $S10, rx129_tgt, $I11, 2
    ne $S10, "**", rx129_fail
    add rx129_pos, 2
    set_addr $I10, rxcap_132_fail
    ($I12, $I11) = rx129_cur."!mark_peek"($I10)
    rx129_cur."!cursor_pos"($I11)
    ($P10) = rx129_cur."!cursor_start"()
    $P10."!cursor_pass"(rx129_pos, "")
    rx129_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_132_done
  rxcap_132_fail:
    goto rx129_fail
  rxcap_132_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx129_pos, rx129_off
    find_not_cclass $I11, 32, rx129_tgt, $I10, rx129_eos
    add rx129_pos, rx129_off, $I11
  # rx subrule "backmod" subtype=capture negate=
    rx129_cur."!cursor_pos"(rx129_pos)
    $P10 = rx129_cur."backmod"()
    unless $P10, rx129_fail
    rx129_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx129_pos = $P10."pos"()
  # rx charclass_q s r 0..-1
    sub $I10, rx129_pos, rx129_off
    find_not_cclass $I11, 32, rx129_tgt, $I10, rx129_eos
    add rx129_pos, rx129_off, $I11
  alt133_0:
.annotate "line", 54
    set_addr $I10, alt133_1
    rx129_cur."!mark_push"(0, rx129_pos, $I10)
.annotate "line", 55
  # rx subcapture "min"
    set_addr $I10, rxcap_134_fail
    rx129_cur."!mark_push"(0, rx129_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx129_pos, rx129_off
    find_not_cclass $I11, 8, rx129_tgt, $I10, rx129_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx129_fail
    add rx129_pos, rx129_off, $I11
    set_addr $I10, rxcap_134_fail
    ($I12, $I11) = rx129_cur."!mark_peek"($I10)
    rx129_cur."!cursor_pos"($I11)
    ($P10) = rx129_cur."!cursor_start"()
    $P10."!cursor_pass"(rx129_pos, "")
    rx129_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_134_done
  rxcap_134_fail:
    goto rx129_fail
  rxcap_134_done:
  # rx rxquantr135 ** 0..1
    set_addr $I138, rxquantr135_done
    rx129_cur."!mark_push"(0, rx129_pos, $I138)
  rxquantr135_loop:
  # rx literal  ".."
    add $I11, rx129_pos, 2
    gt $I11, rx129_eos, rx129_fail
    sub $I11, rx129_pos, rx129_off
    substr $S10, rx129_tgt, $I11, 2
    ne $S10, "..", rx129_fail
    add rx129_pos, 2
  # rx subcapture "max"
    set_addr $I10, rxcap_137_fail
    rx129_cur."!mark_push"(0, rx129_pos, $I10)
  alt136_0:
    set_addr $I10, alt136_1
    rx129_cur."!mark_push"(0, rx129_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx129_pos, rx129_off
    find_not_cclass $I11, 8, rx129_tgt, $I10, rx129_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx129_fail
    add rx129_pos, rx129_off, $I11
    goto alt136_end
  alt136_1:
  # rx literal  "*"
    add $I11, rx129_pos, 1
    gt $I11, rx129_eos, rx129_fail
    sub $I11, rx129_pos, rx129_off
    substr $S10, rx129_tgt, $I11, 1
    ne $S10, "*", rx129_fail
    add rx129_pos, 1
  alt136_end:
    set_addr $I10, rxcap_137_fail
    ($I12, $I11) = rx129_cur."!mark_peek"($I10)
    rx129_cur."!cursor_pos"($I11)
    ($P10) = rx129_cur."!cursor_start"()
    $P10."!cursor_pass"(rx129_pos, "")
    rx129_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_137_done
  rxcap_137_fail:
    goto rx129_fail
  rxcap_137_done:
    (rx129_rep) = rx129_cur."!mark_commit"($I138)
  rxquantr135_done:
    goto alt133_end
  alt133_1:
.annotate "line", 56
  # rx subrule "quantified_atom" subtype=capture negate=
    rx129_cur."!cursor_pos"(rx129_pos)
    $P10 = rx129_cur."quantified_atom"()
    unless $P10, rx129_fail
    rx129_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx129_pos = $P10."pos"()
  alt133_end:
.annotate "line", 52
  # rx pass
    rx129_cur."!cursor_pass"(rx129_pos, "quantifier:sym<**>")
    rx129_cur."!cursor_debug"("PASS  ", "quantifier:sym<**>", " at pos=", rx129_pos)
    .return (rx129_cur)
  rx129_fail:
.annotate "line", 3
    (rx129_rep, rx129_pos, $I10, $P10) = rx129_cur."!mark_fail"(0)
    lt rx129_pos, -1, rx129_done
    eq rx129_pos, -1, rx129_fail
    jump $I10
  rx129_done:
    rx129_cur."!cursor_fail"()
    rx129_cur."!cursor_debug"("FAIL  ", "quantifier:sym<**>")
    .return (rx129_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :subid("44_1256765552.18122") :method
.annotate "line", 3
    new $P131, "ResizablePMCArray"
    push $P131, "**"
    .return ($P131)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("45_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .const 'Sub' $P147 = "47_1256765552.18122" 
    capture_lex $P147
    .local string rx140_tgt
    .local int rx140_pos
    .local int rx140_off
    .local int rx140_eos
    .local int rx140_rep
    .local pmc rx140_cur
    (rx140_cur, rx140_pos, rx140_tgt, $I10) = self."!cursor_start"()
    rx140_cur."!cursor_debug"("START ", "backmod")
    .lex unicode:"$\x{a2}", rx140_cur
    length rx140_eos, rx140_tgt
    set rx140_off, 0
    lt $I10, 2, rx140_start
    sub rx140_off, $I10, 1
    substr rx140_tgt, rx140_tgt, rx140_off
  rx140_start:
.annotate "line", 60
  # rx rxquantr143 ** 0..1
    set_addr $I144, rxquantr143_done
    rx140_cur."!mark_push"(0, rx140_pos, $I144)
  rxquantr143_loop:
  # rx literal  ":"
    add $I11, rx140_pos, 1
    gt $I11, rx140_eos, rx140_fail
    sub $I11, rx140_pos, rx140_off
    substr $S10, rx140_tgt, $I11, 1
    ne $S10, ":", rx140_fail
    add rx140_pos, 1
    (rx140_rep) = rx140_cur."!mark_commit"($I144)
  rxquantr143_done:
  alt145_0:
    set_addr $I10, alt145_1
    rx140_cur."!mark_push"(0, rx140_pos, $I10)
  # rx literal  "?"
    add $I11, rx140_pos, 1
    gt $I11, rx140_eos, rx140_fail
    sub $I11, rx140_pos, rx140_off
    substr $S10, rx140_tgt, $I11, 1
    ne $S10, "?", rx140_fail
    add rx140_pos, 1
    goto alt145_end
  alt145_1:
    set_addr $I10, alt145_2
    rx140_cur."!mark_push"(0, rx140_pos, $I10)
  # rx literal  "!"
    add $I11, rx140_pos, 1
    gt $I11, rx140_eos, rx140_fail
    sub $I11, rx140_pos, rx140_off
    substr $S10, rx140_tgt, $I11, 1
    ne $S10, "!", rx140_fail
    add rx140_pos, 1
    goto alt145_end
  alt145_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx140_cur."!cursor_pos"(rx140_pos)
    .const 'Sub' $P147 = "47_1256765552.18122" 
    capture_lex $P147
    $P10 = rx140_cur."before"($P147)
    if $P10, rx140_fail
  alt145_end:
  # rx pass
    rx140_cur."!cursor_pass"(rx140_pos, "backmod")
    rx140_cur."!cursor_debug"("PASS  ", "backmod", " at pos=", rx140_pos)
    .return (rx140_cur)
  rx140_fail:
.annotate "line", 3
    (rx140_rep, rx140_pos, $I10, $P10) = rx140_cur."!mark_fail"(0)
    lt rx140_pos, -1, rx140_done
    eq rx140_pos, -1, rx140_fail
    jump $I10
  rx140_done:
    rx140_cur."!cursor_fail"()
    rx140_cur."!cursor_debug"("FAIL  ", "backmod")
    .return (rx140_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :subid("46_1256765552.18122") :method
.annotate "line", 3
    new $P142, "ResizablePMCArray"
    push $P142, ""
    .return ($P142)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block146"  :anon :subid("47_1256765552.18122") :method :outer("45_1256765552.18122")
.annotate "line", 60
    .local string rx148_tgt
    .local int rx148_pos
    .local int rx148_off
    .local int rx148_eos
    .local int rx148_rep
    .local pmc rx148_cur
    (rx148_cur, rx148_pos, rx148_tgt, $I10) = self."!cursor_start"()
    rx148_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx148_cur
    length rx148_eos, rx148_tgt
    set rx148_off, 0
    lt $I10, 2, rx148_start
    sub rx148_off, $I10, 1
    substr rx148_tgt, rx148_tgt, rx148_off
  rx148_start:
    ge rx148_pos, 0, rxscan149_done
  rxscan149_loop:
    ($P10) = rx148_cur."from"()
    inc $P10
    set rx148_pos, $P10
    ge rx148_pos, rx148_eos, rxscan149_done
    set_addr $I10, rxscan149_loop
    rx148_cur."!mark_push"(0, rx148_pos, $I10)
  rxscan149_done:
  # rx literal  ":"
    add $I11, rx148_pos, 1
    gt $I11, rx148_eos, rx148_fail
    sub $I11, rx148_pos, rx148_off
    substr $S10, rx148_tgt, $I11, 1
    ne $S10, ":", rx148_fail
    add rx148_pos, 1
  # rx pass
    rx148_cur."!cursor_pass"(rx148_pos, "")
    rx148_cur."!cursor_debug"("PASS  ", "", " at pos=", rx148_pos)
    .return (rx148_cur)
  rx148_fail:
    (rx148_rep, rx148_pos, $I10, $P10) = rx148_cur."!mark_fail"(0)
    lt rx148_pos, -1, rx148_done
    eq rx148_pos, -1, rx148_fail
    jump $I10
  rx148_done:
    rx148_cur."!cursor_fail"()
    rx148_cur."!cursor_debug"("FAIL  ", "")
    .return (rx148_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("48_1256765552.18122") :method
.annotate "line", 62
    $P151 = self."!protoregex"("metachar")
    .return ($P151)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("49_1256765552.18122") :method
.annotate "line", 62
    $P153 = self."!PREFIX__!protoregex"("metachar")
    .return ($P153)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("50_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx155_tgt
    .local int rx155_pos
    .local int rx155_off
    .local int rx155_eos
    .local int rx155_rep
    .local pmc rx155_cur
    (rx155_cur, rx155_pos, rx155_tgt, $I10) = self."!cursor_start"()
    rx155_cur."!cursor_debug"("START ", "metachar:sym<ws>")
    .lex unicode:"$\x{a2}", rx155_cur
    length rx155_eos, rx155_tgt
    set rx155_off, 0
    lt $I10, 2, rx155_start
    sub rx155_off, $I10, 1
    substr rx155_tgt, rx155_tgt, rx155_off
  rx155_start:
.annotate "line", 63
  # rx subrule "normspace" subtype=method negate=
    rx155_cur."!cursor_pos"(rx155_pos)
    $P10 = rx155_cur."normspace"()
    unless $P10, rx155_fail
    rx155_pos = $P10."pos"()
  # rx pass
    rx155_cur."!cursor_pass"(rx155_pos, "metachar:sym<ws>")
    rx155_cur."!cursor_debug"("PASS  ", "metachar:sym<ws>", " at pos=", rx155_pos)
    .return (rx155_cur)
  rx155_fail:
.annotate "line", 3
    (rx155_rep, rx155_pos, $I10, $P10) = rx155_cur."!mark_fail"(0)
    lt rx155_pos, -1, rx155_done
    eq rx155_pos, -1, rx155_fail
    jump $I10
  rx155_done:
    rx155_cur."!cursor_fail"()
    rx155_cur."!cursor_debug"("FAIL  ", "metachar:sym<ws>")
    .return (rx155_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :subid("51_1256765552.18122") :method
.annotate "line", 3
    $P157 = self."!PREFIX__!subrule"("normspace", "")
    new $P158, "ResizablePMCArray"
    push $P158, $P157
    .return ($P158)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("52_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx160_tgt
    .local int rx160_pos
    .local int rx160_off
    .local int rx160_eos
    .local int rx160_rep
    .local pmc rx160_cur
    (rx160_cur, rx160_pos, rx160_tgt, $I10) = self."!cursor_start"()
    rx160_cur."!cursor_debug"("START ", "metachar:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx160_cur
    length rx160_eos, rx160_tgt
    set rx160_off, 0
    lt $I10, 2, rx160_start
    sub rx160_off, $I10, 1
    substr rx160_tgt, rx160_tgt, rx160_off
  rx160_start:
.annotate "line", 64
  # rx literal  "["
    add $I11, rx160_pos, 1
    gt $I11, rx160_eos, rx160_fail
    sub $I11, rx160_pos, rx160_off
    substr $S10, rx160_tgt, $I11, 1
    ne $S10, "[", rx160_fail
    add rx160_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."nibbler"()
    unless $P10, rx160_fail
    rx160_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx160_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx160_pos, 1
    gt $I11, rx160_eos, rx160_fail
    sub $I11, rx160_pos, rx160_off
    substr $S10, rx160_tgt, $I11, 1
    ne $S10, "]", rx160_fail
    add rx160_pos, 1
  # rx pass
    rx160_cur."!cursor_pass"(rx160_pos, "metachar:sym<[ ]>")
    rx160_cur."!cursor_debug"("PASS  ", "metachar:sym<[ ]>", " at pos=", rx160_pos)
    .return (rx160_cur)
  rx160_fail:
.annotate "line", 3
    (rx160_rep, rx160_pos, $I10, $P10) = rx160_cur."!mark_fail"(0)
    lt rx160_pos, -1, rx160_done
    eq rx160_pos, -1, rx160_fail
    jump $I10
  rx160_done:
    rx160_cur."!cursor_fail"()
    rx160_cur."!cursor_debug"("FAIL  ", "metachar:sym<[ ]>")
    .return (rx160_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :subid("53_1256765552.18122") :method
.annotate "line", 3
    $P162 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P163, "ResizablePMCArray"
    push $P163, $P162
    .return ($P163)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("54_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx165_tgt
    .local int rx165_pos
    .local int rx165_off
    .local int rx165_eos
    .local int rx165_rep
    .local pmc rx165_cur
    (rx165_cur, rx165_pos, rx165_tgt, $I10) = self."!cursor_start"()
    rx165_cur."!cursor_debug"("START ", "metachar:sym<( )>")
    .lex unicode:"$\x{a2}", rx165_cur
    length rx165_eos, rx165_tgt
    set rx165_off, 0
    lt $I10, 2, rx165_start
    sub rx165_off, $I10, 1
    substr rx165_tgt, rx165_tgt, rx165_off
  rx165_start:
.annotate "line", 65
  # rx literal  "("
    add $I11, rx165_pos, 1
    gt $I11, rx165_eos, rx165_fail
    sub $I11, rx165_pos, rx165_off
    substr $S10, rx165_tgt, $I11, 1
    ne $S10, "(", rx165_fail
    add rx165_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx165_cur."!cursor_pos"(rx165_pos)
    $P10 = rx165_cur."nibbler"()
    unless $P10, rx165_fail
    rx165_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx165_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx165_pos, 1
    gt $I11, rx165_eos, rx165_fail
    sub $I11, rx165_pos, rx165_off
    substr $S10, rx165_tgt, $I11, 1
    ne $S10, ")", rx165_fail
    add rx165_pos, 1
  # rx pass
    rx165_cur."!cursor_pass"(rx165_pos, "metachar:sym<( )>")
    rx165_cur."!cursor_debug"("PASS  ", "metachar:sym<( )>", " at pos=", rx165_pos)
    .return (rx165_cur)
  rx165_fail:
.annotate "line", 3
    (rx165_rep, rx165_pos, $I10, $P10) = rx165_cur."!mark_fail"(0)
    lt rx165_pos, -1, rx165_done
    eq rx165_pos, -1, rx165_fail
    jump $I10
  rx165_done:
    rx165_cur."!cursor_fail"()
    rx165_cur."!cursor_debug"("FAIL  ", "metachar:sym<( )>")
    .return (rx165_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :subid("55_1256765552.18122") :method
.annotate "line", 3
    $P167 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P168, "ResizablePMCArray"
    push $P168, $P167
    .return ($P168)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("56_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx170_tgt
    .local int rx170_pos
    .local int rx170_off
    .local int rx170_eos
    .local int rx170_rep
    .local pmc rx170_cur
    (rx170_cur, rx170_pos, rx170_tgt, $I10) = self."!cursor_start"()
    rx170_cur."!cursor_debug"("START ", "metachar:sym<'>")
    .lex unicode:"$\x{a2}", rx170_cur
    length rx170_eos, rx170_tgt
    set rx170_off, 0
    lt $I10, 2, rx170_start
    sub rx170_off, $I10, 1
    substr rx170_tgt, rx170_tgt, rx170_off
  rx170_start:
.annotate "line", 66
  # rx subrule "quote" subtype=capture negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."quote"()
    unless $P10, rx170_fail
    rx170_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx170_pos = $P10."pos"()
  # rx pass
    rx170_cur."!cursor_pass"(rx170_pos, "metachar:sym<'>")
    rx170_cur."!cursor_debug"("PASS  ", "metachar:sym<'>", " at pos=", rx170_pos)
    .return (rx170_cur)
  rx170_fail:
.annotate "line", 3
    (rx170_rep, rx170_pos, $I10, $P10) = rx170_cur."!mark_fail"(0)
    lt rx170_pos, -1, rx170_done
    eq rx170_pos, -1, rx170_fail
    jump $I10
  rx170_done:
    rx170_cur."!cursor_fail"()
    rx170_cur."!cursor_debug"("FAIL  ", "metachar:sym<'>")
    .return (rx170_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :subid("57_1256765552.18122") :method
.annotate "line", 3
    $P172 = self."!PREFIX__!subrule"("quote", "")
    new $P173, "ResizablePMCArray"
    push $P173, $P172
    .return ($P173)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("58_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx175_tgt
    .local int rx175_pos
    .local int rx175_off
    .local int rx175_eos
    .local int rx175_rep
    .local pmc rx175_cur
    (rx175_cur, rx175_pos, rx175_tgt, $I10) = self."!cursor_start"()
    rx175_cur."!cursor_debug"("START ", "metachar:sym<.>")
    .lex unicode:"$\x{a2}", rx175_cur
    length rx175_eos, rx175_tgt
    set rx175_off, 0
    lt $I10, 2, rx175_start
    sub rx175_off, $I10, 1
    substr rx175_tgt, rx175_tgt, rx175_off
  rx175_start:
.annotate "line", 67
  # rx subcapture "sym"
    set_addr $I10, rxcap_178_fail
    rx175_cur."!mark_push"(0, rx175_pos, $I10)
  # rx literal  "."
    add $I11, rx175_pos, 1
    gt $I11, rx175_eos, rx175_fail
    sub $I11, rx175_pos, rx175_off
    substr $S10, rx175_tgt, $I11, 1
    ne $S10, ".", rx175_fail
    add rx175_pos, 1
    set_addr $I10, rxcap_178_fail
    ($I12, $I11) = rx175_cur."!mark_peek"($I10)
    rx175_cur."!cursor_pos"($I11)
    ($P10) = rx175_cur."!cursor_start"()
    $P10."!cursor_pass"(rx175_pos, "")
    rx175_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_178_done
  rxcap_178_fail:
    goto rx175_fail
  rxcap_178_done:
  # rx pass
    rx175_cur."!cursor_pass"(rx175_pos, "metachar:sym<.>")
    rx175_cur."!cursor_debug"("PASS  ", "metachar:sym<.>", " at pos=", rx175_pos)
    .return (rx175_cur)
  rx175_fail:
.annotate "line", 3
    (rx175_rep, rx175_pos, $I10, $P10) = rx175_cur."!mark_fail"(0)
    lt rx175_pos, -1, rx175_done
    eq rx175_pos, -1, rx175_fail
    jump $I10
  rx175_done:
    rx175_cur."!cursor_fail"()
    rx175_cur."!cursor_debug"("FAIL  ", "metachar:sym<.>")
    .return (rx175_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :subid("59_1256765552.18122") :method
.annotate "line", 3
    new $P177, "ResizablePMCArray"
    push $P177, "."
    .return ($P177)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("60_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx180_tgt
    .local int rx180_pos
    .local int rx180_off
    .local int rx180_eos
    .local int rx180_rep
    .local pmc rx180_cur
    (rx180_cur, rx180_pos, rx180_tgt, $I10) = self."!cursor_start"()
    rx180_cur."!cursor_debug"("START ", "metachar:sym<^>")
    .lex unicode:"$\x{a2}", rx180_cur
    length rx180_eos, rx180_tgt
    set rx180_off, 0
    lt $I10, 2, rx180_start
    sub rx180_off, $I10, 1
    substr rx180_tgt, rx180_tgt, rx180_off
  rx180_start:
.annotate "line", 68
  # rx subcapture "sym"
    set_addr $I10, rxcap_183_fail
    rx180_cur."!mark_push"(0, rx180_pos, $I10)
  # rx literal  "^"
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail
    sub $I11, rx180_pos, rx180_off
    substr $S10, rx180_tgt, $I11, 1
    ne $S10, "^", rx180_fail
    add rx180_pos, 1
    set_addr $I10, rxcap_183_fail
    ($I12, $I11) = rx180_cur."!mark_peek"($I10)
    rx180_cur."!cursor_pos"($I11)
    ($P10) = rx180_cur."!cursor_start"()
    $P10."!cursor_pass"(rx180_pos, "")
    rx180_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_183_done
  rxcap_183_fail:
    goto rx180_fail
  rxcap_183_done:
  # rx pass
    rx180_cur."!cursor_pass"(rx180_pos, "metachar:sym<^>")
    rx180_cur."!cursor_debug"("PASS  ", "metachar:sym<^>", " at pos=", rx180_pos)
    .return (rx180_cur)
  rx180_fail:
.annotate "line", 3
    (rx180_rep, rx180_pos, $I10, $P10) = rx180_cur."!mark_fail"(0)
    lt rx180_pos, -1, rx180_done
    eq rx180_pos, -1, rx180_fail
    jump $I10
  rx180_done:
    rx180_cur."!cursor_fail"()
    rx180_cur."!cursor_debug"("FAIL  ", "metachar:sym<^>")
    .return (rx180_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :subid("61_1256765552.18122") :method
.annotate "line", 3
    new $P182, "ResizablePMCArray"
    push $P182, "^"
    .return ($P182)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("62_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx185_tgt
    .local int rx185_pos
    .local int rx185_off
    .local int rx185_eos
    .local int rx185_rep
    .local pmc rx185_cur
    (rx185_cur, rx185_pos, rx185_tgt, $I10) = self."!cursor_start"()
    rx185_cur."!cursor_debug"("START ", "metachar:sym<^^>")
    .lex unicode:"$\x{a2}", rx185_cur
    length rx185_eos, rx185_tgt
    set rx185_off, 0
    lt $I10, 2, rx185_start
    sub rx185_off, $I10, 1
    substr rx185_tgt, rx185_tgt, rx185_off
  rx185_start:
.annotate "line", 69
  # rx subcapture "sym"
    set_addr $I10, rxcap_188_fail
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
  # rx literal  "^^"
    add $I11, rx185_pos, 2
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    substr $S10, rx185_tgt, $I11, 2
    ne $S10, "^^", rx185_fail
    add rx185_pos, 2
    set_addr $I10, rxcap_188_fail
    ($I12, $I11) = rx185_cur."!mark_peek"($I10)
    rx185_cur."!cursor_pos"($I11)
    ($P10) = rx185_cur."!cursor_start"()
    $P10."!cursor_pass"(rx185_pos, "")
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_188_done
  rxcap_188_fail:
    goto rx185_fail
  rxcap_188_done:
  # rx pass
    rx185_cur."!cursor_pass"(rx185_pos, "metachar:sym<^^>")
    rx185_cur."!cursor_debug"("PASS  ", "metachar:sym<^^>", " at pos=", rx185_pos)
    .return (rx185_cur)
  rx185_fail:
.annotate "line", 3
    (rx185_rep, rx185_pos, $I10, $P10) = rx185_cur."!mark_fail"(0)
    lt rx185_pos, -1, rx185_done
    eq rx185_pos, -1, rx185_fail
    jump $I10
  rx185_done:
    rx185_cur."!cursor_fail"()
    rx185_cur."!cursor_debug"("FAIL  ", "metachar:sym<^^>")
    .return (rx185_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :subid("63_1256765552.18122") :method
.annotate "line", 3
    new $P187, "ResizablePMCArray"
    push $P187, "^^"
    .return ($P187)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("64_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx190_tgt
    .local int rx190_pos
    .local int rx190_off
    .local int rx190_eos
    .local int rx190_rep
    .local pmc rx190_cur
    (rx190_cur, rx190_pos, rx190_tgt, $I10) = self."!cursor_start"()
    rx190_cur."!cursor_debug"("START ", "metachar:sym<$>")
    .lex unicode:"$\x{a2}", rx190_cur
    length rx190_eos, rx190_tgt
    set rx190_off, 0
    lt $I10, 2, rx190_start
    sub rx190_off, $I10, 1
    substr rx190_tgt, rx190_tgt, rx190_off
  rx190_start:
.annotate "line", 70
  # rx subcapture "sym"
    set_addr $I10, rxcap_193_fail
    rx190_cur."!mark_push"(0, rx190_pos, $I10)
  # rx literal  "$"
    add $I11, rx190_pos, 1
    gt $I11, rx190_eos, rx190_fail
    sub $I11, rx190_pos, rx190_off
    substr $S10, rx190_tgt, $I11, 1
    ne $S10, "$", rx190_fail
    add rx190_pos, 1
    set_addr $I10, rxcap_193_fail
    ($I12, $I11) = rx190_cur."!mark_peek"($I10)
    rx190_cur."!cursor_pos"($I11)
    ($P10) = rx190_cur."!cursor_start"()
    $P10."!cursor_pass"(rx190_pos, "")
    rx190_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_193_done
  rxcap_193_fail:
    goto rx190_fail
  rxcap_193_done:
  # rx pass
    rx190_cur."!cursor_pass"(rx190_pos, "metachar:sym<$>")
    rx190_cur."!cursor_debug"("PASS  ", "metachar:sym<$>", " at pos=", rx190_pos)
    .return (rx190_cur)
  rx190_fail:
.annotate "line", 3
    (rx190_rep, rx190_pos, $I10, $P10) = rx190_cur."!mark_fail"(0)
    lt rx190_pos, -1, rx190_done
    eq rx190_pos, -1, rx190_fail
    jump $I10
  rx190_done:
    rx190_cur."!cursor_fail"()
    rx190_cur."!cursor_debug"("FAIL  ", "metachar:sym<$>")
    .return (rx190_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :subid("65_1256765552.18122") :method
.annotate "line", 3
    new $P192, "ResizablePMCArray"
    push $P192, "$"
    .return ($P192)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("66_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx195_tgt
    .local int rx195_pos
    .local int rx195_off
    .local int rx195_eos
    .local int rx195_rep
    .local pmc rx195_cur
    (rx195_cur, rx195_pos, rx195_tgt, $I10) = self."!cursor_start"()
    rx195_cur."!cursor_debug"("START ", "metachar:sym<$$>")
    .lex unicode:"$\x{a2}", rx195_cur
    length rx195_eos, rx195_tgt
    set rx195_off, 0
    lt $I10, 2, rx195_start
    sub rx195_off, $I10, 1
    substr rx195_tgt, rx195_tgt, rx195_off
  rx195_start:
.annotate "line", 71
  # rx subcapture "sym"
    set_addr $I10, rxcap_198_fail
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  # rx literal  "$$"
    add $I11, rx195_pos, 2
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    substr $S10, rx195_tgt, $I11, 2
    ne $S10, "$$", rx195_fail
    add rx195_pos, 2
    set_addr $I10, rxcap_198_fail
    ($I12, $I11) = rx195_cur."!mark_peek"($I10)
    rx195_cur."!cursor_pos"($I11)
    ($P10) = rx195_cur."!cursor_start"()
    $P10."!cursor_pass"(rx195_pos, "")
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_198_done
  rxcap_198_fail:
    goto rx195_fail
  rxcap_198_done:
  # rx pass
    rx195_cur."!cursor_pass"(rx195_pos, "metachar:sym<$$>")
    rx195_cur."!cursor_debug"("PASS  ", "metachar:sym<$$>", " at pos=", rx195_pos)
    .return (rx195_cur)
  rx195_fail:
.annotate "line", 3
    (rx195_rep, rx195_pos, $I10, $P10) = rx195_cur."!mark_fail"(0)
    lt rx195_pos, -1, rx195_done
    eq rx195_pos, -1, rx195_fail
    jump $I10
  rx195_done:
    rx195_cur."!cursor_fail"()
    rx195_cur."!cursor_debug"("FAIL  ", "metachar:sym<$$>")
    .return (rx195_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :subid("67_1256765552.18122") :method
.annotate "line", 3
    new $P197, "ResizablePMCArray"
    push $P197, "$$"
    .return ($P197)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("68_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx200_tgt
    .local int rx200_pos
    .local int rx200_off
    .local int rx200_eos
    .local int rx200_rep
    .local pmc rx200_cur
    (rx200_cur, rx200_pos, rx200_tgt, $I10) = self."!cursor_start"()
    rx200_cur."!cursor_debug"("START ", "metachar:sym<:::>")
    .lex unicode:"$\x{a2}", rx200_cur
    length rx200_eos, rx200_tgt
    set rx200_off, 0
    lt $I10, 2, rx200_start
    sub rx200_off, $I10, 1
    substr rx200_tgt, rx200_tgt, rx200_off
  rx200_start:
.annotate "line", 72
  # rx subcapture "sym"
    set_addr $I10, rxcap_203_fail
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  # rx literal  ":::"
    add $I11, rx200_pos, 3
    gt $I11, rx200_eos, rx200_fail
    sub $I11, rx200_pos, rx200_off
    substr $S10, rx200_tgt, $I11, 3
    ne $S10, ":::", rx200_fail
    add rx200_pos, 3
    set_addr $I10, rxcap_203_fail
    ($I12, $I11) = rx200_cur."!mark_peek"($I10)
    rx200_cur."!cursor_pos"($I11)
    ($P10) = rx200_cur."!cursor_start"()
    $P10."!cursor_pass"(rx200_pos, "")
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_203_done
  rxcap_203_fail:
    goto rx200_fail
  rxcap_203_done:
  # rx pass
    rx200_cur."!cursor_pass"(rx200_pos, "metachar:sym<:::>")
    rx200_cur."!cursor_debug"("PASS  ", "metachar:sym<:::>", " at pos=", rx200_pos)
    .return (rx200_cur)
  rx200_fail:
.annotate "line", 3
    (rx200_rep, rx200_pos, $I10, $P10) = rx200_cur."!mark_fail"(0)
    lt rx200_pos, -1, rx200_done
    eq rx200_pos, -1, rx200_fail
    jump $I10
  rx200_done:
    rx200_cur."!cursor_fail"()
    rx200_cur."!cursor_debug"("FAIL  ", "metachar:sym<:::>")
    .return (rx200_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :subid("69_1256765552.18122") :method
.annotate "line", 3
    new $P202, "ResizablePMCArray"
    push $P202, ":::"
    .return ($P202)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("70_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx205_tgt
    .local int rx205_pos
    .local int rx205_off
    .local int rx205_eos
    .local int rx205_rep
    .local pmc rx205_cur
    (rx205_cur, rx205_pos, rx205_tgt, $I10) = self."!cursor_start"()
    rx205_cur."!cursor_debug"("START ", "metachar:sym<::>")
    .lex unicode:"$\x{a2}", rx205_cur
    length rx205_eos, rx205_tgt
    set rx205_off, 0
    lt $I10, 2, rx205_start
    sub rx205_off, $I10, 1
    substr rx205_tgt, rx205_tgt, rx205_off
  rx205_start:
.annotate "line", 73
  # rx subcapture "sym"
    set_addr $I10, rxcap_208_fail
    rx205_cur."!mark_push"(0, rx205_pos, $I10)
  # rx literal  "::"
    add $I11, rx205_pos, 2
    gt $I11, rx205_eos, rx205_fail
    sub $I11, rx205_pos, rx205_off
    substr $S10, rx205_tgt, $I11, 2
    ne $S10, "::", rx205_fail
    add rx205_pos, 2
    set_addr $I10, rxcap_208_fail
    ($I12, $I11) = rx205_cur."!mark_peek"($I10)
    rx205_cur."!cursor_pos"($I11)
    ($P10) = rx205_cur."!cursor_start"()
    $P10."!cursor_pass"(rx205_pos, "")
    rx205_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_208_done
  rxcap_208_fail:
    goto rx205_fail
  rxcap_208_done:
  # rx pass
    rx205_cur."!cursor_pass"(rx205_pos, "metachar:sym<::>")
    rx205_cur."!cursor_debug"("PASS  ", "metachar:sym<::>", " at pos=", rx205_pos)
    .return (rx205_cur)
  rx205_fail:
.annotate "line", 3
    (rx205_rep, rx205_pos, $I10, $P10) = rx205_cur."!mark_fail"(0)
    lt rx205_pos, -1, rx205_done
    eq rx205_pos, -1, rx205_fail
    jump $I10
  rx205_done:
    rx205_cur."!cursor_fail"()
    rx205_cur."!cursor_debug"("FAIL  ", "metachar:sym<::>")
    .return (rx205_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :subid("71_1256765552.18122") :method
.annotate "line", 3
    new $P207, "ResizablePMCArray"
    push $P207, "::"
    .return ($P207)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("72_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx210_tgt
    .local int rx210_pos
    .local int rx210_off
    .local int rx210_eos
    .local int rx210_rep
    .local pmc rx210_cur
    (rx210_cur, rx210_pos, rx210_tgt, $I10) = self."!cursor_start"()
    rx210_cur."!cursor_debug"("START ", "metachar:sym<lwb>")
    .lex unicode:"$\x{a2}", rx210_cur
    length rx210_eos, rx210_tgt
    set rx210_off, 0
    lt $I10, 2, rx210_start
    sub rx210_off, $I10, 1
    substr rx210_tgt, rx210_tgt, rx210_off
  rx210_start:
.annotate "line", 74
  # rx subcapture "sym"
    set_addr $I10, rxcap_214_fail
    rx210_cur."!mark_push"(0, rx210_pos, $I10)
  alt213_0:
    set_addr $I10, alt213_1
    rx210_cur."!mark_push"(0, rx210_pos, $I10)
  # rx literal  "<<"
    add $I11, rx210_pos, 2
    gt $I11, rx210_eos, rx210_fail
    sub $I11, rx210_pos, rx210_off
    substr $S10, rx210_tgt, $I11, 2
    ne $S10, "<<", rx210_fail
    add rx210_pos, 2
    goto alt213_end
  alt213_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx210_pos, 1
    gt $I11, rx210_eos, rx210_fail
    sub $I11, rx210_pos, rx210_off
    substr $S10, rx210_tgt, $I11, 1
    ne $S10, unicode:"\x{ab}", rx210_fail
    add rx210_pos, 1
  alt213_end:
    set_addr $I10, rxcap_214_fail
    ($I12, $I11) = rx210_cur."!mark_peek"($I10)
    rx210_cur."!cursor_pos"($I11)
    ($P10) = rx210_cur."!cursor_start"()
    $P10."!cursor_pass"(rx210_pos, "")
    rx210_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_214_done
  rxcap_214_fail:
    goto rx210_fail
  rxcap_214_done:
  # rx pass
    rx210_cur."!cursor_pass"(rx210_pos, "metachar:sym<lwb>")
    rx210_cur."!cursor_debug"("PASS  ", "metachar:sym<lwb>", " at pos=", rx210_pos)
    .return (rx210_cur)
  rx210_fail:
.annotate "line", 3
    (rx210_rep, rx210_pos, $I10, $P10) = rx210_cur."!mark_fail"(0)
    lt rx210_pos, -1, rx210_done
    eq rx210_pos, -1, rx210_fail
    jump $I10
  rx210_done:
    rx210_cur."!cursor_fail"()
    rx210_cur."!cursor_debug"("FAIL  ", "metachar:sym<lwb>")
    .return (rx210_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :subid("73_1256765552.18122") :method
.annotate "line", 3
    new $P212, "ResizablePMCArray"
    push $P212, unicode:"\x{ab}"
    push $P212, "<<"
    .return ($P212)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("74_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx216_tgt
    .local int rx216_pos
    .local int rx216_off
    .local int rx216_eos
    .local int rx216_rep
    .local pmc rx216_cur
    (rx216_cur, rx216_pos, rx216_tgt, $I10) = self."!cursor_start"()
    rx216_cur."!cursor_debug"("START ", "metachar:sym<rwb>")
    .lex unicode:"$\x{a2}", rx216_cur
    length rx216_eos, rx216_tgt
    set rx216_off, 0
    lt $I10, 2, rx216_start
    sub rx216_off, $I10, 1
    substr rx216_tgt, rx216_tgt, rx216_off
  rx216_start:
.annotate "line", 75
  # rx subcapture "sym"
    set_addr $I10, rxcap_220_fail
    rx216_cur."!mark_push"(0, rx216_pos, $I10)
  alt219_0:
    set_addr $I10, alt219_1
    rx216_cur."!mark_push"(0, rx216_pos, $I10)
  # rx literal  ">>"
    add $I11, rx216_pos, 2
    gt $I11, rx216_eos, rx216_fail
    sub $I11, rx216_pos, rx216_off
    substr $S10, rx216_tgt, $I11, 2
    ne $S10, ">>", rx216_fail
    add rx216_pos, 2
    goto alt219_end
  alt219_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx216_pos, 1
    gt $I11, rx216_eos, rx216_fail
    sub $I11, rx216_pos, rx216_off
    substr $S10, rx216_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx216_fail
    add rx216_pos, 1
  alt219_end:
    set_addr $I10, rxcap_220_fail
    ($I12, $I11) = rx216_cur."!mark_peek"($I10)
    rx216_cur."!cursor_pos"($I11)
    ($P10) = rx216_cur."!cursor_start"()
    $P10."!cursor_pass"(rx216_pos, "")
    rx216_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_220_done
  rxcap_220_fail:
    goto rx216_fail
  rxcap_220_done:
  # rx pass
    rx216_cur."!cursor_pass"(rx216_pos, "metachar:sym<rwb>")
    rx216_cur."!cursor_debug"("PASS  ", "metachar:sym<rwb>", " at pos=", rx216_pos)
    .return (rx216_cur)
  rx216_fail:
.annotate "line", 3
    (rx216_rep, rx216_pos, $I10, $P10) = rx216_cur."!mark_fail"(0)
    lt rx216_pos, -1, rx216_done
    eq rx216_pos, -1, rx216_fail
    jump $I10
  rx216_done:
    rx216_cur."!cursor_fail"()
    rx216_cur."!cursor_debug"("FAIL  ", "metachar:sym<rwb>")
    .return (rx216_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :subid("75_1256765552.18122") :method
.annotate "line", 3
    new $P218, "ResizablePMCArray"
    push $P218, unicode:"\x{bb}"
    push $P218, ">>"
    .return ($P218)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("76_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx222_tgt
    .local int rx222_pos
    .local int rx222_off
    .local int rx222_eos
    .local int rx222_rep
    .local pmc rx222_cur
    (rx222_cur, rx222_pos, rx222_tgt, $I10) = self."!cursor_start"()
    rx222_cur."!cursor_debug"("START ", "metachar:sym<bs>")
    .lex unicode:"$\x{a2}", rx222_cur
    length rx222_eos, rx222_tgt
    set rx222_off, 0
    lt $I10, 2, rx222_start
    sub rx222_off, $I10, 1
    substr rx222_tgt, rx222_tgt, rx222_off
  rx222_start:
.annotate "line", 76
  # rx literal  "\\"
    add $I11, rx222_pos, 1
    gt $I11, rx222_eos, rx222_fail
    sub $I11, rx222_pos, rx222_off
    substr $S10, rx222_tgt, $I11, 1
    ne $S10, "\\", rx222_fail
    add rx222_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx222_cur."!cursor_pos"(rx222_pos)
    $P10 = rx222_cur."backslash"()
    unless $P10, rx222_fail
    rx222_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx222_pos = $P10."pos"()
  # rx pass
    rx222_cur."!cursor_pass"(rx222_pos, "metachar:sym<bs>")
    rx222_cur."!cursor_debug"("PASS  ", "metachar:sym<bs>", " at pos=", rx222_pos)
    .return (rx222_cur)
  rx222_fail:
.annotate "line", 3
    (rx222_rep, rx222_pos, $I10, $P10) = rx222_cur."!mark_fail"(0)
    lt rx222_pos, -1, rx222_done
    eq rx222_pos, -1, rx222_fail
    jump $I10
  rx222_done:
    rx222_cur."!cursor_fail"()
    rx222_cur."!cursor_debug"("FAIL  ", "metachar:sym<bs>")
    .return (rx222_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :subid("77_1256765552.18122") :method
.annotate "line", 3
    $P224 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P225, "ResizablePMCArray"
    push $P225, $P224
    .return ($P225)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("78_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx227_tgt
    .local int rx227_pos
    .local int rx227_off
    .local int rx227_eos
    .local int rx227_rep
    .local pmc rx227_cur
    (rx227_cur, rx227_pos, rx227_tgt, $I10) = self."!cursor_start"()
    rx227_cur."!cursor_debug"("START ", "metachar:sym<mod>")
    .lex unicode:"$\x{a2}", rx227_cur
    length rx227_eos, rx227_tgt
    set rx227_off, 0
    lt $I10, 2, rx227_start
    sub rx227_off, $I10, 1
    substr rx227_tgt, rx227_tgt, rx227_off
  rx227_start:
.annotate "line", 77
  # rx subrule "mod_internal" subtype=capture negate=
    rx227_cur."!cursor_pos"(rx227_pos)
    $P10 = rx227_cur."mod_internal"()
    unless $P10, rx227_fail
    rx227_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx227_pos = $P10."pos"()
  # rx pass
    rx227_cur."!cursor_pass"(rx227_pos, "metachar:sym<mod>")
    rx227_cur."!cursor_debug"("PASS  ", "metachar:sym<mod>", " at pos=", rx227_pos)
    .return (rx227_cur)
  rx227_fail:
.annotate "line", 3
    (rx227_rep, rx227_pos, $I10, $P10) = rx227_cur."!mark_fail"(0)
    lt rx227_pos, -1, rx227_done
    eq rx227_pos, -1, rx227_fail
    jump $I10
  rx227_done:
    rx227_cur."!cursor_fail"()
    rx227_cur."!cursor_debug"("FAIL  ", "metachar:sym<mod>")
    .return (rx227_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :subid("79_1256765552.18122") :method
.annotate "line", 3
    $P229 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P230, "ResizablePMCArray"
    push $P230, $P229
    .return ($P230)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("80_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx232_tgt
    .local int rx232_pos
    .local int rx232_off
    .local int rx232_eos
    .local int rx232_rep
    .local pmc rx232_cur
    (rx232_cur, rx232_pos, rx232_tgt, $I10) = self."!cursor_start"()
    rx232_cur."!cursor_debug"("START ", "metachar:sym<~>")
    .lex unicode:"$\x{a2}", rx232_cur
    length rx232_eos, rx232_tgt
    set rx232_off, 0
    lt $I10, 2, rx232_start
    sub rx232_off, $I10, 1
    substr rx232_tgt, rx232_tgt, rx232_off
  rx232_start:
.annotate "line", 81
  # rx subcapture "sym"
    set_addr $I10, rxcap_236_fail
    rx232_cur."!mark_push"(0, rx232_pos, $I10)
  # rx literal  "~"
    add $I11, rx232_pos, 1
    gt $I11, rx232_eos, rx232_fail
    sub $I11, rx232_pos, rx232_off
    substr $S10, rx232_tgt, $I11, 1
    ne $S10, "~", rx232_fail
    add rx232_pos, 1
    set_addr $I10, rxcap_236_fail
    ($I12, $I11) = rx232_cur."!mark_peek"($I10)
    rx232_cur."!cursor_pos"($I11)
    ($P10) = rx232_cur."!cursor_start"()
    $P10."!cursor_pass"(rx232_pos, "")
    rx232_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_236_done
  rxcap_236_fail:
    goto rx232_fail
  rxcap_236_done:
.annotate "line", 82
  # rx subrule "ws" subtype=method negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."ws"()
    unless $P10, rx232_fail
    rx232_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."quantified_atom"()
    unless $P10, rx232_fail
    rx232_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx232_pos = $P10."pos"()
.annotate "line", 83
  # rx subrule "ws" subtype=method negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."ws"()
    unless $P10, rx232_fail
    rx232_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."quantified_atom"()
    unless $P10, rx232_fail
    rx232_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx232_pos = $P10."pos"()
.annotate "line", 80
  # rx pass
    rx232_cur."!cursor_pass"(rx232_pos, "metachar:sym<~>")
    rx232_cur."!cursor_debug"("PASS  ", "metachar:sym<~>", " at pos=", rx232_pos)
    .return (rx232_cur)
  rx232_fail:
.annotate "line", 3
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    rx232_cur."!cursor_debug"("FAIL  ", "metachar:sym<~>")
    .return (rx232_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :subid("81_1256765552.18122") :method
.annotate "line", 3
    $P234 = self."!PREFIX__!subrule"("ws", "~")
    new $P235, "ResizablePMCArray"
    push $P235, $P234
    .return ($P235)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("82_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx238_tgt
    .local int rx238_pos
    .local int rx238_off
    .local int rx238_eos
    .local int rx238_rep
    .local pmc rx238_cur
    (rx238_cur, rx238_pos, rx238_tgt, $I10) = self."!cursor_start"()
    rx238_cur."!cursor_debug"("START ", "metachar:sym<{*}>")
    rx238_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx238_cur
    length rx238_eos, rx238_tgt
    set rx238_off, 0
    lt $I10, 2, rx238_start
    sub rx238_off, $I10, 1
    substr rx238_tgt, rx238_tgt, rx238_off
  rx238_start:
.annotate "line", 87
  # rx subcapture "sym"
    set_addr $I10, rxcap_241_fail
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx238_pos, 3
    gt $I11, rx238_eos, rx238_fail
    sub $I11, rx238_pos, rx238_off
    substr $S10, rx238_tgt, $I11, 3
    ne $S10, "{*}", rx238_fail
    add rx238_pos, 3
    set_addr $I10, rxcap_241_fail
    ($I12, $I11) = rx238_cur."!mark_peek"($I10)
    rx238_cur."!cursor_pos"($I11)
    ($P10) = rx238_cur."!cursor_start"()
    $P10."!cursor_pass"(rx238_pos, "")
    rx238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_241_done
  rxcap_241_fail:
    goto rx238_fail
  rxcap_241_done:
.annotate "line", 88
  # rx rxquantr242 ** 0..1
    set_addr $I252, rxquantr242_done
    rx238_cur."!mark_push"(0, rx238_pos, $I252)
  rxquantr242_loop:
  # rx rxquantr243 ** 0..*
    set_addr $I244, rxquantr243_done
    rx238_cur."!mark_push"(0, rx238_pos, $I244)
  rxquantr243_loop:
  # rx enumcharlist negate=0 
    ge rx238_pos, rx238_eos, rx238_fail
    sub $I10, rx238_pos, rx238_off
    substr $S10, rx238_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx238_fail
    inc rx238_pos
    (rx238_rep) = rx238_cur."!mark_commit"($I244)
    rx238_cur."!mark_push"(rx238_rep, rx238_pos, $I244)
    goto rxquantr243_loop
  rxquantr243_done:
  # rx literal  "#= "
    add $I11, rx238_pos, 3
    gt $I11, rx238_eos, rx238_fail
    sub $I11, rx238_pos, rx238_off
    substr $S10, rx238_tgt, $I11, 3
    ne $S10, "#= ", rx238_fail
    add rx238_pos, 3
  # rx rxquantr245 ** 0..*
    set_addr $I246, rxquantr245_done
    rx238_cur."!mark_push"(0, rx238_pos, $I246)
  rxquantr245_loop:
  # rx enumcharlist negate=0 
    ge rx238_pos, rx238_eos, rx238_fail
    sub $I10, rx238_pos, rx238_off
    substr $S10, rx238_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx238_fail
    inc rx238_pos
    (rx238_rep) = rx238_cur."!mark_commit"($I246)
    rx238_cur."!mark_push"(rx238_rep, rx238_pos, $I246)
    goto rxquantr245_loop
  rxquantr245_done:
  # rx subcapture "key"
    set_addr $I10, rxcap_251_fail
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx238_pos, rx238_off
    find_cclass $I11, 32, rx238_tgt, $I10, rx238_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx238_fail
    add rx238_pos, rx238_off, $I11
  # rx rxquantr247 ** 0..*
    set_addr $I250, rxquantr247_done
    rx238_cur."!mark_push"(0, rx238_pos, $I250)
  rxquantr247_loop:
  # rx rxquantr248 ** 1..*
    set_addr $I249, rxquantr248_done
    rx238_cur."!mark_push"(0, -1, $I249)
  rxquantr248_loop:
  # rx enumcharlist negate=0 
    ge rx238_pos, rx238_eos, rx238_fail
    sub $I10, rx238_pos, rx238_off
    substr $S10, rx238_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx238_fail
    inc rx238_pos
    (rx238_rep) = rx238_cur."!mark_commit"($I249)
    rx238_cur."!mark_push"(rx238_rep, rx238_pos, $I249)
    goto rxquantr248_loop
  rxquantr248_done:
  # rx charclass_q S r 1..-1
    sub $I10, rx238_pos, rx238_off
    find_cclass $I11, 32, rx238_tgt, $I10, rx238_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx238_fail
    add rx238_pos, rx238_off, $I11
    (rx238_rep) = rx238_cur."!mark_commit"($I250)
    rx238_cur."!mark_push"(rx238_rep, rx238_pos, $I250)
    goto rxquantr247_loop
  rxquantr247_done:
    set_addr $I10, rxcap_251_fail
    ($I12, $I11) = rx238_cur."!mark_peek"($I10)
    rx238_cur."!cursor_pos"($I11)
    ($P10) = rx238_cur."!cursor_start"()
    $P10."!cursor_pass"(rx238_pos, "")
    rx238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_251_done
  rxcap_251_fail:
    goto rx238_fail
  rxcap_251_done:
    (rx238_rep) = rx238_cur."!mark_commit"($I252)
  rxquantr242_done:
.annotate "line", 86
  # rx pass
    rx238_cur."!cursor_pass"(rx238_pos, "metachar:sym<{*}>")
    rx238_cur."!cursor_debug"("PASS  ", "metachar:sym<{*}>", " at pos=", rx238_pos)
    .return (rx238_cur)
  rx238_fail:
.annotate "line", 3
    (rx238_rep, rx238_pos, $I10, $P10) = rx238_cur."!mark_fail"(0)
    lt rx238_pos, -1, rx238_done
    eq rx238_pos, -1, rx238_fail
    jump $I10
  rx238_done:
    rx238_cur."!cursor_fail"()
    rx238_cur."!cursor_debug"("FAIL  ", "metachar:sym<{*}>")
    .return (rx238_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :subid("83_1256765552.18122") :method
.annotate "line", 3
    new $P240, "ResizablePMCArray"
    push $P240, "{*}"
    .return ($P240)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("84_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx254_tgt
    .local int rx254_pos
    .local int rx254_off
    .local int rx254_eos
    .local int rx254_rep
    .local pmc rx254_cur
    (rx254_cur, rx254_pos, rx254_tgt, $I10) = self."!cursor_start"()
    rx254_cur."!cursor_debug"("START ", "metachar:sym<assert>")
    .lex unicode:"$\x{a2}", rx254_cur
    length rx254_eos, rx254_tgt
    set rx254_off, 0
    lt $I10, 2, rx254_start
    sub rx254_off, $I10, 1
    substr rx254_tgt, rx254_tgt, rx254_off
  rx254_start:
.annotate "line", 91
  # rx literal  "<"
    add $I11, rx254_pos, 1
    gt $I11, rx254_eos, rx254_fail
    sub $I11, rx254_pos, rx254_off
    substr $S10, rx254_tgt, $I11, 1
    ne $S10, "<", rx254_fail
    add rx254_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx254_cur."!cursor_pos"(rx254_pos)
    $P10 = rx254_cur."assertion"()
    unless $P10, rx254_fail
    rx254_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx254_pos = $P10."pos"()
  alt258_0:
.annotate "line", 92
    set_addr $I10, alt258_1
    rx254_cur."!mark_push"(0, rx254_pos, $I10)
  # rx literal  ">"
    add $I11, rx254_pos, 1
    gt $I11, rx254_eos, rx254_fail
    sub $I11, rx254_pos, rx254_off
    substr $S10, rx254_tgt, $I11, 1
    ne $S10, ">", rx254_fail
    add rx254_pos, 1
    goto alt258_end
  alt258_1:
  # rx subrule "panic" subtype=method negate=
    rx254_cur."!cursor_pos"(rx254_pos)
    $P10 = rx254_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx254_fail
    rx254_pos = $P10."pos"()
  alt258_end:
.annotate "line", 90
  # rx pass
    rx254_cur."!cursor_pass"(rx254_pos, "metachar:sym<assert>")
    rx254_cur."!cursor_debug"("PASS  ", "metachar:sym<assert>", " at pos=", rx254_pos)
    .return (rx254_cur)
  rx254_fail:
.annotate "line", 3
    (rx254_rep, rx254_pos, $I10, $P10) = rx254_cur."!mark_fail"(0)
    lt rx254_pos, -1, rx254_done
    eq rx254_pos, -1, rx254_fail
    jump $I10
  rx254_done:
    rx254_cur."!cursor_fail"()
    rx254_cur."!cursor_debug"("FAIL  ", "metachar:sym<assert>")
    .return (rx254_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :subid("85_1256765552.18122") :method
.annotate "line", 3
    $P256 = self."!PREFIX__!subrule"("assertion", "<")
    new $P257, "ResizablePMCArray"
    push $P257, $P256
    .return ($P257)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("86_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx260_tgt
    .local int rx260_pos
    .local int rx260_off
    .local int rx260_eos
    .local int rx260_rep
    .local pmc rx260_cur
    (rx260_cur, rx260_pos, rx260_tgt, $I10) = self."!cursor_start"()
    rx260_cur."!cursor_debug"("START ", "metachar:sym<var>")
    rx260_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx260_cur
    length rx260_eos, rx260_tgt
    set rx260_off, 0
    lt $I10, 2, rx260_start
    sub rx260_off, $I10, 1
    substr rx260_tgt, rx260_tgt, rx260_off
  rx260_start:
  alt263_0:
.annotate "line", 96
    set_addr $I10, alt263_1
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
.annotate "line", 97
  # rx literal  "$<"
    add $I11, rx260_pos, 2
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I11, 2
    ne $S10, "$<", rx260_fail
    add rx260_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_266_fail
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  # rx rxquantr264 ** 1..*
    set_addr $I265, rxquantr264_done
    rx260_cur."!mark_push"(0, -1, $I265)
  rxquantr264_loop:
  # rx enumcharlist negate=1 
    ge rx260_pos, rx260_eos, rx260_fail
    sub $I10, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx260_fail
    inc rx260_pos
    (rx260_rep) = rx260_cur."!mark_commit"($I265)
    rx260_cur."!mark_push"(rx260_rep, rx260_pos, $I265)
    goto rxquantr264_loop
  rxquantr264_done:
    set_addr $I10, rxcap_266_fail
    ($I12, $I11) = rx260_cur."!mark_peek"($I10)
    rx260_cur."!cursor_pos"($I11)
    ($P10) = rx260_cur."!cursor_start"()
    $P10."!cursor_pass"(rx260_pos, "")
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_266_done
  rxcap_266_fail:
    goto rx260_fail
  rxcap_266_done:
  # rx literal  ">"
    add $I11, rx260_pos, 1
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I11, 1
    ne $S10, ">", rx260_fail
    add rx260_pos, 1
    goto alt263_end
  alt263_1:
.annotate "line", 98
  # rx literal  "$"
    add $I11, rx260_pos, 1
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I11, 1
    ne $S10, "$", rx260_fail
    add rx260_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_267_fail
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx260_pos, rx260_off
    find_not_cclass $I11, 8, rx260_tgt, $I10, rx260_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx260_fail
    add rx260_pos, rx260_off, $I11
    set_addr $I10, rxcap_267_fail
    ($I12, $I11) = rx260_cur."!mark_peek"($I10)
    rx260_cur."!cursor_pos"($I11)
    ($P10) = rx260_cur."!cursor_start"()
    $P10."!cursor_pass"(rx260_pos, "")
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_267_done
  rxcap_267_fail:
    goto rx260_fail
  rxcap_267_done:
  alt263_end:
.annotate "line", 101
  # rx rxquantr268 ** 0..1
    set_addr $I269, rxquantr268_done
    rx260_cur."!mark_push"(0, rx260_pos, $I269)
  rxquantr268_loop:
  # rx subrule "ws" subtype=method negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    $P10 = rx260_cur."ws"()
    unless $P10, rx260_fail
    rx260_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx260_pos, 1
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I11, 1
    ne $S10, "=", rx260_fail
    add rx260_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    $P10 = rx260_cur."ws"()
    unless $P10, rx260_fail
    rx260_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    $P10 = rx260_cur."quantified_atom"()
    unless $P10, rx260_fail
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx260_pos = $P10."pos"()
    (rx260_rep) = rx260_cur."!mark_commit"($I269)
  rxquantr268_done:
.annotate "line", 95
  # rx pass
    rx260_cur."!cursor_pass"(rx260_pos, "metachar:sym<var>")
    rx260_cur."!cursor_debug"("PASS  ", "metachar:sym<var>", " at pos=", rx260_pos)
    .return (rx260_cur)
  rx260_fail:
.annotate "line", 3
    (rx260_rep, rx260_pos, $I10, $P10) = rx260_cur."!mark_fail"(0)
    lt rx260_pos, -1, rx260_done
    eq rx260_pos, -1, rx260_fail
    jump $I10
  rx260_done:
    rx260_cur."!cursor_fail"()
    rx260_cur."!cursor_debug"("FAIL  ", "metachar:sym<var>")
    .return (rx260_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :subid("87_1256765552.18122") :method
.annotate "line", 3
    new $P262, "ResizablePMCArray"
    push $P262, "$"
    push $P262, "$<"
    .return ($P262)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("88_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx271_tgt
    .local int rx271_pos
    .local int rx271_off
    .local int rx271_eos
    .local int rx271_rep
    .local pmc rx271_cur
    (rx271_cur, rx271_pos, rx271_tgt, $I10) = self."!cursor_start"()
    rx271_cur."!cursor_debug"("START ", "metachar:sym<PIR>")
    .lex unicode:"$\x{a2}", rx271_cur
    length rx271_eos, rx271_tgt
    set rx271_off, 0
    lt $I10, 2, rx271_start
    sub rx271_off, $I10, 1
    substr rx271_tgt, rx271_tgt, rx271_off
  rx271_start:
.annotate "line", 105
  # rx literal  ":PIR{{"
    add $I11, rx271_pos, 6
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    substr $S10, rx271_tgt, $I11, 6
    ne $S10, ":PIR{{", rx271_fail
    add rx271_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_276_fail
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  # rx rxquantf274 ** 0..*
    set_addr $I10, rxquantf274_loop
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
    goto rxquantf274_done
  rxquantf274_loop:
  # rx charclass .
    ge rx271_pos, rx271_eos, rx271_fail
    inc rx271_pos
    set_addr $I10, rxquantf274_loop
    rx271_cur."!mark_push"($I275, rx271_pos, $I10)
  rxquantf274_done:
    set_addr $I10, rxcap_276_fail
    ($I12, $I11) = rx271_cur."!mark_peek"($I10)
    rx271_cur."!cursor_pos"($I11)
    ($P10) = rx271_cur."!cursor_start"()
    $P10."!cursor_pass"(rx271_pos, "")
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_276_done
  rxcap_276_fail:
    goto rx271_fail
  rxcap_276_done:
  # rx literal  "}}"
    add $I11, rx271_pos, 2
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    substr $S10, rx271_tgt, $I11, 2
    ne $S10, "}}", rx271_fail
    add rx271_pos, 2
.annotate "line", 104
  # rx pass
    rx271_cur."!cursor_pass"(rx271_pos, "metachar:sym<PIR>")
    rx271_cur."!cursor_debug"("PASS  ", "metachar:sym<PIR>", " at pos=", rx271_pos)
    .return (rx271_cur)
  rx271_fail:
.annotate "line", 3
    (rx271_rep, rx271_pos, $I10, $P10) = rx271_cur."!mark_fail"(0)
    lt rx271_pos, -1, rx271_done
    eq rx271_pos, -1, rx271_fail
    jump $I10
  rx271_done:
    rx271_cur."!cursor_fail"()
    rx271_cur."!cursor_debug"("FAIL  ", "metachar:sym<PIR>")
    .return (rx271_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :subid("89_1256765552.18122") :method
.annotate "line", 3
    new $P273, "ResizablePMCArray"
    push $P273, ":PIR{{"
    .return ($P273)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("90_1256765552.18122") :method
.annotate "line", 108
    $P278 = self."!protoregex"("backslash")
    .return ($P278)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("91_1256765552.18122") :method
.annotate "line", 108
    $P280 = self."!PREFIX__!protoregex"("backslash")
    .return ($P280)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("92_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx282_tgt
    .local int rx282_pos
    .local int rx282_off
    .local int rx282_eos
    .local int rx282_rep
    .local pmc rx282_cur
    (rx282_cur, rx282_pos, rx282_tgt, $I10) = self."!cursor_start"()
    rx282_cur."!cursor_debug"("START ", "backslash:sym<w>")
    .lex unicode:"$\x{a2}", rx282_cur
    length rx282_eos, rx282_tgt
    set rx282_off, 0
    lt $I10, 2, rx282_start
    sub rx282_off, $I10, 1
    substr rx282_tgt, rx282_tgt, rx282_off
  rx282_start:
.annotate "line", 109
  # rx subcapture "sym"
    set_addr $I10, rxcap_285_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx282_pos, rx282_eos, rx282_fail
    sub $I10, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
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
    rx282_cur."!cursor_pass"(rx282_pos, "backslash:sym<w>")
    rx282_cur."!cursor_debug"("PASS  ", "backslash:sym<w>", " at pos=", rx282_pos)
    .return (rx282_cur)
  rx282_fail:
.annotate "line", 3
    (rx282_rep, rx282_pos, $I10, $P10) = rx282_cur."!mark_fail"(0)
    lt rx282_pos, -1, rx282_done
    eq rx282_pos, -1, rx282_fail
    jump $I10
  rx282_done:
    rx282_cur."!cursor_fail"()
    rx282_cur."!cursor_debug"("FAIL  ", "backslash:sym<w>")
    .return (rx282_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :subid("93_1256765552.18122") :method
.annotate "line", 3
    new $P284, "ResizablePMCArray"
    push $P284, "N"
    push $P284, "W"
    push $P284, "S"
    push $P284, "D"
    push $P284, "n"
    push $P284, "w"
    push $P284, "s"
    push $P284, "d"
    .return ($P284)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("94_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx287_tgt
    .local int rx287_pos
    .local int rx287_off
    .local int rx287_eos
    .local int rx287_rep
    .local pmc rx287_cur
    (rx287_cur, rx287_pos, rx287_tgt, $I10) = self."!cursor_start"()
    rx287_cur."!cursor_debug"("START ", "backslash:sym<b>")
    .lex unicode:"$\x{a2}", rx287_cur
    length rx287_eos, rx287_tgt
    set rx287_off, 0
    lt $I10, 2, rx287_start
    sub rx287_off, $I10, 1
    substr rx287_tgt, rx287_tgt, rx287_off
  rx287_start:
.annotate "line", 110
  # rx subcapture "sym"
    set_addr $I10, rxcap_290_fail
    rx287_cur."!mark_push"(0, rx287_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx287_pos, rx287_eos, rx287_fail
    sub $I10, rx287_pos, rx287_off
    substr $S10, rx287_tgt, $I10, 1
    index $I11, "bB", $S10
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
    rx287_cur."!cursor_pass"(rx287_pos, "backslash:sym<b>")
    rx287_cur."!cursor_debug"("PASS  ", "backslash:sym<b>", " at pos=", rx287_pos)
    .return (rx287_cur)
  rx287_fail:
.annotate "line", 3
    (rx287_rep, rx287_pos, $I10, $P10) = rx287_cur."!mark_fail"(0)
    lt rx287_pos, -1, rx287_done
    eq rx287_pos, -1, rx287_fail
    jump $I10
  rx287_done:
    rx287_cur."!cursor_fail"()
    rx287_cur."!cursor_debug"("FAIL  ", "backslash:sym<b>")
    .return (rx287_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :subid("95_1256765552.18122") :method
.annotate "line", 3
    new $P289, "ResizablePMCArray"
    push $P289, "B"
    push $P289, "b"
    .return ($P289)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("96_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx292_tgt
    .local int rx292_pos
    .local int rx292_off
    .local int rx292_eos
    .local int rx292_rep
    .local pmc rx292_cur
    (rx292_cur, rx292_pos, rx292_tgt, $I10) = self."!cursor_start"()
    rx292_cur."!cursor_debug"("START ", "backslash:sym<e>")
    .lex unicode:"$\x{a2}", rx292_cur
    length rx292_eos, rx292_tgt
    set rx292_off, 0
    lt $I10, 2, rx292_start
    sub rx292_off, $I10, 1
    substr rx292_tgt, rx292_tgt, rx292_off
  rx292_start:
.annotate "line", 111
  # rx subcapture "sym"
    set_addr $I10, rxcap_295_fail
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx292_pos, rx292_eos, rx292_fail
    sub $I10, rx292_pos, rx292_off
    substr $S10, rx292_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx292_fail
    inc rx292_pos
    set_addr $I10, rxcap_295_fail
    ($I12, $I11) = rx292_cur."!mark_peek"($I10)
    rx292_cur."!cursor_pos"($I11)
    ($P10) = rx292_cur."!cursor_start"()
    $P10."!cursor_pass"(rx292_pos, "")
    rx292_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_295_done
  rxcap_295_fail:
    goto rx292_fail
  rxcap_295_done:
  # rx pass
    rx292_cur."!cursor_pass"(rx292_pos, "backslash:sym<e>")
    rx292_cur."!cursor_debug"("PASS  ", "backslash:sym<e>", " at pos=", rx292_pos)
    .return (rx292_cur)
  rx292_fail:
.annotate "line", 3
    (rx292_rep, rx292_pos, $I10, $P10) = rx292_cur."!mark_fail"(0)
    lt rx292_pos, -1, rx292_done
    eq rx292_pos, -1, rx292_fail
    jump $I10
  rx292_done:
    rx292_cur."!cursor_fail"()
    rx292_cur."!cursor_debug"("FAIL  ", "backslash:sym<e>")
    .return (rx292_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :subid("97_1256765552.18122") :method
.annotate "line", 3
    new $P294, "ResizablePMCArray"
    push $P294, "E"
    push $P294, "e"
    .return ($P294)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("98_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx297_tgt
    .local int rx297_pos
    .local int rx297_off
    .local int rx297_eos
    .local int rx297_rep
    .local pmc rx297_cur
    (rx297_cur, rx297_pos, rx297_tgt, $I10) = self."!cursor_start"()
    rx297_cur."!cursor_debug"("START ", "backslash:sym<f>")
    .lex unicode:"$\x{a2}", rx297_cur
    length rx297_eos, rx297_tgt
    set rx297_off, 0
    lt $I10, 2, rx297_start
    sub rx297_off, $I10, 1
    substr rx297_tgt, rx297_tgt, rx297_off
  rx297_start:
.annotate "line", 112
  # rx subcapture "sym"
    set_addr $I10, rxcap_300_fail
    rx297_cur."!mark_push"(0, rx297_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx297_pos, rx297_eos, rx297_fail
    sub $I10, rx297_pos, rx297_off
    substr $S10, rx297_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx297_fail
    inc rx297_pos
    set_addr $I10, rxcap_300_fail
    ($I12, $I11) = rx297_cur."!mark_peek"($I10)
    rx297_cur."!cursor_pos"($I11)
    ($P10) = rx297_cur."!cursor_start"()
    $P10."!cursor_pass"(rx297_pos, "")
    rx297_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_300_done
  rxcap_300_fail:
    goto rx297_fail
  rxcap_300_done:
  # rx pass
    rx297_cur."!cursor_pass"(rx297_pos, "backslash:sym<f>")
    rx297_cur."!cursor_debug"("PASS  ", "backslash:sym<f>", " at pos=", rx297_pos)
    .return (rx297_cur)
  rx297_fail:
.annotate "line", 3
    (rx297_rep, rx297_pos, $I10, $P10) = rx297_cur."!mark_fail"(0)
    lt rx297_pos, -1, rx297_done
    eq rx297_pos, -1, rx297_fail
    jump $I10
  rx297_done:
    rx297_cur."!cursor_fail"()
    rx297_cur."!cursor_debug"("FAIL  ", "backslash:sym<f>")
    .return (rx297_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :subid("99_1256765552.18122") :method
.annotate "line", 3
    new $P299, "ResizablePMCArray"
    push $P299, "F"
    push $P299, "f"
    .return ($P299)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("100_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx302_tgt
    .local int rx302_pos
    .local int rx302_off
    .local int rx302_eos
    .local int rx302_rep
    .local pmc rx302_cur
    (rx302_cur, rx302_pos, rx302_tgt, $I10) = self."!cursor_start"()
    rx302_cur."!cursor_debug"("START ", "backslash:sym<h>")
    .lex unicode:"$\x{a2}", rx302_cur
    length rx302_eos, rx302_tgt
    set rx302_off, 0
    lt $I10, 2, rx302_start
    sub rx302_off, $I10, 1
    substr rx302_tgt, rx302_tgt, rx302_off
  rx302_start:
.annotate "line", 113
  # rx subcapture "sym"
    set_addr $I10, rxcap_305_fail
    rx302_cur."!mark_push"(0, rx302_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx302_pos, rx302_eos, rx302_fail
    sub $I10, rx302_pos, rx302_off
    substr $S10, rx302_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx302_fail
    inc rx302_pos
    set_addr $I10, rxcap_305_fail
    ($I12, $I11) = rx302_cur."!mark_peek"($I10)
    rx302_cur."!cursor_pos"($I11)
    ($P10) = rx302_cur."!cursor_start"()
    $P10."!cursor_pass"(rx302_pos, "")
    rx302_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_305_done
  rxcap_305_fail:
    goto rx302_fail
  rxcap_305_done:
  # rx pass
    rx302_cur."!cursor_pass"(rx302_pos, "backslash:sym<h>")
    rx302_cur."!cursor_debug"("PASS  ", "backslash:sym<h>", " at pos=", rx302_pos)
    .return (rx302_cur)
  rx302_fail:
.annotate "line", 3
    (rx302_rep, rx302_pos, $I10, $P10) = rx302_cur."!mark_fail"(0)
    lt rx302_pos, -1, rx302_done
    eq rx302_pos, -1, rx302_fail
    jump $I10
  rx302_done:
    rx302_cur."!cursor_fail"()
    rx302_cur."!cursor_debug"("FAIL  ", "backslash:sym<h>")
    .return (rx302_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :subid("101_1256765552.18122") :method
.annotate "line", 3
    new $P304, "ResizablePMCArray"
    push $P304, "H"
    push $P304, "h"
    .return ($P304)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("102_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx307_tgt
    .local int rx307_pos
    .local int rx307_off
    .local int rx307_eos
    .local int rx307_rep
    .local pmc rx307_cur
    (rx307_cur, rx307_pos, rx307_tgt, $I10) = self."!cursor_start"()
    rx307_cur."!cursor_debug"("START ", "backslash:sym<r>")
    .lex unicode:"$\x{a2}", rx307_cur
    length rx307_eos, rx307_tgt
    set rx307_off, 0
    lt $I10, 2, rx307_start
    sub rx307_off, $I10, 1
    substr rx307_tgt, rx307_tgt, rx307_off
  rx307_start:
.annotate "line", 114
  # rx subcapture "sym"
    set_addr $I10, rxcap_310_fail
    rx307_cur."!mark_push"(0, rx307_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx307_pos, rx307_eos, rx307_fail
    sub $I10, rx307_pos, rx307_off
    substr $S10, rx307_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx307_fail
    inc rx307_pos
    set_addr $I10, rxcap_310_fail
    ($I12, $I11) = rx307_cur."!mark_peek"($I10)
    rx307_cur."!cursor_pos"($I11)
    ($P10) = rx307_cur."!cursor_start"()
    $P10."!cursor_pass"(rx307_pos, "")
    rx307_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_310_done
  rxcap_310_fail:
    goto rx307_fail
  rxcap_310_done:
  # rx pass
    rx307_cur."!cursor_pass"(rx307_pos, "backslash:sym<r>")
    rx307_cur."!cursor_debug"("PASS  ", "backslash:sym<r>", " at pos=", rx307_pos)
    .return (rx307_cur)
  rx307_fail:
.annotate "line", 3
    (rx307_rep, rx307_pos, $I10, $P10) = rx307_cur."!mark_fail"(0)
    lt rx307_pos, -1, rx307_done
    eq rx307_pos, -1, rx307_fail
    jump $I10
  rx307_done:
    rx307_cur."!cursor_fail"()
    rx307_cur."!cursor_debug"("FAIL  ", "backslash:sym<r>")
    .return (rx307_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :subid("103_1256765552.18122") :method
.annotate "line", 3
    new $P309, "ResizablePMCArray"
    push $P309, "R"
    push $P309, "r"
    .return ($P309)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("104_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx312_tgt
    .local int rx312_pos
    .local int rx312_off
    .local int rx312_eos
    .local int rx312_rep
    .local pmc rx312_cur
    (rx312_cur, rx312_pos, rx312_tgt, $I10) = self."!cursor_start"()
    rx312_cur."!cursor_debug"("START ", "backslash:sym<t>")
    .lex unicode:"$\x{a2}", rx312_cur
    length rx312_eos, rx312_tgt
    set rx312_off, 0
    lt $I10, 2, rx312_start
    sub rx312_off, $I10, 1
    substr rx312_tgt, rx312_tgt, rx312_off
  rx312_start:
.annotate "line", 115
  # rx subcapture "sym"
    set_addr $I10, rxcap_315_fail
    rx312_cur."!mark_push"(0, rx312_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx312_pos, rx312_eos, rx312_fail
    sub $I10, rx312_pos, rx312_off
    substr $S10, rx312_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx312_fail
    inc rx312_pos
    set_addr $I10, rxcap_315_fail
    ($I12, $I11) = rx312_cur."!mark_peek"($I10)
    rx312_cur."!cursor_pos"($I11)
    ($P10) = rx312_cur."!cursor_start"()
    $P10."!cursor_pass"(rx312_pos, "")
    rx312_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_315_done
  rxcap_315_fail:
    goto rx312_fail
  rxcap_315_done:
  # rx pass
    rx312_cur."!cursor_pass"(rx312_pos, "backslash:sym<t>")
    rx312_cur."!cursor_debug"("PASS  ", "backslash:sym<t>", " at pos=", rx312_pos)
    .return (rx312_cur)
  rx312_fail:
.annotate "line", 3
    (rx312_rep, rx312_pos, $I10, $P10) = rx312_cur."!mark_fail"(0)
    lt rx312_pos, -1, rx312_done
    eq rx312_pos, -1, rx312_fail
    jump $I10
  rx312_done:
    rx312_cur."!cursor_fail"()
    rx312_cur."!cursor_debug"("FAIL  ", "backslash:sym<t>")
    .return (rx312_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :subid("105_1256765552.18122") :method
.annotate "line", 3
    new $P314, "ResizablePMCArray"
    push $P314, "T"
    push $P314, "t"
    .return ($P314)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("106_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx317_tgt
    .local int rx317_pos
    .local int rx317_off
    .local int rx317_eos
    .local int rx317_rep
    .local pmc rx317_cur
    (rx317_cur, rx317_pos, rx317_tgt, $I10) = self."!cursor_start"()
    rx317_cur."!cursor_debug"("START ", "backslash:sym<v>")
    .lex unicode:"$\x{a2}", rx317_cur
    length rx317_eos, rx317_tgt
    set rx317_off, 0
    lt $I10, 2, rx317_start
    sub rx317_off, $I10, 1
    substr rx317_tgt, rx317_tgt, rx317_off
  rx317_start:
.annotate "line", 116
  # rx subcapture "sym"
    set_addr $I10, rxcap_320_fail
    rx317_cur."!mark_push"(0, rx317_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx317_pos, rx317_eos, rx317_fail
    sub $I10, rx317_pos, rx317_off
    substr $S10, rx317_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx317_fail
    inc rx317_pos
    set_addr $I10, rxcap_320_fail
    ($I12, $I11) = rx317_cur."!mark_peek"($I10)
    rx317_cur."!cursor_pos"($I11)
    ($P10) = rx317_cur."!cursor_start"()
    $P10."!cursor_pass"(rx317_pos, "")
    rx317_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_320_done
  rxcap_320_fail:
    goto rx317_fail
  rxcap_320_done:
  # rx pass
    rx317_cur."!cursor_pass"(rx317_pos, "backslash:sym<v>")
    rx317_cur."!cursor_debug"("PASS  ", "backslash:sym<v>", " at pos=", rx317_pos)
    .return (rx317_cur)
  rx317_fail:
.annotate "line", 3
    (rx317_rep, rx317_pos, $I10, $P10) = rx317_cur."!mark_fail"(0)
    lt rx317_pos, -1, rx317_done
    eq rx317_pos, -1, rx317_fail
    jump $I10
  rx317_done:
    rx317_cur."!cursor_fail"()
    rx317_cur."!cursor_debug"("FAIL  ", "backslash:sym<v>")
    .return (rx317_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :subid("107_1256765552.18122") :method
.annotate "line", 3
    new $P319, "ResizablePMCArray"
    push $P319, "V"
    push $P319, "v"
    .return ($P319)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("108_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx322_tgt
    .local int rx322_pos
    .local int rx322_off
    .local int rx322_eos
    .local int rx322_rep
    .local pmc rx322_cur
    (rx322_cur, rx322_pos, rx322_tgt, $I10) = self."!cursor_start"()
    rx322_cur."!cursor_debug"("START ", "backslash:sym<A>")
    .lex unicode:"$\x{a2}", rx322_cur
    length rx322_eos, rx322_tgt
    set rx322_off, 0
    lt $I10, 2, rx322_start
    sub rx322_off, $I10, 1
    substr rx322_tgt, rx322_tgt, rx322_off
  rx322_start:
.annotate "line", 117
  # rx literal  "A"
    add $I11, rx322_pos, 1
    gt $I11, rx322_eos, rx322_fail
    sub $I11, rx322_pos, rx322_off
    substr $S10, rx322_tgt, $I11, 1
    ne $S10, "A", rx322_fail
    add rx322_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx322_cur."!cursor_pos"(rx322_pos)
    $P10 = rx322_cur."obs"("\\\\A as beginning-of-string matcher;^")
    unless $P10, rx322_fail
    rx322_pos = $P10."pos"()
  # rx pass
    rx322_cur."!cursor_pass"(rx322_pos, "backslash:sym<A>")
    rx322_cur."!cursor_debug"("PASS  ", "backslash:sym<A>", " at pos=", rx322_pos)
    .return (rx322_cur)
  rx322_fail:
.annotate "line", 3
    (rx322_rep, rx322_pos, $I10, $P10) = rx322_cur."!mark_fail"(0)
    lt rx322_pos, -1, rx322_done
    eq rx322_pos, -1, rx322_fail
    jump $I10
  rx322_done:
    rx322_cur."!cursor_fail"()
    rx322_cur."!cursor_debug"("FAIL  ", "backslash:sym<A>")
    .return (rx322_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :subid("109_1256765552.18122") :method
.annotate "line", 3
    $P324 = self."!PREFIX__!subrule"("obs", "A")
    new $P325, "ResizablePMCArray"
    push $P325, $P324
    .return ($P325)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("110_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx327_tgt
    .local int rx327_pos
    .local int rx327_off
    .local int rx327_eos
    .local int rx327_rep
    .local pmc rx327_cur
    (rx327_cur, rx327_pos, rx327_tgt, $I10) = self."!cursor_start"()
    rx327_cur."!cursor_debug"("START ", "backslash:sym<z>")
    .lex unicode:"$\x{a2}", rx327_cur
    length rx327_eos, rx327_tgt
    set rx327_off, 0
    lt $I10, 2, rx327_start
    sub rx327_off, $I10, 1
    substr rx327_tgt, rx327_tgt, rx327_off
  rx327_start:
.annotate "line", 118
  # rx literal  "z"
    add $I11, rx327_pos, 1
    gt $I11, rx327_eos, rx327_fail
    sub $I11, rx327_pos, rx327_off
    substr $S10, rx327_tgt, $I11, 1
    ne $S10, "z", rx327_fail
    add rx327_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx327_cur."!cursor_pos"(rx327_pos)
    $P10 = rx327_cur."obs"("\\\\z as end-of-string matcher;$")
    unless $P10, rx327_fail
    rx327_pos = $P10."pos"()
  # rx pass
    rx327_cur."!cursor_pass"(rx327_pos, "backslash:sym<z>")
    rx327_cur."!cursor_debug"("PASS  ", "backslash:sym<z>", " at pos=", rx327_pos)
    .return (rx327_cur)
  rx327_fail:
.annotate "line", 3
    (rx327_rep, rx327_pos, $I10, $P10) = rx327_cur."!mark_fail"(0)
    lt rx327_pos, -1, rx327_done
    eq rx327_pos, -1, rx327_fail
    jump $I10
  rx327_done:
    rx327_cur."!cursor_fail"()
    rx327_cur."!cursor_debug"("FAIL  ", "backslash:sym<z>")
    .return (rx327_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :subid("111_1256765552.18122") :method
.annotate "line", 3
    $P329 = self."!PREFIX__!subrule"("obs", "z")
    new $P330, "ResizablePMCArray"
    push $P330, $P329
    .return ($P330)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("112_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx332_tgt
    .local int rx332_pos
    .local int rx332_off
    .local int rx332_eos
    .local int rx332_rep
    .local pmc rx332_cur
    (rx332_cur, rx332_pos, rx332_tgt, $I10) = self."!cursor_start"()
    rx332_cur."!cursor_debug"("START ", "backslash:sym<Z>")
    .lex unicode:"$\x{a2}", rx332_cur
    length rx332_eos, rx332_tgt
    set rx332_off, 0
    lt $I10, 2, rx332_start
    sub rx332_off, $I10, 1
    substr rx332_tgt, rx332_tgt, rx332_off
  rx332_start:
.annotate "line", 119
  # rx literal  "Z"
    add $I11, rx332_pos, 1
    gt $I11, rx332_eos, rx332_fail
    sub $I11, rx332_pos, rx332_off
    substr $S10, rx332_tgt, $I11, 1
    ne $S10, "Z", rx332_fail
    add rx332_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."obs"("\\\\Z as end-of-string matcher;\\\\n?$")
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
  # rx pass
    rx332_cur."!cursor_pass"(rx332_pos, "backslash:sym<Z>")
    rx332_cur."!cursor_debug"("PASS  ", "backslash:sym<Z>", " at pos=", rx332_pos)
    .return (rx332_cur)
  rx332_fail:
.annotate "line", 3
    (rx332_rep, rx332_pos, $I10, $P10) = rx332_cur."!mark_fail"(0)
    lt rx332_pos, -1, rx332_done
    eq rx332_pos, -1, rx332_fail
    jump $I10
  rx332_done:
    rx332_cur."!cursor_fail"()
    rx332_cur."!cursor_debug"("FAIL  ", "backslash:sym<Z>")
    .return (rx332_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :subid("113_1256765552.18122") :method
.annotate "line", 3
    $P334 = self."!PREFIX__!subrule"("obs", "Z")
    new $P335, "ResizablePMCArray"
    push $P335, $P334
    .return ($P335)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("114_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx337_tgt
    .local int rx337_pos
    .local int rx337_off
    .local int rx337_eos
    .local int rx337_rep
    .local pmc rx337_cur
    (rx337_cur, rx337_pos, rx337_tgt, $I10) = self."!cursor_start"()
    rx337_cur."!cursor_debug"("START ", "backslash:sym<Q>")
    .lex unicode:"$\x{a2}", rx337_cur
    length rx337_eos, rx337_tgt
    set rx337_off, 0
    lt $I10, 2, rx337_start
    sub rx337_off, $I10, 1
    substr rx337_tgt, rx337_tgt, rx337_off
  rx337_start:
.annotate "line", 120
  # rx literal  "Q"
    add $I11, rx337_pos, 1
    gt $I11, rx337_eos, rx337_fail
    sub $I11, rx337_pos, rx337_off
    substr $S10, rx337_tgt, $I11, 1
    ne $S10, "Q", rx337_fail
    add rx337_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx337_cur."!cursor_pos"(rx337_pos)
    $P10 = rx337_cur."obs"("\\\\Q as quotemeta;quotes or literal variable match")
    unless $P10, rx337_fail
    rx337_pos = $P10."pos"()
  # rx pass
    rx337_cur."!cursor_pass"(rx337_pos, "backslash:sym<Q>")
    rx337_cur."!cursor_debug"("PASS  ", "backslash:sym<Q>", " at pos=", rx337_pos)
    .return (rx337_cur)
  rx337_fail:
.annotate "line", 3
    (rx337_rep, rx337_pos, $I10, $P10) = rx337_cur."!mark_fail"(0)
    lt rx337_pos, -1, rx337_done
    eq rx337_pos, -1, rx337_fail
    jump $I10
  rx337_done:
    rx337_cur."!cursor_fail"()
    rx337_cur."!cursor_debug"("FAIL  ", "backslash:sym<Q>")
    .return (rx337_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :subid("115_1256765552.18122") :method
.annotate "line", 3
    $P339 = self."!PREFIX__!subrule"("obs", "Q")
    new $P340, "ResizablePMCArray"
    push $P340, $P339
    .return ($P340)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("116_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx342_tgt
    .local int rx342_pos
    .local int rx342_off
    .local int rx342_eos
    .local int rx342_rep
    .local pmc rx342_cur
    (rx342_cur, rx342_pos, rx342_tgt, $I10) = self."!cursor_start"()
    rx342_cur."!cursor_debug"("START ", "backslash:sym<misc>")
    .lex unicode:"$\x{a2}", rx342_cur
    length rx342_eos, rx342_tgt
    set rx342_off, 0
    lt $I10, 2, rx342_start
    sub rx342_off, $I10, 1
    substr rx342_tgt, rx342_tgt, rx342_off
  rx342_start:
.annotate "line", 121
  # rx charclass W
    ge rx342_pos, rx342_eos, rx342_fail
    sub $I10, rx342_pos, rx342_off
    is_cclass $I11, 8192, rx342_tgt, $I10
    if $I11, rx342_fail
    inc rx342_pos
  # rx pass
    rx342_cur."!cursor_pass"(rx342_pos, "backslash:sym<misc>")
    rx342_cur."!cursor_debug"("PASS  ", "backslash:sym<misc>", " at pos=", rx342_pos)
    .return (rx342_cur)
  rx342_fail:
.annotate "line", 3
    (rx342_rep, rx342_pos, $I10, $P10) = rx342_cur."!mark_fail"(0)
    lt rx342_pos, -1, rx342_done
    eq rx342_pos, -1, rx342_fail
    jump $I10
  rx342_done:
    rx342_cur."!cursor_fail"()
    rx342_cur."!cursor_debug"("FAIL  ", "backslash:sym<misc>")
    .return (rx342_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :subid("117_1256765552.18122") :method
.annotate "line", 3
    new $P344, "ResizablePMCArray"
    push $P344, ""
    .return ($P344)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("118_1256765552.18122") :method
.annotate "line", 123
    $P346 = self."!protoregex"("assertion")
    .return ($P346)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("119_1256765552.18122") :method
.annotate "line", 123
    $P348 = self."!PREFIX__!protoregex"("assertion")
    .return ($P348)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("120_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .const 'Sub' $P356 = "122_1256765552.18122" 
    capture_lex $P356
    .local string rx350_tgt
    .local int rx350_pos
    .local int rx350_off
    .local int rx350_eos
    .local int rx350_rep
    .local pmc rx350_cur
    (rx350_cur, rx350_pos, rx350_tgt, $I10) = self."!cursor_start"()
    rx350_cur."!cursor_debug"("START ", "assertion:sym<?>")
    .lex unicode:"$\x{a2}", rx350_cur
    length rx350_eos, rx350_tgt
    set rx350_off, 0
    lt $I10, 2, rx350_start
    sub rx350_off, $I10, 1
    substr rx350_tgt, rx350_tgt, rx350_off
  rx350_start:
.annotate "line", 125
  # rx literal  "?"
    add $I11, rx350_pos, 1
    gt $I11, rx350_eos, rx350_fail
    sub $I11, rx350_pos, rx350_off
    substr $S10, rx350_tgt, $I11, 1
    ne $S10, "?", rx350_fail
    add rx350_pos, 1
  alt354_0:
    set_addr $I10, alt354_1
    rx350_cur."!mark_push"(0, rx350_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx350_cur."!cursor_pos"(rx350_pos)
    .const 'Sub' $P356 = "122_1256765552.18122" 
    capture_lex $P356
    $P10 = rx350_cur."before"($P356)
    unless $P10, rx350_fail
    goto alt354_end
  alt354_1:
  # rx subrule "assertion" subtype=capture negate=
    rx350_cur."!cursor_pos"(rx350_pos)
    $P10 = rx350_cur."assertion"()
    unless $P10, rx350_fail
    rx350_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx350_pos = $P10."pos"()
  alt354_end:
  # rx pass
    rx350_cur."!cursor_pass"(rx350_pos, "assertion:sym<?>")
    rx350_cur."!cursor_debug"("PASS  ", "assertion:sym<?>", " at pos=", rx350_pos)
    .return (rx350_cur)
  rx350_fail:
.annotate "line", 3
    (rx350_rep, rx350_pos, $I10, $P10) = rx350_cur."!mark_fail"(0)
    lt rx350_pos, -1, rx350_done
    eq rx350_pos, -1, rx350_fail
    jump $I10
  rx350_done:
    rx350_cur."!cursor_fail"()
    rx350_cur."!cursor_debug"("FAIL  ", "assertion:sym<?>")
    .return (rx350_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :subid("121_1256765552.18122") :method
.annotate "line", 3
    $P352 = self."!PREFIX__!subrule"("assertion", "?")
    new $P353, "ResizablePMCArray"
    push $P353, $P352
    push $P353, "?"
    .return ($P353)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block355"  :anon :subid("122_1256765552.18122") :method :outer("120_1256765552.18122")
.annotate "line", 125
    .local string rx357_tgt
    .local int rx357_pos
    .local int rx357_off
    .local int rx357_eos
    .local int rx357_rep
    .local pmc rx357_cur
    (rx357_cur, rx357_pos, rx357_tgt, $I10) = self."!cursor_start"()
    rx357_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx357_cur
    length rx357_eos, rx357_tgt
    set rx357_off, 0
    lt $I10, 2, rx357_start
    sub rx357_off, $I10, 1
    substr rx357_tgt, rx357_tgt, rx357_off
  rx357_start:
    ge rx357_pos, 0, rxscan358_done
  rxscan358_loop:
    ($P10) = rx357_cur."from"()
    inc $P10
    set rx357_pos, $P10
    ge rx357_pos, rx357_eos, rxscan358_done
    set_addr $I10, rxscan358_loop
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
  rxscan358_done:
  # rx literal  ">"
    add $I11, rx357_pos, 1
    gt $I11, rx357_eos, rx357_fail
    sub $I11, rx357_pos, rx357_off
    substr $S10, rx357_tgt, $I11, 1
    ne $S10, ">", rx357_fail
    add rx357_pos, 1
  # rx pass
    rx357_cur."!cursor_pass"(rx357_pos, "")
    rx357_cur."!cursor_debug"("PASS  ", "", " at pos=", rx357_pos)
    .return (rx357_cur)
  rx357_fail:
    (rx357_rep, rx357_pos, $I10, $P10) = rx357_cur."!mark_fail"(0)
    lt rx357_pos, -1, rx357_done
    eq rx357_pos, -1, rx357_fail
    jump $I10
  rx357_done:
    rx357_cur."!cursor_fail"()
    rx357_cur."!cursor_debug"("FAIL  ", "")
    .return (rx357_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("123_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .const 'Sub' $P366 = "125_1256765552.18122" 
    capture_lex $P366
    .local string rx360_tgt
    .local int rx360_pos
    .local int rx360_off
    .local int rx360_eos
    .local int rx360_rep
    .local pmc rx360_cur
    (rx360_cur, rx360_pos, rx360_tgt, $I10) = self."!cursor_start"()
    rx360_cur."!cursor_debug"("START ", "assertion:sym<!>")
    .lex unicode:"$\x{a2}", rx360_cur
    length rx360_eos, rx360_tgt
    set rx360_off, 0
    lt $I10, 2, rx360_start
    sub rx360_off, $I10, 1
    substr rx360_tgt, rx360_tgt, rx360_off
  rx360_start:
.annotate "line", 126
  # rx literal  "!"
    add $I11, rx360_pos, 1
    gt $I11, rx360_eos, rx360_fail
    sub $I11, rx360_pos, rx360_off
    substr $S10, rx360_tgt, $I11, 1
    ne $S10, "!", rx360_fail
    add rx360_pos, 1
  alt364_0:
    set_addr $I10, alt364_1
    rx360_cur."!mark_push"(0, rx360_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx360_cur."!cursor_pos"(rx360_pos)
    .const 'Sub' $P366 = "125_1256765552.18122" 
    capture_lex $P366
    $P10 = rx360_cur."before"($P366)
    unless $P10, rx360_fail
    goto alt364_end
  alt364_1:
  # rx subrule "assertion" subtype=capture negate=
    rx360_cur."!cursor_pos"(rx360_pos)
    $P10 = rx360_cur."assertion"()
    unless $P10, rx360_fail
    rx360_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx360_pos = $P10."pos"()
  alt364_end:
  # rx pass
    rx360_cur."!cursor_pass"(rx360_pos, "assertion:sym<!>")
    rx360_cur."!cursor_debug"("PASS  ", "assertion:sym<!>", " at pos=", rx360_pos)
    .return (rx360_cur)
  rx360_fail:
.annotate "line", 3
    (rx360_rep, rx360_pos, $I10, $P10) = rx360_cur."!mark_fail"(0)
    lt rx360_pos, -1, rx360_done
    eq rx360_pos, -1, rx360_fail
    jump $I10
  rx360_done:
    rx360_cur."!cursor_fail"()
    rx360_cur."!cursor_debug"("FAIL  ", "assertion:sym<!>")
    .return (rx360_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :subid("124_1256765552.18122") :method
.annotate "line", 3
    $P362 = self."!PREFIX__!subrule"("assertion", "!")
    new $P363, "ResizablePMCArray"
    push $P363, $P362
    push $P363, "!"
    .return ($P363)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block365"  :anon :subid("125_1256765552.18122") :method :outer("123_1256765552.18122")
.annotate "line", 126
    .local string rx367_tgt
    .local int rx367_pos
    .local int rx367_off
    .local int rx367_eos
    .local int rx367_rep
    .local pmc rx367_cur
    (rx367_cur, rx367_pos, rx367_tgt, $I10) = self."!cursor_start"()
    rx367_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx367_cur
    length rx367_eos, rx367_tgt
    set rx367_off, 0
    lt $I10, 2, rx367_start
    sub rx367_off, $I10, 1
    substr rx367_tgt, rx367_tgt, rx367_off
  rx367_start:
    ge rx367_pos, 0, rxscan368_done
  rxscan368_loop:
    ($P10) = rx367_cur."from"()
    inc $P10
    set rx367_pos, $P10
    ge rx367_pos, rx367_eos, rxscan368_done
    set_addr $I10, rxscan368_loop
    rx367_cur."!mark_push"(0, rx367_pos, $I10)
  rxscan368_done:
  # rx literal  ">"
    add $I11, rx367_pos, 1
    gt $I11, rx367_eos, rx367_fail
    sub $I11, rx367_pos, rx367_off
    substr $S10, rx367_tgt, $I11, 1
    ne $S10, ">", rx367_fail
    add rx367_pos, 1
  # rx pass
    rx367_cur."!cursor_pass"(rx367_pos, "")
    rx367_cur."!cursor_debug"("PASS  ", "", " at pos=", rx367_pos)
    .return (rx367_cur)
  rx367_fail:
    (rx367_rep, rx367_pos, $I10, $P10) = rx367_cur."!mark_fail"(0)
    lt rx367_pos, -1, rx367_done
    eq rx367_pos, -1, rx367_fail
    jump $I10
  rx367_done:
    rx367_cur."!cursor_fail"()
    rx367_cur."!cursor_debug"("FAIL  ", "")
    .return (rx367_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("126_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx370_tgt
    .local int rx370_pos
    .local int rx370_off
    .local int rx370_eos
    .local int rx370_rep
    .local pmc rx370_cur
    (rx370_cur, rx370_pos, rx370_tgt, $I10) = self."!cursor_start"()
    rx370_cur."!cursor_debug"("START ", "assertion:sym<method>")
    .lex unicode:"$\x{a2}", rx370_cur
    length rx370_eos, rx370_tgt
    set rx370_off, 0
    lt $I10, 2, rx370_start
    sub rx370_off, $I10, 1
    substr rx370_tgt, rx370_tgt, rx370_off
  rx370_start:
.annotate "line", 129
  # rx literal  "."
    add $I11, rx370_pos, 1
    gt $I11, rx370_eos, rx370_fail
    sub $I11, rx370_pos, rx370_off
    substr $S10, rx370_tgt, $I11, 1
    ne $S10, ".", rx370_fail
    add rx370_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx370_cur."!cursor_pos"(rx370_pos)
    $P10 = rx370_cur."assertion"()
    unless $P10, rx370_fail
    rx370_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx370_pos = $P10."pos"()
.annotate "line", 128
  # rx pass
    rx370_cur."!cursor_pass"(rx370_pos, "assertion:sym<method>")
    rx370_cur."!cursor_debug"("PASS  ", "assertion:sym<method>", " at pos=", rx370_pos)
    .return (rx370_cur)
  rx370_fail:
.annotate "line", 3
    (rx370_rep, rx370_pos, $I10, $P10) = rx370_cur."!mark_fail"(0)
    lt rx370_pos, -1, rx370_done
    eq rx370_pos, -1, rx370_fail
    jump $I10
  rx370_done:
    rx370_cur."!cursor_fail"()
    rx370_cur."!cursor_debug"("FAIL  ", "assertion:sym<method>")
    .return (rx370_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :subid("127_1256765552.18122") :method
.annotate "line", 3
    $P372 = self."!PREFIX__!subrule"("assertion", ".")
    new $P373, "ResizablePMCArray"
    push $P373, $P372
    .return ($P373)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("128_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .const 'Sub' $P382 = "130_1256765552.18122" 
    capture_lex $P382
    .local string rx375_tgt
    .local int rx375_pos
    .local int rx375_off
    .local int rx375_eos
    .local int rx375_rep
    .local pmc rx375_cur
    (rx375_cur, rx375_pos, rx375_tgt, $I10) = self."!cursor_start"()
    rx375_cur."!cursor_debug"("START ", "assertion:sym<name>")
    rx375_cur."!cursor_caparray"("nibbler", "arglist", "assertion")
    .lex unicode:"$\x{a2}", rx375_cur
    length rx375_eos, rx375_tgt
    set rx375_off, 0
    lt $I10, 2, rx375_start
    sub rx375_off, $I10, 1
    substr rx375_tgt, rx375_tgt, rx375_off
  rx375_start:
.annotate "line", 133
  # rx subcapture "longname"
    set_addr $I10, rxcap_378_fail
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx375_pos, rx375_off
    find_not_cclass $I11, 8192, rx375_tgt, $I10, rx375_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx375_fail
    add rx375_pos, rx375_off, $I11
    set_addr $I10, rxcap_378_fail
    ($I12, $I11) = rx375_cur."!mark_peek"($I10)
    rx375_cur."!cursor_pos"($I11)
    ($P10) = rx375_cur."!cursor_start"()
    $P10."!cursor_pass"(rx375_pos, "")
    rx375_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    goto rxcap_378_done
  rxcap_378_fail:
    goto rx375_fail
  rxcap_378_done:
.annotate "line", 140
  # rx rxquantr379 ** 0..1
    set_addr $I385, rxquantr379_done
    rx375_cur."!mark_push"(0, rx375_pos, $I385)
  rxquantr379_loop:
  alt380_0:
.annotate "line", 134
    set_addr $I10, alt380_1
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
.annotate "line", 135
  # rx subrule "before" subtype=zerowidth negate=
    rx375_cur."!cursor_pos"(rx375_pos)
    .const 'Sub' $P382 = "130_1256765552.18122" 
    capture_lex $P382
    $P10 = rx375_cur."before"($P382)
    unless $P10, rx375_fail
    goto alt380_end
  alt380_1:
    set_addr $I10, alt380_2
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
.annotate "line", 136
  # rx literal  "="
    add $I11, rx375_pos, 1
    gt $I11, rx375_eos, rx375_fail
    sub $I11, rx375_pos, rx375_off
    substr $S10, rx375_tgt, $I11, 1
    ne $S10, "=", rx375_fail
    add rx375_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx375_cur."!cursor_pos"(rx375_pos)
    $P10 = rx375_cur."assertion"()
    unless $P10, rx375_fail
    rx375_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx375_pos = $P10."pos"()
    goto alt380_end
  alt380_2:
    set_addr $I10, alt380_3
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
.annotate "line", 137
  # rx literal  ":"
    add $I11, rx375_pos, 1
    gt $I11, rx375_eos, rx375_fail
    sub $I11, rx375_pos, rx375_off
    substr $S10, rx375_tgt, $I11, 1
    ne $S10, ":", rx375_fail
    add rx375_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx375_cur."!cursor_pos"(rx375_pos)
    $P10 = rx375_cur."arglist"()
    unless $P10, rx375_fail
    rx375_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx375_pos = $P10."pos"()
    goto alt380_end
  alt380_3:
    set_addr $I10, alt380_4
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
.annotate "line", 138
  # rx literal  "("
    add $I11, rx375_pos, 1
    gt $I11, rx375_eos, rx375_fail
    sub $I11, rx375_pos, rx375_off
    substr $S10, rx375_tgt, $I11, 1
    ne $S10, "(", rx375_fail
    add rx375_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx375_cur."!cursor_pos"(rx375_pos)
    $P10 = rx375_cur."arglist"()
    unless $P10, rx375_fail
    rx375_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx375_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx375_pos, 1
    gt $I11, rx375_eos, rx375_fail
    sub $I11, rx375_pos, rx375_off
    substr $S10, rx375_tgt, $I11, 1
    ne $S10, ")", rx375_fail
    add rx375_pos, 1
    goto alt380_end
  alt380_4:
.annotate "line", 139
  # rx subrule "normspace" subtype=method negate=
    rx375_cur."!cursor_pos"(rx375_pos)
    $P10 = rx375_cur."normspace"()
    unless $P10, rx375_fail
    rx375_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx375_cur."!cursor_pos"(rx375_pos)
    $P10 = rx375_cur."nibbler"()
    unless $P10, rx375_fail
    rx375_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx375_pos = $P10."pos"()
  alt380_end:
.annotate "line", 140
    (rx375_rep) = rx375_cur."!mark_commit"($I385)
  rxquantr379_done:
.annotate "line", 132
  # rx pass
    rx375_cur."!cursor_pass"(rx375_pos, "assertion:sym<name>")
    rx375_cur."!cursor_debug"("PASS  ", "assertion:sym<name>", " at pos=", rx375_pos)
    .return (rx375_cur)
  rx375_fail:
.annotate "line", 3
    (rx375_rep, rx375_pos, $I10, $P10) = rx375_cur."!mark_fail"(0)
    lt rx375_pos, -1, rx375_done
    eq rx375_pos, -1, rx375_fail
    jump $I10
  rx375_done:
    rx375_cur."!cursor_fail"()
    rx375_cur."!cursor_debug"("FAIL  ", "assertion:sym<name>")
    .return (rx375_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :subid("129_1256765552.18122") :method
.annotate "line", 3
    new $P377, "ResizablePMCArray"
    push $P377, ""
    .return ($P377)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block381"  :anon :subid("130_1256765552.18122") :method :outer("128_1256765552.18122")
.annotate "line", 135
    .local string rx383_tgt
    .local int rx383_pos
    .local int rx383_off
    .local int rx383_eos
    .local int rx383_rep
    .local pmc rx383_cur
    (rx383_cur, rx383_pos, rx383_tgt, $I10) = self."!cursor_start"()
    rx383_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx383_cur
    length rx383_eos, rx383_tgt
    set rx383_off, 0
    lt $I10, 2, rx383_start
    sub rx383_off, $I10, 1
    substr rx383_tgt, rx383_tgt, rx383_off
  rx383_start:
    ge rx383_pos, 0, rxscan384_done
  rxscan384_loop:
    ($P10) = rx383_cur."from"()
    inc $P10
    set rx383_pos, $P10
    ge rx383_pos, rx383_eos, rxscan384_done
    set_addr $I10, rxscan384_loop
    rx383_cur."!mark_push"(0, rx383_pos, $I10)
  rxscan384_done:
  # rx literal  ">"
    add $I11, rx383_pos, 1
    gt $I11, rx383_eos, rx383_fail
    sub $I11, rx383_pos, rx383_off
    substr $S10, rx383_tgt, $I11, 1
    ne $S10, ">", rx383_fail
    add rx383_pos, 1
  # rx pass
    rx383_cur."!cursor_pass"(rx383_pos, "")
    rx383_cur."!cursor_debug"("PASS  ", "", " at pos=", rx383_pos)
    .return (rx383_cur)
  rx383_fail:
    (rx383_rep, rx383_pos, $I10, $P10) = rx383_cur."!mark_fail"(0)
    lt rx383_pos, -1, rx383_done
    eq rx383_pos, -1, rx383_fail
    jump $I10
  rx383_done:
    rx383_cur."!cursor_fail"()
    rx383_cur."!cursor_debug"("FAIL  ", "")
    .return (rx383_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("131_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .const 'Sub' $P391 = "133_1256765552.18122" 
    capture_lex $P391
    .local string rx387_tgt
    .local int rx387_pos
    .local int rx387_off
    .local int rx387_eos
    .local int rx387_rep
    .local pmc rx387_cur
    (rx387_cur, rx387_pos, rx387_tgt, $I10) = self."!cursor_start"()
    rx387_cur."!cursor_debug"("START ", "assertion:sym<[>")
    rx387_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx387_cur
    length rx387_eos, rx387_tgt
    set rx387_off, 0
    lt $I10, 2, rx387_start
    sub rx387_off, $I10, 1
    substr rx387_tgt, rx387_tgt, rx387_off
  rx387_start:
.annotate "line", 143
  # rx subrule "before" subtype=zerowidth negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    .const 'Sub' $P391 = "133_1256765552.18122" 
    capture_lex $P391
    $P10 = rx387_cur."before"($P391)
    unless $P10, rx387_fail
  # rx rxquantr395 ** 1..*
    set_addr $I396, rxquantr395_done
    rx387_cur."!mark_push"(0, -1, $I396)
  rxquantr395_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."cclass_elem"()
    unless $P10, rx387_fail
    rx387_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx387_pos = $P10."pos"()
    (rx387_rep) = rx387_cur."!mark_commit"($I396)
    rx387_cur."!mark_push"(rx387_rep, rx387_pos, $I396)
    goto rxquantr395_loop
  rxquantr395_done:
  # rx pass
    rx387_cur."!cursor_pass"(rx387_pos, "assertion:sym<[>")
    rx387_cur."!cursor_debug"("PASS  ", "assertion:sym<[>", " at pos=", rx387_pos)
    .return (rx387_cur)
  rx387_fail:
.annotate "line", 3
    (rx387_rep, rx387_pos, $I10, $P10) = rx387_cur."!mark_fail"(0)
    lt rx387_pos, -1, rx387_done
    eq rx387_pos, -1, rx387_fail
    jump $I10
  rx387_done:
    rx387_cur."!cursor_fail"()
    rx387_cur."!cursor_debug"("FAIL  ", "assertion:sym<[>")
    .return (rx387_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :subid("132_1256765552.18122") :method
.annotate "line", 3
    new $P389, "ResizablePMCArray"
    push $P389, ""
    .return ($P389)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block390"  :anon :subid("133_1256765552.18122") :method :outer("131_1256765552.18122")
.annotate "line", 143
    .local string rx392_tgt
    .local int rx392_pos
    .local int rx392_off
    .local int rx392_eos
    .local int rx392_rep
    .local pmc rx392_cur
    (rx392_cur, rx392_pos, rx392_tgt, $I10) = self."!cursor_start"()
    rx392_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx392_cur
    length rx392_eos, rx392_tgt
    set rx392_off, 0
    lt $I10, 2, rx392_start
    sub rx392_off, $I10, 1
    substr rx392_tgt, rx392_tgt, rx392_off
  rx392_start:
    ge rx392_pos, 0, rxscan393_done
  rxscan393_loop:
    ($P10) = rx392_cur."from"()
    inc $P10
    set rx392_pos, $P10
    ge rx392_pos, rx392_eos, rxscan393_done
    set_addr $I10, rxscan393_loop
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
  rxscan393_done:
  alt394_0:
    set_addr $I10, alt394_1
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
  # rx literal  "["
    add $I11, rx392_pos, 1
    gt $I11, rx392_eos, rx392_fail
    sub $I11, rx392_pos, rx392_off
    substr $S10, rx392_tgt, $I11, 1
    ne $S10, "[", rx392_fail
    add rx392_pos, 1
    goto alt394_end
  alt394_1:
    set_addr $I10, alt394_2
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
  # rx literal  "+"
    add $I11, rx392_pos, 1
    gt $I11, rx392_eos, rx392_fail
    sub $I11, rx392_pos, rx392_off
    substr $S10, rx392_tgt, $I11, 1
    ne $S10, "+", rx392_fail
    add rx392_pos, 1
    goto alt394_end
  alt394_2:
  # rx literal  "-"
    add $I11, rx392_pos, 1
    gt $I11, rx392_eos, rx392_fail
    sub $I11, rx392_pos, rx392_off
    substr $S10, rx392_tgt, $I11, 1
    ne $S10, "-", rx392_fail
    add rx392_pos, 1
  alt394_end:
  # rx pass
    rx392_cur."!cursor_pass"(rx392_pos, "")
    rx392_cur."!cursor_debug"("PASS  ", "", " at pos=", rx392_pos)
    .return (rx392_cur)
  rx392_fail:
    (rx392_rep, rx392_pos, $I10, $P10) = rx392_cur."!mark_fail"(0)
    lt rx392_pos, -1, rx392_done
    eq rx392_pos, -1, rx392_fail
    jump $I10
  rx392_done:
    rx392_cur."!cursor_fail"()
    rx392_cur."!cursor_debug"("FAIL  ", "")
    .return (rx392_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("134_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .const 'Sub' $P408 = "136_1256765552.18122" 
    capture_lex $P408
    .local string rx398_tgt
    .local int rx398_pos
    .local int rx398_off
    .local int rx398_eos
    .local int rx398_rep
    .local pmc rx398_cur
    (rx398_cur, rx398_pos, rx398_tgt, $I10) = self."!cursor_start"()
    rx398_cur."!cursor_debug"("START ", "cclass_elem")
    rx398_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx398_cur
    length rx398_eos, rx398_tgt
    set rx398_off, 0
    lt $I10, 2, rx398_start
    sub rx398_off, $I10, 1
    substr rx398_tgt, rx398_tgt, rx398_off
  rx398_start:
.annotate "line", 146
  # rx subcapture "sign"
    set_addr $I10, rxcap_402_fail
    rx398_cur."!mark_push"(0, rx398_pos, $I10)
  alt401_0:
    set_addr $I10, alt401_1
    rx398_cur."!mark_push"(0, rx398_pos, $I10)
  # rx literal  "+"
    add $I11, rx398_pos, 1
    gt $I11, rx398_eos, rx398_fail
    sub $I11, rx398_pos, rx398_off
    substr $S10, rx398_tgt, $I11, 1
    ne $S10, "+", rx398_fail
    add rx398_pos, 1
    goto alt401_end
  alt401_1:
    set_addr $I10, alt401_2
    rx398_cur."!mark_push"(0, rx398_pos, $I10)
  # rx literal  "-"
    add $I11, rx398_pos, 1
    gt $I11, rx398_eos, rx398_fail
    sub $I11, rx398_pos, rx398_off
    substr $S10, rx398_tgt, $I11, 1
    ne $S10, "-", rx398_fail
    add rx398_pos, 1
    goto alt401_end
  alt401_2:
  alt401_end:
    set_addr $I10, rxcap_402_fail
    ($I12, $I11) = rx398_cur."!mark_peek"($I10)
    rx398_cur."!cursor_pos"($I11)
    ($P10) = rx398_cur."!cursor_start"()
    $P10."!cursor_pass"(rx398_pos, "")
    rx398_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_402_done
  rxcap_402_fail:
    goto rx398_fail
  rxcap_402_done:
.annotate "line", 147
  # rx rxquantr403 ** 0..1
    set_addr $I404, rxquantr403_done
    rx398_cur."!mark_push"(0, rx398_pos, $I404)
  rxquantr403_loop:
  # rx subrule "normspace" subtype=method negate=
    rx398_cur."!cursor_pos"(rx398_pos)
    $P10 = rx398_cur."normspace"()
    unless $P10, rx398_fail
    rx398_pos = $P10."pos"()
    (rx398_rep) = rx398_cur."!mark_commit"($I404)
  rxquantr403_done:
  alt405_0:
.annotate "line", 148
    set_addr $I10, alt405_1
    rx398_cur."!mark_push"(0, rx398_pos, $I10)
.annotate "line", 149
  # rx literal  "["
    add $I11, rx398_pos, 1
    gt $I11, rx398_eos, rx398_fail
    sub $I11, rx398_pos, rx398_off
    substr $S10, rx398_tgt, $I11, 1
    ne $S10, "[", rx398_fail
    add rx398_pos, 1
.annotate "line", 152
  # rx rxquantr406 ** 0..*
    set_addr $I427, rxquantr406_done
    rx398_cur."!mark_push"(0, rx398_pos, $I427)
  rxquantr406_loop:
.annotate "line", 149
  # rx subrule $P408 subtype=capture negate=
    rx398_cur."!cursor_pos"(rx398_pos)
    .const 'Sub' $P408 = "136_1256765552.18122" 
    capture_lex $P408
    $P10 = rx398_cur.$P408()
    unless $P10, rx398_fail
    rx398_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx398_pos = $P10."pos"()
.annotate "line", 152
    (rx398_rep) = rx398_cur."!mark_commit"($I427)
    rx398_cur."!mark_push"(rx398_rep, rx398_pos, $I427)
    goto rxquantr406_loop
  rxquantr406_done:
.annotate "line", 153
  # rx charclass_q s r 0..-1
    sub $I10, rx398_pos, rx398_off
    find_not_cclass $I11, 32, rx398_tgt, $I10, rx398_eos
    add rx398_pos, rx398_off, $I11
  # rx literal  "]"
    add $I11, rx398_pos, 1
    gt $I11, rx398_eos, rx398_fail
    sub $I11, rx398_pos, rx398_off
    substr $S10, rx398_tgt, $I11, 1
    ne $S10, "]", rx398_fail
    add rx398_pos, 1
.annotate "line", 149
    goto alt405_end
  alt405_1:
.annotate "line", 154
  # rx subcapture "name"
    set_addr $I10, rxcap_428_fail
    rx398_cur."!mark_push"(0, rx398_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx398_pos, rx398_off
    find_not_cclass $I11, 8192, rx398_tgt, $I10, rx398_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx398_fail
    add rx398_pos, rx398_off, $I11
    set_addr $I10, rxcap_428_fail
    ($I12, $I11) = rx398_cur."!mark_peek"($I10)
    rx398_cur."!cursor_pos"($I11)
    ($P10) = rx398_cur."!cursor_start"()
    $P10."!cursor_pass"(rx398_pos, "")
    rx398_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_428_done
  rxcap_428_fail:
    goto rx398_fail
  rxcap_428_done:
  alt405_end:
.annotate "line", 156
  # rx rxquantr429 ** 0..1
    set_addr $I430, rxquantr429_done
    rx398_cur."!mark_push"(0, rx398_pos, $I430)
  rxquantr429_loop:
  # rx subrule "normspace" subtype=method negate=
    rx398_cur."!cursor_pos"(rx398_pos)
    $P10 = rx398_cur."normspace"()
    unless $P10, rx398_fail
    rx398_pos = $P10."pos"()
    (rx398_rep) = rx398_cur."!mark_commit"($I430)
  rxquantr429_done:
.annotate "line", 145
  # rx pass
    rx398_cur."!cursor_pass"(rx398_pos, "cclass_elem")
    rx398_cur."!cursor_debug"("PASS  ", "cclass_elem", " at pos=", rx398_pos)
    .return (rx398_cur)
  rx398_fail:
.annotate "line", 3
    (rx398_rep, rx398_pos, $I10, $P10) = rx398_cur."!mark_fail"(0)
    lt rx398_pos, -1, rx398_done
    eq rx398_pos, -1, rx398_fail
    jump $I10
  rx398_done:
    rx398_cur."!cursor_fail"()
    rx398_cur."!cursor_debug"("FAIL  ", "cclass_elem")
    .return (rx398_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :subid("135_1256765552.18122") :method
.annotate "line", 3
    new $P400, "ResizablePMCArray"
    push $P400, ""
    push $P400, "-"
    push $P400, "+"
    .return ($P400)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block407"  :anon :subid("136_1256765552.18122") :method :outer("134_1256765552.18122")
.annotate "line", 149
    .const 'Sub' $P423 = "139_1256765552.18122" 
    capture_lex $P423
    .const 'Sub' $P418 = "138_1256765552.18122" 
    capture_lex $P418
    .const 'Sub' $P414 = "137_1256765552.18122" 
    capture_lex $P414
    .local string rx409_tgt
    .local int rx409_pos
    .local int rx409_off
    .local int rx409_eos
    .local int rx409_rep
    .local pmc rx409_cur
    (rx409_cur, rx409_pos, rx409_tgt, $I10) = self."!cursor_start"()
    rx409_cur."!cursor_debug"("START ", "")
    rx409_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx409_cur
    length rx409_eos, rx409_tgt
    set rx409_off, 0
    lt $I10, 2, rx409_start
    sub rx409_off, $I10, 1
    substr rx409_tgt, rx409_tgt, rx409_off
  rx409_start:
    ge rx409_pos, 0, rxscan410_done
  rxscan410_loop:
    ($P10) = rx409_cur."from"()
    inc $P10
    set rx409_pos, $P10
    ge rx409_pos, rx409_eos, rxscan410_done
    set_addr $I10, rxscan410_loop
    rx409_cur."!mark_push"(0, rx409_pos, $I10)
  rxscan410_done:
  alt411_0:
    set_addr $I10, alt411_1
    rx409_cur."!mark_push"(0, rx409_pos, $I10)
.annotate "line", 150
  # rx charclass_q s r 0..-1
    sub $I10, rx409_pos, rx409_off
    find_not_cclass $I11, 32, rx409_tgt, $I10, rx409_eos
    add rx409_pos, rx409_off, $I11
  # rx literal  "-"
    add $I11, rx409_pos, 1
    gt $I11, rx409_eos, rx409_fail
    sub $I11, rx409_pos, rx409_off
    substr $S10, rx409_tgt, $I11, 1
    ne $S10, "-", rx409_fail
    add rx409_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx409_cur."!cursor_pos"(rx409_pos)
    $P10 = rx409_cur."obs"("hyphen in enumerated character class;..")
    unless $P10, rx409_fail
    rx409_pos = $P10."pos"()
    goto alt411_end
  alt411_1:
.annotate "line", 151
  # rx charclass_q s r 0..-1
    sub $I10, rx409_pos, rx409_off
    find_not_cclass $I11, 32, rx409_tgt, $I10, rx409_eos
    add rx409_pos, rx409_off, $I11
  alt412_0:
    set_addr $I10, alt412_1
    rx409_cur."!mark_push"(0, rx409_pos, $I10)
  # rx literal  "\\"
    add $I11, rx409_pos, 1
    gt $I11, rx409_eos, rx409_fail
    sub $I11, rx409_pos, rx409_off
    substr $S10, rx409_tgt, $I11, 1
    ne $S10, "\\", rx409_fail
    add rx409_pos, 1
  # rx subrule $P414 subtype=capture negate=
    rx409_cur."!cursor_pos"(rx409_pos)
    .const 'Sub' $P414 = "137_1256765552.18122" 
    capture_lex $P414
    $P10 = rx409_cur.$P414()
    unless $P10, rx409_fail
    rx409_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx409_pos = $P10."pos"()
    goto alt412_end
  alt412_1:
  # rx subrule $P418 subtype=capture negate=
    rx409_cur."!cursor_pos"(rx409_pos)
    .const 'Sub' $P418 = "138_1256765552.18122" 
    capture_lex $P418
    $P10 = rx409_cur.$P418()
    unless $P10, rx409_fail
    rx409_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx409_pos = $P10."pos"()
  alt412_end:
  # rx rxquantr421 ** 0..1
    set_addr $I426, rxquantr421_done
    rx409_cur."!mark_push"(0, rx409_pos, $I426)
  rxquantr421_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx409_pos, rx409_off
    find_not_cclass $I11, 32, rx409_tgt, $I10, rx409_eos
    add rx409_pos, rx409_off, $I11
  # rx literal  ".."
    add $I11, rx409_pos, 2
    gt $I11, rx409_eos, rx409_fail
    sub $I11, rx409_pos, rx409_off
    substr $S10, rx409_tgt, $I11, 2
    ne $S10, "..", rx409_fail
    add rx409_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx409_pos, rx409_off
    find_not_cclass $I11, 32, rx409_tgt, $I10, rx409_eos
    add rx409_pos, rx409_off, $I11
  # rx subrule $P423 subtype=capture negate=
    rx409_cur."!cursor_pos"(rx409_pos)
    .const 'Sub' $P423 = "139_1256765552.18122" 
    capture_lex $P423
    $P10 = rx409_cur.$P423()
    unless $P10, rx409_fail
    rx409_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx409_pos = $P10."pos"()
    (rx409_rep) = rx409_cur."!mark_commit"($I426)
  rxquantr421_done:
  alt411_end:
.annotate "line", 149
  # rx pass
    rx409_cur."!cursor_pass"(rx409_pos, "")
    rx409_cur."!cursor_debug"("PASS  ", "", " at pos=", rx409_pos)
    .return (rx409_cur)
  rx409_fail:
    (rx409_rep, rx409_pos, $I10, $P10) = rx409_cur."!mark_fail"(0)
    lt rx409_pos, -1, rx409_done
    eq rx409_pos, -1, rx409_fail
    jump $I10
  rx409_done:
    rx409_cur."!cursor_fail"()
    rx409_cur."!cursor_debug"("FAIL  ", "")
    .return (rx409_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block413"  :anon :subid("137_1256765552.18122") :method :outer("136_1256765552.18122")
.annotate "line", 151
    .local string rx415_tgt
    .local int rx415_pos
    .local int rx415_off
    .local int rx415_eos
    .local int rx415_rep
    .local pmc rx415_cur
    (rx415_cur, rx415_pos, rx415_tgt, $I10) = self."!cursor_start"()
    rx415_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx415_cur
    length rx415_eos, rx415_tgt
    set rx415_off, 0
    lt $I10, 2, rx415_start
    sub rx415_off, $I10, 1
    substr rx415_tgt, rx415_tgt, rx415_off
  rx415_start:
    ge rx415_pos, 0, rxscan416_done
  rxscan416_loop:
    ($P10) = rx415_cur."from"()
    inc $P10
    set rx415_pos, $P10
    ge rx415_pos, rx415_eos, rxscan416_done
    set_addr $I10, rxscan416_loop
    rx415_cur."!mark_push"(0, rx415_pos, $I10)
  rxscan416_done:
  # rx charclass .
    ge rx415_pos, rx415_eos, rx415_fail
    inc rx415_pos
  # rx pass
    rx415_cur."!cursor_pass"(rx415_pos, "")
    rx415_cur."!cursor_debug"("PASS  ", "", " at pos=", rx415_pos)
    .return (rx415_cur)
  rx415_fail:
    (rx415_rep, rx415_pos, $I10, $P10) = rx415_cur."!mark_fail"(0)
    lt rx415_pos, -1, rx415_done
    eq rx415_pos, -1, rx415_fail
    jump $I10
  rx415_done:
    rx415_cur."!cursor_fail"()
    rx415_cur."!cursor_debug"("FAIL  ", "")
    .return (rx415_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block417"  :anon :subid("138_1256765552.18122") :method :outer("136_1256765552.18122")
.annotate "line", 151
    .local string rx419_tgt
    .local int rx419_pos
    .local int rx419_off
    .local int rx419_eos
    .local int rx419_rep
    .local pmc rx419_cur
    (rx419_cur, rx419_pos, rx419_tgt, $I10) = self."!cursor_start"()
    rx419_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx419_cur
    length rx419_eos, rx419_tgt
    set rx419_off, 0
    lt $I10, 2, rx419_start
    sub rx419_off, $I10, 1
    substr rx419_tgt, rx419_tgt, rx419_off
  rx419_start:
    ge rx419_pos, 0, rxscan420_done
  rxscan420_loop:
    ($P10) = rx419_cur."from"()
    inc $P10
    set rx419_pos, $P10
    ge rx419_pos, rx419_eos, rxscan420_done
    set_addr $I10, rxscan420_loop
    rx419_cur."!mark_push"(0, rx419_pos, $I10)
  rxscan420_done:
  # rx enumcharlist negate=1 
    ge rx419_pos, rx419_eos, rx419_fail
    sub $I10, rx419_pos, rx419_off
    substr $S10, rx419_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx419_fail
    inc rx419_pos
  # rx pass
    rx419_cur."!cursor_pass"(rx419_pos, "")
    rx419_cur."!cursor_debug"("PASS  ", "", " at pos=", rx419_pos)
    .return (rx419_cur)
  rx419_fail:
    (rx419_rep, rx419_pos, $I10, $P10) = rx419_cur."!mark_fail"(0)
    lt rx419_pos, -1, rx419_done
    eq rx419_pos, -1, rx419_fail
    jump $I10
  rx419_done:
    rx419_cur."!cursor_fail"()
    rx419_cur."!cursor_debug"("FAIL  ", "")
    .return (rx419_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block422"  :anon :subid("139_1256765552.18122") :method :outer("136_1256765552.18122")
.annotate "line", 151
    .local string rx424_tgt
    .local int rx424_pos
    .local int rx424_off
    .local int rx424_eos
    .local int rx424_rep
    .local pmc rx424_cur
    (rx424_cur, rx424_pos, rx424_tgt, $I10) = self."!cursor_start"()
    rx424_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx424_cur
    length rx424_eos, rx424_tgt
    set rx424_off, 0
    lt $I10, 2, rx424_start
    sub rx424_off, $I10, 1
    substr rx424_tgt, rx424_tgt, rx424_off
  rx424_start:
    ge rx424_pos, 0, rxscan425_done
  rxscan425_loop:
    ($P10) = rx424_cur."from"()
    inc $P10
    set rx424_pos, $P10
    ge rx424_pos, rx424_eos, rxscan425_done
    set_addr $I10, rxscan425_loop
    rx424_cur."!mark_push"(0, rx424_pos, $I10)
  rxscan425_done:
  # rx charclass .
    ge rx424_pos, rx424_eos, rx424_fail
    inc rx424_pos
  # rx pass
    rx424_cur."!cursor_pass"(rx424_pos, "")
    rx424_cur."!cursor_debug"("PASS  ", "", " at pos=", rx424_pos)
    .return (rx424_cur)
  rx424_fail:
    (rx424_rep, rx424_pos, $I10, $P10) = rx424_cur."!mark_fail"(0)
    lt rx424_pos, -1, rx424_done
    eq rx424_pos, -1, rx424_fail
    jump $I10
  rx424_done:
    rx424_cur."!cursor_fail"()
    rx424_cur."!cursor_debug"("FAIL  ", "")
    .return (rx424_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("140_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .const 'Sub' $P439 = "142_1256765552.18122" 
    capture_lex $P439
    .local string rx432_tgt
    .local int rx432_pos
    .local int rx432_off
    .local int rx432_eos
    .local int rx432_rep
    .local pmc rx432_cur
    (rx432_cur, rx432_pos, rx432_tgt, $I10) = self."!cursor_start"()
    rx432_cur."!cursor_debug"("START ", "mod_internal")
    rx432_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx432_cur
    length rx432_eos, rx432_tgt
    set rx432_off, 0
    lt $I10, 2, rx432_start
    sub rx432_off, $I10, 1
    substr rx432_tgt, rx432_tgt, rx432_off
  rx432_start:
  alt436_0:
.annotate "line", 160
    set_addr $I10, alt436_1
    rx432_cur."!mark_push"(0, rx432_pos, $I10)
.annotate "line", 161
  # rx literal  ":"
    add $I11, rx432_pos, 1
    gt $I11, rx432_eos, rx432_fail
    sub $I11, rx432_pos, rx432_off
    substr $S10, rx432_tgt, $I11, 1
    ne $S10, ":", rx432_fail
    add rx432_pos, 1
  # rx rxquantr437 ** 1..1
    set_addr $I443, rxquantr437_done
    rx432_cur."!mark_push"(0, -1, $I443)
  rxquantr437_loop:
  # rx subrule $P439 subtype=capture negate=
    rx432_cur."!cursor_pos"(rx432_pos)
    .const 'Sub' $P439 = "142_1256765552.18122" 
    capture_lex $P439
    $P10 = rx432_cur.$P439()
    unless $P10, rx432_fail
    rx432_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    rx432_pos = $P10."pos"()
    (rx432_rep) = rx432_cur."!mark_commit"($I443)
  rxquantr437_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx432_cur."!cursor_pos"(rx432_pos)
    $P10 = rx432_cur."mod_ident"()
    unless $P10, rx432_fail
    rx432_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx432_pos = $P10."pos"()
  # rxanchor rwb
    le rx432_pos, 0, rx432_fail
    sub $I10, rx432_pos, rx432_off
    is_cclass $I11, 8192, rx432_tgt, $I10
    if $I11, rx432_fail
    dec $I10
    is_cclass $I11, 8192, rx432_tgt, $I10
    unless $I11, rx432_fail
    goto alt436_end
  alt436_1:
.annotate "line", 162
  # rx literal  ":"
    add $I11, rx432_pos, 1
    gt $I11, rx432_eos, rx432_fail
    sub $I11, rx432_pos, rx432_off
    substr $S10, rx432_tgt, $I11, 1
    ne $S10, ":", rx432_fail
    add rx432_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx432_cur."!cursor_pos"(rx432_pos)
    $P10 = rx432_cur."mod_ident"()
    unless $P10, rx432_fail
    rx432_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx432_pos = $P10."pos"()
  # rx rxquantr444 ** 0..1
    set_addr $I446, rxquantr444_done
    rx432_cur."!mark_push"(0, rx432_pos, $I446)
  rxquantr444_loop:
  # rx literal  "("
    add $I11, rx432_pos, 1
    gt $I11, rx432_eos, rx432_fail
    sub $I11, rx432_pos, rx432_off
    substr $S10, rx432_tgt, $I11, 1
    ne $S10, "(", rx432_fail
    add rx432_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_445_fail
    rx432_cur."!mark_push"(0, rx432_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx432_pos, rx432_off
    find_not_cclass $I11, 8, rx432_tgt, $I10, rx432_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx432_fail
    add rx432_pos, rx432_off, $I11
    set_addr $I10, rxcap_445_fail
    ($I12, $I11) = rx432_cur."!mark_peek"($I10)
    rx432_cur."!cursor_pos"($I11)
    ($P10) = rx432_cur."!cursor_start"()
    $P10."!cursor_pass"(rx432_pos, "")
    rx432_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_445_done
  rxcap_445_fail:
    goto rx432_fail
  rxcap_445_done:
  # rx literal  ")"
    add $I11, rx432_pos, 1
    gt $I11, rx432_eos, rx432_fail
    sub $I11, rx432_pos, rx432_off
    substr $S10, rx432_tgt, $I11, 1
    ne $S10, ")", rx432_fail
    add rx432_pos, 1
    (rx432_rep) = rx432_cur."!mark_commit"($I446)
  rxquantr444_done:
  alt436_end:
.annotate "line", 159
  # rx pass
    rx432_cur."!cursor_pass"(rx432_pos, "mod_internal")
    rx432_cur."!cursor_debug"("PASS  ", "mod_internal", " at pos=", rx432_pos)
    .return (rx432_cur)
  rx432_fail:
.annotate "line", 3
    (rx432_rep, rx432_pos, $I10, $P10) = rx432_cur."!mark_fail"(0)
    lt rx432_pos, -1, rx432_done
    eq rx432_pos, -1, rx432_fail
    jump $I10
  rx432_done:
    rx432_cur."!cursor_fail"()
    rx432_cur."!cursor_debug"("FAIL  ", "mod_internal")
    .return (rx432_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :subid("141_1256765552.18122") :method
.annotate "line", 3
    $P434 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P435, "ResizablePMCArray"
    push $P435, $P434
    push $P435, ":"
    .return ($P435)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block438"  :anon :subid("142_1256765552.18122") :method :outer("140_1256765552.18122")
.annotate "line", 161
    .local string rx440_tgt
    .local int rx440_pos
    .local int rx440_off
    .local int rx440_eos
    .local int rx440_rep
    .local pmc rx440_cur
    (rx440_cur, rx440_pos, rx440_tgt, $I10) = self."!cursor_start"()
    rx440_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx440_cur
    length rx440_eos, rx440_tgt
    set rx440_off, 0
    lt $I10, 2, rx440_start
    sub rx440_off, $I10, 1
    substr rx440_tgt, rx440_tgt, rx440_off
  rx440_start:
    ge rx440_pos, 0, rxscan441_done
  rxscan441_loop:
    ($P10) = rx440_cur."from"()
    inc $P10
    set rx440_pos, $P10
    ge rx440_pos, rx440_eos, rxscan441_done
    set_addr $I10, rxscan441_loop
    rx440_cur."!mark_push"(0, rx440_pos, $I10)
  rxscan441_done:
  alt442_0:
    set_addr $I10, alt442_1
    rx440_cur."!mark_push"(0, rx440_pos, $I10)
  # rx literal  "!"
    add $I11, rx440_pos, 1
    gt $I11, rx440_eos, rx440_fail
    sub $I11, rx440_pos, rx440_off
    substr $S10, rx440_tgt, $I11, 1
    ne $S10, "!", rx440_fail
    add rx440_pos, 1
    goto alt442_end
  alt442_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx440_pos, rx440_off
    find_not_cclass $I11, 8, rx440_tgt, $I10, rx440_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx440_fail
    add rx440_pos, rx440_off, $I11
  alt442_end:
  # rx pass
    rx440_cur."!cursor_pass"(rx440_pos, "")
    rx440_cur."!cursor_debug"("PASS  ", "", " at pos=", rx440_pos)
    .return (rx440_cur)
  rx440_fail:
    (rx440_rep, rx440_pos, $I10, $P10) = rx440_cur."!mark_fail"(0)
    lt rx440_pos, -1, rx440_done
    eq rx440_pos, -1, rx440_fail
    jump $I10
  rx440_done:
    rx440_cur."!cursor_fail"()
    rx440_cur."!cursor_debug"("FAIL  ", "")
    .return (rx440_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("143_1256765552.18122") :method
.annotate "line", 166
    $P448 = self."!protoregex"("mod_ident")
    .return ($P448)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("144_1256765552.18122") :method
.annotate "line", 166
    $P450 = self."!PREFIX__!protoregex"("mod_ident")
    .return ($P450)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("145_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx452_tgt
    .local int rx452_pos
    .local int rx452_off
    .local int rx452_eos
    .local int rx452_rep
    .local pmc rx452_cur
    (rx452_cur, rx452_pos, rx452_tgt, $I10) = self."!cursor_start"()
    rx452_cur."!cursor_debug"("START ", "mod_ident:sym<ignorecase>")
    .lex unicode:"$\x{a2}", rx452_cur
    length rx452_eos, rx452_tgt
    set rx452_off, 0
    lt $I10, 2, rx452_start
    sub rx452_off, $I10, 1
    substr rx452_tgt, rx452_tgt, rx452_off
  rx452_start:
.annotate "line", 167
  # rx subcapture "sym"
    set_addr $I10, rxcap_455_fail
    rx452_cur."!mark_push"(0, rx452_pos, $I10)
  # rx literal  "i"
    add $I11, rx452_pos, 1
    gt $I11, rx452_eos, rx452_fail
    sub $I11, rx452_pos, rx452_off
    substr $S10, rx452_tgt, $I11, 1
    ne $S10, "i", rx452_fail
    add rx452_pos, 1
    set_addr $I10, rxcap_455_fail
    ($I12, $I11) = rx452_cur."!mark_peek"($I10)
    rx452_cur."!cursor_pos"($I11)
    ($P10) = rx452_cur."!cursor_start"()
    $P10."!cursor_pass"(rx452_pos, "")
    rx452_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_455_done
  rxcap_455_fail:
    goto rx452_fail
  rxcap_455_done:
  # rx rxquantr456 ** 0..1
    set_addr $I457, rxquantr456_done
    rx452_cur."!mark_push"(0, rx452_pos, $I457)
  rxquantr456_loop:
  # rx literal  "gnorecase"
    add $I11, rx452_pos, 9
    gt $I11, rx452_eos, rx452_fail
    sub $I11, rx452_pos, rx452_off
    substr $S10, rx452_tgt, $I11, 9
    ne $S10, "gnorecase", rx452_fail
    add rx452_pos, 9
    (rx452_rep) = rx452_cur."!mark_commit"($I457)
  rxquantr456_done:
  # rx pass
    rx452_cur."!cursor_pass"(rx452_pos, "mod_ident:sym<ignorecase>")
    rx452_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ignorecase>", " at pos=", rx452_pos)
    .return (rx452_cur)
  rx452_fail:
.annotate "line", 3
    (rx452_rep, rx452_pos, $I10, $P10) = rx452_cur."!mark_fail"(0)
    lt rx452_pos, -1, rx452_done
    eq rx452_pos, -1, rx452_fail
    jump $I10
  rx452_done:
    rx452_cur."!cursor_fail"()
    rx452_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ignorecase>")
    .return (rx452_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :subid("146_1256765552.18122") :method
.annotate "line", 3
    new $P454, "ResizablePMCArray"
    push $P454, "i"
    .return ($P454)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("147_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx459_tgt
    .local int rx459_pos
    .local int rx459_off
    .local int rx459_eos
    .local int rx459_rep
    .local pmc rx459_cur
    (rx459_cur, rx459_pos, rx459_tgt, $I10) = self."!cursor_start"()
    rx459_cur."!cursor_debug"("START ", "mod_ident:sym<ratchet>")
    .lex unicode:"$\x{a2}", rx459_cur
    length rx459_eos, rx459_tgt
    set rx459_off, 0
    lt $I10, 2, rx459_start
    sub rx459_off, $I10, 1
    substr rx459_tgt, rx459_tgt, rx459_off
  rx459_start:
.annotate "line", 168
  # rx subcapture "sym"
    set_addr $I10, rxcap_462_fail
    rx459_cur."!mark_push"(0, rx459_pos, $I10)
  # rx literal  "r"
    add $I11, rx459_pos, 1
    gt $I11, rx459_eos, rx459_fail
    sub $I11, rx459_pos, rx459_off
    substr $S10, rx459_tgt, $I11, 1
    ne $S10, "r", rx459_fail
    add rx459_pos, 1
    set_addr $I10, rxcap_462_fail
    ($I12, $I11) = rx459_cur."!mark_peek"($I10)
    rx459_cur."!cursor_pos"($I11)
    ($P10) = rx459_cur."!cursor_start"()
    $P10."!cursor_pass"(rx459_pos, "")
    rx459_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_462_done
  rxcap_462_fail:
    goto rx459_fail
  rxcap_462_done:
  # rx rxquantr463 ** 0..1
    set_addr $I464, rxquantr463_done
    rx459_cur."!mark_push"(0, rx459_pos, $I464)
  rxquantr463_loop:
  # rx literal  "atchet"
    add $I11, rx459_pos, 6
    gt $I11, rx459_eos, rx459_fail
    sub $I11, rx459_pos, rx459_off
    substr $S10, rx459_tgt, $I11, 6
    ne $S10, "atchet", rx459_fail
    add rx459_pos, 6
    (rx459_rep) = rx459_cur."!mark_commit"($I464)
  rxquantr463_done:
  # rx pass
    rx459_cur."!cursor_pass"(rx459_pos, "mod_ident:sym<ratchet>")
    rx459_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ratchet>", " at pos=", rx459_pos)
    .return (rx459_cur)
  rx459_fail:
.annotate "line", 3
    (rx459_rep, rx459_pos, $I10, $P10) = rx459_cur."!mark_fail"(0)
    lt rx459_pos, -1, rx459_done
    eq rx459_pos, -1, rx459_fail
    jump $I10
  rx459_done:
    rx459_cur."!cursor_fail"()
    rx459_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ratchet>")
    .return (rx459_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :subid("148_1256765552.18122") :method
.annotate "line", 3
    new $P461, "ResizablePMCArray"
    push $P461, "r"
    .return ($P461)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("149_1256765552.18122") :method :outer("11_1256765552.18122")
.annotate "line", 3
    .local string rx466_tgt
    .local int rx466_pos
    .local int rx466_off
    .local int rx466_eos
    .local int rx466_rep
    .local pmc rx466_cur
    (rx466_cur, rx466_pos, rx466_tgt, $I10) = self."!cursor_start"()
    rx466_cur."!cursor_debug"("START ", "mod_ident:sym<sigspace>")
    .lex unicode:"$\x{a2}", rx466_cur
    length rx466_eos, rx466_tgt
    set rx466_off, 0
    lt $I10, 2, rx466_start
    sub rx466_off, $I10, 1
    substr rx466_tgt, rx466_tgt, rx466_off
  rx466_start:
.annotate "line", 169
  # rx subcapture "sym"
    set_addr $I10, rxcap_469_fail
    rx466_cur."!mark_push"(0, rx466_pos, $I10)
  # rx literal  "s"
    add $I11, rx466_pos, 1
    gt $I11, rx466_eos, rx466_fail
    sub $I11, rx466_pos, rx466_off
    substr $S10, rx466_tgt, $I11, 1
    ne $S10, "s", rx466_fail
    add rx466_pos, 1
    set_addr $I10, rxcap_469_fail
    ($I12, $I11) = rx466_cur."!mark_peek"($I10)
    rx466_cur."!cursor_pos"($I11)
    ($P10) = rx466_cur."!cursor_start"()
    $P10."!cursor_pass"(rx466_pos, "")
    rx466_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_469_done
  rxcap_469_fail:
    goto rx466_fail
  rxcap_469_done:
  # rx rxquantr470 ** 0..1
    set_addr $I471, rxquantr470_done
    rx466_cur."!mark_push"(0, rx466_pos, $I471)
  rxquantr470_loop:
  # rx literal  "igspace"
    add $I11, rx466_pos, 7
    gt $I11, rx466_eos, rx466_fail
    sub $I11, rx466_pos, rx466_off
    substr $S10, rx466_tgt, $I11, 7
    ne $S10, "igspace", rx466_fail
    add rx466_pos, 7
    (rx466_rep) = rx466_cur."!mark_commit"($I471)
  rxquantr470_done:
  # rx pass
    rx466_cur."!cursor_pass"(rx466_pos, "mod_ident:sym<sigspace>")
    rx466_cur."!cursor_debug"("PASS  ", "mod_ident:sym<sigspace>", " at pos=", rx466_pos)
    .return (rx466_cur)
  rx466_fail:
.annotate "line", 3
    (rx466_rep, rx466_pos, $I10, $P10) = rx466_cur."!mark_fail"(0)
    lt rx466_pos, -1, rx466_done
    eq rx466_pos, -1, rx466_fail
    jump $I10
  rx466_done:
    rx466_cur."!cursor_fail"()
    rx466_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<sigspace>")
    .return (rx466_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :subid("150_1256765552.18122") :method
.annotate "line", 3
    new $P468, "ResizablePMCArray"
    push $P468, "s"
    .return ($P468)
.end

### .include 'gen/p6regex-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256765560.03654")
.annotate "line", 0
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    capture_lex $P14
.annotate "line", 4
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    capture_lex $P14
    $P1345 = $P14()
.annotate "line", 1
    .return ($P1345)
.end


.namespace []
.sub "" :load :init :subid("post84") :outer("10_1256765560.03654")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1256765560.03654" 
    .local pmc block
    set block, $P12
    $P1346 = get_root_global ["parrot"], "P6metaclass"
    $P1346."new_class"("Regex::P6Regex::Actions")
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block13"  :subid("11_1256765560.03654") :outer("10_1256765560.03654")
.annotate "line", 4
    .const 'Sub' $P1327 = "83_1256765560.03654" 
    capture_lex $P1327
    .const 'Sub' $P1295 = "82_1256765560.03654" 
    capture_lex $P1295
    .const 'Sub' $P1044 = "69_1256765560.03654" 
    capture_lex $P1044
    .const 'Sub' $P1024 = "68_1256765560.03654" 
    capture_lex $P1024
    .const 'Sub' $P997 = "67_1256765560.03654" 
    capture_lex $P997
    .const 'Sub' $P934 = "63_1256765560.03654" 
    capture_lex $P934
    .const 'Sub' $P871 = "61_1256765560.03654" 
    capture_lex $P871
    .const 'Sub' $P801 = "58_1256765560.03654" 
    capture_lex $P801
    .const 'Sub' $P789 = "57_1256765560.03654" 
    capture_lex $P789
    .const 'Sub' $P766 = "56_1256765560.03654" 
    capture_lex $P766
    .const 'Sub' $P749 = "55_1256765560.03654" 
    capture_lex $P749
    .const 'Sub' $P736 = "54_1256765560.03654" 
    capture_lex $P736
    .const 'Sub' $P721 = "53_1256765560.03654" 
    capture_lex $P721
    .const 'Sub' $P706 = "52_1256765560.03654" 
    capture_lex $P706
    .const 'Sub' $P691 = "51_1256765560.03654" 
    capture_lex $P691
    .const 'Sub' $P676 = "50_1256765560.03654" 
    capture_lex $P676
    .const 'Sub' $P661 = "49_1256765560.03654" 
    capture_lex $P661
    .const 'Sub' $P646 = "48_1256765560.03654" 
    capture_lex $P646
    .const 'Sub' $P631 = "47_1256765560.03654" 
    capture_lex $P631
    .const 'Sub' $P609 = "46_1256765560.03654" 
    capture_lex $P609
    .const 'Sub' $P594 = "45_1256765560.03654" 
    capture_lex $P594
    .const 'Sub' $P540 = "44_1256765560.03654" 
    capture_lex $P540
    .const 'Sub' $P520 = "43_1256765560.03654" 
    capture_lex $P520
    .const 'Sub' $P498 = "42_1256765560.03654" 
    capture_lex $P498
    .const 'Sub' $P488 = "41_1256765560.03654" 
    capture_lex $P488
    .const 'Sub' $P478 = "40_1256765560.03654" 
    capture_lex $P478
    .const 'Sub' $P468 = "39_1256765560.03654" 
    capture_lex $P468
    .const 'Sub' $P457 = "38_1256765560.03654" 
    capture_lex $P457
    .const 'Sub' $P446 = "37_1256765560.03654" 
    capture_lex $P446
    .const 'Sub' $P435 = "36_1256765560.03654" 
    capture_lex $P435
    .const 'Sub' $P424 = "35_1256765560.03654" 
    capture_lex $P424
    .const 'Sub' $P413 = "34_1256765560.03654" 
    capture_lex $P413
    .const 'Sub' $P402 = "33_1256765560.03654" 
    capture_lex $P402
    .const 'Sub' $P391 = "32_1256765560.03654" 
    capture_lex $P391
    .const 'Sub' $P380 = "31_1256765560.03654" 
    capture_lex $P380
    .const 'Sub' $P365 = "30_1256765560.03654" 
    capture_lex $P365
    .const 'Sub' $P349 = "29_1256765560.03654" 
    capture_lex $P349
    .const 'Sub' $P339 = "28_1256765560.03654" 
    capture_lex $P339
    .const 'Sub' $P322 = "27_1256765560.03654" 
    capture_lex $P322
    .const 'Sub' $P276 = "26_1256765560.03654" 
    capture_lex $P276
    .const 'Sub' $P260 = "25_1256765560.03654" 
    capture_lex $P260
    .const 'Sub' $P246 = "24_1256765560.03654" 
    capture_lex $P246
    .const 'Sub' $P232 = "23_1256765560.03654" 
    capture_lex $P232
    .const 'Sub' $P207 = "22_1256765560.03654" 
    capture_lex $P207
    .const 'Sub' $P159 = "20_1256765560.03654" 
    capture_lex $P159
    .const 'Sub' $P107 = "18_1256765560.03654" 
    capture_lex $P107
    .const 'Sub' $P53 = "15_1256765560.03654" 
    capture_lex $P53
    .const 'Sub' $P39 = "14_1256765560.03654" 
    capture_lex $P39
    .const 'Sub' $P21 = "13_1256765560.03654" 
    capture_lex $P21
    .const 'Sub' $P16 = "12_1256765560.03654" 
    capture_lex $P16
    get_global $P15, "@MODIFIERS"
    unless_null $P15, vivify_85
    new $P15, "ResizablePMCArray"
  vivify_85:
.annotate "line", 6
    .const 'Sub' $P16 = "12_1256765560.03654" 
    capture_lex $P16
    .lex "INIT", $P16
.annotate "line", 439
    .const 'Sub' $P1024 = "68_1256765560.03654" 
    capture_lex $P1024
    .lex "buildsub", $P1024
.annotate "line", 452
    .const 'Sub' $P1044 = "69_1256765560.03654" 
    capture_lex $P1044
    .lex "capnames", $P1044
.annotate "line", 518
    .const 'Sub' $P1295 = "82_1256765560.03654" 
    capture_lex $P1295
    .lex "backmod", $P1295
.annotate "line", 525
    .const 'Sub' $P1327 = "83_1256765560.03654" 
    capture_lex $P1327
    .lex "subrule_alias", $P1327
.annotate "line", 4
    .return ($P1327)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "INIT"  :subid("12_1256765560.03654") :outer("11_1256765560.03654")
.annotate "line", 6
    new $P18, 'ExceptionHandler'
    set_addr $P18, control_17
    $P18."handle_types"(58)
    push_eh $P18
.annotate "line", 7
 
        $P19 = new ['ResizablePMCArray'] 
        $P0 = new ['Hash']
        push $P19, $P0
    
    set_global "@MODIFIERS", $P19
.annotate "line", 6
    .return ($P19)
  control_17:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P20, exception, "payload"
    .return ($P20)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("13_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_24
.annotate "line", 14
    new $P23, 'ExceptionHandler'
    set_addr $P23, control_22
    $P23."handle_types"(58)
    push_eh $P23
    .lex "self", self
    .lex "$/", param_24
.annotate "line", 15
    find_lex $P25, "$/"
    find_lex $P28, "$/"
    unless_null $P28, vivify_86
    new $P28, "Hash"
  vivify_86:
    set $P29, $P28["quote"]
    unless_null $P29, vivify_87
    new $P29, "Undef"
  vivify_87:
    if $P29, if_27
    find_lex $P34, "$/"
    unless_null $P34, vivify_88
    new $P34, "Hash"
  vivify_88:
    set $P35, $P34["val"]
    unless_null $P35, vivify_89
    new $P35, "Undef"
  vivify_89:
    set $N36, $P35
    new $P26, 'Float'
    set $P26, $N36
    goto if_27_end
  if_27:
    find_lex $P30, "$/"
    unless_null $P30, vivify_90
    new $P30, "Hash"
  vivify_90:
    set $P31, $P30["quote"]
    unless_null $P31, vivify_91
    new $P31, "Hash"
  vivify_91:
    set $P32, $P31["val"]
    unless_null $P32, vivify_92
    new $P32, "Undef"
  vivify_92:
    set $S33, $P32
    new $P26, 'String'
    set $P26, $S33
  if_27_end:
    $P37 = $P25."!make"($P26)
.annotate "line", 14
    .return ($P37)
  control_22:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P38, exception, "payload"
    .return ($P38)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("14_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_42
.annotate "line", 18
    new $P41, 'ExceptionHandler'
    set_addr $P41, control_40
    $P41."handle_types"(58)
    push_eh $P41
    .lex "self", self
    .lex "$/", param_42
.annotate "line", 19
    find_lex $P43, "$/"
    unless_null $P43, vivify_93
    new $P43, "Hash"
  vivify_93:
    set $P44, $P43["nibbler"]
    unless_null $P44, vivify_94
    new $P44, "Undef"
  vivify_94:
    $P45 = $P44."ast"()
    $P46 = "buildsub"($P45)
    .lex "$past", $P46
.annotate "line", 20
    find_lex $P47, "$past"
    find_lex $P48, "$/"
    $P47."node"($P48)
.annotate "line", 21
    find_lex $P49, "$/"
    find_lex $P50, "$past"
    $P51 = $P49."!make"($P50)
.annotate "line", 18
    .return ($P51)
  control_40:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P52, exception, "payload"
    .return ($P52)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "nibbler"  :subid("15_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_56
    .param pmc param_57 :optional
    .param int has_param_57 :opt_flag
.annotate "line", 24
    .const 'Sub' $P90 = "17_1256765560.03654" 
    capture_lex $P90
    .const 'Sub' $P64 = "16_1256765560.03654" 
    capture_lex $P64
    new $P55, 'ExceptionHandler'
    set_addr $P55, control_54
    $P55."handle_types"(58)
    push_eh $P55
    .lex "self", self
    .lex "$/", param_56
    if has_param_57, optparam_95
    new $P58, "Undef"
    set param_57, $P58
  optparam_95:
    .lex "$key", param_57
.annotate "line", 25
    find_lex $P60, "$key"
    set $S61, $P60
    iseq $I62, $S61, "open"
    unless $I62, if_59_end
    .const 'Sub' $P64 = "16_1256765560.03654" 
    capture_lex $P64
    $P64()
  if_59_end:
.annotate "line", 35
    get_global $P72, "@MODIFIERS"
    $P72."shift"()
    new $P73, "Undef"
    .lex "$past", $P73
.annotate "line", 37
    find_lex $P75, "$/"
    unless_null $P75, vivify_98
    new $P75, "Hash"
  vivify_98:
    set $P76, $P75["termish"]
    unless_null $P76, vivify_99
    new $P76, "Undef"
  vivify_99:
    set $N77, $P76
    new $P78, "Integer"
    assign $P78, 1
    set $N79, $P78
    isgt $I80, $N77, $N79
    if $I80, if_74
.annotate "line", 44
    find_lex $P99, "$/"
    unless_null $P99, vivify_100
    new $P99, "Hash"
  vivify_100:
    set $P100, $P99["termish"]
    unless_null $P100, vivify_101
    new $P100, "ResizablePMCArray"
  vivify_101:
    set $P101, $P100[0]
    unless_null $P101, vivify_102
    new $P101, "Undef"
  vivify_102:
    $P102 = $P101."ast"()
    store_lex "$past", $P102
.annotate "line", 43
    goto if_74_end
  if_74:
.annotate "line", 38
    get_hll_global $P81, ["PAST"], "Regex"
    find_lex $P82, "$/"
    $P83 = $P81."new"("alt" :named("pasttype"), $P82 :named("node"))
    store_lex "$past", $P83
.annotate "line", 39
    find_lex $P85, "$/"
    unless_null $P85, vivify_103
    new $P85, "Hash"
  vivify_103:
    set $P86, $P85["termish"]
    unless_null $P86, vivify_104
    new $P86, "Undef"
  vivify_104:
    defined $I87, $P86
    unless $I87, for_undef_105
    iter $P84, $P86
    new $P97, 'ExceptionHandler'
    set_addr $P97, loop96_handler
    $P97."handle_types"(65, 67, 66)
    push_eh $P97
  loop96_test:
    unless $P84, loop96_done
    shift $P88, $P84
  loop96_redo:
    .const 'Sub' $P90 = "17_1256765560.03654" 
    capture_lex $P90
    $P90($P88)
  loop96_next:
    goto loop96_test
  loop96_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P98, exception, 'type'
    eq $P98, 65, loop96_next
    eq $P98, 67, loop96_redo
  loop96_done:
    pop_eh 
  for_undef_105:
  if_74_end:
.annotate "line", 46
    find_lex $P103, "$/"
    find_lex $P104, "$past"
    $P105 = $P103."!make"($P104)
.annotate "line", 24
    .return ($P105)
  control_54:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block63"  :anon :subid("16_1256765560.03654") :outer("15_1256765560.03654")
.annotate "line", 26
    get_global $P65, "@MODIFIERS"
    unless_null $P65, vivify_96
    new $P65, "ResizablePMCArray"
  vivify_96:
    set $P66, $P65[0]
    unless_null $P66, vivify_97
    new $P66, "Undef"
  vivify_97:
    .lex "%old", $P66
.annotate "line", 27

                       $P0 = find_lex '%old'
                       $P67 = clone $P0
                   
    .lex "%new", $P67
.annotate "line", 31
    get_global $P68, "@MODIFIERS"
    find_lex $P69, "%new"
    $P68."unshift"($P69)
.annotate "line", 32
    new $P70, "Exception"
    set $P70['type'], 58
    new $P71, "Integer"
    assign $P71, 1
    setattribute $P70, 'payload', $P71
    throw $P70
.annotate "line", 25
    .return ()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block89"  :anon :subid("17_1256765560.03654") :outer("15_1256765560.03654")
    .param pmc param_91
.annotate "line", 39
    .lex "$_", param_91
.annotate "line", 40
    find_lex $P92, "$past"
    find_lex $P93, "$_"
    $P94 = $P93."ast"()
    $P95 = $P92."push"($P94)
.annotate "line", 39
    .return ($P95)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "termish"  :subid("18_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_110
.annotate "line", 49
    .const 'Sub' $P121 = "19_1256765560.03654" 
    capture_lex $P121
    new $P109, 'ExceptionHandler'
    set_addr $P109, control_108
    $P109."handle_types"(58)
    push_eh $P109
    .lex "self", self
    .lex "$/", param_110
.annotate "line", 50
    get_hll_global $P111, ["PAST"], "Regex"
    find_lex $P112, "$/"
    $P113 = $P111."new"("concat" :named("pasttype"), $P112 :named("node"))
    .lex "$past", $P113
.annotate "line", 51
    new $P114, "Integer"
    assign $P114, 0
    .lex "$lastlit", $P114
.annotate "line", 52
    find_lex $P116, "$/"
    unless_null $P116, vivify_106
    new $P116, "Hash"
  vivify_106:
    set $P117, $P116["noun"]
    unless_null $P117, vivify_107
    new $P117, "Undef"
  vivify_107:
    defined $I118, $P117
    unless $I118, for_undef_108
    iter $P115, $P117
    new $P153, 'ExceptionHandler'
    set_addr $P153, loop152_handler
    $P153."handle_types"(65, 67, 66)
    push_eh $P153
  loop152_test:
    unless $P115, loop152_done
    shift $P119, $P115
  loop152_redo:
    .const 'Sub' $P121 = "19_1256765560.03654" 
    capture_lex $P121
    $P121($P119)
  loop152_next:
    goto loop152_test
  loop152_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P154, exception, 'type'
    eq $P154, 65, loop152_next
    eq $P154, 67, loop152_redo
  loop152_done:
    pop_eh 
  for_undef_108:
.annotate "line", 63
    find_lex $P155, "$/"
    find_lex $P156, "$past"
    $P157 = $P155."!make"($P156)
.annotate "line", 49
    .return ($P157)
  control_108:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P158, exception, "payload"
    .return ($P158)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block120"  :anon :subid("19_1256765560.03654") :outer("18_1256765560.03654")
    .param pmc param_122
.annotate "line", 52
    .lex "$_", param_122
.annotate "line", 53
    find_lex $P123, "$_"
    $P124 = $P123."ast"()
    .lex "$ast", $P124
.annotate "line", 54
    find_lex $P127, "$ast"
    isfalse $I128, $P127
    if $I128, if_126
.annotate "line", 55
    find_lex $P133, "$lastlit"
    if $P133, if_132
    set $P131, $P133
    goto if_132_end
  if_132:
    find_lex $P134, "$ast"
    $S135 = $P134."pasttype"()
    iseq $I136, $S135, "literal"
    new $P131, 'Integer'
    set $P131, $I136
  if_132_end:
    if $P131, if_130
.annotate "line", 59
    find_lex $P143, "$past"
    find_lex $P144, "$ast"
    $P143."push"($P144)
.annotate "line", 60
    find_lex $P147, "$ast"
    $S148 = $P147."pasttype"()
    iseq $I149, $S148, "literal"
    if $I149, if_146
    new $P151, "Integer"
    assign $P151, 0
    set $P145, $P151
    goto if_146_end
  if_146:
    find_lex $P150, "$ast"
    set $P145, $P150
  if_146_end:
    store_lex "$lastlit", $P145
.annotate "line", 58
    set $P129, $P145
.annotate "line", 55
    goto if_130_end
  if_130:
.annotate "line", 56
    find_lex $P137, "$lastlit"
    unless_null $P137, vivify_109
    new $P137, "ResizablePMCArray"
  vivify_109:
    set $P138, $P137[0]
    unless_null $P138, vivify_110
    new $P138, "Undef"
  vivify_110:
    find_lex $P139, "$ast"
    unless_null $P139, vivify_111
    new $P139, "ResizablePMCArray"
  vivify_111:
    set $P140, $P139[0]
    unless_null $P140, vivify_112
    new $P140, "Undef"
  vivify_112:
    concat $P141, $P138, $P140
    find_lex $P142, "$lastlit"
    unless_null $P142, vivify_113
    new $P142, "ResizablePMCArray"
    store_lex "$lastlit", $P142
  vivify_113:
    set $P142[0], $P141
.annotate "line", 55
    set $P129, $P141
  if_130_end:
    set $P125, $P129
.annotate "line", 54
    goto if_126_end
  if_126:
  if_126_end:
.annotate "line", 52
    .return ($P125)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("20_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_162
.annotate "line", 66
    .const 'Sub' $P170 = "21_1256765560.03654" 
    capture_lex $P170
    new $P161, 'ExceptionHandler'
    set_addr $P161, control_160
    $P161."handle_types"(58)
    push_eh $P161
    .lex "self", self
    .lex "$/", param_162
.annotate "line", 67
    find_lex $P163, "$/"
    unless_null $P163, vivify_114
    new $P163, "Hash"
  vivify_114:
    set $P164, $P163["atom"]
    unless_null $P164, vivify_115
    new $P164, "Undef"
  vivify_115:
    $P165 = $P164."ast"()
    .lex "$past", $P165
.annotate "line", 68
    find_lex $P167, "$/"
    unless_null $P167, vivify_116
    new $P167, "Hash"
  vivify_116:
    set $P168, $P167["quantifier"]
    unless_null $P168, vivify_117
    new $P168, "Undef"
  vivify_117:
    if $P168, if_166
.annotate "line", 74
    find_lex $P183, "$/"
    unless_null $P183, vivify_118
    new $P183, "Hash"
  vivify_118:
    set $P184, $P183["backmod"]
    unless_null $P184, vivify_119
    new $P184, "ResizablePMCArray"
  vivify_119:
    set $P185, $P184[0]
    unless_null $P185, vivify_120
    new $P185, "Undef"
  vivify_120:
    unless $P185, if_182_end
    find_lex $P186, "$past"
    find_lex $P187, "$/"
    unless_null $P187, vivify_121
    new $P187, "Hash"
  vivify_121:
    set $P188, $P187["backmod"]
    unless_null $P188, vivify_122
    new $P188, "ResizablePMCArray"
  vivify_122:
    set $P189, $P188[0]
    unless_null $P189, vivify_123
    new $P189, "Undef"
  vivify_123:
    "backmod"($P186, $P189)
  if_182_end:
    goto if_166_end
  if_166:
.annotate "line", 68
    .const 'Sub' $P170 = "21_1256765560.03654" 
    capture_lex $P170
    $P170()
  if_166_end:
.annotate "line", 75
    find_lex $P195, "$past"
    if $P195, if_194
    set $P193, $P195
    goto if_194_end
  if_194:
    find_lex $P196, "$past"
    $P197 = $P196."backtrack"()
    isfalse $I198, $P197
    new $P193, 'Integer'
    set $P193, $I198
  if_194_end:
    if $P193, if_192
    set $P191, $P193
    goto if_192_end
  if_192:
    get_global $P199, "@MODIFIERS"
    unless_null $P199, vivify_127
    new $P199, "ResizablePMCArray"
  vivify_127:
    set $P200, $P199[0]
    unless_null $P200, vivify_128
    new $P200, "Hash"
  vivify_128:
    set $P201, $P200["r"]
    unless_null $P201, vivify_129
    new $P201, "Undef"
  vivify_129:
    set $P191, $P201
  if_192_end:
    unless $P191, if_190_end
.annotate "line", 76
    find_lex $P202, "$past"
    $P202."backtrack"("r")
  if_190_end:
.annotate "line", 78
    find_lex $P203, "$/"
    find_lex $P204, "$past"
    $P205 = $P203."!make"($P204)
.annotate "line", 66
    .return ($P205)
  control_160:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P206, exception, "payload"
    .return ($P206)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block169"  :anon :subid("21_1256765560.03654") :outer("20_1256765560.03654")
.annotate "line", 69
    find_lex $P172, "$past"
    isfalse $I173, $P172
    unless $I173, if_171_end
    find_lex $P174, "$/"
    $P174."panic"("Can't quantify zero-width atom")
  if_171_end:
.annotate "line", 70
    find_lex $P175, "$/"
    unless_null $P175, vivify_124
    new $P175, "Hash"
  vivify_124:
    set $P176, $P175["quantifier"]
    unless_null $P176, vivify_125
    new $P176, "ResizablePMCArray"
  vivify_125:
    set $P177, $P176[0]
    unless_null $P177, vivify_126
    new $P177, "Undef"
  vivify_126:
    $P178 = $P177."ast"()
    .lex "$qast", $P178
.annotate "line", 71
    find_lex $P179, "$qast"
    find_lex $P180, "$past"
    $P179."unshift"($P180)
.annotate "line", 72
    find_lex $P181, "$qast"
    store_lex "$past", $P181
.annotate "line", 68
    .return ($P181)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("22_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_210
.annotate "line", 81
    new $P209, 'ExceptionHandler'
    set_addr $P209, control_208
    $P209."handle_types"(58)
    push_eh $P209
    .lex "self", self
    .lex "$/", param_210
    new $P211, "Undef"
    .lex "$past", $P211
.annotate "line", 83
    find_lex $P213, "$/"
    unless_null $P213, vivify_130
    new $P213, "Hash"
  vivify_130:
    set $P214, $P213["metachar"]
    unless_null $P214, vivify_131
    new $P214, "Undef"
  vivify_131:
    if $P214, if_212
.annotate "line", 85
    get_hll_global $P218, ["PAST"], "Regex"
    find_lex $P219, "$/"
    set $S220, $P219
    find_lex $P221, "$/"
    $P222 = $P218."new"($S220, "literal" :named("pasttype"), $P221 :named("node"))
    store_lex "$past", $P222
.annotate "line", 86
    get_global $P224, "@MODIFIERS"
    unless_null $P224, vivify_132
    new $P224, "ResizablePMCArray"
  vivify_132:
    set $P225, $P224[0]
    unless_null $P225, vivify_133
    new $P225, "Hash"
  vivify_133:
    set $P226, $P225["i"]
    unless_null $P226, vivify_134
    new $P226, "Undef"
  vivify_134:
    unless $P226, if_223_end
    find_lex $P227, "$past"
    $P227."subtype"("ignorecase")
  if_223_end:
.annotate "line", 84
    goto if_212_end
  if_212:
.annotate "line", 83
    find_lex $P215, "$/"
    unless_null $P215, vivify_135
    new $P215, "Hash"
  vivify_135:
    set $P216, $P215["metachar"]
    unless_null $P216, vivify_136
    new $P216, "Undef"
  vivify_136:
    $P217 = $P216."ast"()
    store_lex "$past", $P217
  if_212_end:
.annotate "line", 88
    find_lex $P228, "$/"
    find_lex $P229, "$past"
    $P230 = $P228."!make"($P229)
.annotate "line", 81
    .return ($P230)
  control_208:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P231, exception, "payload"
    .return ($P231)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("23_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_235
.annotate "line", 91
    new $P234, 'ExceptionHandler'
    set_addr $P234, control_233
    $P234."handle_types"(58)
    push_eh $P234
    .lex "self", self
    .lex "$/", param_235
.annotate "line", 92
    get_hll_global $P236, ["PAST"], "Regex"
    find_lex $P237, "$/"
    $P238 = $P236."new"("quant" :named("pasttype"), $P237 :named("node"))
    .lex "$past", $P238
.annotate "line", 93
    find_lex $P239, "$/"
    find_lex $P240, "$past"
    find_lex $P241, "$/"
    unless_null $P241, vivify_137
    new $P241, "Hash"
  vivify_137:
    set $P242, $P241["backmod"]
    unless_null $P242, vivify_138
    new $P242, "Undef"
  vivify_138:
    $P243 = "backmod"($P240, $P242)
    $P244 = $P239."!make"($P243)
.annotate "line", 91
    .return ($P244)
  control_233:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P245, exception, "payload"
    .return ($P245)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("24_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_249
.annotate "line", 96
    new $P248, 'ExceptionHandler'
    set_addr $P248, control_247
    $P248."handle_types"(58)
    push_eh $P248
    .lex "self", self
    .lex "$/", param_249
.annotate "line", 97
    get_hll_global $P250, ["PAST"], "Regex"
    find_lex $P251, "$/"
    $P252 = $P250."new"("quant" :named("pasttype"), 1 :named("min"), $P251 :named("node"))
    .lex "$past", $P252
.annotate "line", 98
    find_lex $P253, "$/"
    find_lex $P254, "$past"
    find_lex $P255, "$/"
    unless_null $P255, vivify_139
    new $P255, "Hash"
  vivify_139:
    set $P256, $P255["backmod"]
    unless_null $P256, vivify_140
    new $P256, "Undef"
  vivify_140:
    $P257 = "backmod"($P254, $P256)
    $P258 = $P253."!make"($P257)
.annotate "line", 96
    .return ($P258)
  control_247:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P259, exception, "payload"
    .return ($P259)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("25_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_263
.annotate "line", 101
    new $P262, 'ExceptionHandler'
    set_addr $P262, control_261
    $P262."handle_types"(58)
    push_eh $P262
    .lex "self", self
    .lex "$/", param_263
.annotate "line", 102
    get_hll_global $P264, ["PAST"], "Regex"
    find_lex $P265, "$/"
    $P266 = $P264."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P265 :named("node"))
    .lex "$past", $P266
.annotate "line", 103
    find_lex $P267, "$/"
    find_lex $P268, "$past"
    find_lex $P269, "$/"
    unless_null $P269, vivify_141
    new $P269, "Hash"
  vivify_141:
    set $P270, $P269["backmod"]
    unless_null $P270, vivify_142
    new $P270, "Undef"
  vivify_142:
    $P271 = "backmod"($P268, $P270)
    $P267."!make"($P271)
.annotate "line", 104
    find_lex $P272, "$/"
    find_lex $P273, "$past"
    $P274 = $P272."!make"($P273)
.annotate "line", 101
    .return ($P274)
  control_261:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P275, exception, "payload"
    .return ($P275)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("26_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_279
.annotate "line", 107
    new $P278, 'ExceptionHandler'
    set_addr $P278, control_277
    $P278."handle_types"(58)
    push_eh $P278
    .lex "self", self
    .lex "$/", param_279
    new $P280, "Undef"
    .lex "$past", $P280
.annotate "line", 109
    find_lex $P282, "$/"
    unless_null $P282, vivify_143
    new $P282, "Hash"
  vivify_143:
    set $P283, $P282["quantified_atom"]
    unless_null $P283, vivify_144
    new $P283, "Undef"
  vivify_144:
    if $P283, if_281
.annotate "line", 114
    get_hll_global $P290, ["PAST"], "Regex"
    find_lex $P291, "$/"
    unless_null $P291, vivify_145
    new $P291, "Hash"
  vivify_145:
    set $P292, $P291["min"]
    unless_null $P292, vivify_146
    new $P292, "Undef"
  vivify_146:
    set $N293, $P292
    find_lex $P294, "$/"
    $P295 = $P290."new"("quant" :named("pasttype"), $N293 :named("min"), $P294 :named("node"))
    store_lex "$past", $P295
.annotate "line", 115
    find_lex $P297, "$/"
    unless_null $P297, vivify_147
    new $P297, "Hash"
  vivify_147:
    set $P298, $P297["max"]
    unless_null $P298, vivify_148
    new $P298, "Undef"
  vivify_148:
    isfalse $I299, $P298
    if $I299, if_296
.annotate "line", 116
    find_lex $P305, "$/"
    unless_null $P305, vivify_149
    new $P305, "Hash"
  vivify_149:
    set $P306, $P305["max"]
    unless_null $P306, vivify_150
    new $P306, "ResizablePMCArray"
  vivify_150:
    set $P307, $P306[0]
    unless_null $P307, vivify_151
    new $P307, "Undef"
  vivify_151:
    set $S308, $P307
    isne $I309, $S308, "*"
    unless $I309, if_304_end
    find_lex $P310, "$past"
    find_lex $P311, "$/"
    unless_null $P311, vivify_152
    new $P311, "Hash"
  vivify_152:
    set $P312, $P311["max"]
    unless_null $P312, vivify_153
    new $P312, "ResizablePMCArray"
  vivify_153:
    set $P313, $P312[0]
    unless_null $P313, vivify_154
    new $P313, "Undef"
  vivify_154:
    set $N314, $P313
    $P310."max"($N314)
  if_304_end:
    goto if_296_end
  if_296:
.annotate "line", 115
    find_lex $P300, "$past"
    find_lex $P301, "$/"
    unless_null $P301, vivify_155
    new $P301, "Hash"
  vivify_155:
    set $P302, $P301["min"]
    unless_null $P302, vivify_156
    new $P302, "Undef"
  vivify_156:
    set $N303, $P302
    $P300."max"($N303)
  if_296_end:
.annotate "line", 113
    goto if_281_end
  if_281:
.annotate "line", 110
    get_hll_global $P284, ["PAST"], "Regex"
.annotate "line", 111
    find_lex $P285, "$/"
    unless_null $P285, vivify_157
    new $P285, "Hash"
  vivify_157:
    set $P286, $P285["quantified_atom"]
    unless_null $P286, vivify_158
    new $P286, "Undef"
  vivify_158:
    $P287 = $P286."ast"()
    find_lex $P288, "$/"
    $P289 = $P284."new"("quant" :named("pasttype"), 1 :named("min"), $P287 :named("sep"), $P288 :named("node"))
.annotate "line", 110
    store_lex "$past", $P289
  if_281_end:
.annotate "line", 118
    find_lex $P315, "$/"
    find_lex $P316, "$past"
    find_lex $P317, "$/"
    unless_null $P317, vivify_159
    new $P317, "Hash"
  vivify_159:
    set $P318, $P317["backmod"]
    unless_null $P318, vivify_160
    new $P318, "Undef"
  vivify_160:
    $P319 = "backmod"($P316, $P318)
    $P320 = $P315."!make"($P319)
.annotate "line", 107
    .return ($P320)
  control_277:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P321, exception, "payload"
    .return ($P321)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("27_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_325
.annotate "line", 121
    new $P324, 'ExceptionHandler'
    set_addr $P324, control_323
    $P324."handle_types"(58)
    push_eh $P324
    .lex "self", self
    .lex "$/", param_325
.annotate "line", 123
    get_global $P328, "@MODIFIERS"
    unless_null $P328, vivify_161
    new $P328, "ResizablePMCArray"
  vivify_161:
    set $P329, $P328[0]
    unless_null $P329, vivify_162
    new $P329, "Hash"
  vivify_162:
    set $P330, $P329["s"]
    unless_null $P330, vivify_163
    new $P330, "Undef"
  vivify_163:
    if $P330, if_327
    new $P334, "Integer"
    assign $P334, 0
    set $P326, $P334
    goto if_327_end
  if_327:
    get_hll_global $P331, ["PAST"], "Regex"
    find_lex $P332, "$/"
    $P333 = $P331."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P332 :named("node"))
    set $P326, $P333
  if_327_end:
    .lex "$past", $P326
.annotate "line", 126
    find_lex $P335, "$/"
    find_lex $P336, "$past"
    $P337 = $P335."!make"($P336)
.annotate "line", 121
    .return ($P337)
  control_323:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P338, exception, "payload"
    .return ($P338)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("28_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_342
.annotate "line", 130
    new $P341, 'ExceptionHandler'
    set_addr $P341, control_340
    $P341."handle_types"(58)
    push_eh $P341
    .lex "self", self
    .lex "$/", param_342
.annotate "line", 131
    find_lex $P343, "$/"
    find_lex $P344, "$/"
    unless_null $P344, vivify_164
    new $P344, "Hash"
  vivify_164:
    set $P345, $P344["nibbler"]
    unless_null $P345, vivify_165
    new $P345, "Undef"
  vivify_165:
    $P346 = $P345."ast"()
    $P347 = $P343."!make"($P346)
.annotate "line", 130
    .return ($P347)
  control_340:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P348, exception, "payload"
    .return ($P348)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("29_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_352
.annotate "line", 134
    new $P351, 'ExceptionHandler'
    set_addr $P351, control_350
    $P351."handle_types"(58)
    push_eh $P351
    .lex "self", self
    .lex "$/", param_352
.annotate "line", 135
    find_lex $P353, "$/"
    unless_null $P353, vivify_166
    new $P353, "Hash"
  vivify_166:
    set $P354, $P353["nibbler"]
    unless_null $P354, vivify_167
    new $P354, "Undef"
  vivify_167:
    $P355 = $P354."ast"()
    $P356 = "buildsub"($P355)
    .lex "$subpast", $P356
.annotate "line", 136
    get_hll_global $P357, ["PAST"], "Regex"
    find_lex $P358, "$subpast"
    find_lex $P359, "$/"
    $P360 = $P357."new"($P358, "subrule" :named("pasttype"), "capture" :named("subtype"), $P359 :named("node"))
    .lex "$past", $P360
.annotate "line", 138
    find_lex $P361, "$/"
    find_lex $P362, "$past"
    $P363 = $P361."!make"($P362)
.annotate "line", 134
    .return ($P363)
  control_350:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P364, exception, "payload"
    .return ($P364)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("30_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_368
.annotate "line", 141
    new $P367, 'ExceptionHandler'
    set_addr $P367, control_366
    $P367."handle_types"(58)
    push_eh $P367
    .lex "self", self
    .lex "$/", param_368
.annotate "line", 142
    get_hll_global $P369, ["PAST"], "Regex"
    find_lex $P370, "$/"
    unless_null $P370, vivify_168
    new $P370, "Hash"
  vivify_168:
    set $P371, $P370["quote"]
    unless_null $P371, vivify_169
    new $P371, "Hash"
  vivify_169:
    set $P372, $P371["val"]
    unless_null $P372, vivify_170
    new $P372, "Undef"
  vivify_170:
    set $S373, $P372
    find_lex $P374, "$/"
    $P375 = $P369."new"($S373, "literal" :named("pasttype"), $P374 :named("node"))
    .lex "$past", $P375
.annotate "line", 143
    find_lex $P376, "$/"
    find_lex $P377, "$past"
    $P378 = $P376."!make"($P377)
.annotate "line", 141
    .return ($P378)
  control_366:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P379, exception, "payload"
    .return ($P379)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("31_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_383
.annotate "line", 146
    new $P382, 'ExceptionHandler'
    set_addr $P382, control_381
    $P382."handle_types"(58)
    push_eh $P382
    .lex "self", self
    .lex "$/", param_383
.annotate "line", 147
    get_hll_global $P384, ["PAST"], "Regex"
    find_lex $P385, "$/"
    $P386 = $P384."new"("charclass" :named("pasttype"), "." :named("subtype"), $P385 :named("node"))
    .lex "$past", $P386
.annotate "line", 148
    find_lex $P387, "$/"
    find_lex $P388, "$past"
    $P389 = $P387."!make"($P388)
.annotate "line", 146
    .return ($P389)
  control_381:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P390, exception, "payload"
    .return ($P390)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("32_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_394
.annotate "line", 151
    new $P393, 'ExceptionHandler'
    set_addr $P393, control_392
    $P393."handle_types"(58)
    push_eh $P393
    .lex "self", self
    .lex "$/", param_394
.annotate "line", 152
    get_hll_global $P395, ["PAST"], "Regex"
    find_lex $P396, "$/"
    $P397 = $P395."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P396 :named("node"))
    .lex "$past", $P397
.annotate "line", 153
    find_lex $P398, "$/"
    find_lex $P399, "$past"
    $P400 = $P398."!make"($P399)
.annotate "line", 151
    .return ($P400)
  control_392:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P401, exception, "payload"
    .return ($P401)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("33_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_405
.annotate "line", 156
    new $P404, 'ExceptionHandler'
    set_addr $P404, control_403
    $P404."handle_types"(58)
    push_eh $P404
    .lex "self", self
    .lex "$/", param_405
.annotate "line", 157
    get_hll_global $P406, ["PAST"], "Regex"
    find_lex $P407, "$/"
    $P408 = $P406."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P407 :named("node"))
    .lex "$past", $P408
.annotate "line", 158
    find_lex $P409, "$/"
    find_lex $P410, "$past"
    $P411 = $P409."!make"($P410)
.annotate "line", 156
    .return ($P411)
  control_403:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P412, exception, "payload"
    .return ($P412)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("34_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_416
.annotate "line", 161
    new $P415, 'ExceptionHandler'
    set_addr $P415, control_414
    $P415."handle_types"(58)
    push_eh $P415
    .lex "self", self
    .lex "$/", param_416
.annotate "line", 162
    get_hll_global $P417, ["PAST"], "Regex"
    find_lex $P418, "$/"
    $P419 = $P417."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P418 :named("node"))
    .lex "$past", $P419
.annotate "line", 163
    find_lex $P420, "$/"
    find_lex $P421, "$past"
    $P422 = $P420."!make"($P421)
.annotate "line", 161
    .return ($P422)
  control_414:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P423, exception, "payload"
    .return ($P423)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("35_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_427
.annotate "line", 166
    new $P426, 'ExceptionHandler'
    set_addr $P426, control_425
    $P426."handle_types"(58)
    push_eh $P426
    .lex "self", self
    .lex "$/", param_427
.annotate "line", 167
    get_hll_global $P428, ["PAST"], "Regex"
    find_lex $P429, "$/"
    $P430 = $P428."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P429 :named("node"))
    .lex "$past", $P430
.annotate "line", 168
    find_lex $P431, "$/"
    find_lex $P432, "$past"
    $P433 = $P431."!make"($P432)
.annotate "line", 166
    .return ($P433)
  control_425:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P434, exception, "payload"
    .return ($P434)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("36_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_438
.annotate "line", 171
    new $P437, 'ExceptionHandler'
    set_addr $P437, control_436
    $P437."handle_types"(58)
    push_eh $P437
    .lex "self", self
    .lex "$/", param_438
.annotate "line", 172
    get_hll_global $P439, ["PAST"], "Regex"
    find_lex $P440, "$/"
    $P441 = $P439."new"("cut" :named("pasttype"), $P440 :named("node"))
    .lex "$past", $P441
.annotate "line", 173
    find_lex $P442, "$/"
    find_lex $P443, "$past"
    $P444 = $P442."!make"($P443)
.annotate "line", 171
    .return ($P444)
  control_436:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P445, exception, "payload"
    .return ($P445)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("37_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_449
.annotate "line", 176
    new $P448, 'ExceptionHandler'
    set_addr $P448, control_447
    $P448."handle_types"(58)
    push_eh $P448
    .lex "self", self
    .lex "$/", param_449
.annotate "line", 177
    get_hll_global $P450, ["PAST"], "Regex"
    find_lex $P451, "$/"
    $P452 = $P450."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P451 :named("node"))
    .lex "$past", $P452
.annotate "line", 178
    find_lex $P453, "$/"
    find_lex $P454, "$past"
    $P455 = $P453."!make"($P454)
.annotate "line", 176
    .return ($P455)
  control_447:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P456, exception, "payload"
    .return ($P456)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("38_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_460
.annotate "line", 181
    new $P459, 'ExceptionHandler'
    set_addr $P459, control_458
    $P459."handle_types"(58)
    push_eh $P459
    .lex "self", self
    .lex "$/", param_460
.annotate "line", 182
    get_hll_global $P461, ["PAST"], "Regex"
    find_lex $P462, "$/"
    $P463 = $P461."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P462 :named("node"))
    .lex "$past", $P463
.annotate "line", 183
    find_lex $P464, "$/"
    find_lex $P465, "$past"
    $P466 = $P464."!make"($P465)
.annotate "line", 181
    .return ($P466)
  control_458:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P467, exception, "payload"
    .return ($P467)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("39_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_471
.annotate "line", 186
    new $P470, 'ExceptionHandler'
    set_addr $P470, control_469
    $P470."handle_types"(58)
    push_eh $P470
    .lex "self", self
    .lex "$/", param_471
.annotate "line", 187
    find_lex $P472, "$/"
    find_lex $P473, "$/"
    unless_null $P473, vivify_171
    new $P473, "Hash"
  vivify_171:
    set $P474, $P473["backslash"]
    unless_null $P474, vivify_172
    new $P474, "Undef"
  vivify_172:
    $P475 = $P474."ast"()
    $P476 = $P472."!make"($P475)
.annotate "line", 186
    .return ($P476)
  control_469:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P477, exception, "payload"
    .return ($P477)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("40_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_481
.annotate "line", 190
    new $P480, 'ExceptionHandler'
    set_addr $P480, control_479
    $P480."handle_types"(58)
    push_eh $P480
    .lex "self", self
    .lex "$/", param_481
.annotate "line", 191
    find_lex $P482, "$/"
    find_lex $P483, "$/"
    unless_null $P483, vivify_173
    new $P483, "Hash"
  vivify_173:
    set $P484, $P483["mod_internal"]
    unless_null $P484, vivify_174
    new $P484, "Undef"
  vivify_174:
    $P485 = $P484."ast"()
    $P486 = $P482."!make"($P485)
.annotate "line", 190
    .return ($P486)
  control_479:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P487, exception, "payload"
    .return ($P487)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("41_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_491
.annotate "line", 194
    new $P490, 'ExceptionHandler'
    set_addr $P490, control_489
    $P490."handle_types"(58)
    push_eh $P490
    .lex "self", self
    .lex "$/", param_491
.annotate "line", 195
    find_lex $P492, "$/"
    find_lex $P493, "$/"
    unless_null $P493, vivify_175
    new $P493, "Hash"
  vivify_175:
    set $P494, $P493["assertion"]
    unless_null $P494, vivify_176
    new $P494, "Undef"
  vivify_176:
    $P495 = $P494."ast"()
    $P496 = $P492."!make"($P495)
.annotate "line", 194
    .return ($P496)
  control_489:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P497, exception, "payload"
    .return ($P497)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("42_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_501
.annotate "line", 198
    new $P500, 'ExceptionHandler'
    set_addr $P500, control_499
    $P500."handle_types"(58)
    push_eh $P500
    .lex "self", self
    .lex "$/", param_501
.annotate "line", 199
    find_lex $P502, "$/"
    get_hll_global $P503, ["PAST"], "Regex"
.annotate "line", 200
    find_lex $P504, "$/"
    unless_null $P504, vivify_177
    new $P504, "Hash"
  vivify_177:
    set $P505, $P504["EXPR"]
    unless_null $P505, vivify_178
    new $P505, "Undef"
  vivify_178:
    $P506 = $P505."ast"()
.annotate "line", 201
    get_hll_global $P507, ["PAST"], "Regex"
.annotate "line", 202
    find_lex $P508, "$/"
    unless_null $P508, vivify_179
    new $P508, "Hash"
  vivify_179:
    set $P509, $P508["GOAL"]
    unless_null $P509, vivify_180
    new $P509, "Undef"
  vivify_180:
    $P510 = $P509."ast"()
.annotate "line", 203
    get_hll_global $P511, ["PAST"], "Regex"
    find_lex $P512, "$/"
    unless_null $P512, vivify_181
    new $P512, "Hash"
  vivify_181:
    set $P513, $P512["GOAL"]
    unless_null $P513, vivify_182
    new $P513, "Undef"
  vivify_182:
    set $S514, $P513
    $P515 = $P511."new"("FAILGOAL", $S514, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P516 = $P507."new"($P510, $P515, "alt" :named("pasttype"))
.annotate "line", 201
    $P517 = $P503."new"($P506, $P516, "concat" :named("pasttype"))
.annotate "line", 199
    $P518 = $P502."!make"($P517)
.annotate "line", 198
    .return ($P518)
  control_499:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P519, exception, "payload"
    .return ($P519)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("43_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_523
.annotate "line", 211
    new $P522, 'ExceptionHandler'
    set_addr $P522, control_521
    $P522."handle_types"(58)
    push_eh $P522
    .lex "self", self
    .lex "$/", param_523
.annotate "line", 213
    find_lex $P526, "$/"
    unless_null $P526, vivify_183
    new $P526, "Hash"
  vivify_183:
    set $P527, $P526["key"]
    unless_null $P527, vivify_184
    new $P527, "Undef"
  vivify_184:
    if $P527, if_525
    new $P535, "Integer"
    assign $P535, 0
    set $P524, $P535
    goto if_525_end
  if_525:
    get_hll_global $P528, ["PAST"], "Regex"
    find_lex $P529, "$/"
    unless_null $P529, vivify_185
    new $P529, "Hash"
  vivify_185:
    set $P530, $P529["key"]
    unless_null $P530, vivify_186
    new $P530, "ResizablePMCArray"
  vivify_186:
    set $P531, $P530[0]
    unless_null $P531, vivify_187
    new $P531, "Undef"
  vivify_187:
    set $S532, $P531
    find_lex $P533, "$/"
    $P534 = $P528."new"($S532, "reduce" :named("pasttype"), $P533 :named("node"))
    set $P524, $P534
  if_525_end:
    .lex "$past", $P524
.annotate "line", 215
    find_lex $P536, "$/"
    find_lex $P537, "$past"
    $P538 = $P536."!make"($P537)
.annotate "line", 211
    .return ($P538)
  control_521:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P539, exception, "payload"
    .return ($P539)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("44_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_543
.annotate "line", 218
    new $P542, 'ExceptionHandler'
    set_addr $P542, control_541
    $P542."handle_types"(58)
    push_eh $P542
    .lex "self", self
    .lex "$/", param_543
    new $P544, "Undef"
    .lex "$past", $P544
.annotate "line", 220
    find_lex $P547, "$/"
    unless_null $P547, vivify_188
    new $P547, "Hash"
  vivify_188:
    set $P548, $P547["pos"]
    unless_null $P548, vivify_189
    new $P548, "Undef"
  vivify_189:
    if $P548, if_546
    find_lex $P552, "$/"
    unless_null $P552, vivify_190
    new $P552, "Hash"
  vivify_190:
    set $P553, $P552["name"]
    unless_null $P553, vivify_191
    new $P553, "Undef"
  vivify_191:
    set $S554, $P553
    new $P545, 'String'
    set $P545, $S554
    goto if_546_end
  if_546:
    find_lex $P549, "$/"
    unless_null $P549, vivify_192
    new $P549, "Hash"
  vivify_192:
    set $P550, $P549["pos"]
    unless_null $P550, vivify_193
    new $P550, "Undef"
  vivify_193:
    set $N551, $P550
    new $P545, 'Float'
    set $P545, $N551
  if_546_end:
    .lex "$name", $P545
.annotate "line", 221
    find_lex $P556, "$/"
    unless_null $P556, vivify_194
    new $P556, "Hash"
  vivify_194:
    set $P557, $P556["quantified_atom"]
    unless_null $P557, vivify_195
    new $P557, "Undef"
  vivify_195:
    if $P557, if_555
.annotate "line", 232
    get_hll_global $P586, ["PAST"], "Regex"
    find_lex $P587, "$name"
    find_lex $P588, "$/"
    $P589 = $P586."new"("!BACKREF", $P587, "subrule" :named("pasttype"), "method" :named("subtype"), $P588 :named("node"))
    store_lex "$past", $P589
.annotate "line", 231
    goto if_555_end
  if_555:
.annotate "line", 222
    find_lex $P558, "$/"
    unless_null $P558, vivify_196
    new $P558, "Hash"
  vivify_196:
    set $P559, $P558["quantified_atom"]
    unless_null $P559, vivify_197
    new $P559, "ResizablePMCArray"
  vivify_197:
    set $P560, $P559[0]
    unless_null $P560, vivify_198
    new $P560, "Undef"
  vivify_198:
    $P561 = $P560."ast"()
    store_lex "$past", $P561
.annotate "line", 223
    find_lex $P565, "$past"
    $S566 = $P565."pasttype"()
    iseq $I567, $S566, "quant"
    if $I567, if_564
    new $P563, 'Integer'
    set $P563, $I567
    goto if_564_end
  if_564:
    find_lex $P568, "$past"
    unless_null $P568, vivify_199
    new $P568, "ResizablePMCArray"
  vivify_199:
    set $P569, $P568[0]
    unless_null $P569, vivify_200
    new $P569, "Undef"
  vivify_200:
    $S570 = $P569."pasttype"()
    iseq $I571, $S570, "subrule"
    new $P563, 'Integer'
    set $P563, $I571
  if_564_end:
    if $P563, if_562
.annotate "line", 226
    find_lex $P576, "$past"
    $S577 = $P576."pasttype"()
    iseq $I578, $S577, "subrule"
    if $I578, if_575
.annotate "line", 228
    get_hll_global $P581, ["PAST"], "Regex"
    find_lex $P582, "$past"
    find_lex $P583, "$name"
    find_lex $P584, "$/"
    $P585 = $P581."new"($P582, $P583 :named("name"), "subcapture" :named("pasttype"), $P584 :named("node"))
    store_lex "$past", $P585
.annotate "line", 227
    goto if_575_end
  if_575:
.annotate "line", 226
    find_lex $P579, "$past"
    find_lex $P580, "$name"
    "subrule_alias"($P579, $P580)
  if_575_end:
    goto if_562_end
  if_562:
.annotate "line", 224
    find_lex $P572, "$past"
    unless_null $P572, vivify_201
    new $P572, "ResizablePMCArray"
  vivify_201:
    set $P573, $P572[0]
    unless_null $P573, vivify_202
    new $P573, "Undef"
  vivify_202:
    find_lex $P574, "$name"
    "subrule_alias"($P573, $P574)
  if_562_end:
  if_555_end:
.annotate "line", 235
    find_lex $P590, "$/"
    find_lex $P591, "$past"
    $P592 = $P590."!make"($P591)
.annotate "line", 218
    .return ($P592)
  control_541:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P593, exception, "payload"
    .return ($P593)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("45_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_597
.annotate "line", 238
    new $P596, 'ExceptionHandler'
    set_addr $P596, control_595
    $P596."handle_types"(58)
    push_eh $P596
    .lex "self", self
    .lex "$/", param_597
.annotate "line", 239
    find_lex $P598, "$/"
    get_hll_global $P599, ["PAST"], "Regex"
.annotate "line", 240
    get_hll_global $P600, ["PAST"], "Op"
    find_lex $P601, "$/"
    unless_null $P601, vivify_203
    new $P601, "Hash"
  vivify_203:
    set $P602, $P601["pir"]
    unless_null $P602, vivify_204
    new $P602, "Undef"
  vivify_204:
    set $S603, $P602
    $P604 = $P600."new"($S603 :named("inline"), "inline" :named("pasttype"))
    find_lex $P605, "$/"
    $P606 = $P599."new"($P604, "pastnode" :named("pasttype"), $P605 :named("node"))
.annotate "line", 239
    $P607 = $P598."!make"($P606)
.annotate "line", 238
    .return ($P607)
  control_595:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P608, exception, "payload"
    .return ($P608)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("46_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_612
.annotate "line", 246
    new $P611, 'ExceptionHandler'
    set_addr $P611, control_610
    $P611."handle_types"(58)
    push_eh $P611
    .lex "self", self
    .lex "$/", param_612
.annotate "line", 247
    find_lex $P615, "$/"
    unless_null $P615, vivify_205
    new $P615, "Hash"
  vivify_205:
    set $P616, $P615["sym"]
    unless_null $P616, vivify_206
    new $P616, "Undef"
  vivify_206:
    set $S617, $P616
    iseq $I618, $S617, "n"
    if $I618, if_614
    find_lex $P620, "$/"
    unless_null $P620, vivify_207
    new $P620, "Hash"
  vivify_207:
    set $P621, $P620["sym"]
    unless_null $P621, vivify_208
    new $P621, "Undef"
  vivify_208:
    set $S622, $P621
    new $P613, 'String'
    set $P613, $S622
    goto if_614_end
  if_614:
    new $P619, "String"
    assign $P619, "nl"
    set $P613, $P619
  if_614_end:
    .lex "$subtype", $P613
.annotate "line", 248
    get_hll_global $P623, ["PAST"], "Regex"
    find_lex $P624, "$subtype"
    find_lex $P625, "$/"
    $P626 = $P623."new"("charclass" :named("pasttype"), $P624 :named("subtype"), $P625 :named("node"))
    .lex "$past", $P626
.annotate "line", 249
    find_lex $P627, "$/"
    find_lex $P628, "$past"
    $P629 = $P627."!make"($P628)
.annotate "line", 246
    .return ($P629)
  control_610:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P630, exception, "payload"
    .return ($P630)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("47_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_634
.annotate "line", 252
    new $P633, 'ExceptionHandler'
    set_addr $P633, control_632
    $P633."handle_types"(58)
    push_eh $P633
    .lex "self", self
    .lex "$/", param_634
.annotate "line", 253
    get_hll_global $P635, ["PAST"], "Regex"
.annotate "line", 254
    find_lex $P636, "$/"
    unless_null $P636, vivify_209
    new $P636, "Hash"
  vivify_209:
    set $P637, $P636["sym"]
    unless_null $P637, vivify_210
    new $P637, "Undef"
  vivify_210:
    set $S638, $P637
    iseq $I639, $S638, "B"
    find_lex $P640, "$/"
    $P641 = $P635."new"("\b", "enumcharlist" :named("pasttype"), $I639 :named("negate"), $P640 :named("node"))
.annotate "line", 253
    .lex "$past", $P641
.annotate "line", 255
    find_lex $P642, "$/"
    find_lex $P643, "$past"
    $P644 = $P642."!make"($P643)
.annotate "line", 252
    .return ($P644)
  control_632:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P645, exception, "payload"
    .return ($P645)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("48_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_649
.annotate "line", 258
    new $P648, 'ExceptionHandler'
    set_addr $P648, control_647
    $P648."handle_types"(58)
    push_eh $P648
    .lex "self", self
    .lex "$/", param_649
.annotate "line", 259
    get_hll_global $P650, ["PAST"], "Regex"
.annotate "line", 260
    find_lex $P651, "$/"
    unless_null $P651, vivify_211
    new $P651, "Hash"
  vivify_211:
    set $P652, $P651["sym"]
    unless_null $P652, vivify_212
    new $P652, "Undef"
  vivify_212:
    set $S653, $P652
    iseq $I654, $S653, "E"
    find_lex $P655, "$/"
    $P656 = $P650."new"("\\e", "enumcharlist" :named("pasttype"), $I654 :named("negate"), $P655 :named("node"))
.annotate "line", 259
    .lex "$past", $P656
.annotate "line", 261
    find_lex $P657, "$/"
    find_lex $P658, "$past"
    $P659 = $P657."!make"($P658)
.annotate "line", 258
    .return ($P659)
  control_647:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P660, exception, "payload"
    .return ($P660)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("49_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_664
.annotate "line", 264
    new $P663, 'ExceptionHandler'
    set_addr $P663, control_662
    $P663."handle_types"(58)
    push_eh $P663
    .lex "self", self
    .lex "$/", param_664
.annotate "line", 265
    get_hll_global $P665, ["PAST"], "Regex"
.annotate "line", 266
    find_lex $P666, "$/"
    unless_null $P666, vivify_213
    new $P666, "Hash"
  vivify_213:
    set $P667, $P666["sym"]
    unless_null $P667, vivify_214
    new $P667, "Undef"
  vivify_214:
    set $S668, $P667
    iseq $I669, $S668, "F"
    find_lex $P670, "$/"
    $P671 = $P665."new"("\\f", "enumcharlist" :named("pasttype"), $I669 :named("negate"), $P670 :named("node"))
.annotate "line", 265
    .lex "$past", $P671
.annotate "line", 267
    find_lex $P672, "$/"
    find_lex $P673, "$past"
    $P674 = $P672."!make"($P673)
.annotate "line", 264
    .return ($P674)
  control_662:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P675, exception, "payload"
    .return ($P675)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("50_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_679
.annotate "line", 270
    new $P678, 'ExceptionHandler'
    set_addr $P678, control_677
    $P678."handle_types"(58)
    push_eh $P678
    .lex "self", self
    .lex "$/", param_679
.annotate "line", 271
    get_hll_global $P680, ["PAST"], "Regex"
.annotate "line", 272
    find_lex $P681, "$/"
    unless_null $P681, vivify_215
    new $P681, "Hash"
  vivify_215:
    set $P682, $P681["sym"]
    unless_null $P682, vivify_216
    new $P682, "Undef"
  vivify_216:
    set $S683, $P682
    iseq $I684, $S683, "H"
    find_lex $P685, "$/"
    $P686 = $P680."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I684 :named("negate"), $P685 :named("node"))
.annotate "line", 271
    .lex "$past", $P686
.annotate "line", 273
    find_lex $P687, "$/"
    find_lex $P688, "$past"
    $P689 = $P687."!make"($P688)
.annotate "line", 270
    .return ($P689)
  control_677:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P690, exception, "payload"
    .return ($P690)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("51_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_694
.annotate "line", 276
    new $P693, 'ExceptionHandler'
    set_addr $P693, control_692
    $P693."handle_types"(58)
    push_eh $P693
    .lex "self", self
    .lex "$/", param_694
.annotate "line", 277
    get_hll_global $P695, ["PAST"], "Regex"
.annotate "line", 278
    find_lex $P696, "$/"
    unless_null $P696, vivify_217
    new $P696, "Hash"
  vivify_217:
    set $P697, $P696["sym"]
    unless_null $P697, vivify_218
    new $P697, "Undef"
  vivify_218:
    set $S698, $P697
    iseq $I699, $S698, "R"
    find_lex $P700, "$/"
    $P701 = $P695."new"("\r", "enumcharlist" :named("pasttype"), $I699 :named("negate"), $P700 :named("node"))
.annotate "line", 277
    .lex "$past", $P701
.annotate "line", 279
    find_lex $P702, "$/"
    find_lex $P703, "$past"
    $P704 = $P702."!make"($P703)
.annotate "line", 276
    .return ($P704)
  control_692:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P705, exception, "payload"
    .return ($P705)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("52_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_709
.annotate "line", 282
    new $P708, 'ExceptionHandler'
    set_addr $P708, control_707
    $P708."handle_types"(58)
    push_eh $P708
    .lex "self", self
    .lex "$/", param_709
.annotate "line", 283
    get_hll_global $P710, ["PAST"], "Regex"
.annotate "line", 284
    find_lex $P711, "$/"
    unless_null $P711, vivify_219
    new $P711, "Hash"
  vivify_219:
    set $P712, $P711["sym"]
    unless_null $P712, vivify_220
    new $P712, "Undef"
  vivify_220:
    set $S713, $P712
    iseq $I714, $S713, "T"
    find_lex $P715, "$/"
    $P716 = $P710."new"("\t", "enumcharlist" :named("pasttype"), $I714 :named("negate"), $P715 :named("node"))
.annotate "line", 283
    .lex "$past", $P716
.annotate "line", 285
    find_lex $P717, "$/"
    find_lex $P718, "$past"
    $P719 = $P717."!make"($P718)
.annotate "line", 282
    .return ($P719)
  control_707:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P720, exception, "payload"
    .return ($P720)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("53_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_724
.annotate "line", 288
    new $P723, 'ExceptionHandler'
    set_addr $P723, control_722
    $P723."handle_types"(58)
    push_eh $P723
    .lex "self", self
    .lex "$/", param_724
.annotate "line", 289
    get_hll_global $P725, ["PAST"], "Regex"
.annotate "line", 290
    find_lex $P726, "$/"
    unless_null $P726, vivify_221
    new $P726, "Hash"
  vivify_221:
    set $P727, $P726["sym"]
    unless_null $P727, vivify_222
    new $P727, "Undef"
  vivify_222:
    set $S728, $P727
    iseq $I729, $S728, "V"
    find_lex $P730, "$/"
    $P731 = $P725."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I729 :named("negate"), $P730 :named("node"))
.annotate "line", 289
    .lex "$past", $P731
.annotate "line", 291
    find_lex $P732, "$/"
    find_lex $P733, "$past"
    $P734 = $P732."!make"($P733)
.annotate "line", 288
    .return ($P734)
  control_722:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P735, exception, "payload"
    .return ($P735)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("54_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_739
.annotate "line", 295
    new $P738, 'ExceptionHandler'
    set_addr $P738, control_737
    $P738."handle_types"(58)
    push_eh $P738
    .lex "self", self
    .lex "$/", param_739
.annotate "line", 296
    get_hll_global $P740, ["PAST"], "Regex"
    find_lex $P741, "$/"
    set $S742, $P741
    find_lex $P743, "$/"
    $P744 = $P740."new"($S742, "literal" :named("pasttype"), $P743 :named("node"))
    .lex "$past", $P744
.annotate "line", 297
    find_lex $P745, "$/"
    find_lex $P746, "$past"
    $P747 = $P745."!make"($P746)
.annotate "line", 295
    .return ($P747)
  control_737:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P748, exception, "payload"
    .return ($P748)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("55_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_752
.annotate "line", 301
    new $P751, 'ExceptionHandler'
    set_addr $P751, control_750
    $P751."handle_types"(58)
    push_eh $P751
    .lex "self", self
    .lex "$/", param_752
    new $P753, "Undef"
    .lex "$past", $P753
.annotate "line", 303
    find_lex $P755, "$/"
    unless_null $P755, vivify_223
    new $P755, "Hash"
  vivify_223:
    set $P756, $P755["assertion"]
    unless_null $P756, vivify_224
    new $P756, "Undef"
  vivify_224:
    if $P756, if_754
.annotate "line", 307
    new $P761, "Integer"
    assign $P761, 0
    store_lex "$past", $P761
    goto if_754_end
  if_754:
.annotate "line", 304
    find_lex $P757, "$/"
    unless_null $P757, vivify_225
    new $P757, "Hash"
  vivify_225:
    set $P758, $P757["assertion"]
    unless_null $P758, vivify_226
    new $P758, "Undef"
  vivify_226:
    $P759 = $P758."ast"()
    store_lex "$past", $P759
.annotate "line", 305
    find_lex $P760, "$past"
    $P760."subtype"("zerowidth")
  if_754_end:
.annotate "line", 308
    find_lex $P762, "$/"
    find_lex $P763, "$past"
    $P764 = $P762."!make"($P763)
.annotate "line", 301
    .return ($P764)
  control_750:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P765, exception, "payload"
    .return ($P765)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("56_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_769
.annotate "line", 311
    new $P768, 'ExceptionHandler'
    set_addr $P768, control_767
    $P768."handle_types"(58)
    push_eh $P768
    .lex "self", self
    .lex "$/", param_769
    new $P770, "Undef"
    .lex "$past", $P770
.annotate "line", 313
    find_lex $P772, "$/"
    unless_null $P772, vivify_227
    new $P772, "Hash"
  vivify_227:
    set $P773, $P772["assertion"]
    unless_null $P773, vivify_228
    new $P773, "Undef"
  vivify_228:
    if $P773, if_771
.annotate "line", 319
    get_hll_global $P782, ["PAST"], "Regex"
    find_lex $P783, "$/"
    $P784 = $P782."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P783 :named("node"))
    store_lex "$past", $P784
.annotate "line", 318
    goto if_771_end
  if_771:
.annotate "line", 314
    find_lex $P774, "$/"
    unless_null $P774, vivify_229
    new $P774, "Hash"
  vivify_229:
    set $P775, $P774["assertion"]
    unless_null $P775, vivify_230
    new $P775, "Undef"
  vivify_230:
    $P776 = $P775."ast"()
    store_lex "$past", $P776
.annotate "line", 315
    find_lex $P777, "$past"
    find_lex $P778, "$past"
    $P779 = $P778."negate"()
    isfalse $I780, $P779
    $P777."negate"($I780)
.annotate "line", 316
    find_lex $P781, "$past"
    $P781."subtype"("zerowidth")
  if_771_end:
.annotate "line", 321
    find_lex $P785, "$/"
    find_lex $P786, "$past"
    $P787 = $P785."!make"($P786)
.annotate "line", 311
    .return ($P787)
  control_767:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P788, exception, "payload"
    .return ($P788)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("57_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_792
.annotate "line", 324
    new $P791, 'ExceptionHandler'
    set_addr $P791, control_790
    $P791."handle_types"(58)
    push_eh $P791
    .lex "self", self
    .lex "$/", param_792
.annotate "line", 325
    find_lex $P793, "$/"
    unless_null $P793, vivify_231
    new $P793, "Hash"
  vivify_231:
    set $P794, $P793["assertion"]
    unless_null $P794, vivify_232
    new $P794, "Undef"
  vivify_232:
    $P795 = $P794."ast"()
    .lex "$past", $P795
.annotate "line", 326
    find_lex $P796, "$past"
    $P796."subtype"("method")
.annotate "line", 327
    find_lex $P797, "$/"
    find_lex $P798, "$past"
    $P799 = $P797."!make"($P798)
.annotate "line", 324
    .return ($P799)
  control_790:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P800, exception, "payload"
    .return ($P800)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<name>"  :subid("58_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_804
.annotate "line", 330
    .const 'Sub' $P858 = "60_1256765560.03654" 
    capture_lex $P858
    .const 'Sub' $P824 = "59_1256765560.03654" 
    capture_lex $P824
    new $P803, 'ExceptionHandler'
    set_addr $P803, control_802
    $P803."handle_types"(58)
    push_eh $P803
    .lex "self", self
    .lex "$/", param_804
.annotate "line", 331
    find_lex $P805, "$/"
    unless_null $P805, vivify_233
    new $P805, "Hash"
  vivify_233:
    set $P806, $P805["longname"]
    unless_null $P806, vivify_234
    new $P806, "Undef"
  vivify_234:
    set $S807, $P806
    new $P808, 'String'
    set $P808, $S807
    .lex "$name", $P808
    new $P809, "Undef"
    .lex "$past", $P809
.annotate "line", 333
    find_lex $P811, "$/"
    unless_null $P811, vivify_235
    new $P811, "Hash"
  vivify_235:
    set $P812, $P811["assertion"]
    unless_null $P812, vivify_236
    new $P812, "Undef"
  vivify_236:
    if $P812, if_810
.annotate "line", 337
    find_lex $P820, "$name"
    set $S821, $P820
    iseq $I822, $S821, "sym"
    if $I822, if_819
.annotate "line", 353
    get_hll_global $P833, ["PAST"], "Regex"
    find_lex $P834, "$name"
    find_lex $P835, "$name"
    find_lex $P836, "$/"
    $P837 = $P833."new"($P834, $P835 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P836 :named("node"))
    store_lex "$past", $P837
.annotate "line", 355
    find_lex $P839, "$/"
    unless_null $P839, vivify_237
    new $P839, "Hash"
  vivify_237:
    set $P840, $P839["nibbler"]
    unless_null $P840, vivify_238
    new $P840, "Undef"
  vivify_238:
    if $P840, if_838
.annotate "line", 358
    find_lex $P848, "$/"
    unless_null $P848, vivify_239
    new $P848, "Hash"
  vivify_239:
    set $P849, $P848["arglist"]
    unless_null $P849, vivify_240
    new $P849, "Undef"
  vivify_240:
    unless $P849, if_847_end
.annotate "line", 359
    find_lex $P851, "$/"
    unless_null $P851, vivify_241
    new $P851, "Hash"
  vivify_241:
    set $P852, $P851["arglist"]
    unless_null $P852, vivify_242
    new $P852, "ResizablePMCArray"
  vivify_242:
    set $P853, $P852[0]
    unless_null $P853, vivify_243
    new $P853, "Hash"
  vivify_243:
    set $P854, $P853["arg"]
    unless_null $P854, vivify_244
    new $P854, "Undef"
  vivify_244:
    defined $I855, $P854
    unless $I855, for_undef_245
    iter $P850, $P854
    new $P865, 'ExceptionHandler'
    set_addr $P865, loop864_handler
    $P865."handle_types"(65, 67, 66)
    push_eh $P865
  loop864_test:
    unless $P850, loop864_done
    shift $P856, $P850
  loop864_redo:
    .const 'Sub' $P858 = "60_1256765560.03654" 
    capture_lex $P858
    $P858($P856)
  loop864_next:
    goto loop864_test
  loop864_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P866, exception, 'type'
    eq $P866, 65, loop864_next
    eq $P866, 67, loop864_redo
  loop864_done:
    pop_eh 
  for_undef_245:
  if_847_end:
.annotate "line", 358
    goto if_838_end
  if_838:
.annotate "line", 356
    find_lex $P841, "$past"
    find_lex $P842, "$/"
    unless_null $P842, vivify_246
    new $P842, "Hash"
  vivify_246:
    set $P843, $P842["nibbler"]
    unless_null $P843, vivify_247
    new $P843, "ResizablePMCArray"
  vivify_247:
    set $P844, $P843[0]
    unless_null $P844, vivify_248
    new $P844, "Undef"
  vivify_248:
    $P845 = $P844."ast"()
    $P846 = "buildsub"($P845)
    $P841."push"($P846)
  if_838_end:
.annotate "line", 352
    goto if_819_end
  if_819:
.annotate "line", 337
    .const 'Sub' $P824 = "59_1256765560.03654" 
    capture_lex $P824
    $P824()
  if_819_end:
    goto if_810_end
  if_810:
.annotate "line", 334
    find_lex $P813, "$/"
    unless_null $P813, vivify_249
    new $P813, "Hash"
  vivify_249:
    set $P814, $P813["assertion"]
    unless_null $P814, vivify_250
    new $P814, "ResizablePMCArray"
  vivify_250:
    set $P815, $P814[0]
    unless_null $P815, vivify_251
    new $P815, "Undef"
  vivify_251:
    $P816 = $P815."ast"()
    store_lex "$past", $P816
.annotate "line", 335
    find_lex $P817, "$past"
    find_lex $P818, "$name"
    "subrule_alias"($P817, $P818)
  if_810_end:
.annotate "line", 364
    find_lex $P867, "$/"
    find_lex $P868, "$past"
    $P869 = $P867."!make"($P868)
.annotate "line", 330
    .return ($P869)
  control_802:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P870, exception, "payload"
    .return ($P870)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block857"  :anon :subid("60_1256765560.03654") :outer("58_1256765560.03654")
    .param pmc param_859
.annotate "line", 359
    .lex "$_", param_859
.annotate "line", 360
    find_lex $P860, "$past"
    find_lex $P861, "$_"
    $P862 = $P861."ast"()
    $P863 = $P860."push"($P862)
.annotate "line", 359
    .return ($P863)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block823"  :anon :subid("59_1256765560.03654") :outer("58_1256765560.03654")
.annotate "line", 338

            $P0 = get_global '$REGEXNAME'
            $S0 = $P0
            $I0 = index $S0, ':sym<'
            add $I0, 5
            $S0 = substr $S0, $I0
            chopn $S0, 1
            $P825 = box $S0
        
    .lex "$regexsym", $P825
.annotate "line", 347
    get_hll_global $P826, ["PAST"], "Regex"
.annotate "line", 348
    get_hll_global $P827, ["PAST"], "Regex"
    find_lex $P828, "$regexsym"
    $P829 = $P827."new"($P828, "literal" :named("pasttype"))
    find_lex $P830, "$name"
    find_lex $P831, "$/"
    $P832 = $P826."new"($P829, $P830 :named("name"), "subcapture" :named("pasttype"), $P831 :named("node"))
.annotate "line", 347
    store_lex "$past", $P832
.annotate "line", 337
    .return ($P832)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<[>"  :subid("61_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_874
.annotate "line", 367
    .const 'Sub' $P905 = "62_1256765560.03654" 
    capture_lex $P905
    new $P873, 'ExceptionHandler'
    set_addr $P873, control_872
    $P873."handle_types"(58)
    push_eh $P873
    .lex "self", self
    .lex "$/", param_874
.annotate "line", 368
    find_lex $P875, "$/"
    unless_null $P875, vivify_252
    new $P875, "Hash"
  vivify_252:
    set $P876, $P875["cclass_elem"]
    unless_null $P876, vivify_253
    new $P876, "Undef"
  vivify_253:
    .lex "$clist", $P876
.annotate "line", 369
    find_lex $P877, "$clist"
    unless_null $P877, vivify_254
    new $P877, "ResizablePMCArray"
  vivify_254:
    set $P878, $P877[0]
    unless_null $P878, vivify_255
    new $P878, "Undef"
  vivify_255:
    $P879 = $P878."ast"()
    .lex "$past", $P879
.annotate "line", 370
    find_lex $P883, "$past"
    $P884 = $P883."negate"()
    if $P884, if_882
    set $P881, $P884
    goto if_882_end
  if_882:
    find_lex $P885, "$past"
    $S886 = $P885."pasttype"()
    iseq $I887, $S886, "subrule"
    new $P881, 'Integer'
    set $P881, $I887
  if_882_end:
    unless $P881, if_880_end
.annotate "line", 371
    find_lex $P888, "$past"
    $P888."subtype"("zerowidth")
.annotate "line", 372
    get_hll_global $P889, ["PAST"], "Regex"
    find_lex $P890, "$past"
.annotate "line", 374
    get_hll_global $P891, ["PAST"], "Regex"
    $P892 = $P891."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P893, "$/"
    $P894 = $P889."new"($P890, $P892, $P893 :named("node"))
.annotate "line", 372
    store_lex "$past", $P894
  if_880_end:
.annotate "line", 378
    new $P895, "Integer"
    assign $P895, 1
    .lex "$i", $P895
.annotate "line", 379
    find_lex $P896, "$clist"
    set $N897, $P896
    new $P898, 'Float'
    set $P898, $N897
    .lex "$n", $P898
.annotate "line", 380
    new $P928, 'ExceptionHandler'
    set_addr $P928, loop927_handler
    $P928."handle_types"(65, 67, 66)
    push_eh $P928
  loop927_test:
    find_lex $P899, "$i"
    set $N900, $P899
    find_lex $P901, "$n"
    set $N902, $P901
    islt $I903, $N900, $N902
    unless $I903, loop927_done
  loop927_redo:
    .const 'Sub' $P905 = "62_1256765560.03654" 
    capture_lex $P905
    $P905()
  loop927_next:
    goto loop927_test
  loop927_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P929, exception, 'type'
    eq $P929, 65, loop927_next
    eq $P929, 67, loop927_redo
  loop927_done:
    pop_eh 
.annotate "line", 391
    find_lex $P930, "$/"
    find_lex $P931, "$past"
    $P932 = $P930."!make"($P931)
.annotate "line", 367
    .return ($P932)
  control_872:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P933, exception, "payload"
    .return ($P933)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block904"  :anon :subid("62_1256765560.03654") :outer("61_1256765560.03654")
.annotate "line", 381
    find_lex $P906, "$i"
    set $I907, $P906
    find_lex $P908, "$clist"
    unless_null $P908, vivify_256
    new $P908, "ResizablePMCArray"
  vivify_256:
    set $P909, $P908[$I907]
    unless_null $P909, vivify_257
    new $P909, "Undef"
  vivify_257:
    $P910 = $P909."ast"()
    .lex "$ast", $P910
.annotate "line", 382
    find_lex $P912, "$ast"
    $P913 = $P912."negate"()
    if $P913, if_911
.annotate "line", 387
    get_hll_global $P920, ["PAST"], "Regex"
    find_lex $P921, "$past"
    find_lex $P922, "$ast"
    find_lex $P923, "$/"
    $P924 = $P920."new"($P921, $P922, "alt" :named("pasttype"), $P923 :named("node"))
    store_lex "$past", $P924
.annotate "line", 386
    goto if_911_end
  if_911:
.annotate "line", 383
    find_lex $P914, "$ast"
    $P914."subtype"("zerowidth")
.annotate "line", 384
    get_hll_global $P915, ["PAST"], "Regex"
    find_lex $P916, "$ast"
    find_lex $P917, "$past"
    find_lex $P918, "$/"
    $P919 = $P915."new"($P916, $P917, "concat" :named("pasttype"), $P918 :named("node"))
    store_lex "$past", $P919
  if_911_end:
.annotate "line", 389
    find_lex $P925, "$i"
    add $P926, $P925, 1
    store_lex "$i", $P926
.annotate "line", 380
    .return ($P926)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "cclass_elem"  :subid("63_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_937
.annotate "line", 394
    .const 'Sub' $P959 = "65_1256765560.03654" 
    capture_lex $P959
    .const 'Sub' $P944 = "64_1256765560.03654" 
    capture_lex $P944
    new $P936, 'ExceptionHandler'
    set_addr $P936, control_935
    $P936."handle_types"(58)
    push_eh $P936
    .lex "self", self
    .lex "$/", param_937
.annotate "line", 395
    new $P938, "String"
    assign $P938, ""
    .lex "$str", $P938
    new $P939, "Undef"
    .lex "$past", $P939
.annotate "line", 397
    find_lex $P941, "$/"
    unless_null $P941, vivify_258
    new $P941, "Hash"
  vivify_258:
    set $P942, $P941["name"]
    unless_null $P942, vivify_259
    new $P942, "Undef"
  vivify_259:
    if $P942, if_940
.annotate "line", 401
    find_lex $P954, "$/"
    unless_null $P954, vivify_260
    new $P954, "Hash"
  vivify_260:
    set $P955, $P954["charspec"]
    unless_null $P955, vivify_261
    new $P955, "Undef"
  vivify_261:
    defined $I956, $P955
    unless $I956, for_undef_262
    iter $P953, $P955
    new $P982, 'ExceptionHandler'
    set_addr $P982, loop981_handler
    $P982."handle_types"(65, 67, 66)
    push_eh $P982
  loop981_test:
    unless $P953, loop981_done
    shift $P957, $P953
  loop981_redo:
    .const 'Sub' $P959 = "65_1256765560.03654" 
    capture_lex $P959
    $P959($P957)
  loop981_next:
    goto loop981_test
  loop981_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P983, exception, 'type'
    eq $P983, 65, loop981_next
    eq $P983, 67, loop981_redo
  loop981_done:
    pop_eh 
  for_undef_262:
.annotate "line", 426
    get_hll_global $P984, ["PAST"], "Regex"
    find_lex $P985, "$str"
    find_lex $P986, "$/"
    $P987 = $P984."new"($P985, "enumcharlist" :named("pasttype"), $P986 :named("node"))
    store_lex "$past", $P987
.annotate "line", 400
    goto if_940_end
  if_940:
.annotate "line", 397
    .const 'Sub' $P944 = "64_1256765560.03654" 
    capture_lex $P944
    $P944()
  if_940_end:
.annotate "line", 428
    find_lex $P988, "$past"
    find_lex $P989, "$/"
    unless_null $P989, vivify_274
    new $P989, "Hash"
  vivify_274:
    set $P990, $P989["sign"]
    unless_null $P990, vivify_275
    new $P990, "Undef"
  vivify_275:
    set $S991, $P990
    iseq $I992, $S991, "-"
    $P988."negate"($I992)
.annotate "line", 429
    find_lex $P993, "$/"
    find_lex $P994, "$past"
    $P995 = $P993."!make"($P994)
.annotate "line", 394
    .return ($P995)
  control_935:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P996, exception, "payload"
    .return ($P996)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block958"  :anon :subid("65_1256765560.03654") :outer("63_1256765560.03654")
    .param pmc param_960
.annotate "line", 401
    .const 'Sub' $P966 = "66_1256765560.03654" 
    capture_lex $P966
    .lex "$_", param_960
.annotate "line", 402
    find_lex $P963, "$_"
    unless_null $P963, vivify_263
    new $P963, "ResizablePMCArray"
  vivify_263:
    set $P964, $P963[1]
    unless_null $P964, vivify_264
    new $P964, "Undef"
  vivify_264:
    if $P964, if_962
.annotate "line", 424
    find_lex $P977, "$str"
    find_lex $P978, "$_"
    unless_null $P978, vivify_265
    new $P978, "ResizablePMCArray"
  vivify_265:
    set $P979, $P978[0]
    unless_null $P979, vivify_266
    new $P979, "Undef"
  vivify_266:
    concat $P980, $P977, $P979
    store_lex "$str", $P980
    set $P961, $P980
.annotate "line", 402
    goto if_962_end
  if_962:
    .const 'Sub' $P966 = "66_1256765560.03654" 
    capture_lex $P966
    $P976 = $P966()
    set $P961, $P976
  if_962_end:
.annotate "line", 401
    .return ($P961)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block965"  :anon :subid("66_1256765560.03654") :outer("65_1256765560.03654")
.annotate "line", 403
    find_lex $P967, "$_"
    unless_null $P967, vivify_267
    new $P967, "ResizablePMCArray"
  vivify_267:
    set $P968, $P967[0]
    unless_null $P968, vivify_268
    new $P968, "Undef"
  vivify_268:
    .lex "$a", $P968
.annotate "line", 404
    find_lex $P969, "$_"
    unless_null $P969, vivify_269
    new $P969, "ResizablePMCArray"
  vivify_269:
    set $P970, $P969[1]
    unless_null $P970, vivify_270
    new $P970, "ResizablePMCArray"
  vivify_270:
    set $P971, $P970[0]
    unless_null $P971, vivify_271
    new $P971, "Undef"
  vivify_271:
    .lex "$b", $P971
.annotate "line", 405

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
                             $P972 = box $S2
                         
    .lex "$c", $P972
.annotate "line", 422
    find_lex $P973, "$str"
    find_lex $P974, "$c"
    concat $P975, $P973, $P974
    store_lex "$str", $P975
.annotate "line", 402
    .return ($P975)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block943"  :anon :subid("64_1256765560.03654") :outer("63_1256765560.03654")
.annotate "line", 398
    find_lex $P945, "$/"
    unless_null $P945, vivify_272
    new $P945, "Hash"
  vivify_272:
    set $P946, $P945["name"]
    unless_null $P946, vivify_273
    new $P946, "Undef"
  vivify_273:
    set $S947, $P946
    new $P948, 'String'
    set $P948, $S947
    .lex "$name", $P948
.annotate "line", 399
    get_hll_global $P949, ["PAST"], "Regex"
    find_lex $P950, "$name"
    find_lex $P951, "$/"
    $P952 = $P949."new"($P950, "subrule" :named("pasttype"), "method" :named("subtype"), $P951 :named("node"))
    store_lex "$past", $P952
.annotate "line", 397
    .return ($P952)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("67_1256765560.03654") :method :outer("11_1256765560.03654")
    .param pmc param_1000
.annotate "line", 432
    new $P999, 'ExceptionHandler'
    set_addr $P999, control_998
    $P999."handle_types"(58)
    push_eh $P999
    .lex "self", self
    .lex "$/", param_1000
.annotate "line", 433
    get_global $P1001, "@MODIFIERS"
    unless_null $P1001, vivify_276
    new $P1001, "ResizablePMCArray"
  vivify_276:
    set $P1002, $P1001[0]
    unless_null $P1002, vivify_277
    new $P1002, "Undef"
  vivify_277:
    .lex "%mods", $P1002
.annotate "line", 434
    find_lex $P1005, "$/"
    unless_null $P1005, vivify_278
    new $P1005, "Hash"
  vivify_278:
    set $P1006, $P1005["n"]
    unless_null $P1006, vivify_279
    new $P1006, "ResizablePMCArray"
  vivify_279:
    set $P1007, $P1006[0]
    unless_null $P1007, vivify_280
    new $P1007, "Undef"
  vivify_280:
    set $S1008, $P1007
    isgt $I1009, $S1008, ""
    if $I1009, if_1004
    new $P1014, "Integer"
    assign $P1014, 1
    set $P1003, $P1014
    goto if_1004_end
  if_1004:
    find_lex $P1010, "$/"
    unless_null $P1010, vivify_281
    new $P1010, "Hash"
  vivify_281:
    set $P1011, $P1010["n"]
    unless_null $P1011, vivify_282
    new $P1011, "ResizablePMCArray"
  vivify_282:
    set $P1012, $P1011[0]
    unless_null $P1012, vivify_283
    new $P1012, "Undef"
  vivify_283:
    set $N1013, $P1012
    new $P1003, 'Float'
    set $P1003, $N1013
  if_1004_end:
    .lex "$n", $P1003
.annotate "line", 435
    find_lex $P1015, "$n"
    find_lex $P1016, "$/"
    unless_null $P1016, vivify_284
    new $P1016, "Hash"
  vivify_284:
    set $P1017, $P1016["mod_ident"]
    unless_null $P1017, vivify_285
    new $P1017, "Hash"
  vivify_285:
    set $P1018, $P1017["sym"]
    unless_null $P1018, vivify_286
    new $P1018, "Undef"
  vivify_286:
    set $S1019, $P1018
    find_lex $P1020, "%mods"
    unless_null $P1020, vivify_287
    new $P1020, "Hash"
    store_lex "%mods", $P1020
  vivify_287:
    set $P1020[$S1019], $P1015
.annotate "line", 436
    find_lex $P1021, "$/"
    $P1022 = $P1021."!make"(0)
.annotate "line", 432
    .return ($P1022)
  control_998:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1023, exception, "payload"
    .return ($P1023)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("68_1256765560.03654") :outer("11_1256765560.03654")
    .param pmc param_1027
.annotate "line", 439
    new $P1026, 'ExceptionHandler'
    set_addr $P1026, control_1025
    $P1026."handle_types"(58)
    push_eh $P1026
    .lex "$rpast", param_1027
.annotate "line", 440
    find_lex $P1028, "$rpast"
    $P1029 = "capnames"($P1028, 0)
    .lex "%capnames", $P1029
.annotate "line", 441
    new $P1030, "Integer"
    assign $P1030, 0
    find_lex $P1031, "%capnames"
    unless_null $P1031, vivify_288
    new $P1031, "Hash"
    store_lex "%capnames", $P1031
  vivify_288:
    set $P1031[""], $P1030
.annotate "line", 442
    get_hll_global $P1032, ["PAST"], "Regex"
.annotate "line", 443
    get_hll_global $P1033, ["PAST"], "Regex"
    $P1034 = $P1033."new"("scan" :named("pasttype"))
    find_lex $P1035, "$rpast"
.annotate "line", 445
    get_hll_global $P1036, ["PAST"], "Regex"
    $P1037 = $P1036."new"("pass" :named("pasttype"))
    find_lex $P1038, "%capnames"
    $P1039 = $P1032."new"($P1034, $P1035, $P1037, "concat" :named("pasttype"), $P1038 :named("capnames"))
.annotate "line", 442
    store_lex "$rpast", $P1039
.annotate "line", 449
    get_hll_global $P1040, ["PAST"], "Block"
    find_lex $P1041, "$rpast"
    $P1042 = $P1040."new"($P1041, "method" :named("blocktype"))
.annotate "line", 439
    .return ($P1042)
  control_1025:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1043, exception, "payload"
    .return ($P1043)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "capnames"  :subid("69_1256765560.03654") :outer("11_1256765560.03654")
    .param pmc param_1047
    .param pmc param_1048
.annotate "line", 452
    .const 'Sub' $P1271 = "80_1256765560.03654" 
    capture_lex $P1271
    .const 'Sub' $P1209 = "77_1256765560.03654" 
    capture_lex $P1209
    .const 'Sub' $P1167 = "75_1256765560.03654" 
    capture_lex $P1167
    .const 'Sub' $P1126 = "73_1256765560.03654" 
    capture_lex $P1126
    .const 'Sub' $P1057 = "70_1256765560.03654" 
    capture_lex $P1057
    new $P1046, 'ExceptionHandler'
    set_addr $P1046, control_1045
    $P1046."handle_types"(58)
    push_eh $P1046
    .lex "$ast", param_1047
    .lex "$count", param_1048
    new $P1049, "Hash"
    .lex "%capnames", $P1049
.annotate "line", 454
    find_lex $P1050, "$ast"
    $P1051 = $P1050."pasttype"()
    .lex "$pasttype", $P1051
.annotate "line", 455
    find_lex $P1053, "$pasttype"
    set $S1054, $P1053
    iseq $I1055, $S1054, "alt"
    if $I1055, if_1052
.annotate "line", 468
    find_lex $P1117, "$pasttype"
    set $S1118, $P1117
    iseq $I1119, $S1118, "concat"
    if $I1119, if_1116
.annotate "line", 477
    find_lex $P1160, "$pasttype"
    set $S1161, $P1160
    iseq $I1162, $S1161, "subrule"
    if $I1162, if_1159
    new $P1158, 'Integer'
    set $P1158, $I1162
    goto if_1159_end
  if_1159:
    find_lex $P1163, "$ast"
    $S1164 = $P1163."subtype"()
    iseq $I1165, $S1164, "capture"
    new $P1158, 'Integer'
    set $P1158, $I1165
  if_1159_end:
    if $P1158, if_1157
.annotate "line", 490
    find_lex $P1205, "$pasttype"
    set $S1206, $P1205
    iseq $I1207, $S1206, "subcapture"
    if $I1207, if_1204
.annotate "line", 507
    find_lex $P1267, "$pasttype"
    set $S1268, $P1267
    iseq $I1269, $S1268, "quant"
    unless $I1269, if_1266_end
    .const 'Sub' $P1271 = "80_1256765560.03654" 
    capture_lex $P1271
    $P1271()
  if_1266_end:
    goto if_1204_end
  if_1204:
.annotate "line", 490
    .const 'Sub' $P1209 = "77_1256765560.03654" 
    capture_lex $P1209
    $P1209()
  if_1204_end:
    goto if_1157_end
  if_1157:
.annotate "line", 477
    .const 'Sub' $P1167 = "75_1256765560.03654" 
    capture_lex $P1167
    $P1167()
  if_1157_end:
    goto if_1116_end
  if_1116:
.annotate "line", 469
    find_lex $P1121, "$ast"
    $P1122 = $P1121."list"()
    defined $I1123, $P1122
    unless $I1123, for_undef_309
    iter $P1120, $P1122
    new $P1155, 'ExceptionHandler'
    set_addr $P1155, loop1154_handler
    $P1155."handle_types"(65, 67, 66)
    push_eh $P1155
  loop1154_test:
    unless $P1120, loop1154_done
    shift $P1124, $P1120
  loop1154_redo:
    .const 'Sub' $P1126 = "73_1256765560.03654" 
    capture_lex $P1126
    $P1126($P1124)
  loop1154_next:
    goto loop1154_test
  loop1154_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1156, exception, 'type'
    eq $P1156, 65, loop1154_next
    eq $P1156, 67, loop1154_redo
  loop1154_done:
    pop_eh 
  for_undef_309:
  if_1116_end:
.annotate "line", 468
    goto if_1052_end
  if_1052:
.annotate "line", 455
    .const 'Sub' $P1057 = "70_1256765560.03654" 
    capture_lex $P1057
    $P1057()
  if_1052_end:
.annotate "line", 514
    find_lex $P1291, "$count"
    find_lex $P1292, "%capnames"
    unless_null $P1292, vivify_329
    new $P1292, "Hash"
    store_lex "%capnames", $P1292
  vivify_329:
    set $P1292[""], $P1291
    find_lex $P1293, "%capnames"
.annotate "line", 452
    .return ($P1293)
  control_1045:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1294, exception, "payload"
    .return ($P1294)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1270"  :anon :subid("80_1256765560.03654") :outer("69_1256765560.03654")
.annotate "line", 507
    .const 'Sub' $P1281 = "81_1256765560.03654" 
    capture_lex $P1281
.annotate "line", 508
    find_lex $P1272, "$ast"
    unless_null $P1272, vivify_289
    new $P1272, "ResizablePMCArray"
  vivify_289:
    set $P1273, $P1272[0]
    unless_null $P1273, vivify_290
    new $P1273, "Undef"
  vivify_290:
    find_lex $P1274, "$count"
    $P1275 = "capnames"($P1273, $P1274)
    .lex "%astcap", $P1275
.annotate "line", 509
    find_lex $P1277, "%astcap"
    defined $I1278, $P1277
    unless $I1278, for_undef_291
    iter $P1276, $P1277
    new $P1287, 'ExceptionHandler'
    set_addr $P1287, loop1286_handler
    $P1287."handle_types"(65, 67, 66)
    push_eh $P1287
  loop1286_test:
    unless $P1276, loop1286_done
    shift $P1279, $P1276
  loop1286_redo:
    .const 'Sub' $P1281 = "81_1256765560.03654" 
    capture_lex $P1281
    $P1281($P1279)
  loop1286_next:
    goto loop1286_test
  loop1286_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1288, exception, 'type'
    eq $P1288, 65, loop1286_next
    eq $P1288, 67, loop1286_redo
  loop1286_done:
    pop_eh 
  for_undef_291:
.annotate "line", 512
    find_lex $P1289, "%astcap"
    unless_null $P1289, vivify_293
    new $P1289, "Hash"
  vivify_293:
    set $P1290, $P1289[""]
    unless_null $P1290, vivify_294
    new $P1290, "Undef"
  vivify_294:
    store_lex "$count", $P1290
.annotate "line", 507
    .return ($P1290)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1280"  :anon :subid("81_1256765560.03654") :outer("80_1256765560.03654")
    .param pmc param_1282
.annotate "line", 509
    .lex "$_", param_1282
.annotate "line", 510
    new $P1283, "Integer"
    assign $P1283, 2
    find_lex $P1284, "$_"
    find_lex $P1285, "%capnames"
    unless_null $P1285, vivify_292
    new $P1285, "Hash"
    store_lex "%capnames", $P1285
  vivify_292:
    set $P1285[$P1284], $P1283
.annotate "line", 509
    .return ($P1283)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1208"  :anon :subid("77_1256765560.03654") :outer("69_1256765560.03654")
.annotate "line", 490
    .const 'Sub' $P1248 = "79_1256765560.03654" 
    capture_lex $P1248
    .const 'Sub' $P1218 = "78_1256765560.03654" 
    capture_lex $P1218
.annotate "line", 491
    find_lex $P1210, "$ast"
    $P1211 = $P1210."name"()
    .lex "$name", $P1211
.annotate "line", 492

            $P0 = find_lex '$name'
            $S0 = $P0
            $P1212 = split '=', $S0
        
    .lex "@names", $P1212
.annotate "line", 497
    find_lex $P1214, "@names"
    defined $I1215, $P1214
    unless $I1215, for_undef_295
    iter $P1213, $P1214
    new $P1237, 'ExceptionHandler'
    set_addr $P1237, loop1236_handler
    $P1237."handle_types"(65, 67, 66)
    push_eh $P1237
  loop1236_test:
    unless $P1213, loop1236_done
    shift $P1216, $P1213
  loop1236_redo:
    .const 'Sub' $P1218 = "78_1256765560.03654" 
    capture_lex $P1218
    $P1218($P1216)
  loop1236_next:
    goto loop1236_test
  loop1236_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1238, exception, 'type'
    eq $P1238, 65, loop1236_next
    eq $P1238, 67, loop1236_redo
  loop1236_done:
    pop_eh 
  for_undef_295:
.annotate "line", 501
    find_lex $P1239, "$ast"
    unless_null $P1239, vivify_297
    new $P1239, "ResizablePMCArray"
  vivify_297:
    set $P1240, $P1239[0]
    unless_null $P1240, vivify_298
    new $P1240, "Undef"
  vivify_298:
    find_lex $P1241, "$count"
    $P1242 = "capnames"($P1240, $P1241)
    .lex "%x", $P1242
.annotate "line", 502
    find_lex $P1244, "%x"
    defined $I1245, $P1244
    unless $I1245, for_undef_299
    iter $P1243, $P1244
    new $P1262, 'ExceptionHandler'
    set_addr $P1262, loop1261_handler
    $P1262."handle_types"(65, 67, 66)
    push_eh $P1262
  loop1261_test:
    unless $P1243, loop1261_done
    shift $P1246, $P1243
  loop1261_redo:
    .const 'Sub' $P1248 = "79_1256765560.03654" 
    capture_lex $P1248
    $P1248($P1246)
  loop1261_next:
    goto loop1261_test
  loop1261_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1263, exception, 'type'
    eq $P1263, 65, loop1261_next
    eq $P1263, 67, loop1261_redo
  loop1261_done:
    pop_eh 
  for_undef_299:
.annotate "line", 505
    find_lex $P1264, "%x"
    unless_null $P1264, vivify_305
    new $P1264, "Hash"
  vivify_305:
    set $P1265, $P1264[""]
    unless_null $P1265, vivify_306
    new $P1265, "Undef"
  vivify_306:
    store_lex "$count", $P1265
.annotate "line", 490
    .return ($P1265)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1217"  :anon :subid("78_1256765560.03654") :outer("77_1256765560.03654")
    .param pmc param_1219
.annotate "line", 497
    .lex "$_", param_1219
.annotate "line", 498
    find_lex $P1223, "$_"
    set $S1224, $P1223
    iseq $I1225, $S1224, "0"
    unless $I1225, unless_1222
    new $P1221, 'Integer'
    set $P1221, $I1225
    goto unless_1222_end
  unless_1222:
    find_lex $P1226, "$_"
    set $N1227, $P1226
    new $P1228, "Integer"
    assign $P1228, 0
    set $N1229, $P1228
    isgt $I1230, $N1227, $N1229
    new $P1221, 'Integer'
    set $P1221, $I1230
  unless_1222_end:
    unless $P1221, if_1220_end
    find_lex $P1231, "$_"
    add $P1232, $P1231, 1
    store_lex "$count", $P1232
  if_1220_end:
.annotate "line", 499
    new $P1233, "Integer"
    assign $P1233, 1
    find_lex $P1234, "$_"
    find_lex $P1235, "%capnames"
    unless_null $P1235, vivify_296
    new $P1235, "Hash"
    store_lex "%capnames", $P1235
  vivify_296:
    set $P1235[$P1234], $P1233
.annotate "line", 497
    .return ($P1233)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1247"  :anon :subid("79_1256765560.03654") :outer("77_1256765560.03654")
    .param pmc param_1249
.annotate "line", 502
    .lex "$_", param_1249
.annotate "line", 503
    find_lex $P1250, "$_"
    find_lex $P1251, "%capnames"
    unless_null $P1251, vivify_300
    new $P1251, "Hash"
  vivify_300:
    set $P1252, $P1251[$P1250]
    unless_null $P1252, vivify_301
    new $P1252, "Undef"
  vivify_301:
    set $N1253, $P1252
    new $P1254, 'Float'
    set $P1254, $N1253
    find_lex $P1255, "$_"
    find_lex $P1256, "%x"
    unless_null $P1256, vivify_302
    new $P1256, "Hash"
  vivify_302:
    set $P1257, $P1256[$P1255]
    unless_null $P1257, vivify_303
    new $P1257, "Undef"
  vivify_303:
    add $P1258, $P1254, $P1257
    find_lex $P1259, "$_"
    find_lex $P1260, "%capnames"
    unless_null $P1260, vivify_304
    new $P1260, "Hash"
    store_lex "%capnames", $P1260
  vivify_304:
    set $P1260[$P1259], $P1258
.annotate "line", 502
    .return ($P1258)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1166"  :anon :subid("75_1256765560.03654") :outer("69_1256765560.03654")
.annotate "line", 477
    .const 'Sub' $P1183 = "76_1256765560.03654" 
    capture_lex $P1183
.annotate "line", 478
    find_lex $P1168, "$ast"
    $P1169 = $P1168."name"()
    .lex "$name", $P1169
.annotate "line", 479
    find_lex $P1171, "$name"
    set $S1172, $P1171
    iseq $I1173, $S1172, ""
    unless $I1173, if_1170_end
    find_lex $P1174, "$count"
    store_lex "$name", $P1174
    find_lex $P1175, "$ast"
    find_lex $P1176, "$name"
    $P1175."name"($P1176)
  if_1170_end:
.annotate "line", 480

            $P0 = find_lex '$name'
            $S0 = $P0
            $P1177 = split '=', $S0
        
    .lex "@names", $P1177
.annotate "line", 485
    find_lex $P1179, "@names"
    defined $I1180, $P1179
    unless $I1180, for_undef_307
    iter $P1178, $P1179
    new $P1202, 'ExceptionHandler'
    set_addr $P1202, loop1201_handler
    $P1202."handle_types"(65, 67, 66)
    push_eh $P1202
  loop1201_test:
    unless $P1178, loop1201_done
    shift $P1181, $P1178
  loop1201_redo:
    .const 'Sub' $P1183 = "76_1256765560.03654" 
    capture_lex $P1183
    $P1183($P1181)
  loop1201_next:
    goto loop1201_test
  loop1201_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1203, exception, 'type'
    eq $P1203, 65, loop1201_next
    eq $P1203, 67, loop1201_redo
  loop1201_done:
    pop_eh 
  for_undef_307:
.annotate "line", 477
    .return ($P1178)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1182"  :anon :subid("76_1256765560.03654") :outer("75_1256765560.03654")
    .param pmc param_1184
.annotate "line", 485
    .lex "$_", param_1184
.annotate "line", 486
    find_lex $P1188, "$_"
    set $S1189, $P1188
    iseq $I1190, $S1189, "0"
    unless $I1190, unless_1187
    new $P1186, 'Integer'
    set $P1186, $I1190
    goto unless_1187_end
  unless_1187:
    find_lex $P1191, "$_"
    set $N1192, $P1191
    new $P1193, "Integer"
    assign $P1193, 0
    set $N1194, $P1193
    isgt $I1195, $N1192, $N1194
    new $P1186, 'Integer'
    set $P1186, $I1195
  unless_1187_end:
    unless $P1186, if_1185_end
    find_lex $P1196, "$_"
    add $P1197, $P1196, 1
    store_lex "$count", $P1197
  if_1185_end:
.annotate "line", 487
    new $P1198, "Integer"
    assign $P1198, 1
    find_lex $P1199, "$_"
    find_lex $P1200, "%capnames"
    unless_null $P1200, vivify_308
    new $P1200, "Hash"
    store_lex "%capnames", $P1200
  vivify_308:
    set $P1200[$P1199], $P1198
.annotate "line", 485
    .return ($P1198)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1125"  :anon :subid("73_1256765560.03654") :outer("69_1256765560.03654")
    .param pmc param_1127
.annotate "line", 469
    .const 'Sub' $P1136 = "74_1256765560.03654" 
    capture_lex $P1136
    .lex "$_", param_1127
.annotate "line", 470
    find_lex $P1128, "$_"
    find_lex $P1129, "$count"
    $P1130 = "capnames"($P1128, $P1129)
    .lex "%x", $P1130
.annotate "line", 471
    find_lex $P1132, "%x"
    defined $I1133, $P1132
    unless $I1133, for_undef_310
    iter $P1131, $P1132
    new $P1150, 'ExceptionHandler'
    set_addr $P1150, loop1149_handler
    $P1150."handle_types"(65, 67, 66)
    push_eh $P1150
  loop1149_test:
    unless $P1131, loop1149_done
    shift $P1134, $P1131
  loop1149_redo:
    .const 'Sub' $P1136 = "74_1256765560.03654" 
    capture_lex $P1136
    $P1136($P1134)
  loop1149_next:
    goto loop1149_test
  loop1149_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1151, exception, 'type'
    eq $P1151, 65, loop1149_next
    eq $P1151, 67, loop1149_redo
  loop1149_done:
    pop_eh 
  for_undef_310:
.annotate "line", 474
    find_lex $P1152, "%x"
    unless_null $P1152, vivify_316
    new $P1152, "Hash"
  vivify_316:
    set $P1153, $P1152[""]
    unless_null $P1153, vivify_317
    new $P1153, "Undef"
  vivify_317:
    store_lex "$count", $P1153
.annotate "line", 469
    .return ($P1153)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1135"  :anon :subid("74_1256765560.03654") :outer("73_1256765560.03654")
    .param pmc param_1137
.annotate "line", 471
    .lex "$_", param_1137
.annotate "line", 472
    find_lex $P1138, "$_"
    find_lex $P1139, "%capnames"
    unless_null $P1139, vivify_311
    new $P1139, "Hash"
  vivify_311:
    set $P1140, $P1139[$P1138]
    unless_null $P1140, vivify_312
    new $P1140, "Undef"
  vivify_312:
    set $N1141, $P1140
    new $P1142, 'Float'
    set $P1142, $N1141
    find_lex $P1143, "$_"
    find_lex $P1144, "%x"
    unless_null $P1144, vivify_313
    new $P1144, "Hash"
  vivify_313:
    set $P1145, $P1144[$P1143]
    unless_null $P1145, vivify_314
    new $P1145, "Undef"
  vivify_314:
    add $P1146, $P1142, $P1145
    find_lex $P1147, "$_"
    find_lex $P1148, "%capnames"
    unless_null $P1148, vivify_315
    new $P1148, "Hash"
    store_lex "%capnames", $P1148
  vivify_315:
    set $P1148[$P1147], $P1146
.annotate "line", 471
    .return ($P1146)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1056"  :anon :subid("70_1256765560.03654") :outer("69_1256765560.03654")
.annotate "line", 455
    .const 'Sub' $P1065 = "71_1256765560.03654" 
    capture_lex $P1065
.annotate "line", 456
    find_lex $P1058, "$count"
    .lex "$max", $P1058
.annotate "line", 457
    find_lex $P1060, "$ast"
    $P1061 = $P1060."list"()
    defined $I1062, $P1061
    unless $I1062, for_undef_318
    iter $P1059, $P1061
    new $P1113, 'ExceptionHandler'
    set_addr $P1113, loop1112_handler
    $P1113."handle_types"(65, 67, 66)
    push_eh $P1113
  loop1112_test:
    unless $P1059, loop1112_done
    shift $P1063, $P1059
  loop1112_redo:
    .const 'Sub' $P1065 = "71_1256765560.03654" 
    capture_lex $P1065
    $P1065($P1063)
  loop1112_next:
    goto loop1112_test
  loop1112_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1114, exception, 'type'
    eq $P1114, 65, loop1112_next
    eq $P1114, 67, loop1112_redo
  loop1112_done:
    pop_eh 
  for_undef_318:
.annotate "line", 466
    find_lex $P1115, "$max"
    store_lex "$count", $P1115
.annotate "line", 455
    .return ($P1115)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1064"  :anon :subid("71_1256765560.03654") :outer("70_1256765560.03654")
    .param pmc param_1066
.annotate "line", 457
    .const 'Sub' $P1075 = "72_1256765560.03654" 
    capture_lex $P1075
    .lex "$_", param_1066
.annotate "line", 458
    find_lex $P1067, "$_"
    find_lex $P1068, "$count"
    $P1069 = "capnames"($P1067, $P1068)
    .lex "%x", $P1069
.annotate "line", 459
    find_lex $P1071, "%x"
    defined $I1072, $P1071
    unless $I1072, for_undef_319
    iter $P1070, $P1071
    new $P1100, 'ExceptionHandler'
    set_addr $P1100, loop1099_handler
    $P1100."handle_types"(65, 67, 66)
    push_eh $P1100
  loop1099_test:
    unless $P1070, loop1099_done
    shift $P1073, $P1070
  loop1099_redo:
    .const 'Sub' $P1075 = "72_1256765560.03654" 
    capture_lex $P1075
    $P1075($P1073)
  loop1099_next:
    goto loop1099_test
  loop1099_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1101, exception, 'type'
    eq $P1101, 65, loop1099_next
    eq $P1101, 67, loop1099_redo
  loop1099_done:
    pop_eh 
  for_undef_319:
.annotate "line", 464
    find_lex $P1104, "%x"
    unless_null $P1104, vivify_325
    new $P1104, "Hash"
  vivify_325:
    set $P1105, $P1104[""]
    unless_null $P1105, vivify_326
    new $P1105, "Undef"
  vivify_326:
    set $N1106, $P1105
    find_lex $P1107, "$max"
    set $N1108, $P1107
    isgt $I1109, $N1106, $N1108
    if $I1109, if_1103
    new $P1102, 'Integer'
    set $P1102, $I1109
    goto if_1103_end
  if_1103:
    find_lex $P1110, "%x"
    unless_null $P1110, vivify_327
    new $P1110, "Hash"
  vivify_327:
    set $P1111, $P1110[""]
    unless_null $P1111, vivify_328
    new $P1111, "Undef"
  vivify_328:
    store_lex "$max", $P1111
    set $P1102, $P1111
  if_1103_end:
.annotate "line", 457
    .return ($P1102)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1074"  :anon :subid("72_1256765560.03654") :outer("71_1256765560.03654")
    .param pmc param_1076
.annotate "line", 459
    .lex "$_", param_1076
.annotate "line", 460
    find_lex $P1081, "$_"
    find_lex $P1082, "%capnames"
    unless_null $P1082, vivify_320
    new $P1082, "Hash"
  vivify_320:
    set $P1083, $P1082[$P1081]
    unless_null $P1083, vivify_321
    new $P1083, "Undef"
  vivify_321:
    set $N1084, $P1083
    new $P1085, "Integer"
    assign $P1085, 2
    set $N1086, $P1085
    islt $I1087, $N1084, $N1086
    if $I1087, if_1080
    new $P1079, 'Integer'
    set $P1079, $I1087
    goto if_1080_end
  if_1080:
    find_lex $P1088, "$_"
    find_lex $P1089, "%x"
    unless_null $P1089, vivify_322
    new $P1089, "Hash"
  vivify_322:
    set $P1090, $P1089[$P1088]
    unless_null $P1090, vivify_323
    new $P1090, "Undef"
  vivify_323:
    set $N1091, $P1090
    new $P1092, "Integer"
    assign $P1092, 1
    set $N1093, $P1092
    iseq $I1094, $N1091, $N1093
    new $P1079, 'Integer'
    set $P1079, $I1094
  if_1080_end:
    if $P1079, if_1078
    new $P1096, "Integer"
    assign $P1096, 2
    set $P1077, $P1096
    goto if_1078_end
  if_1078:
    new $P1095, "Integer"
    assign $P1095, 1
    set $P1077, $P1095
  if_1078_end:
.annotate "line", 461
    find_lex $P1097, "$_"
    find_lex $P1098, "%capnames"
    unless_null $P1098, vivify_324
    new $P1098, "Hash"
    store_lex "%capnames", $P1098
  vivify_324:
    set $P1098[$P1097], $P1077
.annotate "line", 459
    .return ($P1077)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("82_1256765560.03654") :outer("11_1256765560.03654")
    .param pmc param_1298
    .param pmc param_1299
.annotate "line", 518
    new $P1297, 'ExceptionHandler'
    set_addr $P1297, control_1296
    $P1297."handle_types"(58)
    push_eh $P1297
    .lex "$ast", param_1298
    .lex "$backmod", param_1299
.annotate "line", 519
    find_lex $P1301, "$backmod"
    set $S1302, $P1301
    iseq $I1303, $S1302, ":"
    if $I1303, if_1300
.annotate "line", 520
    find_lex $P1308, "$backmod"
    set $S1309, $P1308
    iseq $I1310, $S1309, ":?"
    unless $I1310, unless_1307
    new $P1306, 'Integer'
    set $P1306, $I1310
    goto unless_1307_end
  unless_1307:
    find_lex $P1311, "$backmod"
    set $S1312, $P1311
    iseq $I1313, $S1312, "?"
    new $P1306, 'Integer'
    set $P1306, $I1313
  unless_1307_end:
    if $P1306, if_1305
.annotate "line", 521
    find_lex $P1318, "$backmod"
    set $S1319, $P1318
    iseq $I1320, $S1319, ":!"
    unless $I1320, unless_1317
    new $P1316, 'Integer'
    set $P1316, $I1320
    goto unless_1317_end
  unless_1317:
    find_lex $P1321, "$backmod"
    set $S1322, $P1321
    iseq $I1323, $S1322, "!"
    new $P1316, 'Integer'
    set $P1316, $I1323
  unless_1317_end:
    unless $P1316, if_1315_end
    find_lex $P1324, "$ast"
    $P1324."backtrack"("g")
  if_1315_end:
    goto if_1305_end
  if_1305:
.annotate "line", 520
    find_lex $P1314, "$ast"
    $P1314."backtrack"("f")
  if_1305_end:
    goto if_1300_end
  if_1300:
.annotate "line", 519
    find_lex $P1304, "$ast"
    $P1304."backtrack"("r")
  if_1300_end:
    find_lex $P1325, "$ast"
.annotate "line", 518
    .return ($P1325)
  control_1296:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1326, exception, "payload"
    .return ($P1326)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("83_1256765560.03654") :outer("11_1256765560.03654")
    .param pmc param_1330
    .param pmc param_1331
.annotate "line", 525
    new $P1329, 'ExceptionHandler'
    set_addr $P1329, control_1328
    $P1329."handle_types"(58)
    push_eh $P1329
    .lex "$past", param_1330
    .lex "$name", param_1331
.annotate "line", 526
    find_lex $P1333, "$past"
    unless_null $P1333, vivify_330
    new $P1333, "Hash"
  vivify_330:
    set $P1334, $P1333["aliased"]
    unless_null $P1334, vivify_331
    new $P1334, "Undef"
  vivify_331:
    unless $P1334, if_1332_end
    find_lex $P1335, "$name"
    concat $P1336, $P1335, "="
    find_lex $P1337, "$past"
    $S1338 = $P1337."name"()
    concat $P1339, $P1336, $S1338
    store_lex "$name", $P1339
  if_1332_end:
.annotate "line", 527
    find_lex $P1340, "$past"
    find_lex $P1341, "$name"
    $P1340."name"($P1341)
.annotate "line", 528
    new $P1342, "Integer"
    assign $P1342, 1
    find_lex $P1343, "$past"
    unless_null $P1343, vivify_332
    new $P1343, "Hash"
    store_lex "$past", $P1343
  vivify_332:
    set $P1343["aliased"], $P1342
.annotate "line", 525
    .return ($P1342)
  control_1328:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1344, exception, "payload"
    .return ($P1344)
    rethrow exception
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
    $P0 = get_hll_global ['Regex';'P6Regex';'Actions'], 'INIT'
    $P0()
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
