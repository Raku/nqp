# Copyright (C) 2009, Patrick R. Michaud
# $Id$

=head1 NAME

Regex::P6Regex - Parser/compiler for Perl 6 regexes

=head1 DESCRIPTION

=cut

.namespace ['Regex';'P6Regex']

.include 'cclass.pasm'

.sub '' :anon :load :init
    load_bytecode 'P6object.pbc'
    .local pmc p6meta
    p6meta = new 'P6metaclass'
    $P0 = p6meta.'new_class'('Regex::P6Regex', 'parent'=>'Regex::Cursor')
    .return ()
.end

=head2 Methods

=over 4

=item termish

    token termish {
        <noun=quantified_atom>+
    }

=cut

.sub 'termish' :method
    .param pmc peek            :named('peek') :optional

    if null peek goto peek_done
    .return ()
  peek_done:

    .local pmc cur, noun
    .local int pos
    cur = self.'!cursor_start'()
    cur.'!match_arrays'('noun')
    noun = cur.'!subrule'('quantified_atom', 'noun')
    unless noun goto fail
  noun_quant_1:
    noun = cur.'!subrule'('quantified_atom', 'noun')
    if noun goto noun_quant_1
    cur.'!matchify'('termish')
  fail:
    .return (cur)
.end
   

=item quantified_atom

    token quantified_atom {
        <atom>
        <quantifier>?
    }

=cut

.sub 'quantified_atom' :method
    .param pmc peek            :named('peek') :optional

    if null peek goto peek_done
    .return ()
  peek_done:

    .local pmc cur, atom, quantifier
    .local int pos
    cur = self.'!cursor_start'()
    cur.'!match_arrays'('quantifier')
    atom = cur.'!subrule'('atom', 'atom')
    unless atom goto fail
    quantifier = cur.'!subrule'('quantifier', 'quantifier')
  done:
    cur.'!matchify'('quantified_atom')
  fail:
    .return (cur)
.end
    

=item atom

    token atom {
        :dba('regex atom')
        [
        | \w [\w+! <?before \w>]
        | <metachar> ::
        ]
    }

=cut

.sub 'atom' :method
    .param pmc peek            :named('peek') :optional

    if null peek goto peek_done
    .return ()
  peek_done:

    .local pmc cur
    .local string target
    .local int pos, eos
    (cur, pos, target) = self.'!cursor_start'()
    eos = length target

    # \w [\w+! <?before \w>]
    .local int eow, len
    eow = find_not_cclass .CCLASS_WORD, target, pos, eos
    if eow == pos goto metachar
    .local int len
    len = eow - pos
    if len == 1 goto word_done
    dec eow
  word_done:
    cur.'!matchify'('atom', 'pos'=>eow)
    .return (cur)

  metachar:
    .return (cur)
.end


=item quantifier

    proto token quantifier { ... }
    token quantifier:sym<*> { <sym> <quantmod> }
    token quantifier:sym<+> { <sym> <quantmod> }
    token quantifier:sym<?> { <sym> <quantmod> }

=cut

.sub 'quantifier' :method
    .tailcall self.'!protoregex'('quantifier')
.end

.sub 'quantifier:sym<*>' :method
    .param pmc peek            :named('peek') :optional
    
    if null peek goto peek_done
    .return ('*')
  peek_done:

    .local pmc cur, quantmod
    .local string target
    .local int pos
    (cur, pos, target) = self.'!cursor_start'()
    $I0 = cur.'!literal'('*')
    unless $I0 goto fail
    cur.'!match_bind'('*', 'sym')
    quantmod = cur.'!subrule'('quantmod', 'quantmod')
    unless quantmod goto fail
  done:
    cur.'!matchify'()
  fail:
    .return (cur)
.end


=item quantmod

    token quantmod { ':'? [ '?' | '!' | '+' ]? }

=cut

.sub 'quantmod' :method
    .local pmc cur
    cur = self.'!cursor_start'()
    cur.'!literal'(':')
    $I0 = cur.'!literal'('?')
    if $I0 goto done
    $I0 = cur.'!literal'('!')
    if $I0 goto done
    $I0 = cur.'!literal'('+')
  done:
    cur.'!matchify'()
    .return (cur)
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
