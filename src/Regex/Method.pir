# Copyright (C) 2009, The Perl Foundation.
# $Id$

=head1 NAME

Regex::Regex, Regex::Method - Regex subs

=head1 DESCRIPTION

This file implements the Regex::Method and Regex::Regex types, used as 
containers for Regex subs that need .ACCEPTS and other regex attributes.

=cut

.namespace ['Regex';'Method']

.sub '' :anon :load :init
    load_bytecode 'P6object.pbc'
    .local pmc p6meta, mproto, rproto
    p6meta = new 'P6metaclass'
    mproto = p6meta.'new_class'('Regex::Method', 'parent'=>'parrot;Sub')
    rproto = p6meta.'new_class'('Regex::Regex', 'parent'=>mproto)
.end

=head2 Methods

=over 4

=item new(sub)

Create a new Regex::Regex object from C<sub>.

=cut

.sub 'new' :method
    .param pmc parrotsub
    $P0 = self.'WHO'()
    $P0 = new $P0
    assign $P0, parrotsub
    .return ($P0)
.end


=item ACCEPTS(target)

Perform a match against target, return the result.

=cut

.sub 'ACCEPTS' :method
    .param pmc target

    .local pmc curproto, match
    curproto = get_hll_global ['Regex'], 'Cursor'
    match = curproto.'parse'(target, 'rule'=>self)
    .return (match)
.end

.namespace ['Regex';'Regex']

.sub 'ACCEPTS' :method
    .param pmc target

    .local pmc curproto, match
    curproto = get_hll_global ['Regex'], 'Cursor2'
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
