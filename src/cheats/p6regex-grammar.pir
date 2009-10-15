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

.sub 'obs' :method
    .param string oldstr
    .param pmc action          :named('action') :optional
    .param pmc dba             :named('dba') :optional

    .local string newstr
    $P0 = split ';', oldstr
    oldstr = $P0[0]
    newstr = $P0[1]

    self.'panic'('Obsolete use of ', oldstr, '; please use ', newstr, ' instead')
.end
