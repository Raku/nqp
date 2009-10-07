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
