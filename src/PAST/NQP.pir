# various NQP-related PAST hacks and experiments can go here

.namespace ['PAST';'Node']

.sub '' :anon :load :init
    .local pmc p6meta, base
    p6meta = new 'P6metaclass'
    base = get_hll_global ['PAST'], 'Node'
    p6meta.'new_class'('PAST::Want', 'parent'=>base)
.end


=head2 PAST::Want

A C<PAST::Want> node selects one of its children based on the
rtype (context) in which it's being evaluated.  The first
child is the default PAST to be evaluated.  The subsequent
children consist of (signature,past) pairs, the signature is
a string of rtypes, and the subsequent past node is the one
to be used if the caller's rtype matches any of the ones
listed in the signature.

Exactly one of the node's children will be selected.  It's
okay for a single PAST node to appear within multiple children,
as only one of the children will be selected.

=cut

=item as_post(PAST::Want)

Select a single past child based on rtype.

=cut

.namespace ['PAST';'Compiler']

.sub 'as_post' :method :multi(_, ['PAST';'Want'])
    .param pmc node
    .param pmc options         :slurpy :named

    .local string rtype
    rtype = options['rtype']

    .local pmc it, cpast, cpost
    it = node.'iterator'()
    cpast = shift it
    unless rtype goto child_done
  child_loop:
    unless it goto child_done
    $S0 = shift it                     # get the signature
    $P0 = shift it                     # get the past to use
    $I0 = index $S0, rtype
    if $I0 < 0 goto child_loop
    cpast = $P0
  child_done:
    cpost = self.'as_post'(cpast, options :flat :named)
    .return (cpost)
.end
    

