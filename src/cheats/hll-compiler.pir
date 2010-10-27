# we have to overload PCT::HLLCompiler's parse method to support P6Regex grammars

.include 'cclass.pasm'

.namespace ['HLL';'Compiler']

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
    match = parsegrammar.'parse'(source, 'p'=>0, 'actions'=>parseactions, 'rxtrace'=>rxtrace)
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


.sub 'parse_name' :method
    .param string name

    # split name on ::
    .local pmc ns
    ns = split '::', name

    # move any leading sigil to the last item
    .local string sigil
    $S0 = ns[0]
    sigil = substr $S0, 0, 1
    $I0 = index '$@%&', sigil
    if $I0 < 0 goto sigil_done
    $S0 = replace $S0, 0, 1, ''
    ns[0] = $S0
    $S0 = ns[-1]
    $S0 = concat sigil, $S0
    ns[-1] = $S0
  sigil_done:

    # remove any empty items from the list
    .local pmc ns_it
    ns_it = iter ns
    ns = new ['ResizablePMCArray']
  ns_loop:
    unless ns_it goto ns_done
    $S0 = shift ns_it
    unless $S0 > '' goto ns_loop
    push ns, $S0
    goto ns_loop
  ns_done:

    # return the result
    .return (ns)
.end


# Temporarily backport PCT::HLLCompiler's 'lineof' method
# from Parrot r48866 into HLL::Compiler, so that nqp-rx can
# continue to build from an older Parrot until parrot's trunk
# is working again.  When we're able to bump PARROT_REVISION,
# this code can go away to fall back to Parrot's version (DRY).
=item lineof(target, pos [, cache :named('cache')])

Return the line number of offset C<pos> within C<target>.  The return
value uses zero for the first line.  If C<cache> is true, then
memoize the line offsets as a C<!lineof> property on C<target>.

=cut

.sub 'lineof' :method
    .param pmc target
    .param int pos
    .param int cache           :optional :named('cache')
    .local pmc linepos

    # If we've previously cached C<linepos> for target, we use it.
    unless cache goto linepos_build
    linepos = getprop '!linepos', target
    unless null linepos goto linepos_done

    # calculate a new linepos array.
  linepos_build:
    linepos = new ['ResizableIntegerArray']
    unless cache goto linepos_build_1
    setprop target, '!linepos', linepos
  linepos_build_1:
    .local string s
    .local int jpos, eos
    s = target
    eos = length s
    jpos = 0
    # Search for all of the newline markers in C<target>.  When we
    # find one, mark the ending offset of the line in C<linepos>.
  linepos_loop:
    jpos = find_cclass .CCLASS_NEWLINE, s, jpos, eos
    unless jpos < eos goto linepos_done
    $I0 = ord s, jpos
    inc jpos
    push linepos, jpos
    # Treat \r\n as a single logical newline.
    if $I0 != 13 goto linepos_loop
    $I0 = ord s, jpos
    if $I0 != 10 goto linepos_loop
    inc jpos
    goto linepos_loop
  linepos_done:

    # We have C<linepos>, so now we search the array for the largest
    # element that is not greater than C<pos>.  The index of that
    # element is the line number to be returned.
    # (Potential optimization: use a binary search.)
    .local int line, count
    count = elements linepos
    line = 0
  line_loop:
    if line >= count goto line_done
    $I0 = linepos[line]
    if $I0 > pos goto line_done
    inc line
    goto line_loop
  line_done:
    .return (line)
.end


# This sub serves as a cumulative "outer context" for code
# executed in HLL::Compiler's interactive REPL.  It's invoked
# exactly once upon load/init to obtain a context, and its
# default LexPad is replaced with a Hash that we can use to
# cumulatively store outer context information.  Both the
# context and hash are then made available via package
# variables.
.namespace []
.sub '&interactive_outer' :lex :init :load
    .local pmc ctx, pad
    $P0 = getinterp
    ctx = $P0['context']
    set_global ['HLL';'Compiler'], '$interactive_ctx', ctx
    pad = getattribute ctx, 'lex_pad'
    $P1 = new ['Hash']
    copy pad, $P1
    set_global ['HLL';'Compiler'], '%interactive_pad', pad
.end

