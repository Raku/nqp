# Copyright (C) 2009, Patrick R. Michaud
# $Id$

=head1 NAME

Regex::Cursor - Regex Cursor nodes

=head1 DESCRIPTION

This file implements the Regex::Cursor class, used for managing regular
expression control flow.  Regex::Cursor is also a base class for
grammars.

=cut

.namespace ['Regex';'Cursor']

.sub '' :anon :load :init
    load_bytecode 'P6object.pbc'
    .local pmc p6meta
    p6meta = new 'P6metaclass'
    $P0 = p6meta.'new_class'('Regex::Cursor', 'attr'=>'$!target $!from $!pos $!match $!action @!bstack @!mstack')
    $P0 = box 0
    set_global '$!generation', $P0
    .return ()
.end

=head2 Methods

=over 4

=item MATCH()

Return this cursor's current Match object.  If it doesn't have one,
create one.

=cut

.sub 'MATCH' :method
    .local pmc match
    match = getattribute self, '$!match'
    unless null match goto have_match

    match = new ['Regex';'Match']
    setattribute self, '$!match', match
    $P0 = getattribute self, '$!target'
    setattribute match, '$!target', $P0
    $P0 = getattribute self, '$!from'
    setattribute match, '$!from', $P0
    $P0 = box -1
    setattribute match, '$!to', $P0

  have_match:
    .return (match)
.end


=item parse(target [, regex])

Parse C<target> in the current grammar starting with C<regex>.
If C<regex> is omitted, then use the C<TOP> rule for the grammar.

=cut

.sub 'parse' :method
    .param pmc target
    .param pmc regex

    .local pmc cur
    cur = self.'!cursor_init'(target)
    cur = cur.regex()
    .return (cur)
.end


=item pos()

Return the cursor's current position.

=cut

.sub 'pos' :method
    $P0 = getattribute self, '$!pos'
    .return ($P0)
.end

=head2 Private methods

=over 4

=item !cursor_init(target)

Create a new cursor for matching C<target>.

=cut

.sub '!cursor_init' :method
    .param string target

    .local pmc parrotclass, cur
    $P0 = self.'HOW'()
    parrotclass = getattribute $P0, 'parrotclass'
    cur = new parrotclass

    $P0 = new ['CodeString']
    $P0 = target
    setattribute cur, '$!target', $P0

    $P0 = box 0
    setattribute cur, '$!from', $P0
    $P0 = box 0 
    setattribute cur, '$!pos', $P0
    .return (cur)
.end

=item !cursor_start()

Create and initialize a new cursor from C<self>.

=cut

.sub '!cursor_start' :method
    .local pmc parrotclass, cur
    $P0 = self.'HOW'()
    parrotclass = getattribute $P0, 'parrotclass'
    cur = new parrotclass

    .local pmc from, pos, target, action
    from = getattribute self, '$!pos'
    from = clone from
    setattribute cur, '$!from', from
    pos = clone from
    setattribute cur, '$!pos', pos

    target = getattribute self, '$!target'
    setattribute cur, '$!target', target
    action = getattribute self, '$!action'
    setattribute cur, '$!action', action

    .return (cur, from, target)
.end


=item !cursor_pos(pos)

Set the cursor's position to C<pos>.

=cut

.sub '!cursor_pos' :method
    .param pmc pos
    setattribute self, '$!pos', pos
.end


=item !mark_push(rep, pos, mark)

Push a new backtracking point onto the cursor with the given
C<rep>, C<pos>, and backtracking C<mark>.  (The C<mark> is typically
the address of a label to branch to when backtracking occurs.)

=cut

.sub '!mark_push' :method
    .param int rep
    .param int pos
    .param int mark

    .local pmc bstack, mstack
    bstack = getattribute self, '@!bstack'
    mstack = getattribute self, '@!mstack'

    push bstack, mark
    push bstack, pos
    push bstack, rep
    $I0 = -1
    push bstack, $I0
.end


=item !mark_fail([mark])

Remove the most recent C<mark> and backtrack the cursor to the
point given by that mark.  If no C<mark> is provided, then
backtracks the most recent mark.  Returns the backtracked
values of repetition count, cursor position, and mark (address).

=cut

.sub '!mark_fail' :method
    .param int mark            :optional
    .param int has_mark        :opt_flag

    .local pmc bstack, mstack
    bstack = getattribute self, '@!bstack'
    mstack = getattribute self, '@!mstack'

    # get the frame associated with the mark
    .local int bptr, rep, pos, mark, mptr
    bptr = self.'!mark_bptr'(mark, has_mark)

    # retrieve the mark, pos, rep, and match index from the frame
    mark = bstack[bptr]
    $I0  = bptr + 1
    pos  = bstack[$I0]
    inc $I0
    rep  = bstack[$I0]
    inc $I0
    mptr = bstack[$I0]

    # release the backtracked stack elements
    assign bstack, bptr

    # return mark values
    .return (rep, pos, mark)
.end


=item !mark_commit(mark)

Like C<!mark_fail> above this backtracks the cursor to C<mark>
(releasing any intermediate marks), but preserves the current 
match state.

=cut

.sub '!mark_commit' :method
    .param int mark

    # backtrack
    .local int rep, pos, mark
    (rep, pos, mark, $P0) = self.'!mark_fail'(mark)

    .return (rep, pos, mark)
.end


=item !matchify([name] [, 'pos'=>pos])

Generate a successful match at pos.

=cut

.sub '!matchify' :method
    .param string name         :optional
    .param int has_name        :opt_flag
    .param pmc pos             :named('pos') :optional
    .param int has_pos         :opt_flag

    unless has_pos goto pos_0
    setattribute self, '$!pos', pos
    goto pos_done
  pos_0:
    pos = getattribute self, '$!pos'
  pos_done:

    .local pmc match
    match = self.'MATCH'()
    setattribute match, '$!to', pos

    .local pmc action
    unless has_name goto action_done
    action = getattribute self, '$!action'
    if null action goto action_done
    $P0 = find_method action, name
    if null $P0 goto action_done
    action.$P0(match)
  action_done:

    .return (match)
.end


=item !match_arrays(names :slurpy)

Bind submatches C<names> of the current Match object to arrays.

=cut

.sub '!match_arrays' :method
    .param pmc names           :slurpy

    .local pmc match, names_it
    match = self.'MATCH'()
    names_it = iter names
  names_loop:
    unless names_it goto names_done
    $P0 = shift names_it
    $P1 = new ['ResizablePMCArray']
    match[$P0] = $P1
    goto names_loop
  names_done:
.end


=item !match_bind(bindval, names :slurpy)

Bind C<bindval>'s match object as submatches of the current cursor
under C<names>.

=cut

.sub '!match_bind' :method
    .param pmc bindval
    .param pmc names           :slurpy

    .local pmc match, names_it
    match = self.'MATCH'()
    $I0 = isa bindval, ['Regex';'Cursor']
    unless $I0 goto have_bindval
    bindval = bindval.'MATCH'()
  have_bindval:
    names_it = iter names
  names_loop:
    unless names_it goto names_done
    $P0 = shift names_it
    $P1 = match[$P0]
    if null $P1 goto bind_1
    $I0 = isa $P1, ['ResizablePMCArray']
    unless $I0 goto bind_1
    push $P1, bindval
    goto names_loop
  bind_1:
    match[$P0] = bindval
    goto names_loop
  names_done:
.end


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


=item !literal(str [, pos :named('pos')] )

Perform a literal match of C<str> using the current cursor
(starting at C<pos>, if supplied).  If the match is successful, 
the cursor is moved to the end of the literal string.

=cut

.sub '!literal' :method
    .param string str
    .param pmc pos             :named('pos') :optional
    .param int has_pos         :opt_flag

    unless has_pos goto pos_0
    setattribute self, '$!pos', pos
    goto pos_done
  pos_0:
    pos = getattribute self, '$!pos'
  pos_done:

    .local string target
    $P0 = getattribute self, '$!target'
    target = $P0

    $I0 = pos
    $I1 = length str
    $S0 = substr target, $I0, $I1
    unless $S0 == str goto fail
    add $P0, pos, $I1
    setattribute self, '$!pos', $P0
    .return (1, pos)
  fail:
    .return (0, pos)    
.end


=item !subrule(subname [, bindnames :slurpy] [, pos :named('pos')] )

Perform a subrule match on C<name>, binding any successful
match objects into C<bindnames>.  If the subrule successfully
matches, then the cursor invocant is updated to the end of 
the subrule match, otherwise the cursor is unchanged.
Returns the cursor from the attempted subrule match.

=cut

.sub '!subrule' :method
    .param string subname
    .param pmc bindnames       :slurpy
    .param pmc pos             :named('pos') :optional
    .param int has_pos         :opt_flag

    unless has_pos goto pos_done
    setattribute self, '$!pos', pos
  pos_done:

    # invoke the subrule
    .local pmc subcur
    subcur = self.subname()
    # if the subrule failed, we're done
    unless subcur goto done
    # update current cursor's position
    pos = getattribute subcur, '$!pos'
    setattribute self, '$!pos', pos
    # bind any results
    unless bindnames goto done
    self.'!match_bind'(subcur, bindnames :flat)
  done:
    .return (subcur, pos)
.end


=item !symtoken_add(name, sym)

Add a regex C<name> for matching fixed-string C<sym> tokens to
the current grammar.

=cut

.sub '!symtoken_add' :method
    .param string name
    .param string sym

    # create a new symtoken method instance, name it, attach <sym>
    .local pmc symtoken
    .const 'Sub' $P99 = 'symtoken'
    symtoken = clone $P99
    # symtoken = name
    $P0 = box sym
    setprop symtoken, '$!sym', $P0

    # add method to our class
    $P0 = self.'HOW'()
    $P0.'add_method'(self, name, symtoken)

    self.'!protoregex_generation'()
.end

.sub '' :method :subid('symtoken')
    .param pmc action          :named('action') :optional
    .param pmc peek            :named('peek')   :optional

    # get the string to be matched
    .local pmc sym
    $P0 = getinterp
    $P0 = $P0['sub';0]
    sym = getprop '$!sym', $P0

    if null peek goto peek_done
    .return (sym)
  peek_done:

    # get a fresh cursor for matching
    .local pmc cur
    .local string target
    .local int pos
    (cur, pos, target) = self.'!cursor_start'()

    # compare target with sym
    $S0 = sym
    $I0 = length $S0
    $S1 = substr target, pos, $I0
    if $S0 != $S1 goto fail
    pos += $I0
  pass:
    .local pmc match
    match = cur.'!matchify'('pos'=>pos)
    match['sym'] = sym
  fail:
    .return (cur)
.end
    

=back

=head2 Vtable functions

=over 4

=item get_bool

=cut

.sub '' :vtable('get_bool') :method
    .local pmc match
    match = getattribute self, '$!match'
    if null match goto false
    $I0 = istrue match
    .return ($I0)
  false:
    .return (0)
.end


=head1 AUTHORS

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
