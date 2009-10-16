=item !protoregex(name)

Perform a match for protoregex C<name>.

=cut

.sub '!protoregex' :method
    .param string name

    .local pmc generation
    generation = get_global '$!generation'

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

    .local pmc tokrx, toklen
    $S0 = concat name, '.tokrx'
    tokrx = prototable[$S0]
    $S0 = concat name, '.toklen'
    toklen = prototable[$S0]
    unless null tokrx goto have_tokrx
    (tokrx, toklen) = self.'!protoregex_gen_tokrx'(prototable, name)
  have_tokrx:

    .local pmc target
    .local int pos
    target = getattribute self, '$!target'
    $P1 = getattribute self, '$!pos'
    pos = $P1

    # Create a hash to keep track of the methods we've already called,
    # so that we don't end up calling it twice.  
    .local pmc mcalled
    mcalled = new ['Hash']

    .local string token
    $S0 = substr target, pos, 1
    $I0 = toklen[$S0]
    token = substr target, pos, $I0


  token_loop:
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
    mcalled[rxaddr] = result
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
    mcalled[rxaddr] = result
    if result goto done
    goto cand_loop
  cand_done:
  token_next:
    unless token goto fail
    chopn token, 1
    goto token_loop

  fail:
    .tailcall self.'!cursor_start'()
  done:
    .return (result)
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
    (tokens :slurpy) = self.rx('peek'=>prototable)
    if tokens goto have_tokens
    push tokens, ''
  have_tokens:

    # Now loop through all of the tokens for the method, updating
    # the longest initial key and adding it to the tokrx hash.
    # We automatically promote entries in tokrx to arrays when
    # there's more than one method candidate for a given token.
  tokens_loop:
    unless tokens goto tokens_done
    .local string tkey, tfirst
    tkey = shift tokens
    tfirst = substr tkey, 0, 1
    $I0 = length tkey
    $I1 = toklen[tfirst]
    if $I0 <= $I1 goto toklen_done
    toklen[tfirst] = $I0
  toklen_done:
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

    # It's built!  Now store the tokrx and toklen hashes in the
    # prototable and return them to the caller.
    $S0 = concat name, '.tokrx'
    prototable[$S0] = tokrx
    $S0 = concat name, '.toklen'
    prototable[$S0] = toklen
    .return (tokrx, toklen)
.end
