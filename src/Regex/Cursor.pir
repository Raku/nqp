# Copyright (C) 2009, The Perl Foundation.
# $Id$

=head1 NAME

Regex::Cursor - Regex Cursor nodes

=head1 DESCRIPTION

This file implements the Regex::Cursor class, used for managing regular
expression control flow.  Regex::Cursor is also a base class for
grammars.

=cut

.include 'cclass.pasm'
.include 'src/Regex/constants.pir'

.namespace ['Regex';'Cursor']

.sub '' :anon :load :init :outer('Regex_Outer') :subid('Cursor_Load')
    # Set up some constants/generation tracking.
    $P0 = box 0
    set_global '$!generation', $P0
    $P0 = new ['Boolean']
    assign $P0, 0
    set_global '$!FALSE', $P0
    $P0 = new ['Boolean']
    assign $P0, 1
    set_global '$!TRUE', $P0

    # Build meta-object and store it in the namespace.
    .local pmc type_obj, how, NQPClassHOW
    get_hll_global NQPClassHOW, "NQPClassHOW"
    type_obj = NQPClassHOW."new_type"("Cursor" :named("name"))
    how = get_how type_obj
    set_hll_global ["Regex"], "Cursor", type_obj
    set_global "$?CLASS", type_obj

    # Add all methods.
    .const 'Sub' $P10 = 'Regex_Cursor_meth_new_match'
    how.'add_method'(type_obj, 'new_match', $P10)
    .const 'Sub' $P11 = 'Regex_Cursor_meth_new_array'
    how.'add_method'(type_obj, 'new_array', $P11)
    .const 'Sub' $P12 = 'Regex_Cursor_meth_MATCH'
    how.'add_method'(type_obj, 'MATCH', $P12)
    .const 'Sub' $P13 = 'Regex_Cursor_meth_parse'
    how.'add_method'(type_obj, 'parse', $P13)
    .const 'Sub' $P14 = 'Regex_Cursor_meth_next'
    how.'add_method'(type_obj, 'next', $P14)
    .const 'Sub' $P15 = 'Regex_Cursor_meth_pos'
    how.'add_method'(type_obj, 'pos', $P15)
    .const 'Sub' $P16 = 'Regex_Cursor_meth_from'
    how.'add_method'(type_obj, 'from', $P16)
    .const 'Sub' $P17 = 'Regex_Cursor_meth_!cursor_init'
    how.'add_method'(type_obj, '!cursor_init', $P17)
    .const 'Sub' $P18 = 'Regex_Cursor_meth_!cursor_start'
    how.'add_method'(type_obj, '!cursor_start', $P18)
    .const 'Sub' $P19 = 'Regex_Cursor_meth_!cursor_fail'
    how.'add_method'(type_obj, '!cursor_fail', $P19)
    .const 'Sub' $P20 = 'Regex_Cursor_meth_!cursor_pass'
    how.'add_method'(type_obj, '!cursor_pass', $P20)
    .const 'Sub' $P21 = 'Regex_Cursor_meth_!cursor_backtrack'
    how.'add_method'(type_obj, '!cursor_backtrack', $P21)
    .const 'Sub' $P22 = 'Regex_Cursor_meth_!cursor_next'
    how.'add_method'(type_obj, '!cursor_next', $P22)
    .const 'Sub' $P23 = 'Regex_Cursor_meth_!cursor_caparray'
    how.'add_method'(type_obj, '!cursor_caparray', $P23)
    .const 'Sub' $P24 = 'Regex_Cursor_meth_!cursor_names'
    how.'add_method'(type_obj, '!cursor_names', $P24)
    .const 'Sub' $P25 = 'Regex_Cursor_meth_!cursor_pos'
    how.'add_method'(type_obj, '!cursor_pos', $P25)
    .const 'Sub' $P26 = 'Regex_Cursor_meth_!cursor_debug'
    how.'add_method'(type_obj, '!cursor_debug', $P26)
    .const 'Sub' $P27 = 'Regex_Cursor_meth_!mark_push'
    how.'add_method'(type_obj, '!mark_push', $P27)
    .const 'Sub' $P28 = 'Regex_Cursor_meth_!mark_peek'
    how.'add_method'(type_obj, '!mark_peek', $P28)
    .const 'Sub' $P29 = 'Regex_Cursor_meth_!mark_fail'
    how.'add_method'(type_obj, '!mark_fail', $P29)
    .const 'Sub' $P30 = 'Regex_Cursor_meth_!mark_commit'
    how.'add_method'(type_obj, '!mark_commit', $P30)
    .const 'Sub' $P31 = 'Regex_Cursor_meth_!reduce'
    how.'add_method'(type_obj, '!reduce', $P31)
    .const 'Sub' $P32 = 'Regex_Cursor_meth_!BACKREF'
    how.'add_method'(type_obj, '!BACKREF', $P32)
    .const 'Sub' $P33 = 'Regex_Cursor_meth_!INTERPOLATE'
    how.'add_method'(type_obj, '!INTERPOLATE', $P33)
    .const 'Sub' $P34 = 'Regex_Cursor_meth_!INTERPOLATE_REGEX'
    how.'add_method'(type_obj, '!INTERPOLATE_REGEX', $P34)
    .const 'Sub' $P35 = 'Regex_Cursor_meth_!cursor_from'
    how.'add_method'(type_obj, '!cursor_from', $P35)
    .const 'Sub' $P10 = 'Regex_Cursor_meth_before'
    how.'add_method'(type_obj, 'before', $P10)
    .const 'Sub' $P11 = 'Regex_Cursor_meth_ident'
    how.'add_method'(type_obj, 'ident', $P11)
    .const 'Sub' $P12 = 'Regex_Cursor_meth_wb'
    how.'add_method'(type_obj, 'wb', $P12)
    .const 'Sub' $P13 = 'Regex_Cursor_meth_ww'
    how.'add_method'(type_obj, 'ww', $P13)
    .const 'Sub' $P14 = 'Regex_Cursor_meth_ws'
    how.'add_method'(type_obj, 'ws', $P14)
    .const 'Sub' $P15 = 'Regex_Cursor_meth_alpha'
    how.'add_method'(type_obj, 'alpha', $P15)
    .const 'Sub' $P16 = 'Regex_Cursor_meth_upper'
    how.'add_method'(type_obj, 'upper', $P16)
    .const 'Sub' $P17 = 'Regex_Cursor_meth_lower'
    how.'add_method'(type_obj, 'lower', $P17)
    .const 'Sub' $P18 = 'Regex_Cursor_meth_digit'
    how.'add_method'(type_obj, 'digit', $P18)
    .const 'Sub' $P19 = 'Regex_Cursor_meth_xdigit'
    how.'add_method'(type_obj, 'xdigit', $P19)
    .const 'Sub' $P20 = 'Regex_Cursor_meth_print'
    how.'add_method'(type_obj, 'print', $P20)
    .const 'Sub' $P21 = 'Regex_Cursor_meth_graph'
    how.'add_method'(type_obj, 'graph', $P21)
    .const 'Sub' $P22 = 'Regex_Cursor_meth_cntrl'
    how.'add_method'(type_obj, 'cntrl', $P22)
    .const 'Sub' $P23 = 'Regex_Cursor_meth_punct'
    how.'add_method'(type_obj, 'punct', $P23)
    .const 'Sub' $P24 = 'Regex_Cursor_meth_alnum'
    how.'add_method'(type_obj, 'alnum', $P24)
    .const 'Sub' $P25 = 'Regex_Cursor_meth_space'
    how.'add_method'(type_obj, 'space', $P25)
    .const 'Sub' $P26 = 'Regex_Cursor_meth_blank'
    how.'add_method'(type_obj, 'blank', $P26)
    .const 'Sub' $P27 = 'Regex_Cursor_meth_FAILGOAL'
    how.'add_method'(type_obj, 'FAILGOAL', $P27)
    .const 'Sub' $P28 = 'Regex_Cursor_meth_DEBUG'
    how.'add_method'(type_obj, 'DEBUG', $P28)
    .const 'Sub' $P10 = 'Regex_Cursor_meth_!protoregex'
    how.'add_method'(type_obj, '!protoregex', $P10)
    .const 'Sub' $P11 = 'Regex_Cursor_meth_!protoregex_generation'
    how.'add_method'(type_obj, '!protoregex_generation', $P11)
    .const 'Sub' $P12 = 'Regex_Cursor_meth_!protoregex_tokrx'
    how.'add_method'(type_obj, '!protoregex_tokrx', $P12)
    .const 'Sub' $P13 = 'Regex_Cursor_meth_!protoregex_gen_table'
    how.'add_method'(type_obj, '!protoregex_gen_table', $P13)
    .const 'Sub' $P14 = 'Regex_Cursor_meth_!PREFIX__!protoregex'
    how.'add_method'(type_obj, '!PREFIX__!protoregex', $P14)
    .const 'Sub' $P15 = 'Regex_Cursor_meth_!PREFIX__!subrule'
    how.'add_method'(type_obj, '!PREFIX__!subrule', $P15)
    .const 'Sub' $P16 = 'Regex_Cursor_meth_DUMP_TOKRX'
    how.'add_method'(type_obj, 'DUMP_TOKRX', $P16)
    .const 'Sub' $P17 = 'Regex_Cursor_meth_Bool'
    how.'add_method'(type_obj, 'Bool', $P17)
    how.'add_parrot_vtable_mapping'(type_obj, 'get_bool', $P17)

    # Add attributes.
    .local pmc NQPAttribute, int_type, attr
    NQPAttribute = get_hll_global "NQPAttribute"
    int_type = find_lex "int"
    attr = NQPAttribute."new"("$!target" :named("name"))
    how."add_attribute"(type_obj, attr)
    attr = NQPAttribute."new"("$!from" :named("name"), int_type :named('type'))
    how."add_attribute"(type_obj, attr)
    attr = NQPAttribute."new"("$!pos" :named("name"), int_type :named('type'))
    how."add_attribute"(type_obj, attr)
    attr = NQPAttribute."new"("$!match" :named("name"))
    how."add_attribute"(type_obj, attr)
    attr = NQPAttribute."new"("$!names" :named("name"))
    how."add_attribute"(type_obj, attr)
    attr = NQPAttribute."new"("$!debug" :named("name"))
    how."add_attribute"(type_obj, attr)
    attr = NQPAttribute."new"("@!bstack" :named("name"))
    how."add_attribute"(type_obj, attr)
    attr = NQPAttribute."new"("@!cstack" :named("name"))
    how."add_attribute"(type_obj, attr)
    attr = NQPAttribute."new"("@!caparray" :named("name"))
    how."add_attribute"(type_obj, attr)
    attr = NQPAttribute."new"("&!regex" :named("name"))
    how."add_attribute"(type_obj, attr)

    # Compose meta-object.
    how."compose"(type_obj)
    .return ()
.end

=head2 Methods

=over 4

=item new_match()

A method that creates an empty Match object, by default of type
C<Regex::Match>. This method can be overridden for generating HLL-specific
Match objects.

=cut

.sub 'new_match' :method :subid('Regex_Cursor_meth_new_match')
    .local pmc match
    match = new ['Regex';'Match']
    .return (match)
.end

=item new_array()

A method that creates an empty array object, by default of type
C<ResizablePMCArray>. This method can be overridden for generating HLL-specific
arrays for usage within Match objects.

=cut

.sub 'new_array' :method :subid('Regex_Cursor_meth_new_array')
    .local pmc arr
    arr = new ['ResizablePMCArray']
    .return (arr)
.end

=item MATCH()

Return this cursor's current Match object, generating a new one
for the Cursor if one hasn't been created yet.

=cut

.sub 'MATCH' :method :subid('Regex_Cursor_meth_MATCH')
    .local pmc cur_class, match
    cur_class = get_global '$?CLASS'
    match = getattribute self, cur_class, '$!match'
    if null match goto match_make
    $P0 = get_global '$!TRUE'
    $I0 = issame match, $P0
    unless $I0 goto match_done

    # First, create a Match object and bind it
  match_make:
    match = self.'new_match'()
    setattribute self, cur_class, '$!match', match
    setattribute match, '$!cursor', self
    .local pmc target, from, to
    target = getattribute self, cur_class, '$!target'
    setattribute match, '$!target', target
    $I0 = repr_get_attr_int self, cur_class, '$!from'
    from = box $I0
    setattribute match, '$!from', from
    $I0 = repr_get_attr_int self, cur_class, '$!pos'
    to = box $I0
    setattribute match, '$!to', to

    # Create any arrayed subcaptures.
    .local pmc caparray, caparray_it, caphash
    caparray = getattribute self, cur_class, '@!caparray'
    if null caparray goto caparray_done
    caparray_it = iter caparray
    caphash = new ['Hash']
  caparray_loop:
    unless caparray_it goto caparray_done
    .local string subname
    .local pmc arr
    .local int keyint
    subname = shift caparray_it
    arr = self.'new_array'()
    caphash[subname] = arr
    keyint = is_cclass .CCLASS_NUMERIC, subname, 0
    if keyint goto caparray_int
    match[subname] = arr
    goto caparray_loop
  caparray_int:
    $I0 = subname
    match[$I0] = arr
    goto caparray_loop
  caparray_done:

    # If it's not a successful match, or if there are
    # no saved subcursors, we're done.
    if to < from goto match_done
    .local pmc cstack, cstack_it
    cstack = getattribute self, cur_class, '@!cstack'
    if null cstack goto cstack_done
    unless cstack goto cstack_done
    cstack_it = iter cstack
  cstack_loop:
    unless cstack_it goto cstack_done
    .local pmc subcur, submatch, names
    subcur = shift cstack_it
    $I0 = type_check subcur, cur_class
    unless $I0 goto cstack_loop
    # If the subcursor isn't bound with a name, skip it
    names = getattribute subcur, cur_class, '$!names'
    if null names goto cstack_loop
    submatch = subcur.'MATCH'()
    # See if we have multiple binds
    .local pmc names_it
    subname = names
    names_it = get_global '$!FALSE'
    $I0 = index subname, '='
    if $I0 < 0 goto cstack_subname
    names_it = split '=', subname
  cstack_subname_loop:
    subname = shift names_it
  cstack_subname:
    keyint = is_cclass .CCLASS_NUMERIC, subname, 0
    if null caparray goto cstack_bind
    $I0 = exists caphash[subname]
    unless $I0 goto cstack_bind
    if keyint goto cstack_array_int
    $P0 = match[subname]
    push $P0, submatch
    goto cstack_bind_done
  cstack_array_int:
    $I0 = subname
    $P0 = match[$I0]
    push $P0, submatch
    goto cstack_bind_done
  cstack_bind:
    if keyint goto cstack_bind_int
    match[subname] = submatch
    goto cstack_bind_done
  cstack_bind_int:
    $I0 = subname
    match[$I0] = submatch
  cstack_bind_done:
    if names_it goto cstack_subname_loop
    goto cstack_loop
  cstack_done:

  match_done:
    .return (match)
.end


=item parse(target [, 'rule'=>regex])

Parse C<target> in the current grammar starting with C<regex>.
If C<regex> is omitted, then use the C<TOP> rule for the grammar.

=cut

.sub 'parse' :method :subid('Regex_Cursor_meth_parse')
    .param pmc target
    .param pmc regex           :named('rule') :optional
    .param int has_regex       :opt_flag
    .param pmc actions         :named('actions') :optional
    .param int rxtrace         :named('rxtrace') :optional
    .param pmc options         :slurpy :named

    if has_regex goto have_regex
    regex = box 'TOP'
  have_regex:
    $I0 = isa regex, ['String']
    unless $I0 goto regex_done
    $S0 = regex
    regex = find_method self, $S0
  regex_done:

    .lex '$*ACTIONS', actions

    .local pmc cur, match
    cur = self.'!cursor_init'(target, options :flat :named)
    unless rxtrace goto rxtrace_done
    cur.'DEBUG'()
  rxtrace_done:
    cur = cur.regex()
    match = cur.'MATCH'()
    .return (match)
.end


=item next()

Return the next match from a successful Cursor.

=cut

.sub 'next' :method :subid('Regex_Cursor_meth_next')
    .local pmc cur, match
    cur = self.'!cursor_next'()
    match = cur.'MATCH'()
    .return (match)
.end


=item pos()

Return the cursor's current position.

=cut

.sub 'pos' :method :subid('Regex_Cursor_meth_pos')
    .local pmc cur_class
    cur_class = get_global '$?CLASS'
    $I0 = repr_get_attr_int self, cur_class, '$!pos'
    .return ($I0)
.end


=item from()

Return the cursor's from position.

=cut

.sub 'from' :method :subid('Regex_Cursor_meth_from')
    .local pmc cur_class
    cur_class = get_global '$?CLASS'
    $I0 = repr_get_attr_int self, cur_class, '$!from'
    .return ($I0)
.end

=back

=head2 Private methods

=over 4

=item !cursor_init(target)

Create a new cursor for matching C<target>.

=cut

.sub '!cursor_init' :method :subid('Regex_Cursor_meth_!cursor_init')
    .param string target
    .param int pos             :named('p') :optional
    .param int has_pos         :opt_flag
    .param int cont            :named('c') :optional
    .param int has_cont        :opt_flag

    .local pmc cur_class, cur
    cur_class = get_global '$?CLASS'
    cur = repr_instance_of self

    $P0 = box target
    setattribute cur, cur_class, '$!target', $P0

    if has_cont goto cursor_cont
    repr_bind_attr_int cur, cur_class, '$!from', pos
    repr_bind_attr_int cur, cur_class, '$!pos', pos
    goto cursor_done
  cursor_cont:
    repr_bind_attr_int cur, cur_class, '$!from', CURSOR_FAIL
    repr_bind_attr_int cur, cur_class, '$!pos', cont
  cursor_done:

    .return (cur)
.end

=item !cursor_start([lang])

Create and initialize a new cursor from C<self>.  If C<lang> is
provided, then the new cursor has the same type as lang.

=cut

.sub '!cursor_start' :method :subid('Regex_Cursor_meth_!cursor_start')
    .param pmc lang            :optional
    .param int has_lang        :opt_flag

    if has_lang goto have_lang
    lang = self
  have_lang:

    .local pmc cur_class, cur
    cur_class = get_global '$?CLASS'
    cur = repr_instance_of lang

    .local pmc regex
    regex = getattribute self, cur_class, '&!regex'
    unless null regex goto cursor_restart

    .local pmc target, debug
    .local int from

    from = repr_get_attr_int self, cur_class, '$!pos'
    repr_bind_attr_int cur, cur_class, '$!from', from
    repr_bind_attr_int cur, cur_class, '$!pos', from

    target = getattribute self, cur_class, '$!target'
    setattribute cur, cur_class, '$!target', target
    debug = getattribute self, cur_class, '$!debug'
    setattribute cur, cur_class, '$!debug', debug

    .return (cur, from, target, 0)

  cursor_restart:
    .local pmc cstack, bstack
    .local int pos
    from   = repr_get_attr_int self, cur_class, '$!from'
    target = getattribute self, cur_class, '$!target'
    debug  = getattribute self, cur_class, '$!debug'
    cstack = getattribute self, cur_class, '@!cstack'
    bstack = getattribute self, cur_class, '@!bstack'
    pos    = CURSOR_FAIL

    repr_bind_attr_int cur, cur_class, '$!from', from
    repr_bind_attr_int cur, cur_class, '$!pos', pos 
    setattribute cur, cur_class, '$!target', target
    setattribute cur, cur_class, '$!debug', debug
    if null cstack goto cstack_done
    cstack = clone cstack
    setattribute cur, cur_class, '@!cstack', cstack
  cstack_done:
    if null bstack goto bstack_done
    bstack = clone bstack
    setattribute cur, cur_class, '@!bstack', bstack
  bstack_done:
    .return (cur, from, target, 1)
.end


=item !cursor_fail(pos)

Permanently fail this cursor.

=cut

.sub '!cursor_fail' :method :subid('Regex_Cursor_meth_!cursor_fail')
    .local pmc cur_class
    cur_class = get_global '$?CLASS'
    repr_bind_attr_int self, cur_class, '$!pos', CURSOR_FAIL_RULE
    null $P0
    setattribute self, cur_class, '$!match', $P0
    setattribute self, cur_class, '@!bstack', $P0
    setattribute self, cur_class, '@!cstack', $P0
.end


=item !cursor_pass(pos, name)

Set the Cursor as passing at C<pos>; calling any reduction action
C<name> associated with the cursor.  This method simply sets
C<$!match> to a boolean true value to indicate the regex was
successful; the C<MATCH> method above replaces this boolean true
with a "real" Match object when requested.

=cut

.sub '!cursor_pass' :method :subid('Regex_Cursor_meth_!cursor_pass')
    .param int pos
    .param string name

    .local pmc cur_class
    cur_class = get_global '$?CLASS'

    repr_bind_attr_int self, cur_class, '$!pos', pos
    .local pmc match
    match = get_global '$!TRUE'
    setattribute self, cur_class, '$!match', match
    unless name goto done
    self.'!reduce'(name)
  done:
    .return (self)
.end


=item !cursor_backtrack()

Configure this cursor for backtracking via C<!cursor_next>.

=cut

.sub '!cursor_backtrack' :method :subid('Regex_Cursor_meth_!cursor_backtrack')
    .local pmc cur_class
    cur_class = get_global '$?CLASS'
    $P0 = getinterp
    $P1 = $P0['sub';1]
    setattribute self, cur_class, '&!regex', $P1
.end


=item !cursor_next()

Continue a regex match from where the current cursor left off.

=cut

.sub '!cursor_next' :method :subid('Regex_Cursor_meth_!cursor_next')
    .local pmc regex, cur, cur_class
    cur_class = get_global '$?CLASS'
    regex = getattribute self, cur_class, '&!regex'
    if null regex goto fail
    cur = self.regex()
    .return (cur)
  fail:
    cur = self.'!cursor_start'()
    cur.'!cursor_fail'()
    .return (cur)
.end


=item !cursor_caparray(caparray :slurpy)

Set the list of subcaptures that produce arrays to C<caparray>.

=cut

.sub '!cursor_caparray' :method :subid('Regex_Cursor_meth_!cursor_caparray')
    .param pmc caparray        :slurpy
    .local pmc cur_class
    cur_class = get_global '$?CLASS'
    setattribute self, cur_class, '@!caparray', caparray
.end


=item !cursor_names(names)

Set the Cursor's name (for binding) to C<names>.

=cut

.sub '!cursor_names' :method :subid('Regex_Cursor_meth_!cursor_names')
    .param pmc names
    .local pmc cur_class
    cur_class = get_global '$?CLASS'
    setattribute self, cur_class, '$!names', names
.end


=item !cursor_pos(pos)

Set the cursor's position to C<pos>.

=cut

.sub '!cursor_pos' :method :subid('Regex_Cursor_meth_!cursor_pos')
    .param int pos
    .local pmc cur_class
    cur_class = get_global '$?CLASS'
    repr_bind_attr_int self, cur_class, '$!pos', pos
.end


=item !cursor_from(pos)

Set the cursor's from to C<from>.

=cut

.sub '!cursor_from' :method :subid('Regex_Cursor_meth_!cursor_from')
    .param int from
    .local pmc cur_class
    cur_class = get_global '$?CLASS'
    repr_bind_attr_int self, cur_class, '$!from', from
.end


=item !cursor_debug(args :slurpy)

Log a debug message.

=cut

.sub '!cursor_debug' :method :subid('Regex_Cursor_meth_!cursor_debug')
    .param string tag
    .param pmc args            :slurpy
    .local pmc cur_class
    cur_class = get_global '$?CLASS'
    $P0 = getattribute self, cur_class, '$!debug'
    if null $P0 goto done
    unless $P0 goto done
    .local pmc fmt, orig, line
    .local int from
    fmt = new ['ResizablePMCArray']
    from = repr_get_attr_int self, cur_class, '$!from'
    orig = getattribute self, cur_class, '$!target'
    $P0 = get_hll_global ['HLL'], 'Compiler'
    line = $P0.'lineof'(orig, from, 'cache'=>1)

    $P0 = getinterp
    $P1 = $P0.'stderr_handle'()

    $N0 = time
    push fmt, $N0
    push fmt, from
    push fmt, line
    push fmt, tag
    $S0 = sprintf "%.6f %d/%d %-8s ", fmt
    print $P1, $S0
    $S0 = join '', args
    print $P1, $S0
    print $P1, "\n"
  done:
    .return (self)
.end


=item !mark_push(rep, pos, mark)

Push a new backtracking point onto the cursor with the given
C<rep>, C<pos>, and backtracking C<mark>.  (The C<mark> is typically
the address of a label to branch to when backtracking occurs.)

=cut

.sub '!mark_push' :method :subid('Regex_Cursor_meth_!mark_push')
    .param int rep
    .param int pos
    .param int mark
    .param pmc subcur          :optional
    .param int has_subcur      :opt_flag

    # cptr contains the desired number of elements in the cstack
    .local int cptr
    cptr = 0

    # Initialize bstack if needed, and set cptr to be the cstack
    # size requested by the top frame.
    .local pmc bstack, cur_class
    cur_class = get_global '$?CLASS'
    bstack = getattribute self, cur_class, '@!bstack'
    if null bstack goto bstack_new
    unless bstack goto bstack_done
    $I0 = elements bstack
    dec $I0
    cptr = bstack[$I0]
    goto bstack_done
  bstack_new:
    bstack = new ['ResizableIntegerArray']
    setattribute self, cur_class, '@!bstack', bstack
  bstack_done:

    # If a new subcursor is being pushed, then save it in cstack
    # and change cptr to include the new subcursor.  Also clear
    # any existing match object, as we may have just changed the
    # match state.
    unless has_subcur goto subcur_done
    null $P0
    setattribute self, cur_class, '$!match', $P0
    .local pmc cstack
    cstack = getattribute self, cur_class, '@!cstack'
    unless null cstack goto have_cstack
    cstack = new ['ResizablePMCArray']
    setattribute self, cur_class, '@!cstack', cstack
  have_cstack:
    cstack[cptr] = subcur
    inc cptr
  subcur_done:

    # Save our mark frame information.
    push bstack, mark
    push bstack, pos
    push bstack, rep
    push bstack, cptr
.end


=item !mark_peek(mark)

Return information about the latest frame for C<mark>.
If C<mark> is zero, return information about the latest frame.

=cut

.sub '!mark_peek' :method :subid('Regex_Cursor_meth_!mark_peek')
    .param int tomark

    .local pmc bstack, cur_class
    cur_class = get_global '$?CLASS'
    bstack = getattribute self, cur_class, '@!bstack'
    if null bstack goto no_mark
    unless bstack goto no_mark

    .local int bptr
    bptr = elements bstack

  bptr_loop:
    bptr = bptr - 4
    if bptr < 0 goto no_mark
    .local int rep, pos, mark, cptr
    mark = bstack[bptr]
    unless tomark goto bptr_done
    unless mark == tomark goto bptr_loop
  bptr_done:
    $I0  = bptr + 1
    pos  = bstack[$I0]
    inc $I0
    rep  = bstack[$I0]
    inc $I0
    cptr = bstack[$I0]
    .return (rep, pos, mark, bptr, bstack, cptr)

  no_mark:
    .return (0, CURSOR_FAIL_GROUP, 0, 0, bstack, 0)
.end


=item !mark_fail(tomark)

Remove the most recent C<mark> and backtrack the cursor to the
point given by that mark.  If C<mark> is zero, then
backtracks the most recent mark.  Returns the backtracked
values of repetition count, cursor position, and mark (address).

=cut

.sub '!mark_fail' :method :subid('Regex_Cursor_meth_!mark_fail')
    .param int mark

    .local pmc cur_class
    cur_class = get_global '$?CLASS'

    # Get the frame information for C<mark>.
    .local int rep, pos, mark, bptr, cptr
    .local pmc bstack
    (rep, pos, mark, bptr, bstack, cptr) = self.'!mark_peek'(mark)

    # clear any existing Match object
    null $P0
    setattribute self, cur_class, '$!match', $P0

    .local pmc subcur
    null subcur

    # If there's no bstack, there's nothing else to do.
    if null bstack goto done

    # If there's a subcursor associated with this mark, return it.
    unless cptr > 0 goto cstack_done
    .local pmc cstack
    cstack = getattribute self, cur_class, '@!cstack'
    dec cptr
    subcur = cstack[cptr]
    # Set the cstack to the size requested by the soon-to-be-top mark frame.
    unless bptr > 0 goto cstack_zero
    $I0 = bptr - 1
    $I0 = bstack[$I0]
    assign cstack, $I0
    goto cstack_done
  cstack_zero:
    assign cstack, 0
  cstack_done:

    # Pop the current mark frame and all above it.
    assign bstack, bptr

  done:
    .return (rep, pos, mark, subcur)
.end


=item !mark_commit(mark)

Like C<!mark_fail> above this backtracks the cursor to C<mark>
(releasing any intermediate marks), but preserves the current
capture states.

=cut

.sub '!mark_commit' :method :subid('Regex_Cursor_meth_!mark_commit')
    .param int mark

    # find mark
    .local int rep, pos, mark, bptr, cptr
    .local pmc bstack
    (rep, pos, mark, bptr, bstack) = self.'!mark_peek'(mark)

    # get current cstack size into cptr
    if null bstack goto done
    unless bstack goto done
    $I0 = elements bstack
    dec $I0
    cptr = bstack[$I0]

    # Pop the mark frame and everything above it.
    assign bstack, bptr

    # If we don't need to hold any cstack information, we're done.
    unless cptr > 0 goto done

    # If the top frame is an auto-fail frame, (re)use it to hold
    # our needed cptr, otherwise create a new auto-fail frame to do it.
    unless bptr > 0 goto cstack_push
    $I0 = bptr - 3             # pos is at top-3
    $I1 = bstack[$I0]
    unless $I1 < 0 goto cstack_push
    $I0 = bptr - 1             # cptr is at top-1
    bstack[$I0] = cptr
    goto done
  cstack_push:
    push bstack, 0             # mark
    push bstack, CURSOR_FAIL   # pos
    push bstack, 0             # rep
    push bstack, cptr          # cptr

  done:
    .return (rep, pos, mark)
.end


=item !reduce(name [, key] [, match])

Perform any action associated with the current regex match.

=cut

.sub '!reduce' :method :subid('Regex_Cursor_meth_!reduce')
    .param string name
    .param string key          :optional
    .param int has_key         :opt_flag
    .param pmc match           :optional
    .param int has_match       :opt_flag
    .local pmc actions
    actions = find_dynamic_lex '$*ACTIONS'
    if null actions goto actions_done
    $I0 = can actions, name
    unless $I0 goto actions_done
    if has_match goto match_done
    match = self.'MATCH'()
  match_done:
    if has_key goto actions_key
    actions.name(match)
    goto actions_done
  actions_key:
    .tailcall actions.name(match, key)
  actions_done:
    .return ()
.end


=item !BACKREF(name)

Match the backreference given by C<name>.

=cut

.sub '!BACKREF' :method :subid('Regex_Cursor_meth_!BACKREF')
    .param string name
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()

    # search the cursor cstack for the latest occurrence of C<name>
    .local pmc cstack, cur_class
    cur_class = get_global '$?CLASS'
    cstack = getattribute self, cur_class, '@!cstack'
    if null cstack goto pass
    .local int cstack_it
    cstack_it = elements cstack
  cstack_loop:
    dec cstack_it
    unless cstack_it >= 0 goto pass
    .local pmc subcur
    subcur = cstack[cstack_it]
    $P0 = getattribute subcur, cur_class, '$!names'
    if null $P0 goto cstack_loop
    $S0 = $P0
    if name != $S0 goto cstack_loop
    # we found a matching subcursor, get the literal it matched
  cstack_done:
    .local int litlen
    .local string litstr
    $I1 = subcur.'pos'()
    $I0 = subcur.'from'()
    litlen = $I1 - $I0
    litstr = substr tgt, $I0, litlen
    # now test the literal against our target
    $S0 = substr tgt, pos, litlen
    unless $S0 == litstr goto fail
    pos += litlen
  pass:
    cur.'!cursor_pass'(pos, '')
  fail:
    .return (cur)
.end


=item !INTERPOLATE(var [, convert])

Perform regex interpolation on C<var>.  If C<var> is a
regex (sub), it is used directly, otherwise it is used
for a string literal match.  If C<var> is an array,
then all of the elements of C<var> are considered,
and the longest match is returned.

=cut

.sub '!INTERPOLATE' :method :subid('Regex_Cursor_meth_!INTERPOLATE')
    .param pmc var

    .local pmc cur
    .local int pos, eos
    .local string tgt

    $I0 = does var, 'array'
    if $I0 goto var_array

  var_scalar:
    $I0 = does var, 'invokable'
    if $I0 goto var_sub

  var_string:
    (cur, pos, tgt) = self.'!cursor_start'()
    eos = length tgt
    $S0 = var
    $I0 = length $S0
    $I1 = pos + $I0
    if $I1 > eos goto string_fail
    $S1 = substr tgt, pos, $I0
    if $S0 != $S1 goto string_fail
    pos += $I0
  string_pass:
    cur.'!cursor_pass'(pos, '')
  string_fail:
    .return (cur)

  var_sub:
    cur = var(self)
    .return (cur)

  var_array:
    (cur, pos, tgt) = self.'!cursor_start'()
    eos = length tgt
    .local pmc var_it, elem
    .local int maxlen
    var_it = iter var
    maxlen = -1
  array_loop:
    unless var_it goto array_done
    elem = shift var_it
    $I0 = does elem, 'invokable'
    if $I0 goto array_sub
  array_string:
    $S0 = elem
    $I0 = length $S0
    if $I0 <= maxlen goto array_loop
    $I1 = pos + $I0
    if $I1 > eos goto array_loop
    $S1 = substr tgt, pos, $I0
    if $S0 != $S1 goto array_loop
    maxlen = $I0
    goto array_loop
  array_sub:
    $P0 = elem(self)
    unless $P0 goto array_loop
    $I0 = $P0.'pos'()
    $I0 -= pos
    if $I0 <= maxlen goto array_loop
    maxlen = $I0
    goto array_loop
  array_done:
    if maxlen < 0 goto array_fail
    $I0 = pos + maxlen
    cur.'!cursor_pass'($I0, '')
  array_fail:
    .return (cur)
.end


=item !INTERPOLATE_REGEX(var)

Same as C<!INTERPOLATE> above, except that any non-regex values
are first compiled to regexes prior to being matched.  

=cut

.sub '!INTERPOLATE_REGEX' :method :subid('Regex_Cursor_meth_!INTERPOLATE_REGEX')
    .param pmc var

    $I0 = does var, 'invokable'
    if $I0 goto done

    .local pmc p6regex
    p6regex = compreg 'Regex::P6Regex'

    $I0 = does var, 'array'
    if $I0 goto var_array
    var = p6regex.'compile'(var)
    goto done

  var_array:
    .local pmc var_it, elem
    var_it = iter var
    var = new ['ResizablePMCArray']
  var_loop:
    unless var_it goto done
    elem = shift var_it
    $I0 = does elem, 'invokable'
    if $I0 goto var_next
    elem = p6regex.'compile'(elem)
  var_next:
    push var, elem
    goto var_loop

  done:
    .tailcall self.'!INTERPOLATE'(var)
.end
    

=back

=head2 Vtable functions

=over 4

=item get_bool

=cut

.sub 'Bool' :vtable('get_bool') :method :subid('Regex_Cursor_meth_Bool')
    .local pmc match,  cur_class
    cur_class = get_global '$?CLASS'
    match = getattribute self, cur_class, '$!match'
    if null match goto false
    $I0 = istrue match
    .return ($I0)
  false:
    .return (0)
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
