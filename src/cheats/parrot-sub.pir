# This adds to a Parrot PMC, so need to switch to that HLL for this
# file.
.HLL 'parrot'
.namespace ['Sub']
.sub 'nqpattr' :method
    .param string key
    .local string subid
    subid = self.'get_subid'()
    subid = concat subid, '_'
    key = concat subid, key
    $P0 = get_root_global ['nqp';'Sub'], key
    if null $P0 goto done
    $I0 = does $P0, 'invokable'
    unless $I0 goto done
    $P0 = $P0()
    set_root_global ['nqp';'Sub'], key, $P0
  done:
    .return ($P0)
.end
.HLL 'nqp'
