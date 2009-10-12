# Copyright (C) 2009, Patrick R. Michaud
# $Id$

=head1 NAME

Regex::Cursor-builtins - builtin regexes for Cursor objects

=cut

.include 'cclass.pasm'

.namespace ['Regex';'Cursor']

.sub 'ident' :method
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    eos = length tgt
    $S0 = substr tgt, pos, 1
    if $S0 == '_' goto ident_1
    $I0 = is_cclass .CCLASS_ALPHABETIC, tgt, pos
    unless $I0 goto fail
  ident_1:
    pos = find_not_cclass .CCLASS_WORD, tgt, pos, eos
    cur.'!cursor_pass'(pos, 'ident')
  fail:
    .return (cur)
.end

.sub 'wb' :method
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    if pos == 0 goto pass
    eos = length tgt
    if pos == eos goto pass
    $I0 = pos - 1
    $I1 = is_cclass .CCLASS_WORD, tgt, $I0
    $I2 = is_cclass .CCLASS_WORD, tgt, pos
    if $I1 == $I2 goto fail
  pass:
    cur.'!cursor_pass'(pos, 'wb')
  fail:
    .return (cur)
.end

.sub 'ww' :method
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    if pos == 0 goto fail
    eos = length tgt
    if pos == eos goto fail
    $I0 = is_cclass .CCLASS_WORD, tgt, pos
    unless $I0 goto fail
    $I1 = pos - 1
    $I0 = is_cclass .CCLASS_WORD, tgt, $I1
    unless $I0 goto fail
  pass:
    cur.'!cursor_pass'(pos, 'ww')
  fail:
    .return (cur)
.end

.sub 'ws' :method
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    eos = length tgt
    if pos >= eos goto pass
    if pos == 0 goto ws_scan
    $I0 = is_cclass .CCLASS_WORD, tgt, pos
    unless $I0 goto ws_scan
    $I1 = pos - 1
    $I0 = is_cclass .CCLASS_WORD, tgt, $I1
    if $I0 goto fail
  ws_scan:
    pos = find_not_cclass .CCLASS_WHITESPACE, tgt, pos, eos
  pass:
    cur.'!cursor_pass'(pos, 'ws')
  fail:
    .return (cur)
.end

.sub '!cclass' :anon
    .param pmc self
    .param string name
    .param int cclass
    .local pmc cur
    .local int pos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    $I0 = is_cclass cclass, tgt, pos
    unless $I0 goto fail
    inc pos
    cur.'!cursor_pass'(pos, name)
  fail:
    .return (cur)
.end

.sub 'alpha' :method
    .local pmc cur
    .local int pos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    $I0 = is_cclass .CCLASS_ALPHABETIC, tgt, pos
    if $I0 goto pass
    $S0 = substr tgt, pos, 1
    if $S0 != '_' goto fail
  pass:
    inc pos
    cur.'!cursor_pass'(pos, 'alpha')
  fail:
    .return (cur)
.end

.sub 'upper' :method
    .tailcall '!cclass'(self, 'upper', .CCLASS_UPPERCASE)
.end
    
.sub 'lower' :method
    .tailcall '!cclass'(self, 'lower', .CCLASS_LOWERCASE)
.end
    
.sub 'digit' :method
    .tailcall '!cclass'(self, 'digit', .CCLASS_NUMERIC)
.end

.sub 'xdigit' :method
    .tailcall '!cclass'(self, 'xdigit', .CCLASS_HEXADECIMAL)
.end

.sub 'print' :method
    .tailcall '!cclass'(self, 'print', .CCLASS_PRINTING)
.end

.sub 'graph' :method
    .tailcall '!cclass'(self, 'graph', .CCLASS_GRAPHICAL)
.end

.sub 'cntrl' :method
    .tailcall '!cclass'(self, 'cntrl', .CCLASS_CONTROL)
.end
    
.sub 'punct' :method
    .tailcall '!cclass'(self, 'punct', .CCLASS_PUNCTUATION)
.end

.sub 'alnum' :method
    .tailcall '!cclass'(self, 'alnum', .CCLASS_ALPHANUMERIC)
.end

.sub 'space' :method
    .tailcall '!cclass'(self, 'space', .CCLASS_WHITESPACE)
.end

.sub 'blank' :method
    .tailcall '!cclass'(self, 'blank', .CCLASS_BLANK)
.end

    
=head1 AUTHORS

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
