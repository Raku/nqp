# Copyright (C) 2009, The Perl Foundation.

=head1 NAME

NQP::Compiler - NQP compiler

=head1 DESCRIPTION

=cut

.HLL 'nqp'

# Initialize meta-model.
.loadlib "nqp_group"
.loadlib "nqp_ops"
.sub '' :anon :load :init
    nqp_dynop_setup

    .local pmc interp, lexpad, nqplexpad
    interp = getinterp
    lexpad = get_class 'LexPad'
    nqplexpad = get_class 'NQPLexPad'
    interp.'hll_map'(lexpad, nqplexpad)
.end
.include 'gen/nqp-how.pir'

.sub '' :anon :load :init
    load_bytecode 'P6Regex.pbc'
    
    ## Bring in PAST and PCT
    .local pmc hllns, parrotns, imports
    hllns = get_hll_namespace
    parrotns = get_root_namespace ['parrot']
    imports = split ' ', 'PAST PCT'
    parrotns.'export_to'(hllns, imports)
.end

.include 'gen/nqp-grammar.pir'
.include 'gen/nqp-actions.pir'
.include 'gen/nqp-compiler.pir'
.include 'src/cheats/nqp-builtins.pir'

.namespace ['NQP';'Compiler']

.sub '' :anon :load :init
    .local pmc nqpproto, nqpcomp
    nqpproto = get_hll_global ['NQP'], 'Compiler'
    nqpcomp = nqpproto.'new'()
    nqpcomp.'language'('nqp')
    $P0 = get_hll_global ['NQP'], 'Grammar'
    nqpcomp.'parsegrammar'($P0)
    $P0 = get_hll_global ['NQP'], 'Actions'
    nqpcomp.'parseactions'($P0)
    $P0 = nqpcomp.'commandline_options'()
    push $P0, 'parsetrace'
    push $P0, 'setting=s'
.end

.sub 'main' :main
    .param pmc args_str

    $P0 = compreg 'nqp'
    $P1 = $P0.'command_line'(args_str, 'encoding'=>'utf8', 'transcode'=>'ascii iso-8859-1')
    exit 0
.end

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
