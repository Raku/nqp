plan(14);

my knowhow NFAType is repr('NFA') { }

my $EDGE_FATE            := 0;
my $EDGE_EPSILON         := 1;
my $EDGE_CODEPOINT       := 2;
my $EDGE_CODEPOINT_NEG   := 3;
my $EDGE_CHARCLASS       := 4;
my $EDGE_CHARCLASS_NEG   := 5;
my $EDGE_CHARLIST        := 6;
my $EDGE_CHARLIST_NEG    := 7;
my $EDGE_SUBRULE         := 8;
my $EDGE_CODEPOINT_I     := 9;
my $EDGE_CODEPOINT_I_NEG := 10;
my $EDGE_GENERIC_VAR     := 11;

my $empty := nqp::nfafromstatelist([[],[]],NFAType);
ok(nqp::istype($empty,NFAType),"nfafromstatelist creates an object of the right type");
my $empty_fates := nqp::nfarunproto($empty,"foo",0);
ok(nqp::elems($empty_fates) == 0,"an empty nfa matches no fates");

{
  # the target state of a FATE transition is ignore so we can pass anything
  my $simple := nqp::nfafromstatelist([[11],[$EDGE_CODEPOINT,102,2],[$EDGE_CODEPOINT,111,3],[$EDGE_CODEPOINT,111,4],[$EDGE_FATE,11,666]],NFAType);

  my $matching := nqp::nfarunproto($simple,"foo",0);
  ok(nqp::elems($matching) == 1,"we can match a simple string");
  ok(nqp::atpos_i($matching, 0) == 11,"...and we get the right fate");

  my $not_matching := nqp::nfarunproto($simple,"barfoo",0);
  ok(nqp::elems($not_matching) == 0,"we don't match what we shouldn't");

  my $matching_at_specified_pos := nqp::nfarunproto($simple,"barfoo",3);
  ok(nqp::elems($matching_at_specified_pos) == 1,"we match at the right position");
  ok(nqp::atpos_i($matching_at_specified_pos, 0) == 11,"...and we get the right fate");
}

{
  # the target state of a FATE transition is ignore so we can pass anything
  my $order := nqp::nfafromstatelist([[11,12,13],[$EDGE_CODEPOINT,102,2,$EDGE_CODEPOINT,102,5,$EDGE_CODEPOINT,102,9],[$EDGE_CODEPOINT,111,3],[$EDGE_CODEPOINT,111,4],[$EDGE_FATE,12,666],[$EDGE_CODEPOINT,111,6], [$EDGE_CODEPOINT,111,7],[$EDGE_FATE,11,666], [$EDGE_CODEPOINT,111,9],[$EDGE_CODEPOINT,111,10],[$EDGE_FATE,13,666]],NFAType);

  my $matching := nqp::nfarunproto($order,"foo",0);
  is(nqp::elems($matching), 3, 'right amount of fates');
  is(nqp::atpos_i($matching, 0), 13, 'right order of fates (1/3)');
  is(nqp::atpos_i($matching, 1), 12, 'right order of fates (2/3)');
  is(nqp::atpos_i($matching, 2), 11, 'right order of fates (3/3)');
}

{
  my $states := [
    ["x0", "x1", "x2", "NOT OK", "x4", "x5", "x6", "x7", "x8", "OK"],
    [$EDGE_EPSILON,0,5, $EDGE_EPSILON,0, 2],
    [$EDGE_CHARLIST, '$@%', 3],
    [$EDGE_FATE,3,0],
    [$EDGE_FATE,9,0],
    [-1073739506, 64, 4]
  ];

  my $nfa := nqp::nfafromstatelist($states, NFAType);

  my $fates := nqp::nfarunproto($nfa, '@', 0);

  is(nqp::elems($fates), 2, '2 fates are found');

  is(nqp::atpos_i($fates, 0), 3, 'a literal of length 1 is prefered');
  is(nqp::atpos_i($fates, 1), 9, 'the other fate is less prefered');
}
