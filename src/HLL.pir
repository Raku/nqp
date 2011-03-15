# $Id$

=head1 NAME

HLL - Parrot HLL library

=head1 DESCRIPTION

This file brings together the various modules needed for HLL::Compiler
and HLL::Grammar.

=over 4

=cut

.HLL 'nqp'
.loadlib "nqp_group"
.loadlib "nqp_ops"

.include 'cclass.pasm'
.include 'src/Regex/constants.pir'
.include 'gen/hllgrammar-grammar.pir'
.include 'gen/hllgrammar-actions.pir'
.include 'gen/hllcompiler.pir'
.include 'gen/hllcommandline.pir'
.include 'gen/hllserializationcontextbuilder.pir'

=back

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
