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
    unless negate goto negate_done
    .return (prefix)
  negate_done:

    .local string charlist
    charlist = self[0]

    unless tail goto charlist_notail

    .local string subtype
    subtype = self.'subtype'()
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
.end


.sub 'prefix_subcapture' :method
    .param string prefix
    .param pmc tail

    .tailcall self.'prefix_concat'(prefix, tail)
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

    .local pmc peeklabel, startlabel, donelabel, faillabel
    $S0 = concat prefix, 'peek'
    peeklabel = self.'post_new'('Label', 'result'=>$S0)
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

    .local pmc peek
    .local int peek_len
    (peek :slurpy) = node.'prefix'('')
    peek_len = elements peek
    $I0 = 0
  peek_loop:
    unless $I0 < peek_len goto peek_done
    $S0 = peek[$I0]
    $S0 = self.'escape'($S0)
    peek[$I0] = $S0
    inc $I0
    goto peek_loop
  peek_done:
    ops.'push_pirop'('getattribute', '$P10', 'self', '"$!type"')
    ops.'push_pirop'('if_null', '$P10', peeklabel)
    ops.'push_pirop'('ne', '$P10', CURSOR_TYPE_PEEK, peeklabel)
    ops.'push_pirop'('return', peek :flat)
    ops.'push'(peeklabel)

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

    self.'!cursor_debug'('START ', name)

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
    # from the protoregex table.  If they haven't been computed
    # yet for this table, then do that now.
    .local pmc tokrx, toklen
    $S0 = concat name, '.tokrx'
    tokrx = prototable[$S0]
    $S0 = concat name, '.toklen'
    toklen = prototable[$S0]
    unless null tokrx goto have_tokrx
    (tokrx, toklen) = self.'!protoregex_gen_tokrx'(prototable, name)
  have_tokrx:

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

    # Create a hash to keep track of the methods we've already called,
    # so that we don't end up calling it twice.  
    .local pmc mcalled
    mcalled = new ['Hash']

    # Look in the tokrx hash for any rules that are keyed with the
    # current token.  If there aren't any, or the rules we have don't
    # match, then shorten the token by one character and try again
    # until we either have a match or we've run out of candidates.
  token_loop:
    self.'!cursor_debug'('TOKEN token=', token, ', token1=', token1)
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

    .local pmc peekcur
    peekcur = self.'!cursor_start'()
    $P0 = box CURSOR_TYPE_PEEK
    setattribute peekcur, '$!type', $P0
    
    .local pmc method_it, method
    .local string method_name
    method_it = iter prototable
  method_loop:
    unless method_it goto method_done
    method_name = shift method_it
    $S0 = substr method_name, 0, mlen
    if $S0 != mprefix goto method_loop

    # Okay, we've found a method name intended for this protoregex.
    # Now we look up the method itself, and ask it for its prefix tokens.
    # If it doesn't return any, we use '' as its only prefix.
    .local pmc rx, tokens, tokens_it
    rx = find_method self, method_name
    (tokens :slurpy) = peekcur.rx()

    # Now loop through all of the tokens for the method, updating
    # the longest initial key and adding it to the tokrx hash.
    # We automatically promote entries in tokrx to arrays when
    # there's more than one method candidate for a given token.
    .local pmc seentok, sorttok
    seentok = new ['Hash']
    sorttok = new ['ResizablePMCArray']
  tokens_loop:
    unless tokens goto tokens_done
    .local string tkey, tfirst
    tkey = ''
    $P0 = shift tokens
    $I0 = isa $P0, ['Regex';'Cursor']
    if $I0 goto have_tkey
    tkey = $P0
  have_tkey:

    # If we've already processed this token for this rule, don't enter it twice
    $I0 = exists seentok[tkey]
    if $I0 goto tokens_loop
    seentok[tkey] = seentok

    # Keep track of longest token lengths by first character
    tfirst = substr tkey, 0, 1
    $I0 = length tkey
    $I1 = toklen[tfirst]
    if $I0 <= $I1 goto toklen_done
    toklen[tfirst] = $I0
  toklen_done:

    # Add the regex to the list under the token key
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
.sub "_block11"  :subid("10_1256191324.59793")
.annotate "line", 0
    .const 'Sub' $P311 = "85_1256191324.59793" 
    capture_lex $P311
    .const 'Sub' $P306 = "84_1256191324.59793" 
    capture_lex $P306
    .const 'Sub' $P301 = "83_1256191324.59793" 
    capture_lex $P301
    .const 'Sub' $P286 = "80_1256191324.59793" 
    capture_lex $P286
    .const 'Sub' $P254 = "75_1256191324.59793" 
    capture_lex $P254
    .const 'Sub' $P245 = "73_1256191324.59793" 
    capture_lex $P245
    .const 'Sub' $P235 = "71_1256191324.59793" 
    capture_lex $P235
    .const 'Sub' $P233 = "70_1256191324.59793" 
    capture_lex $P233
    .const 'Sub' $P226 = "68_1256191324.59793" 
    capture_lex $P226
    .const 'Sub' $P219 = "66_1256191324.59793" 
    capture_lex $P219
    .const 'Sub' $P215 = "64_1256191324.59793" 
    capture_lex $P215
    .const 'Sub' $P213 = "63_1256191324.59793" 
    capture_lex $P213
    .const 'Sub' $P211 = "62_1256191324.59793" 
    capture_lex $P211
    .const 'Sub' $P209 = "61_1256191324.59793" 
    capture_lex $P209
    .const 'Sub' $P207 = "60_1256191324.59793" 
    capture_lex $P207
    .const 'Sub' $P204 = "59_1256191324.59793" 
    capture_lex $P204
    .const 'Sub' $P201 = "58_1256191324.59793" 
    capture_lex $P201
    .const 'Sub' $P198 = "57_1256191324.59793" 
    capture_lex $P198
    .const 'Sub' $P195 = "56_1256191324.59793" 
    capture_lex $P195
    .const 'Sub' $P192 = "55_1256191324.59793" 
    capture_lex $P192
    .const 'Sub' $P189 = "54_1256191324.59793" 
    capture_lex $P189
    .const 'Sub' $P186 = "53_1256191324.59793" 
    capture_lex $P186
    .const 'Sub' $P183 = "52_1256191324.59793" 
    capture_lex $P183
    .const 'Sub' $P172 = "50_1256191324.59793" 
    capture_lex $P172
    .const 'Sub' $P169 = "49_1256191324.59793" 
    capture_lex $P169
    .const 'Sub' $P155 = "48_1256191324.59793" 
    capture_lex $P155
    .const 'Sub' $P152 = "47_1256191324.59793" 
    capture_lex $P152
    .const 'Sub' $P150 = "46_1256191324.59793" 
    capture_lex $P150
    .const 'Sub' $P148 = "45_1256191324.59793" 
    capture_lex $P148
    .const 'Sub' $P144 = "44_1256191324.59793" 
    capture_lex $P144
    .const 'Sub' $P140 = "43_1256191324.59793" 
    capture_lex $P140
    .const 'Sub' $P137 = "42_1256191324.59793" 
    capture_lex $P137
    .const 'Sub' $P134 = "41_1256191324.59793" 
    capture_lex $P134
    .const 'Sub' $P131 = "40_1256191324.59793" 
    capture_lex $P131
    .const 'Sub' $P128 = "39_1256191324.59793" 
    capture_lex $P128
    .const 'Sub' $P125 = "38_1256191324.59793" 
    capture_lex $P125
    .const 'Sub' $P122 = "37_1256191324.59793" 
    capture_lex $P122
    .const 'Sub' $P119 = "36_1256191324.59793" 
    capture_lex $P119
    .const 'Sub' $P117 = "35_1256191324.59793" 
    capture_lex $P117
    .const 'Sub' $P115 = "34_1256191324.59793" 
    capture_lex $P115
    .const 'Sub' $P113 = "33_1256191324.59793" 
    capture_lex $P113
    .const 'Sub' $P111 = "32_1256191324.59793" 
    capture_lex $P111
    .const 'Sub' $P100 = "29_1256191324.59793" 
    capture_lex $P100
    .const 'Sub' $P91 = "28_1256191324.59793" 
    capture_lex $P91
    .const 'Sub' $P88 = "27_1256191324.59793" 
    capture_lex $P88
    .const 'Sub' $P85 = "26_1256191324.59793" 
    capture_lex $P85
    .const 'Sub' $P82 = "25_1256191324.59793" 
    capture_lex $P82
    .const 'Sub' $P69 = "22_1256191324.59793" 
    capture_lex $P69
    .const 'Sub' $P60 = "20_1256191324.59793" 
    capture_lex $P60
    .const 'Sub' $P56 = "19_1256191324.59793" 
    capture_lex $P56
    .const 'Sub' $P47 = "18_1256191324.59793" 
    capture_lex $P47
    .const 'Sub' $P44 = "17_1256191324.59793" 
    capture_lex $P44
    .const 'Sub' $P34 = "16_1256191324.59793" 
    capture_lex $P34
    .const 'Sub' $P30 = "15_1256191324.59793" 
    capture_lex $P30
    .const 'Sub' $P25 = "14_1256191324.59793" 
    capture_lex $P25
    .const 'Sub' $P18 = "12_1256191324.59793" 
    capture_lex $P18
    .const 'Sub' $P13 = "11_1256191324.59793" 
    capture_lex $P13
.annotate "line", 165
    .const 'Sub' $P311 = "85_1256191324.59793" 
    capture_lex $P311
.annotate "line", 1
    .return ($P311)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post86") :outer("10_1256191324.59793")
.annotate "line", 0
    get_hll_global $P12, ["Regex";"P6Regex";"Grammar"], "_block11" 
    .local pmc block
    set block, $P12
.annotate "line", 1
    get_hll_global $P316, "P6metaclass"
    $P316."new_class"("Regex::P6Regex::Grammar", "Regex::Cursor" :named("parent"))
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("11_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 3
    .local string rx14_tgt
    .local int rx14_pos
    .local int rx14_off
    .local int rx14_eos
    .local int rx14_rep
    .local pmc rx14_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx14_peek
    ne $P10, 2, rx14_peek
    .return ("")
  rx14_peek:
    (rx14_cur, rx14_pos, rx14_tgt, $I10) = self."!cursor_start"()
    rx14_cur."!cursor_debug"("START ", "ws")
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
.sub "normspace"  :subid("12_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 5
    .const 'Sub' $P21 = "13_1256191324.59793" 
    capture_lex $P21
    .local string rx19_tgt
    .local int rx19_pos
    .local int rx19_off
    .local int rx19_eos
    .local int rx19_rep
    .local pmc rx19_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx19_peek
    ne $P10, 2, rx19_peek
    .return ("")
  rx19_peek:
    (rx19_cur, rx19_pos, rx19_tgt, $I10) = self."!cursor_start"()
    rx19_cur."!cursor_debug"("START ", "normspace")
    .lex unicode:"$\x{a2}", rx19_cur
    length rx19_eos, rx19_tgt
    set rx19_off, 0
    lt $I10, 2, rx19_start
    sub rx19_off, $I10, 1
    substr rx19_tgt, rx19_tgt, rx19_off
  rx19_start:
  # rx subrule "before" subtype=zerowidth negate=
    rx19_cur."!cursor_pos"(rx19_pos)
    .const 'Sub' $P21 = "13_1256191324.59793" 
    capture_lex $P21
    $P10 = rx19_cur."before"($P21)
    unless $P10, rx19_fail
  # rx subrule "ws" subtype=method negate=
    rx19_cur."!cursor_pos"(rx19_pos)
    $P10 = rx19_cur."ws"()
    unless $P10, rx19_fail
    rx19_pos = $P10."pos"()
  # rx pass
    rx19_cur."!cursor_pass"(rx19_pos, "normspace")
    rx19_cur."!cursor_debug"("PASS  ", "normspace", " at pos=", rx19_pos)
    .return (rx19_cur)
  rx19_fail:
    (rx19_rep, rx19_pos, $I10, $P10) = rx19_cur."!mark_fail"(0)
    lt rx19_pos, -1, rx19_done
    eq rx19_pos, -1, rx19_fail
    jump $I10
  rx19_done:
    rx19_cur."!cursor_fail"()
    rx19_cur."!cursor_debug"("FAIL  ", "normspace")
    .return (rx19_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block20"  :anon :subid("13_1256191324.59793") :method :outer("12_1256191324.59793")
.annotate "line", 5
    .local string rx22_tgt
    .local int rx22_pos
    .local int rx22_off
    .local int rx22_eos
    .local int rx22_rep
    .local pmc rx22_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx22_peek
    ne $P10, 2, rx22_peek
    .return ("#", "")
  rx22_peek:
    (rx22_cur, rx22_pos, rx22_tgt, $I10) = self."!cursor_start"()
    rx22_cur."!cursor_debug"("START ", "")
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
    rx22_cur."!cursor_debug"("PASS  ", "", " at pos=", rx22_pos)
    .return (rx22_cur)
  rx22_fail:
    (rx22_rep, rx22_pos, $I10, $P10) = rx22_cur."!mark_fail"(0)
    lt rx22_pos, -1, rx22_done
    eq rx22_pos, -1, rx22_fail
    jump $I10
  rx22_done:
    rx22_cur."!cursor_fail"()
    rx22_cur."!cursor_debug"("FAIL  ", "")
    .return (rx22_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quote"  :subid("14_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 7
    .local string rx26_tgt
    .local int rx26_pos
    .local int rx26_off
    .local int rx26_eos
    .local int rx26_rep
    .local pmc rx26_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx26_peek
    ne $P10, 2, rx26_peek
    .return ("'")
  rx26_peek:
    (rx26_cur, rx26_pos, rx26_tgt, $I10) = self."!cursor_start"()
    rx26_cur."!cursor_debug"("START ", "quote")
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
    rx26_cur."!cursor_debug"("PASS  ", "quote", " at pos=", rx26_pos)
    .return (rx26_cur)
  rx26_fail:
    (rx26_rep, rx26_pos, $I10, $P10) = rx26_cur."!mark_fail"(0)
    lt rx26_pos, -1, rx26_done
    eq rx26_pos, -1, rx26_fail
    jump $I10
  rx26_done:
    rx26_cur."!cursor_fail"()
    rx26_cur."!cursor_debug"("FAIL  ", "quote")
    .return (rx26_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("15_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 9
    .local string rx31_tgt
    .local int rx31_pos
    .local int rx31_off
    .local int rx31_eos
    .local int rx31_rep
    .local pmc rx31_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx31_peek
    ne $P10, 2, rx31_peek
    .return ("", "")
  rx31_peek:
    (rx31_cur, rx31_pos, rx31_tgt, $I10) = self."!cursor_start"()
    rx31_cur."!cursor_debug"("START ", "arg")
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
    rx31_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx31_pos = $P10."pos"()
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
    rx31_cur."!cursor_debug"("PASS  ", "arg", " at pos=", rx31_pos)
    .return (rx31_cur)
  rx31_fail:
    (rx31_rep, rx31_pos, $I10, $P10) = rx31_cur."!mark_fail"(0)
    lt rx31_pos, -1, rx31_done
    eq rx31_pos, -1, rx31_fail
    jump $I10
  rx31_done:
    rx31_cur."!cursor_fail"()
    rx31_cur."!cursor_debug"("FAIL  ", "arg")
    .return (rx31_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("16_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 16
    .local string rx35_tgt
    .local int rx35_pos
    .local int rx35_off
    .local int rx35_eos
    .local int rx35_rep
    .local pmc rx35_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx35_peek
    ne $P10, 2, rx35_peek
    .return ("")
  rx35_peek:
    (rx35_cur, rx35_pos, rx35_tgt, $I10) = self."!cursor_start"()
    rx35_cur."!cursor_debug"("START ", "arglist")
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
  # rx subrule "arg" subtype=capture negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."arg"()
    unless $P10, rx35_fail
    rx35_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx35_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."ws"()
    unless $P10, rx35_fail
    rx35_pos = $P10."pos"()
  # rx rxquantr38 ** 0..*
    set_addr $I42, rxquantr38_done
    rx35_cur."!mark_push"(0, rx35_pos, $I42)
  rxquantr38_loop:
  # rx subrule "ws" subtype=method negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."ws"()
    unless $P10, rx35_fail
    rx35_pos = $P10."pos"()
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
  # rx subrule "arg" subtype=capture negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."arg"()
    unless $P10, rx35_fail
    rx35_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx35_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."ws"()
    unless $P10, rx35_fail
    rx35_pos = $P10."pos"()
    (rx35_rep) = rx35_cur."!mark_commit"($I42)
    rx35_cur."!mark_push"(rx35_rep, rx35_pos, $I42)
    goto rxquantr38_loop
  rxquantr38_done:
  # rx subrule "ws" subtype=method negate=
    rx35_cur."!cursor_pos"(rx35_pos)
    $P10 = rx35_cur."ws"()
    unless $P10, rx35_fail
    rx35_pos = $P10."pos"()
  # rx pass
    rx35_cur."!cursor_pass"(rx35_pos, "arglist")
    rx35_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx35_pos)
    .return (rx35_cur)
  rx35_fail:
    (rx35_rep, rx35_pos, $I10, $P10) = rx35_cur."!mark_fail"(0)
    lt rx35_pos, -1, rx35_done
    eq rx35_pos, -1, rx35_fail
    jump $I10
  rx35_done:
    rx35_cur."!cursor_fail"()
    rx35_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx35_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("17_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 18
    .local string rx45_tgt
    .local int rx45_pos
    .local int rx45_off
    .local int rx45_eos
    .local int rx45_rep
    .local pmc rx45_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx45_peek
    ne $P10, 2, rx45_peek
    .return ("")
  rx45_peek:
    (rx45_cur, rx45_pos, rx45_tgt, $I10) = self."!cursor_start"()
    rx45_cur."!cursor_debug"("START ", "TOP")
    .lex unicode:"$\x{a2}", rx45_cur
    length rx45_eos, rx45_tgt
    set rx45_off, 0
    lt $I10, 2, rx45_start
    sub rx45_off, $I10, 1
    substr rx45_tgt, rx45_tgt, rx45_off
  rx45_start:
.annotate "line", 19
  # rx subrule "nibbler" subtype=capture negate=
    rx45_cur."!cursor_pos"(rx45_pos)
    $P10 = rx45_cur."nibbler"()
    unless $P10, rx45_fail
    rx45_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx45_pos = $P10."pos"()
  alt46_0:
.annotate "line", 20
    set_addr $I10, alt46_1
    rx45_cur."!mark_push"(0, rx45_pos, $I10)
  # rxanchor eos
    ne rx45_pos, rx45_eos, rx45_fail
    goto alt46_end
  alt46_1:
  # rx subrule "panic" subtype=method negate=
    rx45_cur."!cursor_pos"(rx45_pos)
    $P10 = rx45_cur."panic"("Confused")
    unless $P10, rx45_fail
    rx45_pos = $P10."pos"()
  alt46_end:
.annotate "line", 18
  # rx pass
    rx45_cur."!cursor_pass"(rx45_pos, "TOP")
    rx45_cur."!cursor_debug"("PASS  ", "TOP", " at pos=", rx45_pos)
    .return (rx45_cur)
  rx45_fail:
    (rx45_rep, rx45_pos, $I10, $P10) = rx45_cur."!mark_fail"(0)
    lt rx45_pos, -1, rx45_done
    eq rx45_pos, -1, rx45_fail
    jump $I10
  rx45_done:
    rx45_cur."!cursor_fail"()
    rx45_cur."!cursor_debug"("FAIL  ", "TOP")
    .return (rx45_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("18_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 23
    .local string rx48_tgt
    .local int rx48_pos
    .local int rx48_off
    .local int rx48_eos
    .local int rx48_rep
    .local pmc rx48_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx48_peek
    ne $P10, 2, rx48_peek
    .return ("")
  rx48_peek:
    (rx48_cur, rx48_pos, rx48_tgt, $I10) = self."!cursor_start"()
    rx48_cur."!cursor_debug"("START ", "nibbler")
    rx48_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx48_cur
    length rx48_eos, rx48_tgt
    set rx48_off, 0
    lt $I10, 2, rx48_start
    sub rx48_off, $I10, 1
    substr rx48_tgt, rx48_tgt, rx48_off
  rx48_start:
.annotate "line", 24
  # rx reduce name="nibbler" key="open"
    rx48_cur."!cursor_pos"(rx48_pos)
    rx48_cur."!reduce"("nibbler", "open")
.annotate "line", 25
  # rx rxquantr49 ** 0..1
    set_addr $I51, rxquantr49_done
    rx48_cur."!mark_push"(0, rx48_pos, $I51)
  rxquantr49_loop:
  # rx subrule "ws" subtype=method negate=
    rx48_cur."!cursor_pos"(rx48_pos)
    $P10 = rx48_cur."ws"()
    unless $P10, rx48_fail
    rx48_pos = $P10."pos"()
  alt50_0:
    set_addr $I10, alt50_1
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  # rx literal  "||"
    add $I11, rx48_pos, 2
    gt $I11, rx48_eos, rx48_fail
    sub $I11, rx48_pos, rx48_off
    substr $S10, rx48_tgt, $I11, 2
    ne $S10, "||", rx48_fail
    add rx48_pos, 2
    goto alt50_end
  alt50_1:
    set_addr $I10, alt50_2
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  # rx literal  "|"
    add $I11, rx48_pos, 1
    gt $I11, rx48_eos, rx48_fail
    sub $I11, rx48_pos, rx48_off
    substr $S10, rx48_tgt, $I11, 1
    ne $S10, "|", rx48_fail
    add rx48_pos, 1
    goto alt50_end
  alt50_2:
    set_addr $I10, alt50_3
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  # rx literal  "&&"
    add $I11, rx48_pos, 2
    gt $I11, rx48_eos, rx48_fail
    sub $I11, rx48_pos, rx48_off
    substr $S10, rx48_tgt, $I11, 2
    ne $S10, "&&", rx48_fail
    add rx48_pos, 2
    goto alt50_end
  alt50_3:
  # rx literal  "&"
    add $I11, rx48_pos, 1
    gt $I11, rx48_eos, rx48_fail
    sub $I11, rx48_pos, rx48_off
    substr $S10, rx48_tgt, $I11, 1
    ne $S10, "&", rx48_fail
    add rx48_pos, 1
  alt50_end:
    (rx48_rep) = rx48_cur."!mark_commit"($I51)
  rxquantr49_done:
.annotate "line", 26
  # rx subrule "termish" subtype=capture negate=
    rx48_cur."!cursor_pos"(rx48_pos)
    $P10 = rx48_cur."termish"()
    unless $P10, rx48_fail
    rx48_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx48_pos = $P10."pos"()
.annotate "line", 29
  # rx rxquantr52 ** 0..*
    set_addr $I55, rxquantr52_done
    rx48_cur."!mark_push"(0, rx48_pos, $I55)
  rxquantr52_loop:
  alt53_0:
.annotate "line", 27
    set_addr $I10, alt53_1
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  # rx literal  "||"
    add $I11, rx48_pos, 2
    gt $I11, rx48_eos, rx48_fail
    sub $I11, rx48_pos, rx48_off
    substr $S10, rx48_tgt, $I11, 2
    ne $S10, "||", rx48_fail
    add rx48_pos, 2
    goto alt53_end
  alt53_1:
  # rx literal  "|"
    add $I11, rx48_pos, 1
    gt $I11, rx48_eos, rx48_fail
    sub $I11, rx48_pos, rx48_off
    substr $S10, rx48_tgt, $I11, 1
    ne $S10, "|", rx48_fail
    add rx48_pos, 1
  alt53_end:
  alt54_0:
.annotate "line", 28
    set_addr $I10, alt54_1
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx48_cur."!cursor_pos"(rx48_pos)
    $P10 = rx48_cur."termish"()
    unless $P10, rx48_fail
    rx48_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx48_pos = $P10."pos"()
    goto alt54_end
  alt54_1:
  # rx subrule "panic" subtype=method negate=
    rx48_cur."!cursor_pos"(rx48_pos)
    $P10 = rx48_cur."panic"("Null pattern not allowed")
    unless $P10, rx48_fail
    rx48_pos = $P10."pos"()
  alt54_end:
.annotate "line", 29
    (rx48_rep) = rx48_cur."!mark_commit"($I55)
    rx48_cur."!mark_push"(rx48_rep, rx48_pos, $I55)
    goto rxquantr52_loop
  rxquantr52_done:
.annotate "line", 23
  # rx pass
    rx48_cur."!cursor_pass"(rx48_pos, "nibbler")
    rx48_cur."!cursor_debug"("PASS  ", "nibbler", " at pos=", rx48_pos)
    .return (rx48_cur)
  rx48_fail:
    (rx48_rep, rx48_pos, $I10, $P10) = rx48_cur."!mark_fail"(0)
    lt rx48_pos, -1, rx48_done
    eq rx48_pos, -1, rx48_fail
    jump $I10
  rx48_done:
    rx48_cur."!cursor_fail"()
    rx48_cur."!cursor_debug"("FAIL  ", "nibbler")
    .return (rx48_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("19_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 32
    .local string rx57_tgt
    .local int rx57_pos
    .local int rx57_off
    .local int rx57_eos
    .local int rx57_rep
    .local pmc rx57_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx57_peek
    ne $P10, 2, rx57_peek
    .return ("")
  rx57_peek:
    (rx57_cur, rx57_pos, rx57_tgt, $I10) = self."!cursor_start"()
    rx57_cur."!cursor_debug"("START ", "termish")
    rx57_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx57_cur
    length rx57_eos, rx57_tgt
    set rx57_off, 0
    lt $I10, 2, rx57_start
    sub rx57_off, $I10, 1
    substr rx57_tgt, rx57_tgt, rx57_off
  rx57_start:
.annotate "line", 33
  # rx rxquantr58 ** 1..*
    set_addr $I59, rxquantr58_done
    rx57_cur."!mark_push"(0, -1, $I59)
  rxquantr58_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx57_cur."!cursor_pos"(rx57_pos)
    $P10 = rx57_cur."quantified_atom"()
    unless $P10, rx57_fail
    rx57_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("noun")
    rx57_pos = $P10."pos"()
    (rx57_rep) = rx57_cur."!mark_commit"($I59)
    rx57_cur."!mark_push"(rx57_rep, rx57_pos, $I59)
    goto rxquantr58_loop
  rxquantr58_done:
.annotate "line", 32
  # rx pass
    rx57_cur."!cursor_pass"(rx57_pos, "termish")
    rx57_cur."!cursor_debug"("PASS  ", "termish", " at pos=", rx57_pos)
    .return (rx57_cur)
  rx57_fail:
    (rx57_rep, rx57_pos, $I10, $P10) = rx57_cur."!mark_fail"(0)
    lt rx57_pos, -1, rx57_done
    eq rx57_pos, -1, rx57_fail
    jump $I10
  rx57_done:
    rx57_cur."!cursor_fail"()
    rx57_cur."!cursor_debug"("FAIL  ", "termish")
    .return (rx57_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("20_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 36
    .const 'Sub' $P65 = "21_1256191324.59793" 
    capture_lex $P65
    .local string rx61_tgt
    .local int rx61_pos
    .local int rx61_off
    .local int rx61_eos
    .local int rx61_rep
    .local pmc rx61_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx61_peek
    ne $P10, 2, rx61_peek
    .return ("")
  rx61_peek:
    (rx61_cur, rx61_pos, rx61_tgt, $I10) = self."!cursor_start"()
    rx61_cur."!cursor_debug"("START ", "quantified_atom")
    rx61_cur."!cursor_caparray"("quantifier", "backmod")
    .lex unicode:"$\x{a2}", rx61_cur
    length rx61_eos, rx61_tgt
    set rx61_off, 0
    lt $I10, 2, rx61_start
    sub rx61_off, $I10, 1
    substr rx61_tgt, rx61_tgt, rx61_off
  rx61_start:
.annotate "line", 37
  # rx subrule "atom" subtype=capture negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."atom"()
    unless $P10, rx61_fail
    rx61_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx61_pos = $P10."pos"()
  # rx rxquantr62 ** 0..1
    set_addr $I68, rxquantr62_done
    rx61_cur."!mark_push"(0, rx61_pos, $I68)
  rxquantr62_loop:
  # rx subrule "ws" subtype=method negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."ws"()
    unless $P10, rx61_fail
    rx61_pos = $P10."pos"()
  alt63_0:
    set_addr $I10, alt63_1
    rx61_cur."!mark_push"(0, rx61_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."quantifier"()
    unless $P10, rx61_fail
    rx61_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx61_pos = $P10."pos"()
    goto alt63_end
  alt63_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    .const 'Sub' $P65 = "21_1256191324.59793" 
    capture_lex $P65
    $P10 = rx61_cur."before"($P65)
    unless $P10, rx61_fail
  # rx subrule "backmod" subtype=capture negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."backmod"()
    unless $P10, rx61_fail
    rx61_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx61_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."alpha"()
    if $P10, rx61_fail
  alt63_end:
    (rx61_rep) = rx61_cur."!mark_commit"($I68)
  rxquantr62_done:
.annotate "line", 36
  # rx pass
    rx61_cur."!cursor_pass"(rx61_pos, "quantified_atom")
    rx61_cur."!cursor_debug"("PASS  ", "quantified_atom", " at pos=", rx61_pos)
    .return (rx61_cur)
  rx61_fail:
    (rx61_rep, rx61_pos, $I10, $P10) = rx61_cur."!mark_fail"(0)
    lt rx61_pos, -1, rx61_done
    eq rx61_pos, -1, rx61_fail
    jump $I10
  rx61_done:
    rx61_cur."!cursor_fail"()
    rx61_cur."!cursor_debug"("FAIL  ", "quantified_atom")
    .return (rx61_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block64"  :anon :subid("21_1256191324.59793") :method :outer("20_1256191324.59793")
.annotate "line", 37
    .local string rx66_tgt
    .local int rx66_pos
    .local int rx66_off
    .local int rx66_eos
    .local int rx66_rep
    .local pmc rx66_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx66_peek
    ne $P10, 2, rx66_peek
    .return (":")
  rx66_peek:
    (rx66_cur, rx66_pos, rx66_tgt, $I10) = self."!cursor_start"()
    rx66_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx66_cur
    length rx66_eos, rx66_tgt
    set rx66_off, 0
    lt $I10, 2, rx66_start
    sub rx66_off, $I10, 1
    substr rx66_tgt, rx66_tgt, rx66_off
  rx66_start:
    ge rx66_pos, 0, rxscan67_done
  rxscan67_loop:
    ($P10) = rx66_cur."from"()
    inc $P10
    set rx66_pos, $P10
    ge rx66_pos, rx66_eos, rxscan67_done
    set_addr $I10, rxscan67_loop
    rx66_cur."!mark_push"(0, rx66_pos, $I10)
  rxscan67_done:
  # rx literal  ":"
    add $I11, rx66_pos, 1
    gt $I11, rx66_eos, rx66_fail
    sub $I11, rx66_pos, rx66_off
    substr $S10, rx66_tgt, $I11, 1
    ne $S10, ":", rx66_fail
    add rx66_pos, 1
  # rx pass
    rx66_cur."!cursor_pass"(rx66_pos, "")
    rx66_cur."!cursor_debug"("PASS  ", "", " at pos=", rx66_pos)
    .return (rx66_cur)
  rx66_fail:
    (rx66_rep, rx66_pos, $I10, $P10) = rx66_cur."!mark_fail"(0)
    lt rx66_pos, -1, rx66_done
    eq rx66_pos, -1, rx66_fail
    jump $I10
  rx66_done:
    rx66_cur."!cursor_fail"()
    rx66_cur."!cursor_debug"("FAIL  ", "")
    .return (rx66_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("22_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 40
    .const 'Sub' $P76 = "23_1256191324.59793" 
    capture_lex $P76
    .local string rx70_tgt
    .local int rx70_pos
    .local int rx70_off
    .local int rx70_eos
    .local int rx70_rep
    .local pmc rx70_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx70_peek
    ne $P10, 2, rx70_peek
    .return ("", "")
  rx70_peek:
    (rx70_cur, rx70_pos, rx70_tgt, $I10) = self."!cursor_start"()
    rx70_cur."!cursor_debug"("START ", "atom")
    .lex unicode:"$\x{a2}", rx70_cur
    length rx70_eos, rx70_tgt
    set rx70_off, 0
    lt $I10, 2, rx70_start
    sub rx70_off, $I10, 1
    substr rx70_tgt, rx70_tgt, rx70_off
  rx70_start:
  alt71_0:
.annotate "line", 42
    set_addr $I10, alt71_1
    rx70_cur."!mark_push"(0, rx70_pos, $I10)
.annotate "line", 43
  # rx charclass w
    ge rx70_pos, rx70_eos, rx70_fail
    sub $I10, rx70_pos, rx70_off
    is_cclass $I11, 8192, rx70_tgt, $I10
    unless $I11, rx70_fail
    inc rx70_pos
  # rx rxquantr72 ** 0..1
    set_addr $I79, rxquantr72_done
    rx70_cur."!mark_push"(0, rx70_pos, $I79)
  rxquantr72_loop:
  # rx rxquantg73 ** 1..*
    set_addr $I74, rxquantg73_done
  rxquantg73_loop:
  # rx charclass w
    ge rx70_pos, rx70_eos, rx70_fail
    sub $I10, rx70_pos, rx70_off
    is_cclass $I11, 8192, rx70_tgt, $I10
    unless $I11, rx70_fail
    inc rx70_pos
    rx70_cur."!mark_push"(rx70_rep, rx70_pos, $I74)
    goto rxquantg73_loop
  rxquantg73_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx70_cur."!cursor_pos"(rx70_pos)
    .const 'Sub' $P76 = "23_1256191324.59793" 
    capture_lex $P76
    $P10 = rx70_cur."before"($P76)
    unless $P10, rx70_fail
    (rx70_rep) = rx70_cur."!mark_commit"($I79)
  rxquantr72_done:
    goto alt71_end
  alt71_1:
.annotate "line", 44
  # rx subrule "metachar" subtype=capture negate=
    rx70_cur."!cursor_pos"(rx70_pos)
    $P10 = rx70_cur."metachar"()
    unless $P10, rx70_fail
    rx70_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx70_pos = $P10."pos"()
  alt71_end:
.annotate "line", 40
  # rx pass
    rx70_cur."!cursor_pass"(rx70_pos, "atom")
    rx70_cur."!cursor_debug"("PASS  ", "atom", " at pos=", rx70_pos)
    .return (rx70_cur)
  rx70_fail:
    (rx70_rep, rx70_pos, $I10, $P10) = rx70_cur."!mark_fail"(0)
    lt rx70_pos, -1, rx70_done
    eq rx70_pos, -1, rx70_fail
    jump $I10
  rx70_done:
    rx70_cur."!cursor_fail"()
    rx70_cur."!cursor_debug"("FAIL  ", "atom")
    .return (rx70_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block75"  :anon :subid("23_1256191324.59793") :method :outer("22_1256191324.59793")
.annotate "line", 43
    .local string rx77_tgt
    .local int rx77_pos
    .local int rx77_off
    .local int rx77_eos
    .local int rx77_rep
    .local pmc rx77_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx77_peek
    ne $P10, 2, rx77_peek
    .return ("")
  rx77_peek:
    (rx77_cur, rx77_pos, rx77_tgt, $I10) = self."!cursor_start"()
    rx77_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx77_cur
    length rx77_eos, rx77_tgt
    set rx77_off, 0
    lt $I10, 2, rx77_start
    sub rx77_off, $I10, 1
    substr rx77_tgt, rx77_tgt, rx77_off
  rx77_start:
    ge rx77_pos, 0, rxscan78_done
  rxscan78_loop:
    ($P10) = rx77_cur."from"()
    inc $P10
    set rx77_pos, $P10
    ge rx77_pos, rx77_eos, rxscan78_done
    set_addr $I10, rxscan78_loop
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
  rxscan78_done:
  # rx charclass w
    ge rx77_pos, rx77_eos, rx77_fail
    sub $I10, rx77_pos, rx77_off
    is_cclass $I11, 8192, rx77_tgt, $I10
    unless $I11, rx77_fail
    inc rx77_pos
  # rx pass
    rx77_cur."!cursor_pass"(rx77_pos, "")
    rx77_cur."!cursor_debug"("PASS  ", "", " at pos=", rx77_pos)
    .return (rx77_cur)
  rx77_fail:
    (rx77_rep, rx77_pos, $I10, $P10) = rx77_cur."!mark_fail"(0)
    lt rx77_pos, -1, rx77_done
    eq rx77_pos, -1, rx77_fail
    jump $I10
  rx77_done:
    rx77_cur."!cursor_fail"()
    rx77_cur."!cursor_debug"("FAIL  ", "")
    .return (rx77_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("24_1256191324.59793") :method
.annotate "line", 48
    $P81 = self."!protoregex"("quantifier")
    .return ($P81)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("25_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 49
    .local string rx83_tgt
    .local int rx83_pos
    .local int rx83_off
    .local int rx83_eos
    .local int rx83_rep
    .local pmc rx83_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx83_peek
    ne $P10, 2, rx83_peek
    .return ("*")
  rx83_peek:
    (rx83_cur, rx83_pos, rx83_tgt, $I10) = self."!cursor_start"()
    rx83_cur."!cursor_debug"("START ", "quantifier:sym<*>")
    .lex unicode:"$\x{a2}", rx83_cur
    length rx83_eos, rx83_tgt
    set rx83_off, 0
    lt $I10, 2, rx83_start
    sub rx83_off, $I10, 1
    substr rx83_tgt, rx83_tgt, rx83_off
  rx83_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_84_fail
    rx83_cur."!mark_push"(0, rx83_pos, $I10)
  # rx literal  "*"
    add $I11, rx83_pos, 1
    gt $I11, rx83_eos, rx83_fail
    sub $I11, rx83_pos, rx83_off
    substr $S10, rx83_tgt, $I11, 1
    ne $S10, "*", rx83_fail
    add rx83_pos, 1
    set_addr $I10, rxcap_84_fail
    ($I12, $I11) = rx83_cur."!mark_peek"($I10)
    rx83_cur."!cursor_pos"($I11)
    ($P10) = rx83_cur."!cursor_start"()
    $P10."!cursor_pass"(rx83_pos, "")
    rx83_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_84_done
  rxcap_84_fail:
    goto rx83_fail
  rxcap_84_done:
  # rx subrule "backmod" subtype=capture negate=
    rx83_cur."!cursor_pos"(rx83_pos)
    $P10 = rx83_cur."backmod"()
    unless $P10, rx83_fail
    rx83_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx83_pos = $P10."pos"()
  # rx pass
    rx83_cur."!cursor_pass"(rx83_pos, "quantifier:sym<*>")
    rx83_cur."!cursor_debug"("PASS  ", "quantifier:sym<*>", " at pos=", rx83_pos)
    .return (rx83_cur)
  rx83_fail:
    (rx83_rep, rx83_pos, $I10, $P10) = rx83_cur."!mark_fail"(0)
    lt rx83_pos, -1, rx83_done
    eq rx83_pos, -1, rx83_fail
    jump $I10
  rx83_done:
    rx83_cur."!cursor_fail"()
    rx83_cur."!cursor_debug"("FAIL  ", "quantifier:sym<*>")
    .return (rx83_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("26_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 50
    .local string rx86_tgt
    .local int rx86_pos
    .local int rx86_off
    .local int rx86_eos
    .local int rx86_rep
    .local pmc rx86_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx86_peek
    ne $P10, 2, rx86_peek
    .return ("+")
  rx86_peek:
    (rx86_cur, rx86_pos, rx86_tgt, $I10) = self."!cursor_start"()
    rx86_cur."!cursor_debug"("START ", "quantifier:sym<+>")
    .lex unicode:"$\x{a2}", rx86_cur
    length rx86_eos, rx86_tgt
    set rx86_off, 0
    lt $I10, 2, rx86_start
    sub rx86_off, $I10, 1
    substr rx86_tgt, rx86_tgt, rx86_off
  rx86_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_87_fail
    rx86_cur."!mark_push"(0, rx86_pos, $I10)
  # rx literal  "+"
    add $I11, rx86_pos, 1
    gt $I11, rx86_eos, rx86_fail
    sub $I11, rx86_pos, rx86_off
    substr $S10, rx86_tgt, $I11, 1
    ne $S10, "+", rx86_fail
    add rx86_pos, 1
    set_addr $I10, rxcap_87_fail
    ($I12, $I11) = rx86_cur."!mark_peek"($I10)
    rx86_cur."!cursor_pos"($I11)
    ($P10) = rx86_cur."!cursor_start"()
    $P10."!cursor_pass"(rx86_pos, "")
    rx86_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_87_done
  rxcap_87_fail:
    goto rx86_fail
  rxcap_87_done:
  # rx subrule "backmod" subtype=capture negate=
    rx86_cur."!cursor_pos"(rx86_pos)
    $P10 = rx86_cur."backmod"()
    unless $P10, rx86_fail
    rx86_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx86_pos = $P10."pos"()
  # rx pass
    rx86_cur."!cursor_pass"(rx86_pos, "quantifier:sym<+>")
    rx86_cur."!cursor_debug"("PASS  ", "quantifier:sym<+>", " at pos=", rx86_pos)
    .return (rx86_cur)
  rx86_fail:
    (rx86_rep, rx86_pos, $I10, $P10) = rx86_cur."!mark_fail"(0)
    lt rx86_pos, -1, rx86_done
    eq rx86_pos, -1, rx86_fail
    jump $I10
  rx86_done:
    rx86_cur."!cursor_fail"()
    rx86_cur."!cursor_debug"("FAIL  ", "quantifier:sym<+>")
    .return (rx86_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("27_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 51
    .local string rx89_tgt
    .local int rx89_pos
    .local int rx89_off
    .local int rx89_eos
    .local int rx89_rep
    .local pmc rx89_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx89_peek
    ne $P10, 2, rx89_peek
    .return ("?")
  rx89_peek:
    (rx89_cur, rx89_pos, rx89_tgt, $I10) = self."!cursor_start"()
    rx89_cur."!cursor_debug"("START ", "quantifier:sym<?>")
    .lex unicode:"$\x{a2}", rx89_cur
    length rx89_eos, rx89_tgt
    set rx89_off, 0
    lt $I10, 2, rx89_start
    sub rx89_off, $I10, 1
    substr rx89_tgt, rx89_tgt, rx89_off
  rx89_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_90_fail
    rx89_cur."!mark_push"(0, rx89_pos, $I10)
  # rx literal  "?"
    add $I11, rx89_pos, 1
    gt $I11, rx89_eos, rx89_fail
    sub $I11, rx89_pos, rx89_off
    substr $S10, rx89_tgt, $I11, 1
    ne $S10, "?", rx89_fail
    add rx89_pos, 1
    set_addr $I10, rxcap_90_fail
    ($I12, $I11) = rx89_cur."!mark_peek"($I10)
    rx89_cur."!cursor_pos"($I11)
    ($P10) = rx89_cur."!cursor_start"()
    $P10."!cursor_pass"(rx89_pos, "")
    rx89_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_90_done
  rxcap_90_fail:
    goto rx89_fail
  rxcap_90_done:
  # rx subrule "backmod" subtype=capture negate=
    rx89_cur."!cursor_pos"(rx89_pos)
    $P10 = rx89_cur."backmod"()
    unless $P10, rx89_fail
    rx89_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx89_pos = $P10."pos"()
  # rx pass
    rx89_cur."!cursor_pass"(rx89_pos, "quantifier:sym<?>")
    rx89_cur."!cursor_debug"("PASS  ", "quantifier:sym<?>", " at pos=", rx89_pos)
    .return (rx89_cur)
  rx89_fail:
    (rx89_rep, rx89_pos, $I10, $P10) = rx89_cur."!mark_fail"(0)
    lt rx89_pos, -1, rx89_done
    eq rx89_pos, -1, rx89_fail
    jump $I10
  rx89_done:
    rx89_cur."!cursor_fail"()
    rx89_cur."!cursor_debug"("FAIL  ", "quantifier:sym<?>")
    .return (rx89_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("28_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 52
    .local string rx92_tgt
    .local int rx92_pos
    .local int rx92_off
    .local int rx92_eos
    .local int rx92_rep
    .local pmc rx92_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx92_peek
    ne $P10, 2, rx92_peek
    .return ("**")
  rx92_peek:
    (rx92_cur, rx92_pos, rx92_tgt, $I10) = self."!cursor_start"()
    rx92_cur."!cursor_debug"("START ", "quantifier:sym<**>")
    rx92_cur."!cursor_caparray"("max")
    .lex unicode:"$\x{a2}", rx92_cur
    length rx92_eos, rx92_tgt
    set rx92_off, 0
    lt $I10, 2, rx92_start
    sub rx92_off, $I10, 1
    substr rx92_tgt, rx92_tgt, rx92_off
  rx92_start:
.annotate "line", 53
  # rx subcapture "sym"
    set_addr $I10, rxcap_93_fail
    rx92_cur."!mark_push"(0, rx92_pos, $I10)
  # rx literal  "**"
    add $I11, rx92_pos, 2
    gt $I11, rx92_eos, rx92_fail
    sub $I11, rx92_pos, rx92_off
    substr $S10, rx92_tgt, $I11, 2
    ne $S10, "**", rx92_fail
    add rx92_pos, 2
    set_addr $I10, rxcap_93_fail
    ($I12, $I11) = rx92_cur."!mark_peek"($I10)
    rx92_cur."!cursor_pos"($I11)
    ($P10) = rx92_cur."!cursor_start"()
    $P10."!cursor_pass"(rx92_pos, "")
    rx92_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_93_done
  rxcap_93_fail:
    goto rx92_fail
  rxcap_93_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx92_pos, rx92_off
    find_not_cclass $I11, 32, rx92_tgt, $I10, rx92_eos
    add rx92_pos, rx92_off, $I11
  # rx subrule "backmod" subtype=capture negate=
    rx92_cur."!cursor_pos"(rx92_pos)
    $P10 = rx92_cur."backmod"()
    unless $P10, rx92_fail
    rx92_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx92_pos = $P10."pos"()
  # rx charclass_q s r 0..-1
    sub $I10, rx92_pos, rx92_off
    find_not_cclass $I11, 32, rx92_tgt, $I10, rx92_eos
    add rx92_pos, rx92_off, $I11
  alt94_0:
.annotate "line", 54
    set_addr $I10, alt94_1
    rx92_cur."!mark_push"(0, rx92_pos, $I10)
.annotate "line", 55
  # rx subcapture "min"
    set_addr $I10, rxcap_95_fail
    rx92_cur."!mark_push"(0, rx92_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx92_pos, rx92_off
    find_not_cclass $I11, 8, rx92_tgt, $I10, rx92_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx92_fail
    add rx92_pos, rx92_off, $I11
    set_addr $I10, rxcap_95_fail
    ($I12, $I11) = rx92_cur."!mark_peek"($I10)
    rx92_cur."!cursor_pos"($I11)
    ($P10) = rx92_cur."!cursor_start"()
    $P10."!cursor_pass"(rx92_pos, "")
    rx92_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_95_done
  rxcap_95_fail:
    goto rx92_fail
  rxcap_95_done:
  # rx rxquantr96 ** 0..1
    set_addr $I99, rxquantr96_done
    rx92_cur."!mark_push"(0, rx92_pos, $I99)
  rxquantr96_loop:
  # rx literal  ".."
    add $I11, rx92_pos, 2
    gt $I11, rx92_eos, rx92_fail
    sub $I11, rx92_pos, rx92_off
    substr $S10, rx92_tgt, $I11, 2
    ne $S10, "..", rx92_fail
    add rx92_pos, 2
  # rx subcapture "max"
    set_addr $I10, rxcap_98_fail
    rx92_cur."!mark_push"(0, rx92_pos, $I10)
  alt97_0:
    set_addr $I10, alt97_1
    rx92_cur."!mark_push"(0, rx92_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx92_pos, rx92_off
    find_not_cclass $I11, 8, rx92_tgt, $I10, rx92_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx92_fail
    add rx92_pos, rx92_off, $I11
    goto alt97_end
  alt97_1:
  # rx literal  "*"
    add $I11, rx92_pos, 1
    gt $I11, rx92_eos, rx92_fail
    sub $I11, rx92_pos, rx92_off
    substr $S10, rx92_tgt, $I11, 1
    ne $S10, "*", rx92_fail
    add rx92_pos, 1
  alt97_end:
    set_addr $I10, rxcap_98_fail
    ($I12, $I11) = rx92_cur."!mark_peek"($I10)
    rx92_cur."!cursor_pos"($I11)
    ($P10) = rx92_cur."!cursor_start"()
    $P10."!cursor_pass"(rx92_pos, "")
    rx92_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_98_done
  rxcap_98_fail:
    goto rx92_fail
  rxcap_98_done:
    (rx92_rep) = rx92_cur."!mark_commit"($I99)
  rxquantr96_done:
    goto alt94_end
  alt94_1:
.annotate "line", 56
  # rx subrule "quantified_atom" subtype=capture negate=
    rx92_cur."!cursor_pos"(rx92_pos)
    $P10 = rx92_cur."quantified_atom"()
    unless $P10, rx92_fail
    rx92_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx92_pos = $P10."pos"()
  alt94_end:
.annotate "line", 52
  # rx pass
    rx92_cur."!cursor_pass"(rx92_pos, "quantifier:sym<**>")
    rx92_cur."!cursor_debug"("PASS  ", "quantifier:sym<**>", " at pos=", rx92_pos)
    .return (rx92_cur)
  rx92_fail:
    (rx92_rep, rx92_pos, $I10, $P10) = rx92_cur."!mark_fail"(0)
    lt rx92_pos, -1, rx92_done
    eq rx92_pos, -1, rx92_fail
    jump $I10
  rx92_done:
    rx92_cur."!cursor_fail"()
    rx92_cur."!cursor_debug"("FAIL  ", "quantifier:sym<**>")
    .return (rx92_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("29_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 60
    .const 'Sub' $P106 = "30_1256191324.59793" 
    capture_lex $P106
    .local string rx101_tgt
    .local int rx101_pos
    .local int rx101_off
    .local int rx101_eos
    .local int rx101_rep
    .local pmc rx101_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx101_peek
    ne $P10, 2, rx101_peek
    .return ("")
  rx101_peek:
    (rx101_cur, rx101_pos, rx101_tgt, $I10) = self."!cursor_start"()
    rx101_cur."!cursor_debug"("START ", "backmod")
    .lex unicode:"$\x{a2}", rx101_cur
    length rx101_eos, rx101_tgt
    set rx101_off, 0
    lt $I10, 2, rx101_start
    sub rx101_off, $I10, 1
    substr rx101_tgt, rx101_tgt, rx101_off
  rx101_start:
  # rx rxquantr102 ** 0..1
    set_addr $I103, rxquantr102_done
    rx101_cur."!mark_push"(0, rx101_pos, $I103)
  rxquantr102_loop:
  # rx literal  ":"
    add $I11, rx101_pos, 1
    gt $I11, rx101_eos, rx101_fail
    sub $I11, rx101_pos, rx101_off
    substr $S10, rx101_tgt, $I11, 1
    ne $S10, ":", rx101_fail
    add rx101_pos, 1
    (rx101_rep) = rx101_cur."!mark_commit"($I103)
  rxquantr102_done:
  alt104_0:
    set_addr $I10, alt104_1
    rx101_cur."!mark_push"(0, rx101_pos, $I10)
  # rx literal  "?"
    add $I11, rx101_pos, 1
    gt $I11, rx101_eos, rx101_fail
    sub $I11, rx101_pos, rx101_off
    substr $S10, rx101_tgt, $I11, 1
    ne $S10, "?", rx101_fail
    add rx101_pos, 1
    goto alt104_end
  alt104_1:
    set_addr $I10, alt104_2
    rx101_cur."!mark_push"(0, rx101_pos, $I10)
  # rx literal  "!"
    add $I11, rx101_pos, 1
    gt $I11, rx101_eos, rx101_fail
    sub $I11, rx101_pos, rx101_off
    substr $S10, rx101_tgt, $I11, 1
    ne $S10, "!", rx101_fail
    add rx101_pos, 1
    goto alt104_end
  alt104_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx101_cur."!cursor_pos"(rx101_pos)
    .const 'Sub' $P106 = "30_1256191324.59793" 
    capture_lex $P106
    $P10 = rx101_cur."before"($P106)
    if $P10, rx101_fail
  alt104_end:
  # rx pass
    rx101_cur."!cursor_pass"(rx101_pos, "backmod")
    rx101_cur."!cursor_debug"("PASS  ", "backmod", " at pos=", rx101_pos)
    .return (rx101_cur)
  rx101_fail:
    (rx101_rep, rx101_pos, $I10, $P10) = rx101_cur."!mark_fail"(0)
    lt rx101_pos, -1, rx101_done
    eq rx101_pos, -1, rx101_fail
    jump $I10
  rx101_done:
    rx101_cur."!cursor_fail"()
    rx101_cur."!cursor_debug"("FAIL  ", "backmod")
    .return (rx101_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block105"  :anon :subid("30_1256191324.59793") :method :outer("29_1256191324.59793")
.annotate "line", 60
    .local string rx107_tgt
    .local int rx107_pos
    .local int rx107_off
    .local int rx107_eos
    .local int rx107_rep
    .local pmc rx107_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx107_peek
    ne $P10, 2, rx107_peek
    .return (":")
  rx107_peek:
    (rx107_cur, rx107_pos, rx107_tgt, $I10) = self."!cursor_start"()
    rx107_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx107_cur
    length rx107_eos, rx107_tgt
    set rx107_off, 0
    lt $I10, 2, rx107_start
    sub rx107_off, $I10, 1
    substr rx107_tgt, rx107_tgt, rx107_off
  rx107_start:
    ge rx107_pos, 0, rxscan108_done
  rxscan108_loop:
    ($P10) = rx107_cur."from"()
    inc $P10
    set rx107_pos, $P10
    ge rx107_pos, rx107_eos, rxscan108_done
    set_addr $I10, rxscan108_loop
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  rxscan108_done:
  # rx literal  ":"
    add $I11, rx107_pos, 1
    gt $I11, rx107_eos, rx107_fail
    sub $I11, rx107_pos, rx107_off
    substr $S10, rx107_tgt, $I11, 1
    ne $S10, ":", rx107_fail
    add rx107_pos, 1
  # rx pass
    rx107_cur."!cursor_pass"(rx107_pos, "")
    rx107_cur."!cursor_debug"("PASS  ", "", " at pos=", rx107_pos)
    .return (rx107_cur)
  rx107_fail:
    (rx107_rep, rx107_pos, $I10, $P10) = rx107_cur."!mark_fail"(0)
    lt rx107_pos, -1, rx107_done
    eq rx107_pos, -1, rx107_fail
    jump $I10
  rx107_done:
    rx107_cur."!cursor_fail"()
    rx107_cur."!cursor_debug"("FAIL  ", "")
    .return (rx107_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("31_1256191324.59793") :method
.annotate "line", 62
    $P110 = self."!protoregex"("metachar")
    .return ($P110)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("32_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 63
    .local string rx112_tgt
    .local int rx112_pos
    .local int rx112_off
    .local int rx112_eos
    .local int rx112_rep
    .local pmc rx112_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx112_peek
    ne $P10, 2, rx112_peek
    .return ("")
  rx112_peek:
    (rx112_cur, rx112_pos, rx112_tgt, $I10) = self."!cursor_start"()
    rx112_cur."!cursor_debug"("START ", "metachar:sym<ws>")
    .lex unicode:"$\x{a2}", rx112_cur
    length rx112_eos, rx112_tgt
    set rx112_off, 0
    lt $I10, 2, rx112_start
    sub rx112_off, $I10, 1
    substr rx112_tgt, rx112_tgt, rx112_off
  rx112_start:
  # rx subrule "normspace" subtype=method negate=
    rx112_cur."!cursor_pos"(rx112_pos)
    $P10 = rx112_cur."normspace"()
    unless $P10, rx112_fail
    rx112_pos = $P10."pos"()
  # rx pass
    rx112_cur."!cursor_pass"(rx112_pos, "metachar:sym<ws>")
    rx112_cur."!cursor_debug"("PASS  ", "metachar:sym<ws>", " at pos=", rx112_pos)
    .return (rx112_cur)
  rx112_fail:
    (rx112_rep, rx112_pos, $I10, $P10) = rx112_cur."!mark_fail"(0)
    lt rx112_pos, -1, rx112_done
    eq rx112_pos, -1, rx112_fail
    jump $I10
  rx112_done:
    rx112_cur."!cursor_fail"()
    rx112_cur."!cursor_debug"("FAIL  ", "metachar:sym<ws>")
    .return (rx112_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("33_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 64
    .local string rx114_tgt
    .local int rx114_pos
    .local int rx114_off
    .local int rx114_eos
    .local int rx114_rep
    .local pmc rx114_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx114_peek
    ne $P10, 2, rx114_peek
    .return ("[")
  rx114_peek:
    (rx114_cur, rx114_pos, rx114_tgt, $I10) = self."!cursor_start"()
    rx114_cur."!cursor_debug"("START ", "metachar:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx114_cur
    length rx114_eos, rx114_tgt
    set rx114_off, 0
    lt $I10, 2, rx114_start
    sub rx114_off, $I10, 1
    substr rx114_tgt, rx114_tgt, rx114_off
  rx114_start:
  # rx literal  "["
    add $I11, rx114_pos, 1
    gt $I11, rx114_eos, rx114_fail
    sub $I11, rx114_pos, rx114_off
    substr $S10, rx114_tgt, $I11, 1
    ne $S10, "[", rx114_fail
    add rx114_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."nibbler"()
    unless $P10, rx114_fail
    rx114_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx114_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx114_pos, 1
    gt $I11, rx114_eos, rx114_fail
    sub $I11, rx114_pos, rx114_off
    substr $S10, rx114_tgt, $I11, 1
    ne $S10, "]", rx114_fail
    add rx114_pos, 1
  # rx pass
    rx114_cur."!cursor_pass"(rx114_pos, "metachar:sym<[ ]>")
    rx114_cur."!cursor_debug"("PASS  ", "metachar:sym<[ ]>", " at pos=", rx114_pos)
    .return (rx114_cur)
  rx114_fail:
    (rx114_rep, rx114_pos, $I10, $P10) = rx114_cur."!mark_fail"(0)
    lt rx114_pos, -1, rx114_done
    eq rx114_pos, -1, rx114_fail
    jump $I10
  rx114_done:
    rx114_cur."!cursor_fail"()
    rx114_cur."!cursor_debug"("FAIL  ", "metachar:sym<[ ]>")
    .return (rx114_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("34_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 65
    .local string rx116_tgt
    .local int rx116_pos
    .local int rx116_off
    .local int rx116_eos
    .local int rx116_rep
    .local pmc rx116_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx116_peek
    ne $P10, 2, rx116_peek
    .return ("(")
  rx116_peek:
    (rx116_cur, rx116_pos, rx116_tgt, $I10) = self."!cursor_start"()
    rx116_cur."!cursor_debug"("START ", "metachar:sym<( )>")
    .lex unicode:"$\x{a2}", rx116_cur
    length rx116_eos, rx116_tgt
    set rx116_off, 0
    lt $I10, 2, rx116_start
    sub rx116_off, $I10, 1
    substr rx116_tgt, rx116_tgt, rx116_off
  rx116_start:
  # rx literal  "("
    add $I11, rx116_pos, 1
    gt $I11, rx116_eos, rx116_fail
    sub $I11, rx116_pos, rx116_off
    substr $S10, rx116_tgt, $I11, 1
    ne $S10, "(", rx116_fail
    add rx116_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx116_cur."!cursor_pos"(rx116_pos)
    $P10 = rx116_cur."nibbler"()
    unless $P10, rx116_fail
    rx116_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx116_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx116_pos, 1
    gt $I11, rx116_eos, rx116_fail
    sub $I11, rx116_pos, rx116_off
    substr $S10, rx116_tgt, $I11, 1
    ne $S10, ")", rx116_fail
    add rx116_pos, 1
  # rx pass
    rx116_cur."!cursor_pass"(rx116_pos, "metachar:sym<( )>")
    rx116_cur."!cursor_debug"("PASS  ", "metachar:sym<( )>", " at pos=", rx116_pos)
    .return (rx116_cur)
  rx116_fail:
    (rx116_rep, rx116_pos, $I10, $P10) = rx116_cur."!mark_fail"(0)
    lt rx116_pos, -1, rx116_done
    eq rx116_pos, -1, rx116_fail
    jump $I10
  rx116_done:
    rx116_cur."!cursor_fail"()
    rx116_cur."!cursor_debug"("FAIL  ", "metachar:sym<( )>")
    .return (rx116_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("35_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 66
    .local string rx118_tgt
    .local int rx118_pos
    .local int rx118_off
    .local int rx118_eos
    .local int rx118_rep
    .local pmc rx118_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx118_peek
    ne $P10, 2, rx118_peek
    .return ("")
  rx118_peek:
    (rx118_cur, rx118_pos, rx118_tgt, $I10) = self."!cursor_start"()
    rx118_cur."!cursor_debug"("START ", "metachar:sym<'>")
    .lex unicode:"$\x{a2}", rx118_cur
    length rx118_eos, rx118_tgt
    set rx118_off, 0
    lt $I10, 2, rx118_start
    sub rx118_off, $I10, 1
    substr rx118_tgt, rx118_tgt, rx118_off
  rx118_start:
  # rx subrule "quote" subtype=capture negate=
    rx118_cur."!cursor_pos"(rx118_pos)
    $P10 = rx118_cur."quote"()
    unless $P10, rx118_fail
    rx118_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx118_pos = $P10."pos"()
  # rx pass
    rx118_cur."!cursor_pass"(rx118_pos, "metachar:sym<'>")
    rx118_cur."!cursor_debug"("PASS  ", "metachar:sym<'>", " at pos=", rx118_pos)
    .return (rx118_cur)
  rx118_fail:
    (rx118_rep, rx118_pos, $I10, $P10) = rx118_cur."!mark_fail"(0)
    lt rx118_pos, -1, rx118_done
    eq rx118_pos, -1, rx118_fail
    jump $I10
  rx118_done:
    rx118_cur."!cursor_fail"()
    rx118_cur."!cursor_debug"("FAIL  ", "metachar:sym<'>")
    .return (rx118_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("36_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 67
    .local string rx120_tgt
    .local int rx120_pos
    .local int rx120_off
    .local int rx120_eos
    .local int rx120_rep
    .local pmc rx120_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx120_peek
    ne $P10, 2, rx120_peek
    .return (".")
  rx120_peek:
    (rx120_cur, rx120_pos, rx120_tgt, $I10) = self."!cursor_start"()
    rx120_cur."!cursor_debug"("START ", "metachar:sym<.>")
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
  # rx literal  "."
    add $I11, rx120_pos, 1
    gt $I11, rx120_eos, rx120_fail
    sub $I11, rx120_pos, rx120_off
    substr $S10, rx120_tgt, $I11, 1
    ne $S10, ".", rx120_fail
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
    rx120_cur."!cursor_pass"(rx120_pos, "metachar:sym<.>")
    rx120_cur."!cursor_debug"("PASS  ", "metachar:sym<.>", " at pos=", rx120_pos)
    .return (rx120_cur)
  rx120_fail:
    (rx120_rep, rx120_pos, $I10, $P10) = rx120_cur."!mark_fail"(0)
    lt rx120_pos, -1, rx120_done
    eq rx120_pos, -1, rx120_fail
    jump $I10
  rx120_done:
    rx120_cur."!cursor_fail"()
    rx120_cur."!cursor_debug"("FAIL  ", "metachar:sym<.>")
    .return (rx120_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("37_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 68
    .local string rx123_tgt
    .local int rx123_pos
    .local int rx123_off
    .local int rx123_eos
    .local int rx123_rep
    .local pmc rx123_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx123_peek
    ne $P10, 2, rx123_peek
    .return ("^")
  rx123_peek:
    (rx123_cur, rx123_pos, rx123_tgt, $I10) = self."!cursor_start"()
    rx123_cur."!cursor_debug"("START ", "metachar:sym<^>")
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
  # rx literal  "^"
    add $I11, rx123_pos, 1
    gt $I11, rx123_eos, rx123_fail
    sub $I11, rx123_pos, rx123_off
    substr $S10, rx123_tgt, $I11, 1
    ne $S10, "^", rx123_fail
    add rx123_pos, 1
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
    rx123_cur."!cursor_pass"(rx123_pos, "metachar:sym<^>")
    rx123_cur."!cursor_debug"("PASS  ", "metachar:sym<^>", " at pos=", rx123_pos)
    .return (rx123_cur)
  rx123_fail:
    (rx123_rep, rx123_pos, $I10, $P10) = rx123_cur."!mark_fail"(0)
    lt rx123_pos, -1, rx123_done
    eq rx123_pos, -1, rx123_fail
    jump $I10
  rx123_done:
    rx123_cur."!cursor_fail"()
    rx123_cur."!cursor_debug"("FAIL  ", "metachar:sym<^>")
    .return (rx123_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("38_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 69
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx126_peek
    ne $P10, 2, rx126_peek
    .return ("^^")
  rx126_peek:
    (rx126_cur, rx126_pos, rx126_tgt, $I10) = self."!cursor_start"()
    rx126_cur."!cursor_debug"("START ", "metachar:sym<^^>")
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
  # rx literal  "^^"
    add $I11, rx126_pos, 2
    gt $I11, rx126_eos, rx126_fail
    sub $I11, rx126_pos, rx126_off
    substr $S10, rx126_tgt, $I11, 2
    ne $S10, "^^", rx126_fail
    add rx126_pos, 2
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
    rx126_cur."!cursor_pass"(rx126_pos, "metachar:sym<^^>")
    rx126_cur."!cursor_debug"("PASS  ", "metachar:sym<^^>", " at pos=", rx126_pos)
    .return (rx126_cur)
  rx126_fail:
    (rx126_rep, rx126_pos, $I10, $P10) = rx126_cur."!mark_fail"(0)
    lt rx126_pos, -1, rx126_done
    eq rx126_pos, -1, rx126_fail
    jump $I10
  rx126_done:
    rx126_cur."!cursor_fail"()
    rx126_cur."!cursor_debug"("FAIL  ", "metachar:sym<^^>")
    .return (rx126_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("39_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 70
    .local string rx129_tgt
    .local int rx129_pos
    .local int rx129_off
    .local int rx129_eos
    .local int rx129_rep
    .local pmc rx129_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx129_peek
    ne $P10, 2, rx129_peek
    .return ("$")
  rx129_peek:
    (rx129_cur, rx129_pos, rx129_tgt, $I10) = self."!cursor_start"()
    rx129_cur."!cursor_debug"("START ", "metachar:sym<$>")
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
  # rx literal  "$"
    add $I11, rx129_pos, 1
    gt $I11, rx129_eos, rx129_fail
    sub $I11, rx129_pos, rx129_off
    substr $S10, rx129_tgt, $I11, 1
    ne $S10, "$", rx129_fail
    add rx129_pos, 1
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
    rx129_cur."!cursor_pass"(rx129_pos, "metachar:sym<$>")
    rx129_cur."!cursor_debug"("PASS  ", "metachar:sym<$>", " at pos=", rx129_pos)
    .return (rx129_cur)
  rx129_fail:
    (rx129_rep, rx129_pos, $I10, $P10) = rx129_cur."!mark_fail"(0)
    lt rx129_pos, -1, rx129_done
    eq rx129_pos, -1, rx129_fail
    jump $I10
  rx129_done:
    rx129_cur."!cursor_fail"()
    rx129_cur."!cursor_debug"("FAIL  ", "metachar:sym<$>")
    .return (rx129_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("40_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 71
    .local string rx132_tgt
    .local int rx132_pos
    .local int rx132_off
    .local int rx132_eos
    .local int rx132_rep
    .local pmc rx132_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx132_peek
    ne $P10, 2, rx132_peek
    .return ("$$")
  rx132_peek:
    (rx132_cur, rx132_pos, rx132_tgt, $I10) = self."!cursor_start"()
    rx132_cur."!cursor_debug"("START ", "metachar:sym<$$>")
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
  # rx literal  "$$"
    add $I11, rx132_pos, 2
    gt $I11, rx132_eos, rx132_fail
    sub $I11, rx132_pos, rx132_off
    substr $S10, rx132_tgt, $I11, 2
    ne $S10, "$$", rx132_fail
    add rx132_pos, 2
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
    rx132_cur."!cursor_pass"(rx132_pos, "metachar:sym<$$>")
    rx132_cur."!cursor_debug"("PASS  ", "metachar:sym<$$>", " at pos=", rx132_pos)
    .return (rx132_cur)
  rx132_fail:
    (rx132_rep, rx132_pos, $I10, $P10) = rx132_cur."!mark_fail"(0)
    lt rx132_pos, -1, rx132_done
    eq rx132_pos, -1, rx132_fail
    jump $I10
  rx132_done:
    rx132_cur."!cursor_fail"()
    rx132_cur."!cursor_debug"("FAIL  ", "metachar:sym<$$>")
    .return (rx132_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("41_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 72
    .local string rx135_tgt
    .local int rx135_pos
    .local int rx135_off
    .local int rx135_eos
    .local int rx135_rep
    .local pmc rx135_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx135_peek
    ne $P10, 2, rx135_peek
    .return (":::")
  rx135_peek:
    (rx135_cur, rx135_pos, rx135_tgt, $I10) = self."!cursor_start"()
    rx135_cur."!cursor_debug"("START ", "metachar:sym<:::>")
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
  # rx literal  ":::"
    add $I11, rx135_pos, 3
    gt $I11, rx135_eos, rx135_fail
    sub $I11, rx135_pos, rx135_off
    substr $S10, rx135_tgt, $I11, 3
    ne $S10, ":::", rx135_fail
    add rx135_pos, 3
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
    rx135_cur."!cursor_pass"(rx135_pos, "metachar:sym<:::>")
    rx135_cur."!cursor_debug"("PASS  ", "metachar:sym<:::>", " at pos=", rx135_pos)
    .return (rx135_cur)
  rx135_fail:
    (rx135_rep, rx135_pos, $I10, $P10) = rx135_cur."!mark_fail"(0)
    lt rx135_pos, -1, rx135_done
    eq rx135_pos, -1, rx135_fail
    jump $I10
  rx135_done:
    rx135_cur."!cursor_fail"()
    rx135_cur."!cursor_debug"("FAIL  ", "metachar:sym<:::>")
    .return (rx135_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("42_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 73
    .local string rx138_tgt
    .local int rx138_pos
    .local int rx138_off
    .local int rx138_eos
    .local int rx138_rep
    .local pmc rx138_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx138_peek
    ne $P10, 2, rx138_peek
    .return ("::")
  rx138_peek:
    (rx138_cur, rx138_pos, rx138_tgt, $I10) = self."!cursor_start"()
    rx138_cur."!cursor_debug"("START ", "metachar:sym<::>")
    .lex unicode:"$\x{a2}", rx138_cur
    length rx138_eos, rx138_tgt
    set rx138_off, 0
    lt $I10, 2, rx138_start
    sub rx138_off, $I10, 1
    substr rx138_tgt, rx138_tgt, rx138_off
  rx138_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_139_fail
    rx138_cur."!mark_push"(0, rx138_pos, $I10)
  # rx literal  "::"
    add $I11, rx138_pos, 2
    gt $I11, rx138_eos, rx138_fail
    sub $I11, rx138_pos, rx138_off
    substr $S10, rx138_tgt, $I11, 2
    ne $S10, "::", rx138_fail
    add rx138_pos, 2
    set_addr $I10, rxcap_139_fail
    ($I12, $I11) = rx138_cur."!mark_peek"($I10)
    rx138_cur."!cursor_pos"($I11)
    ($P10) = rx138_cur."!cursor_start"()
    $P10."!cursor_pass"(rx138_pos, "")
    rx138_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_139_done
  rxcap_139_fail:
    goto rx138_fail
  rxcap_139_done:
  # rx pass
    rx138_cur."!cursor_pass"(rx138_pos, "metachar:sym<::>")
    rx138_cur."!cursor_debug"("PASS  ", "metachar:sym<::>", " at pos=", rx138_pos)
    .return (rx138_cur)
  rx138_fail:
    (rx138_rep, rx138_pos, $I10, $P10) = rx138_cur."!mark_fail"(0)
    lt rx138_pos, -1, rx138_done
    eq rx138_pos, -1, rx138_fail
    jump $I10
  rx138_done:
    rx138_cur."!cursor_fail"()
    rx138_cur."!cursor_debug"("FAIL  ", "metachar:sym<::>")
    .return (rx138_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("43_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 74
    .local string rx141_tgt
    .local int rx141_pos
    .local int rx141_off
    .local int rx141_eos
    .local int rx141_rep
    .local pmc rx141_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx141_peek
    ne $P10, 2, rx141_peek
    .return (unicode:"\x{ab}", "<<")
  rx141_peek:
    (rx141_cur, rx141_pos, rx141_tgt, $I10) = self."!cursor_start"()
    rx141_cur."!cursor_debug"("START ", "metachar:sym<lwb>")
    .lex unicode:"$\x{a2}", rx141_cur
    length rx141_eos, rx141_tgt
    set rx141_off, 0
    lt $I10, 2, rx141_start
    sub rx141_off, $I10, 1
    substr rx141_tgt, rx141_tgt, rx141_off
  rx141_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_143_fail
    rx141_cur."!mark_push"(0, rx141_pos, $I10)
  alt142_0:
    set_addr $I10, alt142_1
    rx141_cur."!mark_push"(0, rx141_pos, $I10)
  # rx literal  "<<"
    add $I11, rx141_pos, 2
    gt $I11, rx141_eos, rx141_fail
    sub $I11, rx141_pos, rx141_off
    substr $S10, rx141_tgt, $I11, 2
    ne $S10, "<<", rx141_fail
    add rx141_pos, 2
    goto alt142_end
  alt142_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx141_pos, 1
    gt $I11, rx141_eos, rx141_fail
    sub $I11, rx141_pos, rx141_off
    substr $S10, rx141_tgt, $I11, 1
    ne $S10, unicode:"\x{ab}", rx141_fail
    add rx141_pos, 1
  alt142_end:
    set_addr $I10, rxcap_143_fail
    ($I12, $I11) = rx141_cur."!mark_peek"($I10)
    rx141_cur."!cursor_pos"($I11)
    ($P10) = rx141_cur."!cursor_start"()
    $P10."!cursor_pass"(rx141_pos, "")
    rx141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_143_done
  rxcap_143_fail:
    goto rx141_fail
  rxcap_143_done:
  # rx pass
    rx141_cur."!cursor_pass"(rx141_pos, "metachar:sym<lwb>")
    rx141_cur."!cursor_debug"("PASS  ", "metachar:sym<lwb>", " at pos=", rx141_pos)
    .return (rx141_cur)
  rx141_fail:
    (rx141_rep, rx141_pos, $I10, $P10) = rx141_cur."!mark_fail"(0)
    lt rx141_pos, -1, rx141_done
    eq rx141_pos, -1, rx141_fail
    jump $I10
  rx141_done:
    rx141_cur."!cursor_fail"()
    rx141_cur."!cursor_debug"("FAIL  ", "metachar:sym<lwb>")
    .return (rx141_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("44_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 75
    .local string rx145_tgt
    .local int rx145_pos
    .local int rx145_off
    .local int rx145_eos
    .local int rx145_rep
    .local pmc rx145_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx145_peek
    ne $P10, 2, rx145_peek
    .return (unicode:"\x{bb}", ">>")
  rx145_peek:
    (rx145_cur, rx145_pos, rx145_tgt, $I10) = self."!cursor_start"()
    rx145_cur."!cursor_debug"("START ", "metachar:sym<rwb>")
    .lex unicode:"$\x{a2}", rx145_cur
    length rx145_eos, rx145_tgt
    set rx145_off, 0
    lt $I10, 2, rx145_start
    sub rx145_off, $I10, 1
    substr rx145_tgt, rx145_tgt, rx145_off
  rx145_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_147_fail
    rx145_cur."!mark_push"(0, rx145_pos, $I10)
  alt146_0:
    set_addr $I10, alt146_1
    rx145_cur."!mark_push"(0, rx145_pos, $I10)
  # rx literal  ">>"
    add $I11, rx145_pos, 2
    gt $I11, rx145_eos, rx145_fail
    sub $I11, rx145_pos, rx145_off
    substr $S10, rx145_tgt, $I11, 2
    ne $S10, ">>", rx145_fail
    add rx145_pos, 2
    goto alt146_end
  alt146_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx145_pos, 1
    gt $I11, rx145_eos, rx145_fail
    sub $I11, rx145_pos, rx145_off
    substr $S10, rx145_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx145_fail
    add rx145_pos, 1
  alt146_end:
    set_addr $I10, rxcap_147_fail
    ($I12, $I11) = rx145_cur."!mark_peek"($I10)
    rx145_cur."!cursor_pos"($I11)
    ($P10) = rx145_cur."!cursor_start"()
    $P10."!cursor_pass"(rx145_pos, "")
    rx145_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_147_done
  rxcap_147_fail:
    goto rx145_fail
  rxcap_147_done:
  # rx pass
    rx145_cur."!cursor_pass"(rx145_pos, "metachar:sym<rwb>")
    rx145_cur."!cursor_debug"("PASS  ", "metachar:sym<rwb>", " at pos=", rx145_pos)
    .return (rx145_cur)
  rx145_fail:
    (rx145_rep, rx145_pos, $I10, $P10) = rx145_cur."!mark_fail"(0)
    lt rx145_pos, -1, rx145_done
    eq rx145_pos, -1, rx145_fail
    jump $I10
  rx145_done:
    rx145_cur."!cursor_fail"()
    rx145_cur."!cursor_debug"("FAIL  ", "metachar:sym<rwb>")
    .return (rx145_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("45_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 76
    .local string rx149_tgt
    .local int rx149_pos
    .local int rx149_off
    .local int rx149_eos
    .local int rx149_rep
    .local pmc rx149_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx149_peek
    ne $P10, 2, rx149_peek
    .return ("\\")
  rx149_peek:
    (rx149_cur, rx149_pos, rx149_tgt, $I10) = self."!cursor_start"()
    rx149_cur."!cursor_debug"("START ", "metachar:sym<bs>")
    .lex unicode:"$\x{a2}", rx149_cur
    length rx149_eos, rx149_tgt
    set rx149_off, 0
    lt $I10, 2, rx149_start
    sub rx149_off, $I10, 1
    substr rx149_tgt, rx149_tgt, rx149_off
  rx149_start:
  # rx literal  "\\"
    add $I11, rx149_pos, 1
    gt $I11, rx149_eos, rx149_fail
    sub $I11, rx149_pos, rx149_off
    substr $S10, rx149_tgt, $I11, 1
    ne $S10, "\\", rx149_fail
    add rx149_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx149_cur."!cursor_pos"(rx149_pos)
    $P10 = rx149_cur."backslash"()
    unless $P10, rx149_fail
    rx149_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx149_pos = $P10."pos"()
  # rx pass
    rx149_cur."!cursor_pass"(rx149_pos, "metachar:sym<bs>")
    rx149_cur."!cursor_debug"("PASS  ", "metachar:sym<bs>", " at pos=", rx149_pos)
    .return (rx149_cur)
  rx149_fail:
    (rx149_rep, rx149_pos, $I10, $P10) = rx149_cur."!mark_fail"(0)
    lt rx149_pos, -1, rx149_done
    eq rx149_pos, -1, rx149_fail
    jump $I10
  rx149_done:
    rx149_cur."!cursor_fail"()
    rx149_cur."!cursor_debug"("FAIL  ", "metachar:sym<bs>")
    .return (rx149_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("46_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 77
    .local string rx151_tgt
    .local int rx151_pos
    .local int rx151_off
    .local int rx151_eos
    .local int rx151_rep
    .local pmc rx151_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx151_peek
    ne $P10, 2, rx151_peek
    .return ("")
  rx151_peek:
    (rx151_cur, rx151_pos, rx151_tgt, $I10) = self."!cursor_start"()
    rx151_cur."!cursor_debug"("START ", "metachar:sym<mod>")
    .lex unicode:"$\x{a2}", rx151_cur
    length rx151_eos, rx151_tgt
    set rx151_off, 0
    lt $I10, 2, rx151_start
    sub rx151_off, $I10, 1
    substr rx151_tgt, rx151_tgt, rx151_off
  rx151_start:
  # rx subrule "mod_internal" subtype=capture negate=
    rx151_cur."!cursor_pos"(rx151_pos)
    $P10 = rx151_cur."mod_internal"()
    unless $P10, rx151_fail
    rx151_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx151_pos = $P10."pos"()
  # rx pass
    rx151_cur."!cursor_pass"(rx151_pos, "metachar:sym<mod>")
    rx151_cur."!cursor_debug"("PASS  ", "metachar:sym<mod>", " at pos=", rx151_pos)
    .return (rx151_cur)
  rx151_fail:
    (rx151_rep, rx151_pos, $I10, $P10) = rx151_cur."!mark_fail"(0)
    lt rx151_pos, -1, rx151_done
    eq rx151_pos, -1, rx151_fail
    jump $I10
  rx151_done:
    rx151_cur."!cursor_fail"()
    rx151_cur."!cursor_debug"("FAIL  ", "metachar:sym<mod>")
    .return (rx151_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("47_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 80
    .local string rx153_tgt
    .local int rx153_pos
    .local int rx153_off
    .local int rx153_eos
    .local int rx153_rep
    .local pmc rx153_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx153_peek
    ne $P10, 2, rx153_peek
    .return ("~")
  rx153_peek:
    (rx153_cur, rx153_pos, rx153_tgt, $I10) = self."!cursor_start"()
    rx153_cur."!cursor_debug"("START ", "metachar:sym<~>")
    .lex unicode:"$\x{a2}", rx153_cur
    length rx153_eos, rx153_tgt
    set rx153_off, 0
    lt $I10, 2, rx153_start
    sub rx153_off, $I10, 1
    substr rx153_tgt, rx153_tgt, rx153_off
  rx153_start:
.annotate "line", 81
  # rx subcapture "sym"
    set_addr $I10, rxcap_154_fail
    rx153_cur."!mark_push"(0, rx153_pos, $I10)
  # rx literal  "~"
    add $I11, rx153_pos, 1
    gt $I11, rx153_eos, rx153_fail
    sub $I11, rx153_pos, rx153_off
    substr $S10, rx153_tgt, $I11, 1
    ne $S10, "~", rx153_fail
    add rx153_pos, 1
    set_addr $I10, rxcap_154_fail
    ($I12, $I11) = rx153_cur."!mark_peek"($I10)
    rx153_cur."!cursor_pos"($I11)
    ($P10) = rx153_cur."!cursor_start"()
    $P10."!cursor_pass"(rx153_pos, "")
    rx153_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_154_done
  rxcap_154_fail:
    goto rx153_fail
  rxcap_154_done:
.annotate "line", 82
  # rx subrule "ws" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."ws"()
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."quantified_atom"()
    unless $P10, rx153_fail
    rx153_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx153_pos = $P10."pos"()
.annotate "line", 83
  # rx subrule "ws" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."ws"()
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."quantified_atom"()
    unless $P10, rx153_fail
    rx153_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx153_pos = $P10."pos"()
.annotate "line", 80
  # rx pass
    rx153_cur."!cursor_pass"(rx153_pos, "metachar:sym<~>")
    rx153_cur."!cursor_debug"("PASS  ", "metachar:sym<~>", " at pos=", rx153_pos)
    .return (rx153_cur)
  rx153_fail:
    (rx153_rep, rx153_pos, $I10, $P10) = rx153_cur."!mark_fail"(0)
    lt rx153_pos, -1, rx153_done
    eq rx153_pos, -1, rx153_fail
    jump $I10
  rx153_done:
    rx153_cur."!cursor_fail"()
    rx153_cur."!cursor_debug"("FAIL  ", "metachar:sym<~>")
    .return (rx153_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("48_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 86
    .local string rx156_tgt
    .local int rx156_pos
    .local int rx156_off
    .local int rx156_eos
    .local int rx156_rep
    .local pmc rx156_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx156_peek
    ne $P10, 2, rx156_peek
    .return ("{*}")
  rx156_peek:
    (rx156_cur, rx156_pos, rx156_tgt, $I10) = self."!cursor_start"()
    rx156_cur."!cursor_debug"("START ", "metachar:sym<{*}>")
    rx156_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx156_cur
    length rx156_eos, rx156_tgt
    set rx156_off, 0
    lt $I10, 2, rx156_start
    sub rx156_off, $I10, 1
    substr rx156_tgt, rx156_tgt, rx156_off
  rx156_start:
.annotate "line", 87
  # rx subcapture "sym"
    set_addr $I10, rxcap_157_fail
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx156_pos, 3
    gt $I11, rx156_eos, rx156_fail
    sub $I11, rx156_pos, rx156_off
    substr $S10, rx156_tgt, $I11, 3
    ne $S10, "{*}", rx156_fail
    add rx156_pos, 3
    set_addr $I10, rxcap_157_fail
    ($I12, $I11) = rx156_cur."!mark_peek"($I10)
    rx156_cur."!cursor_pos"($I11)
    ($P10) = rx156_cur."!cursor_start"()
    $P10."!cursor_pass"(rx156_pos, "")
    rx156_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_157_done
  rxcap_157_fail:
    goto rx156_fail
  rxcap_157_done:
.annotate "line", 88
  # rx rxquantr158 ** 0..1
    set_addr $I168, rxquantr158_done
    rx156_cur."!mark_push"(0, rx156_pos, $I168)
  rxquantr158_loop:
  # rx rxquantr159 ** 0..*
    set_addr $I160, rxquantr159_done
    rx156_cur."!mark_push"(0, rx156_pos, $I160)
  rxquantr159_loop:
  # rx enumcharlist negate=0 
    ge rx156_pos, rx156_eos, rx156_fail
    sub $I10, rx156_pos, rx156_off
    substr $S10, rx156_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx156_fail
    inc rx156_pos
    (rx156_rep) = rx156_cur."!mark_commit"($I160)
    rx156_cur."!mark_push"(rx156_rep, rx156_pos, $I160)
    goto rxquantr159_loop
  rxquantr159_done:
  # rx literal  "#= "
    add $I11, rx156_pos, 3
    gt $I11, rx156_eos, rx156_fail
    sub $I11, rx156_pos, rx156_off
    substr $S10, rx156_tgt, $I11, 3
    ne $S10, "#= ", rx156_fail
    add rx156_pos, 3
  # rx rxquantr161 ** 0..*
    set_addr $I162, rxquantr161_done
    rx156_cur."!mark_push"(0, rx156_pos, $I162)
  rxquantr161_loop:
  # rx enumcharlist negate=0 
    ge rx156_pos, rx156_eos, rx156_fail
    sub $I10, rx156_pos, rx156_off
    substr $S10, rx156_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx156_fail
    inc rx156_pos
    (rx156_rep) = rx156_cur."!mark_commit"($I162)
    rx156_cur."!mark_push"(rx156_rep, rx156_pos, $I162)
    goto rxquantr161_loop
  rxquantr161_done:
  # rx subcapture "key"
    set_addr $I10, rxcap_167_fail
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx156_pos, rx156_off
    find_cclass $I11, 32, rx156_tgt, $I10, rx156_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx156_fail
    add rx156_pos, rx156_off, $I11
  # rx rxquantr163 ** 0..*
    set_addr $I166, rxquantr163_done
    rx156_cur."!mark_push"(0, rx156_pos, $I166)
  rxquantr163_loop:
  # rx rxquantr164 ** 1..*
    set_addr $I165, rxquantr164_done
    rx156_cur."!mark_push"(0, -1, $I165)
  rxquantr164_loop:
  # rx enumcharlist negate=0 
    ge rx156_pos, rx156_eos, rx156_fail
    sub $I10, rx156_pos, rx156_off
    substr $S10, rx156_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx156_fail
    inc rx156_pos
    (rx156_rep) = rx156_cur."!mark_commit"($I165)
    rx156_cur."!mark_push"(rx156_rep, rx156_pos, $I165)
    goto rxquantr164_loop
  rxquantr164_done:
  # rx charclass_q S r 1..-1
    sub $I10, rx156_pos, rx156_off
    find_cclass $I11, 32, rx156_tgt, $I10, rx156_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx156_fail
    add rx156_pos, rx156_off, $I11
    (rx156_rep) = rx156_cur."!mark_commit"($I166)
    rx156_cur."!mark_push"(rx156_rep, rx156_pos, $I166)
    goto rxquantr163_loop
  rxquantr163_done:
    set_addr $I10, rxcap_167_fail
    ($I12, $I11) = rx156_cur."!mark_peek"($I10)
    rx156_cur."!cursor_pos"($I11)
    ($P10) = rx156_cur."!cursor_start"()
    $P10."!cursor_pass"(rx156_pos, "")
    rx156_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_167_done
  rxcap_167_fail:
    goto rx156_fail
  rxcap_167_done:
    (rx156_rep) = rx156_cur."!mark_commit"($I168)
  rxquantr158_done:
.annotate "line", 86
  # rx pass
    rx156_cur."!cursor_pass"(rx156_pos, "metachar:sym<{*}>")
    rx156_cur."!cursor_debug"("PASS  ", "metachar:sym<{*}>", " at pos=", rx156_pos)
    .return (rx156_cur)
  rx156_fail:
    (rx156_rep, rx156_pos, $I10, $P10) = rx156_cur."!mark_fail"(0)
    lt rx156_pos, -1, rx156_done
    eq rx156_pos, -1, rx156_fail
    jump $I10
  rx156_done:
    rx156_cur."!cursor_fail"()
    rx156_cur."!cursor_debug"("FAIL  ", "metachar:sym<{*}>")
    .return (rx156_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("49_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 90
    .local string rx170_tgt
    .local int rx170_pos
    .local int rx170_off
    .local int rx170_eos
    .local int rx170_rep
    .local pmc rx170_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx170_peek
    ne $P10, 2, rx170_peek
    .return ("<")
  rx170_peek:
    (rx170_cur, rx170_pos, rx170_tgt, $I10) = self."!cursor_start"()
    rx170_cur."!cursor_debug"("START ", "metachar:sym<assert>")
    .lex unicode:"$\x{a2}", rx170_cur
    length rx170_eos, rx170_tgt
    set rx170_off, 0
    lt $I10, 2, rx170_start
    sub rx170_off, $I10, 1
    substr rx170_tgt, rx170_tgt, rx170_off
  rx170_start:
.annotate "line", 91
  # rx literal  "<"
    add $I11, rx170_pos, 1
    gt $I11, rx170_eos, rx170_fail
    sub $I11, rx170_pos, rx170_off
    substr $S10, rx170_tgt, $I11, 1
    ne $S10, "<", rx170_fail
    add rx170_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."assertion"()
    unless $P10, rx170_fail
    rx170_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx170_pos = $P10."pos"()
  alt171_0:
.annotate "line", 92
    set_addr $I10, alt171_1
    rx170_cur."!mark_push"(0, rx170_pos, $I10)
  # rx literal  ">"
    add $I11, rx170_pos, 1
    gt $I11, rx170_eos, rx170_fail
    sub $I11, rx170_pos, rx170_off
    substr $S10, rx170_tgt, $I11, 1
    ne $S10, ">", rx170_fail
    add rx170_pos, 1
    goto alt171_end
  alt171_1:
  # rx subrule "panic" subtype=method negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx170_fail
    rx170_pos = $P10."pos"()
  alt171_end:
.annotate "line", 90
  # rx pass
    rx170_cur."!cursor_pass"(rx170_pos, "metachar:sym<assert>")
    rx170_cur."!cursor_debug"("PASS  ", "metachar:sym<assert>", " at pos=", rx170_pos)
    .return (rx170_cur)
  rx170_fail:
    (rx170_rep, rx170_pos, $I10, $P10) = rx170_cur."!mark_fail"(0)
    lt rx170_pos, -1, rx170_done
    eq rx170_pos, -1, rx170_fail
    jump $I10
  rx170_done:
    rx170_cur."!cursor_fail"()
    rx170_cur."!cursor_debug"("FAIL  ", "metachar:sym<assert>")
    .return (rx170_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("50_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 95
    .local string rx173_tgt
    .local int rx173_pos
    .local int rx173_off
    .local int rx173_eos
    .local int rx173_rep
    .local pmc rx173_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx173_peek
    ne $P10, 2, rx173_peek
    .return ("$", "$<")
  rx173_peek:
    (rx173_cur, rx173_pos, rx173_tgt, $I10) = self."!cursor_start"()
    rx173_cur."!cursor_debug"("START ", "metachar:sym<var>")
    rx173_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx173_cur
    length rx173_eos, rx173_tgt
    set rx173_off, 0
    lt $I10, 2, rx173_start
    sub rx173_off, $I10, 1
    substr rx173_tgt, rx173_tgt, rx173_off
  rx173_start:
  alt174_0:
.annotate "line", 96
    set_addr $I10, alt174_1
    rx173_cur."!mark_push"(0, rx173_pos, $I10)
.annotate "line", 97
  # rx literal  "$<"
    add $I11, rx173_pos, 2
    gt $I11, rx173_eos, rx173_fail
    sub $I11, rx173_pos, rx173_off
    substr $S10, rx173_tgt, $I11, 2
    ne $S10, "$<", rx173_fail
    add rx173_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_177_fail
    rx173_cur."!mark_push"(0, rx173_pos, $I10)
  # rx rxquantr175 ** 1..*
    set_addr $I176, rxquantr175_done
    rx173_cur."!mark_push"(0, -1, $I176)
  rxquantr175_loop:
  # rx enumcharlist negate=1 
    ge rx173_pos, rx173_eos, rx173_fail
    sub $I10, rx173_pos, rx173_off
    substr $S10, rx173_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx173_fail
    inc rx173_pos
    (rx173_rep) = rx173_cur."!mark_commit"($I176)
    rx173_cur."!mark_push"(rx173_rep, rx173_pos, $I176)
    goto rxquantr175_loop
  rxquantr175_done:
    set_addr $I10, rxcap_177_fail
    ($I12, $I11) = rx173_cur."!mark_peek"($I10)
    rx173_cur."!cursor_pos"($I11)
    ($P10) = rx173_cur."!cursor_start"()
    $P10."!cursor_pass"(rx173_pos, "")
    rx173_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_177_done
  rxcap_177_fail:
    goto rx173_fail
  rxcap_177_done:
  # rx literal  ">"
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail
    sub $I11, rx173_pos, rx173_off
    substr $S10, rx173_tgt, $I11, 1
    ne $S10, ">", rx173_fail
    add rx173_pos, 1
    goto alt174_end
  alt174_1:
.annotate "line", 98
  # rx literal  "$"
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail
    sub $I11, rx173_pos, rx173_off
    substr $S10, rx173_tgt, $I11, 1
    ne $S10, "$", rx173_fail
    add rx173_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_178_fail
    rx173_cur."!mark_push"(0, rx173_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx173_pos, rx173_off
    find_not_cclass $I11, 8, rx173_tgt, $I10, rx173_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx173_fail
    add rx173_pos, rx173_off, $I11
    set_addr $I10, rxcap_178_fail
    ($I12, $I11) = rx173_cur."!mark_peek"($I10)
    rx173_cur."!cursor_pos"($I11)
    ($P10) = rx173_cur."!cursor_start"()
    $P10."!cursor_pass"(rx173_pos, "")
    rx173_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_178_done
  rxcap_178_fail:
    goto rx173_fail
  rxcap_178_done:
  alt174_end:
.annotate "line", 101
  # rx rxquantr179 ** 0..1
    set_addr $I180, rxquantr179_done
    rx173_cur."!mark_push"(0, rx173_pos, $I180)
  rxquantr179_loop:
  # rx subrule "ws" subtype=method negate=
    rx173_cur."!cursor_pos"(rx173_pos)
    $P10 = rx173_cur."ws"()
    unless $P10, rx173_fail
    rx173_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail
    sub $I11, rx173_pos, rx173_off
    substr $S10, rx173_tgt, $I11, 1
    ne $S10, "=", rx173_fail
    add rx173_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx173_cur."!cursor_pos"(rx173_pos)
    $P10 = rx173_cur."ws"()
    unless $P10, rx173_fail
    rx173_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx173_cur."!cursor_pos"(rx173_pos)
    $P10 = rx173_cur."quantified_atom"()
    unless $P10, rx173_fail
    rx173_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx173_pos = $P10."pos"()
    (rx173_rep) = rx173_cur."!mark_commit"($I180)
  rxquantr179_done:
.annotate "line", 95
  # rx pass
    rx173_cur."!cursor_pass"(rx173_pos, "metachar:sym<var>")
    rx173_cur."!cursor_debug"("PASS  ", "metachar:sym<var>", " at pos=", rx173_pos)
    .return (rx173_cur)
  rx173_fail:
    (rx173_rep, rx173_pos, $I10, $P10) = rx173_cur."!mark_fail"(0)
    lt rx173_pos, -1, rx173_done
    eq rx173_pos, -1, rx173_fail
    jump $I10
  rx173_done:
    rx173_cur."!cursor_fail"()
    rx173_cur."!cursor_debug"("FAIL  ", "metachar:sym<var>")
    .return (rx173_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("51_1256191324.59793") :method
.annotate "line", 104
    $P182 = self."!protoregex"("backslash")
    .return ($P182)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("52_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 105
    .local string rx184_tgt
    .local int rx184_pos
    .local int rx184_off
    .local int rx184_eos
    .local int rx184_rep
    .local pmc rx184_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx184_peek
    ne $P10, 2, rx184_peek
    .return ("N", "W", "S", "D", "n", "w", "s", "d")
  rx184_peek:
    (rx184_cur, rx184_pos, rx184_tgt, $I10) = self."!cursor_start"()
    rx184_cur."!cursor_debug"("START ", "backslash:sym<w>")
    .lex unicode:"$\x{a2}", rx184_cur
    length rx184_eos, rx184_tgt
    set rx184_off, 0
    lt $I10, 2, rx184_start
    sub rx184_off, $I10, 1
    substr rx184_tgt, rx184_tgt, rx184_off
  rx184_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_185_fail
    rx184_cur."!mark_push"(0, rx184_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx184_pos, rx184_eos, rx184_fail
    sub $I10, rx184_pos, rx184_off
    substr $S10, rx184_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx184_fail
    inc rx184_pos
    set_addr $I10, rxcap_185_fail
    ($I12, $I11) = rx184_cur."!mark_peek"($I10)
    rx184_cur."!cursor_pos"($I11)
    ($P10) = rx184_cur."!cursor_start"()
    $P10."!cursor_pass"(rx184_pos, "")
    rx184_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_185_done
  rxcap_185_fail:
    goto rx184_fail
  rxcap_185_done:
  # rx pass
    rx184_cur."!cursor_pass"(rx184_pos, "backslash:sym<w>")
    rx184_cur."!cursor_debug"("PASS  ", "backslash:sym<w>", " at pos=", rx184_pos)
    .return (rx184_cur)
  rx184_fail:
    (rx184_rep, rx184_pos, $I10, $P10) = rx184_cur."!mark_fail"(0)
    lt rx184_pos, -1, rx184_done
    eq rx184_pos, -1, rx184_fail
    jump $I10
  rx184_done:
    rx184_cur."!cursor_fail"()
    rx184_cur."!cursor_debug"("FAIL  ", "backslash:sym<w>")
    .return (rx184_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("53_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 106
    .local string rx187_tgt
    .local int rx187_pos
    .local int rx187_off
    .local int rx187_eos
    .local int rx187_rep
    .local pmc rx187_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx187_peek
    ne $P10, 2, rx187_peek
    .return ("B", "b")
  rx187_peek:
    (rx187_cur, rx187_pos, rx187_tgt, $I10) = self."!cursor_start"()
    rx187_cur."!cursor_debug"("START ", "backslash:sym<b>")
    .lex unicode:"$\x{a2}", rx187_cur
    length rx187_eos, rx187_tgt
    set rx187_off, 0
    lt $I10, 2, rx187_start
    sub rx187_off, $I10, 1
    substr rx187_tgt, rx187_tgt, rx187_off
  rx187_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_188_fail
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx187_pos, rx187_eos, rx187_fail
    sub $I10, rx187_pos, rx187_off
    substr $S10, rx187_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx187_fail
    inc rx187_pos
    set_addr $I10, rxcap_188_fail
    ($I12, $I11) = rx187_cur."!mark_peek"($I10)
    rx187_cur."!cursor_pos"($I11)
    ($P10) = rx187_cur."!cursor_start"()
    $P10."!cursor_pass"(rx187_pos, "")
    rx187_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_188_done
  rxcap_188_fail:
    goto rx187_fail
  rxcap_188_done:
  # rx pass
    rx187_cur."!cursor_pass"(rx187_pos, "backslash:sym<b>")
    rx187_cur."!cursor_debug"("PASS  ", "backslash:sym<b>", " at pos=", rx187_pos)
    .return (rx187_cur)
  rx187_fail:
    (rx187_rep, rx187_pos, $I10, $P10) = rx187_cur."!mark_fail"(0)
    lt rx187_pos, -1, rx187_done
    eq rx187_pos, -1, rx187_fail
    jump $I10
  rx187_done:
    rx187_cur."!cursor_fail"()
    rx187_cur."!cursor_debug"("FAIL  ", "backslash:sym<b>")
    .return (rx187_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("54_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 107
    .local string rx190_tgt
    .local int rx190_pos
    .local int rx190_off
    .local int rx190_eos
    .local int rx190_rep
    .local pmc rx190_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx190_peek
    ne $P10, 2, rx190_peek
    .return ("E", "e")
  rx190_peek:
    (rx190_cur, rx190_pos, rx190_tgt, $I10) = self."!cursor_start"()
    rx190_cur."!cursor_debug"("START ", "backslash:sym<e>")
    .lex unicode:"$\x{a2}", rx190_cur
    length rx190_eos, rx190_tgt
    set rx190_off, 0
    lt $I10, 2, rx190_start
    sub rx190_off, $I10, 1
    substr rx190_tgt, rx190_tgt, rx190_off
  rx190_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_191_fail
    rx190_cur."!mark_push"(0, rx190_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx190_pos, rx190_eos, rx190_fail
    sub $I10, rx190_pos, rx190_off
    substr $S10, rx190_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx190_fail
    inc rx190_pos
    set_addr $I10, rxcap_191_fail
    ($I12, $I11) = rx190_cur."!mark_peek"($I10)
    rx190_cur."!cursor_pos"($I11)
    ($P10) = rx190_cur."!cursor_start"()
    $P10."!cursor_pass"(rx190_pos, "")
    rx190_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_191_done
  rxcap_191_fail:
    goto rx190_fail
  rxcap_191_done:
  # rx pass
    rx190_cur."!cursor_pass"(rx190_pos, "backslash:sym<e>")
    rx190_cur."!cursor_debug"("PASS  ", "backslash:sym<e>", " at pos=", rx190_pos)
    .return (rx190_cur)
  rx190_fail:
    (rx190_rep, rx190_pos, $I10, $P10) = rx190_cur."!mark_fail"(0)
    lt rx190_pos, -1, rx190_done
    eq rx190_pos, -1, rx190_fail
    jump $I10
  rx190_done:
    rx190_cur."!cursor_fail"()
    rx190_cur."!cursor_debug"("FAIL  ", "backslash:sym<e>")
    .return (rx190_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("55_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 108
    .local string rx193_tgt
    .local int rx193_pos
    .local int rx193_off
    .local int rx193_eos
    .local int rx193_rep
    .local pmc rx193_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx193_peek
    ne $P10, 2, rx193_peek
    .return ("F", "f")
  rx193_peek:
    (rx193_cur, rx193_pos, rx193_tgt, $I10) = self."!cursor_start"()
    rx193_cur."!cursor_debug"("START ", "backslash:sym<f>")
    .lex unicode:"$\x{a2}", rx193_cur
    length rx193_eos, rx193_tgt
    set rx193_off, 0
    lt $I10, 2, rx193_start
    sub rx193_off, $I10, 1
    substr rx193_tgt, rx193_tgt, rx193_off
  rx193_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_194_fail
    rx193_cur."!mark_push"(0, rx193_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx193_pos, rx193_eos, rx193_fail
    sub $I10, rx193_pos, rx193_off
    substr $S10, rx193_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx193_fail
    inc rx193_pos
    set_addr $I10, rxcap_194_fail
    ($I12, $I11) = rx193_cur."!mark_peek"($I10)
    rx193_cur."!cursor_pos"($I11)
    ($P10) = rx193_cur."!cursor_start"()
    $P10."!cursor_pass"(rx193_pos, "")
    rx193_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_194_done
  rxcap_194_fail:
    goto rx193_fail
  rxcap_194_done:
  # rx pass
    rx193_cur."!cursor_pass"(rx193_pos, "backslash:sym<f>")
    rx193_cur."!cursor_debug"("PASS  ", "backslash:sym<f>", " at pos=", rx193_pos)
    .return (rx193_cur)
  rx193_fail:
    (rx193_rep, rx193_pos, $I10, $P10) = rx193_cur."!mark_fail"(0)
    lt rx193_pos, -1, rx193_done
    eq rx193_pos, -1, rx193_fail
    jump $I10
  rx193_done:
    rx193_cur."!cursor_fail"()
    rx193_cur."!cursor_debug"("FAIL  ", "backslash:sym<f>")
    .return (rx193_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("56_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 109
    .local string rx196_tgt
    .local int rx196_pos
    .local int rx196_off
    .local int rx196_eos
    .local int rx196_rep
    .local pmc rx196_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx196_peek
    ne $P10, 2, rx196_peek
    .return ("H", "h")
  rx196_peek:
    (rx196_cur, rx196_pos, rx196_tgt, $I10) = self."!cursor_start"()
    rx196_cur."!cursor_debug"("START ", "backslash:sym<h>")
    .lex unicode:"$\x{a2}", rx196_cur
    length rx196_eos, rx196_tgt
    set rx196_off, 0
    lt $I10, 2, rx196_start
    sub rx196_off, $I10, 1
    substr rx196_tgt, rx196_tgt, rx196_off
  rx196_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_197_fail
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx196_pos, rx196_eos, rx196_fail
    sub $I10, rx196_pos, rx196_off
    substr $S10, rx196_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx196_fail
    inc rx196_pos
    set_addr $I10, rxcap_197_fail
    ($I12, $I11) = rx196_cur."!mark_peek"($I10)
    rx196_cur."!cursor_pos"($I11)
    ($P10) = rx196_cur."!cursor_start"()
    $P10."!cursor_pass"(rx196_pos, "")
    rx196_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_197_done
  rxcap_197_fail:
    goto rx196_fail
  rxcap_197_done:
  # rx pass
    rx196_cur."!cursor_pass"(rx196_pos, "backslash:sym<h>")
    rx196_cur."!cursor_debug"("PASS  ", "backslash:sym<h>", " at pos=", rx196_pos)
    .return (rx196_cur)
  rx196_fail:
    (rx196_rep, rx196_pos, $I10, $P10) = rx196_cur."!mark_fail"(0)
    lt rx196_pos, -1, rx196_done
    eq rx196_pos, -1, rx196_fail
    jump $I10
  rx196_done:
    rx196_cur."!cursor_fail"()
    rx196_cur."!cursor_debug"("FAIL  ", "backslash:sym<h>")
    .return (rx196_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("57_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 110
    .local string rx199_tgt
    .local int rx199_pos
    .local int rx199_off
    .local int rx199_eos
    .local int rx199_rep
    .local pmc rx199_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx199_peek
    ne $P10, 2, rx199_peek
    .return ("R", "r")
  rx199_peek:
    (rx199_cur, rx199_pos, rx199_tgt, $I10) = self."!cursor_start"()
    rx199_cur."!cursor_debug"("START ", "backslash:sym<r>")
    .lex unicode:"$\x{a2}", rx199_cur
    length rx199_eos, rx199_tgt
    set rx199_off, 0
    lt $I10, 2, rx199_start
    sub rx199_off, $I10, 1
    substr rx199_tgt, rx199_tgt, rx199_off
  rx199_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_200_fail
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx199_pos, rx199_eos, rx199_fail
    sub $I10, rx199_pos, rx199_off
    substr $S10, rx199_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx199_fail
    inc rx199_pos
    set_addr $I10, rxcap_200_fail
    ($I12, $I11) = rx199_cur."!mark_peek"($I10)
    rx199_cur."!cursor_pos"($I11)
    ($P10) = rx199_cur."!cursor_start"()
    $P10."!cursor_pass"(rx199_pos, "")
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_200_done
  rxcap_200_fail:
    goto rx199_fail
  rxcap_200_done:
  # rx pass
    rx199_cur."!cursor_pass"(rx199_pos, "backslash:sym<r>")
    rx199_cur."!cursor_debug"("PASS  ", "backslash:sym<r>", " at pos=", rx199_pos)
    .return (rx199_cur)
  rx199_fail:
    (rx199_rep, rx199_pos, $I10, $P10) = rx199_cur."!mark_fail"(0)
    lt rx199_pos, -1, rx199_done
    eq rx199_pos, -1, rx199_fail
    jump $I10
  rx199_done:
    rx199_cur."!cursor_fail"()
    rx199_cur."!cursor_debug"("FAIL  ", "backslash:sym<r>")
    .return (rx199_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("58_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 111
    .local string rx202_tgt
    .local int rx202_pos
    .local int rx202_off
    .local int rx202_eos
    .local int rx202_rep
    .local pmc rx202_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx202_peek
    ne $P10, 2, rx202_peek
    .return ("T", "t")
  rx202_peek:
    (rx202_cur, rx202_pos, rx202_tgt, $I10) = self."!cursor_start"()
    rx202_cur."!cursor_debug"("START ", "backslash:sym<t>")
    .lex unicode:"$\x{a2}", rx202_cur
    length rx202_eos, rx202_tgt
    set rx202_off, 0
    lt $I10, 2, rx202_start
    sub rx202_off, $I10, 1
    substr rx202_tgt, rx202_tgt, rx202_off
  rx202_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_203_fail
    rx202_cur."!mark_push"(0, rx202_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx202_pos, rx202_eos, rx202_fail
    sub $I10, rx202_pos, rx202_off
    substr $S10, rx202_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx202_fail
    inc rx202_pos
    set_addr $I10, rxcap_203_fail
    ($I12, $I11) = rx202_cur."!mark_peek"($I10)
    rx202_cur."!cursor_pos"($I11)
    ($P10) = rx202_cur."!cursor_start"()
    $P10."!cursor_pass"(rx202_pos, "")
    rx202_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_203_done
  rxcap_203_fail:
    goto rx202_fail
  rxcap_203_done:
  # rx pass
    rx202_cur."!cursor_pass"(rx202_pos, "backslash:sym<t>")
    rx202_cur."!cursor_debug"("PASS  ", "backslash:sym<t>", " at pos=", rx202_pos)
    .return (rx202_cur)
  rx202_fail:
    (rx202_rep, rx202_pos, $I10, $P10) = rx202_cur."!mark_fail"(0)
    lt rx202_pos, -1, rx202_done
    eq rx202_pos, -1, rx202_fail
    jump $I10
  rx202_done:
    rx202_cur."!cursor_fail"()
    rx202_cur."!cursor_debug"("FAIL  ", "backslash:sym<t>")
    .return (rx202_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("59_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 112
    .local string rx205_tgt
    .local int rx205_pos
    .local int rx205_off
    .local int rx205_eos
    .local int rx205_rep
    .local pmc rx205_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx205_peek
    ne $P10, 2, rx205_peek
    .return ("V", "v")
  rx205_peek:
    (rx205_cur, rx205_pos, rx205_tgt, $I10) = self."!cursor_start"()
    rx205_cur."!cursor_debug"("START ", "backslash:sym<v>")
    .lex unicode:"$\x{a2}", rx205_cur
    length rx205_eos, rx205_tgt
    set rx205_off, 0
    lt $I10, 2, rx205_start
    sub rx205_off, $I10, 1
    substr rx205_tgt, rx205_tgt, rx205_off
  rx205_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_206_fail
    rx205_cur."!mark_push"(0, rx205_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx205_pos, rx205_eos, rx205_fail
    sub $I10, rx205_pos, rx205_off
    substr $S10, rx205_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx205_fail
    inc rx205_pos
    set_addr $I10, rxcap_206_fail
    ($I12, $I11) = rx205_cur."!mark_peek"($I10)
    rx205_cur."!cursor_pos"($I11)
    ($P10) = rx205_cur."!cursor_start"()
    $P10."!cursor_pass"(rx205_pos, "")
    rx205_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_206_done
  rxcap_206_fail:
    goto rx205_fail
  rxcap_206_done:
  # rx pass
    rx205_cur."!cursor_pass"(rx205_pos, "backslash:sym<v>")
    rx205_cur."!cursor_debug"("PASS  ", "backslash:sym<v>", " at pos=", rx205_pos)
    .return (rx205_cur)
  rx205_fail:
    (rx205_rep, rx205_pos, $I10, $P10) = rx205_cur."!mark_fail"(0)
    lt rx205_pos, -1, rx205_done
    eq rx205_pos, -1, rx205_fail
    jump $I10
  rx205_done:
    rx205_cur."!cursor_fail"()
    rx205_cur."!cursor_debug"("FAIL  ", "backslash:sym<v>")
    .return (rx205_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("60_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 113
    .local string rx208_tgt
    .local int rx208_pos
    .local int rx208_off
    .local int rx208_eos
    .local int rx208_rep
    .local pmc rx208_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx208_peek
    ne $P10, 2, rx208_peek
    .return ("A")
  rx208_peek:
    (rx208_cur, rx208_pos, rx208_tgt, $I10) = self."!cursor_start"()
    rx208_cur."!cursor_debug"("START ", "backslash:sym<A>")
    .lex unicode:"$\x{a2}", rx208_cur
    length rx208_eos, rx208_tgt
    set rx208_off, 0
    lt $I10, 2, rx208_start
    sub rx208_off, $I10, 1
    substr rx208_tgt, rx208_tgt, rx208_off
  rx208_start:
  # rx literal  "A"
    add $I11, rx208_pos, 1
    gt $I11, rx208_eos, rx208_fail
    sub $I11, rx208_pos, rx208_off
    substr $S10, rx208_tgt, $I11, 1
    ne $S10, "A", rx208_fail
    add rx208_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx208_cur."!cursor_pos"(rx208_pos)
    $P10 = rx208_cur."obs"("\\\\A as beginning-of-string matcher;^")
    unless $P10, rx208_fail
    rx208_pos = $P10."pos"()
  # rx pass
    rx208_cur."!cursor_pass"(rx208_pos, "backslash:sym<A>")
    rx208_cur."!cursor_debug"("PASS  ", "backslash:sym<A>", " at pos=", rx208_pos)
    .return (rx208_cur)
  rx208_fail:
    (rx208_rep, rx208_pos, $I10, $P10) = rx208_cur."!mark_fail"(0)
    lt rx208_pos, -1, rx208_done
    eq rx208_pos, -1, rx208_fail
    jump $I10
  rx208_done:
    rx208_cur."!cursor_fail"()
    rx208_cur."!cursor_debug"("FAIL  ", "backslash:sym<A>")
    .return (rx208_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("61_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 114
    .local string rx210_tgt
    .local int rx210_pos
    .local int rx210_off
    .local int rx210_eos
    .local int rx210_rep
    .local pmc rx210_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx210_peek
    ne $P10, 2, rx210_peek
    .return ("z")
  rx210_peek:
    (rx210_cur, rx210_pos, rx210_tgt, $I10) = self."!cursor_start"()
    rx210_cur."!cursor_debug"("START ", "backslash:sym<z>")
    .lex unicode:"$\x{a2}", rx210_cur
    length rx210_eos, rx210_tgt
    set rx210_off, 0
    lt $I10, 2, rx210_start
    sub rx210_off, $I10, 1
    substr rx210_tgt, rx210_tgt, rx210_off
  rx210_start:
  # rx literal  "z"
    add $I11, rx210_pos, 1
    gt $I11, rx210_eos, rx210_fail
    sub $I11, rx210_pos, rx210_off
    substr $S10, rx210_tgt, $I11, 1
    ne $S10, "z", rx210_fail
    add rx210_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    $P10 = rx210_cur."obs"("\\\\z as end-of-string matcher;$")
    unless $P10, rx210_fail
    rx210_pos = $P10."pos"()
  # rx pass
    rx210_cur."!cursor_pass"(rx210_pos, "backslash:sym<z>")
    rx210_cur."!cursor_debug"("PASS  ", "backslash:sym<z>", " at pos=", rx210_pos)
    .return (rx210_cur)
  rx210_fail:
    (rx210_rep, rx210_pos, $I10, $P10) = rx210_cur."!mark_fail"(0)
    lt rx210_pos, -1, rx210_done
    eq rx210_pos, -1, rx210_fail
    jump $I10
  rx210_done:
    rx210_cur."!cursor_fail"()
    rx210_cur."!cursor_debug"("FAIL  ", "backslash:sym<z>")
    .return (rx210_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("62_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 115
    .local string rx212_tgt
    .local int rx212_pos
    .local int rx212_off
    .local int rx212_eos
    .local int rx212_rep
    .local pmc rx212_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx212_peek
    ne $P10, 2, rx212_peek
    .return ("Z")
  rx212_peek:
    (rx212_cur, rx212_pos, rx212_tgt, $I10) = self."!cursor_start"()
    rx212_cur."!cursor_debug"("START ", "backslash:sym<Z>")
    .lex unicode:"$\x{a2}", rx212_cur
    length rx212_eos, rx212_tgt
    set rx212_off, 0
    lt $I10, 2, rx212_start
    sub rx212_off, $I10, 1
    substr rx212_tgt, rx212_tgt, rx212_off
  rx212_start:
  # rx literal  "Z"
    add $I11, rx212_pos, 1
    gt $I11, rx212_eos, rx212_fail
    sub $I11, rx212_pos, rx212_off
    substr $S10, rx212_tgt, $I11, 1
    ne $S10, "Z", rx212_fail
    add rx212_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx212_cur."!cursor_pos"(rx212_pos)
    $P10 = rx212_cur."obs"("\\\\Z as end-of-string matcher;\\\\n?$")
    unless $P10, rx212_fail
    rx212_pos = $P10."pos"()
  # rx pass
    rx212_cur."!cursor_pass"(rx212_pos, "backslash:sym<Z>")
    rx212_cur."!cursor_debug"("PASS  ", "backslash:sym<Z>", " at pos=", rx212_pos)
    .return (rx212_cur)
  rx212_fail:
    (rx212_rep, rx212_pos, $I10, $P10) = rx212_cur."!mark_fail"(0)
    lt rx212_pos, -1, rx212_done
    eq rx212_pos, -1, rx212_fail
    jump $I10
  rx212_done:
    rx212_cur."!cursor_fail"()
    rx212_cur."!cursor_debug"("FAIL  ", "backslash:sym<Z>")
    .return (rx212_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("63_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 116
    .local string rx214_tgt
    .local int rx214_pos
    .local int rx214_off
    .local int rx214_eos
    .local int rx214_rep
    .local pmc rx214_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx214_peek
    ne $P10, 2, rx214_peek
    .return ("Q")
  rx214_peek:
    (rx214_cur, rx214_pos, rx214_tgt, $I10) = self."!cursor_start"()
    rx214_cur."!cursor_debug"("START ", "backslash:sym<Q>")
    .lex unicode:"$\x{a2}", rx214_cur
    length rx214_eos, rx214_tgt
    set rx214_off, 0
    lt $I10, 2, rx214_start
    sub rx214_off, $I10, 1
    substr rx214_tgt, rx214_tgt, rx214_off
  rx214_start:
  # rx literal  "Q"
    add $I11, rx214_pos, 1
    gt $I11, rx214_eos, rx214_fail
    sub $I11, rx214_pos, rx214_off
    substr $S10, rx214_tgt, $I11, 1
    ne $S10, "Q", rx214_fail
    add rx214_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx214_cur."!cursor_pos"(rx214_pos)
    $P10 = rx214_cur."obs"("\\\\Q as quotemeta;quotes or literal variable match")
    unless $P10, rx214_fail
    rx214_pos = $P10."pos"()
  # rx pass
    rx214_cur."!cursor_pass"(rx214_pos, "backslash:sym<Q>")
    rx214_cur."!cursor_debug"("PASS  ", "backslash:sym<Q>", " at pos=", rx214_pos)
    .return (rx214_cur)
  rx214_fail:
    (rx214_rep, rx214_pos, $I10, $P10) = rx214_cur."!mark_fail"(0)
    lt rx214_pos, -1, rx214_done
    eq rx214_pos, -1, rx214_fail
    jump $I10
  rx214_done:
    rx214_cur."!cursor_fail"()
    rx214_cur."!cursor_debug"("FAIL  ", "backslash:sym<Q>")
    .return (rx214_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("64_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 117
    .local string rx216_tgt
    .local int rx216_pos
    .local int rx216_off
    .local int rx216_eos
    .local int rx216_rep
    .local pmc rx216_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx216_peek
    ne $P10, 2, rx216_peek
    .return ("")
  rx216_peek:
    (rx216_cur, rx216_pos, rx216_tgt, $I10) = self."!cursor_start"()
    rx216_cur."!cursor_debug"("START ", "backslash:sym<misc>")
    .lex unicode:"$\x{a2}", rx216_cur
    length rx216_eos, rx216_tgt
    set rx216_off, 0
    lt $I10, 2, rx216_start
    sub rx216_off, $I10, 1
    substr rx216_tgt, rx216_tgt, rx216_off
  rx216_start:
  # rx charclass W
    ge rx216_pos, rx216_eos, rx216_fail
    sub $I10, rx216_pos, rx216_off
    is_cclass $I11, 8192, rx216_tgt, $I10
    if $I11, rx216_fail
    inc rx216_pos
  # rx pass
    rx216_cur."!cursor_pass"(rx216_pos, "backslash:sym<misc>")
    rx216_cur."!cursor_debug"("PASS  ", "backslash:sym<misc>", " at pos=", rx216_pos)
    .return (rx216_cur)
  rx216_fail:
    (rx216_rep, rx216_pos, $I10, $P10) = rx216_cur."!mark_fail"(0)
    lt rx216_pos, -1, rx216_done
    eq rx216_pos, -1, rx216_fail
    jump $I10
  rx216_done:
    rx216_cur."!cursor_fail"()
    rx216_cur."!cursor_debug"("FAIL  ", "backslash:sym<misc>")
    .return (rx216_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("65_1256191324.59793") :method
.annotate "line", 119
    $P218 = self."!protoregex"("assertion")
    .return ($P218)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("66_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 121
    .const 'Sub' $P223 = "67_1256191324.59793" 
    capture_lex $P223
    .local string rx220_tgt
    .local int rx220_pos
    .local int rx220_off
    .local int rx220_eos
    .local int rx220_rep
    .local pmc rx220_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx220_peek
    ne $P10, 2, rx220_peek
    .return ("?", "?")
  rx220_peek:
    (rx220_cur, rx220_pos, rx220_tgt, $I10) = self."!cursor_start"()
    rx220_cur."!cursor_debug"("START ", "assertion:sym<?>")
    .lex unicode:"$\x{a2}", rx220_cur
    length rx220_eos, rx220_tgt
    set rx220_off, 0
    lt $I10, 2, rx220_start
    sub rx220_off, $I10, 1
    substr rx220_tgt, rx220_tgt, rx220_off
  rx220_start:
  # rx literal  "?"
    add $I11, rx220_pos, 1
    gt $I11, rx220_eos, rx220_fail
    sub $I11, rx220_pos, rx220_off
    substr $S10, rx220_tgt, $I11, 1
    ne $S10, "?", rx220_fail
    add rx220_pos, 1
  alt221_0:
    set_addr $I10, alt221_1
    rx220_cur."!mark_push"(0, rx220_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx220_cur."!cursor_pos"(rx220_pos)
    .const 'Sub' $P223 = "67_1256191324.59793" 
    capture_lex $P223
    $P10 = rx220_cur."before"($P223)
    unless $P10, rx220_fail
    goto alt221_end
  alt221_1:
  # rx subrule "assertion" subtype=capture negate=
    rx220_cur."!cursor_pos"(rx220_pos)
    $P10 = rx220_cur."assertion"()
    unless $P10, rx220_fail
    rx220_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx220_pos = $P10."pos"()
  alt221_end:
  # rx pass
    rx220_cur."!cursor_pass"(rx220_pos, "assertion:sym<?>")
    rx220_cur."!cursor_debug"("PASS  ", "assertion:sym<?>", " at pos=", rx220_pos)
    .return (rx220_cur)
  rx220_fail:
    (rx220_rep, rx220_pos, $I10, $P10) = rx220_cur."!mark_fail"(0)
    lt rx220_pos, -1, rx220_done
    eq rx220_pos, -1, rx220_fail
    jump $I10
  rx220_done:
    rx220_cur."!cursor_fail"()
    rx220_cur."!cursor_debug"("FAIL  ", "assertion:sym<?>")
    .return (rx220_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block222"  :anon :subid("67_1256191324.59793") :method :outer("66_1256191324.59793")
.annotate "line", 121
    .local string rx224_tgt
    .local int rx224_pos
    .local int rx224_off
    .local int rx224_eos
    .local int rx224_rep
    .local pmc rx224_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx224_peek
    ne $P10, 2, rx224_peek
    .return (">")
  rx224_peek:
    (rx224_cur, rx224_pos, rx224_tgt, $I10) = self."!cursor_start"()
    rx224_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx224_cur
    length rx224_eos, rx224_tgt
    set rx224_off, 0
    lt $I10, 2, rx224_start
    sub rx224_off, $I10, 1
    substr rx224_tgt, rx224_tgt, rx224_off
  rx224_start:
    ge rx224_pos, 0, rxscan225_done
  rxscan225_loop:
    ($P10) = rx224_cur."from"()
    inc $P10
    set rx224_pos, $P10
    ge rx224_pos, rx224_eos, rxscan225_done
    set_addr $I10, rxscan225_loop
    rx224_cur."!mark_push"(0, rx224_pos, $I10)
  rxscan225_done:
  # rx literal  ">"
    add $I11, rx224_pos, 1
    gt $I11, rx224_eos, rx224_fail
    sub $I11, rx224_pos, rx224_off
    substr $S10, rx224_tgt, $I11, 1
    ne $S10, ">", rx224_fail
    add rx224_pos, 1
  # rx pass
    rx224_cur."!cursor_pass"(rx224_pos, "")
    rx224_cur."!cursor_debug"("PASS  ", "", " at pos=", rx224_pos)
    .return (rx224_cur)
  rx224_fail:
    (rx224_rep, rx224_pos, $I10, $P10) = rx224_cur."!mark_fail"(0)
    lt rx224_pos, -1, rx224_done
    eq rx224_pos, -1, rx224_fail
    jump $I10
  rx224_done:
    rx224_cur."!cursor_fail"()
    rx224_cur."!cursor_debug"("FAIL  ", "")
    .return (rx224_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("68_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 122
    .const 'Sub' $P230 = "69_1256191324.59793" 
    capture_lex $P230
    .local string rx227_tgt
    .local int rx227_pos
    .local int rx227_off
    .local int rx227_eos
    .local int rx227_rep
    .local pmc rx227_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx227_peek
    ne $P10, 2, rx227_peek
    .return ("!", "!")
  rx227_peek:
    (rx227_cur, rx227_pos, rx227_tgt, $I10) = self."!cursor_start"()
    rx227_cur."!cursor_debug"("START ", "assertion:sym<!>")
    .lex unicode:"$\x{a2}", rx227_cur
    length rx227_eos, rx227_tgt
    set rx227_off, 0
    lt $I10, 2, rx227_start
    sub rx227_off, $I10, 1
    substr rx227_tgt, rx227_tgt, rx227_off
  rx227_start:
  # rx literal  "!"
    add $I11, rx227_pos, 1
    gt $I11, rx227_eos, rx227_fail
    sub $I11, rx227_pos, rx227_off
    substr $S10, rx227_tgt, $I11, 1
    ne $S10, "!", rx227_fail
    add rx227_pos, 1
  alt228_0:
    set_addr $I10, alt228_1
    rx227_cur."!mark_push"(0, rx227_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx227_cur."!cursor_pos"(rx227_pos)
    .const 'Sub' $P230 = "69_1256191324.59793" 
    capture_lex $P230
    $P10 = rx227_cur."before"($P230)
    unless $P10, rx227_fail
    goto alt228_end
  alt228_1:
  # rx subrule "assertion" subtype=capture negate=
    rx227_cur."!cursor_pos"(rx227_pos)
    $P10 = rx227_cur."assertion"()
    unless $P10, rx227_fail
    rx227_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx227_pos = $P10."pos"()
  alt228_end:
  # rx pass
    rx227_cur."!cursor_pass"(rx227_pos, "assertion:sym<!>")
    rx227_cur."!cursor_debug"("PASS  ", "assertion:sym<!>", " at pos=", rx227_pos)
    .return (rx227_cur)
  rx227_fail:
    (rx227_rep, rx227_pos, $I10, $P10) = rx227_cur."!mark_fail"(0)
    lt rx227_pos, -1, rx227_done
    eq rx227_pos, -1, rx227_fail
    jump $I10
  rx227_done:
    rx227_cur."!cursor_fail"()
    rx227_cur."!cursor_debug"("FAIL  ", "assertion:sym<!>")
    .return (rx227_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block229"  :anon :subid("69_1256191324.59793") :method :outer("68_1256191324.59793")
.annotate "line", 122
    .local string rx231_tgt
    .local int rx231_pos
    .local int rx231_off
    .local int rx231_eos
    .local int rx231_rep
    .local pmc rx231_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx231_peek
    ne $P10, 2, rx231_peek
    .return (">")
  rx231_peek:
    (rx231_cur, rx231_pos, rx231_tgt, $I10) = self."!cursor_start"()
    rx231_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx231_cur
    length rx231_eos, rx231_tgt
    set rx231_off, 0
    lt $I10, 2, rx231_start
    sub rx231_off, $I10, 1
    substr rx231_tgt, rx231_tgt, rx231_off
  rx231_start:
    ge rx231_pos, 0, rxscan232_done
  rxscan232_loop:
    ($P10) = rx231_cur."from"()
    inc $P10
    set rx231_pos, $P10
    ge rx231_pos, rx231_eos, rxscan232_done
    set_addr $I10, rxscan232_loop
    rx231_cur."!mark_push"(0, rx231_pos, $I10)
  rxscan232_done:
  # rx literal  ">"
    add $I11, rx231_pos, 1
    gt $I11, rx231_eos, rx231_fail
    sub $I11, rx231_pos, rx231_off
    substr $S10, rx231_tgt, $I11, 1
    ne $S10, ">", rx231_fail
    add rx231_pos, 1
  # rx pass
    rx231_cur."!cursor_pass"(rx231_pos, "")
    rx231_cur."!cursor_debug"("PASS  ", "", " at pos=", rx231_pos)
    .return (rx231_cur)
  rx231_fail:
    (rx231_rep, rx231_pos, $I10, $P10) = rx231_cur."!mark_fail"(0)
    lt rx231_pos, -1, rx231_done
    eq rx231_pos, -1, rx231_fail
    jump $I10
  rx231_done:
    rx231_cur."!cursor_fail"()
    rx231_cur."!cursor_debug"("FAIL  ", "")
    .return (rx231_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("70_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 124
    .local string rx234_tgt
    .local int rx234_pos
    .local int rx234_off
    .local int rx234_eos
    .local int rx234_rep
    .local pmc rx234_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx234_peek
    ne $P10, 2, rx234_peek
    .return (".")
  rx234_peek:
    (rx234_cur, rx234_pos, rx234_tgt, $I10) = self."!cursor_start"()
    rx234_cur."!cursor_debug"("START ", "assertion:sym<method>")
    .lex unicode:"$\x{a2}", rx234_cur
    length rx234_eos, rx234_tgt
    set rx234_off, 0
    lt $I10, 2, rx234_start
    sub rx234_off, $I10, 1
    substr rx234_tgt, rx234_tgt, rx234_off
  rx234_start:
.annotate "line", 125
  # rx literal  "."
    add $I11, rx234_pos, 1
    gt $I11, rx234_eos, rx234_fail
    sub $I11, rx234_pos, rx234_off
    substr $S10, rx234_tgt, $I11, 1
    ne $S10, ".", rx234_fail
    add rx234_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx234_cur."!cursor_pos"(rx234_pos)
    $P10 = rx234_cur."assertion"()
    unless $P10, rx234_fail
    rx234_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx234_pos = $P10."pos"()
.annotate "line", 124
  # rx pass
    rx234_cur."!cursor_pass"(rx234_pos, "assertion:sym<method>")
    rx234_cur."!cursor_debug"("PASS  ", "assertion:sym<method>", " at pos=", rx234_pos)
    .return (rx234_cur)
  rx234_fail:
    (rx234_rep, rx234_pos, $I10, $P10) = rx234_cur."!mark_fail"(0)
    lt rx234_pos, -1, rx234_done
    eq rx234_pos, -1, rx234_fail
    jump $I10
  rx234_done:
    rx234_cur."!cursor_fail"()
    rx234_cur."!cursor_debug"("FAIL  ", "assertion:sym<method>")
    .return (rx234_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("71_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 128
    .const 'Sub' $P241 = "72_1256191324.59793" 
    capture_lex $P241
    .local string rx236_tgt
    .local int rx236_pos
    .local int rx236_off
    .local int rx236_eos
    .local int rx236_rep
    .local pmc rx236_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx236_peek
    ne $P10, 2, rx236_peek
    .return ("")
  rx236_peek:
    (rx236_cur, rx236_pos, rx236_tgt, $I10) = self."!cursor_start"()
    rx236_cur."!cursor_debug"("START ", "assertion:sym<name>")
    rx236_cur."!cursor_caparray"("arglist", "nibbler", "assertion")
    .lex unicode:"$\x{a2}", rx236_cur
    length rx236_eos, rx236_tgt
    set rx236_off, 0
    lt $I10, 2, rx236_start
    sub rx236_off, $I10, 1
    substr rx236_tgt, rx236_tgt, rx236_off
  rx236_start:
.annotate "line", 129
  # rx subcapture "longname"
    set_addr $I10, rxcap_237_fail
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx236_pos, rx236_off
    find_not_cclass $I11, 8192, rx236_tgt, $I10, rx236_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx236_fail
    add rx236_pos, rx236_off, $I11
    set_addr $I10, rxcap_237_fail
    ($I12, $I11) = rx236_cur."!mark_peek"($I10)
    rx236_cur."!cursor_pos"($I11)
    ($P10) = rx236_cur."!cursor_start"()
    $P10."!cursor_pass"(rx236_pos, "")
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    goto rxcap_237_done
  rxcap_237_fail:
    goto rx236_fail
  rxcap_237_done:
.annotate "line", 136
  # rx rxquantr238 ** 0..1
    set_addr $I244, rxquantr238_done
    rx236_cur."!mark_push"(0, rx236_pos, $I244)
  rxquantr238_loop:
  alt239_0:
.annotate "line", 130
    set_addr $I10, alt239_1
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
.annotate "line", 131
  # rx subrule "before" subtype=zerowidth negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    .const 'Sub' $P241 = "72_1256191324.59793" 
    capture_lex $P241
    $P10 = rx236_cur."before"($P241)
    unless $P10, rx236_fail
    goto alt239_end
  alt239_1:
    set_addr $I10, alt239_2
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
.annotate "line", 132
  # rx literal  "="
    add $I11, rx236_pos, 1
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 1
    ne $S10, "=", rx236_fail
    add rx236_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."assertion"()
    unless $P10, rx236_fail
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx236_pos = $P10."pos"()
    goto alt239_end
  alt239_2:
    set_addr $I10, alt239_3
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
.annotate "line", 133
  # rx literal  ":"
    add $I11, rx236_pos, 1
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 1
    ne $S10, ":", rx236_fail
    add rx236_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."arglist"()
    unless $P10, rx236_fail
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx236_pos = $P10."pos"()
    goto alt239_end
  alt239_3:
    set_addr $I10, alt239_4
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
.annotate "line", 134
  # rx literal  "("
    add $I11, rx236_pos, 1
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 1
    ne $S10, "(", rx236_fail
    add rx236_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."arglist"()
    unless $P10, rx236_fail
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx236_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx236_pos, 1
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 1
    ne $S10, ")", rx236_fail
    add rx236_pos, 1
    goto alt239_end
  alt239_4:
.annotate "line", 135
  # rx subrule "normspace" subtype=method negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."normspace"()
    unless $P10, rx236_fail
    rx236_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."nibbler"()
    unless $P10, rx236_fail
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx236_pos = $P10."pos"()
  alt239_end:
.annotate "line", 136
    (rx236_rep) = rx236_cur."!mark_commit"($I244)
  rxquantr238_done:
.annotate "line", 128
  # rx pass
    rx236_cur."!cursor_pass"(rx236_pos, "assertion:sym<name>")
    rx236_cur."!cursor_debug"("PASS  ", "assertion:sym<name>", " at pos=", rx236_pos)
    .return (rx236_cur)
  rx236_fail:
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    rx236_cur."!cursor_debug"("FAIL  ", "assertion:sym<name>")
    .return (rx236_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block240"  :anon :subid("72_1256191324.59793") :method :outer("71_1256191324.59793")
.annotate "line", 131
    .local string rx242_tgt
    .local int rx242_pos
    .local int rx242_off
    .local int rx242_eos
    .local int rx242_rep
    .local pmc rx242_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx242_peek
    ne $P10, 2, rx242_peek
    .return (">")
  rx242_peek:
    (rx242_cur, rx242_pos, rx242_tgt, $I10) = self."!cursor_start"()
    rx242_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx242_cur
    length rx242_eos, rx242_tgt
    set rx242_off, 0
    lt $I10, 2, rx242_start
    sub rx242_off, $I10, 1
    substr rx242_tgt, rx242_tgt, rx242_off
  rx242_start:
    ge rx242_pos, 0, rxscan243_done
  rxscan243_loop:
    ($P10) = rx242_cur."from"()
    inc $P10
    set rx242_pos, $P10
    ge rx242_pos, rx242_eos, rxscan243_done
    set_addr $I10, rxscan243_loop
    rx242_cur."!mark_push"(0, rx242_pos, $I10)
  rxscan243_done:
  # rx literal  ">"
    add $I11, rx242_pos, 1
    gt $I11, rx242_eos, rx242_fail
    sub $I11, rx242_pos, rx242_off
    substr $S10, rx242_tgt, $I11, 1
    ne $S10, ">", rx242_fail
    add rx242_pos, 1
  # rx pass
    rx242_cur."!cursor_pass"(rx242_pos, "")
    rx242_cur."!cursor_debug"("PASS  ", "", " at pos=", rx242_pos)
    .return (rx242_cur)
  rx242_fail:
    (rx242_rep, rx242_pos, $I10, $P10) = rx242_cur."!mark_fail"(0)
    lt rx242_pos, -1, rx242_done
    eq rx242_pos, -1, rx242_fail
    jump $I10
  rx242_done:
    rx242_cur."!cursor_fail"()
    rx242_cur."!cursor_debug"("FAIL  ", "")
    .return (rx242_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("73_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 139
    .const 'Sub' $P248 = "74_1256191324.59793" 
    capture_lex $P248
    .local string rx246_tgt
    .local int rx246_pos
    .local int rx246_off
    .local int rx246_eos
    .local int rx246_rep
    .local pmc rx246_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx246_peek
    ne $P10, 2, rx246_peek
    .return ("")
  rx246_peek:
    (rx246_cur, rx246_pos, rx246_tgt, $I10) = self."!cursor_start"()
    rx246_cur."!cursor_debug"("START ", "assertion:sym<[>")
    rx246_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx246_cur
    length rx246_eos, rx246_tgt
    set rx246_off, 0
    lt $I10, 2, rx246_start
    sub rx246_off, $I10, 1
    substr rx246_tgt, rx246_tgt, rx246_off
  rx246_start:
  # rx subrule "before" subtype=zerowidth negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    .const 'Sub' $P248 = "74_1256191324.59793" 
    capture_lex $P248
    $P10 = rx246_cur."before"($P248)
    unless $P10, rx246_fail
  # rx rxquantr252 ** 1..*
    set_addr $I253, rxquantr252_done
    rx246_cur."!mark_push"(0, -1, $I253)
  rxquantr252_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."cclass_elem"()
    unless $P10, rx246_fail
    rx246_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx246_pos = $P10."pos"()
    (rx246_rep) = rx246_cur."!mark_commit"($I253)
    rx246_cur."!mark_push"(rx246_rep, rx246_pos, $I253)
    goto rxquantr252_loop
  rxquantr252_done:
  # rx pass
    rx246_cur."!cursor_pass"(rx246_pos, "assertion:sym<[>")
    rx246_cur."!cursor_debug"("PASS  ", "assertion:sym<[>", " at pos=", rx246_pos)
    .return (rx246_cur)
  rx246_fail:
    (rx246_rep, rx246_pos, $I10, $P10) = rx246_cur."!mark_fail"(0)
    lt rx246_pos, -1, rx246_done
    eq rx246_pos, -1, rx246_fail
    jump $I10
  rx246_done:
    rx246_cur."!cursor_fail"()
    rx246_cur."!cursor_debug"("FAIL  ", "assertion:sym<[>")
    .return (rx246_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block247"  :anon :subid("74_1256191324.59793") :method :outer("73_1256191324.59793")
.annotate "line", 139
    .local string rx249_tgt
    .local int rx249_pos
    .local int rx249_off
    .local int rx249_eos
    .local int rx249_rep
    .local pmc rx249_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx249_peek
    ne $P10, 2, rx249_peek
    .return ("-", "+", "[")
  rx249_peek:
    (rx249_cur, rx249_pos, rx249_tgt, $I10) = self."!cursor_start"()
    rx249_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx249_cur
    length rx249_eos, rx249_tgt
    set rx249_off, 0
    lt $I10, 2, rx249_start
    sub rx249_off, $I10, 1
    substr rx249_tgt, rx249_tgt, rx249_off
  rx249_start:
    ge rx249_pos, 0, rxscan250_done
  rxscan250_loop:
    ($P10) = rx249_cur."from"()
    inc $P10
    set rx249_pos, $P10
    ge rx249_pos, rx249_eos, rxscan250_done
    set_addr $I10, rxscan250_loop
    rx249_cur."!mark_push"(0, rx249_pos, $I10)
  rxscan250_done:
  alt251_0:
    set_addr $I10, alt251_1
    rx249_cur."!mark_push"(0, rx249_pos, $I10)
  # rx literal  "["
    add $I11, rx249_pos, 1
    gt $I11, rx249_eos, rx249_fail
    sub $I11, rx249_pos, rx249_off
    substr $S10, rx249_tgt, $I11, 1
    ne $S10, "[", rx249_fail
    add rx249_pos, 1
    goto alt251_end
  alt251_1:
    set_addr $I10, alt251_2
    rx249_cur."!mark_push"(0, rx249_pos, $I10)
  # rx literal  "+"
    add $I11, rx249_pos, 1
    gt $I11, rx249_eos, rx249_fail
    sub $I11, rx249_pos, rx249_off
    substr $S10, rx249_tgt, $I11, 1
    ne $S10, "+", rx249_fail
    add rx249_pos, 1
    goto alt251_end
  alt251_2:
  # rx literal  "-"
    add $I11, rx249_pos, 1
    gt $I11, rx249_eos, rx249_fail
    sub $I11, rx249_pos, rx249_off
    substr $S10, rx249_tgt, $I11, 1
    ne $S10, "-", rx249_fail
    add rx249_pos, 1
  alt251_end:
  # rx pass
    rx249_cur."!cursor_pass"(rx249_pos, "")
    rx249_cur."!cursor_debug"("PASS  ", "", " at pos=", rx249_pos)
    .return (rx249_cur)
  rx249_fail:
    (rx249_rep, rx249_pos, $I10, $P10) = rx249_cur."!mark_fail"(0)
    lt rx249_pos, -1, rx249_done
    eq rx249_pos, -1, rx249_fail
    jump $I10
  rx249_done:
    rx249_cur."!cursor_fail"()
    rx249_cur."!cursor_debug"("FAIL  ", "")
    .return (rx249_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("75_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 141
    .const 'Sub' $P263 = "76_1256191324.59793" 
    capture_lex $P263
    .local string rx255_tgt
    .local int rx255_pos
    .local int rx255_off
    .local int rx255_eos
    .local int rx255_rep
    .local pmc rx255_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx255_peek
    ne $P10, 2, rx255_peek
    .return ("", "-", "+")
  rx255_peek:
    (rx255_cur, rx255_pos, rx255_tgt, $I10) = self."!cursor_start"()
    rx255_cur."!cursor_debug"("START ", "cclass_elem")
    rx255_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx255_cur
    length rx255_eos, rx255_tgt
    set rx255_off, 0
    lt $I10, 2, rx255_start
    sub rx255_off, $I10, 1
    substr rx255_tgt, rx255_tgt, rx255_off
  rx255_start:
.annotate "line", 142
  # rx subcapture "sign"
    set_addr $I10, rxcap_257_fail
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  alt256_0:
    set_addr $I10, alt256_1
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  # rx literal  "+"
    add $I11, rx255_pos, 1
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I11, 1
    ne $S10, "+", rx255_fail
    add rx255_pos, 1
    goto alt256_end
  alt256_1:
    set_addr $I10, alt256_2
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  # rx literal  "-"
    add $I11, rx255_pos, 1
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I11, 1
    ne $S10, "-", rx255_fail
    add rx255_pos, 1
    goto alt256_end
  alt256_2:
  alt256_end:
    set_addr $I10, rxcap_257_fail
    ($I12, $I11) = rx255_cur."!mark_peek"($I10)
    rx255_cur."!cursor_pos"($I11)
    ($P10) = rx255_cur."!cursor_start"()
    $P10."!cursor_pass"(rx255_pos, "")
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_257_done
  rxcap_257_fail:
    goto rx255_fail
  rxcap_257_done:
.annotate "line", 143
  # rx rxquantr258 ** 0..1
    set_addr $I259, rxquantr258_done
    rx255_cur."!mark_push"(0, rx255_pos, $I259)
  rxquantr258_loop:
  # rx subrule "normspace" subtype=method negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."normspace"()
    unless $P10, rx255_fail
    rx255_pos = $P10."pos"()
    (rx255_rep) = rx255_cur."!mark_commit"($I259)
  rxquantr258_done:
  alt260_0:
.annotate "line", 144
    set_addr $I10, alt260_1
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
.annotate "line", 145
  # rx literal  "["
    add $I11, rx255_pos, 1
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I11, 1
    ne $S10, "[", rx255_fail
    add rx255_pos, 1
.annotate "line", 148
  # rx rxquantr261 ** 0..*
    set_addr $I282, rxquantr261_done
    rx255_cur."!mark_push"(0, rx255_pos, $I282)
  rxquantr261_loop:
.annotate "line", 145
  # rx subrule $P263 subtype=capture negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    .const 'Sub' $P263 = "76_1256191324.59793" 
    capture_lex $P263
    $P10 = rx255_cur.$P263()
    unless $P10, rx255_fail
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx255_pos = $P10."pos"()
.annotate "line", 148
    (rx255_rep) = rx255_cur."!mark_commit"($I282)
    rx255_cur."!mark_push"(rx255_rep, rx255_pos, $I282)
    goto rxquantr261_loop
  rxquantr261_done:
.annotate "line", 149
  # rx charclass_q s r 0..-1
    sub $I10, rx255_pos, rx255_off
    find_not_cclass $I11, 32, rx255_tgt, $I10, rx255_eos
    add rx255_pos, rx255_off, $I11
  # rx literal  "]"
    add $I11, rx255_pos, 1
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I11, 1
    ne $S10, "]", rx255_fail
    add rx255_pos, 1
.annotate "line", 145
    goto alt260_end
  alt260_1:
.annotate "line", 150
  # rx subcapture "name"
    set_addr $I10, rxcap_283_fail
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx255_pos, rx255_off
    find_not_cclass $I11, 8192, rx255_tgt, $I10, rx255_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx255_fail
    add rx255_pos, rx255_off, $I11
    set_addr $I10, rxcap_283_fail
    ($I12, $I11) = rx255_cur."!mark_peek"($I10)
    rx255_cur."!cursor_pos"($I11)
    ($P10) = rx255_cur."!cursor_start"()
    $P10."!cursor_pass"(rx255_pos, "")
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_283_done
  rxcap_283_fail:
    goto rx255_fail
  rxcap_283_done:
  alt260_end:
.annotate "line", 152
  # rx rxquantr284 ** 0..1
    set_addr $I285, rxquantr284_done
    rx255_cur."!mark_push"(0, rx255_pos, $I285)
  rxquantr284_loop:
  # rx subrule "normspace" subtype=method negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."normspace"()
    unless $P10, rx255_fail
    rx255_pos = $P10."pos"()
    (rx255_rep) = rx255_cur."!mark_commit"($I285)
  rxquantr284_done:
.annotate "line", 141
  # rx pass
    rx255_cur."!cursor_pass"(rx255_pos, "cclass_elem")
    rx255_cur."!cursor_debug"("PASS  ", "cclass_elem", " at pos=", rx255_pos)
    .return (rx255_cur)
  rx255_fail:
    (rx255_rep, rx255_pos, $I10, $P10) = rx255_cur."!mark_fail"(0)
    lt rx255_pos, -1, rx255_done
    eq rx255_pos, -1, rx255_fail
    jump $I10
  rx255_done:
    rx255_cur."!cursor_fail"()
    rx255_cur."!cursor_debug"("FAIL  ", "cclass_elem")
    .return (rx255_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block262"  :anon :subid("76_1256191324.59793") :method :outer("75_1256191324.59793")
.annotate "line", 145
    .const 'Sub' $P278 = "79_1256191324.59793" 
    capture_lex $P278
    .const 'Sub' $P273 = "78_1256191324.59793" 
    capture_lex $P273
    .const 'Sub' $P269 = "77_1256191324.59793" 
    capture_lex $P269
    .local string rx264_tgt
    .local int rx264_pos
    .local int rx264_off
    .local int rx264_eos
    .local int rx264_rep
    .local pmc rx264_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx264_peek
    ne $P10, 2, rx264_peek
    .return ("", "")
  rx264_peek:
    (rx264_cur, rx264_pos, rx264_tgt, $I10) = self."!cursor_start"()
    rx264_cur."!cursor_debug"("START ", "")
    rx264_cur."!cursor_caparray"("1")
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
  alt266_0:
    set_addr $I10, alt266_1
    rx264_cur."!mark_push"(0, rx264_pos, $I10)
.annotate "line", 146
  # rx charclass_q s r 0..-1
    sub $I10, rx264_pos, rx264_off
    find_not_cclass $I11, 32, rx264_tgt, $I10, rx264_eos
    add rx264_pos, rx264_off, $I11
  # rx literal  "-"
    add $I11, rx264_pos, 1
    gt $I11, rx264_eos, rx264_fail
    sub $I11, rx264_pos, rx264_off
    substr $S10, rx264_tgt, $I11, 1
    ne $S10, "-", rx264_fail
    add rx264_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    $P10 = rx264_cur."obs"("hyphen in enumerated character class;..")
    unless $P10, rx264_fail
    rx264_pos = $P10."pos"()
    goto alt266_end
  alt266_1:
.annotate "line", 147
  # rx charclass_q s r 0..-1
    sub $I10, rx264_pos, rx264_off
    find_not_cclass $I11, 32, rx264_tgt, $I10, rx264_eos
    add rx264_pos, rx264_off, $I11
  alt267_0:
    set_addr $I10, alt267_1
    rx264_cur."!mark_push"(0, rx264_pos, $I10)
  # rx literal  "\\"
    add $I11, rx264_pos, 1
    gt $I11, rx264_eos, rx264_fail
    sub $I11, rx264_pos, rx264_off
    substr $S10, rx264_tgt, $I11, 1
    ne $S10, "\\", rx264_fail
    add rx264_pos, 1
  # rx subrule $P269 subtype=capture negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    .const 'Sub' $P269 = "77_1256191324.59793" 
    capture_lex $P269
    $P10 = rx264_cur.$P269()
    unless $P10, rx264_fail
    rx264_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx264_pos = $P10."pos"()
    goto alt267_end
  alt267_1:
  # rx subrule $P273 subtype=capture negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    .const 'Sub' $P273 = "78_1256191324.59793" 
    capture_lex $P273
    $P10 = rx264_cur.$P273()
    unless $P10, rx264_fail
    rx264_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx264_pos = $P10."pos"()
  alt267_end:
  # rx rxquantr276 ** 0..1
    set_addr $I281, rxquantr276_done
    rx264_cur."!mark_push"(0, rx264_pos, $I281)
  rxquantr276_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx264_pos, rx264_off
    find_not_cclass $I11, 32, rx264_tgt, $I10, rx264_eos
    add rx264_pos, rx264_off, $I11
  # rx literal  ".."
    add $I11, rx264_pos, 2
    gt $I11, rx264_eos, rx264_fail
    sub $I11, rx264_pos, rx264_off
    substr $S10, rx264_tgt, $I11, 2
    ne $S10, "..", rx264_fail
    add rx264_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx264_pos, rx264_off
    find_not_cclass $I11, 32, rx264_tgt, $I10, rx264_eos
    add rx264_pos, rx264_off, $I11
  # rx subrule $P278 subtype=capture negate=
    rx264_cur."!cursor_pos"(rx264_pos)
    .const 'Sub' $P278 = "79_1256191324.59793" 
    capture_lex $P278
    $P10 = rx264_cur.$P278()
    unless $P10, rx264_fail
    rx264_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx264_pos = $P10."pos"()
    (rx264_rep) = rx264_cur."!mark_commit"($I281)
  rxquantr276_done:
  alt266_end:
.annotate "line", 145
  # rx pass
    rx264_cur."!cursor_pass"(rx264_pos, "")
    rx264_cur."!cursor_debug"("PASS  ", "", " at pos=", rx264_pos)
    .return (rx264_cur)
  rx264_fail:
    (rx264_rep, rx264_pos, $I10, $P10) = rx264_cur."!mark_fail"(0)
    lt rx264_pos, -1, rx264_done
    eq rx264_pos, -1, rx264_fail
    jump $I10
  rx264_done:
    rx264_cur."!cursor_fail"()
    rx264_cur."!cursor_debug"("FAIL  ", "")
    .return (rx264_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block268"  :anon :subid("77_1256191324.59793") :method :outer("76_1256191324.59793")
.annotate "line", 147
    .local string rx270_tgt
    .local int rx270_pos
    .local int rx270_off
    .local int rx270_eos
    .local int rx270_rep
    .local pmc rx270_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx270_peek
    ne $P10, 2, rx270_peek
    .return ("")
  rx270_peek:
    (rx270_cur, rx270_pos, rx270_tgt, $I10) = self."!cursor_start"()
    rx270_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx270_cur
    length rx270_eos, rx270_tgt
    set rx270_off, 0
    lt $I10, 2, rx270_start
    sub rx270_off, $I10, 1
    substr rx270_tgt, rx270_tgt, rx270_off
  rx270_start:
    ge rx270_pos, 0, rxscan271_done
  rxscan271_loop:
    ($P10) = rx270_cur."from"()
    inc $P10
    set rx270_pos, $P10
    ge rx270_pos, rx270_eos, rxscan271_done
    set_addr $I10, rxscan271_loop
    rx270_cur."!mark_push"(0, rx270_pos, $I10)
  rxscan271_done:
  # rx charclass .
    ge rx270_pos, rx270_eos, rx270_fail
    inc rx270_pos
  # rx pass
    rx270_cur."!cursor_pass"(rx270_pos, "")
    rx270_cur."!cursor_debug"("PASS  ", "", " at pos=", rx270_pos)
    .return (rx270_cur)
  rx270_fail:
    (rx270_rep, rx270_pos, $I10, $P10) = rx270_cur."!mark_fail"(0)
    lt rx270_pos, -1, rx270_done
    eq rx270_pos, -1, rx270_fail
    jump $I10
  rx270_done:
    rx270_cur."!cursor_fail"()
    rx270_cur."!cursor_debug"("FAIL  ", "")
    .return (rx270_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block272"  :anon :subid("78_1256191324.59793") :method :outer("76_1256191324.59793")
.annotate "line", 147
    .local string rx274_tgt
    .local int rx274_pos
    .local int rx274_off
    .local int rx274_eos
    .local int rx274_rep
    .local pmc rx274_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx274_peek
    ne $P10, 2, rx274_peek
    .return ("")
  rx274_peek:
    (rx274_cur, rx274_pos, rx274_tgt, $I10) = self."!cursor_start"()
    rx274_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx274_cur
    length rx274_eos, rx274_tgt
    set rx274_off, 0
    lt $I10, 2, rx274_start
    sub rx274_off, $I10, 1
    substr rx274_tgt, rx274_tgt, rx274_off
  rx274_start:
    ge rx274_pos, 0, rxscan275_done
  rxscan275_loop:
    ($P10) = rx274_cur."from"()
    inc $P10
    set rx274_pos, $P10
    ge rx274_pos, rx274_eos, rxscan275_done
    set_addr $I10, rxscan275_loop
    rx274_cur."!mark_push"(0, rx274_pos, $I10)
  rxscan275_done:
  # rx enumcharlist negate=1 
    ge rx274_pos, rx274_eos, rx274_fail
    sub $I10, rx274_pos, rx274_off
    substr $S10, rx274_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx274_fail
    inc rx274_pos
  # rx pass
    rx274_cur."!cursor_pass"(rx274_pos, "")
    rx274_cur."!cursor_debug"("PASS  ", "", " at pos=", rx274_pos)
    .return (rx274_cur)
  rx274_fail:
    (rx274_rep, rx274_pos, $I10, $P10) = rx274_cur."!mark_fail"(0)
    lt rx274_pos, -1, rx274_done
    eq rx274_pos, -1, rx274_fail
    jump $I10
  rx274_done:
    rx274_cur."!cursor_fail"()
    rx274_cur."!cursor_debug"("FAIL  ", "")
    .return (rx274_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block277"  :anon :subid("79_1256191324.59793") :method :outer("76_1256191324.59793")
.annotate "line", 147
    .local string rx279_tgt
    .local int rx279_pos
    .local int rx279_off
    .local int rx279_eos
    .local int rx279_rep
    .local pmc rx279_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx279_peek
    ne $P10, 2, rx279_peek
    .return ("")
  rx279_peek:
    (rx279_cur, rx279_pos, rx279_tgt, $I10) = self."!cursor_start"()
    rx279_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx279_cur
    length rx279_eos, rx279_tgt
    set rx279_off, 0
    lt $I10, 2, rx279_start
    sub rx279_off, $I10, 1
    substr rx279_tgt, rx279_tgt, rx279_off
  rx279_start:
    ge rx279_pos, 0, rxscan280_done
  rxscan280_loop:
    ($P10) = rx279_cur."from"()
    inc $P10
    set rx279_pos, $P10
    ge rx279_pos, rx279_eos, rxscan280_done
    set_addr $I10, rxscan280_loop
    rx279_cur."!mark_push"(0, rx279_pos, $I10)
  rxscan280_done:
  # rx charclass .
    ge rx279_pos, rx279_eos, rx279_fail
    inc rx279_pos
  # rx pass
    rx279_cur."!cursor_pass"(rx279_pos, "")
    rx279_cur."!cursor_debug"("PASS  ", "", " at pos=", rx279_pos)
    .return (rx279_cur)
  rx279_fail:
    (rx279_rep, rx279_pos, $I10, $P10) = rx279_cur."!mark_fail"(0)
    lt rx279_pos, -1, rx279_done
    eq rx279_pos, -1, rx279_fail
    jump $I10
  rx279_done:
    rx279_cur."!cursor_fail"()
    rx279_cur."!cursor_debug"("FAIL  ", "")
    .return (rx279_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("80_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 155
    .const 'Sub' $P291 = "81_1256191324.59793" 
    capture_lex $P291
    .local string rx287_tgt
    .local int rx287_pos
    .local int rx287_off
    .local int rx287_eos
    .local int rx287_rep
    .local pmc rx287_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx287_peek
    ne $P10, 2, rx287_peek
    .return (":", ":")
  rx287_peek:
    (rx287_cur, rx287_pos, rx287_tgt, $I10) = self."!cursor_start"()
    rx287_cur."!cursor_debug"("START ", "mod_internal")
    rx287_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx287_cur
    length rx287_eos, rx287_tgt
    set rx287_off, 0
    lt $I10, 2, rx287_start
    sub rx287_off, $I10, 1
    substr rx287_tgt, rx287_tgt, rx287_off
  rx287_start:
  alt288_0:
.annotate "line", 156
    set_addr $I10, alt288_1
    rx287_cur."!mark_push"(0, rx287_pos, $I10)
.annotate "line", 157
  # rx literal  ":"
    add $I11, rx287_pos, 1
    gt $I11, rx287_eos, rx287_fail
    sub $I11, rx287_pos, rx287_off
    substr $S10, rx287_tgt, $I11, 1
    ne $S10, ":", rx287_fail
    add rx287_pos, 1
  # rx rxquantr289 ** 1..1
    set_addr $I295, rxquantr289_done
    rx287_cur."!mark_push"(0, -1, $I295)
  rxquantr289_loop:
  # rx subrule $P291 subtype=capture negate=
    rx287_cur."!cursor_pos"(rx287_pos)
    .const 'Sub' $P291 = "81_1256191324.59793" 
    capture_lex $P291
    $P10 = rx287_cur.$P291()
    unless $P10, rx287_fail
    rx287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    rx287_pos = $P10."pos"()
    (rx287_rep) = rx287_cur."!mark_commit"($I295)
  rxquantr289_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx287_cur."!cursor_pos"(rx287_pos)
    $P10 = rx287_cur."mod_ident"()
    unless $P10, rx287_fail
    rx287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx287_pos = $P10."pos"()
  # rxanchor rwb
    le rx287_pos, 0, rx287_fail
    sub $I10, rx287_pos, rx287_off
    is_cclass $I11, 8192, rx287_tgt, $I10
    if $I11, rx287_fail
    dec $I10
    is_cclass $I11, 8192, rx287_tgt, $I10
    unless $I11, rx287_fail
    goto alt288_end
  alt288_1:
.annotate "line", 158
  # rx literal  ":"
    add $I11, rx287_pos, 1
    gt $I11, rx287_eos, rx287_fail
    sub $I11, rx287_pos, rx287_off
    substr $S10, rx287_tgt, $I11, 1
    ne $S10, ":", rx287_fail
    add rx287_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx287_cur."!cursor_pos"(rx287_pos)
    $P10 = rx287_cur."mod_ident"()
    unless $P10, rx287_fail
    rx287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx287_pos = $P10."pos"()
  # rx rxquantr296 ** 0..1
    set_addr $I298, rxquantr296_done
    rx287_cur."!mark_push"(0, rx287_pos, $I298)
  rxquantr296_loop:
  # rx literal  "("
    add $I11, rx287_pos, 1
    gt $I11, rx287_eos, rx287_fail
    sub $I11, rx287_pos, rx287_off
    substr $S10, rx287_tgt, $I11, 1
    ne $S10, "(", rx287_fail
    add rx287_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_297_fail
    rx287_cur."!mark_push"(0, rx287_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx287_pos, rx287_off
    find_not_cclass $I11, 8, rx287_tgt, $I10, rx287_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx287_fail
    add rx287_pos, rx287_off, $I11
    set_addr $I10, rxcap_297_fail
    ($I12, $I11) = rx287_cur."!mark_peek"($I10)
    rx287_cur."!cursor_pos"($I11)
    ($P10) = rx287_cur."!cursor_start"()
    $P10."!cursor_pass"(rx287_pos, "")
    rx287_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_297_done
  rxcap_297_fail:
    goto rx287_fail
  rxcap_297_done:
  # rx literal  ")"
    add $I11, rx287_pos, 1
    gt $I11, rx287_eos, rx287_fail
    sub $I11, rx287_pos, rx287_off
    substr $S10, rx287_tgt, $I11, 1
    ne $S10, ")", rx287_fail
    add rx287_pos, 1
    (rx287_rep) = rx287_cur."!mark_commit"($I298)
  rxquantr296_done:
  alt288_end:
.annotate "line", 155
  # rx pass
    rx287_cur."!cursor_pass"(rx287_pos, "mod_internal")
    rx287_cur."!cursor_debug"("PASS  ", "mod_internal", " at pos=", rx287_pos)
    .return (rx287_cur)
  rx287_fail:
    (rx287_rep, rx287_pos, $I10, $P10) = rx287_cur."!mark_fail"(0)
    lt rx287_pos, -1, rx287_done
    eq rx287_pos, -1, rx287_fail
    jump $I10
  rx287_done:
    rx287_cur."!cursor_fail"()
    rx287_cur."!cursor_debug"("FAIL  ", "mod_internal")
    .return (rx287_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block290"  :anon :subid("81_1256191324.59793") :method :outer("80_1256191324.59793")
.annotate "line", 157
    .local string rx292_tgt
    .local int rx292_pos
    .local int rx292_off
    .local int rx292_eos
    .local int rx292_rep
    .local pmc rx292_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx292_peek
    ne $P10, 2, rx292_peek
    .return ("", "!")
  rx292_peek:
    (rx292_cur, rx292_pos, rx292_tgt, $I10) = self."!cursor_start"()
    rx292_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx292_cur
    length rx292_eos, rx292_tgt
    set rx292_off, 0
    lt $I10, 2, rx292_start
    sub rx292_off, $I10, 1
    substr rx292_tgt, rx292_tgt, rx292_off
  rx292_start:
    ge rx292_pos, 0, rxscan293_done
  rxscan293_loop:
    ($P10) = rx292_cur."from"()
    inc $P10
    set rx292_pos, $P10
    ge rx292_pos, rx292_eos, rxscan293_done
    set_addr $I10, rxscan293_loop
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
  rxscan293_done:
  alt294_0:
    set_addr $I10, alt294_1
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
  # rx literal  "!"
    add $I11, rx292_pos, 1
    gt $I11, rx292_eos, rx292_fail
    sub $I11, rx292_pos, rx292_off
    substr $S10, rx292_tgt, $I11, 1
    ne $S10, "!", rx292_fail
    add rx292_pos, 1
    goto alt294_end
  alt294_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx292_pos, rx292_off
    find_not_cclass $I11, 8, rx292_tgt, $I10, rx292_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx292_fail
    add rx292_pos, rx292_off, $I11
  alt294_end:
  # rx pass
    rx292_cur."!cursor_pass"(rx292_pos, "")
    rx292_cur."!cursor_debug"("PASS  ", "", " at pos=", rx292_pos)
    .return (rx292_cur)
  rx292_fail:
    (rx292_rep, rx292_pos, $I10, $P10) = rx292_cur."!mark_fail"(0)
    lt rx292_pos, -1, rx292_done
    eq rx292_pos, -1, rx292_fail
    jump $I10
  rx292_done:
    rx292_cur."!cursor_fail"()
    rx292_cur."!cursor_debug"("FAIL  ", "")
    .return (rx292_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("82_1256191324.59793") :method
.annotate "line", 162
    $P300 = self."!protoregex"("mod_ident")
    .return ($P300)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("83_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 163
    .local string rx302_tgt
    .local int rx302_pos
    .local int rx302_off
    .local int rx302_eos
    .local int rx302_rep
    .local pmc rx302_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx302_peek
    ne $P10, 2, rx302_peek
    .return ("i")
  rx302_peek:
    (rx302_cur, rx302_pos, rx302_tgt, $I10) = self."!cursor_start"()
    rx302_cur."!cursor_debug"("START ", "mod_ident:sym<ignorecase>")
    .lex unicode:"$\x{a2}", rx302_cur
    length rx302_eos, rx302_tgt
    set rx302_off, 0
    lt $I10, 2, rx302_start
    sub rx302_off, $I10, 1
    substr rx302_tgt, rx302_tgt, rx302_off
  rx302_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_303_fail
    rx302_cur."!mark_push"(0, rx302_pos, $I10)
  # rx literal  "i"
    add $I11, rx302_pos, 1
    gt $I11, rx302_eos, rx302_fail
    sub $I11, rx302_pos, rx302_off
    substr $S10, rx302_tgt, $I11, 1
    ne $S10, "i", rx302_fail
    add rx302_pos, 1
    set_addr $I10, rxcap_303_fail
    ($I12, $I11) = rx302_cur."!mark_peek"($I10)
    rx302_cur."!cursor_pos"($I11)
    ($P10) = rx302_cur."!cursor_start"()
    $P10."!cursor_pass"(rx302_pos, "")
    rx302_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_303_done
  rxcap_303_fail:
    goto rx302_fail
  rxcap_303_done:
  # rx rxquantr304 ** 0..1
    set_addr $I305, rxquantr304_done
    rx302_cur."!mark_push"(0, rx302_pos, $I305)
  rxquantr304_loop:
  # rx literal  "gnorecase"
    add $I11, rx302_pos, 9
    gt $I11, rx302_eos, rx302_fail
    sub $I11, rx302_pos, rx302_off
    substr $S10, rx302_tgt, $I11, 9
    ne $S10, "gnorecase", rx302_fail
    add rx302_pos, 9
    (rx302_rep) = rx302_cur."!mark_commit"($I305)
  rxquantr304_done:
  # rx pass
    rx302_cur."!cursor_pass"(rx302_pos, "mod_ident:sym<ignorecase>")
    rx302_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ignorecase>", " at pos=", rx302_pos)
    .return (rx302_cur)
  rx302_fail:
    (rx302_rep, rx302_pos, $I10, $P10) = rx302_cur."!mark_fail"(0)
    lt rx302_pos, -1, rx302_done
    eq rx302_pos, -1, rx302_fail
    jump $I10
  rx302_done:
    rx302_cur."!cursor_fail"()
    rx302_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ignorecase>")
    .return (rx302_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("84_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 164
    .local string rx307_tgt
    .local int rx307_pos
    .local int rx307_off
    .local int rx307_eos
    .local int rx307_rep
    .local pmc rx307_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx307_peek
    ne $P10, 2, rx307_peek
    .return ("r")
  rx307_peek:
    (rx307_cur, rx307_pos, rx307_tgt, $I10) = self."!cursor_start"()
    rx307_cur."!cursor_debug"("START ", "mod_ident:sym<ratchet>")
    .lex unicode:"$\x{a2}", rx307_cur
    length rx307_eos, rx307_tgt
    set rx307_off, 0
    lt $I10, 2, rx307_start
    sub rx307_off, $I10, 1
    substr rx307_tgt, rx307_tgt, rx307_off
  rx307_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_308_fail
    rx307_cur."!mark_push"(0, rx307_pos, $I10)
  # rx literal  "r"
    add $I11, rx307_pos, 1
    gt $I11, rx307_eos, rx307_fail
    sub $I11, rx307_pos, rx307_off
    substr $S10, rx307_tgt, $I11, 1
    ne $S10, "r", rx307_fail
    add rx307_pos, 1
    set_addr $I10, rxcap_308_fail
    ($I12, $I11) = rx307_cur."!mark_peek"($I10)
    rx307_cur."!cursor_pos"($I11)
    ($P10) = rx307_cur."!cursor_start"()
    $P10."!cursor_pass"(rx307_pos, "")
    rx307_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_308_done
  rxcap_308_fail:
    goto rx307_fail
  rxcap_308_done:
  # rx rxquantr309 ** 0..1
    set_addr $I310, rxquantr309_done
    rx307_cur."!mark_push"(0, rx307_pos, $I310)
  rxquantr309_loop:
  # rx literal  "atchet"
    add $I11, rx307_pos, 6
    gt $I11, rx307_eos, rx307_fail
    sub $I11, rx307_pos, rx307_off
    substr $S10, rx307_tgt, $I11, 6
    ne $S10, "atchet", rx307_fail
    add rx307_pos, 6
    (rx307_rep) = rx307_cur."!mark_commit"($I310)
  rxquantr309_done:
  # rx pass
    rx307_cur."!cursor_pass"(rx307_pos, "mod_ident:sym<ratchet>")
    rx307_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ratchet>", " at pos=", rx307_pos)
    .return (rx307_cur)
  rx307_fail:
    (rx307_rep, rx307_pos, $I10, $P10) = rx307_cur."!mark_fail"(0)
    lt rx307_pos, -1, rx307_done
    eq rx307_pos, -1, rx307_fail
    jump $I10
  rx307_done:
    rx307_cur."!cursor_fail"()
    rx307_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ratchet>")
    .return (rx307_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("85_1256191324.59793") :method :outer("10_1256191324.59793")
.annotate "line", 165
    .local string rx312_tgt
    .local int rx312_pos
    .local int rx312_off
    .local int rx312_eos
    .local int rx312_rep
    .local pmc rx312_cur
    getattribute $P10, self, "$!type"
    if_null $P10, rx312_peek
    ne $P10, 2, rx312_peek
    .return ("s")
  rx312_peek:
    (rx312_cur, rx312_pos, rx312_tgt, $I10) = self."!cursor_start"()
    rx312_cur."!cursor_debug"("START ", "mod_ident:sym<sigspace>")
    .lex unicode:"$\x{a2}", rx312_cur
    length rx312_eos, rx312_tgt
    set rx312_off, 0
    lt $I10, 2, rx312_start
    sub rx312_off, $I10, 1
    substr rx312_tgt, rx312_tgt, rx312_off
  rx312_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_313_fail
    rx312_cur."!mark_push"(0, rx312_pos, $I10)
  # rx literal  "s"
    add $I11, rx312_pos, 1
    gt $I11, rx312_eos, rx312_fail
    sub $I11, rx312_pos, rx312_off
    substr $S10, rx312_tgt, $I11, 1
    ne $S10, "s", rx312_fail
    add rx312_pos, 1
    set_addr $I10, rxcap_313_fail
    ($I12, $I11) = rx312_cur."!mark_peek"($I10)
    rx312_cur."!cursor_pos"($I11)
    ($P10) = rx312_cur."!cursor_start"()
    $P10."!cursor_pass"(rx312_pos, "")
    rx312_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_313_done
  rxcap_313_fail:
    goto rx312_fail
  rxcap_313_done:
  # rx rxquantr314 ** 0..1
    set_addr $I315, rxquantr314_done
    rx312_cur."!mark_push"(0, rx312_pos, $I315)
  rxquantr314_loop:
  # rx literal  "igspace"
    add $I11, rx312_pos, 7
    gt $I11, rx312_eos, rx312_fail
    sub $I11, rx312_pos, rx312_off
    substr $S10, rx312_tgt, $I11, 7
    ne $S10, "igspace", rx312_fail
    add rx312_pos, 7
    (rx312_rep) = rx312_cur."!mark_commit"($I315)
  rxquantr314_done:
  # rx pass
    rx312_cur."!cursor_pass"(rx312_pos, "mod_ident:sym<sigspace>")
    rx312_cur."!cursor_debug"("PASS  ", "mod_ident:sym<sigspace>", " at pos=", rx312_pos)
    .return (rx312_cur)
  rx312_fail:
    (rx312_rep, rx312_pos, $I10, $P10) = rx312_cur."!mark_fail"(0)
    lt rx312_pos, -1, rx312_done
    eq rx312_pos, -1, rx312_fail
    jump $I10
  rx312_done:
    rx312_cur."!cursor_fail"()
    rx312_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<sigspace>")
    .return (rx312_cur)
    .return ()
.end

### .include 'src/gen/p6regex-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256191315.43076")
.annotate "line", 4
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
.annotate "line", 1
    .return ($P14)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block13" :init :load :subid("11_1256191315.43076")
.annotate "line", 4
    .const 'Sub' $P1412 = "121_1256191315.43076" 
    capture_lex $P1412
    .const 'Sub' $P1371 = "117_1256191315.43076" 
    capture_lex $P1371
    .const 'Sub' $P1108 = "99_1256191315.43076" 
    capture_lex $P1108
    .const 'Sub' $P1088 = "98_1256191315.43076" 
    capture_lex $P1088
    .const 'Sub' $P1061 = "97_1256191315.43076" 
    capture_lex $P1061
    .const 'Sub' $P993 = "91_1256191315.43076" 
    capture_lex $P993
    .const 'Sub' $P924 = "86_1256191315.43076" 
    capture_lex $P924
    .const 'Sub' $P854 = "80_1256191315.43076" 
    capture_lex $P854
    .const 'Sub' $P842 = "79_1256191315.43076" 
    capture_lex $P842
    .const 'Sub' $P814 = "76_1256191315.43076" 
    capture_lex $P814
    .const 'Sub' $P792 = "73_1256191315.43076" 
    capture_lex $P792
    .const 'Sub' $P779 = "72_1256191315.43076" 
    capture_lex $P779
    .const 'Sub' $P764 = "71_1256191315.43076" 
    capture_lex $P764
    .const 'Sub' $P749 = "70_1256191315.43076" 
    capture_lex $P749
    .const 'Sub' $P734 = "69_1256191315.43076" 
    capture_lex $P734
    .const 'Sub' $P719 = "68_1256191315.43076" 
    capture_lex $P719
    .const 'Sub' $P704 = "67_1256191315.43076" 
    capture_lex $P704
    .const 'Sub' $P689 = "66_1256191315.43076" 
    capture_lex $P689
    .const 'Sub' $P674 = "65_1256191315.43076" 
    capture_lex $P674
    .const 'Sub' $P652 = "64_1256191315.43076" 
    capture_lex $P652
    .const 'Sub' $P581 = "58_1256191315.43076" 
    capture_lex $P581
    .const 'Sub' $P561 = "57_1256191315.43076" 
    capture_lex $P561
    .const 'Sub' $P539 = "56_1256191315.43076" 
    capture_lex $P539
    .const 'Sub' $P529 = "55_1256191315.43076" 
    capture_lex $P529
    .const 'Sub' $P519 = "54_1256191315.43076" 
    capture_lex $P519
    .const 'Sub' $P509 = "53_1256191315.43076" 
    capture_lex $P509
    .const 'Sub' $P498 = "52_1256191315.43076" 
    capture_lex $P498
    .const 'Sub' $P487 = "51_1256191315.43076" 
    capture_lex $P487
    .const 'Sub' $P476 = "50_1256191315.43076" 
    capture_lex $P476
    .const 'Sub' $P465 = "49_1256191315.43076" 
    capture_lex $P465
    .const 'Sub' $P454 = "48_1256191315.43076" 
    capture_lex $P454
    .const 'Sub' $P443 = "47_1256191315.43076" 
    capture_lex $P443
    .const 'Sub' $P432 = "46_1256191315.43076" 
    capture_lex $P432
    .const 'Sub' $P421 = "45_1256191315.43076" 
    capture_lex $P421
    .const 'Sub' $P406 = "44_1256191315.43076" 
    capture_lex $P406
    .const 'Sub' $P390 = "43_1256191315.43076" 
    capture_lex $P390
    .const 'Sub' $P380 = "42_1256191315.43076" 
    capture_lex $P380
    .const 'Sub' $P363 = "41_1256191315.43076" 
    capture_lex $P363
    .const 'Sub' $P303 = "36_1256191315.43076" 
    capture_lex $P303
    .const 'Sub' $P287 = "35_1256191315.43076" 
    capture_lex $P287
    .const 'Sub' $P273 = "34_1256191315.43076" 
    capture_lex $P273
    .const 'Sub' $P259 = "33_1256191315.43076" 
    capture_lex $P259
    .const 'Sub' $P225 = "29_1256191315.43076" 
    capture_lex $P225
    .const 'Sub' $P168 = "24_1256191315.43076" 
    capture_lex $P168
    .const 'Sub' $P107 = "19_1256191315.43076" 
    capture_lex $P107
    .const 'Sub' $P49 = "14_1256191315.43076" 
    capture_lex $P49
    .const 'Sub' $P35 = "13_1256191315.43076" 
    capture_lex $P35
    .const 'Sub' $P17 = "12_1256191315.43076" 
    capture_lex $P17
$P15 = get_root_global ["parrot"], "P6metaclass"
    $P15."new_class"("Regex::P6Regex::Actions")
 
        $P16 = new ['ResizablePMCArray'] 
        $P0 = new ['Hash']
        push $P16, $P0
    
    set_global "@MODIFIERS", $P16
.annotate "line", 498
    .const 'Sub' $P1412 = "121_1256191315.43076" 
    capture_lex $P1412
.annotate "line", 4
    .return ($P1412)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("12_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "TOP"  :subid("13_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "nibbler"  :subid("14_1256191315.43076") :method :outer("11_1256191315.43076")
    .param pmc param_52
    .param pmc param_53 :optional
    .param int has_param_53 :opt_flag
.annotate "line", 20
    .const 'Sub' $P98 = "18_1256191315.43076" 
    capture_lex $P98
    .const 'Sub' $P78 = "16_1256191315.43076" 
    capture_lex $P78
    .const 'Sub' $P60 = "15_1256191315.43076" 
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
    .const 'Sub' $P60 = "15_1256191315.43076" 
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
    .const 'Sub' $P98 = "18_1256191315.43076" 
    capture_lex $P98
    $P98()
    goto if_70_end
  if_70:
.annotate "line", 33
    .const 'Sub' $P78 = "16_1256191315.43076" 
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
.sub "_block59"  :anon :subid("15_1256191315.43076") :outer("14_1256191315.43076")
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
.sub "_block97"  :anon :subid("18_1256191315.43076") :outer("14_1256191315.43076")
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
.sub "_block77"  :anon :subid("16_1256191315.43076") :outer("14_1256191315.43076")
.annotate "line", 33
    .const 'Sub' $P88 = "17_1256191315.43076" 
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
    .const 'Sub' $P88 = "17_1256191315.43076" 
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
.sub "_block87"  :anon :subid("17_1256191315.43076") :outer("16_1256191315.43076")
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
.sub "termish"  :subid("19_1256191315.43076") :method :outer("11_1256191315.43076")
    .param pmc param_110
.annotate "line", 45
    .const 'Sub' $P121 = "20_1256191315.43076" 
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
    .const 'Sub' $P121 = "20_1256191315.43076" 
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
.sub "_block120"  :anon :subid("20_1256191315.43076") :outer("19_1256191315.43076")
    .param pmc param_122
.annotate "line", 48
    .const 'Sub' $P150 = "23_1256191315.43076" 
    capture_lex $P150
    .const 'Sub' $P141 = "22_1256191315.43076" 
    capture_lex $P141
    .const 'Sub' $P130 = "21_1256191315.43076" 
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
    .const 'Sub' $P150 = "23_1256191315.43076" 
    capture_lex $P150
    $P160 = $P150()
    set $P132, $P160
.annotate "line", 51
    goto if_133_end
  if_133:
    .const 'Sub' $P141 = "22_1256191315.43076" 
    capture_lex $P141
    $P148 = $P141()
    set $P132, $P148
  if_133_end:
.annotate "line", 50
    set $P125, $P132
    goto if_126_end
  if_126:
    .const 'Sub' $P130 = "21_1256191315.43076" 
    capture_lex $P130
    $P131 = $P130()
    set $P125, $P131
  if_126_end:
.annotate "line", 48
    .return ($P125)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block149"  :anon :subid("23_1256191315.43076") :outer("20_1256191315.43076")
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
.sub "_block140"  :anon :subid("22_1256191315.43076") :outer("20_1256191315.43076")
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
.sub "_block129"  :anon :subid("21_1256191315.43076") :outer("20_1256191315.43076")
.annotate "line", 50
    .return ()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("24_1256191315.43076") :method :outer("11_1256191315.43076")
    .param pmc param_171
.annotate "line", 62
    .const 'Sub' $P218 = "28_1256191315.43076" 
    capture_lex $P218
    .const 'Sub' $P199 = "27_1256191315.43076" 
    capture_lex $P199
    .const 'Sub' $P179 = "25_1256191315.43076" 
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
    .const 'Sub' $P199 = "27_1256191315.43076" 
    capture_lex $P199
    $P199()
  if_194_end:
.annotate "line", 64
    goto if_175_end
  if_175:
    .const 'Sub' $P179 = "25_1256191315.43076" 
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
    .const 'Sub' $P218 = "28_1256191315.43076" 
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
.sub "_block198"  :anon :subid("27_1256191315.43076") :outer("24_1256191315.43076")
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
.sub "_block178"  :anon :subid("25_1256191315.43076") :outer("24_1256191315.43076")
.annotate "line", 64
    .const 'Sub' $P184 = "26_1256191315.43076" 
    capture_lex $P184
.annotate "line", 65
    find_lex $P181, "$past"
    unless_null $P181, vivify_171
    new $P181, "Undef"
  vivify_171:
    isfalse $I182, $P181
    unless $I182, if_180_end
    .const 'Sub' $P184 = "26_1256191315.43076" 
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
.sub "_block183"  :anon :subid("26_1256191315.43076") :outer("25_1256191315.43076")
.annotate "line", 65
    find_lex $P185, "$/"
    unless_null $P185, vivify_172
    new $P185, "Undef"
  vivify_172:
    $P186 = $P185."panic"("Can't quantify zero-width atom")
    .return ($P186)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block217"  :anon :subid("28_1256191315.43076") :outer("24_1256191315.43076")
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
.sub "atom"  :subid("29_1256191315.43076") :method :outer("11_1256191315.43076")
    .param pmc param_228
.annotate "line", 77
    .const 'Sub' $P239 = "31_1256191315.43076" 
    capture_lex $P239
    .const 'Sub' $P234 = "30_1256191315.43076" 
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
    .const 'Sub' $P239 = "31_1256191315.43076" 
    capture_lex $P239
    $P239()
    goto if_230_end
  if_230:
.annotate "line", 79
    .const 'Sub' $P234 = "30_1256191315.43076" 
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
.sub "_block238"  :anon :subid("31_1256191315.43076") :outer("29_1256191315.43076")
.annotate "line", 80
    .const 'Sub' $P251 = "32_1256191315.43076" 
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
    .const 'Sub' $P251 = "32_1256191315.43076" 
    capture_lex $P251
    $P254 = $P251()
    set $P245, $P254
  if_246_end:
.annotate "line", 80
    .return ($P245)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block250"  :anon :subid("32_1256191315.43076") :outer("31_1256191315.43076")
.annotate "line", 82
    find_lex $P252, "$past"
    unless_null $P252, vivify_191
    new $P252, "Undef"
  vivify_191:
    $P253 = $P252."subtype"("ignorecase")
    .return ($P253)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block233"  :anon :subid("30_1256191315.43076") :outer("29_1256191315.43076")
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
.sub "quantifier:sym<*>"  :subid("33_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "quantifier:sym<+>"  :subid("34_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "quantifier:sym<?>"  :subid("35_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "quantifier:sym<**>"  :subid("36_1256191315.43076") :method :outer("11_1256191315.43076")
    .param pmc param_306
.annotate "line", 103
    .const 'Sub' $P320 = "38_1256191315.43076" 
    capture_lex $P320
    .const 'Sub' $P312 = "37_1256191315.43076" 
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
    .const 'Sub' $P320 = "38_1256191315.43076" 
    capture_lex $P320
    $P320()
    goto if_308_end
  if_308:
.annotate "line", 105
    .const 'Sub' $P312 = "37_1256191315.43076" 
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
.sub "_block319"  :anon :subid("38_1256191315.43076") :outer("36_1256191315.43076")
.annotate "line", 109
    .const 'Sub' $P348 = "40_1256191315.43076" 
    capture_lex $P348
    .const 'Sub' $P333 = "39_1256191315.43076" 
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
    .const 'Sub' $P348 = "40_1256191315.43076" 
    capture_lex $P348
    $P355 = $P348()
    set $P340, $P355
  if_341_end:
.annotate "line", 111
    set $P327, $P340
    goto if_328_end
  if_328:
    .const 'Sub' $P333 = "39_1256191315.43076" 
    capture_lex $P333
    $P339 = $P333()
    set $P327, $P339
  if_328_end:
.annotate "line", 109
    .return ($P327)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block347"  :anon :subid("40_1256191315.43076") :outer("38_1256191315.43076")
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
.sub "_block332"  :anon :subid("39_1256191315.43076") :outer("38_1256191315.43076")
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
.sub "_block311"  :anon :subid("37_1256191315.43076") :outer("36_1256191315.43076")
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
.sub "metachar:sym<ws>"  :subid("41_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<[ ]>"  :subid("42_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<( )>"  :subid("43_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<'>"  :subid("44_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<.>"  :subid("45_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<^>"  :subid("46_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<^^>"  :subid("47_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<$>"  :subid("48_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<$$>"  :subid("49_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<:::>"  :subid("50_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<lwb>"  :subid("51_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<rwb>"  :subid("52_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<bs>"  :subid("53_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<mod>"  :subid("54_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<assert>"  :subid("55_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<~>"  :subid("56_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<{*}>"  :subid("57_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "metachar:sym<var>"  :subid("58_1256191315.43076") :method :outer("11_1256191315.43076")
    .param pmc param_584
.annotate "line", 214
    .const 'Sub' $P643 = "63_1256191315.43076" 
    capture_lex $P643
    .const 'Sub' $P600 = "59_1256191315.43076" 
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
    .const 'Sub' $P643 = "63_1256191315.43076" 
    capture_lex $P643
    $P643()
    goto if_596_end
  if_596:
.annotate "line", 217
    .const 'Sub' $P600 = "59_1256191315.43076" 
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
.sub "_block642"  :anon :subid("63_1256191315.43076") :outer("58_1256191315.43076")
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
.sub "_block599"  :anon :subid("59_1256191315.43076") :outer("58_1256191315.43076")
.annotate "line", 217
    .const 'Sub' $P635 = "62_1256191315.43076" 
    capture_lex $P635
    .const 'Sub' $P629 = "61_1256191315.43076" 
    capture_lex $P629
    .const 'Sub' $P617 = "60_1256191315.43076" 
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
    .const 'Sub' $P635 = "62_1256191315.43076" 
    capture_lex $P635
    $P641 = $P635()
    set $P623, $P641
.annotate "line", 222
    goto if_624_end
  if_624:
    .const 'Sub' $P629 = "61_1256191315.43076" 
    capture_lex $P629
    $P633 = $P629()
    set $P623, $P633
  if_624_end:
.annotate "line", 219
    set $P605, $P623
    goto if_606_end
  if_606:
    .const 'Sub' $P617 = "60_1256191315.43076" 
    capture_lex $P617
    $P622 = $P617()
    set $P605, $P622
  if_606_end:
.annotate "line", 217
    .return ($P605)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block634"  :anon :subid("62_1256191315.43076") :outer("59_1256191315.43076")
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
.sub "_block628"  :anon :subid("61_1256191315.43076") :outer("59_1256191315.43076")
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
.sub "_block616"  :anon :subid("60_1256191315.43076") :outer("59_1256191315.43076")
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
.sub "backslash:sym<w>"  :subid("64_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "backslash:sym<b>"  :subid("65_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "backslash:sym<e>"  :subid("66_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "backslash:sym<f>"  :subid("67_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "backslash:sym<h>"  :subid("68_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "backslash:sym<r>"  :subid("69_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "backslash:sym<t>"  :subid("70_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "backslash:sym<v>"  :subid("71_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "backslash:sym<misc>"  :subid("72_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "assertion:sym<?>"  :subid("73_1256191315.43076") :method :outer("11_1256191315.43076")
    .param pmc param_795
.annotate "line", 289
    .const 'Sub' $P808 = "75_1256191315.43076" 
    capture_lex $P808
    .const 'Sub' $P801 = "74_1256191315.43076" 
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
    .const 'Sub' $P808 = "75_1256191315.43076" 
    capture_lex $P808
    $P808()
    goto if_797_end
  if_797:
.annotate "line", 291
    .const 'Sub' $P801 = "74_1256191315.43076" 
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
.sub "_block807"  :anon :subid("75_1256191315.43076") :outer("73_1256191315.43076")
.annotate "line", 295
    new $P809, "Integer"
    assign $P809, 0
    store_lex "$past", $P809
    .return ($P809)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block800"  :anon :subid("74_1256191315.43076") :outer("73_1256191315.43076")
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
.sub "assertion:sym<!>"  :subid("76_1256191315.43076") :method :outer("11_1256191315.43076")
    .param pmc param_817
.annotate "line", 299
    .const 'Sub' $P834 = "78_1256191315.43076" 
    capture_lex $P834
    .const 'Sub' $P823 = "77_1256191315.43076" 
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
    .const 'Sub' $P834 = "78_1256191315.43076" 
    capture_lex $P834
    $P834()
    goto if_819_end
  if_819:
.annotate "line", 301
    .const 'Sub' $P823 = "77_1256191315.43076" 
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
.sub "_block833"  :anon :subid("78_1256191315.43076") :outer("76_1256191315.43076")
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
.sub "_block822"  :anon :subid("77_1256191315.43076") :outer("76_1256191315.43076")
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
.sub "assertion:sym<method>"  :subid("79_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "assertion:sym<name>"  :subid("80_1256191315.43076") :method :outer("11_1256191315.43076")
    .param pmc param_857
.annotate "line", 318
    .const 'Sub' $P876 = "82_1256191315.43076" 
    capture_lex $P876
    .const 'Sub' $P867 = "81_1256191315.43076" 
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
    .const 'Sub' $P876 = "82_1256191315.43076" 
    capture_lex $P876
    $P876()
    goto if_863_end
  if_863:
.annotate "line", 321
    .const 'Sub' $P867 = "81_1256191315.43076" 
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
.sub "_block875"  :anon :subid("82_1256191315.43076") :outer("80_1256191315.43076")
.annotate "line", 325
    .const 'Sub' $P901 = "84_1256191315.43076" 
    capture_lex $P901
    .const 'Sub' $P887 = "83_1256191315.43076" 
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
    .const 'Sub' $P901 = "84_1256191315.43076" 
    capture_lex $P901
    $P919 = $P901()
    set $P896, $P919
  if_897_end:
.annotate "line", 328
    set $P882, $P896
    goto if_883_end
  if_883:
    .const 'Sub' $P887 = "83_1256191315.43076" 
    capture_lex $P887
    $P895 = $P887()
    set $P882, $P895
  if_883_end:
.annotate "line", 325
    .return ($P882)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block900"  :anon :subid("84_1256191315.43076") :outer("82_1256191315.43076")
.annotate "line", 331
    .const 'Sub' $P910 = "85_1256191315.43076" 
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
    .const 'Sub' $P910 = "85_1256191315.43076" 
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
.sub "_block909"  :anon :subid("85_1256191315.43076") :outer("84_1256191315.43076")
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
.sub "_block886"  :anon :subid("83_1256191315.43076") :outer("82_1256191315.43076")
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
.sub "_block866"  :anon :subid("81_1256191315.43076") :outer("80_1256191315.43076")
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
.sub "assertion:sym<[>"  :subid("86_1256191315.43076") :method :outer("11_1256191315.43076")
    .param pmc param_927
.annotate "line", 340
    .const 'Sub' $P960 = "88_1256191315.43076" 
    capture_lex $P960
    .const 'Sub' $P942 = "87_1256191315.43076" 
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
    .const 'Sub' $P942 = "87_1256191315.43076" 
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
    .const 'Sub' $P960 = "88_1256191315.43076" 
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
.sub "_block941"  :anon :subid("87_1256191315.43076") :outer("86_1256191315.43076")
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
.sub "_block959"  :anon :subid("88_1256191315.43076") :outer("86_1256191315.43076")
.annotate "line", 353
    .const 'Sub' $P978 = "90_1256191315.43076" 
    capture_lex $P978
    .const 'Sub' $P970 = "89_1256191315.43076" 
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
    .const 'Sub' $P978 = "90_1256191315.43076" 
    capture_lex $P978
    $P978()
    goto if_966_end
  if_966:
.annotate "line", 355
    .const 'Sub' $P970 = "89_1256191315.43076" 
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
.sub "_block977"  :anon :subid("90_1256191315.43076") :outer("88_1256191315.43076")
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
.sub "_block969"  :anon :subid("89_1256191315.43076") :outer("88_1256191315.43076")
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
.sub "cclass_elem"  :subid("91_1256191315.43076") :method :outer("11_1256191315.43076")
    .param pmc param_996
.annotate "line", 367
    .const 'Sub' $P1013 = "93_1256191315.43076" 
    capture_lex $P1013
    .const 'Sub' $P1003 = "92_1256191315.43076" 
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
    .const 'Sub' $P1013 = "93_1256191315.43076" 
    capture_lex $P1013
    $P1013()
    goto if_999_end
  if_999:
.annotate "line", 370
    .const 'Sub' $P1003 = "92_1256191315.43076" 
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
.sub "_block1012"  :anon :subid("93_1256191315.43076") :outer("91_1256191315.43076")
.annotate "line", 373
    .const 'Sub' $P1020 = "94_1256191315.43076" 
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
    .const 'Sub' $P1020 = "94_1256191315.43076" 
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
.sub "_block1019"  :anon :subid("94_1256191315.43076") :outer("93_1256191315.43076")
    .param pmc param_1021
.annotate "line", 374
    .const 'Sub' $P1039 = "96_1256191315.43076" 
    capture_lex $P1039
    .const 'Sub' $P1027 = "95_1256191315.43076" 
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
    .const 'Sub' $P1039 = "96_1256191315.43076" 
    capture_lex $P1039
    $P1044 = $P1039()
    set $P1022, $P1044
.annotate "line", 375
    goto if_1023_end
  if_1023:
    .const 'Sub' $P1027 = "95_1256191315.43076" 
    capture_lex $P1027
    $P1037 = $P1027()
    set $P1022, $P1037
  if_1023_end:
.annotate "line", 374
    .return ($P1022)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1038"  :anon :subid("96_1256191315.43076") :outer("94_1256191315.43076")
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
.sub "_block1026"  :anon :subid("95_1256191315.43076") :outer("94_1256191315.43076")
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
.sub "_block1002"  :anon :subid("92_1256191315.43076") :outer("91_1256191315.43076")
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
.sub "mod_internal"  :subid("97_1256191315.43076") :method :outer("11_1256191315.43076")
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
.sub "buildsub"  :subid("98_1256191315.43076") :outer("11_1256191315.43076")
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
.sub "capnames"  :subid("99_1256191315.43076") :outer("11_1256191315.43076")
    .param pmc param_1111
    .param pmc param_1112
.annotate "line", 425
    .const 'Sub' $P1347 = "115_1256191315.43076" 
    capture_lex $P1347
    .const 'Sub' $P1283 = "111_1256191315.43076" 
    capture_lex $P1283
    .const 'Sub' $P1236 = "107_1256191315.43076" 
    capture_lex $P1236
    .const 'Sub' $P1188 = "104_1256191315.43076" 
    capture_lex $P1188
    .const 'Sub' $P1121 = "100_1256191315.43076" 
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
    .const 'Sub' $P1347 = "115_1256191315.43076" 
    capture_lex $P1347
    $P1347()
  if_1342_end:
.annotate "line", 428
    goto if_1278_end
  if_1278:
.annotate "line", 463
    .const 'Sub' $P1283 = "111_1256191315.43076" 
    capture_lex $P1283
    $P1283()
  if_1278_end:
.annotate "line", 428
    goto if_1226_end
  if_1226:
.annotate "line", 450
    .const 'Sub' $P1236 = "107_1256191315.43076" 
    capture_lex $P1236
    $P1236()
  if_1226_end:
.annotate "line", 428
    goto if_1183_end
  if_1183:
.annotate "line", 441
    .const 'Sub' $P1188 = "104_1256191315.43076" 
    capture_lex $P1188
    $P1188()
  if_1183_end:
.annotate "line", 428
    goto if_1116_end
  if_1116:
    .const 'Sub' $P1121 = "100_1256191315.43076" 
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
.sub "_block1346"  :anon :subid("115_1256191315.43076") :outer("99_1256191315.43076")
.annotate "line", 480
    .const 'Sub' $P1357 = "116_1256191315.43076" 
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
    .const 'Sub' $P1357 = "116_1256191315.43076" 
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
.sub "_block1356"  :anon :subid("116_1256191315.43076") :outer("115_1256191315.43076")
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
.sub "_block1282"  :anon :subid("111_1256191315.43076") :outer("99_1256191315.43076")
.annotate "line", 463
    .const 'Sub' $P1324 = "114_1256191315.43076" 
    capture_lex $P1324
    .const 'Sub' $P1292 = "112_1256191315.43076" 
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
    .const 'Sub' $P1292 = "112_1256191315.43076" 
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
    .const 'Sub' $P1324 = "114_1256191315.43076" 
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
.sub "_block1291"  :anon :subid("112_1256191315.43076") :outer("111_1256191315.43076")
    .param pmc param_1293
.annotate "line", 470
    .const 'Sub' $P1306 = "113_1256191315.43076" 
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
    .const 'Sub' $P1306 = "113_1256191315.43076" 
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
.sub "_block1305"  :anon :subid("113_1256191315.43076") :outer("112_1256191315.43076")
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
.sub "_block1323"  :anon :subid("114_1256191315.43076") :outer("111_1256191315.43076")
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
.sub "_block1235"  :anon :subid("107_1256191315.43076") :outer("99_1256191315.43076")
.annotate "line", 450
    .const 'Sub' $P1255 = "109_1256191315.43076" 
    capture_lex $P1255
    .const 'Sub' $P1244 = "108_1256191315.43076" 
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
    .const 'Sub' $P1244 = "108_1256191315.43076" 
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
    .const 'Sub' $P1255 = "109_1256191315.43076" 
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
.sub "_block1243"  :anon :subid("108_1256191315.43076") :outer("107_1256191315.43076")
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
.sub "_block1254"  :anon :subid("109_1256191315.43076") :outer("107_1256191315.43076")
    .param pmc param_1256
.annotate "line", 458
    .const 'Sub' $P1269 = "110_1256191315.43076" 
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
    .const 'Sub' $P1269 = "110_1256191315.43076" 
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
.sub "_block1268"  :anon :subid("110_1256191315.43076") :outer("109_1256191315.43076")
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
.sub "_block1187"  :anon :subid("104_1256191315.43076") :outer("99_1256191315.43076")
.annotate "line", 441
    .const 'Sub' $P1195 = "105_1256191315.43076" 
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
    .const 'Sub' $P1195 = "105_1256191315.43076" 
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
.sub "_block1194"  :anon :subid("105_1256191315.43076") :outer("104_1256191315.43076")
    .param pmc param_1196
.annotate "line", 442
    .const 'Sub' $P1205 = "106_1256191315.43076" 
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
    .const 'Sub' $P1205 = "106_1256191315.43076" 
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
.sub "_block1204"  :anon :subid("106_1256191315.43076") :outer("105_1256191315.43076")
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
.sub "_block1120"  :anon :subid("100_1256191315.43076") :outer("99_1256191315.43076")
.annotate "line", 428
    .const 'Sub' $P1129 = "101_1256191315.43076" 
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
    .const 'Sub' $P1129 = "101_1256191315.43076" 
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
.sub "_block1128"  :anon :subid("101_1256191315.43076") :outer("100_1256191315.43076")
    .param pmc param_1130
.annotate "line", 430
    .const 'Sub' $P1175 = "103_1256191315.43076" 
    capture_lex $P1175
    .const 'Sub' $P1139 = "102_1256191315.43076" 
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
    .const 'Sub' $P1139 = "102_1256191315.43076" 
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
    .const 'Sub' $P1175 = "103_1256191315.43076" 
    capture_lex $P1175
    $P1178 = $P1175()
    set $P1166, $P1178
  if_1167_end:
.annotate "line", 430
    .return ($P1166)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1138"  :anon :subid("102_1256191315.43076") :outer("101_1256191315.43076")
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
.sub "_block1174"  :anon :subid("103_1256191315.43076") :outer("101_1256191315.43076")
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
.sub "backmod"  :subid("117_1256191315.43076") :outer("11_1256191315.43076")
    .param pmc param_1374
    .param pmc param_1375
.annotate "line", 491
    .const 'Sub' $P1407 = "120_1256191315.43076" 
    capture_lex $P1407
    .const 'Sub' $P1394 = "119_1256191315.43076" 
    capture_lex $P1394
    .const 'Sub' $P1381 = "118_1256191315.43076" 
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
    .const 'Sub' $P1407 = "120_1256191315.43076" 
    capture_lex $P1407
    $P1407()
  if_1397_end:
.annotate "line", 492
    goto if_1384_end
  if_1384:
.annotate "line", 493
    .const 'Sub' $P1394 = "119_1256191315.43076" 
    capture_lex $P1394
    $P1394()
  if_1384_end:
.annotate "line", 492
    goto if_1376_end
  if_1376:
    .const 'Sub' $P1381 = "118_1256191315.43076" 
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
.sub "_block1406"  :anon :subid("120_1256191315.43076") :outer("117_1256191315.43076")
.annotate "line", 494
    find_lex $P1408, "$ast"
    unless_null $P1408, vivify_503
    new $P1408, "Undef"
  vivify_503:
    $P1409 = $P1408."backtrack"("g")
    .return ($P1409)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1393"  :anon :subid("119_1256191315.43076") :outer("117_1256191315.43076")
.annotate "line", 493
    find_lex $P1395, "$ast"
    unless_null $P1395, vivify_504
    new $P1395, "Undef"
  vivify_504:
    $P1396 = $P1395."backtrack"("f")
    .return ($P1396)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1380"  :anon :subid("118_1256191315.43076") :outer("117_1256191315.43076")
.annotate "line", 492
    find_lex $P1382, "$ast"
    unless_null $P1382, vivify_505
    new $P1382, "Undef"
  vivify_505:
    $P1383 = $P1382."backtrack"("r")
    .return ($P1383)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("121_1256191315.43076") :outer("11_1256191315.43076")
    .param pmc param_1415
    .param pmc param_1416
.annotate "line", 498
    .const 'Sub' $P1421 = "122_1256191315.43076" 
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
    .const 'Sub' $P1421 = "122_1256191315.43076" 
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
.sub "_block1420"  :anon :subid("122_1256191315.43076") :outer("121_1256191315.43076")
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
