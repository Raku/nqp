# $Id$

=head1 NAME

Regex - Regex library

=head1 DESCRIPTION

This file brings together the various Regex modules needed for Regex.pbc .

=cut

.HLL 'nqp'
.loadlib "nqp_group"
.loadlib "nqp_ops"

# This is the outer scope of the module.
.sub '' :subid('Regex_Outer')
    # Save this as the main context.
	$P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:

    # Set up our UNIT::GLOBALish.
    .local pmc KnowHOW, how
    KnowHOW = get_knowhow
    $P1 = KnowHOW."new_type"("name"=>"GLOBALish")
    how = get_how $P1
    how."compose"($P1)
    .lex 'GLOBALish', $P1

    # Capture inner blocks.
    .const 'Sub' $P2 = 'Cursor_Load'
    capture_lex $P2
    .const 'Sub' $P3 = 'Match_Load'
    capture_lex $P3
    .const 'Sub' $P4 = 'Method_Load'
    capture_lex $P4
.end

.sub '' :load :init :outer('Regex_Outer')
    # Create a serialization context for this compilation unit.
    .local pmc sc
    sc = nqp_create_sc "__REGEX_CORE_SC__"
    
    # Load setting.
    load_bytecode 'ModuleLoader.pbc'
    $P0 = get_hll_global 'ModuleLoader'
    $P1 = $P0.'load_setting'('NQPCORE')
	
    # Set it as the outer of the module's main block, then run that.
    .const 'Sub' $P2 = 'Regex_Outer'
    $P2.'set_outer_ctx'($P1)
    $P2()
.end

### .include 'src/Regex/Cursor.pir'
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
### .include 'src/Regex/constants.pir'
.const int CURSOR_FAIL = -1
.const int CURSOR_FAIL_GROUP = -2
.const int CURSOR_FAIL_RULE = -3
.const int CURSOR_FAIL_MATCH = -4

.const int CURSOR_TYPE_SCAN = 1
.const int CURSOR_TYPE_PEEK = 2

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
    
    # Create Regex outer package and put it in GLOBALish.
    .local pmc GLOBALish, GLOBALishWHO, Regex, RegexWHO
    GLOBALish = find_lex "GLOBALish"
    GLOBALishWHO = get_who GLOBALish
    $P0 = get_knowhow
    Regex = $P0."new_type"("name"=>"Regex")
    GLOBALishWHO["Regex"] = Regex
    RegexWHO = get_who Regex

    # Build meta-object and store it in the namespace.
    .local pmc type_obj, how, NQPClassHOW
    get_hll_global NQPClassHOW, "NQPClassHOW"
    type_obj = NQPClassHOW."new_type"("Cursor" :named("name"))
    RegexWHO["Cursor"] = type_obj
    set_global "$?CLASS", type_obj
    how = get_how type_obj
    
    # XXXNS Old namespace handling installation, during migration to new.
    set_hll_global ["Regex"], "Cursor", type_obj

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
    
    # Set default parent.
    .local pmc NQPMu
    NQPMu = find_lex "NQPMu"
    how."set_default_parent"(type_obj, NQPMu)

    # Compose meta-object.
    how."compose"(type_obj)
    
    .const 'Sub' $P0 = 'Regex_Cursor_Body'
    $P0(type_obj)
    
    .return ()
.end

.sub '' :subid('Regex_Cursor_Body') :outer('Regex_Outer')
    .param pmc type_obj
    .lex '$?CLASS', type_obj
    .const 'Sub' $P1 = 'Regex_Cursor_meth_new_match'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_new_array'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_MATCH'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_parse'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_next'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_pos'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_from'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!cursor_init'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!cursor_start'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!cursor_fail'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!cursor_pass'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!cursor_backtrack'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!cursor_next'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!cursor_caparray'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!cursor_names'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!cursor_pos'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!cursor_from'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!cursor_debug'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!mark_push'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!mark_peek'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!mark_fail'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!mark_commit'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!reduce'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!BACKREF'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!INTERPOLATE'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!INTERPOLATE_REGEX'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_Bool'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_before'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_ident'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_ww'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_ws'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_alpha'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_FAILGOAL'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_DEBUG'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!protoregex'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!protoregex_generation'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!protoregex_tokrx'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!protoregex_gen_table'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!PREFIX__!protoregex'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_!PREFIX__!subrule'
    capture_lex $P1
    .const 'Sub' $P1 = 'Regex_Cursor_meth_DUMP_TOKRX'
    capture_lex $P1
.end

=head2 Methods

=over 4

=item new_match()

A method that creates an empty Match object, by default of type
C<Regex::Match>. This method can be overridden for generating HLL-specific
Match objects.

=cut

.sub 'new_match' :method :subid('Regex_Cursor_meth_new_match') :outer('Regex_Cursor_Body')
    .local pmc match_class, match
    match_class = get_hll_global ["Regex"], "Match"
    match = match_class.'new'()
    .return (match)
.end

=item new_array()

A method that creates an empty array object, by default of type
C<ResizablePMCArray>. This method can be overridden for generating HLL-specific
arrays for usage within Match objects.

=cut

.sub 'new_array' :method :subid('Regex_Cursor_meth_new_array') :outer('Regex_Cursor_Body')
    .local pmc arr
    arr = new ['ResizablePMCArray']
    .return (arr)
.end

=item MATCH()

Return this cursor's current Match object, generating a new one
for the Cursor if one hasn't been created yet.

=cut

.sub 'MATCH' :method :subid('Regex_Cursor_meth_MATCH') :outer('Regex_Cursor_Body')
    .local pmc cur_class, match, match_class
    cur_class = find_lex '$?CLASS'
    match_class = get_hll_global ["Regex"], "Match"
    match = getattribute self, cur_class, '$!match'
    if null match goto match_make
    $P0 = get_global '$!TRUE'
    $I0 = issame match, $P0
    unless $I0 goto match_done

    # First, create a Match object and bind it
  match_make:
    match = self.'new_match'()
    setattribute self, cur_class, '$!match', match
    setattribute match, match_class, '$!cursor', self
    .local pmc target
    .local int from, to
    target = getattribute self, cur_class, '$!target'
    setattribute match, match_class, '$!target', target
    from = repr_get_attr_int self, cur_class, '$!from'
    repr_bind_attr_int match, match_class, '$!from', from
    to = repr_get_attr_int self, cur_class, '$!pos'
    repr_bind_attr_int match, match_class, '$!to', to

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

.sub 'parse' :method :subid('Regex_Cursor_meth_parse') :outer('Regex_Cursor_Body')
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

.sub 'next' :method :subid('Regex_Cursor_meth_next') :outer('Regex_Cursor_Body')
    .local pmc cur, match
    cur = self.'!cursor_next'()
    match = cur.'MATCH'()
    .return (match)
.end


=item pos()

Return the cursor's current position.

=cut

.sub 'pos' :method :subid('Regex_Cursor_meth_pos') :outer('Regex_Cursor_Body')
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
    $I0 = repr_get_attr_int self, cur_class, '$!pos'
    .return ($I0)
.end


=item from()

Return the cursor's from position.

=cut

.sub 'from' :method :subid('Regex_Cursor_meth_from') :outer('Regex_Cursor_Body')
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
    $I0 = repr_get_attr_int self, cur_class, '$!from'
    .return ($I0)
.end

=back

=head2 Private methods

=over 4

=item !cursor_init(target)

Create a new cursor for matching C<target>.

=cut

.sub '!cursor_init' :method :subid('Regex_Cursor_meth_!cursor_init') :outer('Regex_Cursor_Body')
    .param string target
    .param int pos             :named('p') :optional
    .param int has_pos         :opt_flag
    .param int cont            :named('c') :optional
    .param int has_cont        :opt_flag

    .local pmc cur_class, cur
    cur_class = find_lex '$?CLASS'
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

.sub '!cursor_start' :method :subid('Regex_Cursor_meth_!cursor_start') :outer('Regex_Cursor_Body')
    .param pmc lang            :optional
    .param int has_lang        :opt_flag

    if has_lang goto have_lang
    lang = self
  have_lang:

    .local pmc cur_class, cur
    cur_class = find_lex '$?CLASS'
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

.sub '!cursor_fail' :method :subid('Regex_Cursor_meth_!cursor_fail') :outer('Regex_Cursor_Body')
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
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

.sub '!cursor_pass' :method :subid('Regex_Cursor_meth_!cursor_pass') :outer('Regex_Cursor_Body')
    .param int pos
    .param string name

    .local pmc cur_class
    cur_class = find_lex '$?CLASS'

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

.sub '!cursor_backtrack' :method :subid('Regex_Cursor_meth_!cursor_backtrack') :outer('Regex_Cursor_Body')
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
    $P0 = getinterp
    $P1 = $P0['sub';1]
    setattribute self, cur_class, '&!regex', $P1
.end


=item !cursor_next()

Continue a regex match from where the current cursor left off.

=cut

.sub '!cursor_next' :method :subid('Regex_Cursor_meth_!cursor_next') :outer('Regex_Cursor_Body')
    .local pmc regex, cur, cur_class
    cur_class = find_lex '$?CLASS'
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

.sub '!cursor_caparray' :method :subid('Regex_Cursor_meth_!cursor_caparray') :outer('Regex_Cursor_Body')
    .param pmc caparray        :slurpy
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
    setattribute self, cur_class, '@!caparray', caparray
.end


=item !cursor_names(names)

Set the Cursor's name (for binding) to C<names>.

=cut

.sub '!cursor_names' :method :subid('Regex_Cursor_meth_!cursor_names') :outer('Regex_Cursor_Body')
    .param pmc names
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
    setattribute self, cur_class, '$!names', names
.end


=item !cursor_pos(pos)

Set the cursor's position to C<pos>.

=cut

.sub '!cursor_pos' :method :subid('Regex_Cursor_meth_!cursor_pos') :outer('Regex_Cursor_Body')
    .param int pos
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
    repr_bind_attr_int self, cur_class, '$!pos', pos
.end


=item !cursor_from(pos)

Set the cursor's from to C<from>.

=cut

.sub '!cursor_from' :method :subid('Regex_Cursor_meth_!cursor_from') :outer('Regex_Cursor_Body')
    .param int from
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
    repr_bind_attr_int self, cur_class, '$!from', from
.end


=item !cursor_debug(args :slurpy)

Log a debug message.

=cut

.sub '!cursor_debug' :method :subid('Regex_Cursor_meth_!cursor_debug') :outer('Regex_Cursor_Body')
    .param string tag
    .param pmc args            :slurpy
    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
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

.sub '!mark_push' :method :subid('Regex_Cursor_meth_!mark_push') :outer('Regex_Cursor_Body')
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
    cur_class = find_lex '$?CLASS'
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

.sub '!mark_peek' :method :subid('Regex_Cursor_meth_!mark_peek') :outer('Regex_Cursor_Body')
    .param int tomark

    .local pmc bstack, cur_class
    cur_class = find_lex '$?CLASS'
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

.sub '!mark_fail' :method :subid('Regex_Cursor_meth_!mark_fail') :outer('Regex_Cursor_Body')
    .param int mark

    .local pmc cur_class
    cur_class = find_lex '$?CLASS'

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

.sub '!mark_commit' :method :subid('Regex_Cursor_meth_!mark_commit') :outer('Regex_Cursor_Body')
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

.sub '!reduce' :method :subid('Regex_Cursor_meth_!reduce') :outer('Regex_Cursor_Body')
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

.sub '!BACKREF' :method :subid('Regex_Cursor_meth_!BACKREF') :outer('Regex_Cursor_Body')
    .param string name
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()

    # search the cursor cstack for the latest occurrence of C<name>
    .local pmc cstack, cur_class
    cur_class = find_lex '$?CLASS'
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

.sub '!INTERPOLATE' :method :subid('Regex_Cursor_meth_!INTERPOLATE') :outer('Regex_Cursor_Body')
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

.sub '!INTERPOLATE_REGEX' :method :subid('Regex_Cursor_meth_!INTERPOLATE_REGEX') :outer('Regex_Cursor_Body')
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

.sub 'Bool' :vtable('get_bool') :method :subid('Regex_Cursor_meth_Bool') :outer('Regex_Cursor_Body')
    .local pmc match,  cur_class
    cur_class = find_lex '$?CLASS'
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
### .include 'src/Regex/Cursor-builtins.pir'
# Copyright (C) 2009, The Perl Foundation.
# $Id$

=head1 NAME

Regex::Cursor-builtins - builtin regexes for Cursor objects

=cut

.include 'cclass.pasm'

.namespace ['Regex';'Cursor']

.sub 'before' :method :subid('Regex_Cursor_meth_before') :outer('Regex_Cursor_Body')
    .param pmc regex           :optional
    .local pmc cur
    .local int pos
    (cur, pos) = self.'!cursor_start'()
    if null regex goto fail
    $P0 = cur.regex()
    unless $P0 goto fail
    cur.'!cursor_pass'(pos, 'before')
  fail:
    .return (cur)
.end


.sub 'ident' :method :subid('Regex_Cursor_meth_ident') :outer('Regex_Cursor_Body')
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    eos = length tgt
    $S0 = substr tgt, pos, 1
    if $S0 == '_' goto ident_1
    $I0 = is_cclass .CCLASS_ALPHABETIC, tgt, pos
    unless $I0 goto fail
  ident_1:
    pos = find_not_cclass .CCLASS_WORD, tgt, pos, eos
    cur.'!cursor_pass'(pos, 'ident')
  fail:
    .return (cur)
.end

.sub 'wb' :method :subid('Regex_Cursor_meth_wb')
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    if pos == 0 goto pass
    eos = length tgt
    if pos == eos goto pass
    $I0 = pos - 1
    $I1 = is_cclass .CCLASS_WORD, tgt, $I0
    $I2 = is_cclass .CCLASS_WORD, tgt, pos
    if $I1 == $I2 goto fail
  pass:
    cur.'!cursor_pass'(pos, 'wb')
  fail:
    .return (cur)
.end

.sub 'ww' :method :subid('Regex_Cursor_meth_ww') :outer('Regex_Cursor_Body')
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    .local pmc debug
    #debug = getattribute cur, '$!debug'
    if null debug goto debug_1
    cur.'!cursor_debug'('START', 'ww')
  debug_1:
    if pos == 0 goto fail
    eos = length tgt
    if pos == eos goto fail
    $I0 = is_cclass .CCLASS_WORD, tgt, pos
    unless $I0 goto fail
    $I1 = pos - 1
    $I0 = is_cclass .CCLASS_WORD, tgt, $I1
    unless $I0 goto fail
  pass:
    cur.'!cursor_pass'(pos, 'ww')
    if null debug goto done
    cur.'!cursor_debug'('PASS', 'ww')
    goto done
  fail:
    if null debug goto done
    cur.'!cursor_debug'('FAIL', 'ww')
  done:
    .return (cur)
.end

.sub 'ws' :method :subid('Regex_Cursor_meth_ws') :outer('Regex_Cursor_Body')
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    eos = length tgt
    if pos >= eos goto pass
    if pos == 0 goto ws_scan
    $I0 = is_cclass .CCLASS_WORD, tgt, pos
    unless $I0 goto ws_scan
    $I1 = pos - 1
    $I0 = is_cclass .CCLASS_WORD, tgt, $I1
    if $I0 goto fail
  ws_scan:
    pos = find_not_cclass .CCLASS_WHITESPACE, tgt, pos, eos
  pass:
    cur.'!cursor_pass'(pos, 'ws')
  fail:
    .return (cur)
.end

.sub '!cclass' :anon
    .param pmc self
    .param string name
    .param int cclass
    .local pmc cur
    .local int pos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    .local pmc debug, cur_class
    cur_class = find_lex '$?CLASS'
    debug = getattribute cur, cur_class, '$!debug'
    if null debug goto debug_1
    cur.'!cursor_debug'('START', name)
  debug_1:
    $I0 = is_cclass cclass, tgt, pos
    unless $I0 goto fail
    inc pos
  pass:
    cur.'!cursor_pass'(pos, name)
    if null debug goto done
    cur.'!cursor_debug'('PASS', name)
    goto done
  fail:
    if null debug goto done
    cur.'!cursor_debug'('FAIL', name)
  done:
    .return (cur)
.end

.sub 'alpha' :method :subid('Regex_Cursor_meth_alpha') :outer('Regex_Cursor_Body')
    .local pmc cur
    .local int pos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    .local pmc debug, cur_class
    cur_class = find_lex '$?CLASS'
    debug = getattribute cur, cur_class, '$!debug'
    if null debug goto debug_1
    cur.'!cursor_debug'('START', 'alpha')
  debug_1:
    $I0 = is_cclass .CCLASS_ALPHABETIC, tgt, pos
    if $I0 goto pass

    $I0 = length tgt
    if pos >= $I0 goto fail

    $S0 = substr tgt, pos, 1
    if $S0 != '_' goto fail
  pass:
    inc pos
    cur.'!cursor_pass'(pos, 'alpha')
    if null debug goto done
    cur.'!cursor_debug'('PASS', 'alpha')
    goto done
  fail:
    if null debug goto done
    cur.'!cursor_debug'('FAIL', 'alpha')
  done:
    .return (cur)
.end

.sub 'upper' :method :subid('Regex_Cursor_meth_upper')
    .tailcall '!cclass'(self, 'upper', .CCLASS_UPPERCASE)
.end

.sub 'lower' :method :subid('Regex_Cursor_meth_lower')
    .tailcall '!cclass'(self, 'lower', .CCLASS_LOWERCASE)
.end

.sub 'digit' :method :subid('Regex_Cursor_meth_digit')
    .tailcall '!cclass'(self, 'digit', .CCLASS_NUMERIC)
.end

.sub 'xdigit' :method :subid('Regex_Cursor_meth_xdigit')
    .tailcall '!cclass'(self, 'xdigit', .CCLASS_HEXADECIMAL)
.end

.sub 'print' :method :subid('Regex_Cursor_meth_print')
    .tailcall '!cclass'(self, 'print', .CCLASS_PRINTING)
.end

.sub 'graph' :method :subid('Regex_Cursor_meth_graph')
    .tailcall '!cclass'(self, 'graph', .CCLASS_GRAPHICAL)
.end

.sub 'cntrl' :method :subid('Regex_Cursor_meth_cntrl')
    .tailcall '!cclass'(self, 'cntrl', .CCLASS_CONTROL)
.end

.sub 'punct' :method :subid('Regex_Cursor_meth_punct')
    .tailcall '!cclass'(self, 'punct', .CCLASS_PUNCTUATION)
.end

.sub 'alnum' :method :subid('Regex_Cursor_meth_alnum')
    .tailcall '!cclass'(self, 'alnum', .CCLASS_ALPHANUMERIC)
.end

.sub 'space' :method :subid('Regex_Cursor_meth_space')
    .tailcall '!cclass'(self, 'space', .CCLASS_WHITESPACE)
.end

.sub 'blank' :method :subid('Regex_Cursor_meth_blank')
    .tailcall '!cclass'(self, 'blank', .CCLASS_BLANK)
.end

.sub 'FAILGOAL' :method :subid('Regex_Cursor_meth_FAILGOAL') :outer('Regex_Cursor_Body')
    .param string goal
    .local string dba
    $P0 = getinterp
    $P0 = $P0['sub';1]
    dba = $P0
  have_dba:
    .local string message
    message = concat "Unable to parse ", dba
    message .= ", couldn't find final "
    message .= goal
    message .= ' at line '
    $P0 = get_hll_global ['Regex'], 'Cursor'
    $P0 = getattribute self, $P0, '$!target'
    $P1 = get_hll_global ['HLL'], 'Compiler'
    $I0 = self.'pos'()
    $I0 = $P1.'lineof'($P0, $I0)
    inc $I0
    $S0 = $I0
    message .= $S0
  have_line:
    die message
.end

.sub 'DEBUG' :method :subid('Regex_Cursor_meth_DEBUG') :outer('Regex_Cursor_Body')
    .param pmc arg             :optional
    .param int has_arg         :opt_flag

    if has_arg goto have_arg
    arg = get_global '$!TRUE'
  have_arg:

    .local pmc cur_class
    cur_class = find_lex '$?CLASS'
    setattribute self, cur_class, '$!debug', arg
    .return (1)
.end

=head1 AUTHORS

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
### .include 'src/Regex/Cursor-protoregex-peek.pir'
# Copyright (C) 2009, The Perl Foundation.

=head1 NAME

Regex::Cursor-protoregex-peek - simple protoregex implementation

=head1 DESCRIPTION

=over 4

.namespace ['Regex';'Cursor']

=item !protoregex(name)

Perform a match for protoregex C<name>.

=cut

.sub '!protoregex' :method :subid('Regex_Cursor_meth_!protoregex') :outer('Regex_Cursor_Body')
    .param string name

    .local pmc cur_class
    cur_class = find_lex '$?CLASS'

    .local pmc debug
    debug = getattribute self, cur_class, '$!debug'
    if null debug goto have_debug
    if debug goto have_debug
    null debug
  have_debug:

    .local pmc tokrx, toklen
    (tokrx, toklen) = self.'!protoregex_tokrx'(name)
  have_tokrx:

    if null debug goto debug_skip_1
    self.'!cursor_debug'('PROTO', name)
  debug_skip_1:

    # If there are no entries at all for this protoregex, we fail outright.
    unless tokrx goto fail

    # Figure out where we are in the current match.
    .local pmc target
    .local int pos
    target = getattribute self, cur_class, '$!target'
    pos = repr_get_attr_int self, cur_class, '$!pos'

    # Use the character at the current match position to determine
    # the longest possible token we could encounter at this point.
    .local string token1, token
    token1 = substr target, pos, 1
    $I0 = toklen[token1]
    token = substr target, pos, $I0

    if null debug goto debug_skip_2
    $S0 = escape token
    $S1 = escape token1
    self.'!cursor_debug'('NOTE', 'token1="', $S1, '", token="', $S0, '"')
  debug_skip_2:

    # Create a hash to keep track of the methods we've already called,
    # so that we don't end up calling it twice.
    .local pmc mcalled
    mcalled = new ['Hash']

    # Look in the tokrx hash for any rules that are keyed with the
    # current token.  If there aren't any, or the rules we have don't
    # match, then shorten the token by one character and try again
    # until we either have a match or we've run out of candidates.
  token_loop:
    .local pmc rx, result
    rx = tokrx[token]
    if null rx goto token_next
    $I0 = isa rx, ['ResizablePMCArray']
    if $I0 goto rx_array
    .local int rxaddr
    rxaddr = get_addr rx
    $P0 = mcalled[rxaddr]
    unless null $P0 goto token_next
    result = self.rx()
    mcalled[rxaddr] = mcalled
    if result goto done
    goto token_next
  rx_array:
    .local pmc rx_it
    rx_it = iter rx
  cand_loop:
    unless rx_it goto cand_done
    rx = shift rx_it
    rxaddr = get_addr rx
    $P0 = mcalled[rxaddr]
    unless null $P0 goto cand_loop
    result = self.rx()
    mcalled[rxaddr] = mcalled
    if result goto done
    goto cand_loop
  cand_done:
  token_next:
    unless token > '' goto fail
    token = chopn token, 1
    goto token_loop

  done:
    pos = result.'pos'()

    if null debug goto debug_skip_3
    self.'!cursor_debug'('PASS', name, ' at pos=', pos)
  debug_skip_3:

    .return (result)

  fail:
    if null debug goto debug_skip_4
    self.'!cursor_debug'('FAIL', name)
  debug_skip_4:
    unless null result goto fail_1
    result = self.'!cursor_start'()
    result.'!cursor_fail'()
  fail_1:
    .return (result)
.end


=item !protoregex_generation()

Reset the C<$!generation> flag to indicate that protoregexes
need to be recalculated (because new protoregexes have been
added).

=cut

.sub '!protoregex_generation' :method :subid('Regex_Cursor_meth_!protoregex_generation') :outer('Regex_Cursor_Body')
    $P0 = get_global '$!generation'
    # don't change this to 'inc' -- we want to ensure new PMC
    $P1 = add $P0, 1
    set_global '$!generation', $P1
    .return ($P1)
.end


=item !protoregex_tokrx(name)

Return the token list for protoregex C<name>.  If the list
doesn't already exist, or if the existing list is stale,
create a new one and return it.

=cut

.sub '!protoregex_tokrx' :method :subid('Regex_Cursor_meth_!protoregex_tokrx') :outer('Regex_Cursor_Body')
    .param string name

    .local pmc generation
    generation = get_global '$!generation'

    # Get the protoregex table for the current grammar.  If
    # a table doesn't exist or it's out of date, generate a
    # new one.
    .local pmc type_obj, prototable
    type_obj = get_what self
    prototable = getprop '%!prototable', type_obj
    if null prototable goto make_prototable
    $P0 = getprop '$!generation', prototable
    $I0 = issame $P0, generation
    if $I0 goto have_prototable
  make_prototable:
    prototable = self.'!protoregex_gen_table'(type_obj)
  have_prototable:

    # Obtain the toxrk and toklen hashes for the current grammar
    # from the protoregex table.  If they already exist, we're
    # done, otherwise we create new ones below.
    # yet for this table, then do that now.
    .local pmc tokrx, toklen
    $S0 = concat name, '.tokrx'
    tokrx = prototable[$S0]
    $S0 = concat name, '.toklen'
    toklen = prototable[$S0]
    unless null tokrx goto tokrx_done

    self.'!cursor_debug'('NOTE','Generating protoregex table for ', name)

    .local pmc toklen, tokrx
    toklen = new ['Hash']
    tokrx  = new ['Hash']

    # The prototable has already collected all of the names of
    # protoregex methods as keys in C<prototable>.  First
    # get a list of all of the methods that begin with "name:sym<".
    .local string mprefix
    .local int mlen
    mprefix = concat name, ':sym<'
    mlen   = length mprefix
    .local pmc methodlist, proto_it
    methodlist = new ['ResizableStringArray']
    proto_it = iter prototable
  proto_loop:
    unless proto_it goto proto_done
    .local string methodname
    methodname = shift proto_it
    $S0 = substr methodname, 0, mlen
    if $S0 != mprefix goto proto_loop
    push methodlist, methodname
    goto proto_loop
  proto_done:

    # Now, walk through all of the methods, building the
    # tokrx and toklen tables as we go.
    .local pmc sorttok
    sorttok = new ['ResizablePMCArray']
  method_loop:
    unless methodlist goto method_done
    methodname = shift methodlist

    # Look up the method itself.
    .local pmc rx
    rx = find_method self, methodname

    # Now find the prefix tokens for the method; calling the
    # method name with a !PREFIX__ prefix should return us a list
    # of valid token prefixes.  If no such method exists, then
    # our token prefix is a null string.
    .local pmc tokens, tokens_it
    $S0 = concat '!PREFIX__', methodname
    $I0 = can self, $S0
    unless $I0 goto method_peek_none
    tokens = self.$S0()
    goto method_peek_done
  method_peek_none:
    tokens = new ['ResizablePMCArray']
    push tokens, ''
  method_peek_done:

    # Now loop through all of the tokens for the method, updating
    # the longest length per initial token character and adding
    # the token to the tokrx hash.  Entries in the tokrx hash
    # are automatically promoted to arrays when there's more
    # than one candidate, and any arrays created are placed into
    # sorttok so they can have a secondary sort below.
    .local pmc seentok
    seentok = new ['Hash']
  tokens_loop:
    unless tokens goto tokens_done
    .local string tkey, tfirst
    $P0 = shift tokens
    $I0 = isa $P0, ['ResizablePMCArray']
    unless $I0 goto token_item
    splice tokens, $P0, 0, 0
    goto tokens_loop
  token_item:
    tkey = $P0

    # If we've already processed this token for this rule,
    # don't enter it twice into tokrx.
    $I0 = exists seentok[tkey]
    if $I0 goto tokens_loop
    seentok[tkey] = seentok

    # Keep track of longest token lengths by initial character
    tfirst = substr tkey, 0, 1
    $I0 = length tkey
    $I1 = toklen[tfirst]
    if $I0 <= $I1 goto toklen_done
    toklen[tfirst] = $I0
  toklen_done:

    # Add the regex to the list under the token key, promoting
    # entries to lists as appropriate.
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
    push sorttok, rxlist
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

    # in-place sort the keys that ended up with multiple entries
    .const 'Sub' $P99 = '!protoregex_cmp'
  sorttok_loop:
    unless sorttok goto sorttok_done
    rxlist = shift sorttok
    rxlist.'sort'($P99)
    goto sorttok_loop
  sorttok_done:

    # It's built!  Now store the tokrx and toklen hashes in the
    # prototable and return them to the caller.
    $S0 = concat name, '.tokrx'
    prototable[$S0] = tokrx
    $S0 = concat name, '.toklen'
    prototable[$S0] = toklen

  tokrx_done:
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

=item !protoregex_gen_table(type_obj)

Generate a new protoregex table for C<type_obj>.  This involves
creating a hash keyed with method names containing ':sym<' from
C<type_obj> and all of its superclasses.  This new hash is
then given the current C<$!generate> property so we can avoid
recreating it on future calls.

=cut

.sub '!protoregex_gen_table' :method :subid('Regex_Cursor_meth_!protoregex_gen_table') :outer('Regex_Cursor_Body')
    .param pmc type_obj

    .local pmc how
    how = get_how type_obj

    .local pmc prototable
    prototable = new ['Hash']
    .local pmc class_it, method_it
    $P0 = how.'parents'(type_obj)
    class_it = iter $P0
  class_loop:
    unless class_it goto class_done
    $P0 = shift class_it
    $P1 = get_how $P0
    $P0 = $P1.'method_table'($P0)
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
    setprop type_obj, '%!prototable', prototable
    .return (prototable)
.end


=item !PREFIX__!protoregex(name)

Return the set of initial tokens for protoregex C<name>.
These are conveniently available as the keys of the
tokrx hash.

=cut

.sub '!PREFIX__!protoregex' :method :subid('Regex_Cursor_meth_!PREFIX__!protoregex') :outer('Regex_Cursor_Body')
    .param string name

    .local pmc tokrx
    tokrx = self.'!protoregex_tokrx'(name)
    unless tokrx goto peek_none

    .local pmc results, tokrx_it
    results = new ['ResizablePMCArray']
    tokrx_it = iter tokrx
  tokrx_loop:
    unless tokrx_it goto tokrx_done
    $S0 = shift tokrx_it
    push results, $S0
    goto tokrx_loop
  tokrx_done:
    .return (results)

  peek_none:
    .return ('')
.end


.sub '!PREFIX__!subrule' :method :subid('Regex_Cursor_meth_!PREFIX__!subrule') :outer('Regex_Cursor_Body')
    .param string name
    .param string prefix

    .local string peekname
    peekname = concat '!PREFIX__', name
    $I0 = can self, peekname
    unless $I0 goto subrule_none

    # make sure we aren't recursing
    .local pmc context
    $P0 = getinterp
    context = $P0['context';1]
  caller_loop:
    if null context goto caller_done
    $P0 = getattribute context, 'current_sub'
    $S0 = $P0
    # stop if we find a name that doesn't begin with ! (33)
    $I0 = ord $S0
    if $I0 != 33 goto caller_done
    if $S0 == peekname goto subrule_none
    context = getattribute context, 'caller_ctx'
    goto caller_loop
  caller_done:

    .local pmc subtokens, tokens
    subtokens = self.peekname()
    unless subtokens goto subrule_none
    unless prefix goto prefix_none
    tokens = new ['ResizablePMCArray']
  subtokens_loop:
    unless subtokens goto subtokens_done
    $P0 = shift subtokens
    $I0 = isa $P0, ['ResizablePMCArray']
    unless $I0 goto subtokens_item
    splice subtokens, $P0, 0, 0
    goto subtokens_loop
  subtokens_item:
    $S0 = $P0
    $S0 = concat prefix, $S0
    push tokens, $S0
    goto subtokens_loop
  subtokens_done:
    .return (tokens)

  prefix_none:
    .return (subtokens)

  subrule_none:
    .return (prefix)
.end


.sub 'DUMP_TOKRX' :method :subid('Regex_Cursor_meth_DUMP_TOKRX') :outer('Regex_Cursor_Body')
    .param string name

    .local pmc tokrx
    tokrx = self.'!protoregex_tokrx'(name)
    _dumper(tokrx, name)
    .return (1)
.end

=back

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:

### .include 'src/Regex/Match.pir'
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
    get_hll_global NQPClassHOW, "NQPClassHOW"
    type_obj = NQPClassHOW."new_type"("Match" :named("name"))
    RegexWHO["Match"] = type_obj
    set_global "$?CLASS", type_obj
    how = get_how type_obj
    
    # XXXNS Old namespace handling installation, during migration to new.
    set_hll_global ["Regex"], "Match", type_obj

    # Add capture as parent.
    .local pmc capture
    capture = find_lex "NQPCapture"
    how.'add_parent'(type_obj, capture)

    # Add all methods.
    .const 'Sub' $P10 = 'Regex_Match_meth_CURSOR'
    how.'add_method'(type_obj, 'CURSOR', $P10)

    .const 'Sub' $P11 = 'Regex_Match_meth_from'
    how.'add_method'(type_obj, 'from', $P11)

    .const 'Sub' $P12 = 'Regex_Match_meth_to'
    how.'add_method'(type_obj, 'to', $P12)

    .const 'Sub' $P13 = 'Regex_Match_meth_chars'
    how.'add_method'(type_obj, 'chars', $P13)

    .const 'Sub' $P14 = 'Regex_Match_meth_orig'
    how.'add_method'(type_obj, 'orig', $P14)

    .const 'Sub' $P15 = 'Regex_Match_meth_Str'
    how.'add_method'(type_obj, 'Str', $P15)
    how.'add_parrot_vtable_mapping'(type_obj, 'get_string', $P15)

    .const 'Sub' $P16 = 'Regex_Match_meth_ast'
    how.'add_method'(type_obj, 'ast', $P16)

    .const 'Sub' $P17 = 'Regex_Match_meth_Bool'
    how.'add_method'(type_obj, 'Bool', $P17)
    how.'add_parrot_vtable_mapping'(type_obj, 'get_bool', $P17)

    .const 'Sub' $P18 = 'Regex_Match_meth_Int'
    how.'add_method'(type_obj, 'Int', $P18)
    how.'add_parrot_vtable_mapping'(type_obj, 'get_integer', $P18)

    .const 'Sub' $P19 = 'Regex_Match_meth_Num'
    how.'add_method'(type_obj, 'Num', $P19)
    how.'add_parrot_vtable_mapping'(type_obj, 'get_number', $P19)

    .const 'Sub' $P20 = 'Regex_Match_meth_!make'
    how.'add_method'(type_obj, '!make', $P20)

    # Add attributes.
    .local pmc NQPAttribute, int_type, attr
    NQPAttribute = get_hll_global "NQPAttribute"
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


=back

=head1 AUTHORS

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
### .include 'src/Regex/Method.pir'
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
### .include 'src/Regex/Dumper.pir'
# Copyright (C) 2005-2009, Parrot Foundation.
# Copyright (C) 2009, The Perl Foundation.
# $Id$

=head1 TITLE

Regex::Dumper - various methods for displaying Match structures

=head2 C<Regex::Match> Methods

=over 4

=item C<__dump(PMC dumper, STR label)>

This method enables Data::Dumper to work on Regex::Match objects.

=cut

.namespace ['Regex';'Match']

.sub "__dump" :method
    .param pmc dumper
    .param string label
    .local string indent, subindent
    .local pmc it, val
    .local string key
    .local pmc hash, array
    .local int hascapts

    (subindent, indent) = dumper."newIndent"()
    print "=> "
    $S0 = self
    dumper."genericString"("", $S0)
    print " @ "
    $I0 = self.'from'()
    print $I0
    hascapts = 0
    hash = self.'hash'()
    if_null hash, dump_array
    it = iter hash
  dump_hash_1:
    unless it goto dump_array
    if hascapts goto dump_hash_2
    print " {"
    hascapts = 1
  dump_hash_2:
    print "\n"
    print subindent
    key = shift it
    val = hash[key]
    print "<"
    print key
    print "> => "
    dumper."dump"(label, val)
    goto dump_hash_1
  dump_array:
    array = self.'list'()
    if_null array, dump_end
    $I1 = elements array
    $I0 = 0
  dump_array_1:
    if $I0 >= $I1 goto dump_end
    if hascapts goto dump_array_2
    print " {"
    hascapts = 1
  dump_array_2:
    print "\n"
    print subindent
    val = array[$I0]
    print "["
    print $I0
    print "] => "
    dumper."dump"(label, val)
    inc $I0
    goto dump_array_1
  dump_end:
    unless hascapts goto end
    print "\n"
    print indent
    print "}"
  end:
    dumper."deleteIndent"()
.end


=item C<dump_str()>

An alternate dump output for a Match object and all of its subcaptures.

=cut

.sub "dump_str" :method
    .param string prefix       :optional           # name of match variable
    .param int has_prefix      :opt_flag
    .param string b1           :optional           # bracket open
    .param int has_b1          :opt_flag
    .param string b2           :optional           # bracket close
    .param int has_b2          :opt_flag

    .local pmc capt
    .local int spi, spc
    .local pmc it
    .local string prefix1, prefix2
    .local pmc jmpstack
    jmpstack = new 'ResizableIntegerArray'

    if has_b2 goto start
    b2 = "]"
    if has_b1 goto start
    b1 = "["
  start:
    .local string out
    out = concat prefix, ':'
    unless self goto subpats
    out .= ' <'
    $S0 = self
    out .= $S0
    out .= ' @ '
    $S0 = self.'from'()
    out .= $S0
    out .= '> '

  subpats:
    $I0 = self
    $S0 = $I0
    out .= $S0
    out .= "\n"
    capt = self.'list'()
    if_null capt, subrules
    spi = 0
    spc = elements capt
  subpats_1:
    unless spi < spc goto subrules
    prefix1 = concat prefix, b1
    $S0 = spi
    prefix1 = concat prefix1, $S0
    prefix1 = concat prefix1, b2
    $I0 = defined capt[spi]
    unless $I0 goto subpats_2
    $P0 = capt[spi]
    local_branch jmpstack, dumper
  subpats_2:
    inc spi
    goto subpats_1

  subrules:
    capt = self.'hash'()
    if_null capt, end
    it = iter capt
  subrules_1:
    unless it goto end
    $S0 = shift it
    prefix1 = concat prefix, '<'
    prefix1 = concat prefix1, $S0
    prefix1 = concat prefix1, ">"
    $I0 = defined capt[$S0]
    unless $I0 goto subrules_1
    $P0 = capt[$S0]
    local_branch jmpstack, dumper
    goto subrules_1

  dumper:
    $I0 = isa $P0, ['Regex';'Match']
    unless $I0 goto dumper_0
    $S0 = $P0.'dump_str'(prefix1, b1, b2)
    out .= $S0
    local_return jmpstack
  dumper_0:
    $I0 = does $P0, 'array'
    unless $I0 goto dumper_3
    $I0 = 0
    $I1 = elements $P0
  dumper_1:
    if $I0 >= $I1 goto dumper_2
    $P1 = $P0[$I0]
    prefix2 = concat prefix1, b1
    $S0 = $I0
    prefix2 = concat prefix2, $S0
    prefix2 = concat prefix2, b2
    $S0 = $P1.'dump_str'(prefix2, b1, b2)
    out .= $S0
    inc $I0
    goto dumper_1
  dumper_2:
    local_return jmpstack
  dumper_3:
    out .= prefix1
    out .= ': '
    $S0 = $P0
    out .= $S0
    out .= "\n"
    local_return jmpstack

  end:
    .return (out)
.end


=back

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:

.sub '' :anon :load :init
    # Also want regex PAST and the dumper.
    load_bytecode 'PASTRegex.pbc'
    load_bytecode 'dumper.pbc'
    
    ## Import PAST and PCT to the HLL.
    .local pmc hllns, parrotns, imports
    hllns = get_hll_namespace
    parrotns = get_root_namespace ['parrot']
    imports = split ' ', 'PAST PCT _dumper'
    parrotns.'export_to'(hllns, imports)
.end

=head1 AUTHOR

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=head1 COPYRIGHT

Copyright (C) 2009-2011, The Perl Foundation.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
