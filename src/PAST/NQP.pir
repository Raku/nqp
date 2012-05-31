# various NQP-related PAST hacks and experiments can go here

.namespace ['PAST';'Node']

.sub '' :anon :load :init
    .local pmc p6meta, base
    p6meta = new 'P6metaclass'
    base = get_hll_global ['PAST'], 'Node'
    p6meta.'new_class'('PAST::Want', 'parent'=>base)
    p6meta.'new_class'('PAST::QAST', 'parent'=>base)

    # add the nqp:: opcode map
    .const 'Sub' nqpmap = 'nqpmap'
    base.'map_add'('nqp', nqpmap)
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


=item lexotic(PAST::Op node)

Establish a lexotic label (continuation) that can be invoked 
via a lexical lookup.  The C<name> attribute gives the name of 
the lexical to be used to hold the continuation.  The result
of this node is any argument passed when invoking the continuation,
or the result of the last child node if the continuation isn't
invoked.

=cut

.sub 'lexotic' :method :multi(_, ['PAST';'Op'])
    .param pmc node
    .param pmc options         :slurpy :named

    .local pmc label1, label2
    $P0 = get_hll_global ['POST'], 'Label'
    label1 = $P0.'new'('name'=>'lexotic_')
    label2 = $P0.'new'('name'=>'lexotic_')

    .local string lexname
    lexname = node.'name'()
    lexname = self.'escape'(lexname)

    .local pmc ops, handler, cpost
    $P0 = get_hll_global ['POST'], 'Ops'
    ops = $P0.'new'('node'=>node)
    handler = self.'uniquereg'('P')
    ops.'push_pirop'('root_new', handler, "['parrot';'Continuation']")
    ops.'push_pirop'('set_label', handler, label1)
    ops.'push_pirop'('.lex', lexname, handler)
    .local pmc cpost
    cpost = self.'stmts'(node, 'rtype'=>'P')
    ops.'push'(cpost)
    ops.'result'(cpost)
    .local string result
    ops.'push_pirop'('goto', label2)
    ops.'push'(label1)
    result = ops.'result'()
    $S0 = concat '(', result
    $S0 = concat $S0, ')'
    ops.'push_pirop'('.get_results', $S0)
    ops.'push'(label2)
    .return (ops)
.end


=item hash(PAST::Op node)

Create a hash from the children.  The type of hash constructed
is determined by the C<returns> attribute, which defaults to
C<Hash> if not set.

=cut

.sub 'hash' :method :multi(_, ['PAST';'Op'])
    .param pmc node
    .param pmc options         :slurpy :named

    .local pmc ops, posargs
    $P0 = get_hll_global ['POST'], 'Ops'
    ops = $P0.'new'('node'=>node)

    .local pmc returns
    returns = node.'returns'()
    if returns goto have_returns
    returns = box 'Hash'
  have_returns:

    .local pmc hashpost, it
    hashpost = self.'as_vivipost'(returns, 'rtype'=>'P')
    ops.'result'(hashpost)
    ops.'push'(hashpost)
    it = node.'iterator'()
  iter_loop:
    unless it goto iter_done
    .local pmc kpast, kpost, vpast, vpost
    kpast = shift it
    kpost = self.'as_post'(kpast, 'rtype'=>'~')
    vpast = shift it
    vpost = self.'as_post'(vpast, 'rtype'=>'*')
    $S0 = hashpost
    $S0 = concat $S0, '['
    $S1 = kpost
    $S0 = concat $S0, $S1
    $S0 = concat $S0, ']'
    ops.'push'(vpost)
    ops.'push'(kpost)
    ops.'push_pirop'('set', $S0, vpost)
    goto iter_loop
  iter_done:
    .return (ops)
.end


=item xor_nqp(PAST::Op node)

A short-circuiting exclusive-or operation.  Essentially the
same as C<xor> in Parrot, but a named child of 'false' determines
the value to be returned if two children are true.

=cut

.sub 'xor_nqp' :method :multi(_,['PAST';'Op'])
    .param pmc node
    .param pmc options         :slurpy :named

    .local pmc ops
    $P0 = get_hll_global ['POST'], 'Ops'
    ops = $P0.'new'('node'=>node)
    $S0 = self.'unique'('$P')
    ops.'result'($S0)

    .local pmc labelproto, endlabel, falselabel
    labelproto = get_hll_global ['POST'], 'Label'
    falselabel = labelproto.'new'('name'=>'xor_false')
    endlabel = labelproto.'new'('name'=>'xor_end')

    .local pmc childlist, fpast, fpost, apast, apost, iter
    childlist = new ['ResizablePMCArray']
    iter = node.'iterator'()
 child_loop:
    unless iter goto child_done
    apast = shift iter
    $P0 = apast.'named'()
    if $P0 == 'false' goto child_false
    push childlist, apast
    goto child_loop
 child_false:
    fpast = apast
    goto child_loop
 child_done:

    .local pmc i, t, u
    i = self.'unique'('$I')
    t = self.'unique'('$I')
    u = self.'unique'('$I')
    apast = shift childlist
    apost = self.'as_post'(apast, 'rtype'=>'P')
    ops.'push'(apost)
    ops.'push_pirop'('set', ops, apost)
    ops.'push_pirop'('istrue', t, apost)
  middle_child:
    .local pmc bpast, bpost
    bpast = shift childlist
    bpost = self.'as_post'(bpast, 'rtype'=>'P')
    ops.'push'(bpost)
    ops.'push_pirop'('istrue', u, bpost)
    ops.'push_pirop'('and', i, t, u)
    ops.'push_pirop'('if', i, falselabel)
    unless childlist goto last_child
    .local pmc truelabel
    truelabel = labelproto.'new'('name'=>'xor_true')
    ops.'push_pirop'('if', t, truelabel)
    ops.'push_pirop'('set', ops, bpost)
    ops.'push_pirop'('set', t, u)
    ops.'push'(truelabel)
    goto middle_child
  last_child:
    ops.'push_pirop'('if', t, endlabel)
    ops.'push_pirop'('set', ops, bpost)
    ops.'push_pirop'('goto', endlabel)
    ops.'push'(falselabel)
    unless null fpast goto false_node
    ops.'push_pirop'('new', ops, '["Undef"]')
    goto done
  false_node:
    fpost = self.'as_post'(fpast, 'rtype'=>'P')
    ops.'push'(fpost)
    ops.'push_pirop'('set', ops, fpost)
  done:
    ops.'push'(endlabel)
    .return (ops)
.end


=item nqpdebug(PAST::Op node)

Generate debugging code using nqpdebskip and nqpevent.  The first
child is evaluated as an integer flag, used to skip over the
evaluation and logging of the second child.

=cut

.sub 'nqpdebug' :method :multi(_, ['PAST';'Op'])
    .param pmc node
    .param pmc options         :slurpy :named

    .local pmc debskip
    $P0 = get_hll_global ['POST'], 'Label'
    debskip = $P0.'new'('name'=>'nqpdeb_')

    .local pmc flagpost, strpost, ops
    $P0 = node[0]
    flagpost = self.'as_post'($P0, 'rtype'=>'i')
    flagpost = self.'coerce'(flagpost, 'i')
    $P1 = node[1]
    strpost = self.'as_post'($P1, 'rtype'=>'s')
    strpost = self.'coerce'(strpost, 's')
    $P0 = get_hll_global ['POST'], 'Ops'
    ops = $P0.'new'('node'=>node)
    ops.'push'(flagpost)
    ops.'push_pirop'('nqpdebskip', flagpost, debskip)
    ops.'push'(strpost)
    ops.'push_pirop'('nqpevent', strpost)
    ops.'push'(debskip)
    ops.'result'(flagpost)
    .return (ops)
.end


=item as_post(PAST::QAST)

Shim that lets us embed QAST:: nodes inside of a PAST tree.

=cut

.sub 'as_post' :method :multi(_, ['PAST';'QAST'])
    .param pmc node
    .param pmc options         :slurpy :named
    .lex '$*PASTCOMPILER', self
    $P0 = get_hll_global ['QAST'], 'Compiler'
    $P1 = node[0]
    $P2 = $P0.'as_post'($P1)
    .return ($P2)
.end
    

=item map_add(mapid, [hash])

Add entries from any C<hash> arguments to the pseudo-opcode table 
with identifier C<mapid>.  Slurpy named arguments are also added to
the hash (after all hash arguments have been processed).  The
resulting pseudo-opcode table hash for C<mapid> is returned.

The hash entries being added consist of pseudo-opcode (key, spec)
pairs describing the pseudo-opcode name and node type to be
constructed.  If C<spec> is a plain string, it's assumed to be
a Parrot C<pirop> opcode name.  (A future version may allow
strings of the form 'mapid::opcode' to reference an entry of
another map table.)

If C<spec> is a hash, it contains
attributes used to build a PAST node.  For example, the following
pseudo-code would cause the 'ifelse' pseudo-op in the 'nqp'
mapping space to to translate to a PAST::Op node with 'pasttype' 
set to 'if':

    $x := hash( 'WHAT' => PAST::Op, 'pasttype'=>'if' );
    PAST::Node.map_add('nqp', 'ifelse' => $x );

The 'WHAT' entry of such a hash defaults to PAST::Op if not specified.

=item map_node([args], 'map'=>mapid, 'op'=>opname, [options])

Create a node based on the mapping specification for C<opname>
from the pseudo-op mapping table given by C<mapid>.  The
C<args> and C<options> are combined with the mapping table
entry to produce the node to be returned.

=cut

.namespace ['PAST';'Node']
.sub 'map_add' :method
    .param string mapid
    .param pmc args            :slurpy
    .param pmc opt_hash        :slurpy :named

    .local pmc maptables, maphash
    maptables = get_global '%!maptables'
    unless null maptables goto have_maptables
    maptables = new ['Hash']
    set_global '%!maptables', maptables
  have_maptables:

    maphash = maptables[mapid]
    unless null maphash goto have_maphash
    maphash = new ['Hash']
    maptables[mapid] = maphash
  have_maphash:

  args_loop:
    unless args goto args_done
    .local pmc hash_it
    $P0 = shift args
    hash_it = iter $P0
  args_merge_loop:
    unless hash_it goto args_loop
    $P0 = shift hash_it
    $S1 = $P0.'key'()
    $P1 = $P0.'value'()
    maphash[$S1] = $P1
    goto args_merge_loop
  args_done:

    hash_it = iter opt_hash
  opts_loop:
    unless hash_it goto opts_done
    $P0 = shift hash_it
    $S1 = $P0.'key'()
    $P1 = $P0.'value'()
    maphash[$S1] = $P1
    goto opts_loop
  opts_done:

    .return (maphash)
.end

.namespace ['PAST';'Node']
.sub 'map_node' :method
    .param pmc args            :slurpy
    .param string mapid        :named('map')
    .param string opcode       :named('op')
    .param pmc options         :slurpy :named

    .local pmc maphash, ophash, past
    $P0 = get_global '%!maptables'
    maphash = $P0[mapid]
    if null maphash goto fail
    ophash = maphash[opcode]
    if null ophash goto fail

    $I0 = isa ophash, ['Hash']
    if $I0 goto have_ophash
    # handle case where the opspec is a simple (pirop) string
    $P0 = get_hll_global ['PAST'], 'Op'
    past = $P0.'new'(args :flat, 'pirop'=>ophash, options :named :flat)
    .return (past)

  have_ophash:
    # merge the ophash entries into options
    .local pmc ophash_it, key, value
    ophash_it = iter ophash
  ophash_loop:
    unless ophash_it goto ophash_done
    $P0 = shift ophash_it
    $S1 = $P0.'key'()
    $P1 = $P0.'value'()
    # don't overwrite an existing option
    $I0 = exists options[$S1]
    if $I0 goto ophash_loop
    options[$S1] = $P1
    goto ophash_loop
  ophash_done:

    # determine the 'what' value to use
    .local pmc what
    what = get_hll_global ['PAST'], 'Op'
    $I0 = exists options['WHAT']
    unless $I0 goto have_what
    what = options['WHAT']
    delete options['WHAT']
  have_what:

    past = what.'new'(args :flat, options :named :flat)
    .return (past)
    
  fail:
    $P0 = new ['Undef']
    .return ($P0)
.end


.sub 'nqpmap' :immediate :subid('nqpmap')
    .local pmc maphash
    maphash = new ['Hash']

    # I/O opcodes
    maphash['print'] = 'print'
    maphash['say']   = 'say'
    maphash['stat']   = 'stat__isi'
    maphash['open']   = 'open__Pss'

    # terms
    maphash['time_i'] = 'time__I'
    maphash['time_n'] = 'time__N'

    # arithmetic opcodes
    maphash['add_i']    = 'add__Iii'
    maphash['add_I']    = 'nqp_bigint_add__PPPP'
    maphash['add_n']    = 'add__Nnn'
    maphash['sub_i']    = 'sub__Iii'
    maphash['sub_I']    = 'nqp_bigint_sub__PPPP'
    maphash['sub_n']    = 'sub__Nnn'
    maphash['mul_i']    = 'mul__Iii'
    maphash['mul_I']    = 'nqp_bigint_mul__PPPP'
    maphash['mul_n']    = 'mul__Nnn'
    maphash['div_i']    = 'div__Iii'
    maphash['div_I']    = 'nqp_bigint_div__PPPP'
    maphash['div_In']   = 'nqp_bigint_div_num__NPP'
    maphash['div_n']    = 'div__Nnn'
    maphash['mod_i']    = 'mod__Iii'
    maphash['mod_I']    = 'nqp_bigint_mod__PPPP'
    maphash['expmod_I'] = 'nqp_bigint_exp_mod__PPPPP'
    maphash['mod_n']    = 'mod__Nnn'
    maphash['pow_n']    = 'pow__Nnn'
    maphash['pow_I']    = 'nqp_bigint_pow__PPPPP'
    maphash['neg_i']    = 'neg__Ii'
    maphash['neg_I']    = 'nqp_bigint_neg__PPP'
    maphash['neg_n']    = 'neg__Nn'
    maphash['abs_i']    = 'abs__Ii'
    maphash['abs_I']    = 'nqp_bigint_abs__PPP'
    maphash['abs_n']    = 'abs__Nn'

    maphash['gcd_i']    = 'gcd__Ii'
    maphash['gcd_I']    = 'nqp_bigint_gcd__PPP'
    maphash['lcm_i']    = 'lcm__Ii'
    maphash['lcm_I']    = 'nqp_bigint_lcm__PPP'

    maphash['ceil_n']   = 'ceil__Nn'
    maphash['floor_n']  = 'floor__NN'
    maphash['ln_n']     = 'ln__Nn'
    maphash['sqrt_n']   = 'sqrt__Nn'
    maphash['radix']    = 'nqp_radix__Pisii'
    maphash['radix_I']  = 'nqp_bigint_radix__PisiiP'
    maphash['log_n']    = 'ln__NN'
    maphash['exp_n']    = 'exp__Nn'

    maphash['isnanorinf'] = 'is_inf_or_nan__In'

    # trig opcodes
    maphash['sin_n']    = 'sin__NN'
    maphash['asin_n']   = 'asin__NN'
    maphash['cos_n']    = 'cos__NN'
    maphash['acos_n']   = 'acos__NN'
    maphash['tan_n']    = 'tan__NN'
    maphash['atan_n']   = 'atan__NN'
    maphash['atan2_n']  = 'atan__NNN'
    maphash['sec_n']    = 'sec__NN'
    maphash['asec_n']   = 'asec__NN'
    maphash['sin_n']    = 'sin__NN'
    maphash['asin_n']   = 'asin__NN'
    maphash['sinh_n']   = 'sinh__NN'
    maphash['cosh_n']   = 'cosh__NN'
    maphash['tanh_n']   = 'tanh__NN'
    maphash['sech_n']   = 'sech__NN'

    # bitwise ops
    maphash['bitor_i']  = 'bor__II'
    maphash['bitor_I']  = 'nqp_bigint_bor__PPPP'
    maphash['bitxor_i'] = 'bxor__II'
    maphash['bitxor_I'] = 'nqp_bigint_bxor__PPPP'
    maphash['bitand_i'] = 'band__II'
    maphash['bitand_I'] = 'nqp_bigint_band__PPPP'
    maphash['bitneg_i'] = 'bnot__II'
    maphash['bitneg_I'] = 'nqp_bigint_bnot__PP'
    maphash['bitshiftl_i']  = 'shl__III'
    maphash['bitshiftl_I']  = 'nqp_bigint_shl__PPIP'
    maphash['bitshiftr_i']  = 'shr__III'
    maphash['bitshiftr_I']  = 'nqp_bigint_shr__PPIP'

    maphash['bitor_s']  = 'bors__SS'
    maphash['bitxor_s'] = 'bxors__SS'
    maphash['bitand_s'] = 'bands__SS'

    # string opcodes
    maphash['chars']    = 'length__Is'
    maphash['concat']   = 'concat'          # allow either P or S form
    maphash['concat_s'] = 'concat__Sss'     # force S form
    maphash['join']     = 'join__SsP'
    maphash['split']    = 'split__Pss'
    maphash['index']    = 'index__Issi'
    maphash['rindex']   = 'rindex__ISSI'
    maphash['chr']      = 'chr__Si'
    maphash['ord']      = 'ord__Isi'
    maphash['lc']       = 'downcase__Ss'
    maphash['uc']       = 'upcase__Ss'
    maphash['substr']   = 'substr__Ssii'
    maphash['x']        = 'repeat__Ssi'
    maphash['iscclass'] = 'is_cclass__Iisi'
    maphash['findnotcclass'] = 'find_not_cclass__Iisii'
    maphash['sprintf']  = 'sprintf__SsP'
    maphash['find_not_cclass']  = 'find_not_cclass__Iisii'

    # relational opcodes
    maphash['cmp_i']    = 'cmp__Iii'
    maphash['iseq_i']   = 'iseq__Iii'
    maphash['isne_i']   = 'isne__Iii'
    maphash['islt_i']   = 'islt__Iii'
    maphash['isle_i']   = 'isle__Iii'
    maphash['isgt_i']   = 'isgt__Iii'
    maphash['isge_i']   = 'isge__Iii'

    maphash['bool_I']   = 'nqp_bigint_bool__iP'
    maphash['cmp_I']    = 'nqp_bigint_cmp__IPP'
    maphash['iseq_I']   = 'nqp_bigint_eq__IPP'
    maphash['isne_I']   = 'nqp_bigint_ne__IPP'
    maphash['islt_I']   = 'nqp_bigint_lt__IPP'
    maphash['isle_I']   = 'nqp_bigint_le__IPP'
    maphash['isgt_I']   = 'nqp_bigint_gt__IPP'
    maphash['isge_I']   = 'nqp_bigint_ge__IPP'

    maphash['cmp_n']    = 'cmp__Inn'
    maphash['iseq_n']   = 'iseq__Inn'
    maphash['isne_n']   = 'isne__Inn'
    maphash['islt_n']   = 'islt__Inn'
    maphash['isle_n']   = 'isle__Inn'
    maphash['isgt_n']   = 'isgt__Inn'
    maphash['isge_n']   = 'isge__Inn'

    maphash['cmp_s']    = 'cmp__Iss'
    maphash['iseq_s']   = 'iseq__Iss'
    maphash['isne_s']   = 'isne__Iss'
    maphash['islt_s']   = 'islt__Iss'
    maphash['isle_s']   = 'isle__Iss'
    maphash['isgt_s']   = 'isgt__Iss'
    maphash['isge_s']   = 'isge__Iss'

    # bigint ops
    maphash['fromstr_I'] = 'nqp_bigint_from_str__PsP'
    maphash['tostr_I']   = 'nqp_bigint_to_str__SP'
    maphash['base_I']    = 'nqp_bigint_to_str_base__SPI'
    maphash['isbig_I']   = 'nqp_bigint_is_big__IP'
    maphash['fromnum_I'] = 'nqp_bigint_from_num__PNP'
    maphash['tonum_I']   = 'nqp_bigint_to_num__NP'

    # native call ops
    maphash['buildnativecall'] = 'nqp_native_call_build__vPsssPP'
    maphash['nativecall']      = 'nqp_native_call__PPPP'
    
    # boolean opcodes
    maphash['not_i']    = 'not__Ii'

    # aggregate opcodes, mapping to the Parrot v-table functions
    maphash['atkey']    = 'set__PQs'
    maphash['atpos']    = 'set__PQi'
    maphash['atpos_i']  = 'set__IQi'
    maphash['atpos_n']  = 'set__NQi'
    maphash['atpos_s']  = 'set__SQi'
    maphash['bindkey']  = 'set__1QsP'
    maphash['bindpos']  = 'set__1QiP'
    maphash['bindpos_i'] = 'set__1Qii'
    maphash['bindpos_n'] = 'set__1Qin'
    maphash['bindpos_s'] = 'set__1Qis'
    maphash['deletekey'] = 'delete__0Qs'
    maphash['deletepos'] = 'delete__0Qi'
    maphash['existskey'] = 'exists__IQs'
    maphash['existspos'] = 'exists__IQi'
    maphash['elems']    = 'elements__IP'
    maphash['iterator'] = 'iter__PP'
    maphash['push']     = 'push__0PP'
    maphash['push_s']   = 'push__0Ps'
    maphash['push_i']   = 'push__0Pi'
    maphash['push_n']   = 'push__0Pn'
    maphash['pop']      = 'pop__PP'
    maphash['pop_s']    = 'pop__sP'
    maphash['pop_i']    = 'pop__iP'
    maphash['pop_n']    = 'pop__nP'
    maphash['shift']    = 'shift__PP'
    maphash['shift_s']  = 'shift__sP'
    maphash['shift_i']  = 'shift__iP'
    maphash['shift_n']  = 'shift__nP'
    maphash['unshift']  = 'unshift__0PP'
    maphash['unshift_s'] = 'unshift__0Ps'
    maphash['unshift_i'] = 'unshift__0Pi'
    maphash['unshift_n'] = 'unshift__0Pn'
    maphash['splice']   = 'splice__0PPii'
    $P0 = new ['Hash']
    $P0['pasttype'] = 'list'
    maphash['list'] = $P0
    $P0 = new ['Hash']
    $P0['pasttype'] = 'hash'
    maphash['hash'] = $P0

    # repr-level aggregate operations
    maphash['r_atpos']     = 'repr_at_pos_obj__PPi'
    maphash['r_atpos_i']   = 'repr_at_pos_int__IPi'
    maphash['r_atpos_n']   = 'repr_at_pos_num__NPi'
    maphash['r_bindpos']   = 'repr_bind_pos_obj__2PiP'
    maphash['r_bindpos_i'] = 'repr_bind_pos_int__2Pii'
    maphash['r_bindpos_n'] = 'repr_bind_pos_num__2Pin'
    
    # object opcodes
    maphash['bindattr']   = 'setattribute__3PPsP'
    maphash['bindattr_i'] = 'repr_bind_attr_int__3PPsi'
    maphash['bindattr_n'] = 'repr_bind_attr_num__3PPsn'
    maphash['bindattr_s'] = 'repr_bind_attr_str__3PPss'
    maphash['getattr']    = 'getattribute__PPPs'
    maphash['getattr_i']  = 'repr_get_attr_int__IPPs'
    maphash['getattr_n']  = 'repr_get_attr_num__NPPs'
    maphash['getattr_s']  = 'repr_get_attr_str__SPPs'
    maphash['create']     = 'repr_instance_of__PP'
    maphash['clone']      = 'clone__PP'
    maphash['isconcrete'] = 'repr_defined__IP'
    maphash['iscont']     = 'is_container__IP'
    maphash['isnull']     = 'isnull__IP'
    maphash['isnull_s']   = 'isnull__IS'
    maphash['istrue']     = 'istrue__IP'
    maphash['istype']     = 'type_check__IPP'
    maphash['null']       = 'null__P'
    maphash['unbox_i']    = 'repr_unbox_int__IP'
    maphash['unbox_n']    = 'repr_unbox_num__NP'
    maphash['unbox_s']    = 'repr_unbox_str__SP'
    maphash['box_i']      = 'repr_box_int__PiP'
    maphash['box_n']      = 'repr_box_num__PnP'
    maphash['box_s']      = 'repr_box_str__PsP'
    maphash['where']      = 'get_id__IP'
    maphash['can']        = 'can__IPs'
    maphash['does']       = 'does'
    maphash['isa']        = 'isa__IPs'
    maphash['new']        = 'new__PsP'
    maphash['find_method'] = 'find_method__pps'
    maphash['typeof']     = 'typeof__SP'

    # serialization context related opcodes
    maphash['sha1']       = 'nqp_sha1__Ss'

    # control opcodes
    $P0 = new ['Hash']
    $P0['pasttype'] = 'if'
    maphash['if'] = $P0

    $P0 = new ['Hash']
    $P0['pasttype'] = 'unless'
    maphash['unless'] = $P0

    $P0 = new ['Hash']
    $P0['pasttype'] = 'while'
    maphash['while'] = $P0

    $P0 = new ['Hash']
    $P0['pasttype'] = 'nqpdebug'
    maphash['deb'] = $P0

    maphash['die']      = 'die__vP'
    maphash['exit']     = 'exit__vi'
    maphash['sleep']    = 'sleep__vn'
    maphash['throw']    = 'throw__0P'
    maphash['rethrow']  = 'rethrow__0P'
    maphash['defined']  = 'defined__IP'

    .return (maphash)
.end
