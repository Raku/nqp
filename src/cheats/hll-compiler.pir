# we have to overload PCT::HLLCompiler's parse method to support P6Regex grammars


.namespace ['HLL';'Compiler']

.sub '' :anon :init :load
    load_bytecode 'PCT.pbc'
    .local pmc p6meta
    p6meta = get_hll_global 'P6metaclass'
    p6meta.'new_class'('HLL::Compiler', 'parent'=>'PCT::HLLCompiler')
.end
   

.sub 'parse' :method
    .param pmc source
    .param pmc options         :slurpy :named

    .local pmc parsegrammar, parseactions, match
    parsegrammar = self.'parsegrammar'()
    parseactions = self.'parseactions'()
    $I0 = isa parsegrammar, ['Regex';'Cursor']
    unless $I0 goto parse_old

    match = parsegrammar.'parse'(source, 'from'=>0, 'action'=>parseactions)
    unless match goto err_parsefail
    .return (match)

  err_parsefail:
    self.'panic'('Unable to parse source')
    .return (match)

  parse_old:
    $I0 = isa parsegrammar, ['NameSpace']
    if $I0 goto parse_old_1
    ##  switch from protoobjects to classes, then call parent
    $P0 = parsegrammar.'HOW'()
    $P0 = getattribute $P0, 'parrotclass'
    parsegrammar = $P0.'get_namespace'()
    self.'parsegrammar'(parsegrammar)

    $P0 = parseactions.'HOW'()
    $P0 = getattribute $P0, 'parrotclass'
    parseactions = $P0.'get_namespace'()
    self.'parseactions'(parseactions)

  parse_old_1:
    $P0 = get_hll_global ['PCT'], 'HLLCompiler'
    $P1 = find_method $P0, 'parse'
    .tailcall self.$P1(source, options :flat :named)
.end
