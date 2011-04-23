# Copyright (C) 2009, The Perl Foundation.
# $Id$

=head1 NAME

Regex::Cursor-builtins - builtin regexes for Cursor objects

=cut

.include 'cclass.pasm'

.namespace ['Regex';'Cursor']

.sub 'before' :method :subid('Regex_Cursor_meth_before')
    .param pmc regex           :optional
    .local pmc cur
    .local int pos
    (cur, pos) = self.'!cursor_start'()
    if null regex goto fail
    $P0 = cur.regex()
    unless $P0 goto fail
    cur.'!cursor_pass'(pos, 'before')
  fail:
    .return (cur)
.end


.sub 'ident' :method :subid('Regex_Cursor_meth_ident')
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

.sub 'wb' :method :subid('Regex_Cursor_meth_wb')
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

.sub 'ww' :method :subid('Regex_Cursor_meth_ww')
    .local pmc cur
    .local int pos, eos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    .local pmc debug
    #debug = getattribute cur, '$!debug'
    if null debug goto debug_1
    cur.'!cursor_debug'('START', 'ww')
  debug_1:
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
    if null debug goto done
    cur.'!cursor_debug'('PASS', 'ww')
    goto done
  fail:
    if null debug goto done
    cur.'!cursor_debug'('FAIL', 'ww')
  done:
    .return (cur)
.end

.sub 'ws' :method :subid('Regex_Cursor_meth_ws')
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
    .local pmc debug, cur_class
    cur_class = get_global '$?CLASS'
    debug = getattribute cur, cur_class, '$!debug'
    if null debug goto debug_1
    cur.'!cursor_debug'('START', name)
  debug_1:
    $I0 = is_cclass cclass, tgt, pos
    unless $I0 goto fail
    inc pos
  pass:
    cur.'!cursor_pass'(pos, name)
    if null debug goto done
    cur.'!cursor_debug'('PASS', name)
    goto done
  fail:
    if null debug goto done
    cur.'!cursor_debug'('FAIL', name)
  done:
    .return (cur)
.end

.sub 'alpha' :method :subid('Regex_Cursor_meth_alpha')
    .local pmc cur
    .local int pos
    .local string tgt
    (cur, pos, tgt) = self.'!cursor_start'()
    .local pmc debug, cur_class
    cur_class = get_global '$?CLASS'
    debug = getattribute cur, cur_class, '$!debug'
    if null debug goto debug_1
    cur.'!cursor_debug'('START', 'alpha')
  debug_1:
    $I0 = is_cclass .CCLASS_ALPHABETIC, tgt, pos
    if $I0 goto pass

    $I0 = length tgt
    if pos >= $I0 goto fail

    $S0 = substr tgt, pos, 1
    if $S0 != '_' goto fail
  pass:
    inc pos
    cur.'!cursor_pass'(pos, 'alpha')
    if null debug goto done
    cur.'!cursor_debug'('PASS', 'alpha')
    goto done
  fail:
    if null debug goto done
    cur.'!cursor_debug'('FAIL', 'alpha')
  done:
    .return (cur)
.end

.sub 'upper' :method :subid('Regex_Cursor_meth_upper')
    .tailcall '!cclass'(self, 'upper', .CCLASS_UPPERCASE)
.end

.sub 'lower' :method :subid('Regex_Cursor_meth_lower')
    .tailcall '!cclass'(self, 'lower', .CCLASS_LOWERCASE)
.end

.sub 'digit' :method :subid('Regex_Cursor_meth_digit')
    .tailcall '!cclass'(self, 'digit', .CCLASS_NUMERIC)
.end

.sub 'xdigit' :method :subid('Regex_Cursor_meth_xdigit')
    .tailcall '!cclass'(self, 'xdigit', .CCLASS_HEXADECIMAL)
.end

.sub 'print' :method :subid('Regex_Cursor_meth_print')
    .tailcall '!cclass'(self, 'print', .CCLASS_PRINTING)
.end

.sub 'graph' :method :subid('Regex_Cursor_meth_graph')
    .tailcall '!cclass'(self, 'graph', .CCLASS_GRAPHICAL)
.end

.sub 'cntrl' :method :subid('Regex_Cursor_meth_cntrl')
    .tailcall '!cclass'(self, 'cntrl', .CCLASS_CONTROL)
.end

.sub 'punct' :method :subid('Regex_Cursor_meth_punct')
    .tailcall '!cclass'(self, 'punct', .CCLASS_PUNCTUATION)
.end

.sub 'alnum' :method :subid('Regex_Cursor_meth_alnum')
    .tailcall '!cclass'(self, 'alnum', .CCLASS_ALPHANUMERIC)
.end

.sub 'space' :method :subid('Regex_Cursor_meth_space')
    .tailcall '!cclass'(self, 'space', .CCLASS_WHITESPACE)
.end

.sub 'blank' :method :subid('Regex_Cursor_meth_blank')
    .tailcall '!cclass'(self, 'blank', .CCLASS_BLANK)
.end

.sub 'FAILGOAL' :method :subid('Regex_Cursor_meth_FAILGOAL')
    .param string goal
    .local string dba
    $P0 = getinterp
    $P0 = $P0['sub';1]
    dba = $P0
  have_dba:
    .local string message
    message = concat "Unable to parse ", dba
    message .= ", couldn't find final "
    message .= goal
    message .= ' at line '
    $P0 = get_hll_global ['Regex'], 'Cursor'
    $P0 = getattribute self, $P0, '$!target'
    $P1 = get_hll_global ['HLL'], 'Compiler'
    $I0 = self.'pos'()
    $I0 = $P1.'lineof'($P0, $I0)
    inc $I0
    $S0 = $I0
    message .= $S0
  have_line:
    die message
.end

.sub 'DEBUG' :method :subid('Regex_Cursor_meth_DEBUG')
    .param pmc arg             :optional
    .param int has_arg         :opt_flag

    if has_arg goto have_arg
    arg = get_global '$!TRUE'
  have_arg:

    .local pmc cur_class
    cur_class = get_global '$?CLASS'
    setattribute self, cur_class, '$!debug', arg
    .return (1)
.end

=head1 AUTHORS

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
