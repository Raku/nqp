.namespace ['Regex';'P6Regex';'Grammar']

.sub 'quantifier' :method
    .param pmc action          :named('action') :optional
    .param pmc dba             :named('dba') :optional
    .tailcall self.'!protoregex'('quantifier', 'action'=>action)
.end

.sub 'metachar' :method
    .param pmc action          :named('action') :optional
    .param pmc dba             :named('dba') :optional
    .tailcall self.'!protoregex'('metachar', 'action'=>action)
.end

.sub 'backslash' :method
    .param pmc action          :named('action') :optional
    .param pmc dba             :named('dba') :optional
    .tailcall self.'!protoregex'('backslash', 'action'=>action)
.end

.sub 'assertion' :method
    .param pmc action          :named('action') :optional
    .param pmc dba             :named('dba') :optional
    .tailcall self.'!protoregex'('assertion', 'action'=>action)
.end

.sub 'mod_ident' :method
    .param pmc action          :named('action') :optional
    .param pmc dba             :named('dba') :optional
    .tailcall self.'!protoregex'('mod_ident', 'action'=>action)
.end

.sub 'panic' :method
    .param pmc args            :slurpy

    .local int pos
    .local pmc target
    $I0 = isa self, ['Regex';'Cursor']
    if $I0 goto cursor_pos
    pos = self.'to'()
    target = self.'orig'()
    goto have_pos
  cursor_pos:
    pos = self.'pos'()
    target = getattribute self, '$!target'
  have_pos:

    $I1 = target.'lineof'(pos)
    push args, ' at line '
    push args, $I1

    $S0 = target
    $S0 = substr $S0, pos, 10
    $S0 = escape $S0
    push args, ', near "'
    push args, $S0
    push args, '"'

    .local string message
    message = join '', args

    die message
.end

.sub 'obs' :method
    .param string oldstr
    .param pmc options         :slurpy :named

    .local string newstr
    $P0 = split ';', oldstr
    oldstr = $P0[0]
    newstr = $P0[1]

    self.'panic'('Obsolete use of ', oldstr, '; please use ', newstr, ' instead')
.end
