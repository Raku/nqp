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
    # Run the main block.
    .const 'Sub' $P2 = 'PAST_Outer'
    $P2()
.end

.include 'src/cheats/parrot-callcontext.pir'

.sub '' :anon :load :init :outer('PAST_Outer') :subid('Imports')
    load_bytecode 'dumper.pbc'
.end
