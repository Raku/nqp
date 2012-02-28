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
    .const 'Sub' $P5 = 'Imports'
    capture_lex $P5
.end

.sub '' :load :init :outer('Regex_Outer')
    # Create a serialization context for this compilation unit.
    .local pmc sc
    sc = nqp_create_sc "__REGEX_CORE_SC__"
    nqp_push_compiling_sc sc
    
    # Load setting.
    load_bytecode 'ModuleLoader.pbc'
    $P0 = get_hll_global 'ModuleLoader'
    $P1 = $P0.'load_setting'('NQPCORE')
	
    # Set it as the outer of the module's main block, then run that.
    .const 'Sub' $P2 = 'Regex_Outer'
    $P2.'set_outer_ctx'($P1)
    $P2()
    
    # Initialize SC code object counter.
    $P3 = box 0
    set_hll_global 'SC_CODE_COUNT', $P3
.end

.sub 'add_code_to_sc'
    .param pmc code

    $P0 = nqp_get_sc "__REGEX_CORE_SC__"
    $P1 = get_hll_global 'SC_CODE_COUNT'
    $I0 = $P1
    
    nqp_add_code_ref_to_sc $P0, $I0, code
    setprop code, 'SC', $P0
    setprop code, 'STATIC_CODE_REF', code
    
    inc $I0
    $P1 = box $I0
    set_hll_global 'SC_CODE_COUNT', $P1
.end

.include 'src/Regex/Cursor.pir'
.include 'src/Regex/Cursor-builtins.pir'
.include 'src/Regex/Cursor-protoregex-peek.pir'
.include 'src/Regex/Match.pir'
.include 'src/Regex/Method.pir'
.include 'src/Regex/Dumper.pir'

.sub '' :anon :load :init :outer('Regex_Outer') :subid('Imports')
    # Also want regex PAST and the dumper.
    load_bytecode 'PASTRegex.pbc'
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
    
    .local pmc _dumper
    _dumper = parrotns['_dumper']
    GLOBALishWHO['_dumper'] = _dumper
    
    # Add PAST dummy NS to the SC.
    $P0 = nqp_get_sc "__REGEX_CORE_SC__"
    nqp_set_sc_object "__REGEX_CORE_SC__", 4, PAST
    nqp_set_sc_for_object PAST, $P0
    
    # Add _dumper to the SC.
    'add_code_to_sc'(_dumper)
    
    ## XXX Legacy namespace import.
    .local pmc hllns, imports
    hllns = get_hll_namespace
    imports = split ' ', 'PAST _dumper'
    parrotns.'export_to'(hllns, imports)
    
    # Pop SC off current SCs stack.
    nqp_pop_compiling_sc
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
