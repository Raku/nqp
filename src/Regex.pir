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

.include 'src/Regex/Cursor.pir'
.include 'src/Regex/Cursor-builtins.pir'
.include 'src/Regex/Cursor-protoregex-peek.pir'
.include 'src/Regex/Match.pir'
.include 'src/Regex/Method.pir'
.include 'src/Regex/Dumper.pir'

.HLL 'parrot'

.include 'src/PAST/Regex.pir'
.include 'src/PAST/Compiler-Regex.pir'
.include 'src/cheats/parrot-callcontext.pir'

.HLL 'nqp'

.sub '' :anon :load :init
    # Also want the dumper.
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
