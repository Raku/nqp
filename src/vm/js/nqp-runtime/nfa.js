var op = {};
exports.op = op;

var EDGE_FATE = 0,
    EDGE_EPSILON = 1,
    EDGE_CODEPOINT = 2,
    EDGE_CODEPOINT_NEG = 3,
    EDGE_CHARCLASS = 4,
    EDGE_CHARCLASS_NEG = 5,
    EDGE_CHARLIST = 6,
    EDGE_CHARLIST_NEG = 7,
    EDGE_SUBRULE = 8,
    EDGE_CODEPOINT_I = 9,
    EDGE_CODEPOINT_I_NEG = 10,
    EDGE_GENERIC_VAR = 11;

// TODO think about type conversions of the stuff inside the array
op.nfafromstatelist = function(states, type) {
  var nfa = type._STable.REPR.allocate(type._STable);
  nfa.fates = states[0];
  nfa.states = [];
  for (var i = 1; i < states.length; i++) {
    nfa.states[i - 1] = [];
    for (var j = 0; j < states[i].length; j += 3) {
      var edge = {act: states[i][j], to: states[i][j + 2]};
      switch (edge.act) {
        case EDGE_FATE:
        case EDGE_CODEPOINT:
        case EDGE_CODEPOINT_NEG:
        case EDGE_CHARCLASS:
        case EDGE_CHARCLASS_NEG:
          edge.arg_i = states[i][j + 1];
          break;
        case EDGE_CHARLIST:
        case EDGE_CHARLIST_NEG:
          edge.arg_s = states[i][j + 1];
          break;
        case EDGE_CODEPOINT_I:
        case EDGE_CODEPOINT_I_NEG:
          edge.arg_lc = states[i][j + 1][0];
          edge.arg_uc = states[i][j + 1][1];
          break;
      }
      nfa.states[i - 1].push(edge);
    }
  }
  return nfa;
};

function runNFA(nfa, target, pos) {
  var eos = target.length;
  var gen = 1;

  /* Allocate a "done states" array. */
  var done = [];

  /* JVM clears out arrays here, we allocate new ones for simplicity */
  var fates = [];
  var curst = [];
  var nextst = [];
  var numStates = nfa.states.length;

  nextst.push(1);

  while (nextst.length && pos <= eos) {
    /* Translation of:
     *    my @curst := @nextst;
     *    @nextst := [];
     * But avoids an extra allocation per offset. */
    /*    temp = curst;
    curst = nextst;
    temp.length = []
    nextst = temp;*/
    curst = nextst;
    nextst = [];

    /* Save how many fates we have before this position is considered. */
    var prevFates = fates.length;

    while (curst.length) {
      var st = curst.pop();
      if (st <= numStates) {
        if (done[st] == gen)
          continue;
        done[st] = gen;
      }

      var edgeInfo = nfa.states[st - 1];
      for (var i = 0; i < edgeInfo.length; i++) {
        var act = edgeInfo[i].act;
        var to = edgeInfo[i].to;

        if (act == EDGE_FATE) {
          /* Crossed a fate edge. Check if we already saw this, and
             * if so bump the entry we already saw. */
          var arg = edgeInfo[i].arg_i;
          var foundFate = false;
          for (var j = 0; j < fates.length; j++) {
            if (foundFate) {
              fates[j - 1] = fates[j];
            }
            if (fates[j] == arg) {
              foundFate = true;
              if (j < prevFates)
                prevFates--;
            }
          }
          if (foundFate)
            fates[fates.length - 1] = arg;
          else
            fates.push(arg);
        }
        else if (act == EDGE_EPSILON && to <= numStates && done[to] != gen) {
          curst.push(to);
        }
        else if (pos >= eos) {
        /* Can't match, so drop state. */
        }
        else if (act == EDGE_CODEPOINT) {
          if (target.charCodeAt(pos) == edgeInfo[i].arg_i)
            nextst.push(to);
        }
        else if (act == EDGE_CODEPOINT_NEG) {
          if (target.charCodeAt(pos) != edgeInfo[i].arg_i)
            nextst.push(to);
        }
        else if (act == EDGE_CHARCLASS) {
          if (iscclass(edgeInfo[i].arg_i, target, pos) != 0)
            nextst.push(to);
        }
        else if (act == EDGE_CHARCLASS_NEG) {
          if (iscclass(edgeInfo[i].arg_i, target, pos) == 0)
            nextst.push(to);
        }
        else if (act == EDGE_CHARLIST) {
          if (edgeInfo[i].arg_s.indexOf(target[pos]) >= 0) {
            nextst.push(to);
          }
        }
        else if (act == EDGE_CHARLIST_NEG) {
          if (edgeInfo[i].arg_s.indexOf(target[pos]) < 0) {
            nextst.push(to);
          }
        }
        else if (act == EDGE_CODEPOINT_I) {
          console.log('TODO CODEPOINT NEG');
        /*char uc_arg = edgeInfo[i].arg_uc;
              char lc_arg = edgeInfo[i].arg_lc;
              char ord = target.charAt((int)pos);
              if (ord == lc_arg || ord == uc_arg)
                  nextst.push(to);*/
        }
        else if (act == EDGE_CODEPOINT_I_NEG) {
          console.log('TODO CODEPOINT NEG');
          /*char uc_arg = edgeInfo[i].arg_uc;
              char lc_arg = edgeInfo[i].arg_lc;
              char ord = target.charAt((int)pos);
              if (ord != lc_arg && ord != uc_arg)
                  nextst.push(to);*/
        }
      }
    }
    /* Move to next character and generation. */
    pos++;
    gen++;

    /* If we got multiple fates at this offset, sort them by the
       * declaration order (represented by the fate number). In the
       * future, we'll want to factor in longest literal prefix too. */
    var charFates = fates.length - prevFates;
    if (charFates > 1) {
      //TODO do it more efficiently
      var charFateList = fates.slice(prevFates);
      charFateList.sort(function(a, b) {return b - a;});
      fates = fates.slice(0, prevFates).concat(charFateList);
    }
  }

  return fates;
}

op.nfarunproto = function(nfa, target, pos) {
  return runNFA(nfa, target, pos);
};
