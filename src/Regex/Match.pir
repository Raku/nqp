# Copyright (C) 2009-2011, The Perl Foundation.
# $Id$

=head1 NAME

Regex::Match - Regex Match objects

=head1 DESCRIPTION

This file implements Match objects for the regex engine.

=cut

.loadlib "nqp_group"
.loadlib "nqp_ops"

.namespace ['Regex';'Match']

.sub '' :anon :load :init :outer('Regex_Outer') :subid('Match_Load')
    # Get Regex package we'll install into.
    .local pmc GLOBALish, GLOBALishWHO, Regex, RegexWHO
    GLOBALish = find_lex "GLOBALish"
    GLOBALishWHO = get_who GLOBALish
    Regex = GLOBALishWHO["Regex"]
    RegexWHO = get_who Regex

    # Build meta-object and store it in the namespace.
    .local pmc type_obj, how, NQPClassHOW
    $P0 = find_lex "EXPORTHOW"
    $P0 = get_who $P0
    NQPClassHOW = $P0["class"]
    type_obj = NQPClassHOW."new_type"("Match" :named("name"))
    RegexWHO["Match"] = type_obj
    how = get_how type_obj
    
    # Add to serialization context.
    $P0 = nqp_get_sc "__REGEX_CORE_SC__"
    nqp_set_sc_object "__REGEX_CORE_SC__", 1, type_obj
    nqp_set_sc_for_object type_obj, $P0
    
    # XXXNS Old namespace handling installation, during migration to new.
    set_hll_global ["Regex"], "Match", type_obj

    # Add capture as parent.
    .local pmc capture
    capture = find_lex "NQPCapture"
    how.'add_parent'(type_obj, capture)

    # Add all methods.
    .const 'Sub' $P10 = 'Regex_Match_meth_CURSOR'
    how.'add_method'(type_obj, 'CURSOR', $P10)
    'add_code_to_sc'($P10)

    .const 'Sub' $P11 = 'Regex_Match_meth_from'
    how.'add_method'(type_obj, 'from', $P11)
    'add_code_to_sc'($P11)

    .const 'Sub' $P12 = 'Regex_Match_meth_to'
    how.'add_method'(type_obj, 'to', $P12)
    'add_code_to_sc'($P12)

    .const 'Sub' $P13 = 'Regex_Match_meth_chars'
    how.'add_method'(type_obj, 'chars', $P13)
    'add_code_to_sc'($P13)

    .const 'Sub' $P14 = 'Regex_Match_meth_orig'
    how.'add_method'(type_obj, 'orig', $P14)
    'add_code_to_sc'($P14)

    .const 'Sub' $P15 = 'Regex_Match_meth_Str'
    how.'add_method'(type_obj, 'Str', $P15)
    how.'add_parrot_vtable_mapping'(type_obj, 'get_string', $P15)
    'add_code_to_sc'($P15)

    .const 'Sub' $P16 = 'Regex_Match_meth_ast'
    how.'add_method'(type_obj, 'ast', $P16)
    'add_code_to_sc'($P16)

    .const 'Sub' $P17 = 'Regex_Match_meth_Bool'
    how.'add_method'(type_obj, 'Bool', $P17)
    how.'add_parrot_vtable_mapping'(type_obj, 'get_bool', $P17)
    'add_code_to_sc'($P17)

    .const 'Sub' $P18 = 'Regex_Match_meth_Int'
    how.'add_method'(type_obj, 'Int', $P18)
    how.'add_parrot_vtable_mapping'(type_obj, 'get_integer', $P18)
    'add_code_to_sc'($P18)

    .const 'Sub' $P19 = 'Regex_Match_meth_Num'
    how.'add_method'(type_obj, 'Num', $P19)
    how.'add_parrot_vtable_mapping'(type_obj, 'get_number', $P19)
    'add_code_to_sc'($P19)

    .const 'Sub' $P20 = 'Regex_Match_meth_!make'
    how.'add_method'(type_obj, '!make', $P20)
    'add_code_to_sc'($P20)

    .const 'Sub' $P21 = 'Regex_Match_meth___dump'
    how.'add_method'(type_obj, '__dump', $P21)
    'add_code_to_sc'($P21)

    # Add attributes.
    .local pmc NQPAttribute, int_type, attr
    $P0 = find_lex "EXPORTHOW"
    $P0 = get_who $P0
    NQPAttribute = $P0["class-attr"]
    int_type = find_lex "int"

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

    .const 'Sub' $P0 = 'Regex_Match_Body'
    $P0(type_obj)
    
    .return ()
.end

.sub '' :subid('Regex_Match_Body') :outer('Regex_Outer')
    .param pmc type_obj
    .lex '$?CLASS', type_obj
    .const 'Sub' $P1 = 'Regex_Match_meth_CURSOR'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Match_meth_from'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Match_meth_to'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Match_meth_chars'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Match_meth_orig'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Match_meth_Str'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Match_meth_ast'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Match_meth_Bool'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Match_meth_Int'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Match_meth_Num'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Match_meth_!make'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Match_meth___dump'
    capture_lex $P1
.end

=head2 Methods

=over 4

=item CURSOR()

Returns the Cursor associated with this match object.

=cut

.sub 'CURSOR' :method :subid('Regex_Match_meth_CURSOR') :outer('Regex_Match_Body')
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
    $P0 = getattribute self, cur_class, '$!cursor'
    .return ($P0)
.end

=item from()

Returns the offset in the target string of the beginning of the match.

=cut

.sub 'from' :method :subid('Regex_Match_meth_from') :outer('Regex_Match_Body')
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
    $I0 = repr_get_attr_int self, cur_class, '$!from'
    .return ($I0)
.end


=item to()

Returns the offset in the target string of the end of the match.

=cut

.sub 'to' :method :subid('Regex_Match_meth_to') :outer('Regex_Match_Body')
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
    $I0 = repr_get_attr_int self, cur_class, '$!to'
    .return ($I0)
.end


=item chars()

Returns C<.to() - .from()>

=cut

.sub 'chars' :method :subid('Regex_Match_meth_chars') :outer('Regex_Match_Body')
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

.sub 'orig' :method :subid('Regex_Match_meth_orig') :outer('Regex_Match_Body')
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
    $P0 = getattribute self, cur_class, '$!target'
    .return ($P0)
.end


=item Str()

Returns the portion of the target corresponding to this match.

=cut

.sub 'Str' :method :subid('Regex_Match_meth_Str') :vtable('get_string') :outer('Regex_Match_Body')
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

.sub 'ast' :method :subid('Regex_Match_meth_ast') :outer('Regex_Match_Body')
    .local pmc cur_class, ast
    cur_class = find_lex '$?CLASS'
    ast = getattribute self, cur_class, '$!ast'
    unless null ast goto have_ast
    # XXX should probably be NQPMu or so
    ast = new ['Undef']
    setattribute self, cur_class, '$!ast', ast
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

.sub 'Bool' :method :subid('Regex_Match_meth_Bool') :outer('Regex_Match_Body')
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
    $I0 = repr_get_attr_int self, cur_class, '$!from'
    $I1 = repr_get_attr_int self, cur_class, '$!to'
    $I2 = isge $I1, $I0
    .return ($I2)
.end


=item get_integer()

Returns the integer value of the matched text.

=cut

.sub 'Int' :method :subid('Regex_Match_meth_Int') :outer('Regex_Match_Body')
    $I0 = self.'Str'()
    .return ($I0)
.end


=item get_number()

Returns the numeric value of this match

=cut

.sub 'Num' :method :subid('Regex_Match_meth_Num') :outer('Regex_Match_Body')
    $N0 = self.'Str'()
    .return ($N0)
.end


=item !make(obj)

Set the "ast object" for the invocant.

=cut

.sub '!make' :method :subid('Regex_Match_meth_!make') :outer('Regex_Match_Body')
    .param pmc obj
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
    setattribute self, cur_class, '$!ast', obj
    .return (obj)
.end


=item __dump(dumper, label)

Dump the Match object for Data::Dumper

=cut

.sub '__dump' :method :subid('Regex_Match_meth___dump') :outer('Regex_Match_Body')
    .param pmc dumper
    .param pmc label
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'

    .local string subindent, indent
    (subindent, indent) = dumper.'newIndent'()
    $S0 = self.'Str'()
    $S0 = escape $S0
    print "\""
    print $S0
    print "\" {\n"
    print subindent
    print '$!from => '
    $I0 = repr_get_attr_int self, cur_class, '$!from'
    say $I0
    dumper.'dump'(label, $I0)
    print ",\n"
    print subindent
    print '$!to => '
    $I0 = repr_get_attr_int self, cur_class, '$!to'
    dumper.'dump'(label, $I0)
    print ",\n"
    print subindent
    print '@!list => '
    $P0 = self.'list'()
    dumper.'dump'(label, $P0)
    print ",\n"
    print subindent
    print '%!hash => '
    $P0 = self.'hash'()
    dumper.'dump'(label, $P0)
    print "\n"
    print indent
    print "}"
    dumper.'deleteIndent'()
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
