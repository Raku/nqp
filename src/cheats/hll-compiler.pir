# we have to overload PCT::HLLCompiler's parse method to support P6Regex grammars


.namespace ['HLL';'Compiler']

.sub '' :anon :init :load
    load_bytecode 'PCT/HLLCompiler.pbc'
    .local pmc p6meta
    p6meta = get_hll_global 'P6metaclass'
    p6meta.'new_class'('HLL::Compiler', 'parent'=>'PCT::HLLCompiler')
.end


.sub 'parse' :method
    .param pmc source
    .param pmc options         :slurpy :named

    .local string tcode
    tcode = options['transcode']
    unless tcode goto transcode_done
    .local pmc tcode_it
    $P0 = split ' ', tcode
    tcode_it = iter $P0
  tcode_loop:
    unless tcode_it goto transcode_done
    tcode = shift tcode_it
    push_eh tcode_enc
    $I0 = find_charset tcode
    $S0 = source
    $S0 = trans_charset $S0, $I0
    assign source, $S0
    pop_eh
    goto transcode_done
  tcode_enc:
    pop_eh
    push_eh tcode_fail
    $I0 = find_encoding tcode
    $S0 = source
    $S0 = trans_encoding $S0, $I0
    assign source, $S0
    pop_eh
    goto transcode_done
  tcode_fail:
    pop_eh
    goto tcode_loop
  transcode_done:

    .local pmc parsegrammar, parseactions, match
    parsegrammar = self.'parsegrammar'()

    null parseactions
    $S0 = options['target']
    if $S0 == 'parse' goto have_parseactions
    parseactions = self.'parseactions'()
  have_parseactions:

    .local int rxtrace
    rxtrace = options['parsetrace']
    match = parsegrammar.'parse'(source, 'from'=>0, 'actions'=>parseactions, 'rxtrace'=>rxtrace)
    unless match goto err_parsefail
    .return (match)

  err_parsefail:
    self.'panic'('Unable to parse source')
    .return (match)
.end


.sub 'pir' :method
    .param pmc source
    .param pmc adverbs         :slurpy :named

    $P0 = compreg 'POST'
    $S0 = $P0.'to_pir'(source, adverbs :flat :named)
    .return ($S0)
.end

