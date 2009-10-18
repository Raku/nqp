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


=item peek()

Returns the prefixes associated with the regex tree rooted
at this node.

=cut

.sub 'peek' :method
    .local pmc list
    list = new ['ResizablePMCArray']

    $I0 = isa self, ['PAST';'Regex']
    unless $I0 goto peek_stop

    .local pmc child_it
    child_it = self.'iterator'()

    .local string pasttype
    pasttype = self.'pasttype'()
    if pasttype == 'concat' goto concat
    if pasttype == '' goto concat
    if pasttype == 'literal' goto literal
    if pasttype == 'alt' goto alt
    if pasttype == 'alt_longest' goto alt_longest

  peek_stop:
    list = 0
    .return (list)

  peek_zero:
    list = 1
    list[0] = ''
    .return (list)

  # temporal alternation returns the prefixes of its first child
  alt:
    unless child_it goto peek_stop
    $P0 = shift child_it
    .tailcall 'peek'($P0)

  # declarative alternation returns prefixes of all children
  alt_longest:
    unless child_it goto alt_longest_done
    $P0 = shift child_it
    $P1 = 'peek'($P0)
    $I0 = elements list
    splice list, $P1, $I0, 0
    goto alt_longest
  alt_longest_done:
    .return (list)

  concat:
    unless child_it goto peek_zero
    $P0 = shift child_it
    list = 'peek'($P0)
    unless list goto peek_stop
  concat_loop:
    unless child_it goto concat_done
    .local pmc catlist
    $P0 = shift child_it
    catlist = 'peek'($P0)
    unless catlist goto concat_done
    # concatenate all elements of list with catlist
    .local pmc newlist, i1, i2
    newlist = new ['ResizablePMCArray']
    i1 = iter list
  concat_i1_loop:
    unless i1 goto concat_i1_done
    $S1 = shift i1
    i2 = iter catlist
  concat_i2_loop:
    unless i2 goto concat_i1_loop
    $S2 = shift i2
    $S2 = concat $S1, $S2
    push newlist, $S2
    goto concat_i2_loop
  concat_i1_done:
    list = newlist
    goto concat_loop
  concat_done:
    .return (list)
    
  literal:
    $P0 = self[0]
    $I0 = isa $P0, 'String'
    if $I0 goto literal_constant
    .return (list)
  literal_constant:
    push list, $P0
    .return (list)

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

.namespace ['PAST';'Compiler']

.sub 'as_post' :method :multi(_, ['PAST';'Regex'])
    .param pmc node
    .param pmc options         :slurpy :named

    .local pmc ops
    ops = self.'post_new'('Ops', 'node'=>node)

    .local pmc reghash
    reghash = new ['Hash']
    .lex '$*REG', reghash

    .local pmc regexname
    $P0 = get_global '@?BLOCK'
    $P1 = $P0[0]
    $S0 = $P1.'name'()
    regexname = box $S0
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

    $S0 = concat '(', cur
    concat $S0, ', '
    concat $S0, pos
    concat $S0, ', '
    concat $S0, tgt
    concat $S0, ', $I10)'
    ops.'push_pirop'('callmethod', '"!cursor_start"', 'self', 'result'=>$S0)
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
    ops.'push_pirop'('callmethod', '"pos"', '$P10', 'result'=>pos)
    self.'!cursorop'(ops, '!mark_push', 0, 0, CURSOR_FAIL, 0, '$P10')
    if subtype == 'method' goto done
    ops.'push'(name)
    ops.'push_pirop'('callmethod', '"!cursor_names"', '$P10', name)
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

.namespace ['Regex';'Cursor']

.sub '' :anon :load :init
    load_bytecode 'P6object.pbc'
    .local pmc p6meta
    p6meta = new 'P6metaclass'
    $P0 = p6meta.'new_class'('Regex::Cursor', 'attr'=>'$!target $!from $!pos $!match $!action $!names @!bstack @!cstack @!caparray')
    $P0 = box 0
    set_global '$!generation', $P0
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
    $I0 = isa match, ['Regex';'Match']
    if $I0 goto match_done

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
    .local pmc subcur, submatch
    subcur = shift cstack_it
    # If the subcursor isn't bound with a name, skip it
    $P0 = getattribute subcur, '$!names'
    if null $P0 goto cstack_loop
    subname = $P0
    submatch = subcur.'MATCH'()
    keyint = is_cclass .CCLASS_NUMERIC, subname, 0
    if null caparray goto cstack_bind
    $I0 = exists caphash[subname]
    unless $I0 goto cstack_bind
    if keyint goto cstack_array_int
    $P0 = match[subname]
    push $P0, submatch
    goto cstack_loop
  cstack_array_int:
    $I0 = subname
    $P0 = match[$I0]
    push $P0, submatch
    goto cstack_loop
  cstack_bind:
    if keyint goto cstack_bind_int
    match[subname] = submatch
    goto cstack_loop
  cstack_bind_int:
    $I0 = subname
    match[$I0] = submatch
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

    .local pmc from, pos, target, action
    from = getattribute self, '$!pos'
    setattribute cur, '$!from', from
    setattribute cur, '$!pos', from

    target = getattribute self, '$!target'
    setattribute cur, '$!target', target
    action = getattribute self, '$!action'
    setattribute cur, '$!action', action

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


=item !reduce(name [, key])

Perform any action associated with the current regex match.

=cut

.sub '!reduce' :method
    .param string name
    .param string key          :optional
    .param int has_key         :opt_flag
    .local pmc action
    action = getattribute self, '$!action'
    if null action goto action_done
    $I0 = can action, name
    unless $I0 goto action_done
    .local pmc match
    match = self.'MATCH'()
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

    
=head1 AUTHORS

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
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
### .include 'src/cheats/regex-cursor-protoregex.pir'
# Copyright (C) 2009, Patrick R. Michaud

=head1 NAME

regex-cursor-protoregex.pir - naive protoregex implementation

=head1 DESCRIPTION

=over 4

=item !protoregex()

This method adds rudimentary protoregex support to Regex::Cursor.  It doesn't
do longest token matching correctly; instead it tries regexes
in reverse order of longest regex name.

=cut

.namespace ['Regex';'Cursor']

.sub '!protoregex' :method
    .param string name

    .local pmc generation
    generation = get_global '$!generation'

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

    .local pmc tokrx, toklen
    $S0 = concat name, '.tokrx'
    tokrx = prototable[$S0]
    $S0 = concat name, '.toklen'
    toklen = prototable[$S0]
    unless null tokrx goto have_tokrx
    (tokrx, toklen) = self.'!protoregex_gen_tokrx'(prototable, name)
  have_tokrx:

    .local pmc tokrx_it
    tokrx_it = iter tokrx
  token_loop:
    unless tokrx_it goto token_done
    .local pmc rx, cur
    rx = shift tokrx_it
    cur = self.rx()
    if cur goto token_done
    goto token_loop
  token_done:
    .return (cur)
.end


=item !protoregex_generation()

Set the C<$!generation> flag to indicate that protoregexes need to
be recalculated.

=cut

.sub '!protoregex_generation' :method
    $P0 = get_global '$!generation'
    # don't change this to 'inc' -- we want to ensure new PMC
    $P1 = add $P0, 1
    set_global '$!generation', $P1
    .return ($P1)
.end

=item !protoregex_gen_table(parrotclass)

Generate a new protoregex table for C<parrotclass>.  This involves
creating a hash keyed with method names containing ':sym<' from
C<parrotclass> and all of its superclasses.  This new hash is
then given the current C<$!generate> property so we can avoid
recreating it.

The categorization of the protoregex candidate lists
for individual protoregexes is handled (lazily) by
C<!protoregex_gen_tokrx> below.

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

=item !protoregex_gen_tokrx(prototable, name)

Generate this class' token list in prototable for the protoregex
called C<name>.

=cut

.sub '!protoregex_gen_tokrx' :method
    .param pmc prototable
    .param string name

    .local pmc toklen, tokrx
    null toklen
    tokrx  = new ['ResizablePMCArray']

    # The prototable has already collected all of the names of
    # protoregex methods into C<prototable>.  We set up a loop
    # to find all of the method names that begin with "name:sym<".
    .local string mprefix
    .local int mlen
    mprefix = concat name, ':sym<'
    mlen   = length mprefix

    .local pmc method_it, method
    .local string method_name
    method_it = iter prototable
  method_loop:
    unless method_it goto method_done
    method_name = shift method_it
    $S0 = substr method_name, 0, mlen
    if $S0 != mprefix goto method_loop

    # Okay, we've found a method name intended for this protoregex,
    # add it to our list.
    .local pmc rx
    rx = find_method self, method_name
    push tokrx, rx
    goto method_loop
  method_done:


    # Now sort the methods by name, longest first.
    .const 'Sub' $P99 = '!protoregex_cmp'
    tokrx.'sort'($P99)

    # say name
    # $P0 = iter tokrx
  # say_loop:
    # unless $P0 goto say_done
    # $P1 = shift $P0
    # say $P1
    # goto say_loop
  # say_done:

    # It's built!  Now store the tokrx table where we can find it
    # again later without having to rebuild it.
    $S0 = concat name, '.tokrx'
    prototable[$S0] = tokrx
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

=back

=cut

### .include 'src/gen/p6regex-grammar.pir'

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block11"  :subid("10_1255814464.54656")
.annotate "line", 0
    .const 'Sub' $P299 = "79_1255814464.54656" 
    capture_lex $P299
    .const 'Sub' $P294 = "78_1255814464.54656" 
    capture_lex $P294
    .const 'Sub' $P289 = "77_1255814464.54656" 
    capture_lex $P289
    .const 'Sub' $P276 = "75_1255814464.54656" 
    capture_lex $P276
    .const 'Sub' $P244 = "70_1255814464.54656" 
    capture_lex $P244
    .const 'Sub' $P235 = "68_1255814464.54656" 
    capture_lex $P235
    .const 'Sub' $P225 = "66_1255814464.54656" 
    capture_lex $P225
    .const 'Sub' $P223 = "65_1255814464.54656" 
    capture_lex $P223
    .const 'Sub' $P216 = "63_1255814464.54656" 
    capture_lex $P216
    .const 'Sub' $P209 = "61_1255814464.54656" 
    capture_lex $P209
    .const 'Sub' $P207 = "60_1255814464.54656" 
    capture_lex $P207
    .const 'Sub' $P205 = "59_1255814464.54656" 
    capture_lex $P205
    .const 'Sub' $P203 = "58_1255814464.54656" 
    capture_lex $P203
    .const 'Sub' $P201 = "57_1255814464.54656" 
    capture_lex $P201
    .const 'Sub' $P199 = "56_1255814464.54656" 
    capture_lex $P199
    .const 'Sub' $P196 = "55_1255814464.54656" 
    capture_lex $P196
    .const 'Sub' $P193 = "54_1255814464.54656" 
    capture_lex $P193
    .const 'Sub' $P190 = "53_1255814464.54656" 
    capture_lex $P190
    .const 'Sub' $P187 = "52_1255814464.54656" 
    capture_lex $P187
    .const 'Sub' $P184 = "51_1255814464.54656" 
    capture_lex $P184
    .const 'Sub' $P181 = "50_1255814464.54656" 
    capture_lex $P181
    .const 'Sub' $P178 = "49_1255814464.54656" 
    capture_lex $P178
    .const 'Sub' $P175 = "48_1255814464.54656" 
    capture_lex $P175
    .const 'Sub' $P166 = "47_1255814464.54656" 
    capture_lex $P166
    .const 'Sub' $P163 = "46_1255814464.54656" 
    capture_lex $P163
    .const 'Sub' $P149 = "45_1255814464.54656" 
    capture_lex $P149
    .const 'Sub' $P147 = "44_1255814464.54656" 
    capture_lex $P147
    .const 'Sub' $P145 = "43_1255814464.54656" 
    capture_lex $P145
    .const 'Sub' $P141 = "42_1255814464.54656" 
    capture_lex $P141
    .const 'Sub' $P137 = "41_1255814464.54656" 
    capture_lex $P137
    .const 'Sub' $P134 = "40_1255814464.54656" 
    capture_lex $P134
    .const 'Sub' $P131 = "39_1255814464.54656" 
    capture_lex $P131
    .const 'Sub' $P128 = "38_1255814464.54656" 
    capture_lex $P128
    .const 'Sub' $P125 = "37_1255814464.54656" 
    capture_lex $P125
    .const 'Sub' $P122 = "36_1255814464.54656" 
    capture_lex $P122
    .const 'Sub' $P119 = "35_1255814464.54656" 
    capture_lex $P119
    .const 'Sub' $P116 = "34_1255814464.54656" 
    capture_lex $P116
    .const 'Sub' $P114 = "33_1255814464.54656" 
    capture_lex $P114
    .const 'Sub' $P112 = "32_1255814464.54656" 
    capture_lex $P112
    .const 'Sub' $P110 = "31_1255814464.54656" 
    capture_lex $P110
    .const 'Sub' $P108 = "30_1255814464.54656" 
    capture_lex $P108
    .const 'Sub' $P99 = "28_1255814464.54656" 
    capture_lex $P99
    .const 'Sub' $P90 = "27_1255814464.54656" 
    capture_lex $P90
    .const 'Sub' $P87 = "26_1255814464.54656" 
    capture_lex $P87
    .const 'Sub' $P84 = "25_1255814464.54656" 
    capture_lex $P84
    .const 'Sub' $P81 = "24_1255814464.54656" 
    capture_lex $P81
    .const 'Sub' $P70 = "22_1255814464.54656" 
    capture_lex $P70
    .const 'Sub' $P61 = "20_1255814464.54656" 
    capture_lex $P61
    .const 'Sub' $P57 = "19_1255814464.54656" 
    capture_lex $P57
    .const 'Sub' $P48 = "18_1255814464.54656" 
    capture_lex $P48
    .const 'Sub' $P45 = "17_1255814464.54656" 
    capture_lex $P45
    .const 'Sub' $P34 = "16_1255814464.54656" 
    capture_lex $P34
    .const 'Sub' $P30 = "15_1255814464.54656" 
    capture_lex $P30
    .const 'Sub' $P25 = "14_1255814464.54656" 
    capture_lex $P25
    .const 'Sub' $P18 = "12_1255814464.54656" 
    capture_lex $P18
    .const 'Sub' $P13 = "11_1255814464.54656" 
    capture_lex $P13
.annotate "line", 169
    .const 'Sub' $P299 = "79_1255814464.54656" 
    capture_lex $P299
.annotate "line", 1
    .return ($P299)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post80") :outer("10_1255814464.54656")
.annotate "line", 0
    get_hll_global $P12, ["Regex";"P6Regex";"Grammar"], "_block11" 
    .local pmc block
    set block, $P12
.annotate "line", 1
    get_hll_global $P304, "P6metaclass"
    $P304."new_class"("Regex::P6Regex::Grammar", "Regex::Cursor" :named("parent"))
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("11_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 3
    .local string rx14_tgt
    .local int rx14_pos
    .local int rx14_off
    .local int rx14_eos
    .local int rx14_rep
    .local pmc rx14_cur
    (rx14_cur, rx14_pos, rx14_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx14_cur
    length rx14_eos, rx14_tgt
    set rx14_off, 0
    lt $I10, 2, rx14_start
    sub rx14_off, $I10, 1
    substr rx14_tgt, rx14_tgt, rx14_off
  rx14_start:
  # rx rxquantr15 ** 0..*
    set_addr $I17, rxquantr15_done
    rx14_cur."!mark_push"(0, rx14_pos, $I17)
  rxquantr15_loop:
  alt16_0:
    set_addr $I10, alt16_1
    rx14_cur."!mark_push"(0, rx14_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx14_pos, rx14_off
    find_not_cclass $I11, 32, rx14_tgt, $I10, rx14_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx14_fail
    add rx14_pos, rx14_off, $I11
    goto alt16_end
  alt16_1:
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
  alt16_end:
    (rx14_rep) = rx14_cur."!mark_commit"($I17)
    rx14_cur."!mark_push"(rx14_rep, rx14_pos, $I17)
    goto rxquantr15_loop
  rxquantr15_done:
  # rx pass
    rx14_cur."!cursor_pass"(rx14_pos, "ws")
    .return (rx14_cur)
  rx14_fail:
    (rx14_rep, rx14_pos, $I10, $P10) = rx14_cur."!mark_fail"(0)
    lt rx14_pos, -1, rx14_done
    eq rx14_pos, -1, rx14_fail
    jump $I10
  rx14_done:
    rx14_cur."!cursor_fail"()
    .return (rx14_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("12_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 5
    .const 'Sub' $P21 = "13_1255814464.54656" 
    capture_lex $P21
    .local string rx19_tgt
    .local int rx19_pos
    .local int rx19_off
    .local int rx19_eos
    .local int rx19_rep
    .local pmc rx19_cur
    (rx19_cur, rx19_pos, rx19_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx19_cur
    length rx19_eos, rx19_tgt
    set rx19_off, 0
    lt $I10, 2, rx19_start
    sub rx19_off, $I10, 1
    substr rx19_tgt, rx19_tgt, rx19_off
  rx19_start:
  # rx subrule "before" subtype=zerowidth negate=
    rx19_cur."!cursor_pos"(rx19_pos)
    .const 'Sub' $P21 = "13_1255814464.54656" 
    capture_lex $P21
    $P10 = rx19_cur."before"($P21)
    unless $P10, rx19_fail
  # rx subrule "ws" subtype=method negate=
    rx19_cur."!cursor_pos"(rx19_pos)
    $P10 = rx19_cur."ws"()
    unless $P10, rx19_fail
    rx19_pos = $P10."pos"()
    rx19_cur."!mark_push"(0, -1, 0, $P10)
  # rx pass
    rx19_cur."!cursor_pass"(rx19_pos, "normspace")
    .return (rx19_cur)
  rx19_fail:
    (rx19_rep, rx19_pos, $I10, $P10) = rx19_cur."!mark_fail"(0)
    lt rx19_pos, -1, rx19_done
    eq rx19_pos, -1, rx19_fail
    jump $I10
  rx19_done:
    rx19_cur."!cursor_fail"()
    .return (rx19_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block20"  :anon :subid("13_1255814464.54656") :method :outer("12_1255814464.54656")
.annotate "line", 5
    .local string rx22_tgt
    .local int rx22_pos
    .local int rx22_off
    .local int rx22_eos
    .local int rx22_rep
    .local pmc rx22_cur
    (rx22_cur, rx22_pos, rx22_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx22_cur
    length rx22_eos, rx22_tgt
    set rx22_off, 0
    lt $I10, 2, rx22_start
    sub rx22_off, $I10, 1
    substr rx22_tgt, rx22_tgt, rx22_off
  rx22_start:
    ge rx22_pos, 0, rxscan23_done
  rxscan23_loop:
    ($P10) = rx22_cur."from"()
    inc $P10
    set rx22_pos, $P10
    ge rx22_pos, rx22_eos, rxscan23_done
    set_addr $I10, rxscan23_loop
    rx22_cur."!mark_push"(0, rx22_pos, $I10)
  rxscan23_done:
  alt24_0:
    set_addr $I10, alt24_1
    rx22_cur."!mark_push"(0, rx22_pos, $I10)
  # rx charclass s
    ge rx22_pos, rx22_eos, rx22_fail
    sub $I10, rx22_pos, rx22_off
    is_cclass $I11, 32, rx22_tgt, $I10
    unless $I11, rx22_fail
    inc rx22_pos
    goto alt24_end
  alt24_1:
  # rx literal  "#"
    add $I11, rx22_pos, 1
    gt $I11, rx22_eos, rx22_fail
    sub $I11, rx22_pos, rx22_off
    substr $S10, rx22_tgt, $I11, 1
    ne $S10, "#", rx22_fail
    add rx22_pos, 1
  alt24_end:
  # rx pass
    rx22_cur."!cursor_pass"(rx22_pos, "")
    .return (rx22_cur)
  rx22_fail:
    (rx22_rep, rx22_pos, $I10, $P10) = rx22_cur."!mark_fail"(0)
    lt rx22_pos, -1, rx22_done
    eq rx22_pos, -1, rx22_fail
    jump $I10
  rx22_done:
    rx22_cur."!cursor_fail"()
    .return (rx22_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quote"  :subid("14_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 7
    .local string rx26_tgt
    .local int rx26_pos
    .local int rx26_off
    .local int rx26_eos
    .local int rx26_rep
    .local pmc rx26_cur
    (rx26_cur, rx26_pos, rx26_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx26_cur
    length rx26_eos, rx26_tgt
    set rx26_off, 0
    lt $I10, 2, rx26_start
    sub rx26_off, $I10, 1
    substr rx26_tgt, rx26_tgt, rx26_off
  rx26_start:
  # rx literal  "'"
    add $I11, rx26_pos, 1
    gt $I11, rx26_eos, rx26_fail
    sub $I11, rx26_pos, rx26_off
    substr $S10, rx26_tgt, $I11, 1
    ne $S10, "'", rx26_fail
    add rx26_pos, 1
  # rx subcapture "val"
    set_addr $I10, rxcap_29_fail
    rx26_cur."!mark_push"(0, rx26_pos, $I10)
  # rx rxquantr27 ** 0..*
    set_addr $I28, rxquantr27_done
    rx26_cur."!mark_push"(0, rx26_pos, $I28)
  rxquantr27_loop:
  # rx enumcharlist negate=1 
    ge rx26_pos, rx26_eos, rx26_fail
    sub $I10, rx26_pos, rx26_off
    substr $S10, rx26_tgt, $I10, 1
    index $I11, "'", $S10
    ge $I11, 0, rx26_fail
    inc rx26_pos
    (rx26_rep) = rx26_cur."!mark_commit"($I28)
    rx26_cur."!mark_push"(rx26_rep, rx26_pos, $I28)
    goto rxquantr27_loop
  rxquantr27_done:
    set_addr $I10, rxcap_29_fail
    ($I12, $I11) = rx26_cur."!mark_peek"($I10)
    rx26_cur."!cursor_pos"($I11)
    ($P10) = rx26_cur."!cursor_start"()
    $P10."!cursor_pass"(rx26_pos, "")
    rx26_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_29_done
  rxcap_29_fail:
    goto rx26_fail
  rxcap_29_done:
  # rx literal  "'"
    add $I11, rx26_pos, 1
    gt $I11, rx26_eos, rx26_fail
    sub $I11, rx26_pos, rx26_off
    substr $S10, rx26_tgt, $I11, 1
    ne $S10, "'", rx26_fail
    add rx26_pos, 1
  # rx pass
    rx26_cur."!cursor_pass"(rx26_pos, "quote")
    .return (rx26_cur)
  rx26_fail:
    (rx26_rep, rx26_pos, $I10, $P10) = rx26_cur."!mark_fail"(0)
    lt rx26_pos, -1, rx26_done
    eq rx26_pos, -1, rx26_fail
    jump $I10
  rx26_done:
    rx26_cur."!cursor_fail"()
    .return (rx26_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("15_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 9
    .local string rx31_tgt
    .local int rx31_pos
    .local int rx31_off
    .local int rx31_eos
    .local int rx31_rep
    .local pmc rx31_cur
    (rx31_cur, rx31_pos, rx31_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx31_cur
    length rx31_eos, rx31_tgt
    set rx31_off, 0
    lt $I10, 2, rx31_start
    sub rx31_off, $I10, 1
    substr rx31_tgt, rx31_tgt, rx31_off
  rx31_start:
  alt32_0:
.annotate "line", 10
    set_addr $I10, alt32_1
    rx31_cur."!mark_push"(0, rx31_pos, $I10)
.annotate "line", 11
  # rx subrule "quote" subtype=capture negate=
    rx31_cur."!cursor_pos"(rx31_pos)
    $P10 = rx31_cur."quote"()
    unless $P10, rx31_fail
    rx31_pos = $P10."pos"()
    rx31_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    goto alt32_end
  alt32_1:
.annotate "line", 12
  # rx subcapture "value"
    set_addr $I10, rxcap_33_fail
    rx31_cur."!mark_push"(0, rx31_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx31_pos, rx31_off
    find_not_cclass $I11, 8, rx31_tgt, $I10, rx31_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx31_fail
    add rx31_pos, rx31_off, $I11
    set_addr $I10, rxcap_33_fail
    ($I12, $I11) = rx31_cur."!mark_peek"($I10)
    rx31_cur."!cursor_pos"($I11)
    ($P10) = rx31_cur."!cursor_start"()
    $P10."!cursor_pass"(rx31_pos, "")
    rx31_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    goto rxcap_33_done
  rxcap_33_fail:
    goto rx31_fail
  rxcap_33_done:
  alt32_end:
.annotate "line", 9
  # rx pass
    rx31_cur."!cursor_pass"(rx31_pos, "arg")
    .return (rx31_cur)
  rx31_fail:
    (rx31_rep, rx31_pos, $I10, $P10) = rx31_cur."!mark_fail"(0)
    lt rx31_pos, -1, rx31_done
    eq rx31_pos, -1, rx31_fail
    jump $I10
  rx31_done:
    rx31_cur."!cursor_fail"()
    .return (rx31_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("16_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 17
    .local string rx35_tgt
    .local int rx35_pos
    .local int rx35_off
    .local int rx35_eos
    .local int rx35_rep
    .local pmc rx35_cur
    (rx35_cur, rx35_pos, rx35_tgt, $I10) = self."!cursor_start"()
    rx35_cur."!cursor_caparray"("arg")
    .lex unicode:"$\x{a2}", rx35_cur
    length rx35_eos, rx35_tgt
    set rx35_off, 0
    lt $I10, 2, rx35_start
    sub rx35_off, $I10, 1
    substr rx35_tgt, rx35_tgt, rx35_off
  rx35_start:
  # rx subrule "ws" subtype=method negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."ws"()
    unless $P10, rx35_fail
    rx35_pos = $P10."pos"()
    rx35_cur."!mark_push"(0, -1, 0, $P10)
  # rx subrule "arg" subtype=capture negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."arg"()
    unless $P10, rx35_fail
    rx35_pos = $P10."pos"()
    rx35_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
  # rx subrule "ws" subtype=method negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."ws"()
    unless $P10, rx35_fail
    rx35_pos = $P10."pos"()
    rx35_cur."!mark_push"(0, -1, 0, $P10)
  # rx rxquantr38 ** 0..*
    set_addr $I42, rxquantr38_done
    rx35_cur."!mark_push"(0, rx35_pos, $I42)
  rxquantr38_loop:
  # rx subrule "ws" subtype=method negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."ws"()
    unless $P10, rx35_fail
    rx35_pos = $P10."pos"()
    rx35_cur."!mark_push"(0, -1, 0, $P10)
  # rx literal  ","
    add $I11, rx35_pos, 1
    gt $I11, rx35_eos, rx35_fail
    sub $I11, rx35_pos, rx35_off
    substr $S10, rx35_tgt, $I11, 1
    ne $S10, ",", rx35_fail
    add rx35_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."ws"()
    unless $P10, rx35_fail
    rx35_pos = $P10."pos"()
    rx35_cur."!mark_push"(0, -1, 0, $P10)
  # rx subrule "arg" subtype=capture negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."arg"()
    unless $P10, rx35_fail
    rx35_pos = $P10."pos"()
    rx35_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
  # rx subrule "ws" subtype=method negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."ws"()
    unless $P10, rx35_fail
    rx35_pos = $P10."pos"()
    rx35_cur."!mark_push"(0, -1, 0, $P10)
    (rx35_rep) = rx35_cur."!mark_commit"($I42)
    rx35_cur."!mark_push"(rx35_rep, rx35_pos, $I42)
    goto rxquantr38_loop
  rxquantr38_done:
  # rx subrule "ws" subtype=method negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."ws"()
    unless $P10, rx35_fail
    rx35_pos = $P10."pos"()
    rx35_cur."!mark_push"(0, -1, 0, $P10)
  # rx subrule "ws" subtype=method negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."ws"()
    unless $P10, rx35_fail
    rx35_pos = $P10."pos"()
    rx35_cur."!mark_push"(0, -1, 0, $P10)
  # rx pass
    rx35_cur."!cursor_pass"(rx35_pos, "arglist")
    .return (rx35_cur)
  rx35_fail:
    (rx35_rep, rx35_pos, $I10, $P10) = rx35_cur."!mark_fail"(0)
    lt rx35_pos, -1, rx35_done
    eq rx35_pos, -1, rx35_fail
    jump $I10
  rx35_done:
    rx35_cur."!cursor_fail"()
    .return (rx35_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("17_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 19
    .local string rx46_tgt
    .local int rx46_pos
    .local int rx46_off
    .local int rx46_eos
    .local int rx46_rep
    .local pmc rx46_cur
    (rx46_cur, rx46_pos, rx46_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx46_cur
    length rx46_eos, rx46_tgt
    set rx46_off, 0
    lt $I10, 2, rx46_start
    sub rx46_off, $I10, 1
    substr rx46_tgt, rx46_tgt, rx46_off
  rx46_start:
.annotate "line", 20
  # rx subrule "nibbler" subtype=capture negate=
    rx46_cur."!cursor_pos"(rx46_pos)
    $P10 = rx46_cur."nibbler"()
    unless $P10, rx46_fail
    rx46_pos = $P10."pos"()
    rx46_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
  alt47_0:
.annotate "line", 21
    set_addr $I10, alt47_1
    rx46_cur."!mark_push"(0, rx46_pos, $I10)
  # rxanchor eos
    ne rx46_pos, rx46_eos, rx46_fail
    goto alt47_end
  alt47_1:
  # rx subrule "panic" subtype=method negate=
    rx46_cur."!cursor_pos"(rx46_pos)
    $P10 = rx46_cur."panic"("Confused")
    unless $P10, rx46_fail
    rx46_pos = $P10."pos"()
    rx46_cur."!mark_push"(0, -1, 0, $P10)
  alt47_end:
.annotate "line", 19
  # rx pass
    rx46_cur."!cursor_pass"(rx46_pos, "TOP")
    .return (rx46_cur)
  rx46_fail:
    (rx46_rep, rx46_pos, $I10, $P10) = rx46_cur."!mark_fail"(0)
    lt rx46_pos, -1, rx46_done
    eq rx46_pos, -1, rx46_fail
    jump $I10
  rx46_done:
    rx46_cur."!cursor_fail"()
    .return (rx46_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("18_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 25
    .local string rx49_tgt
    .local int rx49_pos
    .local int rx49_off
    .local int rx49_eos
    .local int rx49_rep
    .local pmc rx49_cur
    (rx49_cur, rx49_pos, rx49_tgt, $I10) = self."!cursor_start"()
    rx49_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx49_cur
    length rx49_eos, rx49_tgt
    set rx49_off, 0
    lt $I10, 2, rx49_start
    sub rx49_off, $I10, 1
    substr rx49_tgt, rx49_tgt, rx49_off
  rx49_start:
.annotate "line", 26
  # rx reduce name="nibbler" key="open"
    rx49_cur."!cursor_pos"(rx49_pos)
    rx49_cur."!reduce"("nibbler", "open")
.annotate "line", 27
  # rx rxquantr50 ** 0..1
    set_addr $I52, rxquantr50_done
    rx49_cur."!mark_push"(0, rx49_pos, $I52)
  rxquantr50_loop:
  # rx subrule "ws" subtype=method negate=
    rx49_cur."!cursor_pos"(rx49_pos)
    $P10 = rx49_cur."ws"()
    unless $P10, rx49_fail
    rx49_pos = $P10."pos"()
    rx49_cur."!mark_push"(0, -1, 0, $P10)
  alt51_0:
    set_addr $I10, alt51_1
    rx49_cur."!mark_push"(0, rx49_pos, $I10)
  # rx literal  "||"
    add $I11, rx49_pos, 2
    gt $I11, rx49_eos, rx49_fail
    sub $I11, rx49_pos, rx49_off
    substr $S10, rx49_tgt, $I11, 2
    ne $S10, "||", rx49_fail
    add rx49_pos, 2
    goto alt51_end
  alt51_1:
    set_addr $I10, alt51_2
    rx49_cur."!mark_push"(0, rx49_pos, $I10)
  # rx literal  "|"
    add $I11, rx49_pos, 1
    gt $I11, rx49_eos, rx49_fail
    sub $I11, rx49_pos, rx49_off
    substr $S10, rx49_tgt, $I11, 1
    ne $S10, "|", rx49_fail
    add rx49_pos, 1
    goto alt51_end
  alt51_2:
    set_addr $I10, alt51_3
    rx49_cur."!mark_push"(0, rx49_pos, $I10)
  # rx literal  "&&"
    add $I11, rx49_pos, 2
    gt $I11, rx49_eos, rx49_fail
    sub $I11, rx49_pos, rx49_off
    substr $S10, rx49_tgt, $I11, 2
    ne $S10, "&&", rx49_fail
    add rx49_pos, 2
    goto alt51_end
  alt51_3:
  # rx literal  "&"
    add $I11, rx49_pos, 1
    gt $I11, rx49_eos, rx49_fail
    sub $I11, rx49_pos, rx49_off
    substr $S10, rx49_tgt, $I11, 1
    ne $S10, "&", rx49_fail
    add rx49_pos, 1
  alt51_end:
    (rx49_rep) = rx49_cur."!mark_commit"($I52)
  rxquantr50_done:
.annotate "line", 28
  # rx subrule "termish" subtype=capture negate=
    rx49_cur."!cursor_pos"(rx49_pos)
    $P10 = rx49_cur."termish"()
    unless $P10, rx49_fail
    rx49_pos = $P10."pos"()
    rx49_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
.annotate "line", 31
  # rx rxquantr53 ** 0..*
    set_addr $I56, rxquantr53_done
    rx49_cur."!mark_push"(0, rx49_pos, $I56)
  rxquantr53_loop:
  alt54_0:
.annotate "line", 29
    set_addr $I10, alt54_1
    rx49_cur."!mark_push"(0, rx49_pos, $I10)
  # rx literal  "||"
    add $I11, rx49_pos, 2
    gt $I11, rx49_eos, rx49_fail
    sub $I11, rx49_pos, rx49_off
    substr $S10, rx49_tgt, $I11, 2
    ne $S10, "||", rx49_fail
    add rx49_pos, 2
    goto alt54_end
  alt54_1:
  # rx literal  "|"
    add $I11, rx49_pos, 1
    gt $I11, rx49_eos, rx49_fail
    sub $I11, rx49_pos, rx49_off
    substr $S10, rx49_tgt, $I11, 1
    ne $S10, "|", rx49_fail
    add rx49_pos, 1
  alt54_end:
  alt55_0:
.annotate "line", 30
    set_addr $I10, alt55_1
    rx49_cur."!mark_push"(0, rx49_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx49_cur."!cursor_pos"(rx49_pos)
    $P10 = rx49_cur."termish"()
    unless $P10, rx49_fail
    rx49_pos = $P10."pos"()
    rx49_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    goto alt55_end
  alt55_1:
  # rx subrule "panic" subtype=method negate=
    rx49_cur."!cursor_pos"(rx49_pos)
    $P10 = rx49_cur."panic"("Null pattern not allowed")
    unless $P10, rx49_fail
    rx49_pos = $P10."pos"()
    rx49_cur."!mark_push"(0, -1, 0, $P10)
  alt55_end:
.annotate "line", 31
    (rx49_rep) = rx49_cur."!mark_commit"($I56)
    rx49_cur."!mark_push"(rx49_rep, rx49_pos, $I56)
    goto rxquantr53_loop
  rxquantr53_done:
.annotate "line", 25
  # rx pass
    rx49_cur."!cursor_pass"(rx49_pos, "nibbler")
    .return (rx49_cur)
  rx49_fail:
    (rx49_rep, rx49_pos, $I10, $P10) = rx49_cur."!mark_fail"(0)
    lt rx49_pos, -1, rx49_done
    eq rx49_pos, -1, rx49_fail
    jump $I10
  rx49_done:
    rx49_cur."!cursor_fail"()
    .return (rx49_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("19_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 35
    .local string rx58_tgt
    .local int rx58_pos
    .local int rx58_off
    .local int rx58_eos
    .local int rx58_rep
    .local pmc rx58_cur
    (rx58_cur, rx58_pos, rx58_tgt, $I10) = self."!cursor_start"()
    rx58_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx58_cur
    length rx58_eos, rx58_tgt
    set rx58_off, 0
    lt $I10, 2, rx58_start
    sub rx58_off, $I10, 1
    substr rx58_tgt, rx58_tgt, rx58_off
  rx58_start:
.annotate "line", 36
  # rx rxquantr59 ** 1..*
    set_addr $I60, rxquantr59_done
    rx58_cur."!mark_push"(0, -1, $I60)
  rxquantr59_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx58_cur."!cursor_pos"(rx58_pos)
    $P10 = rx58_cur."quantified_atom"()
    unless $P10, rx58_fail
    rx58_pos = $P10."pos"()
    rx58_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("noun")
    (rx58_rep) = rx58_cur."!mark_commit"($I60)
    rx58_cur."!mark_push"(rx58_rep, rx58_pos, $I60)
    goto rxquantr59_loop
  rxquantr59_done:
.annotate "line", 35
  # rx pass
    rx58_cur."!cursor_pass"(rx58_pos, "termish")
    .return (rx58_cur)
  rx58_fail:
    (rx58_rep, rx58_pos, $I10, $P10) = rx58_cur."!mark_fail"(0)
    lt rx58_pos, -1, rx58_done
    eq rx58_pos, -1, rx58_fail
    jump $I10
  rx58_done:
    rx58_cur."!cursor_fail"()
    .return (rx58_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("20_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 40
    .const 'Sub' $P66 = "21_1255814464.54656" 
    capture_lex $P66
    .local string rx62_tgt
    .local int rx62_pos
    .local int rx62_off
    .local int rx62_eos
    .local int rx62_rep
    .local pmc rx62_cur
    (rx62_cur, rx62_pos, rx62_tgt, $I10) = self."!cursor_start"()
    rx62_cur."!cursor_caparray"("quantifier", "backmod")
    .lex unicode:"$\x{a2}", rx62_cur
    length rx62_eos, rx62_tgt
    set rx62_off, 0
    lt $I10, 2, rx62_start
    sub rx62_off, $I10, 1
    substr rx62_tgt, rx62_tgt, rx62_off
  rx62_start:
.annotate "line", 41
  # rx subrule "atom" subtype=capture negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."atom"()
    unless $P10, rx62_fail
    rx62_pos = $P10."pos"()
    rx62_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
  # rx rxquantr63 ** 0..1
    set_addr $I69, rxquantr63_done
    rx62_cur."!mark_push"(0, rx62_pos, $I69)
  rxquantr63_loop:
  # rx subrule "ws" subtype=method negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."ws"()
    unless $P10, rx62_fail
    rx62_pos = $P10."pos"()
    rx62_cur."!mark_push"(0, -1, 0, $P10)
  alt64_0:
    set_addr $I10, alt64_1
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."quantifier"()
    unless $P10, rx62_fail
    rx62_pos = $P10."pos"()
    rx62_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    goto alt64_end
  alt64_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    .const 'Sub' $P66 = "21_1255814464.54656" 
    capture_lex $P66
    $P10 = rx62_cur."before"($P66)
    unless $P10, rx62_fail
  # rx subrule "backmod" subtype=capture negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."backmod"()
    unless $P10, rx62_fail
    rx62_pos = $P10."pos"()
    rx62_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."alpha"()
    if $P10, rx62_fail
  alt64_end:
    (rx62_rep) = rx62_cur."!mark_commit"($I69)
  rxquantr63_done:
.annotate "line", 40
  # rx pass
    rx62_cur."!cursor_pass"(rx62_pos, "quantified_atom")
    .return (rx62_cur)
  rx62_fail:
    (rx62_rep, rx62_pos, $I10, $P10) = rx62_cur."!mark_fail"(0)
    lt rx62_pos, -1, rx62_done
    eq rx62_pos, -1, rx62_fail
    jump $I10
  rx62_done:
    rx62_cur."!cursor_fail"()
    .return (rx62_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block65"  :anon :subid("21_1255814464.54656") :method :outer("20_1255814464.54656")
.annotate "line", 41
    .local string rx67_tgt
    .local int rx67_pos
    .local int rx67_off
    .local int rx67_eos
    .local int rx67_rep
    .local pmc rx67_cur
    (rx67_cur, rx67_pos, rx67_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx67_cur
    length rx67_eos, rx67_tgt
    set rx67_off, 0
    lt $I10, 2, rx67_start
    sub rx67_off, $I10, 1
    substr rx67_tgt, rx67_tgt, rx67_off
  rx67_start:
    ge rx67_pos, 0, rxscan68_done
  rxscan68_loop:
    ($P10) = rx67_cur."from"()
    inc $P10
    set rx67_pos, $P10
    ge rx67_pos, rx67_eos, rxscan68_done
    set_addr $I10, rxscan68_loop
    rx67_cur."!mark_push"(0, rx67_pos, $I10)
  rxscan68_done:
  # rx literal  ":"
    add $I11, rx67_pos, 1
    gt $I11, rx67_eos, rx67_fail
    sub $I11, rx67_pos, rx67_off
    substr $S10, rx67_tgt, $I11, 1
    ne $S10, ":", rx67_fail
    add rx67_pos, 1
  # rx pass
    rx67_cur."!cursor_pass"(rx67_pos, "")
    .return (rx67_cur)
  rx67_fail:
    (rx67_rep, rx67_pos, $I10, $P10) = rx67_cur."!mark_fail"(0)
    lt rx67_pos, -1, rx67_done
    eq rx67_pos, -1, rx67_fail
    jump $I10
  rx67_done:
    rx67_cur."!cursor_fail"()
    .return (rx67_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("22_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 45
    .const 'Sub' $P77 = "23_1255814464.54656" 
    capture_lex $P77
    .local string rx71_tgt
    .local int rx71_pos
    .local int rx71_off
    .local int rx71_eos
    .local int rx71_rep
    .local pmc rx71_cur
    (rx71_cur, rx71_pos, rx71_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx71_cur
    length rx71_eos, rx71_tgt
    set rx71_off, 0
    lt $I10, 2, rx71_start
    sub rx71_off, $I10, 1
    substr rx71_tgt, rx71_tgt, rx71_off
  rx71_start:
  alt72_0:
.annotate "line", 47
    set_addr $I10, alt72_1
    rx71_cur."!mark_push"(0, rx71_pos, $I10)
.annotate "line", 48
  # rx charclass w
    ge rx71_pos, rx71_eos, rx71_fail
    sub $I10, rx71_pos, rx71_off
    is_cclass $I11, 8192, rx71_tgt, $I10
    unless $I11, rx71_fail
    inc rx71_pos
  # rx rxquantr73 ** 0..1
    set_addr $I80, rxquantr73_done
    rx71_cur."!mark_push"(0, rx71_pos, $I80)
  rxquantr73_loop:
  # rx rxquantg74 ** 1..*
    set_addr $I75, rxquantg74_done
  rxquantg74_loop:
  # rx charclass w
    ge rx71_pos, rx71_eos, rx71_fail
    sub $I10, rx71_pos, rx71_off
    is_cclass $I11, 8192, rx71_tgt, $I10
    unless $I11, rx71_fail
    inc rx71_pos
    rx71_cur."!mark_push"(rx71_rep, rx71_pos, $I75)
    goto rxquantg74_loop
  rxquantg74_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx71_cur."!cursor_pos"(rx71_pos)
    .const 'Sub' $P77 = "23_1255814464.54656" 
    capture_lex $P77
    $P10 = rx71_cur."before"($P77)
    unless $P10, rx71_fail
    (rx71_rep) = rx71_cur."!mark_commit"($I80)
  rxquantr73_done:
    goto alt72_end
  alt72_1:
.annotate "line", 49
  # rx subrule "metachar" subtype=capture negate=
    rx71_cur."!cursor_pos"(rx71_pos)
    $P10 = rx71_cur."metachar"()
    unless $P10, rx71_fail
    rx71_pos = $P10."pos"()
    rx71_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
  alt72_end:
.annotate "line", 45
  # rx pass
    rx71_cur."!cursor_pass"(rx71_pos, "atom")
    .return (rx71_cur)
  rx71_fail:
    (rx71_rep, rx71_pos, $I10, $P10) = rx71_cur."!mark_fail"(0)
    lt rx71_pos, -1, rx71_done
    eq rx71_pos, -1, rx71_fail
    jump $I10
  rx71_done:
    rx71_cur."!cursor_fail"()
    .return (rx71_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block76"  :anon :subid("23_1255814464.54656") :method :outer("22_1255814464.54656")
.annotate "line", 48
    .local string rx78_tgt
    .local int rx78_pos
    .local int rx78_off
    .local int rx78_eos
    .local int rx78_rep
    .local pmc rx78_cur
    (rx78_cur, rx78_pos, rx78_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx78_cur
    length rx78_eos, rx78_tgt
    set rx78_off, 0
    lt $I10, 2, rx78_start
    sub rx78_off, $I10, 1
    substr rx78_tgt, rx78_tgt, rx78_off
  rx78_start:
    ge rx78_pos, 0, rxscan79_done
  rxscan79_loop:
    ($P10) = rx78_cur."from"()
    inc $P10
    set rx78_pos, $P10
    ge rx78_pos, rx78_eos, rxscan79_done
    set_addr $I10, rxscan79_loop
    rx78_cur."!mark_push"(0, rx78_pos, $I10)
  rxscan79_done:
  # rx charclass w
    ge rx78_pos, rx78_eos, rx78_fail
    sub $I10, rx78_pos, rx78_off
    is_cclass $I11, 8192, rx78_tgt, $I10
    unless $I11, rx78_fail
    inc rx78_pos
  # rx pass
    rx78_cur."!cursor_pass"(rx78_pos, "")
    .return (rx78_cur)
  rx78_fail:
    (rx78_rep, rx78_pos, $I10, $P10) = rx78_cur."!mark_fail"(0)
    lt rx78_pos, -1, rx78_done
    eq rx78_pos, -1, rx78_fail
    jump $I10
  rx78_done:
    rx78_cur."!cursor_fail"()
    .return (rx78_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("24_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 55
    .local string rx82_tgt
    .local int rx82_pos
    .local int rx82_off
    .local int rx82_eos
    .local int rx82_rep
    .local pmc rx82_cur
    (rx82_cur, rx82_pos, rx82_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx82_cur
    length rx82_eos, rx82_tgt
    set rx82_off, 0
    lt $I10, 2, rx82_start
    sub rx82_off, $I10, 1
    substr rx82_tgt, rx82_tgt, rx82_off
  rx82_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_83_fail
    rx82_cur."!mark_push"(0, rx82_pos, $I10)
  # rx literal  "*"
    add $I11, rx82_pos, 1
    gt $I11, rx82_eos, rx82_fail
    sub $I11, rx82_pos, rx82_off
    substr $S10, rx82_tgt, $I11, 1
    ne $S10, "*", rx82_fail
    add rx82_pos, 1
    set_addr $I10, rxcap_83_fail
    ($I12, $I11) = rx82_cur."!mark_peek"($I10)
    rx82_cur."!cursor_pos"($I11)
    ($P10) = rx82_cur."!cursor_start"()
    $P10."!cursor_pass"(rx82_pos, "")
    rx82_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_83_done
  rxcap_83_fail:
    goto rx82_fail
  rxcap_83_done:
  # rx subrule "backmod" subtype=capture negate=
    rx82_cur."!cursor_pos"(rx82_pos)
    $P10 = rx82_cur."backmod"()
    unless $P10, rx82_fail
    rx82_pos = $P10."pos"()
    rx82_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
  # rx pass
    rx82_cur."!cursor_pass"(rx82_pos, "quantifier:sym<*>")
    .return (rx82_cur)
  rx82_fail:
    (rx82_rep, rx82_pos, $I10, $P10) = rx82_cur."!mark_fail"(0)
    lt rx82_pos, -1, rx82_done
    eq rx82_pos, -1, rx82_fail
    jump $I10
  rx82_done:
    rx82_cur."!cursor_fail"()
    .return (rx82_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("25_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 56
    .local string rx85_tgt
    .local int rx85_pos
    .local int rx85_off
    .local int rx85_eos
    .local int rx85_rep
    .local pmc rx85_cur
    (rx85_cur, rx85_pos, rx85_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx85_cur
    length rx85_eos, rx85_tgt
    set rx85_off, 0
    lt $I10, 2, rx85_start
    sub rx85_off, $I10, 1
    substr rx85_tgt, rx85_tgt, rx85_off
  rx85_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_86_fail
    rx85_cur."!mark_push"(0, rx85_pos, $I10)
  # rx literal  "+"
    add $I11, rx85_pos, 1
    gt $I11, rx85_eos, rx85_fail
    sub $I11, rx85_pos, rx85_off
    substr $S10, rx85_tgt, $I11, 1
    ne $S10, "+", rx85_fail
    add rx85_pos, 1
    set_addr $I10, rxcap_86_fail
    ($I12, $I11) = rx85_cur."!mark_peek"($I10)
    rx85_cur."!cursor_pos"($I11)
    ($P10) = rx85_cur."!cursor_start"()
    $P10."!cursor_pass"(rx85_pos, "")
    rx85_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_86_done
  rxcap_86_fail:
    goto rx85_fail
  rxcap_86_done:
  # rx subrule "backmod" subtype=capture negate=
    rx85_cur."!cursor_pos"(rx85_pos)
    $P10 = rx85_cur."backmod"()
    unless $P10, rx85_fail
    rx85_pos = $P10."pos"()
    rx85_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
  # rx pass
    rx85_cur."!cursor_pass"(rx85_pos, "quantifier:sym<+>")
    .return (rx85_cur)
  rx85_fail:
    (rx85_rep, rx85_pos, $I10, $P10) = rx85_cur."!mark_fail"(0)
    lt rx85_pos, -1, rx85_done
    eq rx85_pos, -1, rx85_fail
    jump $I10
  rx85_done:
    rx85_cur."!cursor_fail"()
    .return (rx85_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("26_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 57
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    (rx88_cur, rx88_pos, rx88_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx88_cur
    length rx88_eos, rx88_tgt
    set rx88_off, 0
    lt $I10, 2, rx88_start
    sub rx88_off, $I10, 1
    substr rx88_tgt, rx88_tgt, rx88_off
  rx88_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_89_fail
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx literal  "?"
    add $I11, rx88_pos, 1
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    substr $S10, rx88_tgt, $I11, 1
    ne $S10, "?", rx88_fail
    add rx88_pos, 1
    set_addr $I10, rxcap_89_fail
    ($I12, $I11) = rx88_cur."!mark_peek"($I10)
    rx88_cur."!cursor_pos"($I11)
    ($P10) = rx88_cur."!cursor_start"()
    $P10."!cursor_pass"(rx88_pos, "")
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_89_done
  rxcap_89_fail:
    goto rx88_fail
  rxcap_89_done:
  # rx subrule "backmod" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."backmod"()
    unless $P10, rx88_fail
    rx88_pos = $P10."pos"()
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "quantifier:sym<?>")
    .return (rx88_cur)
  rx88_fail:
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    .return (rx88_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("27_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 58
    .local string rx91_tgt
    .local int rx91_pos
    .local int rx91_off
    .local int rx91_eos
    .local int rx91_rep
    .local pmc rx91_cur
    (rx91_cur, rx91_pos, rx91_tgt, $I10) = self."!cursor_start"()
    rx91_cur."!cursor_caparray"("max")
    .lex unicode:"$\x{a2}", rx91_cur
    length rx91_eos, rx91_tgt
    set rx91_off, 0
    lt $I10, 2, rx91_start
    sub rx91_off, $I10, 1
    substr rx91_tgt, rx91_tgt, rx91_off
  rx91_start:
.annotate "line", 59
  # rx subcapture "sym"
    set_addr $I10, rxcap_92_fail
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
  # rx literal  "**"
    add $I11, rx91_pos, 2
    gt $I11, rx91_eos, rx91_fail
    sub $I11, rx91_pos, rx91_off
    substr $S10, rx91_tgt, $I11, 2
    ne $S10, "**", rx91_fail
    add rx91_pos, 2
    set_addr $I10, rxcap_92_fail
    ($I12, $I11) = rx91_cur."!mark_peek"($I10)
    rx91_cur."!cursor_pos"($I11)
    ($P10) = rx91_cur."!cursor_start"()
    $P10."!cursor_pass"(rx91_pos, "")
    rx91_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_92_done
  rxcap_92_fail:
    goto rx91_fail
  rxcap_92_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx91_pos, rx91_off
    find_not_cclass $I11, 32, rx91_tgt, $I10, rx91_eos
    add rx91_pos, rx91_off, $I11
  # rx subrule "backmod" subtype=capture negate=
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."backmod"()
    unless $P10, rx91_fail
    rx91_pos = $P10."pos"()
    rx91_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
  # rx charclass_q s r 0..-1
    sub $I10, rx91_pos, rx91_off
    find_not_cclass $I11, 32, rx91_tgt, $I10, rx91_eos
    add rx91_pos, rx91_off, $I11
  alt93_0:
.annotate "line", 60
    set_addr $I10, alt93_1
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
.annotate "line", 61
  # rx subcapture "min"
    set_addr $I10, rxcap_94_fail
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx91_pos, rx91_off
    find_not_cclass $I11, 8, rx91_tgt, $I10, rx91_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx91_fail
    add rx91_pos, rx91_off, $I11
    set_addr $I10, rxcap_94_fail
    ($I12, $I11) = rx91_cur."!mark_peek"($I10)
    rx91_cur."!cursor_pos"($I11)
    ($P10) = rx91_cur."!cursor_start"()
    $P10."!cursor_pass"(rx91_pos, "")
    rx91_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_94_done
  rxcap_94_fail:
    goto rx91_fail
  rxcap_94_done:
  # rx rxquantr95 ** 0..1
    set_addr $I98, rxquantr95_done
    rx91_cur."!mark_push"(0, rx91_pos, $I98)
  rxquantr95_loop:
  # rx literal  ".."
    add $I11, rx91_pos, 2
    gt $I11, rx91_eos, rx91_fail
    sub $I11, rx91_pos, rx91_off
    substr $S10, rx91_tgt, $I11, 2
    ne $S10, "..", rx91_fail
    add rx91_pos, 2
  # rx subcapture "max"
    set_addr $I10, rxcap_97_fail
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
  alt96_0:
    set_addr $I10, alt96_1
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx91_pos, rx91_off
    find_not_cclass $I11, 8, rx91_tgt, $I10, rx91_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx91_fail
    add rx91_pos, rx91_off, $I11
    goto alt96_end
  alt96_1:
  # rx literal  "*"
    add $I11, rx91_pos, 1
    gt $I11, rx91_eos, rx91_fail
    sub $I11, rx91_pos, rx91_off
    substr $S10, rx91_tgt, $I11, 1
    ne $S10, "*", rx91_fail
    add rx91_pos, 1
  alt96_end:
    set_addr $I10, rxcap_97_fail
    ($I12, $I11) = rx91_cur."!mark_peek"($I10)
    rx91_cur."!cursor_pos"($I11)
    ($P10) = rx91_cur."!cursor_start"()
    $P10."!cursor_pass"(rx91_pos, "")
    rx91_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_97_done
  rxcap_97_fail:
    goto rx91_fail
  rxcap_97_done:
    (rx91_rep) = rx91_cur."!mark_commit"($I98)
  rxquantr95_done:
    goto alt93_end
  alt93_1:
.annotate "line", 62
  # rx subrule "quantified_atom" subtype=capture negate=
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."quantified_atom"()
    unless $P10, rx91_fail
    rx91_pos = $P10."pos"()
    rx91_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
  alt93_end:
.annotate "line", 58
  # rx pass
    rx91_cur."!cursor_pass"(rx91_pos, "quantifier:sym<**>")
    .return (rx91_cur)
  rx91_fail:
    (rx91_rep, rx91_pos, $I10, $P10) = rx91_cur."!mark_fail"(0)
    lt rx91_pos, -1, rx91_done
    eq rx91_pos, -1, rx91_fail
    jump $I10
  rx91_done:
    rx91_cur."!cursor_fail"()
    .return (rx91_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("28_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 67
    .const 'Sub' $P105 = "29_1255814464.54656" 
    capture_lex $P105
    .local string rx100_tgt
    .local int rx100_pos
    .local int rx100_off
    .local int rx100_eos
    .local int rx100_rep
    .local pmc rx100_cur
    (rx100_cur, rx100_pos, rx100_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx100_cur
    length rx100_eos, rx100_tgt
    set rx100_off, 0
    lt $I10, 2, rx100_start
    sub rx100_off, $I10, 1
    substr rx100_tgt, rx100_tgt, rx100_off
  rx100_start:
  # rx rxquantr101 ** 0..1
    set_addr $I102, rxquantr101_done
    rx100_cur."!mark_push"(0, rx100_pos, $I102)
  rxquantr101_loop:
  # rx literal  ":"
    add $I11, rx100_pos, 1
    gt $I11, rx100_eos, rx100_fail
    sub $I11, rx100_pos, rx100_off
    substr $S10, rx100_tgt, $I11, 1
    ne $S10, ":", rx100_fail
    add rx100_pos, 1
    (rx100_rep) = rx100_cur."!mark_commit"($I102)
  rxquantr101_done:
  alt103_0:
    set_addr $I10, alt103_1
    rx100_cur."!mark_push"(0, rx100_pos, $I10)
  # rx literal  "?"
    add $I11, rx100_pos, 1
    gt $I11, rx100_eos, rx100_fail
    sub $I11, rx100_pos, rx100_off
    substr $S10, rx100_tgt, $I11, 1
    ne $S10, "?", rx100_fail
    add rx100_pos, 1
    goto alt103_end
  alt103_1:
    set_addr $I10, alt103_2
    rx100_cur."!mark_push"(0, rx100_pos, $I10)
  # rx literal  "!"
    add $I11, rx100_pos, 1
    gt $I11, rx100_eos, rx100_fail
    sub $I11, rx100_pos, rx100_off
    substr $S10, rx100_tgt, $I11, 1
    ne $S10, "!", rx100_fail
    add rx100_pos, 1
    goto alt103_end
  alt103_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx100_cur."!cursor_pos"(rx100_pos)
    .const 'Sub' $P105 = "29_1255814464.54656" 
    capture_lex $P105
    $P10 = rx100_cur."before"($P105)
    if $P10, rx100_fail
  alt103_end:
  # rx pass
    rx100_cur."!cursor_pass"(rx100_pos, "backmod")
    .return (rx100_cur)
  rx100_fail:
    (rx100_rep, rx100_pos, $I10, $P10) = rx100_cur."!mark_fail"(0)
    lt rx100_pos, -1, rx100_done
    eq rx100_pos, -1, rx100_fail
    jump $I10
  rx100_done:
    rx100_cur."!cursor_fail"()
    .return (rx100_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block104"  :anon :subid("29_1255814464.54656") :method :outer("28_1255814464.54656")
.annotate "line", 67
    .local string rx106_tgt
    .local int rx106_pos
    .local int rx106_off
    .local int rx106_eos
    .local int rx106_rep
    .local pmc rx106_cur
    (rx106_cur, rx106_pos, rx106_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx106_cur
    length rx106_eos, rx106_tgt
    set rx106_off, 0
    lt $I10, 2, rx106_start
    sub rx106_off, $I10, 1
    substr rx106_tgt, rx106_tgt, rx106_off
  rx106_start:
    ge rx106_pos, 0, rxscan107_done
  rxscan107_loop:
    ($P10) = rx106_cur."from"()
    inc $P10
    set rx106_pos, $P10
    ge rx106_pos, rx106_eos, rxscan107_done
    set_addr $I10, rxscan107_loop
    rx106_cur."!mark_push"(0, rx106_pos, $I10)
  rxscan107_done:
  # rx literal  ":"
    add $I11, rx106_pos, 1
    gt $I11, rx106_eos, rx106_fail
    sub $I11, rx106_pos, rx106_off
    substr $S10, rx106_tgt, $I11, 1
    ne $S10, ":", rx106_fail
    add rx106_pos, 1
  # rx pass
    rx106_cur."!cursor_pass"(rx106_pos, "")
    .return (rx106_cur)
  rx106_fail:
    (rx106_rep, rx106_pos, $I10, $P10) = rx106_cur."!mark_fail"(0)
    lt rx106_pos, -1, rx106_done
    eq rx106_pos, -1, rx106_fail
    jump $I10
  rx106_done:
    rx106_cur."!cursor_fail"()
    .return (rx106_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("30_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 70
    .local string rx109_tgt
    .local int rx109_pos
    .local int rx109_off
    .local int rx109_eos
    .local int rx109_rep
    .local pmc rx109_cur
    (rx109_cur, rx109_pos, rx109_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx109_cur
    length rx109_eos, rx109_tgt
    set rx109_off, 0
    lt $I10, 2, rx109_start
    sub rx109_off, $I10, 1
    substr rx109_tgt, rx109_tgt, rx109_off
  rx109_start:
  # rx subrule "normspace" subtype=method negate=
    rx109_cur."!cursor_pos"(rx109_pos)
    $P10 = rx109_cur."normspace"()
    unless $P10, rx109_fail
    rx109_pos = $P10."pos"()
    rx109_cur."!mark_push"(0, -1, 0, $P10)
  # rx pass
    rx109_cur."!cursor_pass"(rx109_pos, "metachar:sym<ws>")
    .return (rx109_cur)
  rx109_fail:
    (rx109_rep, rx109_pos, $I10, $P10) = rx109_cur."!mark_fail"(0)
    lt rx109_pos, -1, rx109_done
    eq rx109_pos, -1, rx109_fail
    jump $I10
  rx109_done:
    rx109_cur."!cursor_fail"()
    .return (rx109_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("31_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 71
    .local string rx111_tgt
    .local int rx111_pos
    .local int rx111_off
    .local int rx111_eos
    .local int rx111_rep
    .local pmc rx111_cur
    (rx111_cur, rx111_pos, rx111_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx111_cur
    length rx111_eos, rx111_tgt
    set rx111_off, 0
    lt $I10, 2, rx111_start
    sub rx111_off, $I10, 1
    substr rx111_tgt, rx111_tgt, rx111_off
  rx111_start:
  # rx literal  "["
    add $I11, rx111_pos, 1
    gt $I11, rx111_eos, rx111_fail
    sub $I11, rx111_pos, rx111_off
    substr $S10, rx111_tgt, $I11, 1
    ne $S10, "[", rx111_fail
    add rx111_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx111_cur."!cursor_pos"(rx111_pos)
    $P10 = rx111_cur."nibbler"()
    unless $P10, rx111_fail
    rx111_pos = $P10."pos"()
    rx111_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
  # rx literal  "]"
    add $I11, rx111_pos, 1
    gt $I11, rx111_eos, rx111_fail
    sub $I11, rx111_pos, rx111_off
    substr $S10, rx111_tgt, $I11, 1
    ne $S10, "]", rx111_fail
    add rx111_pos, 1
  # rx pass
    rx111_cur."!cursor_pass"(rx111_pos, "metachar:sym<[ ]>")
    .return (rx111_cur)
  rx111_fail:
    (rx111_rep, rx111_pos, $I10, $P10) = rx111_cur."!mark_fail"(0)
    lt rx111_pos, -1, rx111_done
    eq rx111_pos, -1, rx111_fail
    jump $I10
  rx111_done:
    rx111_cur."!cursor_fail"()
    .return (rx111_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("32_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 72
    .local string rx113_tgt
    .local int rx113_pos
    .local int rx113_off
    .local int rx113_eos
    .local int rx113_rep
    .local pmc rx113_cur
    (rx113_cur, rx113_pos, rx113_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx113_cur
    length rx113_eos, rx113_tgt
    set rx113_off, 0
    lt $I10, 2, rx113_start
    sub rx113_off, $I10, 1
    substr rx113_tgt, rx113_tgt, rx113_off
  rx113_start:
  # rx literal  "("
    add $I11, rx113_pos, 1
    gt $I11, rx113_eos, rx113_fail
    sub $I11, rx113_pos, rx113_off
    substr $S10, rx113_tgt, $I11, 1
    ne $S10, "(", rx113_fail
    add rx113_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."nibbler"()
    unless $P10, rx113_fail
    rx113_pos = $P10."pos"()
    rx113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
  # rx literal  ")"
    add $I11, rx113_pos, 1
    gt $I11, rx113_eos, rx113_fail
    sub $I11, rx113_pos, rx113_off
    substr $S10, rx113_tgt, $I11, 1
    ne $S10, ")", rx113_fail
    add rx113_pos, 1
  # rx pass
    rx113_cur."!cursor_pass"(rx113_pos, "metachar:sym<( )>")
    .return (rx113_cur)
  rx113_fail:
    (rx113_rep, rx113_pos, $I10, $P10) = rx113_cur."!mark_fail"(0)
    lt rx113_pos, -1, rx113_done
    eq rx113_pos, -1, rx113_fail
    jump $I10
  rx113_done:
    rx113_cur."!cursor_fail"()
    .return (rx113_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("33_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 73
    .local string rx115_tgt
    .local int rx115_pos
    .local int rx115_off
    .local int rx115_eos
    .local int rx115_rep
    .local pmc rx115_cur
    (rx115_cur, rx115_pos, rx115_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx115_cur
    length rx115_eos, rx115_tgt
    set rx115_off, 0
    lt $I10, 2, rx115_start
    sub rx115_off, $I10, 1
    substr rx115_tgt, rx115_tgt, rx115_off
  rx115_start:
  # rx subrule "quote" subtype=capture negate=
    rx115_cur."!cursor_pos"(rx115_pos)
    $P10 = rx115_cur."quote"()
    unless $P10, rx115_fail
    rx115_pos = $P10."pos"()
    rx115_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
  # rx pass
    rx115_cur."!cursor_pass"(rx115_pos, "metachar:sym<'>")
    .return (rx115_cur)
  rx115_fail:
    (rx115_rep, rx115_pos, $I10, $P10) = rx115_cur."!mark_fail"(0)
    lt rx115_pos, -1, rx115_done
    eq rx115_pos, -1, rx115_fail
    jump $I10
  rx115_done:
    rx115_cur."!cursor_fail"()
    .return (rx115_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("34_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 74
    .local string rx117_tgt
    .local int rx117_pos
    .local int rx117_off
    .local int rx117_eos
    .local int rx117_rep
    .local pmc rx117_cur
    (rx117_cur, rx117_pos, rx117_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx117_cur
    length rx117_eos, rx117_tgt
    set rx117_off, 0
    lt $I10, 2, rx117_start
    sub rx117_off, $I10, 1
    substr rx117_tgt, rx117_tgt, rx117_off
  rx117_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_118_fail
    rx117_cur."!mark_push"(0, rx117_pos, $I10)
  # rx literal  "."
    add $I11, rx117_pos, 1
    gt $I11, rx117_eos, rx117_fail
    sub $I11, rx117_pos, rx117_off
    substr $S10, rx117_tgt, $I11, 1
    ne $S10, ".", rx117_fail
    add rx117_pos, 1
    set_addr $I10, rxcap_118_fail
    ($I12, $I11) = rx117_cur."!mark_peek"($I10)
    rx117_cur."!cursor_pos"($I11)
    ($P10) = rx117_cur."!cursor_start"()
    $P10."!cursor_pass"(rx117_pos, "")
    rx117_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_118_done
  rxcap_118_fail:
    goto rx117_fail
  rxcap_118_done:
  # rx pass
    rx117_cur."!cursor_pass"(rx117_pos, "metachar:sym<.>")
    .return (rx117_cur)
  rx117_fail:
    (rx117_rep, rx117_pos, $I10, $P10) = rx117_cur."!mark_fail"(0)
    lt rx117_pos, -1, rx117_done
    eq rx117_pos, -1, rx117_fail
    jump $I10
  rx117_done:
    rx117_cur."!cursor_fail"()
    .return (rx117_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("35_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 75
    .local string rx120_tgt
    .local int rx120_pos
    .local int rx120_off
    .local int rx120_eos
    .local int rx120_rep
    .local pmc rx120_cur
    (rx120_cur, rx120_pos, rx120_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx120_cur
    length rx120_eos, rx120_tgt
    set rx120_off, 0
    lt $I10, 2, rx120_start
    sub rx120_off, $I10, 1
    substr rx120_tgt, rx120_tgt, rx120_off
  rx120_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_121_fail
    rx120_cur."!mark_push"(0, rx120_pos, $I10)
  # rx literal  "^"
    add $I11, rx120_pos, 1
    gt $I11, rx120_eos, rx120_fail
    sub $I11, rx120_pos, rx120_off
    substr $S10, rx120_tgt, $I11, 1
    ne $S10, "^", rx120_fail
    add rx120_pos, 1
    set_addr $I10, rxcap_121_fail
    ($I12, $I11) = rx120_cur."!mark_peek"($I10)
    rx120_cur."!cursor_pos"($I11)
    ($P10) = rx120_cur."!cursor_start"()
    $P10."!cursor_pass"(rx120_pos, "")
    rx120_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_121_done
  rxcap_121_fail:
    goto rx120_fail
  rxcap_121_done:
  # rx pass
    rx120_cur."!cursor_pass"(rx120_pos, "metachar:sym<^>")
    .return (rx120_cur)
  rx120_fail:
    (rx120_rep, rx120_pos, $I10, $P10) = rx120_cur."!mark_fail"(0)
    lt rx120_pos, -1, rx120_done
    eq rx120_pos, -1, rx120_fail
    jump $I10
  rx120_done:
    rx120_cur."!cursor_fail"()
    .return (rx120_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("36_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 76
    .local string rx123_tgt
    .local int rx123_pos
    .local int rx123_off
    .local int rx123_eos
    .local int rx123_rep
    .local pmc rx123_cur
    (rx123_cur, rx123_pos, rx123_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx123_cur
    length rx123_eos, rx123_tgt
    set rx123_off, 0
    lt $I10, 2, rx123_start
    sub rx123_off, $I10, 1
    substr rx123_tgt, rx123_tgt, rx123_off
  rx123_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_124_fail
    rx123_cur."!mark_push"(0, rx123_pos, $I10)
  # rx literal  "^^"
    add $I11, rx123_pos, 2
    gt $I11, rx123_eos, rx123_fail
    sub $I11, rx123_pos, rx123_off
    substr $S10, rx123_tgt, $I11, 2
    ne $S10, "^^", rx123_fail
    add rx123_pos, 2
    set_addr $I10, rxcap_124_fail
    ($I12, $I11) = rx123_cur."!mark_peek"($I10)
    rx123_cur."!cursor_pos"($I11)
    ($P10) = rx123_cur."!cursor_start"()
    $P10."!cursor_pass"(rx123_pos, "")
    rx123_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_124_done
  rxcap_124_fail:
    goto rx123_fail
  rxcap_124_done:
  # rx pass
    rx123_cur."!cursor_pass"(rx123_pos, "metachar:sym<^^>")
    .return (rx123_cur)
  rx123_fail:
    (rx123_rep, rx123_pos, $I10, $P10) = rx123_cur."!mark_fail"(0)
    lt rx123_pos, -1, rx123_done
    eq rx123_pos, -1, rx123_fail
    jump $I10
  rx123_done:
    rx123_cur."!cursor_fail"()
    .return (rx123_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("37_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 77
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    (rx126_cur, rx126_pos, rx126_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx126_cur
    length rx126_eos, rx126_tgt
    set rx126_off, 0
    lt $I10, 2, rx126_start
    sub rx126_off, $I10, 1
    substr rx126_tgt, rx126_tgt, rx126_off
  rx126_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_127_fail
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  # rx literal  "$"
    add $I11, rx126_pos, 1
    gt $I11, rx126_eos, rx126_fail
    sub $I11, rx126_pos, rx126_off
    substr $S10, rx126_tgt, $I11, 1
    ne $S10, "$", rx126_fail
    add rx126_pos, 1
    set_addr $I10, rxcap_127_fail
    ($I12, $I11) = rx126_cur."!mark_peek"($I10)
    rx126_cur."!cursor_pos"($I11)
    ($P10) = rx126_cur."!cursor_start"()
    $P10."!cursor_pass"(rx126_pos, "")
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_127_done
  rxcap_127_fail:
    goto rx126_fail
  rxcap_127_done:
  # rx pass
    rx126_cur."!cursor_pass"(rx126_pos, "metachar:sym<$>")
    .return (rx126_cur)
  rx126_fail:
    (rx126_rep, rx126_pos, $I10, $P10) = rx126_cur."!mark_fail"(0)
    lt rx126_pos, -1, rx126_done
    eq rx126_pos, -1, rx126_fail
    jump $I10
  rx126_done:
    rx126_cur."!cursor_fail"()
    .return (rx126_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("38_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 78
    .local string rx129_tgt
    .local int rx129_pos
    .local int rx129_off
    .local int rx129_eos
    .local int rx129_rep
    .local pmc rx129_cur
    (rx129_cur, rx129_pos, rx129_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx129_cur
    length rx129_eos, rx129_tgt
    set rx129_off, 0
    lt $I10, 2, rx129_start
    sub rx129_off, $I10, 1
    substr rx129_tgt, rx129_tgt, rx129_off
  rx129_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_130_fail
    rx129_cur."!mark_push"(0, rx129_pos, $I10)
  # rx literal  "$$"
    add $I11, rx129_pos, 2
    gt $I11, rx129_eos, rx129_fail
    sub $I11, rx129_pos, rx129_off
    substr $S10, rx129_tgt, $I11, 2
    ne $S10, "$$", rx129_fail
    add rx129_pos, 2
    set_addr $I10, rxcap_130_fail
    ($I12, $I11) = rx129_cur."!mark_peek"($I10)
    rx129_cur."!cursor_pos"($I11)
    ($P10) = rx129_cur."!cursor_start"()
    $P10."!cursor_pass"(rx129_pos, "")
    rx129_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_130_done
  rxcap_130_fail:
    goto rx129_fail
  rxcap_130_done:
  # rx pass
    rx129_cur."!cursor_pass"(rx129_pos, "metachar:sym<$$>")
    .return (rx129_cur)
  rx129_fail:
    (rx129_rep, rx129_pos, $I10, $P10) = rx129_cur."!mark_fail"(0)
    lt rx129_pos, -1, rx129_done
    eq rx129_pos, -1, rx129_fail
    jump $I10
  rx129_done:
    rx129_cur."!cursor_fail"()
    .return (rx129_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("39_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 79
    .local string rx132_tgt
    .local int rx132_pos
    .local int rx132_off
    .local int rx132_eos
    .local int rx132_rep
    .local pmc rx132_cur
    (rx132_cur, rx132_pos, rx132_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx132_cur
    length rx132_eos, rx132_tgt
    set rx132_off, 0
    lt $I10, 2, rx132_start
    sub rx132_off, $I10, 1
    substr rx132_tgt, rx132_tgt, rx132_off
  rx132_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_133_fail
    rx132_cur."!mark_push"(0, rx132_pos, $I10)
  # rx literal  ":::"
    add $I11, rx132_pos, 3
    gt $I11, rx132_eos, rx132_fail
    sub $I11, rx132_pos, rx132_off
    substr $S10, rx132_tgt, $I11, 3
    ne $S10, ":::", rx132_fail
    add rx132_pos, 3
    set_addr $I10, rxcap_133_fail
    ($I12, $I11) = rx132_cur."!mark_peek"($I10)
    rx132_cur."!cursor_pos"($I11)
    ($P10) = rx132_cur."!cursor_start"()
    $P10."!cursor_pass"(rx132_pos, "")
    rx132_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_133_done
  rxcap_133_fail:
    goto rx132_fail
  rxcap_133_done:
  # rx pass
    rx132_cur."!cursor_pass"(rx132_pos, "metachar:sym<:::>")
    .return (rx132_cur)
  rx132_fail:
    (rx132_rep, rx132_pos, $I10, $P10) = rx132_cur."!mark_fail"(0)
    lt rx132_pos, -1, rx132_done
    eq rx132_pos, -1, rx132_fail
    jump $I10
  rx132_done:
    rx132_cur."!cursor_fail"()
    .return (rx132_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("40_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 80
    .local string rx135_tgt
    .local int rx135_pos
    .local int rx135_off
    .local int rx135_eos
    .local int rx135_rep
    .local pmc rx135_cur
    (rx135_cur, rx135_pos, rx135_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx135_cur
    length rx135_eos, rx135_tgt
    set rx135_off, 0
    lt $I10, 2, rx135_start
    sub rx135_off, $I10, 1
    substr rx135_tgt, rx135_tgt, rx135_off
  rx135_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_136_fail
    rx135_cur."!mark_push"(0, rx135_pos, $I10)
  # rx literal  "::"
    add $I11, rx135_pos, 2
    gt $I11, rx135_eos, rx135_fail
    sub $I11, rx135_pos, rx135_off
    substr $S10, rx135_tgt, $I11, 2
    ne $S10, "::", rx135_fail
    add rx135_pos, 2
    set_addr $I10, rxcap_136_fail
    ($I12, $I11) = rx135_cur."!mark_peek"($I10)
    rx135_cur."!cursor_pos"($I11)
    ($P10) = rx135_cur."!cursor_start"()
    $P10."!cursor_pass"(rx135_pos, "")
    rx135_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_136_done
  rxcap_136_fail:
    goto rx135_fail
  rxcap_136_done:
  # rx pass
    rx135_cur."!cursor_pass"(rx135_pos, "metachar:sym<::>")
    .return (rx135_cur)
  rx135_fail:
    (rx135_rep, rx135_pos, $I10, $P10) = rx135_cur."!mark_fail"(0)
    lt rx135_pos, -1, rx135_done
    eq rx135_pos, -1, rx135_fail
    jump $I10
  rx135_done:
    rx135_cur."!cursor_fail"()
    .return (rx135_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("41_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 81
    .local string rx138_tgt
    .local int rx138_pos
    .local int rx138_off
    .local int rx138_eos
    .local int rx138_rep
    .local pmc rx138_cur
    (rx138_cur, rx138_pos, rx138_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx138_cur
    length rx138_eos, rx138_tgt
    set rx138_off, 0
    lt $I10, 2, rx138_start
    sub rx138_off, $I10, 1
    substr rx138_tgt, rx138_tgt, rx138_off
  rx138_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_140_fail
    rx138_cur."!mark_push"(0, rx138_pos, $I10)
  alt139_0:
    set_addr $I10, alt139_1
    rx138_cur."!mark_push"(0, rx138_pos, $I10)
  # rx literal  "<<"
    add $I11, rx138_pos, 2
    gt $I11, rx138_eos, rx138_fail
    sub $I11, rx138_pos, rx138_off
    substr $S10, rx138_tgt, $I11, 2
    ne $S10, "<<", rx138_fail
    add rx138_pos, 2
    goto alt139_end
  alt139_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx138_pos, 1
    gt $I11, rx138_eos, rx138_fail
    sub $I11, rx138_pos, rx138_off
    substr $S10, rx138_tgt, $I11, 1
    ne $S10, unicode:"\x{ab}", rx138_fail
    add rx138_pos, 1
  alt139_end:
    set_addr $I10, rxcap_140_fail
    ($I12, $I11) = rx138_cur."!mark_peek"($I10)
    rx138_cur."!cursor_pos"($I11)
    ($P10) = rx138_cur."!cursor_start"()
    $P10."!cursor_pass"(rx138_pos, "")
    rx138_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_140_done
  rxcap_140_fail:
    goto rx138_fail
  rxcap_140_done:
  # rx pass
    rx138_cur."!cursor_pass"(rx138_pos, "metachar:sym<lwb>")
    .return (rx138_cur)
  rx138_fail:
    (rx138_rep, rx138_pos, $I10, $P10) = rx138_cur."!mark_fail"(0)
    lt rx138_pos, -1, rx138_done
    eq rx138_pos, -1, rx138_fail
    jump $I10
  rx138_done:
    rx138_cur."!cursor_fail"()
    .return (rx138_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("42_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 82
    .local string rx142_tgt
    .local int rx142_pos
    .local int rx142_off
    .local int rx142_eos
    .local int rx142_rep
    .local pmc rx142_cur
    (rx142_cur, rx142_pos, rx142_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx142_cur
    length rx142_eos, rx142_tgt
    set rx142_off, 0
    lt $I10, 2, rx142_start
    sub rx142_off, $I10, 1
    substr rx142_tgt, rx142_tgt, rx142_off
  rx142_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_144_fail
    rx142_cur."!mark_push"(0, rx142_pos, $I10)
  alt143_0:
    set_addr $I10, alt143_1
    rx142_cur."!mark_push"(0, rx142_pos, $I10)
  # rx literal  ">>"
    add $I11, rx142_pos, 2
    gt $I11, rx142_eos, rx142_fail
    sub $I11, rx142_pos, rx142_off
    substr $S10, rx142_tgt, $I11, 2
    ne $S10, ">>", rx142_fail
    add rx142_pos, 2
    goto alt143_end
  alt143_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx142_pos, 1
    gt $I11, rx142_eos, rx142_fail
    sub $I11, rx142_pos, rx142_off
    substr $S10, rx142_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx142_fail
    add rx142_pos, 1
  alt143_end:
    set_addr $I10, rxcap_144_fail
    ($I12, $I11) = rx142_cur."!mark_peek"($I10)
    rx142_cur."!cursor_pos"($I11)
    ($P10) = rx142_cur."!cursor_start"()
    $P10."!cursor_pass"(rx142_pos, "")
    rx142_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_144_done
  rxcap_144_fail:
    goto rx142_fail
  rxcap_144_done:
  # rx pass
    rx142_cur."!cursor_pass"(rx142_pos, "metachar:sym<rwb>")
    .return (rx142_cur)
  rx142_fail:
    (rx142_rep, rx142_pos, $I10, $P10) = rx142_cur."!mark_fail"(0)
    lt rx142_pos, -1, rx142_done
    eq rx142_pos, -1, rx142_fail
    jump $I10
  rx142_done:
    rx142_cur."!cursor_fail"()
    .return (rx142_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("43_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 83
    .local string rx146_tgt
    .local int rx146_pos
    .local int rx146_off
    .local int rx146_eos
    .local int rx146_rep
    .local pmc rx146_cur
    (rx146_cur, rx146_pos, rx146_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx146_cur
    length rx146_eos, rx146_tgt
    set rx146_off, 0
    lt $I10, 2, rx146_start
    sub rx146_off, $I10, 1
    substr rx146_tgt, rx146_tgt, rx146_off
  rx146_start:
  # rx literal  "\\"
    add $I11, rx146_pos, 1
    gt $I11, rx146_eos, rx146_fail
    sub $I11, rx146_pos, rx146_off
    substr $S10, rx146_tgt, $I11, 1
    ne $S10, "\\", rx146_fail
    add rx146_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."backslash"()
    unless $P10, rx146_fail
    rx146_pos = $P10."pos"()
    rx146_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
  # rx pass
    rx146_cur."!cursor_pass"(rx146_pos, "metachar:sym<bs>")
    .return (rx146_cur)
  rx146_fail:
    (rx146_rep, rx146_pos, $I10, $P10) = rx146_cur."!mark_fail"(0)
    lt rx146_pos, -1, rx146_done
    eq rx146_pos, -1, rx146_fail
    jump $I10
  rx146_done:
    rx146_cur."!cursor_fail"()
    .return (rx146_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("44_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 84
    .local string rx148_tgt
    .local int rx148_pos
    .local int rx148_off
    .local int rx148_eos
    .local int rx148_rep
    .local pmc rx148_cur
    (rx148_cur, rx148_pos, rx148_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx148_cur
    length rx148_eos, rx148_tgt
    set rx148_off, 0
    lt $I10, 2, rx148_start
    sub rx148_off, $I10, 1
    substr rx148_tgt, rx148_tgt, rx148_off
  rx148_start:
  # rx subrule "mod_internal" subtype=capture negate=
    rx148_cur."!cursor_pos"(rx148_pos)
    $P10 = rx148_cur."mod_internal"()
    unless $P10, rx148_fail
    rx148_pos = $P10."pos"()
    rx148_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
  # rx pass
    rx148_cur."!cursor_pass"(rx148_pos, "metachar:sym<mod>")
    .return (rx148_cur)
  rx148_fail:
    (rx148_rep, rx148_pos, $I10, $P10) = rx148_cur."!mark_fail"(0)
    lt rx148_pos, -1, rx148_done
    eq rx148_pos, -1, rx148_fail
    jump $I10
  rx148_done:
    rx148_cur."!cursor_fail"()
    .return (rx148_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("45_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 86
    .local string rx150_tgt
    .local int rx150_pos
    .local int rx150_off
    .local int rx150_eos
    .local int rx150_rep
    .local pmc rx150_cur
    (rx150_cur, rx150_pos, rx150_tgt, $I10) = self."!cursor_start"()
    rx150_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx150_cur
    length rx150_eos, rx150_tgt
    set rx150_off, 0
    lt $I10, 2, rx150_start
    sub rx150_off, $I10, 1
    substr rx150_tgt, rx150_tgt, rx150_off
  rx150_start:
.annotate "line", 87
  # rx subcapture "sym"
    set_addr $I10, rxcap_151_fail
    rx150_cur."!mark_push"(0, rx150_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx150_pos, 3
    gt $I11, rx150_eos, rx150_fail
    sub $I11, rx150_pos, rx150_off
    substr $S10, rx150_tgt, $I11, 3
    ne $S10, "{*}", rx150_fail
    add rx150_pos, 3
    set_addr $I10, rxcap_151_fail
    ($I12, $I11) = rx150_cur."!mark_peek"($I10)
    rx150_cur."!cursor_pos"($I11)
    ($P10) = rx150_cur."!cursor_start"()
    $P10."!cursor_pass"(rx150_pos, "")
    rx150_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_151_done
  rxcap_151_fail:
    goto rx150_fail
  rxcap_151_done:
.annotate "line", 88
  # rx rxquantr152 ** 0..1
    set_addr $I162, rxquantr152_done
    rx150_cur."!mark_push"(0, rx150_pos, $I162)
  rxquantr152_loop:
  # rx rxquantr153 ** 0..*
    set_addr $I154, rxquantr153_done
    rx150_cur."!mark_push"(0, rx150_pos, $I154)
  rxquantr153_loop:
  # rx enumcharlist negate=0 
    ge rx150_pos, rx150_eos, rx150_fail
    sub $I10, rx150_pos, rx150_off
    substr $S10, rx150_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx150_fail
    inc rx150_pos
    (rx150_rep) = rx150_cur."!mark_commit"($I154)
    rx150_cur."!mark_push"(rx150_rep, rx150_pos, $I154)
    goto rxquantr153_loop
  rxquantr153_done:
  # rx literal  "#= "
    add $I11, rx150_pos, 3
    gt $I11, rx150_eos, rx150_fail
    sub $I11, rx150_pos, rx150_off
    substr $S10, rx150_tgt, $I11, 3
    ne $S10, "#= ", rx150_fail
    add rx150_pos, 3
  # rx rxquantr155 ** 0..*
    set_addr $I156, rxquantr155_done
    rx150_cur."!mark_push"(0, rx150_pos, $I156)
  rxquantr155_loop:
  # rx enumcharlist negate=0 
    ge rx150_pos, rx150_eos, rx150_fail
    sub $I10, rx150_pos, rx150_off
    substr $S10, rx150_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx150_fail
    inc rx150_pos
    (rx150_rep) = rx150_cur."!mark_commit"($I156)
    rx150_cur."!mark_push"(rx150_rep, rx150_pos, $I156)
    goto rxquantr155_loop
  rxquantr155_done:
  # rx subcapture "key"
    set_addr $I10, rxcap_161_fail
    rx150_cur."!mark_push"(0, rx150_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx150_pos, rx150_off
    find_cclass $I11, 32, rx150_tgt, $I10, rx150_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx150_fail
    add rx150_pos, rx150_off, $I11
  # rx rxquantr157 ** 0..*
    set_addr $I160, rxquantr157_done
    rx150_cur."!mark_push"(0, rx150_pos, $I160)
  rxquantr157_loop:
  # rx rxquantr158 ** 1..*
    set_addr $I159, rxquantr158_done
    rx150_cur."!mark_push"(0, -1, $I159)
  rxquantr158_loop:
  # rx enumcharlist negate=0 
    ge rx150_pos, rx150_eos, rx150_fail
    sub $I10, rx150_pos, rx150_off
    substr $S10, rx150_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx150_fail
    inc rx150_pos
    (rx150_rep) = rx150_cur."!mark_commit"($I159)
    rx150_cur."!mark_push"(rx150_rep, rx150_pos, $I159)
    goto rxquantr158_loop
  rxquantr158_done:
  # rx charclass_q S r 1..-1
    sub $I10, rx150_pos, rx150_off
    find_cclass $I11, 32, rx150_tgt, $I10, rx150_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx150_fail
    add rx150_pos, rx150_off, $I11
    (rx150_rep) = rx150_cur."!mark_commit"($I160)
    rx150_cur."!mark_push"(rx150_rep, rx150_pos, $I160)
    goto rxquantr157_loop
  rxquantr157_done:
    set_addr $I10, rxcap_161_fail
    ($I12, $I11) = rx150_cur."!mark_peek"($I10)
    rx150_cur."!cursor_pos"($I11)
    ($P10) = rx150_cur."!cursor_start"()
    $P10."!cursor_pass"(rx150_pos, "")
    rx150_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_161_done
  rxcap_161_fail:
    goto rx150_fail
  rxcap_161_done:
    (rx150_rep) = rx150_cur."!mark_commit"($I162)
  rxquantr152_done:
.annotate "line", 86
  # rx pass
    rx150_cur."!cursor_pass"(rx150_pos, "metachar:sym<{*}>")
    .return (rx150_cur)
  rx150_fail:
    (rx150_rep, rx150_pos, $I10, $P10) = rx150_cur."!mark_fail"(0)
    lt rx150_pos, -1, rx150_done
    eq rx150_pos, -1, rx150_fail
    jump $I10
  rx150_done:
    rx150_cur."!cursor_fail"()
    .return (rx150_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("46_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 91
    .local string rx164_tgt
    .local int rx164_pos
    .local int rx164_off
    .local int rx164_eos
    .local int rx164_rep
    .local pmc rx164_cur
    (rx164_cur, rx164_pos, rx164_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx164_cur
    length rx164_eos, rx164_tgt
    set rx164_off, 0
    lt $I10, 2, rx164_start
    sub rx164_off, $I10, 1
    substr rx164_tgt, rx164_tgt, rx164_off
  rx164_start:
.annotate "line", 92
  # rx literal  "<"
    add $I11, rx164_pos, 1
    gt $I11, rx164_eos, rx164_fail
    sub $I11, rx164_pos, rx164_off
    substr $S10, rx164_tgt, $I11, 1
    ne $S10, "<", rx164_fail
    add rx164_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    $P10 = rx164_cur."assertion"()
    unless $P10, rx164_fail
    rx164_pos = $P10."pos"()
    rx164_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
  alt165_0:
.annotate "line", 93
    set_addr $I10, alt165_1
    rx164_cur."!mark_push"(0, rx164_pos, $I10)
  # rx literal  ">"
    add $I11, rx164_pos, 1
    gt $I11, rx164_eos, rx164_fail
    sub $I11, rx164_pos, rx164_off
    substr $S10, rx164_tgt, $I11, 1
    ne $S10, ">", rx164_fail
    add rx164_pos, 1
    goto alt165_end
  alt165_1:
  # rx subrule "panic" subtype=method negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    $P10 = rx164_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx164_fail
    rx164_pos = $P10."pos"()
    rx164_cur."!mark_push"(0, -1, 0, $P10)
  alt165_end:
.annotate "line", 91
  # rx pass
    rx164_cur."!cursor_pass"(rx164_pos, "metachar:sym<assert>")
    .return (rx164_cur)
  rx164_fail:
    (rx164_rep, rx164_pos, $I10, $P10) = rx164_cur."!mark_fail"(0)
    lt rx164_pos, -1, rx164_done
    eq rx164_pos, -1, rx164_fail
    jump $I10
  rx164_done:
    rx164_cur."!cursor_fail"()
    .return (rx164_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("47_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 97
    .local string rx167_tgt
    .local int rx167_pos
    .local int rx167_off
    .local int rx167_eos
    .local int rx167_rep
    .local pmc rx167_cur
    (rx167_cur, rx167_pos, rx167_tgt, $I10) = self."!cursor_start"()
    rx167_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx167_cur
    length rx167_eos, rx167_tgt
    set rx167_off, 0
    lt $I10, 2, rx167_start
    sub rx167_off, $I10, 1
    substr rx167_tgt, rx167_tgt, rx167_off
  rx167_start:
  alt168_0:
.annotate "line", 98
    set_addr $I10, alt168_1
    rx167_cur."!mark_push"(0, rx167_pos, $I10)
.annotate "line", 99
  # rx literal  "$<"
    add $I11, rx167_pos, 2
    gt $I11, rx167_eos, rx167_fail
    sub $I11, rx167_pos, rx167_off
    substr $S10, rx167_tgt, $I11, 2
    ne $S10, "$<", rx167_fail
    add rx167_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_171_fail
    rx167_cur."!mark_push"(0, rx167_pos, $I10)
  # rx rxquantr169 ** 1..*
    set_addr $I170, rxquantr169_done
    rx167_cur."!mark_push"(0, -1, $I170)
  rxquantr169_loop:
  # rx enumcharlist negate=1 
    ge rx167_pos, rx167_eos, rx167_fail
    sub $I10, rx167_pos, rx167_off
    substr $S10, rx167_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx167_fail
    inc rx167_pos
    (rx167_rep) = rx167_cur."!mark_commit"($I170)
    rx167_cur."!mark_push"(rx167_rep, rx167_pos, $I170)
    goto rxquantr169_loop
  rxquantr169_done:
    set_addr $I10, rxcap_171_fail
    ($I12, $I11) = rx167_cur."!mark_peek"($I10)
    rx167_cur."!cursor_pos"($I11)
    ($P10) = rx167_cur."!cursor_start"()
    $P10."!cursor_pass"(rx167_pos, "")
    rx167_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_171_done
  rxcap_171_fail:
    goto rx167_fail
  rxcap_171_done:
  # rx literal  ">"
    add $I11, rx167_pos, 1
    gt $I11, rx167_eos, rx167_fail
    sub $I11, rx167_pos, rx167_off
    substr $S10, rx167_tgt, $I11, 1
    ne $S10, ">", rx167_fail
    add rx167_pos, 1
    goto alt168_end
  alt168_1:
.annotate "line", 100
  # rx literal  "$"
    add $I11, rx167_pos, 1
    gt $I11, rx167_eos, rx167_fail
    sub $I11, rx167_pos, rx167_off
    substr $S10, rx167_tgt, $I11, 1
    ne $S10, "$", rx167_fail
    add rx167_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_172_fail
    rx167_cur."!mark_push"(0, rx167_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx167_pos, rx167_off
    find_not_cclass $I11, 8, rx167_tgt, $I10, rx167_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx167_fail
    add rx167_pos, rx167_off, $I11
    set_addr $I10, rxcap_172_fail
    ($I12, $I11) = rx167_cur."!mark_peek"($I10)
    rx167_cur."!cursor_pos"($I11)
    ($P10) = rx167_cur."!cursor_start"()
    $P10."!cursor_pass"(rx167_pos, "")
    rx167_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_172_done
  rxcap_172_fail:
    goto rx167_fail
  rxcap_172_done:
  alt168_end:
.annotate "line", 103
  # rx rxquantr173 ** 0..1
    set_addr $I174, rxquantr173_done
    rx167_cur."!mark_push"(0, rx167_pos, $I174)
  rxquantr173_loop:
  # rx subrule "ws" subtype=method negate=
    rx167_cur."!cursor_pos"(rx167_pos)
    $P10 = rx167_cur."ws"()
    unless $P10, rx167_fail
    rx167_pos = $P10."pos"()
    rx167_cur."!mark_push"(0, -1, 0, $P10)
  # rx literal  "="
    add $I11, rx167_pos, 1
    gt $I11, rx167_eos, rx167_fail
    sub $I11, rx167_pos, rx167_off
    substr $S10, rx167_tgt, $I11, 1
    ne $S10, "=", rx167_fail
    add rx167_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx167_cur."!cursor_pos"(rx167_pos)
    $P10 = rx167_cur."ws"()
    unless $P10, rx167_fail
    rx167_pos = $P10."pos"()
    rx167_cur."!mark_push"(0, -1, 0, $P10)
  # rx subrule "quantified_atom" subtype=capture negate=
    rx167_cur."!cursor_pos"(rx167_pos)
    $P10 = rx167_cur."quantified_atom"()
    unless $P10, rx167_fail
    rx167_pos = $P10."pos"()
    rx167_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    (rx167_rep) = rx167_cur."!mark_commit"($I174)
  rxquantr173_done:
.annotate "line", 97
  # rx pass
    rx167_cur."!cursor_pass"(rx167_pos, "metachar:sym<var>")
    .return (rx167_cur)
  rx167_fail:
    (rx167_rep, rx167_pos, $I10, $P10) = rx167_cur."!mark_fail"(0)
    lt rx167_pos, -1, rx167_done
    eq rx167_pos, -1, rx167_fail
    jump $I10
  rx167_done:
    rx167_cur."!cursor_fail"()
    .return (rx167_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("48_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 108
    .local string rx176_tgt
    .local int rx176_pos
    .local int rx176_off
    .local int rx176_eos
    .local int rx176_rep
    .local pmc rx176_cur
    (rx176_cur, rx176_pos, rx176_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx176_cur
    length rx176_eos, rx176_tgt
    set rx176_off, 0
    lt $I10, 2, rx176_start
    sub rx176_off, $I10, 1
    substr rx176_tgt, rx176_tgt, rx176_off
  rx176_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_177_fail
    rx176_cur."!mark_push"(0, rx176_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx176_pos, rx176_eos, rx176_fail
    sub $I10, rx176_pos, rx176_off
    substr $S10, rx176_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx176_fail
    inc rx176_pos
    set_addr $I10, rxcap_177_fail
    ($I12, $I11) = rx176_cur."!mark_peek"($I10)
    rx176_cur."!cursor_pos"($I11)
    ($P10) = rx176_cur."!cursor_start"()
    $P10."!cursor_pass"(rx176_pos, "")
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_177_done
  rxcap_177_fail:
    goto rx176_fail
  rxcap_177_done:
  # rx pass
    rx176_cur."!cursor_pass"(rx176_pos, "backslash:sym<w>")
    .return (rx176_cur)
  rx176_fail:
    (rx176_rep, rx176_pos, $I10, $P10) = rx176_cur."!mark_fail"(0)
    lt rx176_pos, -1, rx176_done
    eq rx176_pos, -1, rx176_fail
    jump $I10
  rx176_done:
    rx176_cur."!cursor_fail"()
    .return (rx176_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("49_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 109
    .local string rx179_tgt
    .local int rx179_pos
    .local int rx179_off
    .local int rx179_eos
    .local int rx179_rep
    .local pmc rx179_cur
    (rx179_cur, rx179_pos, rx179_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx179_cur
    length rx179_eos, rx179_tgt
    set rx179_off, 0
    lt $I10, 2, rx179_start
    sub rx179_off, $I10, 1
    substr rx179_tgt, rx179_tgt, rx179_off
  rx179_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_180_fail
    rx179_cur."!mark_push"(0, rx179_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx179_pos, rx179_eos, rx179_fail
    sub $I10, rx179_pos, rx179_off
    substr $S10, rx179_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx179_fail
    inc rx179_pos
    set_addr $I10, rxcap_180_fail
    ($I12, $I11) = rx179_cur."!mark_peek"($I10)
    rx179_cur."!cursor_pos"($I11)
    ($P10) = rx179_cur."!cursor_start"()
    $P10."!cursor_pass"(rx179_pos, "")
    rx179_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_180_done
  rxcap_180_fail:
    goto rx179_fail
  rxcap_180_done:
  # rx pass
    rx179_cur."!cursor_pass"(rx179_pos, "backslash:sym<b>")
    .return (rx179_cur)
  rx179_fail:
    (rx179_rep, rx179_pos, $I10, $P10) = rx179_cur."!mark_fail"(0)
    lt rx179_pos, -1, rx179_done
    eq rx179_pos, -1, rx179_fail
    jump $I10
  rx179_done:
    rx179_cur."!cursor_fail"()
    .return (rx179_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("50_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 110
    .local string rx182_tgt
    .local int rx182_pos
    .local int rx182_off
    .local int rx182_eos
    .local int rx182_rep
    .local pmc rx182_cur
    (rx182_cur, rx182_pos, rx182_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx182_cur
    length rx182_eos, rx182_tgt
    set rx182_off, 0
    lt $I10, 2, rx182_start
    sub rx182_off, $I10, 1
    substr rx182_tgt, rx182_tgt, rx182_off
  rx182_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_183_fail
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx182_pos, rx182_eos, rx182_fail
    sub $I10, rx182_pos, rx182_off
    substr $S10, rx182_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx182_fail
    inc rx182_pos
    set_addr $I10, rxcap_183_fail
    ($I12, $I11) = rx182_cur."!mark_peek"($I10)
    rx182_cur."!cursor_pos"($I11)
    ($P10) = rx182_cur."!cursor_start"()
    $P10."!cursor_pass"(rx182_pos, "")
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_183_done
  rxcap_183_fail:
    goto rx182_fail
  rxcap_183_done:
  # rx pass
    rx182_cur."!cursor_pass"(rx182_pos, "backslash:sym<e>")
    .return (rx182_cur)
  rx182_fail:
    (rx182_rep, rx182_pos, $I10, $P10) = rx182_cur."!mark_fail"(0)
    lt rx182_pos, -1, rx182_done
    eq rx182_pos, -1, rx182_fail
    jump $I10
  rx182_done:
    rx182_cur."!cursor_fail"()
    .return (rx182_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("51_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 111
    .local string rx185_tgt
    .local int rx185_pos
    .local int rx185_off
    .local int rx185_eos
    .local int rx185_rep
    .local pmc rx185_cur
    (rx185_cur, rx185_pos, rx185_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx185_cur
    length rx185_eos, rx185_tgt
    set rx185_off, 0
    lt $I10, 2, rx185_start
    sub rx185_off, $I10, 1
    substr rx185_tgt, rx185_tgt, rx185_off
  rx185_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_186_fail
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx185_pos, rx185_eos, rx185_fail
    sub $I10, rx185_pos, rx185_off
    substr $S10, rx185_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx185_fail
    inc rx185_pos
    set_addr $I10, rxcap_186_fail
    ($I12, $I11) = rx185_cur."!mark_peek"($I10)
    rx185_cur."!cursor_pos"($I11)
    ($P10) = rx185_cur."!cursor_start"()
    $P10."!cursor_pass"(rx185_pos, "")
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_186_done
  rxcap_186_fail:
    goto rx185_fail
  rxcap_186_done:
  # rx pass
    rx185_cur."!cursor_pass"(rx185_pos, "backslash:sym<f>")
    .return (rx185_cur)
  rx185_fail:
    (rx185_rep, rx185_pos, $I10, $P10) = rx185_cur."!mark_fail"(0)
    lt rx185_pos, -1, rx185_done
    eq rx185_pos, -1, rx185_fail
    jump $I10
  rx185_done:
    rx185_cur."!cursor_fail"()
    .return (rx185_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("52_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 112
    .local string rx188_tgt
    .local int rx188_pos
    .local int rx188_off
    .local int rx188_eos
    .local int rx188_rep
    .local pmc rx188_cur
    (rx188_cur, rx188_pos, rx188_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx188_cur
    length rx188_eos, rx188_tgt
    set rx188_off, 0
    lt $I10, 2, rx188_start
    sub rx188_off, $I10, 1
    substr rx188_tgt, rx188_tgt, rx188_off
  rx188_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_189_fail
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx188_pos, rx188_eos, rx188_fail
    sub $I10, rx188_pos, rx188_off
    substr $S10, rx188_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx188_fail
    inc rx188_pos
    set_addr $I10, rxcap_189_fail
    ($I12, $I11) = rx188_cur."!mark_peek"($I10)
    rx188_cur."!cursor_pos"($I11)
    ($P10) = rx188_cur."!cursor_start"()
    $P10."!cursor_pass"(rx188_pos, "")
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_189_done
  rxcap_189_fail:
    goto rx188_fail
  rxcap_189_done:
  # rx pass
    rx188_cur."!cursor_pass"(rx188_pos, "backslash:sym<h>")
    .return (rx188_cur)
  rx188_fail:
    (rx188_rep, rx188_pos, $I10, $P10) = rx188_cur."!mark_fail"(0)
    lt rx188_pos, -1, rx188_done
    eq rx188_pos, -1, rx188_fail
    jump $I10
  rx188_done:
    rx188_cur."!cursor_fail"()
    .return (rx188_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("53_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 113
    .local string rx191_tgt
    .local int rx191_pos
    .local int rx191_off
    .local int rx191_eos
    .local int rx191_rep
    .local pmc rx191_cur
    (rx191_cur, rx191_pos, rx191_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx191_cur
    length rx191_eos, rx191_tgt
    set rx191_off, 0
    lt $I10, 2, rx191_start
    sub rx191_off, $I10, 1
    substr rx191_tgt, rx191_tgt, rx191_off
  rx191_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_192_fail
    rx191_cur."!mark_push"(0, rx191_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx191_pos, rx191_eos, rx191_fail
    sub $I10, rx191_pos, rx191_off
    substr $S10, rx191_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx191_fail
    inc rx191_pos
    set_addr $I10, rxcap_192_fail
    ($I12, $I11) = rx191_cur."!mark_peek"($I10)
    rx191_cur."!cursor_pos"($I11)
    ($P10) = rx191_cur."!cursor_start"()
    $P10."!cursor_pass"(rx191_pos, "")
    rx191_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_192_done
  rxcap_192_fail:
    goto rx191_fail
  rxcap_192_done:
  # rx pass
    rx191_cur."!cursor_pass"(rx191_pos, "backslash:sym<r>")
    .return (rx191_cur)
  rx191_fail:
    (rx191_rep, rx191_pos, $I10, $P10) = rx191_cur."!mark_fail"(0)
    lt rx191_pos, -1, rx191_done
    eq rx191_pos, -1, rx191_fail
    jump $I10
  rx191_done:
    rx191_cur."!cursor_fail"()
    .return (rx191_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("54_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 114
    .local string rx194_tgt
    .local int rx194_pos
    .local int rx194_off
    .local int rx194_eos
    .local int rx194_rep
    .local pmc rx194_cur
    (rx194_cur, rx194_pos, rx194_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx194_cur
    length rx194_eos, rx194_tgt
    set rx194_off, 0
    lt $I10, 2, rx194_start
    sub rx194_off, $I10, 1
    substr rx194_tgt, rx194_tgt, rx194_off
  rx194_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_195_fail
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx194_pos, rx194_eos, rx194_fail
    sub $I10, rx194_pos, rx194_off
    substr $S10, rx194_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx194_fail
    inc rx194_pos
    set_addr $I10, rxcap_195_fail
    ($I12, $I11) = rx194_cur."!mark_peek"($I10)
    rx194_cur."!cursor_pos"($I11)
    ($P10) = rx194_cur."!cursor_start"()
    $P10."!cursor_pass"(rx194_pos, "")
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_195_done
  rxcap_195_fail:
    goto rx194_fail
  rxcap_195_done:
  # rx pass
    rx194_cur."!cursor_pass"(rx194_pos, "backslash:sym<t>")
    .return (rx194_cur)
  rx194_fail:
    (rx194_rep, rx194_pos, $I10, $P10) = rx194_cur."!mark_fail"(0)
    lt rx194_pos, -1, rx194_done
    eq rx194_pos, -1, rx194_fail
    jump $I10
  rx194_done:
    rx194_cur."!cursor_fail"()
    .return (rx194_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("55_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 115
    .local string rx197_tgt
    .local int rx197_pos
    .local int rx197_off
    .local int rx197_eos
    .local int rx197_rep
    .local pmc rx197_cur
    (rx197_cur, rx197_pos, rx197_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx197_cur
    length rx197_eos, rx197_tgt
    set rx197_off, 0
    lt $I10, 2, rx197_start
    sub rx197_off, $I10, 1
    substr rx197_tgt, rx197_tgt, rx197_off
  rx197_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_198_fail
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx197_pos, rx197_eos, rx197_fail
    sub $I10, rx197_pos, rx197_off
    substr $S10, rx197_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx197_fail
    inc rx197_pos
    set_addr $I10, rxcap_198_fail
    ($I12, $I11) = rx197_cur."!mark_peek"($I10)
    rx197_cur."!cursor_pos"($I11)
    ($P10) = rx197_cur."!cursor_start"()
    $P10."!cursor_pass"(rx197_pos, "")
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_198_done
  rxcap_198_fail:
    goto rx197_fail
  rxcap_198_done:
  # rx pass
    rx197_cur."!cursor_pass"(rx197_pos, "backslash:sym<v>")
    .return (rx197_cur)
  rx197_fail:
    (rx197_rep, rx197_pos, $I10, $P10) = rx197_cur."!mark_fail"(0)
    lt rx197_pos, -1, rx197_done
    eq rx197_pos, -1, rx197_fail
    jump $I10
  rx197_done:
    rx197_cur."!cursor_fail"()
    .return (rx197_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("56_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 116
    .local string rx200_tgt
    .local int rx200_pos
    .local int rx200_off
    .local int rx200_eos
    .local int rx200_rep
    .local pmc rx200_cur
    (rx200_cur, rx200_pos, rx200_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx200_cur
    length rx200_eos, rx200_tgt
    set rx200_off, 0
    lt $I10, 2, rx200_start
    sub rx200_off, $I10, 1
    substr rx200_tgt, rx200_tgt, rx200_off
  rx200_start:
  # rx literal  "A"
    add $I11, rx200_pos, 1
    gt $I11, rx200_eos, rx200_fail
    sub $I11, rx200_pos, rx200_off
    substr $S10, rx200_tgt, $I11, 1
    ne $S10, "A", rx200_fail
    add rx200_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx200_cur."!cursor_pos"(rx200_pos)
    $P10 = rx200_cur."obs"("\\\\A as beginning-of-string matcher;^")
    unless $P10, rx200_fail
    rx200_pos = $P10."pos"()
    rx200_cur."!mark_push"(0, -1, 0, $P10)
  # rx pass
    rx200_cur."!cursor_pass"(rx200_pos, "backslash:sym<A>")
    .return (rx200_cur)
  rx200_fail:
    (rx200_rep, rx200_pos, $I10, $P10) = rx200_cur."!mark_fail"(0)
    lt rx200_pos, -1, rx200_done
    eq rx200_pos, -1, rx200_fail
    jump $I10
  rx200_done:
    rx200_cur."!cursor_fail"()
    .return (rx200_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("57_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 117
    .local string rx202_tgt
    .local int rx202_pos
    .local int rx202_off
    .local int rx202_eos
    .local int rx202_rep
    .local pmc rx202_cur
    (rx202_cur, rx202_pos, rx202_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx202_cur
    length rx202_eos, rx202_tgt
    set rx202_off, 0
    lt $I10, 2, rx202_start
    sub rx202_off, $I10, 1
    substr rx202_tgt, rx202_tgt, rx202_off
  rx202_start:
  # rx literal  "z"
    add $I11, rx202_pos, 1
    gt $I11, rx202_eos, rx202_fail
    sub $I11, rx202_pos, rx202_off
    substr $S10, rx202_tgt, $I11, 1
    ne $S10, "z", rx202_fail
    add rx202_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx202_cur."!cursor_pos"(rx202_pos)
    $P10 = rx202_cur."obs"("\\\\z as end-of-string matcher;$")
    unless $P10, rx202_fail
    rx202_pos = $P10."pos"()
    rx202_cur."!mark_push"(0, -1, 0, $P10)
  # rx pass
    rx202_cur."!cursor_pass"(rx202_pos, "backslash:sym<z>")
    .return (rx202_cur)
  rx202_fail:
    (rx202_rep, rx202_pos, $I10, $P10) = rx202_cur."!mark_fail"(0)
    lt rx202_pos, -1, rx202_done
    eq rx202_pos, -1, rx202_fail
    jump $I10
  rx202_done:
    rx202_cur."!cursor_fail"()
    .return (rx202_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("58_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 118
    .local string rx204_tgt
    .local int rx204_pos
    .local int rx204_off
    .local int rx204_eos
    .local int rx204_rep
    .local pmc rx204_cur
    (rx204_cur, rx204_pos, rx204_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx204_cur
    length rx204_eos, rx204_tgt
    set rx204_off, 0
    lt $I10, 2, rx204_start
    sub rx204_off, $I10, 1
    substr rx204_tgt, rx204_tgt, rx204_off
  rx204_start:
  # rx literal  "Z"
    add $I11, rx204_pos, 1
    gt $I11, rx204_eos, rx204_fail
    sub $I11, rx204_pos, rx204_off
    substr $S10, rx204_tgt, $I11, 1
    ne $S10, "Z", rx204_fail
    add rx204_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx204_cur."!cursor_pos"(rx204_pos)
    $P10 = rx204_cur."obs"("\\\\Z as end-of-string matcher;\\\\n?$")
    unless $P10, rx204_fail
    rx204_pos = $P10."pos"()
    rx204_cur."!mark_push"(0, -1, 0, $P10)
  # rx pass
    rx204_cur."!cursor_pass"(rx204_pos, "backslash:sym<Z>")
    .return (rx204_cur)
  rx204_fail:
    (rx204_rep, rx204_pos, $I10, $P10) = rx204_cur."!mark_fail"(0)
    lt rx204_pos, -1, rx204_done
    eq rx204_pos, -1, rx204_fail
    jump $I10
  rx204_done:
    rx204_cur."!cursor_fail"()
    .return (rx204_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("59_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 119
    .local string rx206_tgt
    .local int rx206_pos
    .local int rx206_off
    .local int rx206_eos
    .local int rx206_rep
    .local pmc rx206_cur
    (rx206_cur, rx206_pos, rx206_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx206_cur
    length rx206_eos, rx206_tgt
    set rx206_off, 0
    lt $I10, 2, rx206_start
    sub rx206_off, $I10, 1
    substr rx206_tgt, rx206_tgt, rx206_off
  rx206_start:
  # rx literal  "Q"
    add $I11, rx206_pos, 1
    gt $I11, rx206_eos, rx206_fail
    sub $I11, rx206_pos, rx206_off
    substr $S10, rx206_tgt, $I11, 1
    ne $S10, "Q", rx206_fail
    add rx206_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx206_cur."!cursor_pos"(rx206_pos)
    $P10 = rx206_cur."obs"("\\\\Q as quotemeta;quotes or literal variable match")
    unless $P10, rx206_fail
    rx206_pos = $P10."pos"()
    rx206_cur."!mark_push"(0, -1, 0, $P10)
  # rx pass
    rx206_cur."!cursor_pass"(rx206_pos, "backslash:sym<Q>")
    .return (rx206_cur)
  rx206_fail:
    (rx206_rep, rx206_pos, $I10, $P10) = rx206_cur."!mark_fail"(0)
    lt rx206_pos, -1, rx206_done
    eq rx206_pos, -1, rx206_fail
    jump $I10
  rx206_done:
    rx206_cur."!cursor_fail"()
    .return (rx206_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("60_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 120
    .local string rx208_tgt
    .local int rx208_pos
    .local int rx208_off
    .local int rx208_eos
    .local int rx208_rep
    .local pmc rx208_cur
    (rx208_cur, rx208_pos, rx208_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx208_cur
    length rx208_eos, rx208_tgt
    set rx208_off, 0
    lt $I10, 2, rx208_start
    sub rx208_off, $I10, 1
    substr rx208_tgt, rx208_tgt, rx208_off
  rx208_start:
  # rx charclass W
    ge rx208_pos, rx208_eos, rx208_fail
    sub $I10, rx208_pos, rx208_off
    is_cclass $I11, 8192, rx208_tgt, $I10
    if $I11, rx208_fail
    inc rx208_pos
  # rx pass
    rx208_cur."!cursor_pass"(rx208_pos, "backslash:sym<misc>")
    .return (rx208_cur)
  rx208_fail:
    (rx208_rep, rx208_pos, $I10, $P10) = rx208_cur."!mark_fail"(0)
    lt rx208_pos, -1, rx208_done
    eq rx208_pos, -1, rx208_fail
    jump $I10
  rx208_done:
    rx208_cur."!cursor_fail"()
    .return (rx208_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("61_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 124
    .const 'Sub' $P213 = "62_1255814464.54656" 
    capture_lex $P213
    .local string rx210_tgt
    .local int rx210_pos
    .local int rx210_off
    .local int rx210_eos
    .local int rx210_rep
    .local pmc rx210_cur
    (rx210_cur, rx210_pos, rx210_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx210_cur
    length rx210_eos, rx210_tgt
    set rx210_off, 0
    lt $I10, 2, rx210_start
    sub rx210_off, $I10, 1
    substr rx210_tgt, rx210_tgt, rx210_off
  rx210_start:
  # rx literal  "?"
    add $I11, rx210_pos, 1
    gt $I11, rx210_eos, rx210_fail
    sub $I11, rx210_pos, rx210_off
    substr $S10, rx210_tgt, $I11, 1
    ne $S10, "?", rx210_fail
    add rx210_pos, 1
  alt211_0:
    set_addr $I10, alt211_1
    rx210_cur."!mark_push"(0, rx210_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    .const 'Sub' $P213 = "62_1255814464.54656" 
    capture_lex $P213
    $P10 = rx210_cur."before"($P213)
    unless $P10, rx210_fail
    goto alt211_end
  alt211_1:
  # rx subrule "assertion" subtype=capture negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    $P10 = rx210_cur."assertion"()
    unless $P10, rx210_fail
    rx210_pos = $P10."pos"()
    rx210_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
  alt211_end:
  # rx pass
    rx210_cur."!cursor_pass"(rx210_pos, "assertion:sym<?>")
    .return (rx210_cur)
  rx210_fail:
    (rx210_rep, rx210_pos, $I10, $P10) = rx210_cur."!mark_fail"(0)
    lt rx210_pos, -1, rx210_done
    eq rx210_pos, -1, rx210_fail
    jump $I10
  rx210_done:
    rx210_cur."!cursor_fail"()
    .return (rx210_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block212"  :anon :subid("62_1255814464.54656") :method :outer("61_1255814464.54656")
.annotate "line", 124
    .local string rx214_tgt
    .local int rx214_pos
    .local int rx214_off
    .local int rx214_eos
    .local int rx214_rep
    .local pmc rx214_cur
    (rx214_cur, rx214_pos, rx214_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx214_cur
    length rx214_eos, rx214_tgt
    set rx214_off, 0
    lt $I10, 2, rx214_start
    sub rx214_off, $I10, 1
    substr rx214_tgt, rx214_tgt, rx214_off
  rx214_start:
    ge rx214_pos, 0, rxscan215_done
  rxscan215_loop:
    ($P10) = rx214_cur."from"()
    inc $P10
    set rx214_pos, $P10
    ge rx214_pos, rx214_eos, rxscan215_done
    set_addr $I10, rxscan215_loop
    rx214_cur."!mark_push"(0, rx214_pos, $I10)
  rxscan215_done:
  # rx literal  ">"
    add $I11, rx214_pos, 1
    gt $I11, rx214_eos, rx214_fail
    sub $I11, rx214_pos, rx214_off
    substr $S10, rx214_tgt, $I11, 1
    ne $S10, ">", rx214_fail
    add rx214_pos, 1
  # rx pass
    rx214_cur."!cursor_pass"(rx214_pos, "")
    .return (rx214_cur)
  rx214_fail:
    (rx214_rep, rx214_pos, $I10, $P10) = rx214_cur."!mark_fail"(0)
    lt rx214_pos, -1, rx214_done
    eq rx214_pos, -1, rx214_fail
    jump $I10
  rx214_done:
    rx214_cur."!cursor_fail"()
    .return (rx214_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("63_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 125
    .const 'Sub' $P220 = "64_1255814464.54656" 
    capture_lex $P220
    .local string rx217_tgt
    .local int rx217_pos
    .local int rx217_off
    .local int rx217_eos
    .local int rx217_rep
    .local pmc rx217_cur
    (rx217_cur, rx217_pos, rx217_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx217_cur
    length rx217_eos, rx217_tgt
    set rx217_off, 0
    lt $I10, 2, rx217_start
    sub rx217_off, $I10, 1
    substr rx217_tgt, rx217_tgt, rx217_off
  rx217_start:
  # rx literal  "!"
    add $I11, rx217_pos, 1
    gt $I11, rx217_eos, rx217_fail
    sub $I11, rx217_pos, rx217_off
    substr $S10, rx217_tgt, $I11, 1
    ne $S10, "!", rx217_fail
    add rx217_pos, 1
  alt218_0:
    set_addr $I10, alt218_1
    rx217_cur."!mark_push"(0, rx217_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx217_cur."!cursor_pos"(rx217_pos)
    .const 'Sub' $P220 = "64_1255814464.54656" 
    capture_lex $P220
    $P10 = rx217_cur."before"($P220)
    unless $P10, rx217_fail
    goto alt218_end
  alt218_1:
  # rx subrule "assertion" subtype=capture negate=
    rx217_cur."!cursor_pos"(rx217_pos)
    $P10 = rx217_cur."assertion"()
    unless $P10, rx217_fail
    rx217_pos = $P10."pos"()
    rx217_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
  alt218_end:
  # rx pass
    rx217_cur."!cursor_pass"(rx217_pos, "assertion:sym<!>")
    .return (rx217_cur)
  rx217_fail:
    (rx217_rep, rx217_pos, $I10, $P10) = rx217_cur."!mark_fail"(0)
    lt rx217_pos, -1, rx217_done
    eq rx217_pos, -1, rx217_fail
    jump $I10
  rx217_done:
    rx217_cur."!cursor_fail"()
    .return (rx217_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block219"  :anon :subid("64_1255814464.54656") :method :outer("63_1255814464.54656")
.annotate "line", 125
    .local string rx221_tgt
    .local int rx221_pos
    .local int rx221_off
    .local int rx221_eos
    .local int rx221_rep
    .local pmc rx221_cur
    (rx221_cur, rx221_pos, rx221_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx221_cur
    length rx221_eos, rx221_tgt
    set rx221_off, 0
    lt $I10, 2, rx221_start
    sub rx221_off, $I10, 1
    substr rx221_tgt, rx221_tgt, rx221_off
  rx221_start:
    ge rx221_pos, 0, rxscan222_done
  rxscan222_loop:
    ($P10) = rx221_cur."from"()
    inc $P10
    set rx221_pos, $P10
    ge rx221_pos, rx221_eos, rxscan222_done
    set_addr $I10, rxscan222_loop
    rx221_cur."!mark_push"(0, rx221_pos, $I10)
  rxscan222_done:
  # rx literal  ">"
    add $I11, rx221_pos, 1
    gt $I11, rx221_eos, rx221_fail
    sub $I11, rx221_pos, rx221_off
    substr $S10, rx221_tgt, $I11, 1
    ne $S10, ">", rx221_fail
    add rx221_pos, 1
  # rx pass
    rx221_cur."!cursor_pass"(rx221_pos, "")
    .return (rx221_cur)
  rx221_fail:
    (rx221_rep, rx221_pos, $I10, $P10) = rx221_cur."!mark_fail"(0)
    lt rx221_pos, -1, rx221_done
    eq rx221_pos, -1, rx221_fail
    jump $I10
  rx221_done:
    rx221_cur."!cursor_fail"()
    .return (rx221_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("65_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 127
    .local string rx224_tgt
    .local int rx224_pos
    .local int rx224_off
    .local int rx224_eos
    .local int rx224_rep
    .local pmc rx224_cur
    (rx224_cur, rx224_pos, rx224_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx224_cur
    length rx224_eos, rx224_tgt
    set rx224_off, 0
    lt $I10, 2, rx224_start
    sub rx224_off, $I10, 1
    substr rx224_tgt, rx224_tgt, rx224_off
  rx224_start:
.annotate "line", 128
  # rx literal  "."
    add $I11, rx224_pos, 1
    gt $I11, rx224_eos, rx224_fail
    sub $I11, rx224_pos, rx224_off
    substr $S10, rx224_tgt, $I11, 1
    ne $S10, ".", rx224_fail
    add rx224_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    $P10 = rx224_cur."assertion"()
    unless $P10, rx224_fail
    rx224_pos = $P10."pos"()
    rx224_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
.annotate "line", 127
  # rx pass
    rx224_cur."!cursor_pass"(rx224_pos, "assertion:sym<method>")
    .return (rx224_cur)
  rx224_fail:
    (rx224_rep, rx224_pos, $I10, $P10) = rx224_cur."!mark_fail"(0)
    lt rx224_pos, -1, rx224_done
    eq rx224_pos, -1, rx224_fail
    jump $I10
  rx224_done:
    rx224_cur."!cursor_fail"()
    .return (rx224_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("66_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 131
    .const 'Sub' $P231 = "67_1255814464.54656" 
    capture_lex $P231
    .local string rx226_tgt
    .local int rx226_pos
    .local int rx226_off
    .local int rx226_eos
    .local int rx226_rep
    .local pmc rx226_cur
    (rx226_cur, rx226_pos, rx226_tgt, $I10) = self."!cursor_start"()
    rx226_cur."!cursor_caparray"("nibbler", "arglist", "assertion")
    .lex unicode:"$\x{a2}", rx226_cur
    length rx226_eos, rx226_tgt
    set rx226_off, 0
    lt $I10, 2, rx226_start
    sub rx226_off, $I10, 1
    substr rx226_tgt, rx226_tgt, rx226_off
  rx226_start:
.annotate "line", 132
  # rx subcapture "longname"
    set_addr $I10, rxcap_227_fail
    rx226_cur."!mark_push"(0, rx226_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx226_pos, rx226_off
    find_not_cclass $I11, 8192, rx226_tgt, $I10, rx226_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx226_fail
    add rx226_pos, rx226_off, $I11
    set_addr $I10, rxcap_227_fail
    ($I12, $I11) = rx226_cur."!mark_peek"($I10)
    rx226_cur."!cursor_pos"($I11)
    ($P10) = rx226_cur."!cursor_start"()
    $P10."!cursor_pass"(rx226_pos, "")
    rx226_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    goto rxcap_227_done
  rxcap_227_fail:
    goto rx226_fail
  rxcap_227_done:
.annotate "line", 138
  # rx rxquantr228 ** 0..1
    set_addr $I234, rxquantr228_done
    rx226_cur."!mark_push"(0, rx226_pos, $I234)
  rxquantr228_loop:
  alt229_0:
.annotate "line", 133
    set_addr $I10, alt229_1
    rx226_cur."!mark_push"(0, rx226_pos, $I10)
.annotate "line", 134
  # rx subrule "before" subtype=zerowidth negate=
    rx226_cur."!cursor_pos"(rx226_pos)
    .const 'Sub' $P231 = "67_1255814464.54656" 
    capture_lex $P231
    $P10 = rx226_cur."before"($P231)
    unless $P10, rx226_fail
    goto alt229_end
  alt229_1:
    set_addr $I10, alt229_2
    rx226_cur."!mark_push"(0, rx226_pos, $I10)
.annotate "line", 135
  # rx literal  "="
    add $I11, rx226_pos, 1
    gt $I11, rx226_eos, rx226_fail
    sub $I11, rx226_pos, rx226_off
    substr $S10, rx226_tgt, $I11, 1
    ne $S10, "=", rx226_fail
    add rx226_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx226_cur."!cursor_pos"(rx226_pos)
    $P10 = rx226_cur."assertion"()
    unless $P10, rx226_fail
    rx226_pos = $P10."pos"()
    rx226_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    goto alt229_end
  alt229_2:
    set_addr $I10, alt229_3
    rx226_cur."!mark_push"(0, rx226_pos, $I10)
.annotate "line", 136
  # rx literal  ":"
    add $I11, rx226_pos, 1
    gt $I11, rx226_eos, rx226_fail
    sub $I11, rx226_pos, rx226_off
    substr $S10, rx226_tgt, $I11, 1
    ne $S10, ":", rx226_fail
    add rx226_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx226_cur."!cursor_pos"(rx226_pos)
    $P10 = rx226_cur."arglist"()
    unless $P10, rx226_fail
    rx226_pos = $P10."pos"()
    rx226_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    goto alt229_end
  alt229_3:
.annotate "line", 137
  # rx subrule "normspace" subtype=method negate=
    rx226_cur."!cursor_pos"(rx226_pos)
    $P10 = rx226_cur."normspace"()
    unless $P10, rx226_fail
    rx226_pos = $P10."pos"()
    rx226_cur."!mark_push"(0, -1, 0, $P10)
  # rx subrule "nibbler" subtype=capture negate=
    rx226_cur."!cursor_pos"(rx226_pos)
    $P10 = rx226_cur."nibbler"()
    unless $P10, rx226_fail
    rx226_pos = $P10."pos"()
    rx226_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
  alt229_end:
.annotate "line", 138
    (rx226_rep) = rx226_cur."!mark_commit"($I234)
  rxquantr228_done:
.annotate "line", 131
  # rx pass
    rx226_cur."!cursor_pass"(rx226_pos, "assertion:sym<name>")
    .return (rx226_cur)
  rx226_fail:
    (rx226_rep, rx226_pos, $I10, $P10) = rx226_cur."!mark_fail"(0)
    lt rx226_pos, -1, rx226_done
    eq rx226_pos, -1, rx226_fail
    jump $I10
  rx226_done:
    rx226_cur."!cursor_fail"()
    .return (rx226_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block230"  :anon :subid("67_1255814464.54656") :method :outer("66_1255814464.54656")
.annotate "line", 134
    .local string rx232_tgt
    .local int rx232_pos
    .local int rx232_off
    .local int rx232_eos
    .local int rx232_rep
    .local pmc rx232_cur
    (rx232_cur, rx232_pos, rx232_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx232_cur
    length rx232_eos, rx232_tgt
    set rx232_off, 0
    lt $I10, 2, rx232_start
    sub rx232_off, $I10, 1
    substr rx232_tgt, rx232_tgt, rx232_off
  rx232_start:
    ge rx232_pos, 0, rxscan233_done
  rxscan233_loop:
    ($P10) = rx232_cur."from"()
    inc $P10
    set rx232_pos, $P10
    ge rx232_pos, rx232_eos, rxscan233_done
    set_addr $I10, rxscan233_loop
    rx232_cur."!mark_push"(0, rx232_pos, $I10)
  rxscan233_done:
  # rx literal  ">"
    add $I11, rx232_pos, 1
    gt $I11, rx232_eos, rx232_fail
    sub $I11, rx232_pos, rx232_off
    substr $S10, rx232_tgt, $I11, 1
    ne $S10, ">", rx232_fail
    add rx232_pos, 1
  # rx pass
    rx232_cur."!cursor_pass"(rx232_pos, "")
    .return (rx232_cur)
  rx232_fail:
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    .return (rx232_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("68_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 142
    .const 'Sub' $P238 = "69_1255814464.54656" 
    capture_lex $P238
    .local string rx236_tgt
    .local int rx236_pos
    .local int rx236_off
    .local int rx236_eos
    .local int rx236_rep
    .local pmc rx236_cur
    (rx236_cur, rx236_pos, rx236_tgt, $I10) = self."!cursor_start"()
    rx236_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx236_cur
    length rx236_eos, rx236_tgt
    set rx236_off, 0
    lt $I10, 2, rx236_start
    sub rx236_off, $I10, 1
    substr rx236_tgt, rx236_tgt, rx236_off
  rx236_start:
  # rx subrule "before" subtype=zerowidth negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    .const 'Sub' $P238 = "69_1255814464.54656" 
    capture_lex $P238
    $P10 = rx236_cur."before"($P238)
    unless $P10, rx236_fail
  # rx rxquantr242 ** 1..*
    set_addr $I243, rxquantr242_done
    rx236_cur."!mark_push"(0, -1, $I243)
  rxquantr242_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."cclass_elem"()
    unless $P10, rx236_fail
    rx236_pos = $P10."pos"()
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cclass_elem")
    (rx236_rep) = rx236_cur."!mark_commit"($I243)
    rx236_cur."!mark_push"(rx236_rep, rx236_pos, $I243)
    goto rxquantr242_loop
  rxquantr242_done:
  # rx pass
    rx236_cur."!cursor_pass"(rx236_pos, "assertion:sym<[>")
    .return (rx236_cur)
  rx236_fail:
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    .return (rx236_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block237"  :anon :subid("69_1255814464.54656") :method :outer("68_1255814464.54656")
.annotate "line", 142
    .local string rx239_tgt
    .local int rx239_pos
    .local int rx239_off
    .local int rx239_eos
    .local int rx239_rep
    .local pmc rx239_cur
    (rx239_cur, rx239_pos, rx239_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx239_cur
    length rx239_eos, rx239_tgt
    set rx239_off, 0
    lt $I10, 2, rx239_start
    sub rx239_off, $I10, 1
    substr rx239_tgt, rx239_tgt, rx239_off
  rx239_start:
    ge rx239_pos, 0, rxscan240_done
  rxscan240_loop:
    ($P10) = rx239_cur."from"()
    inc $P10
    set rx239_pos, $P10
    ge rx239_pos, rx239_eos, rxscan240_done
    set_addr $I10, rxscan240_loop
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
  rxscan240_done:
  alt241_0:
    set_addr $I10, alt241_1
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
  # rx literal  "["
    add $I11, rx239_pos, 1
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I11, 1
    ne $S10, "[", rx239_fail
    add rx239_pos, 1
    goto alt241_end
  alt241_1:
    set_addr $I10, alt241_2
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
  # rx literal  "+"
    add $I11, rx239_pos, 1
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I11, 1
    ne $S10, "+", rx239_fail
    add rx239_pos, 1
    goto alt241_end
  alt241_2:
  # rx literal  "-"
    add $I11, rx239_pos, 1
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I11, 1
    ne $S10, "-", rx239_fail
    add rx239_pos, 1
  alt241_end:
  # rx pass
    rx239_cur."!cursor_pass"(rx239_pos, "")
    .return (rx239_cur)
  rx239_fail:
    (rx239_rep, rx239_pos, $I10, $P10) = rx239_cur."!mark_fail"(0)
    lt rx239_pos, -1, rx239_done
    eq rx239_pos, -1, rx239_fail
    jump $I10
  rx239_done:
    rx239_cur."!cursor_fail"()
    .return (rx239_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("70_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 144
    .const 'Sub' $P253 = "71_1255814464.54656" 
    capture_lex $P253
    .local string rx245_tgt
    .local int rx245_pos
    .local int rx245_off
    .local int rx245_eos
    .local int rx245_rep
    .local pmc rx245_cur
    (rx245_cur, rx245_pos, rx245_tgt, $I10) = self."!cursor_start"()
    rx245_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx245_cur
    length rx245_eos, rx245_tgt
    set rx245_off, 0
    lt $I10, 2, rx245_start
    sub rx245_off, $I10, 1
    substr rx245_tgt, rx245_tgt, rx245_off
  rx245_start:
.annotate "line", 145
  # rx subcapture "sign"
    set_addr $I10, rxcap_247_fail
    rx245_cur."!mark_push"(0, rx245_pos, $I10)
  alt246_0:
    set_addr $I10, alt246_1
    rx245_cur."!mark_push"(0, rx245_pos, $I10)
  # rx literal  "+"
    add $I11, rx245_pos, 1
    gt $I11, rx245_eos, rx245_fail
    sub $I11, rx245_pos, rx245_off
    substr $S10, rx245_tgt, $I11, 1
    ne $S10, "+", rx245_fail
    add rx245_pos, 1
    goto alt246_end
  alt246_1:
    set_addr $I10, alt246_2
    rx245_cur."!mark_push"(0, rx245_pos, $I10)
  # rx literal  "-"
    add $I11, rx245_pos, 1
    gt $I11, rx245_eos, rx245_fail
    sub $I11, rx245_pos, rx245_off
    substr $S10, rx245_tgt, $I11, 1
    ne $S10, "-", rx245_fail
    add rx245_pos, 1
    goto alt246_end
  alt246_2:
  alt246_end:
    set_addr $I10, rxcap_247_fail
    ($I12, $I11) = rx245_cur."!mark_peek"($I10)
    rx245_cur."!cursor_pos"($I11)
    ($P10) = rx245_cur."!cursor_start"()
    $P10."!cursor_pass"(rx245_pos, "")
    rx245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_247_done
  rxcap_247_fail:
    goto rx245_fail
  rxcap_247_done:
.annotate "line", 146
  # rx rxquantr248 ** 0..1
    set_addr $I249, rxquantr248_done
    rx245_cur."!mark_push"(0, rx245_pos, $I249)
  rxquantr248_loop:
  # rx subrule "normspace" subtype=method negate=
    rx245_cur."!cursor_pos"(rx245_pos)
    $P10 = rx245_cur."normspace"()
    unless $P10, rx245_fail
    rx245_pos = $P10."pos"()
    rx245_cur."!mark_push"(0, -1, 0, $P10)
    (rx245_rep) = rx245_cur."!mark_commit"($I249)
  rxquantr248_done:
  alt250_0:
.annotate "line", 147
    set_addr $I10, alt250_1
    rx245_cur."!mark_push"(0, rx245_pos, $I10)
.annotate "line", 148
  # rx literal  "["
    add $I11, rx245_pos, 1
    gt $I11, rx245_eos, rx245_fail
    sub $I11, rx245_pos, rx245_off
    substr $S10, rx245_tgt, $I11, 1
    ne $S10, "[", rx245_fail
    add rx245_pos, 1
.annotate "line", 151
  # rx rxquantr251 ** 0..*
    set_addr $I272, rxquantr251_done
    rx245_cur."!mark_push"(0, rx245_pos, $I272)
  rxquantr251_loop:
.annotate "line", 148
  # rx subrule $P253 subtype=capture negate=
    rx245_cur."!cursor_pos"(rx245_pos)
    .const 'Sub' $P253 = "71_1255814464.54656" 
    capture_lex $P253
    $P10 = rx245_cur.$P253()
    unless $P10, rx245_fail
    rx245_pos = $P10."pos"()
    rx245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
.annotate "line", 151
    (rx245_rep) = rx245_cur."!mark_commit"($I272)
    rx245_cur."!mark_push"(rx245_rep, rx245_pos, $I272)
    goto rxquantr251_loop
  rxquantr251_done:
.annotate "line", 152
  # rx charclass_q s r 0..-1
    sub $I10, rx245_pos, rx245_off
    find_not_cclass $I11, 32, rx245_tgt, $I10, rx245_eos
    add rx245_pos, rx245_off, $I11
  # rx literal  "]"
    add $I11, rx245_pos, 1
    gt $I11, rx245_eos, rx245_fail
    sub $I11, rx245_pos, rx245_off
    substr $S10, rx245_tgt, $I11, 1
    ne $S10, "]", rx245_fail
    add rx245_pos, 1
.annotate "line", 148
    goto alt250_end
  alt250_1:
.annotate "line", 153
  # rx subcapture "name"
    set_addr $I10, rxcap_273_fail
    rx245_cur."!mark_push"(0, rx245_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx245_pos, rx245_off
    find_not_cclass $I11, 8192, rx245_tgt, $I10, rx245_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx245_fail
    add rx245_pos, rx245_off, $I11
    set_addr $I10, rxcap_273_fail
    ($I12, $I11) = rx245_cur."!mark_peek"($I10)
    rx245_cur."!cursor_pos"($I11)
    ($P10) = rx245_cur."!cursor_start"()
    $P10."!cursor_pass"(rx245_pos, "")
    rx245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_273_done
  rxcap_273_fail:
    goto rx245_fail
  rxcap_273_done:
  alt250_end:
.annotate "line", 155
  # rx rxquantr274 ** 0..1
    set_addr $I275, rxquantr274_done
    rx245_cur."!mark_push"(0, rx245_pos, $I275)
  rxquantr274_loop:
  # rx subrule "normspace" subtype=method negate=
    rx245_cur."!cursor_pos"(rx245_pos)
    $P10 = rx245_cur."normspace"()
    unless $P10, rx245_fail
    rx245_pos = $P10."pos"()
    rx245_cur."!mark_push"(0, -1, 0, $P10)
    (rx245_rep) = rx245_cur."!mark_commit"($I275)
  rxquantr274_done:
.annotate "line", 144
  # rx pass
    rx245_cur."!cursor_pass"(rx245_pos, "cclass_elem")
    .return (rx245_cur)
  rx245_fail:
    (rx245_rep, rx245_pos, $I10, $P10) = rx245_cur."!mark_fail"(0)
    lt rx245_pos, -1, rx245_done
    eq rx245_pos, -1, rx245_fail
    jump $I10
  rx245_done:
    rx245_cur."!cursor_fail"()
    .return (rx245_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block252"  :anon :subid("71_1255814464.54656") :method :outer("70_1255814464.54656")
.annotate "line", 148
    .const 'Sub' $P268 = "74_1255814464.54656" 
    capture_lex $P268
    .const 'Sub' $P263 = "73_1255814464.54656" 
    capture_lex $P263
    .const 'Sub' $P259 = "72_1255814464.54656" 
    capture_lex $P259
    .local string rx254_tgt
    .local int rx254_pos
    .local int rx254_off
    .local int rx254_eos
    .local int rx254_rep
    .local pmc rx254_cur
    (rx254_cur, rx254_pos, rx254_tgt, $I10) = self."!cursor_start"()
    rx254_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx254_cur
    length rx254_eos, rx254_tgt
    set rx254_off, 0
    lt $I10, 2, rx254_start
    sub rx254_off, $I10, 1
    substr rx254_tgt, rx254_tgt, rx254_off
  rx254_start:
    ge rx254_pos, 0, rxscan255_done
  rxscan255_loop:
    ($P10) = rx254_cur."from"()
    inc $P10
    set rx254_pos, $P10
    ge rx254_pos, rx254_eos, rxscan255_done
    set_addr $I10, rxscan255_loop
    rx254_cur."!mark_push"(0, rx254_pos, $I10)
  rxscan255_done:
  alt256_0:
    set_addr $I10, alt256_1
    rx254_cur."!mark_push"(0, rx254_pos, $I10)
.annotate "line", 149
  # rx charclass_q s r 0..-1
    sub $I10, rx254_pos, rx254_off
    find_not_cclass $I11, 32, rx254_tgt, $I10, rx254_eos
    add rx254_pos, rx254_off, $I11
  # rx literal  "-"
    add $I11, rx254_pos, 1
    gt $I11, rx254_eos, rx254_fail
    sub $I11, rx254_pos, rx254_off
    substr $S10, rx254_tgt, $I11, 1
    ne $S10, "-", rx254_fail
    add rx254_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx254_cur."!cursor_pos"(rx254_pos)
    $P10 = rx254_cur."obs"("hyphen in enumerated character class;..")
    unless $P10, rx254_fail
    rx254_pos = $P10."pos"()
    rx254_cur."!mark_push"(0, -1, 0, $P10)
    goto alt256_end
  alt256_1:
.annotate "line", 150
  # rx charclass_q s r 0..-1
    sub $I10, rx254_pos, rx254_off
    find_not_cclass $I11, 32, rx254_tgt, $I10, rx254_eos
    add rx254_pos, rx254_off, $I11
  alt257_0:
    set_addr $I10, alt257_1
    rx254_cur."!mark_push"(0, rx254_pos, $I10)
  # rx literal  "\\"
    add $I11, rx254_pos, 1
    gt $I11, rx254_eos, rx254_fail
    sub $I11, rx254_pos, rx254_off
    substr $S10, rx254_tgt, $I11, 1
    ne $S10, "\\", rx254_fail
    add rx254_pos, 1
  # rx subrule $P259 subtype=capture negate=
    rx254_cur."!cursor_pos"(rx254_pos)
    .const 'Sub' $P259 = "72_1255814464.54656" 
    capture_lex $P259
    $P10 = rx254_cur.$P259()
    unless $P10, rx254_fail
    rx254_pos = $P10."pos"()
    rx254_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    goto alt257_end
  alt257_1:
  # rx subrule $P263 subtype=capture negate=
    rx254_cur."!cursor_pos"(rx254_pos)
    .const 'Sub' $P263 = "73_1255814464.54656" 
    capture_lex $P263
    $P10 = rx254_cur.$P263()
    unless $P10, rx254_fail
    rx254_pos = $P10."pos"()
    rx254_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
  alt257_end:
  # rx rxquantr266 ** 0..1
    set_addr $I271, rxquantr266_done
    rx254_cur."!mark_push"(0, rx254_pos, $I271)
  rxquantr266_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx254_pos, rx254_off
    find_not_cclass $I11, 32, rx254_tgt, $I10, rx254_eos
    add rx254_pos, rx254_off, $I11
  # rx literal  ".."
    add $I11, rx254_pos, 2
    gt $I11, rx254_eos, rx254_fail
    sub $I11, rx254_pos, rx254_off
    substr $S10, rx254_tgt, $I11, 2
    ne $S10, "..", rx254_fail
    add rx254_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx254_pos, rx254_off
    find_not_cclass $I11, 32, rx254_tgt, $I10, rx254_eos
    add rx254_pos, rx254_off, $I11
  # rx subrule $P268 subtype=capture negate=
    rx254_cur."!cursor_pos"(rx254_pos)
    .const 'Sub' $P268 = "74_1255814464.54656" 
    capture_lex $P268
    $P10 = rx254_cur.$P268()
    unless $P10, rx254_fail
    rx254_pos = $P10."pos"()
    rx254_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(1)
    (rx254_rep) = rx254_cur."!mark_commit"($I271)
  rxquantr266_done:
  alt256_end:
.annotate "line", 148
  # rx pass
    rx254_cur."!cursor_pass"(rx254_pos, "")
    .return (rx254_cur)
  rx254_fail:
    (rx254_rep, rx254_pos, $I10, $P10) = rx254_cur."!mark_fail"(0)
    lt rx254_pos, -1, rx254_done
    eq rx254_pos, -1, rx254_fail
    jump $I10
  rx254_done:
    rx254_cur."!cursor_fail"()
    .return (rx254_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block258"  :anon :subid("72_1255814464.54656") :method :outer("71_1255814464.54656")
.annotate "line", 150
    .local string rx260_tgt
    .local int rx260_pos
    .local int rx260_off
    .local int rx260_eos
    .local int rx260_rep
    .local pmc rx260_cur
    (rx260_cur, rx260_pos, rx260_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx260_cur
    length rx260_eos, rx260_tgt
    set rx260_off, 0
    lt $I10, 2, rx260_start
    sub rx260_off, $I10, 1
    substr rx260_tgt, rx260_tgt, rx260_off
  rx260_start:
    ge rx260_pos, 0, rxscan261_done
  rxscan261_loop:
    ($P10) = rx260_cur."from"()
    inc $P10
    set rx260_pos, $P10
    ge rx260_pos, rx260_eos, rxscan261_done
    set_addr $I10, rxscan261_loop
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  rxscan261_done:
  # rx charclass .
    ge rx260_pos, rx260_eos, rx260_fail
    inc rx260_pos
  # rx pass
    rx260_cur."!cursor_pass"(rx260_pos, "")
    .return (rx260_cur)
  rx260_fail:
    (rx260_rep, rx260_pos, $I10, $P10) = rx260_cur."!mark_fail"(0)
    lt rx260_pos, -1, rx260_done
    eq rx260_pos, -1, rx260_fail
    jump $I10
  rx260_done:
    rx260_cur."!cursor_fail"()
    .return (rx260_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block262"  :anon :subid("73_1255814464.54656") :method :outer("71_1255814464.54656")
.annotate "line", 150
    .local string rx264_tgt
    .local int rx264_pos
    .local int rx264_off
    .local int rx264_eos
    .local int rx264_rep
    .local pmc rx264_cur
    (rx264_cur, rx264_pos, rx264_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx264_cur
    length rx264_eos, rx264_tgt
    set rx264_off, 0
    lt $I10, 2, rx264_start
    sub rx264_off, $I10, 1
    substr rx264_tgt, rx264_tgt, rx264_off
  rx264_start:
    ge rx264_pos, 0, rxscan265_done
  rxscan265_loop:
    ($P10) = rx264_cur."from"()
    inc $P10
    set rx264_pos, $P10
    ge rx264_pos, rx264_eos, rxscan265_done
    set_addr $I10, rxscan265_loop
    rx264_cur."!mark_push"(0, rx264_pos, $I10)
  rxscan265_done:
  # rx enumcharlist negate=1 
    ge rx264_pos, rx264_eos, rx264_fail
    sub $I10, rx264_pos, rx264_off
    substr $S10, rx264_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx264_fail
    inc rx264_pos
  # rx pass
    rx264_cur."!cursor_pass"(rx264_pos, "")
    .return (rx264_cur)
  rx264_fail:
    (rx264_rep, rx264_pos, $I10, $P10) = rx264_cur."!mark_fail"(0)
    lt rx264_pos, -1, rx264_done
    eq rx264_pos, -1, rx264_fail
    jump $I10
  rx264_done:
    rx264_cur."!cursor_fail"()
    .return (rx264_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block267"  :anon :subid("74_1255814464.54656") :method :outer("71_1255814464.54656")
.annotate "line", 150
    .local string rx269_tgt
    .local int rx269_pos
    .local int rx269_off
    .local int rx269_eos
    .local int rx269_rep
    .local pmc rx269_cur
    (rx269_cur, rx269_pos, rx269_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx269_cur
    length rx269_eos, rx269_tgt
    set rx269_off, 0
    lt $I10, 2, rx269_start
    sub rx269_off, $I10, 1
    substr rx269_tgt, rx269_tgt, rx269_off
  rx269_start:
    ge rx269_pos, 0, rxscan270_done
  rxscan270_loop:
    ($P10) = rx269_cur."from"()
    inc $P10
    set rx269_pos, $P10
    ge rx269_pos, rx269_eos, rxscan270_done
    set_addr $I10, rxscan270_loop
    rx269_cur."!mark_push"(0, rx269_pos, $I10)
  rxscan270_done:
  # rx charclass .
    ge rx269_pos, rx269_eos, rx269_fail
    inc rx269_pos
  # rx pass
    rx269_cur."!cursor_pass"(rx269_pos, "")
    .return (rx269_cur)
  rx269_fail:
    (rx269_rep, rx269_pos, $I10, $P10) = rx269_cur."!mark_fail"(0)
    lt rx269_pos, -1, rx269_done
    eq rx269_pos, -1, rx269_fail
    jump $I10
  rx269_done:
    rx269_cur."!cursor_fail"()
    .return (rx269_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("75_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 159
    .const 'Sub' $P281 = "76_1255814464.54656" 
    capture_lex $P281
    .local string rx277_tgt
    .local int rx277_pos
    .local int rx277_off
    .local int rx277_eos
    .local int rx277_rep
    .local pmc rx277_cur
    (rx277_cur, rx277_pos, rx277_tgt, $I10) = self."!cursor_start"()
    rx277_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx277_cur
    length rx277_eos, rx277_tgt
    set rx277_off, 0
    lt $I10, 2, rx277_start
    sub rx277_off, $I10, 1
    substr rx277_tgt, rx277_tgt, rx277_off
  rx277_start:
  alt278_0:
.annotate "line", 160
    set_addr $I10, alt278_1
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
.annotate "line", 161
  # rx literal  ":"
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    substr $S10, rx277_tgt, $I11, 1
    ne $S10, ":", rx277_fail
    add rx277_pos, 1
  # rx rxquantr279 ** 1..1
    set_addr $I285, rxquantr279_done
    rx277_cur."!mark_push"(0, -1, $I285)
  rxquantr279_loop:
  # rx subrule $P281 subtype=capture negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    .const 'Sub' $P281 = "76_1255814464.54656" 
    capture_lex $P281
    $P10 = rx277_cur.$P281()
    unless $P10, rx277_fail
    rx277_pos = $P10."pos"()
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    (rx277_rep) = rx277_cur."!mark_commit"($I285)
  rxquantr279_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."mod_ident"()
    unless $P10, rx277_fail
    rx277_pos = $P10."pos"()
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
  # rxanchor rwb
    le rx277_pos, 0, rx277_fail
    sub $I10, rx277_pos, rx277_off
    is_cclass $I11, 8192, rx277_tgt, $I10
    if $I11, rx277_fail
    dec $I10
    is_cclass $I11, 8192, rx277_tgt, $I10
    unless $I11, rx277_fail
    goto alt278_end
  alt278_1:
.annotate "line", 162
  # rx literal  ":"
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    substr $S10, rx277_tgt, $I11, 1
    ne $S10, ":", rx277_fail
    add rx277_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."mod_ident"()
    unless $P10, rx277_fail
    rx277_pos = $P10."pos"()
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
  # rx rxquantr286 ** 0..1
    set_addr $I288, rxquantr286_done
    rx277_cur."!mark_push"(0, rx277_pos, $I288)
  rxquantr286_loop:
  # rx literal  "("
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    substr $S10, rx277_tgt, $I11, 1
    ne $S10, "(", rx277_fail
    add rx277_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_287_fail
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx277_pos, rx277_off
    find_not_cclass $I11, 8, rx277_tgt, $I10, rx277_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx277_fail
    add rx277_pos, rx277_off, $I11
    set_addr $I10, rxcap_287_fail
    ($I12, $I11) = rx277_cur."!mark_peek"($I10)
    rx277_cur."!cursor_pos"($I11)
    ($P10) = rx277_cur."!cursor_start"()
    $P10."!cursor_pass"(rx277_pos, "")
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_287_done
  rxcap_287_fail:
    goto rx277_fail
  rxcap_287_done:
  # rx literal  ")"
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    substr $S10, rx277_tgt, $I11, 1
    ne $S10, ")", rx277_fail
    add rx277_pos, 1
    (rx277_rep) = rx277_cur."!mark_commit"($I288)
  rxquantr286_done:
  alt278_end:
.annotate "line", 159
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "mod_internal")
    .return (rx277_cur)
  rx277_fail:
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    .return (rx277_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block280"  :anon :subid("76_1255814464.54656") :method :outer("75_1255814464.54656")
.annotate "line", 161
    .local string rx282_tgt
    .local int rx282_pos
    .local int rx282_off
    .local int rx282_eos
    .local int rx282_rep
    .local pmc rx282_cur
    (rx282_cur, rx282_pos, rx282_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx282_cur
    length rx282_eos, rx282_tgt
    set rx282_off, 0
    lt $I10, 2, rx282_start
    sub rx282_off, $I10, 1
    substr rx282_tgt, rx282_tgt, rx282_off
  rx282_start:
    ge rx282_pos, 0, rxscan283_done
  rxscan283_loop:
    ($P10) = rx282_cur."from"()
    inc $P10
    set rx282_pos, $P10
    ge rx282_pos, rx282_eos, rxscan283_done
    set_addr $I10, rxscan283_loop
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  rxscan283_done:
  alt284_0:
    set_addr $I10, alt284_1
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx literal  "!"
    add $I11, rx282_pos, 1
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I11, 1
    ne $S10, "!", rx282_fail
    add rx282_pos, 1
    goto alt284_end
  alt284_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx282_pos, rx282_off
    find_not_cclass $I11, 8, rx282_tgt, $I10, rx282_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx282_fail
    add rx282_pos, rx282_off, $I11
  alt284_end:
  # rx pass
    rx282_cur."!cursor_pass"(rx282_pos, "")
    .return (rx282_cur)
  rx282_fail:
    (rx282_rep, rx282_pos, $I10, $P10) = rx282_cur."!mark_fail"(0)
    lt rx282_pos, -1, rx282_done
    eq rx282_pos, -1, rx282_fail
    jump $I10
  rx282_done:
    rx282_cur."!cursor_fail"()
    .return (rx282_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("77_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 167
    .local string rx290_tgt
    .local int rx290_pos
    .local int rx290_off
    .local int rx290_eos
    .local int rx290_rep
    .local pmc rx290_cur
    (rx290_cur, rx290_pos, rx290_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx290_cur
    length rx290_eos, rx290_tgt
    set rx290_off, 0
    lt $I10, 2, rx290_start
    sub rx290_off, $I10, 1
    substr rx290_tgt, rx290_tgt, rx290_off
  rx290_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_291_fail
    rx290_cur."!mark_push"(0, rx290_pos, $I10)
  # rx literal  "i"
    add $I11, rx290_pos, 1
    gt $I11, rx290_eos, rx290_fail
    sub $I11, rx290_pos, rx290_off
    substr $S10, rx290_tgt, $I11, 1
    ne $S10, "i", rx290_fail
    add rx290_pos, 1
    set_addr $I10, rxcap_291_fail
    ($I12, $I11) = rx290_cur."!mark_peek"($I10)
    rx290_cur."!cursor_pos"($I11)
    ($P10) = rx290_cur."!cursor_start"()
    $P10."!cursor_pass"(rx290_pos, "")
    rx290_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_291_done
  rxcap_291_fail:
    goto rx290_fail
  rxcap_291_done:
  # rx rxquantr292 ** 0..1
    set_addr $I293, rxquantr292_done
    rx290_cur."!mark_push"(0, rx290_pos, $I293)
  rxquantr292_loop:
  # rx literal  "gnorecase"
    add $I11, rx290_pos, 9
    gt $I11, rx290_eos, rx290_fail
    sub $I11, rx290_pos, rx290_off
    substr $S10, rx290_tgt, $I11, 9
    ne $S10, "gnorecase", rx290_fail
    add rx290_pos, 9
    (rx290_rep) = rx290_cur."!mark_commit"($I293)
  rxquantr292_done:
  # rx pass
    rx290_cur."!cursor_pass"(rx290_pos, "mod_ident:sym<ignorecase>")
    .return (rx290_cur)
  rx290_fail:
    (rx290_rep, rx290_pos, $I10, $P10) = rx290_cur."!mark_fail"(0)
    lt rx290_pos, -1, rx290_done
    eq rx290_pos, -1, rx290_fail
    jump $I10
  rx290_done:
    rx290_cur."!cursor_fail"()
    .return (rx290_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("78_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 168
    .local string rx295_tgt
    .local int rx295_pos
    .local int rx295_off
    .local int rx295_eos
    .local int rx295_rep
    .local pmc rx295_cur
    (rx295_cur, rx295_pos, rx295_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx295_cur
    length rx295_eos, rx295_tgt
    set rx295_off, 0
    lt $I10, 2, rx295_start
    sub rx295_off, $I10, 1
    substr rx295_tgt, rx295_tgt, rx295_off
  rx295_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_296_fail
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  # rx literal  "r"
    add $I11, rx295_pos, 1
    gt $I11, rx295_eos, rx295_fail
    sub $I11, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I11, 1
    ne $S10, "r", rx295_fail
    add rx295_pos, 1
    set_addr $I10, rxcap_296_fail
    ($I12, $I11) = rx295_cur."!mark_peek"($I10)
    rx295_cur."!cursor_pos"($I11)
    ($P10) = rx295_cur."!cursor_start"()
    $P10."!cursor_pass"(rx295_pos, "")
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_296_done
  rxcap_296_fail:
    goto rx295_fail
  rxcap_296_done:
  # rx rxquantr297 ** 0..1
    set_addr $I298, rxquantr297_done
    rx295_cur."!mark_push"(0, rx295_pos, $I298)
  rxquantr297_loop:
  # rx literal  "atchet"
    add $I11, rx295_pos, 6
    gt $I11, rx295_eos, rx295_fail
    sub $I11, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I11, 6
    ne $S10, "atchet", rx295_fail
    add rx295_pos, 6
    (rx295_rep) = rx295_cur."!mark_commit"($I298)
  rxquantr297_done:
  # rx pass
    rx295_cur."!cursor_pass"(rx295_pos, "mod_ident:sym<ratchet>")
    .return (rx295_cur)
  rx295_fail:
    (rx295_rep, rx295_pos, $I10, $P10) = rx295_cur."!mark_fail"(0)
    lt rx295_pos, -1, rx295_done
    eq rx295_pos, -1, rx295_fail
    jump $I10
  rx295_done:
    rx295_cur."!cursor_fail"()
    .return (rx295_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("79_1255814464.54656") :method :outer("10_1255814464.54656")
.annotate "line", 169
    .local string rx300_tgt
    .local int rx300_pos
    .local int rx300_off
    .local int rx300_eos
    .local int rx300_rep
    .local pmc rx300_cur
    (rx300_cur, rx300_pos, rx300_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx300_cur
    length rx300_eos, rx300_tgt
    set rx300_off, 0
    lt $I10, 2, rx300_start
    sub rx300_off, $I10, 1
    substr rx300_tgt, rx300_tgt, rx300_off
  rx300_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_301_fail
    rx300_cur."!mark_push"(0, rx300_pos, $I10)
  # rx literal  "s"
    add $I11, rx300_pos, 1
    gt $I11, rx300_eos, rx300_fail
    sub $I11, rx300_pos, rx300_off
    substr $S10, rx300_tgt, $I11, 1
    ne $S10, "s", rx300_fail
    add rx300_pos, 1
    set_addr $I10, rxcap_301_fail
    ($I12, $I11) = rx300_cur."!mark_peek"($I10)
    rx300_cur."!cursor_pos"($I11)
    ($P10) = rx300_cur."!cursor_start"()
    $P10."!cursor_pass"(rx300_pos, "")
    rx300_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_301_done
  rxcap_301_fail:
    goto rx300_fail
  rxcap_301_done:
  # rx rxquantr302 ** 0..1
    set_addr $I303, rxquantr302_done
    rx300_cur."!mark_push"(0, rx300_pos, $I303)
  rxquantr302_loop:
  # rx literal  "igspace"
    add $I11, rx300_pos, 7
    gt $I11, rx300_eos, rx300_fail
    sub $I11, rx300_pos, rx300_off
    substr $S10, rx300_tgt, $I11, 7
    ne $S10, "igspace", rx300_fail
    add rx300_pos, 7
    (rx300_rep) = rx300_cur."!mark_commit"($I303)
  rxquantr302_done:
  # rx pass
    rx300_cur."!cursor_pass"(rx300_pos, "mod_ident:sym<sigspace>")
    .return (rx300_cur)
  rx300_fail:
    (rx300_rep, rx300_pos, $I10, $P10) = rx300_cur."!mark_fail"(0)
    lt rx300_pos, -1, rx300_done
    eq rx300_pos, -1, rx300_fail
    jump $I10
  rx300_done:
    rx300_cur."!cursor_fail"()
    .return (rx300_cur)
    .return ()
.end

### .include 'src/gen/p6regex-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1255814459.41921")
.annotate "line", 4
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
.annotate "line", 1
    .return ($P14)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block13" :init :load :subid("11_1255814459.41921")
.annotate "line", 4
    .const 'Sub' $P1330 = "114_1255814459.41921" 
    capture_lex $P1330
    .const 'Sub' $P1089 = "98_1255814459.41921" 
    capture_lex $P1089
    .const 'Sub' $P1069 = "97_1255814459.41921" 
    capture_lex $P1069
    .const 'Sub' $P1042 = "96_1255814459.41921" 
    capture_lex $P1042
    .const 'Sub' $P974 = "90_1255814459.41921" 
    capture_lex $P974
    .const 'Sub' $P905 = "85_1255814459.41921" 
    capture_lex $P905
    .const 'Sub' $P835 = "79_1255814459.41921" 
    capture_lex $P835
    .const 'Sub' $P823 = "78_1255814459.41921" 
    capture_lex $P823
    .const 'Sub' $P795 = "75_1255814459.41921" 
    capture_lex $P795
    .const 'Sub' $P773 = "72_1255814459.41921" 
    capture_lex $P773
    .const 'Sub' $P760 = "71_1255814459.41921" 
    capture_lex $P760
    .const 'Sub' $P745 = "70_1255814459.41921" 
    capture_lex $P745
    .const 'Sub' $P730 = "69_1255814459.41921" 
    capture_lex $P730
    .const 'Sub' $P715 = "68_1255814459.41921" 
    capture_lex $P715
    .const 'Sub' $P700 = "67_1255814459.41921" 
    capture_lex $P700
    .const 'Sub' $P685 = "66_1255814459.41921" 
    capture_lex $P685
    .const 'Sub' $P670 = "65_1255814459.41921" 
    capture_lex $P670
    .const 'Sub' $P655 = "64_1255814459.41921" 
    capture_lex $P655
    .const 'Sub' $P633 = "63_1255814459.41921" 
    capture_lex $P633
    .const 'Sub' $P559 = "57_1255814459.41921" 
    capture_lex $P559
    .const 'Sub' $P539 = "56_1255814459.41921" 
    capture_lex $P539
    .const 'Sub' $P529 = "55_1255814459.41921" 
    capture_lex $P529
    .const 'Sub' $P519 = "54_1255814459.41921" 
    capture_lex $P519
    .const 'Sub' $P509 = "53_1255814459.41921" 
    capture_lex $P509
    .const 'Sub' $P498 = "52_1255814459.41921" 
    capture_lex $P498
    .const 'Sub' $P487 = "51_1255814459.41921" 
    capture_lex $P487
    .const 'Sub' $P476 = "50_1255814459.41921" 
    capture_lex $P476
    .const 'Sub' $P465 = "49_1255814459.41921" 
    capture_lex $P465
    .const 'Sub' $P454 = "48_1255814459.41921" 
    capture_lex $P454
    .const 'Sub' $P443 = "47_1255814459.41921" 
    capture_lex $P443
    .const 'Sub' $P432 = "46_1255814459.41921" 
    capture_lex $P432
    .const 'Sub' $P421 = "45_1255814459.41921" 
    capture_lex $P421
    .const 'Sub' $P406 = "44_1255814459.41921" 
    capture_lex $P406
    .const 'Sub' $P390 = "43_1255814459.41921" 
    capture_lex $P390
    .const 'Sub' $P380 = "42_1255814459.41921" 
    capture_lex $P380
    .const 'Sub' $P363 = "41_1255814459.41921" 
    capture_lex $P363
    .const 'Sub' $P303 = "36_1255814459.41921" 
    capture_lex $P303
    .const 'Sub' $P287 = "35_1255814459.41921" 
    capture_lex $P287
    .const 'Sub' $P273 = "34_1255814459.41921" 
    capture_lex $P273
    .const 'Sub' $P259 = "33_1255814459.41921" 
    capture_lex $P259
    .const 'Sub' $P225 = "29_1255814459.41921" 
    capture_lex $P225
    .const 'Sub' $P168 = "24_1255814459.41921" 
    capture_lex $P168
    .const 'Sub' $P107 = "19_1255814459.41921" 
    capture_lex $P107
    .const 'Sub' $P49 = "14_1255814459.41921" 
    capture_lex $P49
    .const 'Sub' $P35 = "13_1255814459.41921" 
    capture_lex $P35
    .const 'Sub' $P17 = "12_1255814459.41921" 
    capture_lex $P17
$P15 = get_root_global ["parrot"], "P6metaclass"
    $P15."new_class"("Regex::P6Regex::Actions")
 
        $P16 = new ['ResizablePMCArray'] 
        $P0 = new ['Hash']
        push $P16, $P0
    
    set_global "@MODIFIERS", $P16
.annotate "line", 469
    .const 'Sub' $P1330 = "114_1255814459.41921" 
    capture_lex $P1330
.annotate "line", 4
    .return ($P1330)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("12_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P25, vivify_118
    new $P25, "Undef"
  vivify_118:
    if $P25, if_23
    find_lex $P30, "$/"
    set $P31, $P30["val"]
    unless_null $P31, vivify_119
    new $P31, "Undef"
  vivify_119:
    set $N32, $P31
    new $P22, 'Float'
    set $P22, $N32
    goto if_23_end
  if_23:
    find_lex $P26, "$/"
    set $P27, $P26["quote"]
    unless_null $P27, vivify_120
    new $P27, "Hash"
  vivify_120:
    set $P28, $P27["val"]
    unless_null $P28, vivify_121
    new $P28, "Undef"
  vivify_121:
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
.sub "TOP"  :subid("13_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P40, vivify_122
    new $P40, "Undef"
  vivify_122:
    $P41 = $P40."ast"()
    $P42 = "buildsub"($P41)
    .lex "$past", $P42
.annotate "line", 16
    find_lex $P43, "$past"
    unless_null $P43, vivify_123
    new $P43, "Undef"
  vivify_123:
    find_lex $P44, "$/"
    unless_null $P44, vivify_124
    new $P44, "Undef"
  vivify_124:
    $P43."node"($P44)
    find_lex $P45, "$/"
.annotate "line", 17
    find_lex $P46, "$past"
    unless_null $P46, vivify_125
    new $P46, "Undef"
  vivify_125:
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
.sub "nibbler"  :subid("14_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_52
    .param pmc param_53 :optional
    .param int has_param_53 :opt_flag
.annotate "line", 20
    .const 'Sub' $P98 = "18_1255814459.41921" 
    capture_lex $P98
    .const 'Sub' $P78 = "16_1255814459.41921" 
    capture_lex $P78
    .const 'Sub' $P60 = "15_1255814459.41921" 
    capture_lex $P60
    new $P51, 'ExceptionHandler'
    set_addr $P51, control_50
    $P51."handle_types"(58)
    push_eh $P51
    .lex "self", self
    .lex "$/", param_52
    if has_param_53, optparam_126
    new $P54, "Undef"
    set param_53, $P54
  optparam_126:
    .lex "$key", param_53
.annotate "line", 21
    find_lex $P56, "$key"
    unless_null $P56, vivify_127
    new $P56, "Undef"
  vivify_127:
    set $S57, $P56
    iseq $I58, $S57, "open"
    unless $I58, if_55_end
    .const 'Sub' $P60 = "15_1255814459.41921" 
    capture_lex $P60
    $P60()
  if_55_end:
.annotate "line", 31
    get_global $P68, "@MODIFIERS"
    unless_null $P68, vivify_132
    new $P68, "ResizablePMCArray"
  vivify_132:
    $P68."shift"()
.annotate "line", 32
    new $P69, "Undef"
    .lex "$past", $P69
.annotate "line", 33
    find_lex $P71, "$/"
    set $P72, $P71["termish"]
    unless_null $P72, vivify_133
    new $P72, "Undef"
  vivify_133:
    set $N73, $P72
    new $P74, "Integer"
    assign $P74, 1
    set $N75, $P74
    isgt $I76, $N73, $N75
    if $I76, if_70
.annotate "line", 39
    .const 'Sub' $P98 = "18_1255814459.41921" 
    capture_lex $P98
    $P98()
    goto if_70_end
  if_70:
.annotate "line", 33
    .const 'Sub' $P78 = "16_1255814459.41921" 
    capture_lex $P78
    $P78()
  if_70_end:
    find_lex $P103, "$/"
.annotate "line", 42
    find_lex $P104, "$past"
    unless_null $P104, vivify_141
    new $P104, "Undef"
  vivify_141:
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
.sub "_block59"  :anon :subid("15_1255814459.41921") :outer("14_1255814459.41921")
.annotate "line", 22
    get_global $P61, "@MODIFIERS"
    unless_null $P61, vivify_128
    new $P61, "ResizablePMCArray"
  vivify_128:
    set $P62, $P61[0]
    unless_null $P62, vivify_129
    new $P62, "Undef"
  vivify_129:
    .lex "%old", $P62
.annotate "line", 23

                       $P0 = find_lex '%old'
                       $P63 = clone $P0
                   
    .lex "%new", $P63
.annotate "line", 27
    get_global $P64, "@MODIFIERS"
    unless_null $P64, vivify_130
    new $P64, "ResizablePMCArray"
  vivify_130:
    find_lex $P65, "%new"
    unless_null $P65, vivify_131
    new $P65, "Hash"
  vivify_131:
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
.sub "_block97"  :anon :subid("18_1255814459.41921") :outer("14_1255814459.41921")
.annotate "line", 40
    find_lex $P99, "$/"
    set $P100, $P99["termish"]
    unless_null $P100, vivify_134
    new $P100, "ResizablePMCArray"
  vivify_134:
    set $P101, $P100[0]
    unless_null $P101, vivify_135
    new $P101, "Undef"
  vivify_135:
    $P102 = $P101."ast"()
    store_lex "$past", $P102
.annotate "line", 39
    .return ($P102)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block77"  :anon :subid("16_1255814459.41921") :outer("14_1255814459.41921")
.annotate "line", 33
    .const 'Sub' $P88 = "17_1255814459.41921" 
    capture_lex $P88
.annotate "line", 34
    get_hll_global $P79, ["PAST"], "Regex"
    find_lex $P80, "$/"
    unless_null $P80, vivify_136
    new $P80, "Undef"
  vivify_136:
    $P81 = $P79."new"("alt" :named("pasttype"), $P80 :named("node"))
    store_lex "$past", $P81
.annotate "line", 35
    find_lex $P83, "$/"
    set $P84, $P83["termish"]
    unless_null $P84, vivify_137
    new $P84, "Undef"
  vivify_137:
    defined $I85, $P84
    unless $I85, for_undef_138
    iter $P82, $P84
    new $P95, 'ExceptionHandler'
    set_addr $P95, loop94_handler
    $P95."handle_types"(65, 67, 66)
    push_eh $P95
  loop94_test:
    unless $P82, loop94_done
    shift $P86, $P82
  loop94_redo:
    .const 'Sub' $P88 = "17_1255814459.41921" 
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
  for_undef_138:
.annotate "line", 33
    .return ($P82)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block87"  :anon :subid("17_1255814459.41921") :outer("16_1255814459.41921")
    .param pmc param_89
.annotate "line", 35
    .lex "$_", param_89
.annotate "line", 36
    find_lex $P90, "$past"
    unless_null $P90, vivify_139
    new $P90, "Undef"
  vivify_139:
    find_lex $P91, "$_"
    unless_null $P91, vivify_140
    new $P91, "Undef"
  vivify_140:
    $P92 = $P91."ast"()
    $P93 = $P90."push"($P92)
.annotate "line", 35
    .return ($P93)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "termish"  :subid("19_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_110
.annotate "line", 45
    .const 'Sub' $P121 = "20_1255814459.41921" 
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
    unless_null $P112, vivify_142
    new $P112, "Undef"
  vivify_142:
    $P113 = $P111."new"("concat" :named("pasttype"), $P112 :named("node"))
    .lex "$past", $P113
.annotate "line", 47
    new $P114, "Integer"
    assign $P114, 0
    .lex "$lastlit", $P114
.annotate "line", 48
    find_lex $P116, "$/"
    set $P117, $P116["noun"]
    unless_null $P117, vivify_143
    new $P117, "Undef"
  vivify_143:
    defined $I118, $P117
    unless $I118, for_undef_144
    iter $P115, $P117
    new $P162, 'ExceptionHandler'
    set_addr $P162, loop161_handler
    $P162."handle_types"(65, 67, 66)
    push_eh $P162
  loop161_test:
    unless $P115, loop161_done
    shift $P119, $P115
  loop161_redo:
    .const 'Sub' $P121 = "20_1255814459.41921" 
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
  for_undef_144:
    find_lex $P164, "$/"
.annotate "line", 59
    find_lex $P165, "$past"
    unless_null $P165, vivify_158
    new $P165, "Undef"
  vivify_158:
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
.sub "_block120"  :anon :subid("20_1255814459.41921") :outer("19_1255814459.41921")
    .param pmc param_122
.annotate "line", 48
    .const 'Sub' $P150 = "23_1255814459.41921" 
    capture_lex $P150
    .const 'Sub' $P141 = "22_1255814459.41921" 
    capture_lex $P141
    .const 'Sub' $P130 = "21_1255814459.41921" 
    capture_lex $P130
    .lex "$_", param_122
.annotate "line", 49
    find_lex $P123, "$_"
    unless_null $P123, vivify_145
    new $P123, "Undef"
  vivify_145:
    $P124 = $P123."ast"()
    .lex "$ast", $P124
.annotate "line", 50
    find_lex $P127, "$ast"
    unless_null $P127, vivify_146
    new $P127, "Undef"
  vivify_146:
    isfalse $I128, $P127
    if $I128, if_126
.annotate "line", 51
    find_lex $P136, "$lastlit"
    unless_null $P136, vivify_147
    new $P136, "Undef"
  vivify_147:
    if $P136, if_135
    set $P134, $P136
    goto if_135_end
  if_135:
    find_lex $P137, "$ast"
    unless_null $P137, vivify_148
    new $P137, "Undef"
  vivify_148:
    $S138 = $P137."pasttype"()
    iseq $I139, $S138, "literal"
    new $P134, 'Integer'
    set $P134, $I139
  if_135_end:
    if $P134, if_133
.annotate "line", 54
    .const 'Sub' $P150 = "23_1255814459.41921" 
    capture_lex $P150
    $P160 = $P150()
    set $P132, $P160
.annotate "line", 51
    goto if_133_end
  if_133:
    .const 'Sub' $P141 = "22_1255814459.41921" 
    capture_lex $P141
    $P148 = $P141()
    set $P132, $P148
  if_133_end:
.annotate "line", 50
    set $P125, $P132
    goto if_126_end
  if_126:
    .const 'Sub' $P130 = "21_1255814459.41921" 
    capture_lex $P130
    $P131 = $P130()
    set $P125, $P131
  if_126_end:
.annotate "line", 48
    .return ($P125)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block149"  :anon :subid("23_1255814459.41921") :outer("20_1255814459.41921")
.annotate "line", 55
    find_lex $P151, "$past"
    unless_null $P151, vivify_149
    new $P151, "Undef"
  vivify_149:
    find_lex $P152, "$ast"
    unless_null $P152, vivify_150
    new $P152, "Undef"
  vivify_150:
    $P151."push"($P152)
.annotate "line", 56
    find_lex $P155, "$ast"
    unless_null $P155, vivify_151
    new $P155, "Undef"
  vivify_151:
    $S156 = $P155."pasttype"()
    iseq $I157, $S156, "literal"
    if $I157, if_154
    new $P159, "Integer"
    assign $P159, 0
    set $P153, $P159
    goto if_154_end
  if_154:
    find_lex $P158, "$ast"
    unless_null $P158, vivify_152
    new $P158, "Undef"
  vivify_152:
    set $P153, $P158
  if_154_end:
    store_lex "$lastlit", $P153
.annotate "line", 54
    .return ($P153)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block140"  :anon :subid("22_1255814459.41921") :outer("20_1255814459.41921")
.annotate "line", 52
    find_lex $P142, "$lastlit"
    unless_null $P142, vivify_153
    new $P142, "ResizablePMCArray"
  vivify_153:
    set $P143, $P142[0]
    unless_null $P143, vivify_154
    new $P143, "Undef"
  vivify_154:
    find_lex $P144, "$ast"
    unless_null $P144, vivify_155
    new $P144, "ResizablePMCArray"
  vivify_155:
    set $P145, $P144[0]
    unless_null $P145, vivify_156
    new $P145, "Undef"
  vivify_156:
    concat $P146, $P143, $P145
    find_lex $P147, "$lastlit"
    unless_null $P147, vivify_157
    new $P147, "ResizablePMCArray"
    store_lex "$lastlit", $P147
  vivify_157:
    set $P147[0], $P146
.annotate "line", 51
    .return ($P146)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block129"  :anon :subid("21_1255814459.41921") :outer("20_1255814459.41921")
.annotate "line", 50
    .return ()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("24_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_171
.annotate "line", 62
    .const 'Sub' $P218 = "28_1255814459.41921" 
    capture_lex $P218
    .const 'Sub' $P199 = "27_1255814459.41921" 
    capture_lex $P199
    .const 'Sub' $P179 = "25_1255814459.41921" 
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
    unless_null $P173, vivify_159
    new $P173, "Undef"
  vivify_159:
    $P174 = $P173."ast"()
    .lex "$past", $P174
.annotate "line", 64
    find_lex $P176, "$/"
    set $P177, $P176["quantifier"]
    unless_null $P177, vivify_160
    new $P177, "Undef"
  vivify_160:
    if $P177, if_175
.annotate "line", 70
    find_lex $P195, "$/"
    set $P196, $P195["backmod"]
    unless_null $P196, vivify_161
    new $P196, "ResizablePMCArray"
  vivify_161:
    set $P197, $P196[0]
    unless_null $P197, vivify_162
    new $P197, "Undef"
  vivify_162:
    unless $P197, if_194_end
    .const 'Sub' $P199 = "27_1255814459.41921" 
    capture_lex $P199
    $P199()
  if_194_end:
.annotate "line", 64
    goto if_175_end
  if_175:
    .const 'Sub' $P179 = "25_1255814459.41921" 
    capture_lex $P179
    $P179()
  if_175_end:
.annotate "line", 71
    find_lex $P210, "$past"
    unless_null $P210, vivify_173
    new $P210, "Undef"
  vivify_173:
    if $P210, if_209
    set $P208, $P210
    goto if_209_end
  if_209:
    find_lex $P211, "$past"
    unless_null $P211, vivify_174
    new $P211, "Undef"
  vivify_174:
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
    unless_null $P214, vivify_175
    new $P214, "ResizablePMCArray"
  vivify_175:
    set $P215, $P214[0]
    unless_null $P215, vivify_176
    new $P215, "Hash"
  vivify_176:
    set $P216, $P215["r"]
    unless_null $P216, vivify_177
    new $P216, "Undef"
  vivify_177:
    set $P206, $P216
  if_207_end:
    unless $P206, if_205_end
    .const 'Sub' $P218 = "28_1255814459.41921" 
    capture_lex $P218
    $P218()
  if_205_end:
    find_lex $P221, "$/"
.annotate "line", 74
    find_lex $P222, "$past"
    unless_null $P222, vivify_179
    new $P222, "Undef"
  vivify_179:
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
.sub "_block198"  :anon :subid("27_1255814459.41921") :outer("24_1255814459.41921")
.annotate "line", 70
    find_lex $P200, "$past"
    unless_null $P200, vivify_163
    new $P200, "Undef"
  vivify_163:
    find_lex $P201, "$/"
    set $P202, $P201["backmod"]
    unless_null $P202, vivify_164
    new $P202, "ResizablePMCArray"
  vivify_164:
    set $P203, $P202[0]
    unless_null $P203, vivify_165
    new $P203, "Undef"
  vivify_165:
    $P204 = "backmod"($P200, $P203)
    .return ($P204)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block178"  :anon :subid("25_1255814459.41921") :outer("24_1255814459.41921")
.annotate "line", 64
    .const 'Sub' $P184 = "26_1255814459.41921" 
    capture_lex $P184
.annotate "line", 65
    find_lex $P181, "$past"
    unless_null $P181, vivify_166
    new $P181, "Undef"
  vivify_166:
    isfalse $I182, $P181
    unless $I182, if_180_end
    .const 'Sub' $P184 = "26_1255814459.41921" 
    capture_lex $P184
    $P184()
  if_180_end:
.annotate "line", 66
    find_lex $P187, "$/"
    set $P188, $P187["quantifier"]
    unless_null $P188, vivify_168
    new $P188, "ResizablePMCArray"
  vivify_168:
    set $P189, $P188[0]
    unless_null $P189, vivify_169
    new $P189, "Undef"
  vivify_169:
    $P190 = $P189."ast"()
    .lex "$qast", $P190
.annotate "line", 67
    find_lex $P191, "$qast"
    unless_null $P191, vivify_170
    new $P191, "Undef"
  vivify_170:
    find_lex $P192, "$past"
    unless_null $P192, vivify_171
    new $P192, "Undef"
  vivify_171:
    $P191."unshift"($P192)
.annotate "line", 68
    find_lex $P193, "$qast"
    unless_null $P193, vivify_172
    new $P193, "Undef"
  vivify_172:
    store_lex "$past", $P193
.annotate "line", 64
    .return ($P193)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block183"  :anon :subid("26_1255814459.41921") :outer("25_1255814459.41921")
.annotate "line", 65
    find_lex $P185, "$/"
    unless_null $P185, vivify_167
    new $P185, "Undef"
  vivify_167:
    $P186 = $P185."panic"("Can't quantify zero-width atom")
    .return ($P186)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block217"  :anon :subid("28_1255814459.41921") :outer("24_1255814459.41921")
.annotate "line", 72
    find_lex $P219, "$past"
    unless_null $P219, vivify_178
    new $P219, "Undef"
  vivify_178:
    $P220 = $P219."backtrack"("r")
.annotate "line", 71
    .return ($P220)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("29_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_228
.annotate "line", 77
    .const 'Sub' $P239 = "31_1255814459.41921" 
    capture_lex $P239
    .const 'Sub' $P234 = "30_1255814459.41921" 
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
    unless_null $P232, vivify_180
    new $P232, "Undef"
  vivify_180:
    if $P232, if_230
.annotate "line", 80
    .const 'Sub' $P239 = "31_1255814459.41921" 
    capture_lex $P239
    $P239()
    goto if_230_end
  if_230:
.annotate "line", 79
    .const 'Sub' $P234 = "30_1255814459.41921" 
    capture_lex $P234
    $P234()
  if_230_end:
    find_lex $P255, "$/"
.annotate "line", 84
    find_lex $P256, "$past"
    unless_null $P256, vivify_188
    new $P256, "Undef"
  vivify_188:
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
.sub "_block238"  :anon :subid("31_1255814459.41921") :outer("29_1255814459.41921")
.annotate "line", 80
    .const 'Sub' $P251 = "32_1255814459.41921" 
    capture_lex $P251
.annotate "line", 81
    get_hll_global $P240, ["PAST"], "Regex"
    find_lex $P241, "$/"
    unless_null $P241, vivify_181
    new $P241, "Undef"
  vivify_181:
    set $S242, $P241
    find_lex $P243, "$/"
    unless_null $P243, vivify_182
    new $P243, "Undef"
  vivify_182:
    $P244 = $P240."new"($S242, "literal" :named("pasttype"), $P243 :named("node"))
    store_lex "$past", $P244
.annotate "line", 82
    get_global $P247, "@MODIFIERS"
    unless_null $P247, vivify_183
    new $P247, "ResizablePMCArray"
  vivify_183:
    set $P248, $P247[0]
    unless_null $P248, vivify_184
    new $P248, "Hash"
  vivify_184:
    set $P249, $P248["i"]
    unless_null $P249, vivify_185
    new $P249, "Undef"
  vivify_185:
    if $P249, if_246
    set $P245, $P249
    goto if_246_end
  if_246:
    .const 'Sub' $P251 = "32_1255814459.41921" 
    capture_lex $P251
    $P254 = $P251()
    set $P245, $P254
  if_246_end:
.annotate "line", 80
    .return ($P245)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block250"  :anon :subid("32_1255814459.41921") :outer("31_1255814459.41921")
.annotate "line", 82
    find_lex $P252, "$past"
    unless_null $P252, vivify_186
    new $P252, "Undef"
  vivify_186:
    $P253 = $P252."subtype"("ignorecase")
    .return ($P253)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block233"  :anon :subid("30_1255814459.41921") :outer("29_1255814459.41921")
.annotate "line", 79
    find_lex $P235, "$/"
    set $P236, $P235["metachar"]
    unless_null $P236, vivify_187
    new $P236, "Undef"
  vivify_187:
    $P237 = $P236."ast"()
    store_lex "$past", $P237
    .return ($P237)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("33_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P264, vivify_189
    new $P264, "Undef"
  vivify_189:
    $P265 = $P263."new"("quant" :named("pasttype"), $P264 :named("node"))
    .lex "$past", $P265
    find_lex $P266, "$/"
.annotate "line", 89
    find_lex $P267, "$past"
    unless_null $P267, vivify_190
    new $P267, "Undef"
  vivify_190:
    find_lex $P268, "$/"
    set $P269, $P268["backmod"]
    unless_null $P269, vivify_191
    new $P269, "Undef"
  vivify_191:
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
.sub "quantifier:sym<+>"  :subid("34_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P278, vivify_192
    new $P278, "Undef"
  vivify_192:
    $P279 = $P277."new"("quant" :named("pasttype"), 1 :named("min"), $P278 :named("node"))
    .lex "$past", $P279
    find_lex $P280, "$/"
.annotate "line", 94
    find_lex $P281, "$past"
    unless_null $P281, vivify_193
    new $P281, "Undef"
  vivify_193:
    find_lex $P282, "$/"
    set $P283, $P282["backmod"]
    unless_null $P283, vivify_194
    new $P283, "Undef"
  vivify_194:
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
.sub "quantifier:sym<?>"  :subid("35_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P292, vivify_195
    new $P292, "Undef"
  vivify_195:
    $P293 = $P291."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P292 :named("node"))
    .lex "$past", $P293
    find_lex $P294, "$/"
.annotate "line", 99
    find_lex $P295, "$past"
    unless_null $P295, vivify_196
    new $P295, "Undef"
  vivify_196:
    find_lex $P296, "$/"
    set $P297, $P296["backmod"]
    unless_null $P297, vivify_197
    new $P297, "Undef"
  vivify_197:
    $P298 = "backmod"($P295, $P297)
    $P294."!make"($P298)
.annotate "line", 98
    find_lex $P299, "$/"
.annotate "line", 100
    find_lex $P300, "$past"
    unless_null $P300, vivify_198
    new $P300, "Undef"
  vivify_198:
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
.sub "quantifier:sym<**>"  :subid("36_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_306
.annotate "line", 103
    .const 'Sub' $P320 = "38_1255814459.41921" 
    capture_lex $P320
    .const 'Sub' $P312 = "37_1255814459.41921" 
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
    unless_null $P310, vivify_199
    new $P310, "Undef"
  vivify_199:
    if $P310, if_308
.annotate "line", 109
    .const 'Sub' $P320 = "38_1255814459.41921" 
    capture_lex $P320
    $P320()
    goto if_308_end
  if_308:
.annotate "line", 105
    .const 'Sub' $P312 = "37_1255814459.41921" 
    capture_lex $P312
    $P312()
  if_308_end:
    find_lex $P356, "$/"
.annotate "line", 114
    find_lex $P357, "$past"
    unless_null $P357, vivify_212
    new $P357, "Undef"
  vivify_212:
    find_lex $P358, "$/"
    set $P359, $P358["backmod"]
    unless_null $P359, vivify_213
    new $P359, "Undef"
  vivify_213:
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
.sub "_block319"  :anon :subid("38_1255814459.41921") :outer("36_1255814459.41921")
.annotate "line", 109
    .const 'Sub' $P348 = "40_1255814459.41921" 
    capture_lex $P348
    .const 'Sub' $P333 = "39_1255814459.41921" 
    capture_lex $P333
.annotate "line", 110
    get_hll_global $P321, ["PAST"], "Regex"
    find_lex $P322, "$/"
    set $P323, $P322["min"]
    unless_null $P323, vivify_200
    new $P323, "Undef"
  vivify_200:
    set $N324, $P323
    find_lex $P325, "$/"
    unless_null $P325, vivify_201
    new $P325, "Undef"
  vivify_201:
    $P326 = $P321."new"("quant" :named("pasttype"), $N324 :named("min"), $P325 :named("node"))
    store_lex "$past", $P326
.annotate "line", 111
    find_lex $P329, "$/"
    set $P330, $P329["max"]
    unless_null $P330, vivify_202
    new $P330, "Undef"
  vivify_202:
    isfalse $I331, $P330
    if $I331, if_328
.annotate "line", 112
    find_lex $P342, "$/"
    set $P343, $P342["max"]
    unless_null $P343, vivify_203
    new $P343, "ResizablePMCArray"
  vivify_203:
    set $P344, $P343[0]
    unless_null $P344, vivify_204
    new $P344, "Undef"
  vivify_204:
    set $S345, $P344
    isne $I346, $S345, "*"
    if $I346, if_341
    new $P340, 'Integer'
    set $P340, $I346
    goto if_341_end
  if_341:
    .const 'Sub' $P348 = "40_1255814459.41921" 
    capture_lex $P348
    $P355 = $P348()
    set $P340, $P355
  if_341_end:
.annotate "line", 111
    set $P327, $P340
    goto if_328_end
  if_328:
    .const 'Sub' $P333 = "39_1255814459.41921" 
    capture_lex $P333
    $P339 = $P333()
    set $P327, $P339
  if_328_end:
.annotate "line", 109
    .return ($P327)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block347"  :anon :subid("40_1255814459.41921") :outer("38_1255814459.41921")
.annotate "line", 112
    find_lex $P349, "$past"
    unless_null $P349, vivify_205
    new $P349, "Undef"
  vivify_205:
    find_lex $P350, "$/"
    set $P351, $P350["max"]
    unless_null $P351, vivify_206
    new $P351, "ResizablePMCArray"
  vivify_206:
    set $P352, $P351[0]
    unless_null $P352, vivify_207
    new $P352, "Undef"
  vivify_207:
    set $N353, $P352
    $P354 = $P349."max"($N353)
    .return ($P354)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block332"  :anon :subid("39_1255814459.41921") :outer("38_1255814459.41921")
.annotate "line", 111
    find_lex $P334, "$past"
    unless_null $P334, vivify_208
    new $P334, "Undef"
  vivify_208:
    find_lex $P335, "$/"
    set $P336, $P335["min"]
    unless_null $P336, vivify_209
    new $P336, "Undef"
  vivify_209:
    set $N337, $P336
    $P338 = $P334."max"($N337)
    .return ($P338)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block311"  :anon :subid("37_1255814459.41921") :outer("36_1255814459.41921")
.annotate "line", 106
    get_hll_global $P313, ["PAST"], "Regex"
.annotate "line", 107
    find_lex $P314, "$/"
    set $P315, $P314["quantified_atom"]
    unless_null $P315, vivify_210
    new $P315, "Undef"
  vivify_210:
    $P316 = $P315."ast"()
    find_lex $P317, "$/"
    unless_null $P317, vivify_211
    new $P317, "Undef"
  vivify_211:
    $P318 = $P313."new"("quant" :named("pasttype"), 1 :named("min"), $P316 :named("sep"), $P317 :named("node"))
.annotate "line", 106
    store_lex "$past", $P318
.annotate "line", 105
    .return ($P318)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("41_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P369, vivify_214
    new $P369, "ResizablePMCArray"
  vivify_214:
    set $P370, $P369[0]
    unless_null $P370, vivify_215
    new $P370, "Hash"
  vivify_215:
    set $P371, $P370["s"]
    unless_null $P371, vivify_216
    new $P371, "Undef"
  vivify_216:
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
    unless_null $P373, vivify_217
    new $P373, "Undef"
  vivify_217:
    $P374 = $P372."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P373 :named("node"))
.annotate "line", 119
    set $P367, $P374
  if_368_end:
    .lex "$past", $P367
.annotate "line", 118
    find_lex $P376, "$/"
.annotate "line", 122
    find_lex $P377, "$past"
    unless_null $P377, vivify_218
    new $P377, "Undef"
  vivify_218:
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
.sub "metachar:sym<[ ]>"  :subid("42_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P386, vivify_219
    new $P386, "Undef"
  vivify_219:
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
.sub "metachar:sym<( )>"  :subid("43_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P395, vivify_220
    new $P395, "Undef"
  vivify_220:
    $P396 = $P395."ast"()
    $P397 = "buildsub"($P396)
    .lex "$subpast", $P397
.annotate "line", 132
    get_hll_global $P398, ["PAST"], "Regex"
    find_lex $P399, "$subpast"
    unless_null $P399, vivify_221
    new $P399, "Undef"
  vivify_221:
.annotate "line", 133
    find_lex $P400, "$/"
    unless_null $P400, vivify_222
    new $P400, "Undef"
  vivify_222:
    $P401 = $P398."new"($P399, "subrule" :named("pasttype"), "capture" :named("subtype"), $P400 :named("node"))
.annotate "line", 132
    .lex "$past", $P401
    find_lex $P402, "$/"
.annotate "line", 134
    find_lex $P403, "$past"
    unless_null $P403, vivify_223
    new $P403, "Undef"
  vivify_223:
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
.sub "metachar:sym<'>"  :subid("44_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P412, vivify_224
    new $P412, "Hash"
  vivify_224:
    set $P413, $P412["val"]
    unless_null $P413, vivify_225
    new $P413, "Undef"
  vivify_225:
    set $S414, $P413
    find_lex $P415, "$/"
    unless_null $P415, vivify_226
    new $P415, "Undef"
  vivify_226:
    $P416 = $P410."new"($S414, "literal" :named("pasttype"), $P415 :named("node"))
    .lex "$past", $P416
    find_lex $P417, "$/"
.annotate "line", 139
    find_lex $P418, "$past"
    unless_null $P418, vivify_227
    new $P418, "Undef"
  vivify_227:
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
.sub "metachar:sym<.>"  :subid("45_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P426, vivify_228
    new $P426, "Undef"
  vivify_228:
    $P427 = $P425."new"("charclass" :named("pasttype"), "." :named("subtype"), $P426 :named("node"))
    .lex "$past", $P427
    find_lex $P428, "$/"
.annotate "line", 144
    find_lex $P429, "$past"
    unless_null $P429, vivify_229
    new $P429, "Undef"
  vivify_229:
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
.sub "metachar:sym<^>"  :subid("46_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P437, vivify_230
    new $P437, "Undef"
  vivify_230:
    $P438 = $P436."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P437 :named("node"))
    .lex "$past", $P438
    find_lex $P439, "$/"
.annotate "line", 149
    find_lex $P440, "$past"
    unless_null $P440, vivify_231
    new $P440, "Undef"
  vivify_231:
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
.sub "metachar:sym<^^>"  :subid("47_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P448, vivify_232
    new $P448, "Undef"
  vivify_232:
    $P449 = $P447."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P448 :named("node"))
    .lex "$past", $P449
    find_lex $P450, "$/"
.annotate "line", 154
    find_lex $P451, "$past"
    unless_null $P451, vivify_233
    new $P451, "Undef"
  vivify_233:
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
.sub "metachar:sym<$>"  :subid("48_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P459, vivify_234
    new $P459, "Undef"
  vivify_234:
    $P460 = $P458."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P459 :named("node"))
    .lex "$past", $P460
    find_lex $P461, "$/"
.annotate "line", 159
    find_lex $P462, "$past"
    unless_null $P462, vivify_235
    new $P462, "Undef"
  vivify_235:
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
.sub "metachar:sym<$$>"  :subid("49_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P470, vivify_236
    new $P470, "Undef"
  vivify_236:
    $P471 = $P469."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P470 :named("node"))
    .lex "$past", $P471
    find_lex $P472, "$/"
.annotate "line", 164
    find_lex $P473, "$past"
    unless_null $P473, vivify_237
    new $P473, "Undef"
  vivify_237:
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
.sub "metachar:sym<:::>"  :subid("50_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P481, vivify_238
    new $P481, "Undef"
  vivify_238:
    $P482 = $P480."new"("cut" :named("pasttype"), $P481 :named("node"))
    .lex "$past", $P482
    find_lex $P483, "$/"
.annotate "line", 169
    find_lex $P484, "$past"
    unless_null $P484, vivify_239
    new $P484, "Undef"
  vivify_239:
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
.sub "metachar:sym<lwb>"  :subid("51_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P492, vivify_240
    new $P492, "Undef"
  vivify_240:
    $P493 = $P491."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P492 :named("node"))
    .lex "$past", $P493
    find_lex $P494, "$/"
.annotate "line", 174
    find_lex $P495, "$past"
    unless_null $P495, vivify_241
    new $P495, "Undef"
  vivify_241:
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
.sub "metachar:sym<rwb>"  :subid("52_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P503, vivify_242
    new $P503, "Undef"
  vivify_242:
    $P504 = $P502."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P503 :named("node"))
    .lex "$past", $P504
    find_lex $P505, "$/"
.annotate "line", 179
    find_lex $P506, "$past"
    unless_null $P506, vivify_243
    new $P506, "Undef"
  vivify_243:
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
.sub "metachar:sym<bs>"  :subid("53_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P515, vivify_244
    new $P515, "Undef"
  vivify_244:
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
.sub "metachar:sym<mod>"  :subid("54_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P525, vivify_245
    new $P525, "Undef"
  vivify_245:
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
.sub "metachar:sym<assert>"  :subid("55_1255814459.41921") :method :outer("11_1255814459.41921")
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
    unless_null $P535, vivify_246
    new $P535, "Undef"
  vivify_246:
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
.sub "metachar:sym<{*}>"  :subid("56_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_542
.annotate "line", 194
    new $P541, 'ExceptionHandler'
    set_addr $P541, control_540
    $P541."handle_types"(58)
    push_eh $P541
    .lex "self", self
    .lex "$/", param_542
.annotate "line", 196
    find_lex $P545, "$/"
    set $P546, $P545["key"]
    unless_null $P546, vivify_247
    new $P546, "Undef"
  vivify_247:
    if $P546, if_544
.annotate "line", 197
    new $P554, "Integer"
    assign $P554, 0
    set $P543, $P554
.annotate "line", 196
    goto if_544_end
  if_544:
    get_hll_global $P547, ["PAST"], "Regex"
    find_lex $P548, "$/"
    set $P549, $P548["key"]
    unless_null $P549, vivify_248
    new $P549, "ResizablePMCArray"
  vivify_248:
    set $P550, $P549[0]
    unless_null $P550, vivify_249
    new $P550, "Undef"
  vivify_249:
    set $S551, $P550
    find_lex $P552, "$/"
    unless_null $P552, vivify_250
    new $P552, "Undef"
  vivify_250:
    $P553 = $P547."new"($S551, "reduce" :named("pasttype"), $P552 :named("node"))
    set $P543, $P553
  if_544_end:
    .lex "$past", $P543
.annotate "line", 195
    find_lex $P555, "$/"
.annotate "line", 198
    find_lex $P556, "$past"
    unless_null $P556, vivify_251
    new $P556, "Undef"
  vivify_251:
    $P557 = $P555."!make"($P556)
.annotate "line", 194
    .return ($P557)
  control_540:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P558, exception, "payload"
    .return ($P558)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("57_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_562
.annotate "line", 201
    .const 'Sub' $P624 = "62_1255814459.41921" 
    capture_lex $P624
    .const 'Sub' $P578 = "58_1255814459.41921" 
    capture_lex $P578
    new $P561, 'ExceptionHandler'
    set_addr $P561, control_560
    $P561."handle_types"(58)
    push_eh $P561
    .lex "self", self
    .lex "$/", param_562
.annotate "line", 202
    new $P563, "Undef"
    .lex "$past", $P563
.annotate "line", 203
    find_lex $P566, "$/"
    set $P567, $P566["pos"]
    unless_null $P567, vivify_252
    new $P567, "Undef"
  vivify_252:
    if $P567, if_565
    find_lex $P571, "$/"
    set $P572, $P571["name"]
    unless_null $P572, vivify_253
    new $P572, "Undef"
  vivify_253:
    set $S573, $P572
    new $P564, 'String'
    set $P564, $S573
    goto if_565_end
  if_565:
    find_lex $P568, "$/"
    set $P569, $P568["pos"]
    unless_null $P569, vivify_254
    new $P569, "Undef"
  vivify_254:
    set $N570, $P569
    new $P564, 'Float'
    set $P564, $N570
  if_565_end:
    .lex "$name", $P564
.annotate "line", 204
    find_lex $P575, "$/"
    set $P576, $P575["quantified_atom"]
    unless_null $P576, vivify_255
    new $P576, "Undef"
  vivify_255:
    if $P576, if_574
.annotate "line", 218
    .const 'Sub' $P624 = "62_1255814459.41921" 
    capture_lex $P624
    $P624()
    goto if_574_end
  if_574:
.annotate "line", 204
    .const 'Sub' $P578 = "58_1255814459.41921" 
    capture_lex $P578
    $P578()
  if_574_end:
    find_lex $P629, "$/"
.annotate "line", 222
    find_lex $P630, "$past"
    unless_null $P630, vivify_275
    new $P630, "Undef"
  vivify_275:
    $P631 = $P629."!make"($P630)
.annotate "line", 201
    .return ($P631)
  control_560:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P632, exception, "payload"
    .return ($P632)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block623"  :anon :subid("62_1255814459.41921") :outer("57_1255814459.41921")
.annotate "line", 219
    get_hll_global $P625, ["PAST"], "Regex"
    find_lex $P626, "$name"
    unless_null $P626, vivify_256
    new $P626, "Undef"
  vivify_256:
.annotate "line", 220
    find_lex $P627, "$/"
    unless_null $P627, vivify_257
    new $P627, "Undef"
  vivify_257:
    $P628 = $P625."new"("!BACKREF", $P626, "subrule" :named("pasttype"), "method" :named("subtype"), $P627 :named("node"))
.annotate "line", 219
    store_lex "$past", $P628
.annotate "line", 218
    .return ($P628)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block577"  :anon :subid("58_1255814459.41921") :outer("57_1255814459.41921")
.annotate "line", 204
    .const 'Sub' $P616 = "61_1255814459.41921" 
    capture_lex $P616
    .const 'Sub' $P609 = "60_1255814459.41921" 
    capture_lex $P609
    .const 'Sub' $P595 = "59_1255814459.41921" 
    capture_lex $P595
.annotate "line", 205
    find_lex $P579, "$/"
    set $P580, $P579["quantified_atom"]
    unless_null $P580, vivify_258
    new $P580, "ResizablePMCArray"
  vivify_258:
    set $P581, $P580[0]
    unless_null $P581, vivify_259
    new $P581, "Undef"
  vivify_259:
    $P582 = $P581."ast"()
    store_lex "$past", $P582
.annotate "line", 206
    find_lex $P587, "$past"
    unless_null $P587, vivify_260
    new $P587, "Undef"
  vivify_260:
    $S588 = $P587."pasttype"()
    iseq $I589, $S588, "quant"
    if $I589, if_586
    new $P585, 'Integer'
    set $P585, $I589
    goto if_586_end
  if_586:
    find_lex $P590, "$past"
    unless_null $P590, vivify_261
    new $P590, "ResizablePMCArray"
  vivify_261:
    set $P591, $P590[0]
    unless_null $P591, vivify_262
    new $P591, "Undef"
  vivify_262:
    $S592 = $P591."pasttype"()
    iseq $I593, $S592, "subrule"
    new $P585, 'Integer'
    set $P585, $I593
  if_586_end:
    if $P585, if_584
.annotate "line", 210
    find_lex $P605, "$past"
    unless_null $P605, vivify_263
    new $P605, "Undef"
  vivify_263:
    $S606 = $P605."pasttype"()
    iseq $I607, $S606, "subrule"
    if $I607, if_604
.annotate "line", 214
    .const 'Sub' $P616 = "61_1255814459.41921" 
    capture_lex $P616
    $P622 = $P616()
    set $P603, $P622
.annotate "line", 210
    goto if_604_end
  if_604:
    .const 'Sub' $P609 = "60_1255814459.41921" 
    capture_lex $P609
    $P614 = $P609()
    set $P603, $P614
  if_604_end:
.annotate "line", 206
    set $P583, $P603
    goto if_584_end
  if_584:
    .const 'Sub' $P595 = "59_1255814459.41921" 
    capture_lex $P595
    $P602 = $P595()
    set $P583, $P602
  if_584_end:
.annotate "line", 204
    .return ($P583)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block615"  :anon :subid("61_1255814459.41921") :outer("58_1255814459.41921")
.annotate "line", 215
    get_hll_global $P617, ["PAST"], "Regex"
    find_lex $P618, "$past"
    unless_null $P618, vivify_264
    new $P618, "Undef"
  vivify_264:
    find_lex $P619, "$name"
    unless_null $P619, vivify_265
    new $P619, "Undef"
  vivify_265:
    find_lex $P620, "$/"
    unless_null $P620, vivify_266
    new $P620, "Undef"
  vivify_266:
    $P621 = $P617."new"($P618, $P619 :named("name"), "subcapture" :named("pasttype"), $P620 :named("node"))
    store_lex "$past", $P621
.annotate "line", 214
    .return ($P621)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block608"  :anon :subid("60_1255814459.41921") :outer("58_1255814459.41921")
.annotate "line", 211
    find_lex $P610, "$past"
    unless_null $P610, vivify_267
    new $P610, "Undef"
  vivify_267:
    $P610."subtype"("capture")
.annotate "line", 212
    find_lex $P611, "$past"
    unless_null $P611, vivify_268
    new $P611, "Undef"
  vivify_268:
    find_lex $P612, "$name"
    unless_null $P612, vivify_269
    new $P612, "Undef"
  vivify_269:
    $P613 = $P611."name"($P612)
.annotate "line", 210
    .return ($P613)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block594"  :anon :subid("59_1255814459.41921") :outer("58_1255814459.41921")
.annotate "line", 207
    find_lex $P596, "$past"
    unless_null $P596, vivify_270
    new $P596, "ResizablePMCArray"
  vivify_270:
    set $P597, $P596[0]
    unless_null $P597, vivify_271
    new $P597, "Undef"
  vivify_271:
    $P597."subtype"("capture")
.annotate "line", 208
    find_lex $P598, "$past"
    unless_null $P598, vivify_272
    new $P598, "ResizablePMCArray"
  vivify_272:
    set $P599, $P598[0]
    unless_null $P599, vivify_273
    new $P599, "Undef"
  vivify_273:
    find_lex $P600, "$name"
    unless_null $P600, vivify_274
    new $P600, "Undef"
  vivify_274:
    $P601 = $P599."name"($P600)
.annotate "line", 206
    .return ($P601)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("63_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_636
.annotate "line", 225
    new $P635, 'ExceptionHandler'
    set_addr $P635, control_634
    $P635."handle_types"(58)
    push_eh $P635
    .lex "self", self
    .lex "$/", param_636
.annotate "line", 226
    find_lex $P639, "$/"
    set $P640, $P639["sym"]
    unless_null $P640, vivify_276
    new $P640, "Undef"
  vivify_276:
    set $S641, $P640
    iseq $I642, $S641, "n"
    if $I642, if_638
    find_lex $P644, "$/"
    set $P645, $P644["sym"]
    unless_null $P645, vivify_277
    new $P645, "Undef"
  vivify_277:
    set $S646, $P645
    new $P637, 'String'
    set $P637, $S646
    goto if_638_end
  if_638:
    new $P643, "String"
    assign $P643, "nl"
    set $P637, $P643
  if_638_end:
    .lex "$subtype", $P637
.annotate "line", 227
    get_hll_global $P647, ["PAST"], "Regex"
    find_lex $P648, "$subtype"
    unless_null $P648, vivify_278
    new $P648, "Undef"
  vivify_278:
    find_lex $P649, "$/"
    unless_null $P649, vivify_279
    new $P649, "Undef"
  vivify_279:
    $P650 = $P647."new"("charclass" :named("pasttype"), $P648 :named("subtype"), $P649 :named("node"))
    .lex "$past", $P650
    find_lex $P651, "$/"
.annotate "line", 228
    find_lex $P652, "$past"
    unless_null $P652, vivify_280
    new $P652, "Undef"
  vivify_280:
    $P653 = $P651."!make"($P652)
.annotate "line", 225
    .return ($P653)
  control_634:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P654, exception, "payload"
    .return ($P654)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("64_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_658
.annotate "line", 231
    new $P657, 'ExceptionHandler'
    set_addr $P657, control_656
    $P657."handle_types"(58)
    push_eh $P657
    .lex "self", self
    .lex "$/", param_658
.annotate "line", 232
    get_hll_global $P659, ["PAST"], "Regex"
.annotate "line", 233
    find_lex $P660, "$/"
    set $P661, $P660["sym"]
    unless_null $P661, vivify_281
    new $P661, "Undef"
  vivify_281:
    set $S662, $P661
    iseq $I663, $S662, "B"
    find_lex $P664, "$/"
    unless_null $P664, vivify_282
    new $P664, "Undef"
  vivify_282:
    $P665 = $P659."new"("\b", "enumcharlist" :named("pasttype"), $I663 :named("negate"), $P664 :named("node"))
.annotate "line", 232
    .lex "$past", $P665
    find_lex $P666, "$/"
.annotate "line", 234
    find_lex $P667, "$past"
    unless_null $P667, vivify_283
    new $P667, "Undef"
  vivify_283:
    $P668 = $P666."!make"($P667)
.annotate "line", 231
    .return ($P668)
  control_656:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P669, exception, "payload"
    .return ($P669)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("65_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_673
.annotate "line", 237
    new $P672, 'ExceptionHandler'
    set_addr $P672, control_671
    $P672."handle_types"(58)
    push_eh $P672
    .lex "self", self
    .lex "$/", param_673
.annotate "line", 238
    get_hll_global $P674, ["PAST"], "Regex"
.annotate "line", 239
    find_lex $P675, "$/"
    set $P676, $P675["sym"]
    unless_null $P676, vivify_284
    new $P676, "Undef"
  vivify_284:
    set $S677, $P676
    iseq $I678, $S677, "E"
    find_lex $P679, "$/"
    unless_null $P679, vivify_285
    new $P679, "Undef"
  vivify_285:
    $P680 = $P674."new"("\e", "enumcharlist" :named("pasttype"), $I678 :named("negate"), $P679 :named("node"))
.annotate "line", 238
    .lex "$past", $P680
    find_lex $P681, "$/"
.annotate "line", 240
    find_lex $P682, "$past"
    unless_null $P682, vivify_286
    new $P682, "Undef"
  vivify_286:
    $P683 = $P681."!make"($P682)
.annotate "line", 237
    .return ($P683)
  control_671:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P684, exception, "payload"
    .return ($P684)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("66_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_688
.annotate "line", 243
    new $P687, 'ExceptionHandler'
    set_addr $P687, control_686
    $P687."handle_types"(58)
    push_eh $P687
    .lex "self", self
    .lex "$/", param_688
.annotate "line", 244
    get_hll_global $P689, ["PAST"], "Regex"
.annotate "line", 245
    find_lex $P690, "$/"
    set $P691, $P690["sym"]
    unless_null $P691, vivify_287
    new $P691, "Undef"
  vivify_287:
    set $S692, $P691
    iseq $I693, $S692, "F"
    find_lex $P694, "$/"
    unless_null $P694, vivify_288
    new $P694, "Undef"
  vivify_288:
    $P695 = $P689."new"("\f", "enumcharlist" :named("pasttype"), $I693 :named("negate"), $P694 :named("node"))
.annotate "line", 244
    .lex "$past", $P695
    find_lex $P696, "$/"
.annotate "line", 246
    find_lex $P697, "$past"
    unless_null $P697, vivify_289
    new $P697, "Undef"
  vivify_289:
    $P698 = $P696."!make"($P697)
.annotate "line", 243
    .return ($P698)
  control_686:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P699, exception, "payload"
    .return ($P699)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("67_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_703
.annotate "line", 249
    new $P702, 'ExceptionHandler'
    set_addr $P702, control_701
    $P702."handle_types"(58)
    push_eh $P702
    .lex "self", self
    .lex "$/", param_703
.annotate "line", 250
    get_hll_global $P704, ["PAST"], "Regex"
.annotate "line", 251
    find_lex $P705, "$/"
    set $P706, $P705["sym"]
    unless_null $P706, vivify_290
    new $P706, "Undef"
  vivify_290:
    set $S707, $P706
    iseq $I708, $S707, "H"
    find_lex $P709, "$/"
    unless_null $P709, vivify_291
    new $P709, "Undef"
  vivify_291:
    $P710 = $P704."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I708 :named("negate"), $P709 :named("node"))
.annotate "line", 250
    .lex "$past", $P710
    find_lex $P711, "$/"
.annotate "line", 252
    find_lex $P712, "$past"
    unless_null $P712, vivify_292
    new $P712, "Undef"
  vivify_292:
    $P713 = $P711."!make"($P712)
.annotate "line", 249
    .return ($P713)
  control_701:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P714, exception, "payload"
    .return ($P714)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("68_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_718
.annotate "line", 255
    new $P717, 'ExceptionHandler'
    set_addr $P717, control_716
    $P717."handle_types"(58)
    push_eh $P717
    .lex "self", self
    .lex "$/", param_718
.annotate "line", 256
    get_hll_global $P719, ["PAST"], "Regex"
.annotate "line", 257
    find_lex $P720, "$/"
    set $P721, $P720["sym"]
    unless_null $P721, vivify_293
    new $P721, "Undef"
  vivify_293:
    set $S722, $P721
    iseq $I723, $S722, "R"
    find_lex $P724, "$/"
    unless_null $P724, vivify_294
    new $P724, "Undef"
  vivify_294:
    $P725 = $P719."new"("\r", "enumcharlist" :named("pasttype"), $I723 :named("negate"), $P724 :named("node"))
.annotate "line", 256
    .lex "$past", $P725
    find_lex $P726, "$/"
.annotate "line", 258
    find_lex $P727, "$past"
    unless_null $P727, vivify_295
    new $P727, "Undef"
  vivify_295:
    $P728 = $P726."!make"($P727)
.annotate "line", 255
    .return ($P728)
  control_716:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P729, exception, "payload"
    .return ($P729)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("69_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_733
.annotate "line", 261
    new $P732, 'ExceptionHandler'
    set_addr $P732, control_731
    $P732."handle_types"(58)
    push_eh $P732
    .lex "self", self
    .lex "$/", param_733
.annotate "line", 262
    get_hll_global $P734, ["PAST"], "Regex"
.annotate "line", 263
    find_lex $P735, "$/"
    set $P736, $P735["sym"]
    unless_null $P736, vivify_296
    new $P736, "Undef"
  vivify_296:
    set $S737, $P736
    iseq $I738, $S737, "T"
    find_lex $P739, "$/"
    unless_null $P739, vivify_297
    new $P739, "Undef"
  vivify_297:
    $P740 = $P734."new"("\t", "enumcharlist" :named("pasttype"), $I738 :named("negate"), $P739 :named("node"))
.annotate "line", 262
    .lex "$past", $P740
    find_lex $P741, "$/"
.annotate "line", 264
    find_lex $P742, "$past"
    unless_null $P742, vivify_298
    new $P742, "Undef"
  vivify_298:
    $P743 = $P741."!make"($P742)
.annotate "line", 261
    .return ($P743)
  control_731:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P744, exception, "payload"
    .return ($P744)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("70_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_748
.annotate "line", 267
    new $P747, 'ExceptionHandler'
    set_addr $P747, control_746
    $P747."handle_types"(58)
    push_eh $P747
    .lex "self", self
    .lex "$/", param_748
.annotate "line", 268
    get_hll_global $P749, ["PAST"], "Regex"
.annotate "line", 269
    find_lex $P750, "$/"
    set $P751, $P750["sym"]
    unless_null $P751, vivify_299
    new $P751, "Undef"
  vivify_299:
    set $S752, $P751
    iseq $I753, $S752, "V"
    find_lex $P754, "$/"
    unless_null $P754, vivify_300
    new $P754, "Undef"
  vivify_300:
    $P755 = $P749."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I753 :named("negate"), $P754 :named("node"))
.annotate "line", 268
    .lex "$past", $P755
    find_lex $P756, "$/"
.annotate "line", 270
    find_lex $P757, "$past"
    unless_null $P757, vivify_301
    new $P757, "Undef"
  vivify_301:
    $P758 = $P756."!make"($P757)
.annotate "line", 267
    .return ($P758)
  control_746:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P759, exception, "payload"
    .return ($P759)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("71_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_763
.annotate "line", 274
    new $P762, 'ExceptionHandler'
    set_addr $P762, control_761
    $P762."handle_types"(58)
    push_eh $P762
    .lex "self", self
    .lex "$/", param_763
.annotate "line", 275
    get_hll_global $P764, ["PAST"], "Regex"
    find_lex $P765, "$/"
    unless_null $P765, vivify_302
    new $P765, "Undef"
  vivify_302:
    set $S766, $P765
    find_lex $P767, "$/"
    unless_null $P767, vivify_303
    new $P767, "Undef"
  vivify_303:
    $P768 = $P764."new"($S766, "literal" :named("pasttype"), $P767 :named("node"))
    .lex "$past", $P768
    find_lex $P769, "$/"
.annotate "line", 276
    find_lex $P770, "$past"
    unless_null $P770, vivify_304
    new $P770, "Undef"
  vivify_304:
    $P771 = $P769."!make"($P770)
.annotate "line", 274
    .return ($P771)
  control_761:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P772, exception, "payload"
    .return ($P772)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("72_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_776
.annotate "line", 280
    .const 'Sub' $P789 = "74_1255814459.41921" 
    capture_lex $P789
    .const 'Sub' $P782 = "73_1255814459.41921" 
    capture_lex $P782
    new $P775, 'ExceptionHandler'
    set_addr $P775, control_774
    $P775."handle_types"(58)
    push_eh $P775
    .lex "self", self
    .lex "$/", param_776
.annotate "line", 281
    new $P777, "Undef"
    .lex "$past", $P777
.annotate "line", 282
    find_lex $P779, "$/"
    set $P780, $P779["assertion"]
    unless_null $P780, vivify_305
    new $P780, "Undef"
  vivify_305:
    if $P780, if_778
.annotate "line", 286
    .const 'Sub' $P789 = "74_1255814459.41921" 
    capture_lex $P789
    $P789()
    goto if_778_end
  if_778:
.annotate "line", 282
    .const 'Sub' $P782 = "73_1255814459.41921" 
    capture_lex $P782
    $P782()
  if_778_end:
    find_lex $P791, "$/"
.annotate "line", 287
    find_lex $P792, "$past"
    unless_null $P792, vivify_308
    new $P792, "Undef"
  vivify_308:
    $P793 = $P791."!make"($P792)
.annotate "line", 280
    .return ($P793)
  control_774:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P794, exception, "payload"
    .return ($P794)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block788"  :anon :subid("74_1255814459.41921") :outer("72_1255814459.41921")
.annotate "line", 286
    new $P790, "Integer"
    assign $P790, 0
    store_lex "$past", $P790
    .return ($P790)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block781"  :anon :subid("73_1255814459.41921") :outer("72_1255814459.41921")
.annotate "line", 283
    find_lex $P783, "$/"
    set $P784, $P783["assertion"]
    unless_null $P784, vivify_306
    new $P784, "Undef"
  vivify_306:
    $P785 = $P784."ast"()
    store_lex "$past", $P785
.annotate "line", 284
    find_lex $P786, "$past"
    unless_null $P786, vivify_307
    new $P786, "Undef"
  vivify_307:
    $P787 = $P786."subtype"("zerowidth")
.annotate "line", 282
    .return ($P787)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("75_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_798
.annotate "line", 290
    .const 'Sub' $P815 = "77_1255814459.41921" 
    capture_lex $P815
    .const 'Sub' $P804 = "76_1255814459.41921" 
    capture_lex $P804
    new $P797, 'ExceptionHandler'
    set_addr $P797, control_796
    $P797."handle_types"(58)
    push_eh $P797
    .lex "self", self
    .lex "$/", param_798
.annotate "line", 291
    new $P799, "Undef"
    .lex "$past", $P799
.annotate "line", 292
    find_lex $P801, "$/"
    set $P802, $P801["assertion"]
    unless_null $P802, vivify_309
    new $P802, "Undef"
  vivify_309:
    if $P802, if_800
.annotate "line", 297
    .const 'Sub' $P815 = "77_1255814459.41921" 
    capture_lex $P815
    $P815()
    goto if_800_end
  if_800:
.annotate "line", 292
    .const 'Sub' $P804 = "76_1255814459.41921" 
    capture_lex $P804
    $P804()
  if_800_end:
    find_lex $P819, "$/"
.annotate "line", 300
    find_lex $P820, "$past"
    unless_null $P820, vivify_315
    new $P820, "Undef"
  vivify_315:
    $P821 = $P819."!make"($P820)
.annotate "line", 290
    .return ($P821)
  control_796:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P822, exception, "payload"
    .return ($P822)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block814"  :anon :subid("77_1255814459.41921") :outer("75_1255814459.41921")
.annotate "line", 298
    get_hll_global $P816, ["PAST"], "Regex"
    find_lex $P817, "$/"
    unless_null $P817, vivify_310
    new $P817, "Undef"
  vivify_310:
    $P818 = $P816."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P817 :named("node"))
    store_lex "$past", $P818
.annotate "line", 297
    .return ($P818)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block803"  :anon :subid("76_1255814459.41921") :outer("75_1255814459.41921")
.annotate "line", 293
    find_lex $P805, "$/"
    set $P806, $P805["assertion"]
    unless_null $P806, vivify_311
    new $P806, "Undef"
  vivify_311:
    $P807 = $P806."ast"()
    store_lex "$past", $P807
.annotate "line", 294
    find_lex $P808, "$past"
    unless_null $P808, vivify_312
    new $P808, "Undef"
  vivify_312:
    find_lex $P809, "$past"
    unless_null $P809, vivify_313
    new $P809, "Undef"
  vivify_313:
    $P810 = $P809."negate"()
    isfalse $I811, $P810
    $P808."negate"($I811)
.annotate "line", 295
    find_lex $P812, "$past"
    unless_null $P812, vivify_314
    new $P812, "Undef"
  vivify_314:
    $P813 = $P812."subtype"("zerowidth")
.annotate "line", 292
    .return ($P813)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("78_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_826
.annotate "line", 303
    new $P825, 'ExceptionHandler'
    set_addr $P825, control_824
    $P825."handle_types"(58)
    push_eh $P825
    .lex "self", self
    .lex "$/", param_826
.annotate "line", 304
    find_lex $P827, "$/"
    set $P828, $P827["assertion"]
    unless_null $P828, vivify_316
    new $P828, "Undef"
  vivify_316:
    $P829 = $P828."ast"()
    .lex "$past", $P829
.annotate "line", 305
    find_lex $P830, "$past"
    unless_null $P830, vivify_317
    new $P830, "Undef"
  vivify_317:
    $P830."subtype"("method")
    find_lex $P831, "$/"
.annotate "line", 306
    find_lex $P832, "$past"
    unless_null $P832, vivify_318
    new $P832, "Undef"
  vivify_318:
    $P833 = $P831."!make"($P832)
.annotate "line", 303
    .return ($P833)
  control_824:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P834, exception, "payload"
    .return ($P834)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<name>"  :subid("79_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_838
.annotate "line", 309
    .const 'Sub' $P857 = "81_1255814459.41921" 
    capture_lex $P857
    .const 'Sub' $P848 = "80_1255814459.41921" 
    capture_lex $P848
    new $P837, 'ExceptionHandler'
    set_addr $P837, control_836
    $P837."handle_types"(58)
    push_eh $P837
    .lex "self", self
    .lex "$/", param_838
.annotate "line", 310
    find_lex $P839, "$/"
    set $P840, $P839["longname"]
    unless_null $P840, vivify_319
    new $P840, "Undef"
  vivify_319:
    set $S841, $P840
    new $P842, 'String'
    set $P842, $S841
    .lex "$name", $P842
.annotate "line", 311
    new $P843, "Undef"
    .lex "$past", $P843
.annotate "line", 312
    find_lex $P845, "$/"
    set $P846, $P845["assertion"]
    unless_null $P846, vivify_320
    new $P846, "Undef"
  vivify_320:
    if $P846, if_844
.annotate "line", 316
    .const 'Sub' $P857 = "81_1255814459.41921" 
    capture_lex $P857
    $P857()
    goto if_844_end
  if_844:
.annotate "line", 312
    .const 'Sub' $P848 = "80_1255814459.41921" 
    capture_lex $P848
    $P848()
  if_844_end:
    find_lex $P901, "$/"
.annotate "line", 328
    find_lex $P902, "$past"
    unless_null $P902, vivify_339
    new $P902, "Undef"
  vivify_339:
    $P903 = $P901."!make"($P902)
.annotate "line", 309
    .return ($P903)
  control_836:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P904, exception, "payload"
    .return ($P904)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block856"  :anon :subid("81_1255814459.41921") :outer("79_1255814459.41921")
.annotate "line", 316
    .const 'Sub' $P882 = "83_1255814459.41921" 
    capture_lex $P882
    .const 'Sub' $P868 = "82_1255814459.41921" 
    capture_lex $P868
.annotate "line", 317
    get_hll_global $P858, ["PAST"], "Regex"
    find_lex $P859, "$name"
    unless_null $P859, vivify_321
    new $P859, "Undef"
  vivify_321:
    find_lex $P860, "$name"
    unless_null $P860, vivify_322
    new $P860, "Undef"
  vivify_322:
.annotate "line", 318
    find_lex $P861, "$/"
    unless_null $P861, vivify_323
    new $P861, "Undef"
  vivify_323:
    $P862 = $P858."new"($P859, $P860 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P861 :named("node"))
.annotate "line", 317
    store_lex "$past", $P862
.annotate "line", 319
    find_lex $P865, "$/"
    set $P866, $P865["nibbler"]
    unless_null $P866, vivify_324
    new $P866, "Undef"
  vivify_324:
    if $P866, if_864
    find_lex $P879, "$/"
    set $P880, $P879["arglist"]
    unless_null $P880, vivify_325
    new $P880, "Undef"
  vivify_325:
    if $P880, if_878
    set $P877, $P880
    goto if_878_end
  if_878:
.annotate "line", 322
    .const 'Sub' $P882 = "83_1255814459.41921" 
    capture_lex $P882
    $P900 = $P882()
    set $P877, $P900
  if_878_end:
.annotate "line", 319
    set $P863, $P877
    goto if_864_end
  if_864:
    .const 'Sub' $P868 = "82_1255814459.41921" 
    capture_lex $P868
    $P876 = $P868()
    set $P863, $P876
  if_864_end:
.annotate "line", 316
    .return ($P863)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block881"  :anon :subid("83_1255814459.41921") :outer("81_1255814459.41921")
.annotate "line", 322
    .const 'Sub' $P891 = "84_1255814459.41921" 
    capture_lex $P891
.annotate "line", 323
    find_lex $P884, "$/"
    set $P885, $P884["arglist"]
    unless_null $P885, vivify_326
    new $P885, "ResizablePMCArray"
  vivify_326:
    set $P886, $P885[0]
    unless_null $P886, vivify_327
    new $P886, "Hash"
  vivify_327:
    set $P887, $P886["arg"]
    unless_null $P887, vivify_328
    new $P887, "Undef"
  vivify_328:
    defined $I888, $P887
    unless $I888, for_undef_329
    iter $P883, $P887
    new $P898, 'ExceptionHandler'
    set_addr $P898, loop897_handler
    $P898."handle_types"(65, 67, 66)
    push_eh $P898
  loop897_test:
    unless $P883, loop897_done
    shift $P889, $P883
  loop897_redo:
    .const 'Sub' $P891 = "84_1255814459.41921" 
    capture_lex $P891
    $P891($P889)
  loop897_next:
    goto loop897_test
  loop897_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P899, exception, 'type'
    eq $P899, 65, loop897_next
    eq $P899, 67, loop897_redo
  loop897_done:
    pop_eh 
  for_undef_329:
.annotate "line", 322
    .return ($P883)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block890"  :anon :subid("84_1255814459.41921") :outer("83_1255814459.41921")
    .param pmc param_892
.annotate "line", 323
    .lex "$_", param_892
.annotate "line", 324
    find_lex $P893, "$past"
    unless_null $P893, vivify_330
    new $P893, "Undef"
  vivify_330:
    find_lex $P894, "$_"
    unless_null $P894, vivify_331
    new $P894, "Undef"
  vivify_331:
    $P895 = $P894."ast"()
    $P896 = $P893."push"($P895)
.annotate "line", 323
    .return ($P896)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block867"  :anon :subid("82_1255814459.41921") :outer("81_1255814459.41921")
.annotate "line", 320
    find_lex $P869, "$past"
    unless_null $P869, vivify_332
    new $P869, "Undef"
  vivify_332:
    find_lex $P870, "$/"
    set $P871, $P870["nibbler"]
    unless_null $P871, vivify_333
    new $P871, "ResizablePMCArray"
  vivify_333:
    set $P872, $P871[0]
    unless_null $P872, vivify_334
    new $P872, "Undef"
  vivify_334:
    $P873 = $P872."ast"()
    $P874 = "buildsub"($P873)
    $P875 = $P869."push"($P874)
.annotate "line", 319
    .return ($P875)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block847"  :anon :subid("80_1255814459.41921") :outer("79_1255814459.41921")
.annotate "line", 313
    find_lex $P849, "$/"
    set $P850, $P849["assertion"]
    unless_null $P850, vivify_335
    new $P850, "ResizablePMCArray"
  vivify_335:
    set $P851, $P850[0]
    unless_null $P851, vivify_336
    new $P851, "Undef"
  vivify_336:
    $P852 = $P851."ast"()
    store_lex "$past", $P852
.annotate "line", 314
    find_lex $P853, "$past"
    unless_null $P853, vivify_337
    new $P853, "Undef"
  vivify_337:
    find_lex $P854, "$name"
    unless_null $P854, vivify_338
    new $P854, "Undef"
  vivify_338:
    $P855 = $P853."name"($P854)
.annotate "line", 312
    .return ($P855)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<[>"  :subid("85_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_908
.annotate "line", 331
    .const 'Sub' $P941 = "87_1255814459.41921" 
    capture_lex $P941
    .const 'Sub' $P923 = "86_1255814459.41921" 
    capture_lex $P923
    new $P907, 'ExceptionHandler'
    set_addr $P907, control_906
    $P907."handle_types"(58)
    push_eh $P907
    .lex "self", self
    .lex "$/", param_908
.annotate "line", 332
    find_lex $P909, "$/"
    set $P910, $P909["cclass_elem"]
    unless_null $P910, vivify_340
    new $P910, "Undef"
  vivify_340:
    .lex "$clist", $P910
.annotate "line", 333
    find_lex $P911, "$clist"
    unless_null $P911, vivify_341
    new $P911, "ResizablePMCArray"
  vivify_341:
    set $P912, $P911[0]
    unless_null $P912, vivify_342
    new $P912, "Undef"
  vivify_342:
    $P913 = $P912."ast"()
    .lex "$past", $P913
.annotate "line", 334
    find_lex $P917, "$past"
    unless_null $P917, vivify_343
    new $P917, "Undef"
  vivify_343:
    $P918 = $P917."negate"()
    if $P918, if_916
    set $P915, $P918
    goto if_916_end
  if_916:
    find_lex $P919, "$past"
    unless_null $P919, vivify_344
    new $P919, "Undef"
  vivify_344:
    $S920 = $P919."pasttype"()
    iseq $I921, $S920, "subrule"
    new $P915, 'Integer'
    set $P915, $I921
  if_916_end:
    unless $P915, if_914_end
    .const 'Sub' $P923 = "86_1255814459.41921" 
    capture_lex $P923
    $P923()
  if_914_end:
.annotate "line", 342
    new $P931, "Integer"
    assign $P931, 1
    .lex "$i", $P931
.annotate "line", 343
    find_lex $P932, "$clist"
    unless_null $P932, vivify_348
    new $P932, "Undef"
  vivify_348:
    set $N933, $P932
    new $P934, 'Float'
    set $P934, $N933
    .lex "$n", $P934
.annotate "line", 344
    new $P968, 'ExceptionHandler'
    set_addr $P968, loop967_handler
    $P968."handle_types"(65, 67, 66)
    push_eh $P968
  loop967_test:
    find_lex $P935, "$i"
    unless_null $P935, vivify_349
    new $P935, "Undef"
  vivify_349:
    set $N936, $P935
    find_lex $P937, "$n"
    unless_null $P937, vivify_350
    new $P937, "Undef"
  vivify_350:
    set $N938, $P937
    islt $I939, $N936, $N938
    unless $I939, loop967_done
  loop967_redo:
    .const 'Sub' $P941 = "87_1255814459.41921" 
    capture_lex $P941
    $P941()
  loop967_next:
    goto loop967_test
  loop967_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P969, exception, 'type'
    eq $P969, 65, loop967_next
    eq $P969, 67, loop967_redo
  loop967_done:
    pop_eh 
    find_lex $P970, "$/"
.annotate "line", 355
    find_lex $P971, "$past"
    unless_null $P971, vivify_363
    new $P971, "Undef"
  vivify_363:
    $P972 = $P970."!make"($P971)
.annotate "line", 331
    .return ($P972)
  control_906:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P973, exception, "payload"
    .return ($P973)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block922"  :anon :subid("86_1255814459.41921") :outer("85_1255814459.41921")
.annotate "line", 335
    find_lex $P924, "$past"
    unless_null $P924, vivify_345
    new $P924, "Undef"
  vivify_345:
    $P924."subtype"("zerowidth")
.annotate "line", 336
    get_hll_global $P925, ["PAST"], "Regex"
.annotate "line", 337
    find_lex $P926, "$past"
    unless_null $P926, vivify_346
    new $P926, "Undef"
  vivify_346:
.annotate "line", 338
    get_hll_global $P927, ["PAST"], "Regex"
    $P928 = $P927."new"("charclass" :named("pasttype"), "." :named("subtype"))
.annotate "line", 339
    find_lex $P929, "$/"
    unless_null $P929, vivify_347
    new $P929, "Undef"
  vivify_347:
    $P930 = $P925."new"($P926, $P928, $P929 :named("node"))
.annotate "line", 336
    store_lex "$past", $P930
.annotate "line", 334
    .return ($P930)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block940"  :anon :subid("87_1255814459.41921") :outer("85_1255814459.41921")
.annotate "line", 344
    .const 'Sub' $P959 = "89_1255814459.41921" 
    capture_lex $P959
    .const 'Sub' $P951 = "88_1255814459.41921" 
    capture_lex $P951
.annotate "line", 345
    find_lex $P942, "$i"
    unless_null $P942, vivify_351
    new $P942, "Undef"
  vivify_351:
    set $I943, $P942
    find_lex $P944, "$clist"
    unless_null $P944, vivify_352
    new $P944, "ResizablePMCArray"
  vivify_352:
    set $P945, $P944[$I943]
    unless_null $P945, vivify_353
    new $P945, "Undef"
  vivify_353:
    $P946 = $P945."ast"()
    .lex "$ast", $P946
.annotate "line", 346
    find_lex $P948, "$ast"
    unless_null $P948, vivify_354
    new $P948, "Undef"
  vivify_354:
    $P949 = $P948."negate"()
    if $P949, if_947
.annotate "line", 350
    .const 'Sub' $P959 = "89_1255814459.41921" 
    capture_lex $P959
    $P959()
    goto if_947_end
  if_947:
.annotate "line", 346
    .const 'Sub' $P951 = "88_1255814459.41921" 
    capture_lex $P951
    $P951()
  if_947_end:
.annotate "line", 353
    find_lex $P965, "$i"
    unless_null $P965, vivify_362
    new $P965, "Undef"
  vivify_362:
    add $P966, $P965, 1
    store_lex "$i", $P966
.annotate "line", 344
    .return ($P966)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block958"  :anon :subid("89_1255814459.41921") :outer("87_1255814459.41921")
.annotate "line", 351
    get_hll_global $P960, ["PAST"], "Regex"
    find_lex $P961, "$past"
    unless_null $P961, vivify_355
    new $P961, "Undef"
  vivify_355:
    find_lex $P962, "$ast"
    unless_null $P962, vivify_356
    new $P962, "Undef"
  vivify_356:
    find_lex $P963, "$/"
    unless_null $P963, vivify_357
    new $P963, "Undef"
  vivify_357:
    $P964 = $P960."new"($P961, $P962, "alt" :named("pasttype"), $P963 :named("node"))
    store_lex "$past", $P964
.annotate "line", 350
    .return ($P964)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block950"  :anon :subid("88_1255814459.41921") :outer("87_1255814459.41921")
.annotate "line", 347
    find_lex $P952, "$past"
    unless_null $P952, vivify_358
    new $P952, "Undef"
  vivify_358:
    $P952."subtype"("zerowidth")
.annotate "line", 348
    get_hll_global $P953, ["PAST"], "Regex"
    find_lex $P954, "$ast"
    unless_null $P954, vivify_359
    new $P954, "Undef"
  vivify_359:
    find_lex $P955, "$past"
    unless_null $P955, vivify_360
    new $P955, "Undef"
  vivify_360:
    find_lex $P956, "$/"
    unless_null $P956, vivify_361
    new $P956, "Undef"
  vivify_361:
    $P957 = $P953."new"($P954, $P955, "concat" :named("pasttype"), $P956 :named("node"))
    store_lex "$past", $P957
.annotate "line", 346
    .return ($P957)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "cclass_elem"  :subid("90_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_977
.annotate "line", 358
    .const 'Sub' $P994 = "92_1255814459.41921" 
    capture_lex $P994
    .const 'Sub' $P984 = "91_1255814459.41921" 
    capture_lex $P984
    new $P976, 'ExceptionHandler'
    set_addr $P976, control_975
    $P976."handle_types"(58)
    push_eh $P976
    .lex "self", self
    .lex "$/", param_977
.annotate "line", 359
    new $P978, "String"
    assign $P978, ""
    .lex "$str", $P978
.annotate "line", 360
    new $P979, "Undef"
    .lex "$past", $P979
.annotate "line", 361
    find_lex $P981, "$/"
    set $P982, $P981["name"]
    unless_null $P982, vivify_364
    new $P982, "Undef"
  vivify_364:
    if $P982, if_980
.annotate "line", 364
    .const 'Sub' $P994 = "92_1255814459.41921" 
    capture_lex $P994
    $P994()
    goto if_980_end
  if_980:
.annotate "line", 361
    .const 'Sub' $P984 = "91_1255814459.41921" 
    capture_lex $P984
    $P984()
  if_980_end:
.annotate "line", 392
    find_lex $P1033, "$past"
    unless_null $P1033, vivify_384
    new $P1033, "Undef"
  vivify_384:
    find_lex $P1034, "$/"
    set $P1035, $P1034["sign"]
    unless_null $P1035, vivify_385
    new $P1035, "Undef"
  vivify_385:
    set $S1036, $P1035
    iseq $I1037, $S1036, "-"
    $P1033."negate"($I1037)
    find_lex $P1038, "$/"
.annotate "line", 393
    find_lex $P1039, "$past"
    unless_null $P1039, vivify_386
    new $P1039, "Undef"
  vivify_386:
    $P1040 = $P1038."!make"($P1039)
.annotate "line", 358
    .return ($P1040)
  control_975:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1041, exception, "payload"
    .return ($P1041)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block993"  :anon :subid("92_1255814459.41921") :outer("90_1255814459.41921")
.annotate "line", 364
    .const 'Sub' $P1001 = "93_1255814459.41921" 
    capture_lex $P1001
.annotate "line", 365
    find_lex $P996, "$/"
    set $P997, $P996["charspec"]
    unless_null $P997, vivify_365
    new $P997, "Undef"
  vivify_365:
    defined $I998, $P997
    unless $I998, for_undef_366
    iter $P995, $P997
    new $P1027, 'ExceptionHandler'
    set_addr $P1027, loop1026_handler
    $P1027."handle_types"(65, 67, 66)
    push_eh $P1027
  loop1026_test:
    unless $P995, loop1026_done
    shift $P999, $P995
  loop1026_redo:
    .const 'Sub' $P1001 = "93_1255814459.41921" 
    capture_lex $P1001
    $P1001($P999)
  loop1026_next:
    goto loop1026_test
  loop1026_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1028, exception, 'type'
    eq $P1028, 65, loop1026_next
    eq $P1028, 67, loop1026_redo
  loop1026_done:
    pop_eh 
  for_undef_366:
.annotate "line", 390
    get_hll_global $P1029, ["PAST"], "Regex"
    find_lex $P1030, "$str"
    unless_null $P1030, vivify_379
    new $P1030, "Undef"
  vivify_379:
    find_lex $P1031, "$/"
    unless_null $P1031, vivify_380
    new $P1031, "Undef"
  vivify_380:
    $P1032 = $P1029."new"($P1030, "enumcharlist" :named("pasttype"), $P1031 :named("node"))
    store_lex "$past", $P1032
.annotate "line", 364
    .return ($P1032)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1000"  :anon :subid("93_1255814459.41921") :outer("92_1255814459.41921")
    .param pmc param_1002
.annotate "line", 365
    .const 'Sub' $P1020 = "95_1255814459.41921" 
    capture_lex $P1020
    .const 'Sub' $P1008 = "94_1255814459.41921" 
    capture_lex $P1008
    .lex "$_", param_1002
.annotate "line", 366
    find_lex $P1005, "$_"
    unless_null $P1005, vivify_367
    new $P1005, "ResizablePMCArray"
  vivify_367:
    set $P1006, $P1005[1]
    unless_null $P1006, vivify_368
    new $P1006, "Undef"
  vivify_368:
    if $P1006, if_1004
.annotate "line", 388
    .const 'Sub' $P1020 = "95_1255814459.41921" 
    capture_lex $P1020
    $P1025 = $P1020()
    set $P1003, $P1025
.annotate "line", 366
    goto if_1004_end
  if_1004:
    .const 'Sub' $P1008 = "94_1255814459.41921" 
    capture_lex $P1008
    $P1018 = $P1008()
    set $P1003, $P1018
  if_1004_end:
.annotate "line", 365
    .return ($P1003)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1019"  :anon :subid("95_1255814459.41921") :outer("93_1255814459.41921")
.annotate "line", 388
    find_lex $P1021, "$str"
    unless_null $P1021, vivify_369
    new $P1021, "Undef"
  vivify_369:
    find_lex $P1022, "$_"
    unless_null $P1022, vivify_370
    new $P1022, "ResizablePMCArray"
  vivify_370:
    set $P1023, $P1022[0]
    unless_null $P1023, vivify_371
    new $P1023, "Undef"
  vivify_371:
    concat $P1024, $P1021, $P1023
    store_lex "$str", $P1024
    .return ($P1024)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1007"  :anon :subid("94_1255814459.41921") :outer("93_1255814459.41921")
.annotate "line", 367
    find_lex $P1009, "$_"
    unless_null $P1009, vivify_372
    new $P1009, "ResizablePMCArray"
  vivify_372:
    set $P1010, $P1009[0]
    unless_null $P1010, vivify_373
    new $P1010, "Undef"
  vivify_373:
    .lex "$a", $P1010
.annotate "line", 368
    find_lex $P1011, "$_"
    unless_null $P1011, vivify_374
    new $P1011, "ResizablePMCArray"
  vivify_374:
    set $P1012, $P1011[1]
    unless_null $P1012, vivify_375
    new $P1012, "ResizablePMCArray"
  vivify_375:
    set $P1013, $P1012[0]
    unless_null $P1013, vivify_376
    new $P1013, "Undef"
  vivify_376:
    .lex "$b", $P1013
.annotate "line", 369

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
                             $P1014 = box $S2
                         
    .lex "$c", $P1014
.annotate "line", 386
    find_lex $P1015, "$str"
    unless_null $P1015, vivify_377
    new $P1015, "Undef"
  vivify_377:
    find_lex $P1016, "$c"
    unless_null $P1016, vivify_378
    new $P1016, "Undef"
  vivify_378:
    concat $P1017, $P1015, $P1016
    store_lex "$str", $P1017
.annotate "line", 366
    .return ($P1017)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block983"  :anon :subid("91_1255814459.41921") :outer("90_1255814459.41921")
.annotate "line", 362
    find_lex $P985, "$/"
    set $P986, $P985["name"]
    unless_null $P986, vivify_381
    new $P986, "Undef"
  vivify_381:
    set $S987, $P986
    new $P988, 'String'
    set $P988, $S987
    .lex "$name", $P988
.annotate "line", 363
    get_hll_global $P989, ["PAST"], "Regex"
    find_lex $P990, "$name"
    unless_null $P990, vivify_382
    new $P990, "Undef"
  vivify_382:
    find_lex $P991, "$/"
    unless_null $P991, vivify_383
    new $P991, "Undef"
  vivify_383:
    $P992 = $P989."new"($P990, "subrule" :named("pasttype"), "method" :named("subtype"), $P991 :named("node"))
    store_lex "$past", $P992
.annotate "line", 361
    .return ($P992)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("96_1255814459.41921") :method :outer("11_1255814459.41921")
    .param pmc param_1045
.annotate "line", 396
    new $P1044, 'ExceptionHandler'
    set_addr $P1044, control_1043
    $P1044."handle_types"(58)
    push_eh $P1044
    .lex "self", self
    .lex "$/", param_1045
.annotate "line", 397
    get_global $P1046, "@MODIFIERS"
    unless_null $P1046, vivify_387
    new $P1046, "ResizablePMCArray"
  vivify_387:
    set $P1047, $P1046[0]
    unless_null $P1047, vivify_388
    new $P1047, "Undef"
  vivify_388:
    .lex "%mods", $P1047
.annotate "line", 398
    find_lex $P1050, "$/"
    set $P1051, $P1050["n"]
    unless_null $P1051, vivify_389
    new $P1051, "ResizablePMCArray"
  vivify_389:
    set $P1052, $P1051[0]
    unless_null $P1052, vivify_390
    new $P1052, "Undef"
  vivify_390:
    set $S1053, $P1052
    isgt $I1054, $S1053, ""
    if $I1054, if_1049
    new $P1059, "Integer"
    assign $P1059, 1
    set $P1048, $P1059
    goto if_1049_end
  if_1049:
    find_lex $P1055, "$/"
    set $P1056, $P1055["n"]
    unless_null $P1056, vivify_391
    new $P1056, "ResizablePMCArray"
  vivify_391:
    set $P1057, $P1056[0]
    unless_null $P1057, vivify_392
    new $P1057, "Undef"
  vivify_392:
    set $N1058, $P1057
    new $P1048, 'Float'
    set $P1048, $N1058
  if_1049_end:
    .lex "$n", $P1048
.annotate "line", 399
    find_lex $P1060, "$n"
    unless_null $P1060, vivify_393
    new $P1060, "Undef"
  vivify_393:
    find_lex $P1061, "$/"
    set $P1062, $P1061["mod_ident"]
    unless_null $P1062, vivify_394
    new $P1062, "Hash"
  vivify_394:
    set $P1063, $P1062["sym"]
    unless_null $P1063, vivify_395
    new $P1063, "Undef"
  vivify_395:
    set $S1064, $P1063
    find_lex $P1065, "%mods"
    unless_null $P1065, vivify_396
    new $P1065, "Hash"
    store_lex "%mods", $P1065
  vivify_396:
    set $P1065[$S1064], $P1060
    find_lex $P1066, "$/"
.annotate "line", 400
    $P1067 = $P1066."!make"(0)
.annotate "line", 396
    .return ($P1067)
  control_1043:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1068, exception, "payload"
    .return ($P1068)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("97_1255814459.41921") :outer("11_1255814459.41921")
    .param pmc param_1072
.annotate "line", 403
    new $P1071, 'ExceptionHandler'
    set_addr $P1071, control_1070
    $P1071."handle_types"(58)
    push_eh $P1071
    .lex "$rpast", param_1072
.annotate "line", 404
    find_lex $P1073, "$rpast"
    unless_null $P1073, vivify_397
    new $P1073, "Undef"
  vivify_397:
    $P1074 = "capnames"($P1073, 0)
    .lex "%capnames", $P1074
.annotate "line", 405
    new $P1075, "Integer"
    assign $P1075, 0
    find_lex $P1076, "%capnames"
    unless_null $P1076, vivify_398
    new $P1076, "Hash"
    store_lex "%capnames", $P1076
  vivify_398:
    set $P1076[""], $P1075
.annotate "line", 406
    get_hll_global $P1077, ["PAST"], "Regex"
.annotate "line", 407
    get_hll_global $P1078, ["PAST"], "Regex"
    $P1079 = $P1078."new"("scan" :named("pasttype"))
.annotate "line", 408
    find_lex $P1080, "$rpast"
    unless_null $P1080, vivify_399
    new $P1080, "Undef"
  vivify_399:
.annotate "line", 409
    get_hll_global $P1081, ["PAST"], "Regex"
    $P1082 = $P1081."new"("pass" :named("pasttype"))
.annotate "line", 411
    find_lex $P1083, "%capnames"
    unless_null $P1083, vivify_400
    new $P1083, "Hash"
  vivify_400:
    $P1084 = $P1077."new"($P1079, $P1080, $P1082, "concat" :named("pasttype"), $P1083 :named("capnames"))
.annotate "line", 406
    store_lex "$rpast", $P1084
.annotate "line", 413
    get_hll_global $P1085, ["PAST"], "Block"
    find_lex $P1086, "$rpast"
    unless_null $P1086, vivify_401
    new $P1086, "Undef"
  vivify_401:
    $P1087 = $P1085."new"($P1086, "method" :named("blocktype"))
.annotate "line", 403
    .return ($P1087)
  control_1070:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1088, exception, "payload"
    .return ($P1088)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "capnames"  :subid("98_1255814459.41921") :outer("11_1255814459.41921")
    .param pmc param_1092
    .param pmc param_1093
.annotate "line", 416
    .const 'Sub' $P1306 = "112_1255814459.41921" 
    capture_lex $P1306
    .const 'Sub' $P1253 = "109_1255814459.41921" 
    capture_lex $P1253
    .const 'Sub' $P1217 = "106_1255814459.41921" 
    capture_lex $P1217
    .const 'Sub' $P1169 = "103_1255814459.41921" 
    capture_lex $P1169
    .const 'Sub' $P1102 = "99_1255814459.41921" 
    capture_lex $P1102
    new $P1091, 'ExceptionHandler'
    set_addr $P1091, control_1090
    $P1091."handle_types"(58)
    push_eh $P1091
    .lex "$ast", param_1092
    .lex "$count", param_1093
.annotate "line", 417
    new $P1094, "Hash"
    .lex "%capnames", $P1094
.annotate "line", 418
    find_lex $P1095, "$ast"
    unless_null $P1095, vivify_402
    new $P1095, "Undef"
  vivify_402:
    $P1096 = $P1095."pasttype"()
    .lex "$pasttype", $P1096
.annotate "line", 419
    find_lex $P1098, "$pasttype"
    unless_null $P1098, vivify_403
    new $P1098, "Undef"
  vivify_403:
    set $S1099, $P1098
    iseq $I1100, $S1099, "alt"
    if $I1100, if_1097
.annotate "line", 432
    find_lex $P1165, "$pasttype"
    unless_null $P1165, vivify_404
    new $P1165, "Undef"
  vivify_404:
    set $S1166, $P1165
    iseq $I1167, $S1166, "concat"
    if $I1167, if_1164
.annotate "line", 441
    find_lex $P1210, "$pasttype"
    unless_null $P1210, vivify_405
    new $P1210, "Undef"
  vivify_405:
    set $S1211, $P1210
    iseq $I1212, $S1211, "subrule"
    if $I1212, if_1209
    new $P1208, 'Integer'
    set $P1208, $I1212
    goto if_1209_end
  if_1209:
    find_lex $P1213, "$ast"
    unless_null $P1213, vivify_406
    new $P1213, "Undef"
  vivify_406:
    $S1214 = $P1213."subtype"()
    iseq $I1215, $S1214, "capture"
    new $P1208, 'Integer'
    set $P1208, $I1215
  if_1209_end:
    if $P1208, if_1207
.annotate "line", 449
    find_lex $P1249, "$pasttype"
    unless_null $P1249, vivify_407
    new $P1249, "Undef"
  vivify_407:
    set $S1250, $P1249
    iseq $I1251, $S1250, "subcapture"
    if $I1251, if_1248
.annotate "line", 458
    find_lex $P1302, "$pasttype"
    unless_null $P1302, vivify_408
    new $P1302, "Undef"
  vivify_408:
    set $S1303, $P1302
    iseq $I1304, $S1303, "quant"
    unless $I1304, if_1301_end
    .const 'Sub' $P1306 = "112_1255814459.41921" 
    capture_lex $P1306
    $P1306()
  if_1301_end:
.annotate "line", 419
    goto if_1248_end
  if_1248:
.annotate "line", 449
    .const 'Sub' $P1253 = "109_1255814459.41921" 
    capture_lex $P1253
    $P1253()
  if_1248_end:
.annotate "line", 419
    goto if_1207_end
  if_1207:
.annotate "line", 441
    .const 'Sub' $P1217 = "106_1255814459.41921" 
    capture_lex $P1217
    $P1217()
  if_1207_end:
.annotate "line", 419
    goto if_1164_end
  if_1164:
.annotate "line", 432
    .const 'Sub' $P1169 = "103_1255814459.41921" 
    capture_lex $P1169
    $P1169()
  if_1164_end:
.annotate "line", 419
    goto if_1097_end
  if_1097:
    .const 'Sub' $P1102 = "99_1255814459.41921" 
    capture_lex $P1102
    $P1102()
  if_1097_end:
.annotate "line", 465
    find_lex $P1326, "$count"
    unless_null $P1326, vivify_484
    new $P1326, "Undef"
  vivify_484:
    find_lex $P1327, "%capnames"
    unless_null $P1327, vivify_485
    new $P1327, "Hash"
    store_lex "%capnames", $P1327
  vivify_485:
    set $P1327[""], $P1326
.annotate "line", 466
    find_lex $P1328, "%capnames"
    unless_null $P1328, vivify_486
    new $P1328, "Hash"
  vivify_486:
.annotate "line", 416
    .return ($P1328)
  control_1090:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1329, exception, "payload"
    .return ($P1329)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1305"  :anon :subid("112_1255814459.41921") :outer("98_1255814459.41921")
.annotate "line", 458
    .const 'Sub' $P1316 = "113_1255814459.41921" 
    capture_lex $P1316
.annotate "line", 459
    find_lex $P1307, "$ast"
    unless_null $P1307, vivify_409
    new $P1307, "ResizablePMCArray"
  vivify_409:
    set $P1308, $P1307[0]
    unless_null $P1308, vivify_410
    new $P1308, "Undef"
  vivify_410:
    find_lex $P1309, "$count"
    unless_null $P1309, vivify_411
    new $P1309, "Undef"
  vivify_411:
    $P1310 = "capnames"($P1308, $P1309)
    .lex "%astcap", $P1310
.annotate "line", 460
    find_lex $P1312, "%astcap"
    unless_null $P1312, vivify_412
    new $P1312, "Hash"
  vivify_412:
    defined $I1313, $P1312
    unless $I1313, for_undef_413
    iter $P1311, $P1312
    new $P1322, 'ExceptionHandler'
    set_addr $P1322, loop1321_handler
    $P1322."handle_types"(65, 67, 66)
    push_eh $P1322
  loop1321_test:
    unless $P1311, loop1321_done
    shift $P1314, $P1311
  loop1321_redo:
    .const 'Sub' $P1316 = "113_1255814459.41921" 
    capture_lex $P1316
    $P1316($P1314)
  loop1321_next:
    goto loop1321_test
  loop1321_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1323, exception, 'type'
    eq $P1323, 65, loop1321_next
    eq $P1323, 67, loop1321_redo
  loop1321_done:
    pop_eh 
  for_undef_413:
.annotate "line", 463
    find_lex $P1324, "%astcap"
    unless_null $P1324, vivify_416
    new $P1324, "Hash"
  vivify_416:
    set $P1325, $P1324[""]
    unless_null $P1325, vivify_417
    new $P1325, "Undef"
  vivify_417:
    store_lex "$count", $P1325
.annotate "line", 458
    .return ($P1325)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1315"  :anon :subid("113_1255814459.41921") :outer("112_1255814459.41921")
    .param pmc param_1317
.annotate "line", 460
    .lex "$_", param_1317
.annotate "line", 461
    new $P1318, "Integer"
    assign $P1318, 2
    find_lex $P1319, "$_"
    unless_null $P1319, vivify_414
    new $P1319, "Undef"
  vivify_414:
    find_lex $P1320, "%capnames"
    unless_null $P1320, vivify_415
    new $P1320, "Hash"
    store_lex "%capnames", $P1320
  vivify_415:
    set $P1320[$P1319], $P1318
.annotate "line", 460
    .return ($P1318)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1252"  :anon :subid("109_1255814459.41921") :outer("98_1255814459.41921")
.annotate "line", 449
    .const 'Sub' $P1283 = "111_1255814459.41921" 
    capture_lex $P1283
    .const 'Sub' $P1266 = "110_1255814459.41921" 
    capture_lex $P1266
.annotate "line", 450
    find_lex $P1257, "$ast"
    unless_null $P1257, vivify_418
    new $P1257, "Undef"
  vivify_418:
    $S1258 = $P1257."name"()
    iseq $I1259, $S1258, "0"
    unless $I1259, unless_1256
    new $P1255, 'Integer'
    set $P1255, $I1259
    goto unless_1256_end
  unless_1256:
    find_lex $P1260, "$ast"
    unless_null $P1260, vivify_419
    new $P1260, "Undef"
  vivify_419:
    $N1261 = $P1260."name"()
    new $P1262, "Integer"
    assign $P1262, 0
    set $N1263, $P1262
    isgt $I1264, $N1261, $N1263
    new $P1255, 'Integer'
    set $P1255, $I1264
  unless_1256_end:
    unless $P1255, if_1254_end
    .const 'Sub' $P1266 = "110_1255814459.41921" 
    capture_lex $P1266
    $P1266()
  if_1254_end:
.annotate "line", 451
    new $P1270, "Integer"
    assign $P1270, 1
    find_lex $P1271, "$ast"
    unless_null $P1271, vivify_421
    new $P1271, "Undef"
  vivify_421:
    $P1272 = $P1271."name"()
    find_lex $P1273, "%capnames"
    unless_null $P1273, vivify_422
    new $P1273, "Hash"
    store_lex "%capnames", $P1273
  vivify_422:
    set $P1273[$P1272], $P1270
.annotate "line", 452
    find_lex $P1274, "$ast"
    unless_null $P1274, vivify_423
    new $P1274, "ResizablePMCArray"
  vivify_423:
    set $P1275, $P1274[0]
    unless_null $P1275, vivify_424
    new $P1275, "Undef"
  vivify_424:
    find_lex $P1276, "$count"
    unless_null $P1276, vivify_425
    new $P1276, "Undef"
  vivify_425:
    $P1277 = "capnames"($P1275, $P1276)
    .lex "%x", $P1277
.annotate "line", 453
    find_lex $P1279, "%x"
    unless_null $P1279, vivify_426
    new $P1279, "Hash"
  vivify_426:
    defined $I1280, $P1279
    unless $I1280, for_undef_427
    iter $P1278, $P1279
    new $P1297, 'ExceptionHandler'
    set_addr $P1297, loop1296_handler
    $P1297."handle_types"(65, 67, 66)
    push_eh $P1297
  loop1296_test:
    unless $P1278, loop1296_done
    shift $P1281, $P1278
  loop1296_redo:
    .const 'Sub' $P1283 = "111_1255814459.41921" 
    capture_lex $P1283
    $P1283($P1281)
  loop1296_next:
    goto loop1296_test
  loop1296_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1298, exception, 'type'
    eq $P1298, 65, loop1296_next
    eq $P1298, 67, loop1296_redo
  loop1296_done:
    pop_eh 
  for_undef_427:
.annotate "line", 456
    find_lex $P1299, "%x"
    unless_null $P1299, vivify_436
    new $P1299, "Hash"
  vivify_436:
    set $P1300, $P1299[""]
    unless_null $P1300, vivify_437
    new $P1300, "Undef"
  vivify_437:
    store_lex "$count", $P1300
.annotate "line", 449
    .return ($P1300)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1265"  :anon :subid("110_1255814459.41921") :outer("109_1255814459.41921")
.annotate "line", 450
    find_lex $P1267, "$ast"
    unless_null $P1267, vivify_420
    new $P1267, "Undef"
  vivify_420:
    $P1268 = $P1267."name"()
    add $P1269, $P1268, 1
    store_lex "$count", $P1269
    .return ($P1269)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1282"  :anon :subid("111_1255814459.41921") :outer("109_1255814459.41921")
    .param pmc param_1284
.annotate "line", 453
    .lex "$_", param_1284
.annotate "line", 454
    find_lex $P1285, "$_"
    unless_null $P1285, vivify_428
    new $P1285, "Undef"
  vivify_428:
    find_lex $P1286, "%capnames"
    unless_null $P1286, vivify_429
    new $P1286, "Hash"
  vivify_429:
    set $P1287, $P1286[$P1285]
    unless_null $P1287, vivify_430
    new $P1287, "Undef"
  vivify_430:
    set $N1288, $P1287
    new $P1289, 'Float'
    set $P1289, $N1288
    find_lex $P1290, "$_"
    unless_null $P1290, vivify_431
    new $P1290, "Undef"
  vivify_431:
    find_lex $P1291, "%x"
    unless_null $P1291, vivify_432
    new $P1291, "Hash"
  vivify_432:
    set $P1292, $P1291[$P1290]
    unless_null $P1292, vivify_433
    new $P1292, "Undef"
  vivify_433:
    add $P1293, $P1289, $P1292
    find_lex $P1294, "$_"
    unless_null $P1294, vivify_434
    new $P1294, "Undef"
  vivify_434:
    find_lex $P1295, "%capnames"
    unless_null $P1295, vivify_435
    new $P1295, "Hash"
    store_lex "%capnames", $P1295
  vivify_435:
    set $P1295[$P1294], $P1293
.annotate "line", 453
    .return ($P1293)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1216"  :anon :subid("106_1255814459.41921") :outer("98_1255814459.41921")
.annotate "line", 441
    .const 'Sub' $P1240 = "108_1255814459.41921" 
    capture_lex $P1240
    .const 'Sub' $P1223 = "107_1255814459.41921" 
    capture_lex $P1223
.annotate "line", 442
    find_lex $P1219, "$ast"
    unless_null $P1219, vivify_438
    new $P1219, "Undef"
  vivify_438:
    $S1220 = $P1219."name"()
    iseq $I1221, $S1220, ""
    if $I1221, if_1218
.annotate "line", 446
    find_lex $P1231, "$ast"
    unless_null $P1231, vivify_439
    new $P1231, "Undef"
  vivify_439:
    $S1232 = $P1231."name"()
    iseq $I1233, $S1232, "0"
    unless $I1233, unless_1230
    new $P1229, 'Integer'
    set $P1229, $I1233
    goto unless_1230_end
  unless_1230:
    find_lex $P1234, "$ast"
    unless_null $P1234, vivify_440
    new $P1234, "Undef"
  vivify_440:
    $N1235 = $P1234."name"()
    new $P1236, "Integer"
    assign $P1236, 0
    set $N1237, $P1236
    isgt $I1238, $N1235, $N1237
    new $P1229, 'Integer'
    set $P1229, $I1238
  unless_1230_end:
    unless $P1229, if_1228_end
    .const 'Sub' $P1240 = "108_1255814459.41921" 
    capture_lex $P1240
    $P1240()
  if_1228_end:
.annotate "line", 442
    goto if_1218_end
  if_1218:
    .const 'Sub' $P1223 = "107_1255814459.41921" 
    capture_lex $P1223
    $P1223()
  if_1218_end:
.annotate "line", 447
    new $P1244, "Integer"
    assign $P1244, 1
    find_lex $P1245, "$ast"
    unless_null $P1245, vivify_445
    new $P1245, "Undef"
  vivify_445:
    $P1246 = $P1245."name"()
    find_lex $P1247, "%capnames"
    unless_null $P1247, vivify_446
    new $P1247, "Hash"
    store_lex "%capnames", $P1247
  vivify_446:
    set $P1247[$P1246], $P1244
.annotate "line", 441
    .return ($P1244)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1239"  :anon :subid("108_1255814459.41921") :outer("106_1255814459.41921")
.annotate "line", 446
    find_lex $P1241, "$ast"
    unless_null $P1241, vivify_441
    new $P1241, "Undef"
  vivify_441:
    $P1242 = $P1241."name"()
    add $P1243, $P1242, 1
    store_lex "$count", $P1243
    .return ($P1243)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1222"  :anon :subid("107_1255814459.41921") :outer("106_1255814459.41921")
.annotate "line", 443
    find_lex $P1224, "$ast"
    unless_null $P1224, vivify_442
    new $P1224, "Undef"
  vivify_442:
    find_lex $P1225, "$count"
    unless_null $P1225, vivify_443
    new $P1225, "Undef"
  vivify_443:
    $P1224."name"($P1225)
.annotate "line", 444
    find_lex $P1226, "$count"
    unless_null $P1226, vivify_444
    new $P1226, "Undef"
  vivify_444:
    add $P1227, $P1226, 1
    store_lex "$count", $P1227
.annotate "line", 442
    .return ($P1227)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1168"  :anon :subid("103_1255814459.41921") :outer("98_1255814459.41921")
.annotate "line", 432
    .const 'Sub' $P1176 = "104_1255814459.41921" 
    capture_lex $P1176
.annotate "line", 433
    find_lex $P1171, "$ast"
    unless_null $P1171, vivify_447
    new $P1171, "Undef"
  vivify_447:
    $P1172 = $P1171."list"()
    defined $I1173, $P1172
    unless $I1173, for_undef_448
    iter $P1170, $P1172
    new $P1205, 'ExceptionHandler'
    set_addr $P1205, loop1204_handler
    $P1205."handle_types"(65, 67, 66)
    push_eh $P1205
  loop1204_test:
    unless $P1170, loop1204_done
    shift $P1174, $P1170
  loop1204_redo:
    .const 'Sub' $P1176 = "104_1255814459.41921" 
    capture_lex $P1176
    $P1176($P1174)
  loop1204_next:
    goto loop1204_test
  loop1204_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1206, exception, 'type'
    eq $P1206, 65, loop1204_next
    eq $P1206, 67, loop1204_redo
  loop1204_done:
    pop_eh 
  for_undef_448:
.annotate "line", 432
    .return ($P1170)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1175"  :anon :subid("104_1255814459.41921") :outer("103_1255814459.41921")
    .param pmc param_1177
.annotate "line", 433
    .const 'Sub' $P1186 = "105_1255814459.41921" 
    capture_lex $P1186
    .lex "$_", param_1177
.annotate "line", 434
    find_lex $P1178, "$_"
    unless_null $P1178, vivify_449
    new $P1178, "Undef"
  vivify_449:
    find_lex $P1179, "$count"
    unless_null $P1179, vivify_450
    new $P1179, "Undef"
  vivify_450:
    $P1180 = "capnames"($P1178, $P1179)
    .lex "%x", $P1180
.annotate "line", 435
    find_lex $P1182, "%x"
    unless_null $P1182, vivify_451
    new $P1182, "Hash"
  vivify_451:
    defined $I1183, $P1182
    unless $I1183, for_undef_452
    iter $P1181, $P1182
    new $P1200, 'ExceptionHandler'
    set_addr $P1200, loop1199_handler
    $P1200."handle_types"(65, 67, 66)
    push_eh $P1200
  loop1199_test:
    unless $P1181, loop1199_done
    shift $P1184, $P1181
  loop1199_redo:
    .const 'Sub' $P1186 = "105_1255814459.41921" 
    capture_lex $P1186
    $P1186($P1184)
  loop1199_next:
    goto loop1199_test
  loop1199_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1201, exception, 'type'
    eq $P1201, 65, loop1199_next
    eq $P1201, 67, loop1199_redo
  loop1199_done:
    pop_eh 
  for_undef_452:
.annotate "line", 438
    find_lex $P1202, "%x"
    unless_null $P1202, vivify_461
    new $P1202, "Hash"
  vivify_461:
    set $P1203, $P1202[""]
    unless_null $P1203, vivify_462
    new $P1203, "Undef"
  vivify_462:
    store_lex "$count", $P1203
.annotate "line", 433
    .return ($P1203)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1185"  :anon :subid("105_1255814459.41921") :outer("104_1255814459.41921")
    .param pmc param_1187
.annotate "line", 435
    .lex "$_", param_1187
.annotate "line", 436
    find_lex $P1188, "$_"
    unless_null $P1188, vivify_453
    new $P1188, "Undef"
  vivify_453:
    find_lex $P1189, "%capnames"
    unless_null $P1189, vivify_454
    new $P1189, "Hash"
  vivify_454:
    set $P1190, $P1189[$P1188]
    unless_null $P1190, vivify_455
    new $P1190, "Undef"
  vivify_455:
    set $N1191, $P1190
    new $P1192, 'Float'
    set $P1192, $N1191
    find_lex $P1193, "$_"
    unless_null $P1193, vivify_456
    new $P1193, "Undef"
  vivify_456:
    find_lex $P1194, "%x"
    unless_null $P1194, vivify_457
    new $P1194, "Hash"
  vivify_457:
    set $P1195, $P1194[$P1193]
    unless_null $P1195, vivify_458
    new $P1195, "Undef"
  vivify_458:
    add $P1196, $P1192, $P1195
    find_lex $P1197, "$_"
    unless_null $P1197, vivify_459
    new $P1197, "Undef"
  vivify_459:
    find_lex $P1198, "%capnames"
    unless_null $P1198, vivify_460
    new $P1198, "Hash"
    store_lex "%capnames", $P1198
  vivify_460:
    set $P1198[$P1197], $P1196
.annotate "line", 435
    .return ($P1196)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1101"  :anon :subid("99_1255814459.41921") :outer("98_1255814459.41921")
.annotate "line", 419
    .const 'Sub' $P1110 = "100_1255814459.41921" 
    capture_lex $P1110
.annotate "line", 420
    find_lex $P1103, "$count"
    unless_null $P1103, vivify_463
    new $P1103, "Undef"
  vivify_463:
    .lex "$max", $P1103
.annotate "line", 421
    find_lex $P1105, "$ast"
    unless_null $P1105, vivify_464
    new $P1105, "Undef"
  vivify_464:
    $P1106 = $P1105."list"()
    defined $I1107, $P1106
    unless $I1107, for_undef_465
    iter $P1104, $P1106
    new $P1161, 'ExceptionHandler'
    set_addr $P1161, loop1160_handler
    $P1161."handle_types"(65, 67, 66)
    push_eh $P1161
  loop1160_test:
    unless $P1104, loop1160_done
    shift $P1108, $P1104
  loop1160_redo:
    .const 'Sub' $P1110 = "100_1255814459.41921" 
    capture_lex $P1110
    $P1110($P1108)
  loop1160_next:
    goto loop1160_test
  loop1160_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1162, exception, 'type'
    eq $P1162, 65, loop1160_next
    eq $P1162, 67, loop1160_redo
  loop1160_done:
    pop_eh 
  for_undef_465:
.annotate "line", 430
    find_lex $P1163, "$max"
    unless_null $P1163, vivify_483
    new $P1163, "Undef"
  vivify_483:
    store_lex "$count", $P1163
.annotate "line", 419
    .return ($P1163)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1109"  :anon :subid("100_1255814459.41921") :outer("99_1255814459.41921")
    .param pmc param_1111
.annotate "line", 421
    .const 'Sub' $P1156 = "102_1255814459.41921" 
    capture_lex $P1156
    .const 'Sub' $P1120 = "101_1255814459.41921" 
    capture_lex $P1120
    .lex "$_", param_1111
.annotate "line", 422
    find_lex $P1112, "$_"
    unless_null $P1112, vivify_466
    new $P1112, "Undef"
  vivify_466:
    find_lex $P1113, "$count"
    unless_null $P1113, vivify_467
    new $P1113, "Undef"
  vivify_467:
    $P1114 = "capnames"($P1112, $P1113)
    .lex "%x", $P1114
.annotate "line", 423
    find_lex $P1116, "%x"
    unless_null $P1116, vivify_468
    new $P1116, "Hash"
  vivify_468:
    defined $I1117, $P1116
    unless $I1117, for_undef_469
    iter $P1115, $P1116
    new $P1145, 'ExceptionHandler'
    set_addr $P1145, loop1144_handler
    $P1145."handle_types"(65, 67, 66)
    push_eh $P1145
  loop1144_test:
    unless $P1115, loop1144_done
    shift $P1118, $P1115
  loop1144_redo:
    .const 'Sub' $P1120 = "101_1255814459.41921" 
    capture_lex $P1120
    $P1120($P1118)
  loop1144_next:
    goto loop1144_test
  loop1144_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1146, exception, 'type'
    eq $P1146, 65, loop1144_next
    eq $P1146, 67, loop1144_redo
  loop1144_done:
    pop_eh 
  for_undef_469:
.annotate "line", 428
    find_lex $P1149, "%x"
    unless_null $P1149, vivify_478
    new $P1149, "Hash"
  vivify_478:
    set $P1150, $P1149[""]
    unless_null $P1150, vivify_479
    new $P1150, "Undef"
  vivify_479:
    set $N1151, $P1150
    find_lex $P1152, "$max"
    unless_null $P1152, vivify_480
    new $P1152, "Undef"
  vivify_480:
    set $N1153, $P1152
    isgt $I1154, $N1151, $N1153
    if $I1154, if_1148
    new $P1147, 'Integer'
    set $P1147, $I1154
    goto if_1148_end
  if_1148:
    .const 'Sub' $P1156 = "102_1255814459.41921" 
    capture_lex $P1156
    $P1159 = $P1156()
    set $P1147, $P1159
  if_1148_end:
.annotate "line", 421
    .return ($P1147)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1119"  :anon :subid("101_1255814459.41921") :outer("100_1255814459.41921")
    .param pmc param_1121
.annotate "line", 423
    .lex "$_", param_1121
.annotate "line", 424
    find_lex $P1126, "$_"
    unless_null $P1126, vivify_470
    new $P1126, "Undef"
  vivify_470:
    find_lex $P1127, "%capnames"
    unless_null $P1127, vivify_471
    new $P1127, "Hash"
  vivify_471:
    set $P1128, $P1127[$P1126]
    unless_null $P1128, vivify_472
    new $P1128, "Undef"
  vivify_472:
    set $N1129, $P1128
    new $P1130, "Integer"
    assign $P1130, 2
    set $N1131, $P1130
    islt $I1132, $N1129, $N1131
    if $I1132, if_1125
    new $P1124, 'Integer'
    set $P1124, $I1132
    goto if_1125_end
  if_1125:
    find_lex $P1133, "$_"
    unless_null $P1133, vivify_473
    new $P1133, "Undef"
  vivify_473:
    find_lex $P1134, "%x"
    unless_null $P1134, vivify_474
    new $P1134, "Hash"
  vivify_474:
    set $P1135, $P1134[$P1133]
    unless_null $P1135, vivify_475
    new $P1135, "Undef"
  vivify_475:
    set $N1136, $P1135
    new $P1137, "Integer"
    assign $P1137, 1
    set $N1138, $P1137
    iseq $I1139, $N1136, $N1138
    new $P1124, 'Integer'
    set $P1124, $I1139
  if_1125_end:
    if $P1124, if_1123
.annotate "line", 426
    new $P1141, "Integer"
    assign $P1141, 2
    set $P1122, $P1141
.annotate "line", 424
    goto if_1123_end
  if_1123:
.annotate "line", 425
    new $P1140, "Integer"
    assign $P1140, 1
    set $P1122, $P1140
  if_1123_end:
.annotate "line", 424
    find_lex $P1142, "$_"
    unless_null $P1142, vivify_476
    new $P1142, "Undef"
  vivify_476:
    find_lex $P1143, "%capnames"
    unless_null $P1143, vivify_477
    new $P1143, "Hash"
    store_lex "%capnames", $P1143
  vivify_477:
    set $P1143[$P1142], $P1122
.annotate "line", 423
    .return ($P1122)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1155"  :anon :subid("102_1255814459.41921") :outer("100_1255814459.41921")
.annotate "line", 428
    find_lex $P1157, "%x"
    unless_null $P1157, vivify_481
    new $P1157, "Hash"
  vivify_481:
    set $P1158, $P1157[""]
    unless_null $P1158, vivify_482
    new $P1158, "Undef"
  vivify_482:
    store_lex "$max", $P1158
    .return ($P1158)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("114_1255814459.41921") :outer("11_1255814459.41921")
    .param pmc param_1333
    .param pmc param_1334
.annotate "line", 469
    .const 'Sub' $P1366 = "117_1255814459.41921" 
    capture_lex $P1366
    .const 'Sub' $P1353 = "116_1255814459.41921" 
    capture_lex $P1353
    .const 'Sub' $P1340 = "115_1255814459.41921" 
    capture_lex $P1340
    new $P1332, 'ExceptionHandler'
    set_addr $P1332, control_1331
    $P1332."handle_types"(58)
    push_eh $P1332
    .lex "$ast", param_1333
    .lex "$backmod", param_1334
.annotate "line", 470
    find_lex $P1336, "$backmod"
    unless_null $P1336, vivify_487
    new $P1336, "Undef"
  vivify_487:
    set $S1337, $P1336
    iseq $I1338, $S1337, ":"
    if $I1338, if_1335
.annotate "line", 471
    find_lex $P1346, "$backmod"
    unless_null $P1346, vivify_488
    new $P1346, "Undef"
  vivify_488:
    set $S1347, $P1346
    iseq $I1348, $S1347, ":?"
    unless $I1348, unless_1345
    new $P1344, 'Integer'
    set $P1344, $I1348
    goto unless_1345_end
  unless_1345:
    find_lex $P1349, "$backmod"
    unless_null $P1349, vivify_489
    new $P1349, "Undef"
  vivify_489:
    set $S1350, $P1349
    iseq $I1351, $S1350, "?"
    new $P1344, 'Integer'
    set $P1344, $I1351
  unless_1345_end:
    if $P1344, if_1343
.annotate "line", 472
    find_lex $P1359, "$backmod"
    unless_null $P1359, vivify_490
    new $P1359, "Undef"
  vivify_490:
    set $S1360, $P1359
    iseq $I1361, $S1360, ":!"
    unless $I1361, unless_1358
    new $P1357, 'Integer'
    set $P1357, $I1361
    goto unless_1358_end
  unless_1358:
    find_lex $P1362, "$backmod"
    unless_null $P1362, vivify_491
    new $P1362, "Undef"
  vivify_491:
    set $S1363, $P1362
    iseq $I1364, $S1363, "!"
    new $P1357, 'Integer'
    set $P1357, $I1364
  unless_1358_end:
    unless $P1357, if_1356_end
    .const 'Sub' $P1366 = "117_1255814459.41921" 
    capture_lex $P1366
    $P1366()
  if_1356_end:
.annotate "line", 470
    goto if_1343_end
  if_1343:
.annotate "line", 471
    .const 'Sub' $P1353 = "116_1255814459.41921" 
    capture_lex $P1353
    $P1353()
  if_1343_end:
.annotate "line", 470
    goto if_1335_end
  if_1335:
    .const 'Sub' $P1340 = "115_1255814459.41921" 
    capture_lex $P1340
    $P1340()
  if_1335_end:
.annotate "line", 473
    find_lex $P1369, "$ast"
    unless_null $P1369, vivify_495
    new $P1369, "Undef"
  vivify_495:
.annotate "line", 469
    .return ($P1369)
  control_1331:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1370, exception, "payload"
    .return ($P1370)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1365"  :anon :subid("117_1255814459.41921") :outer("114_1255814459.41921")
.annotate "line", 472
    find_lex $P1367, "$ast"
    unless_null $P1367, vivify_492
    new $P1367, "Undef"
  vivify_492:
    $P1368 = $P1367."backtrack"("g")
    .return ($P1368)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1352"  :anon :subid("116_1255814459.41921") :outer("114_1255814459.41921")
.annotate "line", 471
    find_lex $P1354, "$ast"
    unless_null $P1354, vivify_493
    new $P1354, "Undef"
  vivify_493:
    $P1355 = $P1354."backtrack"("f")
    .return ($P1355)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1339"  :anon :subid("115_1255814459.41921") :outer("114_1255814459.41921")
.annotate "line", 470
    find_lex $P1341, "$ast"
    unless_null $P1341, vivify_494
    new $P1341, "Undef"
  vivify_494:
    $P1342 = $P1341."backtrack"("r")
    .return ($P1342)
.end

### .include 'src/cheats/p6regex-grammar.pir'
.namespace ['Regex';'P6Regex';'Grammar']

.sub 'quantifier' :method
    .param pmc action          :named('action') :optional
    .param pmc dba             :named('dba') :optional
    .tailcall self.'!protoregex'('quantifier', 'action'=>action)
.end

.sub 'metachar' :method
    .param pmc action          :named('action') :optional
    .param pmc dba             :named('dba') :optional
    .tailcall self.'!protoregex'('metachar', 'action'=>action)
.end

.sub 'backslash' :method
    .param pmc action          :named('action') :optional
    .param pmc dba             :named('dba') :optional
    .tailcall self.'!protoregex'('backslash', 'action'=>action)
.end

.sub 'assertion' :method
    .param pmc action          :named('action') :optional
    .param pmc dba             :named('dba') :optional
    .tailcall self.'!protoregex'('assertion', 'action'=>action)
.end

.sub 'mod_ident' :method
    .param pmc action          :named('action') :optional
    .param pmc dba             :named('dba') :optional
    .tailcall self.'!protoregex'('mod_ident', 'action'=>action)
.end

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
