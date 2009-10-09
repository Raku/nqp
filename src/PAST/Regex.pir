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


.sub 'subtype' :method
    .param pmc value           :optional
    .param int has_value       :opt_flag
    .tailcall self.'attr'('subtype', value, has_value)
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
