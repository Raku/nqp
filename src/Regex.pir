# $Id$

=head1 NAME

Regex - Regex library

=head1 DESCRIPTION

This file brings together the various Regex modules needed for Regex.pbc .

=cut

.HLL 'nqp'

.sub '' :load :init
    load_bytecode 'SettingManager.pbc'
    $P0 = get_hll_global ['HLL'], 'SettingManager'
    $P0.'load_setting'('NQPCORE')
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

.HLL 'nqp'

.sub '' :anon :load :init
    ## Import PAST and PCT to the HLL.
    .local pmc hllns, parrotns, imports
    hllns = get_hll_namespace
    parrotns = get_root_namespace ['parrot']
    imports = split ' ', 'PAST PCT'
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
