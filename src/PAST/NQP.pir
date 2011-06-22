# various NQP-related PAST hacks and experiments can go here

.namespace ['PAST';'Node']

.sub '' :anon :load :init
    .local pmc p6meta, base
    p6meta = new 'P6metaclass'
    base = get_hll_global ['PAST'], 'Node'
    p6meta.'new_class'('PAST::Want', 'parent'=>base)

    # add the nqp:: opcode map
    .const 'Sub' nqpmap = 'nqpmap'
    base.'map_add'('nqp', nqpmap)
.end


=head2 PAST::Want

A C<PAST::Want> node selects one of its children based on the
rtype (context) in which it's being evaluated.  The first
child is the default PAST to be evaluated.  The subsequent
children consist of (signature,past) pairs, the signature is
a string of rtypes, and the subsequent past node is the one
to be used if the caller's rtype matches any of the ones
listed in the signature.

Exactly one of the node's children will be selected.  It's
okay for a single PAST node to appear within multiple children,
as only one of the children will be selected.

=cut

=item as_post(PAST::Want)

Select a single past child based on rtype.

=cut

.namespace ['PAST';'Compiler']

.sub 'as_post' :method :multi(_, ['PAST';'Want'])
    .param pmc node
    .param pmc options         :slurpy :named

    .local string rtype
    rtype = options['rtype']

    .local pmc it, cpast, cpost
    it = node.'iterator'()
    cpast = shift it
    unless rtype goto child_done
  child_loop:
    unless it goto child_done
    $S0 = shift it                     # get the signature
    $P0 = shift it                     # get the past to use
    $I0 = index $S0, rtype
    if $I0 < 0 goto child_loop
    cpast = $P0
  child_done:
    cpost = self.'as_post'(cpast, options :flat :named)
    .return (cpost)
.end
    

=item map_add(mapid, [hash])

Add entries from any C<hash> arguments to the pseudo-opcode table 
with identifier C<mapid>.  Slurpy named arguments are also added to
the hash (after all hash arguments have been processed).  The
resulting pseudo-opcode table hash for C<mapid> is returned.

The hash entries being added consist of pseudo-opcode (key, spec)
pairs describing the pseudo-opcode name and node type to be
constructed.  If C<spec> is a plain string, it's assumed to be
a Parrot C<pirop> opcode name.  (A future version may allow
strings of the form 'mapid::opcode' to reference an entry of
another map table.)

If C<spec> is a hash, it contains
attributes used to build a PAST node.  For example, the following
pseudo-code would cause the 'ifelse' pseudo-op in the 'nqp'
mapping space to to translate to a PAST::Op node with 'pasttype' 
set to 'if':

    $x := hash( 'WHAT' => PAST::Op, 'pasttype'=>'if' );
    PAST::Node.map_add('nqp', 'ifelse' => $x );

The 'WHAT' entry of such a hash defaults to PAST::Op if not specified.

=item map_node([args], 'map'=>mapid, 'op'=>opname, [options])

Create a node based on the mapping specification for C<opname>
from the pseudo-op mapping table given by C<mapid>.  The
C<args> and C<options> are combined with the mapping table
entry to produce the node to be returned.

=cut

.namespace ['PAST';'Node']
.sub 'map_add' :method
    .param string mapid
    .param pmc args            :slurpy
    .param pmc opt_hash        :slurpy :named

    .local pmc maptables, maphash
    maptables = get_global '%!maptables'
    unless null maptables goto have_maptables
    maptables = new ['Hash']
    set_global '%!maptables', maptables
  have_maptables:

    maphash = maptables[mapid]
    unless null maphash goto have_maphash
    maphash = new ['Hash']
    maptables[mapid] = maphash
  have_maphash:

  args_loop:
    unless args goto args_done
    .local pmc hash_it
    $P0 = shift args
    hash_it = iter $P0
  args_merge_loop:
    unless hash_it goto args_loop
    $P0 = shift hash_it
    $S1 = $P0.'key'()
    $P1 = $P0.'value'()
    maphash[$S1] = $P1
    goto args_merge_loop
  args_done:

    hash_it = iter opt_hash
  opts_loop:
    unless hash_it goto opts_done
    $P0 = shift hash_it
    $S1 = $P0.'key'()
    $P1 = $P0.'value'()
    maphash[$S1] = $P1
    goto opts_loop
  opts_done:

    .return (maphash)
.end

.namespace ['PAST';'Node']
.sub 'map_node' :method
    .param pmc args            :slurpy
    .param string mapid        :named('map')
    .param string opcode       :named('op')
    .param pmc options         :slurpy :named

    .local pmc maphash, ophash, past
    $P0 = get_global '%!maptables'
    maphash = $P0[mapid]
    if null maphash goto fail
    ophash = maphash[opcode]
    if null ophash goto fail

    $I0 = isa ophash, ['Hash']
    if $I0 goto have_ophash
    # handle case where the opspec is a simple (pirop) string
    $P0 = get_hll_global ['PAST'], 'Op'
    past = $P0.'new'(args :flat, 'pirop'=>ophash, options :named :flat)
    .return (past)

  have_ophash:
    # merge the ophash entries into options
    .local pmc ophash_it, key, value
    ophash_it = iter ophash
  ophash_loop:
    unless ophash_it goto ophash_done
    $P0 = shift ophash_it
    $S1 = $P0.'key'()
    $P1 = $P0.'value'()
    # don't overwrite an existing option
    $I0 = exists options[$S1]
    if $I0 goto ophash_loop
    options[$S1] = $P1
    goto ophash_loop
  ophash_done:

    # determine the 'what' value to use
    .local pmc what
    what = get_hll_global ['PAST'], 'Op'
    $I0 = exists options['WHAT']
    unless $I0 goto have_what
    what = options['WHAT']
    null $P0
    options['WHAT'] = $P0
  have_what:

    past = what.'new'(args :flat, options :named :flat)
    .return (past)
    
  fail:
    $P0 = new ['Undef']
    .return ($P0)
.end


.sub 'nqpmap' :immediate :subid('nqpmap')
    .local pmc maphash
    maphash = new ['Hash']

    # I/O opcodes
    maphash['print'] = 'print'
    maphash['say']   = 'say'

    # arithmetic opcodes
    maphash['add_i']    = 'add__Iii'
    maphash['add_n']    = 'add__Nnn'
    maphash['sub_i']    = 'sub__Iii'
    maphash['sub_n']    = 'sub__Nnn'
    maphash['mul_i']    = 'mul__Iii'
    maphash['mul_n']    = 'mul__Nnn'
    maphash['div_i']    = 'div__Iii'
    maphash['div_n']    = 'div__Nnn'
    maphash['mod_i']    = 'mod__Iii'
    maphash['mod_n']    = 'mod__Nnn'

    # string opcodes
    maphash['chars']    = 'length__Is'
    maphash['concat']   = 'concat'          # allow either P or S form
    maphash['join']     = 'join__SsP'
    maphash['split']    = 'split__Pss'
    maphash['index']    = 'index__Issi'
    maphash['chr']      = 'chr__Si'
    maphash['ord']      = 'ord__Is'
    maphash['lc']       = 'downcase__Ss'
    maphash['uc']       = 'upcase__Ss'

    # relational opcodes
    maphash['iseq_i']   = 'iseq__Iii'
    maphash['isne_i']   = 'isne__Iii'
    maphash['islt_i']   = 'islt__Iii'
    maphash['isle_i']   = 'isle__Iii'
    maphash['isgt_i']   = 'isgt__Iii'
    maphash['isge_i']   = 'isge__Iii'

    maphash['iseq_n']   = 'iseq__Inn'
    maphash['isne_n']   = 'isne__Inn'
    maphash['islt_n']   = 'islt__Inn'
    maphash['isle_n']   = 'isle__Inn'
    maphash['isgt_n']   = 'isgt__Inn'
    maphash['isge_n']   = 'isge__Inn'

    maphash['iseq_s']   = 'iseq__Iss'
    maphash['isne_s']   = 'isne__Iss'
    maphash['islt_s']   = 'islt__Iss'
    maphash['isle_s']   = 'isle__Iss'
    maphash['isgt_s']   = 'isgt__Iss'
    maphash['isge_s']   = 'isge__Iss'

    # aggregate opcodes
    maphash['elems']    = 'elements__IP'
    maphash['push']     = 'push__0PP'
    maphash['pop']      = 'pop__PP'
    maphash['shift']    = 'shift__PP'
    maphash['unshift']  = 'unshift__0PP'
    maphash['splice']   = 'splice__0PPii'
    maphash['atpos']    = 'set__PQi'
    maphash['bindpos']  = 'set__1QiP'
    maphash['existspos'] = 'exists__IQi'
    maphash['deletepos'] = 'delete__0Qi'
    maphash['atkey']    = 'set__PQs'
    maphash['bindkey']  = 'set__1QsP'
    maphash['existskey'] = 'exists__IQs'
    maphash['deletekey'] = 'delete__0Qs'

    # object opcodes
    maphash['unbox_i']   = 'repr_unbox_int__IP'
    maphash['unbox_n']   = 'repr_unbox_num__NP'
    maphash['unbox_s']   = 'repr_unbox_str__SP'

    # control opcodes
    $P0 = new ['Hash']
    $P0['pasttype'] = 'if'
    maphash['if']       = $P0

    $P0 = new ['Hash']
    $P0['pasttype'] = 'unless'
    maphash['unless']   = $P0

    $P0 = new ['Hash']
    $P0['pasttype'] = 'while'
    maphash['while']    = $P0

    .return (maphash)
.end
