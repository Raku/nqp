#!/usr/bin/env parrot

=head1 NAME

parrot-config.pir - display Parrot configuration for NQP

=head1 SYNOPSIS

  ./parrot parrot-config.pir ccflags

=head1 DESCRIPTION

Display the contents of Parrot's IGLOBALS_CONFIG_HASH, prefacing each
key with "parrot::".

Print out configuration items.

=cut

.include 'iglobals.pasm'

.sub "main" :main
    .local pmc interp, config_hash, config_iter
    interp = getinterp
    config_hash = interp[.IGLOBALS_CONFIG_HASH]
    config_iter = iter config_hash
  config_loop:
    unless config_iter goto config_done
    $P0 = shift config_iter
    print "parrot::"
    $S0 = $P0.'key'()
    print $S0
    print "="
    $S0 = $P0.'value'()
    print $S0
    print "\n"
    goto config_loop
  config_done:
    .return ()
.end
    
# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
