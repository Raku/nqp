# Copyright (C) 2009, The Perl Foundation.
# $Id$

=head1 NAME

Regex::Match - Regex Match objects

=head1 DESCRIPTION

This file implements Match objects for the regex engine.

=cut

.loadlib "nqp_group"
.loadlib "nqp_ops"

.namespace ['Regex';'Match']

.sub '' :anon :load :init
    .local pmc type_obj, how, NQPClassHOW
    get_hll_global NQPClassHOW, "NQPClassHOW"
    type_obj = NQPClassHOW."new_type"("Match" :named("name"))
    how = get_how type_obj
    set_hll_global ["Regex"], "Match", type_obj
    set_global "$?CLASS", type_obj

    # Add all methods.
    .const 'Sub' $P10 = 'Regex_Match_meth_CURSOR'
    how.'add_method'(type_obj, 'CURSOR', $P10)

    .const 'Sub' $P11 = 'Regex_Match_meth_from'
    how.'add_method'(type_obj, 'from', $P11)

    .const 'Sub' $P12 = 'Regex_Match_meth_to'
    how.'add_method'(type_obj, 'to', $P12)

    .const 'Sub' $P13 = 'Regex_Match_meth_chars'
    how.'add_method'(type_obj, 'chars', $P13)

    .const 'Sub' $P14 = 'Regex_Match_meth_orig'
    how.'add_method'(type_obj, 'orig', $P14)

    .const 'Sub' $P15 = 'Regex_Match_meth_Str'
    how.'add_method'(type_obj, 'Str', $P15)
    how.'add_parrot_vtable_mapping'(type_obj, 'get_string', $P15)

    .const 'Sub' $P16 = 'Regex_Match_meth_ast'
    how.'add_method'(type_obj, 'ast', $P16)

    .const 'Sub' $P17 = 'Regex_Match_meth_Bool'
    how.'add_method'(type_obj, 'Bool', $P17)
    how.'add_parrot_vtable_mapping'(type_obj, 'get_bool', $P17)

    .const 'Sub' $P18 = 'Regex_Match_meth_Int'
    how.'add_method'(type_obj, 'Int', $P18)
    how.'add_parrot_vtable_mapping'(type_obj, 'get_integer', $P18)

    .const 'Sub' $P19 = 'Regex_Match_meth_Num'
    how.'add_method'(type_obj, 'Num', $P19)
    how.'add_parrot_vtable_mapping'(type_obj, 'get_number', $P19)

    .const 'Sub' $P20 = 'Regex_Match_meth_!make'
    how.'add_method'(type_obj, '!make', $P20)


    # Add attributes.
    .local pmc NQPAttribute, int_type, attr
    NQPAttribute = get_hll_global "NQPAttribute"
    int_type = get_hll_global "int"

    attr = NQPAttribute.'new'('$!from' :named('name'), int_type :named('type'))
    how.'add_attribute'(type_obj, attr)

    attr = NQPAttribute.'new'('$!to' :named('name'), int_type :named('type'))
    how.'add_attribute'(type_obj, attr)

    attr = NQPAttribute.'new'('$!target')
    how.'add_attribute'(type_obj, attr)

    attr = NQPAttribute.'new'('$!cursor')
    how.'add_attribute'(type_obj, attr)

    attr = NQPAttribute.'new'('$!ast')
    how.'add_attribute'(type_obj, attr)

    how.'compose'(type_obj)

    .return ()
.end

=head2 Methods

=over 4

=item CURSOR()

Returns the Cursor associated with this match object.

=cut

.sub 'CURSOR' :method :subid('Regex_Match_meth_CURSOR')
    $P0 = getattribute self, '$!cursor'
    .return ($P0)
.end

=item from()

Returns the offset in the target string of the beginning of the match.

=cut

.sub 'from' :method :subid('Regex_Match_meth_from')
    .local pmc cur_class
    cur_class = get_global '$?CLASS'
    $I0 = repr_get_attr_int self, cur_class, '$!from'
    $P0 = $I0
    .return ($P0)
.end


=item to()

Returns the offset in the target string of the end of the match.

=cut

.sub 'to' :method :subid('Regex_Match_meth_to')
    .local pmc cur_class
    cur_class = get_global '$?CLASS'
    $I0 = repr_get_attr_int self, cur_class, '$!to'
    $P0 = $I0
    .return ($P0)
.end


=item chars()

Returns C<.to() - .from()>

=cut

.sub 'chars' :method :subid('Regex_Match_meth_chars')
    $I0 = self.'to'()
    $I1 = self.'from'()
    $I2 = $I0 - $I1
    if $I2 >= 0 goto done
    .return (0)
  done:
    .return ($I2)
.end


=item orig()

Return the original item that was matched against.

=cut

.sub 'orig' :method :subid('Regex_Match_meth_orig')
    $P0 = getattribute self, '$!target'
    .return ($P0)
.end


=item Str()

Returns the portion of the target corresponding to this match.

=cut

.sub 'Str' :method :subid('Regex_Match_meth_Str') :vtable('get_string')
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

.sub 'ast' :method :subid('Regex_Match_meth_ast')
    .local pmc ast
    ast = getattribute self, '$!ast'
    unless null ast goto have_ast
    # XXX should probably be NQPMu or so
    ast = new ['Undef']
    setattribute self, '$!ast', ast
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

.sub 'Bool' :vtable('get_bool') :method :subid('Regex_Match_meth_Bool')
    .local pmc cur_class
    cur_class = get_global '$?CLASS'
    $I0 = repr_get_attr_int self, cur_class, '$!from'
    $I0 = repr_get_attr_int self, cur_class, '$!to'
    $I2 = isge $I1, $I0
    .return ($I2)
.end


=item get_integer()

Returns the integer value of the matched text.

=cut

.sub 'Int' :vtable('get_integer') :method :subid('Regex_Match_meth_Int')
    $I0 = self.'Str'()
    .return ($I0)
.end


=item get_number()

Returns the numeric value of this match

=cut

.sub 'Num' :vtable('get_number') :method :subid('Regex_Match_meth_Num')
    $N0 = self.'Str'()
    .return ($N0)
.end


=item !make(obj)

Set the "ast object" for the invocant.

=cut

.sub '!make' :method :subid('Regex_Match_meth_!make')
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
