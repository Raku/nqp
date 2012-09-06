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
.end

.include 'src/cheats/parrot-callcontext.pir'
.include 'src/cheats/parrot-sub.pir'

.sub '' :anon :load :init :outer('PAST_Outer') :subid('Imports')
    # Also want the dumper.
    load_bytecode 'dumper.pbc'
    
    ## Import PAST and _dumper to the HLL.
    .local pmc GLOBALish, GLOBALishWHO, KnowHOW, how, PAST
    GLOBALish = find_lex "GLOBALish"
    GLOBALishWHO = get_who GLOBALish
    
    KnowHOW = get_knowhow
    PAST = KnowHOW."new_type"("name"=>"PAST")
    how = get_how PAST
    how."compose"(PAST)
    GLOBALishWHO["PAST"] = PAST
    
    # Add PAST dummy NS to the SC.
    $P0 = nqp_get_sc "__PAST_CORE_SC__"
    nqp_set_sc_object "__PAST_CORE_SC__", 0, PAST
    nqp_set_sc_for_object PAST, $P0
    
    # Pop SC off current SCs stack.
    nqp_pop_compiling_sc
.end
