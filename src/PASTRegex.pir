.HLL 'parrot'
.loadlib "nqp_group"
.loadlib "nqp_ops"

.sub '' :subid('PAST_Outer')
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
    
    # Capture inner block.
    .const 'Sub' $P5 = 'Imports'
    capture_lex $P5
.end

.sub '' :load :init :outer('PAST_Outer')
    # Create a serialization context for this compilation unit.
    .local pmc sc
    sc = nqp_create_sc "__PAST_CORE_SC__"
    nqp_push_compiling_sc sc
    
    # Run the main block.
    .const 'Sub' $P2 = 'PAST_Outer'
    $P2()
.end

.sub '' :init :load
    load_bytecode 'P6object.pbc'
    load_bytecode 'PCT/PAST.pbc'
.end

.include 'src/PAST/SixModelPASTExtensions.pir'
.include 'src/PAST/NQP.pir'
.include 'src/cheats/parrot-callcontext.pir'
.include 'src/cheats/parrot-sub.pir'

.sub '' :anon :load :init :outer('PAST_Outer') :subid('Imports')
    # Also want the dumper.
    load_bytecode 'dumper.pbc'
    
    ## Import PAST and _dumper to the HLL.
    .local pmc parrotns, pastns, GLOBALish, GLOBALishWHO, KnowHOW, how, PAST, PASTWHO
    parrotns = get_root_namespace ['parrot']
    pastns = parrotns['PAST']
    GLOBALish = find_lex "GLOBALish"
    GLOBALishWHO = get_who GLOBALish
    
    KnowHOW = get_knowhow
    PAST = KnowHOW."new_type"("name"=>"PAST")
    how = get_how PAST
    how."compose"(PAST)
    GLOBALishWHO["PAST"] = PAST
    PASTWHO = get_who PAST
    
    $P0 = iter pastns
  it_loop:
    unless $P0 goto it_loop_end
    $S0 = shift $P0
    $P1 = pastns[$S0]
    $P1 = $P1[1]
    PASTWHO[$S0] = $P1
    goto it_loop
  it_loop_end:
    
    # Add PAST dummy NS to the SC.
    $P0 = nqp_get_sc "__PAST_CORE_SC__"
    nqp_set_sc_object "__PAST_CORE_SC__", 0, PAST
    nqp_set_sc_for_object PAST, $P0
    
    ## XXX Legacy namespace import.
    .local pmc hllns, imports
    hllns = get_hll_namespace
    imports = split ' ', 'PAST'
    parrotns.'export_to'(hllns, imports)
    
    # Pop SC off current SCs stack.
    nqp_pop_compiling_sc
.end
