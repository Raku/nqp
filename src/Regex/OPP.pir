# Copyright (C) 2009, Patrick R. Michaud
# $Id$

=head1 NAME

Regex::OPP - Regex operator precedence parser

=head1 DESCRIPTION

See the source in F<Regex/OPP.pm> for the NQP-based code.

=cut

.namespace ['Regex';'OPP']

.sub '' :anon :load :init
    load_bytecode 'P6object.pbc'
    .local pmc p6meta
    p6meta = new 'P6metaclass'
    $P0 = p6meta.'new_class'('Regex::OPP', 'parent'=>'Regex::Cursor')
    .return ()
.end


.sub 'EXPR' :method
    .local pmc termstack, opstack
    termstack = new ['ResizablePMCArray']
    opstack = new ['ResizablePMCArray']
    .local string termish
    termish = 'termish'
    .local pmc cur, here
    cur = self.'cursor_start'()
    here = cur
  TERM_loop:
    here = here.termish()
    termish = 'termish'
    .local pmc herematch, pre, post
    herematch = here.'MATCH'()
    pre = herematch['PRE']
    delete herematch['PRE']
    post = herematch['POST']
    delete herematch['POST']
  prepost_loop:
    unless pre goto pre_done
    unless post goto post_done
    $P0 = post[-1]
    $S0 = $P0['prec']
    $P1 = pre[0]
    $S1 = $P1['prec']
    unless $S0 < $S1 goto prepost_loop_1
    $P0 = pop post
    push opstack, $P0
    goto prepost_loop
  prepost_loop_1:
    unless $S0 > $S1 goto prepost_loop_2
    $P0 = unshift pre
    push opstack, $P0
  prepost_loop_2:
    goto prepost_loop
  pre_done:
    unless post goto prepost_done
    $P0 = pop post
    push opstack, $P0
    goto pre_done
  post_done:
    unless pre goto prepost_done
    $P0 = unshift pre
    push opstack, $P0
    goto post_done
  prepost_done:

    .local pmc ws, infix, infixmatch
    ws = here.'ws'()
    infix = ws.'infixish'()
    unless infix goto TERM_done
    infixmatch = infix.'MATCH'()
    .local string infixprec
    infixprec = infixmatch['prec']
    if infixprec lt preclim goto TERM_done
    here = infix.'ws'()
  reduce_loop:
    $P0 = opstack[-1]
    $P0 = $P0['O']
    .local string topprec
    topprec = $P0['prec']
    unless $S0 > inprec goto reduce_loop_done
    'reduce'(termstack, opstack)
    goto reduce_loop
  reduce_loop_done:
    unless topprec eq inprec goto reduce_done
    .local string assoc
    assoc = infixmatch['assoc']
    if assoc ne 'left' goto reduce_done
    'reduce'(termstack, opstack)
  reduce_done:
    $S0 = infixmatch['nextterm']
    unless $S0 goto have_termish
    termish = $S0
    push opstack, infixmatch
    goto TERM_loop

  opstack_reduce:
    unless opstack goto opstack_done
    'reduce'(termstack, opstack)
    goto opstack_reduce
  opstack_done:
    .local pmc exprmatch
    exprmatch = pop termstack
    cur.'!match_bind'(exprmatch, 0)
    $I0 = exprmatch.'to'()
    cur.'!matchify'('EXPR', 'pos'=>$I0)
    .return (cur)
.end

.sub 'reduce' :anon
    .param pmc termstack
    .param pmc opstack

    .local pmc op
    op = pop opstack
    .local string assoc
    assoc = op['assoc']
    if assoc goto have_assoc
    assoc = 'unary'
  have_assoc:

    if assoc eq 'unary' goto reduce_unary

  reduce_binary:
    .local pmc left, right
    right = pop termstack
    left = pop termstack
    unshift op, right
    unshift op, left
    $P0 = getattribute left, '$!from'
    setattribute op, '$!from', $P0
    $P0 = getattribute right, '$!to'
    setattribute op, '$!to', $P0
    op.'REDUCE'('INFIX')
    goto reduce_done

  reduce_unary:
    .local pmc arg
    arg = pop termstack
    unshift op, arg
    $P0 = getattribute arg, '$!from'
    $P1 = getattribute op, '$!from'
    unless $P0 < $P1 goto reduce_prefix
  reduce_postfix:
    setattribute op, '$!from', $P0
    op.'REDUCE'('postfix')
    goto reduce_done
  reduce_prefix:
    $P0 = getattribute arg, '$!to'
    setattribute op, '$!to', $P0
    op.'REDUCE'('prefix')
    goto reduce_done

  reduce_done:
    push termstack, op
    delete op['PRE']
    delete op['POST']
.end


.sub 'noun' :method
    .tailcall self.'!protoregex'('noun')
.end

.sub 'term' :method
    .tailcall self.'!protoregex'('term')
.end

.sub 'circumfix' :method
    .tailcall self.'!protoregex'('circumfix')
.end

.sub 'prefix' :method
    .tailcall self.'!protoregex'('prefix')
.end

.sub 'postfix' :method
    .tailcall self.'!protoregex'('postfix')
.end

.sub 'postcircumfix' :method
    .tailcall self.'!protoregex'('postcircumfix')
.end

.sub 'infix' :method
    .tailcall self.'!protoregex'('infix')
.end

.sub 'termish' :method
    .local pmc cur
    cur = self.'!cursor_start'()
    cur.'match_arrays'('PRE', 'POST')
  pre_loop:
    $P0 = cur.'!subrule'('PRE', 'PRE')
    if $P0 goto pre_loop
  noun:
    $P0 = cur.'!subrule'('noun', 'noun')
    unless $P0 goto done
  post_loop:
    $P0 = cur.'!subrule'('POST', 'POST')
    if $P0 goto post_loop
    cur.'!matchify'('termish')
  done:
    .return (cur)
.end

.sub 'PRE' :method
    .local pmc cur
    cur = self.'!cursor_start'()
    $P0 = cur.'!subrule'('prefix', 'prefix')
    unless $P0 goto done
    cur.'!matchify'('PRE')
  done:
    .return (cur)
.end

.sub 'POST' :method
    .local pmc cur
    cur = self.'!cursor_start'()
    $P0 = cur.'!subrule'('postfix', 'postfix')
    if $P0 goto pass
    $P0 = cur.'!subrule'('postcircumfix', 'postcircumfix')
    unless $P0 goto done
  pass:
    cur.'!matchify'('POST')
  done:
    .return (cur)
.end

.sub 'noun:sym<term>' :method
    .local pmc cur
    cur = self.'!cursor_start'()
    $P0 = cur.'!subrule'('term', 'term')
    unless $P0 goto done
    cur.'!matchify'('noun:sym<term>')
  done:
    .return (cur)
.end

.sub 'noun:sym<circumfix>' :method
    .local pmc cur
    cur = self.'!cursor_start'()
    $P0 = cur.'!subrule'('circumfix', 'circumfix')
    unless $P0 goto done
    cur.'!matchify'('noun:sym<circumfix>')
  done:
    .return (cur)
.end

=head1 AUTHORS

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
