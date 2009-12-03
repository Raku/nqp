# Copyright (C) 2009, Patrick R. Michaud
# $Id$

=head1 NAME

Regex::Regex - Regex subs

=head1 DESCRIPTION

This file implements the Regex::Regex class, used as a container
for Regex subs.

=cut

.namespace ['Regex';'Regex']

.sub '' :anon :load :init
    load_bytecode 'P6object.pbc'
    .local pmc p6meta
    p6meta = new 'P6metaclass'
    $P0 = p6meta.'new_class'('Regex::Regex', 'parent'=>'parrot;Sub')
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
