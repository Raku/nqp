# Copyright (C) 2009, The Perl Foundation.
# $Id$

=head1 NAME

Regex::Regex, Regex::Method - Regex subs

=head1 DESCRIPTION

This file implements the Regex::Method and Regex::Regex types, used as 
containers for Regex subs that need .ACCEPTS and other regex attributes.

=cut

.namespace ['Regex';'Method']

.sub '' :anon :load :init :outer('Regex_Outer') :subid('Method_Load')
    # Get Regex package we'll install into.
    .local pmc GLOBALish, GLOBALishWHO, Regex, RegexWHO
    GLOBALish = find_lex "GLOBALish"
    GLOBALishWHO = get_who GLOBALish
    Regex = GLOBALishWHO["Regex"]
    RegexWHO = get_who Regex

    # Build Regex::Method meta-object and store it in the namespace.
    .local pmc method_type_obj, method_how, NQPClassHOW
    get_hll_global NQPClassHOW, "NQPClassHOW"
    method_type_obj = NQPClassHOW."new_type"("Method" :named("name"))
    RegexWHO["Method"] = method_type_obj
    set_global "$?CLASS", method_type_obj
    method_how = get_how method_type_obj
    
    # XXXNS Old namespace handling installation, during migration to new.
    set_hll_global ["Regex"], "Method", method_type_obj
    
    # Set default parent.
    .local pmc def_parent
    def_parent = find_lex "NQPMu"
    method_how.'set_default_parent'(method_type_obj, def_parent)
    
    # Add attribute.
    .local pmc NQPAttribute, attr
    NQPAttribute = get_hll_global "NQPAttribute"
    attr = NQPAttribute.'new'('$!code' :named('name'))
    method_how.'add_attribute'(method_type_obj, attr)
    
    # Add methods.
    .const 'Sub' $P1 = 'Regex_Method_new'
    method_how.'add_method'(method_type_obj, 'new', $P1)
    .const 'Sub' $P2 = 'Regex_Method_ACCEPTS'
    method_how.'add_method'(method_type_obj, 'ACCEPTS', $P2)
    .const 'Sub' $P2 = 'Regex_Method_Str'
    method_how.'add_method'(method_type_obj, 'Str', $P2)
    method_how.'add_parrot_vtable_mapping'(method_type_obj, 'get_string', $P2)
    .const 'Sub' $P3 = 'Regex_Method_invoke'
    method_how.'add_parrot_vtable_mapping'(method_type_obj, 'invoke', $P3)
    
    # Compose.
    method_how."compose"(method_type_obj)

    # Build Regex::Regex meta-object and store it in the namespace.
    .local pmc regex_type_obj, regex_how, NQPClassHOW
    regex_type_obj = NQPClassHOW."new_type"("Regex" :named("name"))
    RegexWHO["Regex"] = regex_type_obj
    regex_how = get_how regex_type_obj
    
    # XXXNS Old namespace handling installation, during migration to new.
    set_hll_global ["Regex"], "Regex", regex_type_obj
    
    # Add parent.
    regex_how."add_parent"(regex_type_obj, method_type_obj)
    
    # Add methods.
    .const 'Sub' $P4 = 'Regex_Regex_ACCEPTS'
    regex_how.'add_method'(regex_type_obj, 'ACCEPTS', $P4)
    
    # Compose.
    regex_how."compose"(regex_type_obj)
.end

=head2 Methods

=over 4

=item new(sub)

Create a new Regex::Regex object from C<sub>.

=cut

.sub 'new' :method :subid('Regex_Method_new')
    .param pmc code
    $P0 = self.'bless'('code'=>code)
    .return ($P0)
.end

=item (vtable invoke override)

=cut

.sub '' :method :subid('Regex_Method_invoke')
    .param pmc pos_args   :slurpy
    .param pmc named_args :slurpy :named
    .local pmc cur_class, code
    cur_class = get_global '$?CLASS'
    code = getattribute self, cur_class, '$!code'
    $P0 = code(pos_args :flat, named_args :flat :named)
    .return ($P0)
.end

=item (vtable invoke override)

=cut

.sub '' :method :subid('Regex_Method_Str')
    .local pmc cur_class, code
    cur_class = get_global '$?CLASS'
    code = getattribute self, cur_class, '$!code'
    $S0 = code
    .return ($S0)
.end

=item ACCEPTS(target)

Perform a match against target, return the result.

=cut

.sub 'ACCEPTS' :method :subid('Regex_Method_ACCEPTS')
    .param pmc target

    .local pmc curproto, match
    curproto = get_hll_global ['Regex'], 'Cursor'
    match = curproto.'parse'(target, 'rule'=>self)
    .return (match)
.end

.namespace ['Regex';'Regex']

.sub 'ACCEPTS' :method :subid('Regex_Regex_ACCEPTS')
    .param pmc target

    .local pmc curproto, match
    curproto = get_hll_global ['Regex'], 'Cursor'
    match = curproto.'parse'(target, 'rule'=>self, 'c'=>0)
    .return (match)
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
