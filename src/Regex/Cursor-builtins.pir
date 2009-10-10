# Copyright (C) 2009, Patrick R. Michaud
# $Id$

=head1 NAME

Regex::Cursor-builtins - builtin regexes for Cursor objects

=cut

.include 'cclass.pasm'

.namespace ['Regex';'Cursor']

.sub '!cclass' :method
    .param string name
    .param int cclass
    .local pmc cur
    .local int pos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    $I0 = is_cclass cclass, tgt, pos
    unless $I0 goto fail
    inc pos
    cur.'!matchify'(name, 'pos'=>pos)
  fail:
    .return (cur)
.end

.sub 'alpha' :method
    .tailcall self.'!cclass'('alpha', .CCLASS_ALPHABETIC)
.end

.sub 'digit' :method
    .tailcall self.'!cclass'('digit', .CCLASS_NUMERIC)
.end
    
=head1 AUTHORS

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
