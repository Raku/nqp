# $Id$

=head1 NAME

Regex - Regex library

=head1 DESCRIPTION

This file brings together the various Regex modules needed for Regex.pbc .

=cut

.include 'src/Regex/Cursor.pir'
.include 'src/Regex/Cursor-builtins.pir'
.include 'src/Regex/Match.pir'
.include 'src/Regex/Method.pir'
.include 'src/Regex/Dumper.pir'
.include 'src/Regex/Cursor2.pir'
.include 'src/Regex/Cursor2-protoregex-peek.pir'

.include 'src/PAST/Regex.pir'
.include 'src/PAST/Compiler-Regex.pir'

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
