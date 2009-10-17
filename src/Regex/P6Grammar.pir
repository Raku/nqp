# Copyright (C) 2009, Patrick R. Michaud
# $Id$

=head1 NAME

Regex::P6Grammar - scaffolding compiler for NQP / Perl 6 grammars

=head1 DESCRIPTION

=cut

.namespace ['Regex';'P6Grammar';'Compiler']

.sub '' :anon :load :init
    load_bytecode 'PCT.pbc'
    load_bytecode 'p6regex.pbc'
    .local pmc p6meta, p6grammar
    p6meta = get_hll_global 'P6metaclass'
    p6grammar = p6meta.'new_class'('Regex::P6Grammar::Compiler', 'parent'=>'PCT::HLLCompiler')
    p6grammar.'language'('Regex::P6Grammar')
    $P0 = get_hll_global ['Regex';'P6Grammar'], 'Grammar'
    p6grammar.'parsegrammar'($P0)
    $P0 = get_hll_global ['Regex';'P6Grammar'], 'Actions'
    p6grammar.'parseactions'($P0)
.end

.sub 'main' :main
    .param pmc args_str

    $P0 = compreg 'Regex::P6Grammar'
    $P1 = $P0.'command_line'(args_str, 'encoding'=>'utf8', 'transcode'=>'ascii iso-8859-1')
    exit 0
.end

.include 'src/gen/p6grammar-grammar.pir'
.include 'src/gen/p6grammar-actions.pir'

.sub '' :anon :load :init
    .local pmc p6grammar
    p6grammar = get_hll_global ['Regex';'P6Grammar'], 'Grammar'
    $P0 = get_hll_global ['PGE';'Perl6Regex'], 'regex'
    $P1 = get_class ['Regex';'P6Grammar';'Grammar']
    $P1.'add_method'('regex', $P0)
.end

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
