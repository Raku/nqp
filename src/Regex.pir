# $Id$

=head1 NAME

Regex - Regex library

=head1 DESCRIPTION

This file brings together the various Regex modules needed for Regex.pbc .

=cut

.HLL 'nqp'
.loadlib "nqp_group"
.loadlib "nqp_ops"

.sub '' :load :init
    # Create a serialization context for this compilation unit.
    .local pmc sc
    sc = nqp_create_sc "__REGEX_CORE_SC__"
    
    # Load setting.
    load_bytecode 'SettingManager.pbc'
    $P0 = get_hll_global ['HLL'], 'SettingManager'
    say "# loading setting"
    $P1 = $P0.'load_setting'('NQPCORE')
    $P1 = getattribute $P1, 'lex_pad'
    set_hll_global 'SETTING', $P1
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

Copyright (C) 2009, The Perl Foundation.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
