# Copyright (C) 2009, Patrick R. Michaud

=head1 NAME

regex-cursor-protoregex.pir - naive protoregex implementation

=head1 DESCRIPTION

=over 4

=item !protoregex()

This method adds rudimentary protoregex support to Regex::Cursor.  It doesn't
do longest token matching correctly; instead it tries regexes
in reverse order of longest regex name.

=cut

.namespace ['Regex';'Cursor']

.sub '!protoregex' :method
    .param string name

    self.'!cursor_debug'('START ', name)

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

    unless tokrx goto token_fail

    .local pmc tokrx_it
    tokrx_it = iter tokrx
  token_loop:
    unless tokrx_it goto token_done
    .local pmc rx, cur
    rx = shift tokrx_it
    cur = self.rx()
    if cur goto token_done
    goto token_loop
  token_done:
    $P0 = cur.'pos'()
    if $P0 < 0 goto token_fail
    self.'!cursor_debug'('PASS  ', name, ' at pos=', $P0)
    .return (cur)

  token_fail:
    self.'!cursor_debug'('FAIL  ', name)
    .return (0)
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
    null toklen
    tokrx  = new ['ResizablePMCArray']

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

    # Okay, we've found a method name intended for this protoregex,
    # add it to our list.
    .local pmc rx
    rx = find_method self, method_name
    push tokrx, rx
    goto method_loop
  method_done:


    # Now sort the methods by name, longest first.
    .const 'Sub' $P99 = '!protoregex_cmp'
    tokrx.'sort'($P99)

    # say name
    # $P0 = iter tokrx
  # say_loop:
    # unless $P0 goto say_done
    # $P1 = shift $P0
    # say $P1
    # goto say_loop
  # say_done:

    # It's built!  Now store the tokrx table where we can find it
    # again later without having to rebuild it.
    $S0 = concat name, '.tokrx'
    prototable[$S0] = tokrx
    .return (tokrx, toklen)
.end


.sub '!protoregex_cmp' :anon
    .param pmc a
    .param pmc b
    $S0 = a
    $I0 = length $S0
    $S1 = b
    $I1 = length $S1
    $I2 = cmp $I1, $I0
    .return ($I2)
.end

=back

=cut
