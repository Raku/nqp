# This file contains extensions to PAST for integration with 6model.

.namespace [ 'PAST';'Node' ]

=item type([value])

Accessor method -- sets/returns the type object for the type that this
will evaluate to. Note that this really is the type object itself, not
some PAST that will produce it or a name that it can be looked up by.

=cut

.sub 'type' :method
    .param pmc value           :optional
    .param int has_value       :opt_flag
    .tailcall self.'attr'('type', value, has_value)
.end

.namespace [ 'PAST';'Compiler' ]

.loadlib 'nqp_ops'

.sub '' :anon :load :init
    # Add some extra op signatures.
    .local pmc piropsig
    piropsig = get_global '%piropsig'
    piropsig['repr_get_attr_obj'] = 'PPPsi'
    piropsig['repr_bind_attr_obj'] = 'vPPsiP'
    piropsig['repr_get_attr_int'] = 'IPPsi'
    piropsig['repr_bind_attr_int'] = 'vPPsii'
    piropsig['repr_get_attr_num'] = 'NPPsi'
    piropsig['repr_bind_attr_num'] = 'vPPsin'
    piropsig['repr_get_attr_str'] = 'SPPsi'
    piropsig['repr_bind_attr_str'] = 'vPPsis'
.end

.const int STORAGE_SPEC_BP_INT = 1
.const int STORAGE_SPEC_BP_NUM = 2
.const int STORAGE_SPEC_BP_STR = 3

.sub 'attribute_6model_type' :method
    .param pmc node

    # See if we have a type. If so, use it to determine what op to use
    # and what the register type will be.
    .local pmc type
    .local int primitive_type_id
    type = node.'type'()
    primitive_type_id = repr_get_primitive_type_spec type
    if primitive_type_id == STORAGE_SPEC_BP_INT goto prim_int
    if primitive_type_id == STORAGE_SPEC_BP_NUM goto prim_num
    if primitive_type_id == STORAGE_SPEC_BP_STR goto prim_str
    .return ('P', 'repr_get_attr_obj', 'repr_bind_attr_obj')
  prim_int:
    .return ('i', 'repr_get_attr_int', 'repr_bind_attr_int')
  prim_num:
    .return ('n', 'repr_get_attr_num', 'repr_bind_attr_num')
  prim_str:
    .return ('s', 'repr_get_attr_str', 'repr_bind_attr_str')
.end


.sub 'lexical_6model_type' :method
    .param pmc node

    # See if we have a type. If so, use it to determine what the
    # register type will be.
    .local pmc type
    .local int primitive_type_id
    type = node.'type'()
    primitive_type_id = repr_get_primitive_type_spec type
    if primitive_type_id == STORAGE_SPEC_BP_INT goto prim_int
    if primitive_type_id == STORAGE_SPEC_BP_NUM goto prim_num
    if primitive_type_id == STORAGE_SPEC_BP_STR goto prim_str
    .return ('P')
  prim_int:
    .return ('i')
  prim_num:
    .return ('n')
  prim_str:
    .return ('s')
.end


.sub 'attribute_6model' :method :multi(_, ['PAST';'Var'])
    .param pmc node
    .param pmc bindpost

    .local pmc ops
    $P0 = get_hll_global ['POST'], 'Ops'
    ops = $P0.'new'('node'=>node)

    unless bindpost goto have_bindpost
    $S0 = bindpost.'result'()
    bindpost = $P0.'new'('result'=>$S0)
  have_bindpost:

    .local string name, raw_name
    raw_name = node.'name'()
    name = self.'escape'(raw_name)
    
    # See if we have a type. If so, use it to determine what op to use
    # and what the register type will be.
    .local string get_attr_op, set_attr_op, coerce_reg_type
    (coerce_reg_type, get_attr_op, set_attr_op) = self.'attribute_6model_type'(node)

    # We have three cases here.
    #   0 children = use self
    #   1 child    = object to look up on
    #   2 children = object to look up on + class handle
    # In the last case, we need to generate a different form of the op that
    # has the extra argument.
    .local pmc call_on
    $I0 = elements node
    if $I0 == 0 goto use_self
    call_on = node[0]
    call_on = self.'as_post'(call_on, 'rtype'=>'P')
    ops.'push'(call_on)
    if $I0 == 2 goto have_class_handle
    goto invocant_done
  use_self:
    call_on = box 'self'
  invocant_done:

    if bindpost goto attribute_bind

  attribute_post:
    .local pmc fetchop, storeop
    $P0 = get_hll_global ['POST'], 'Op'
    if coerce_reg_type == 'P' goto need_vivify
    $P1 = self.'uniquereg'(coerce_reg_type)
    fetchop = $P0.'new'($P1, call_on, name, 'pirop'=>get_attr_op)
    ops.'push'(fetchop)
    ops.'result'($P1)
    .return (ops)
  need_vivify:
    fetchop = $P0.'new'(ops, call_on, name, 'pirop'=>get_attr_op)
    storeop = $P0.'new'(call_on, name, ops, 'pirop'=>set_attr_op)
    .tailcall self.'vivify'(node, ops, fetchop, storeop)

  attribute_bind:
    bindpost = self.'coerce'(bindpost, coerce_reg_type)
    ops.'push'(bindpost)
    ops.'push_pirop'(set_attr_op, call_on, name, bindpost)
    ops.'result'(bindpost)
    .return (ops)

  have_class_handle:
    .local pmc handle, handle_ctv
    .local int hint
    handle = node[1]
    $I0 = handle['has_compile_time_value']
    if $I0 goto handle_has_ctv
    hint = -1
    goto handle_ctv_done
  handle_has_ctv:
    handle_ctv = handle['compile_time_value']
    hint = repr_hint_for handle_ctv, handle_ctv, raw_name
  handle_ctv_done:
    handle = self.'as_post'(handle, 'rtype'=>'P')
    ops.'push'(handle)

    if bindpost goto attribute_bind_handle

    .local pmc fetchop, storeop
    $P0 = get_hll_global ['POST'], 'Op'
    if coerce_reg_type == 'P' goto need_vivify_handle
    $P1 = self.'uniquereg'(coerce_reg_type)
    fetchop = $P0.'new'($P1, call_on, handle, name, hint, 'pirop'=>get_attr_op)
    ops.'push'(fetchop)
    ops.'result'($P1)
    .return (ops)
  need_vivify_handle:
    fetchop = $P0.'new'(ops, call_on, handle, name, hint, 'pirop'=>get_attr_op)
    storeop = $P0.'new'(call_on, handle, name, hint, ops, 'pirop'=>set_attr_op)
    .tailcall self.'vivify'(node, ops, fetchop, storeop)

  attribute_bind_handle:
    bindpost = self.'coerce'(bindpost, coerce_reg_type)
    ops.'push'(bindpost)
    ops.'push_pirop'(set_attr_op, call_on, handle, name, hint, bindpost)
    ops.'result'(bindpost)
    .return (ops)
.end


.sub 'lexical_6model' :method :multi(_, ['PAST';'Var'])
    .param pmc node
    .param pmc bindpost

    .local string name
    name = node.'name'()
    name = self.'escape'(name)

    .local pmc lexregs
    lexregs = find_dynamic_lex '%*LEXREGS'

    .local int isdecl
    isdecl = node.'isdecl'()
    
    .local string reg_type
    (reg_type) = self.'lexical_6model_type'(node)

  lexical_post:
    if isdecl goto lexical_decl
    if bindpost goto lexical_bind
    
    .local pmc ops, fetchop, storeop
    $P0 = get_hll_global ['POST'], 'Ops'
    ops = $P0.'new'('node'=>node)
    if reg_type == 'P' goto need_vivify
    $P1 = self.'tempreg'(reg_type)
    ops.'result'($P1)
    if null lexregs goto no_lexregs_2
    .local string lexreg
    lexreg = lexregs[name]
    unless lexreg goto no_lexregs_2
    $P0 = get_hll_global ['POST'], 'Op'
    fetchop = $P0.'new'($P1, lexreg, 'pirop'=>'set')
    ops.'push'(fetchop)
    .return (ops)
  no_lexregs_2:
    $P0 = get_hll_global ['POST'], 'Op'
    fetchop = $P0.'new'($P1, name, 'pirop'=>'find_lex')
    ops.'push'(fetchop)
    .return (ops)
  need_vivify:
    $P0 = get_hll_global ['POST'], 'Op'
    if null lexregs goto no_lexregs
    .local string lexreg
    lexreg = lexregs[name]
    unless lexreg goto no_lexregs
    fetchop = $P0.'new'(ops, lexreg, 'pirop'=>'set')
    storeop = $P0.'new'(lexreg, ops, 'pirop'=>'set')
    .tailcall self.'vivify'(node, ops, fetchop, storeop)
  no_lexregs:
    fetchop = $P0.'new'(ops, name, 'pirop'=>'find_lex')
    storeop = $P0.'new'(name, ops, 'pirop'=>'store_lex')
    .tailcall self.'vivify'(node, ops, fetchop, storeop)
    
  lexical_decl:
    .local string lexreg
    # lexical registers cannot be temporaries
    lexreg = self.'uniquereg'(reg_type)
    $P0 = get_hll_global ['POST'], 'Ops'
    ops = $P0.'new'('node'=>node)
    if bindpost goto have_bindpost
    .local pmc viviself
    viviself = node.'viviself'()
    unless viviself goto have_lexreg
    bindpost = self.'as_vivipost'(viviself, 'rtype'=>reg_type)
    ops.'push'(bindpost)
  have_bindpost:
    ops.'push_pirop'('set', lexreg, bindpost)
  have_lexreg:
    ops.'push_pirop'('.lex', name, lexreg)
    .local int directaccess
    directaccess = node.'directaccess'()
    unless directaccess goto no_directaccess
    unless null lexregs goto have_lexregs
    lexregs = new 'Hash'
    store_dynamic_lex '%*LEXREGS', lexregs
  have_lexregs:
    lexregs[name] = lexreg
  no_directaccess:
    ops.'result'(lexreg)
    .return (ops)

  lexical_bind:
    $P0 = get_hll_global ['POST'], 'Op'
    if null lexregs goto no_lexregs_bind
    .local string lexreg
    lexreg = lexregs[name]
    unless lexreg goto no_lexregs_bind
    .tailcall $P0.'new'(lexreg, bindpost, 'pirop'=>'set', 'result'=>bindpost)
  no_lexregs_bind:
    .tailcall $P0.'new'(name, bindpost, 'pirop'=>'store_lex', 'result'=>bindpost)
.end


.sub 'bind_6model' :method :multi(_, ['PAST';'Op'])
    .param pmc node
    .param pmc options         :slurpy :named

    .local pmc ops, lpast, rpast, lpost, rpost
    lpast = node[0]
    rpast = node[1]

    .local string rtype
    rtype = 'P'
    $I0 = isa lpast, ['PAST';'Var']
    unless $I0 goto have_rtype
    $S0 = lpast.'scope'()
    if $S0 == 'lexical_6model' goto lexical_6model
    if $S0 != 'attribute_6model' goto have_rtype
    (rtype) = self.'attribute_6model_type'(lpast)
    goto have_rtype
  lexical_6model:
    (rtype) = self.'lexical_6model_type'(lpast)
  have_rtype:

    $P0 = get_hll_global ['POST'], 'Ops'
    ops = $P0.'new'('node'=>node)
    rpost = self.'as_post'(rpast, 'rtype'=>rtype)
    rpost = self.'coerce'(rpost, rtype)
    ops.'push'(rpost)

    lpast.'lvalue'(1)
    lpost = self.'as_post'(lpast, 'bindpost'=>rpost)
    ops.'push'(lpost)
    ops.'result'(lpost)
    .return (ops)
.end


