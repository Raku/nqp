'use strict';
var op = {};
exports.op = op;

var iscclass = require('./cclass.js').op.iscclass;
var nqp = require('nqp-runtime');

var Null = require('./null.js');
var BOOT = require('./BOOT.js');

const EDGE_FATE = 0;
const EDGE_EPSILON = 1;
const EDGE_CODEPOINT = 2;
const EDGE_CODEPOINT_NEG = 3;
const EDGE_CHARCLASS = 4;
const EDGE_CHARCLASS_NEG = 5;
const EDGE_CHARLIST = 6;
const EDGE_CHARLIST_NEG = 7;
const EDGE_SUBRULE = 8;
const EDGE_CODEPOINT_I = 9;
const EDGE_CODEPOINT_I_NEG = 10;
const EDGE_GENERIC_VAR = 11;
const EDGE_CHARRANGE = 12;
const EDGE_CHARRANGE_NEG = 13;
const EDGE_CODEPOINT_LL = 14;
const EDGE_CODEPOINT_I_LL = 15;

function convertState(thing) {
  if (thing.$$toArray) {
    return thing.$$toArray().map(x => convertState(x));
  } else {
    return thing;
  }
}

// TODO think about type conversions of the stuff inside the array
op.nfafromstatelist = function(ctx, rawStates, type) {
  var nfa = type._STable.REPR.allocate(type._STable);

  nfa.fates = rawStates.$$toArray()[0];

  let states = convertState(rawStates);

  nfa.states = [];
  for (var i = 1; i < states.length; i++) {
    nfa.states[i - 1] = [];
    for (var j = 0; j < states[i].length; j += 3) {
      var edge = {act: nqp.toInt(states[i][j], ctx), to: nqp.toInt(states[i][j + 2], ctx)};
      switch (edge.act & 0xff) {
        case EDGE_EPSILON:
          break;
        case EDGE_FATE:
        case EDGE_CODEPOINT:
        case EDGE_CODEPOINT_LL:
        case EDGE_CODEPOINT_NEG:
        case EDGE_CHARCLASS:
        case EDGE_CHARCLASS_NEG:
          edge.argI = nqp.toInt(states[i][j + 1], ctx);
          break;
        case EDGE_CHARLIST:
        case EDGE_CHARLIST_NEG:
          edge.argS = nqp.toStr(states[i][j + 1], ctx);
          break;

        case EDGE_CODEPOINT_I:
        case EDGE_CODEPOINT_I_LL:
        case EDGE_CODEPOINT_I_NEG:
        case EDGE_CHARRANGE:
        case EDGE_CHARRANGE_NEG:
          edge.argLc = nqp.toInt(states[i][j + 1][0], ctx);
          edge.argUc = nqp.toInt(states[i][j + 1][1], ctx);
          break;
        default:
          throw 'nfafromstatelist: unknown codepoint type: ' + edge.act;
      }
      nfa.states[i - 1].push(edge);
    }
  }
  return nfa;
};

function runNFA(nfa, target, pos) {
  var origPos = pos;

  var longlit = [];
  for (var i = 0; i < 200; i++) longlit[i] = 0;


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

  var usedlonglit = 0;

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
        if (done[st] == gen) {
          continue;
        }
        done[st] = gen;
      }

      var edgeInfo = nfa.states[st - 1];
      for (var i = 0; i < edgeInfo.length; i++) {
        var act = edgeInfo[i].act;
        var to = edgeInfo[i].to;

        if (act <= EDGE_EPSILON) {
          if (act < 0) {
            act &= 0xff;
          } else if (act == EDGE_FATE) {
            /* Crossed a fate edge. Check if we already saw this, and
                 * if so bump the entry we already saw. */
            var arg = edgeInfo[i].argI;
            var foundFate = false;

            arg &= 0xffffff;
            for (var j = 0; j < fates.length; j++) {
              if (foundFate) {
                fates[j - 1] = fates[j];
              }
              if (fates[j] == arg) {
                foundFate = true;
                if (j < prevFates) {
                  prevFates--;
                }
              }
            }

            if (arg < usedlonglit) {
              arg -= longlit[arg] << 24;
            }

            if (foundFate) {
              fates[fates.length - 1] = arg;
            } else {
              fates.push(arg);
            }
            continue;
          } else if (act == EDGE_EPSILON && to <= numStates && done[to] != gen) {
            if (to != 0) {
              curst.push(to);
            }
            continue;
          }
        }


        if (pos >= eos) {
        /* Can't match, so drop state. */
        }
        else if (act == EDGE_CODEPOINT) {
          if (target.charCodeAt(pos) == edgeInfo[i].argI)
            nextst.push(to);
        }
        else if (act == EDGE_CODEPOINT_LL) {
          if (target.charCodeAt(pos) == edgeInfo[i].argI) {
            var fate = (edgeInfo[i].act >> 8) & 0xfffff;  /* act is probably signed 32 bits */
            nextst.push(to);
            while (usedlonglit <= fate)
              longlit[usedlonglit++] = 0;
            longlit[fate] = pos - origPos;
          }
        }
        else if (act == EDGE_CODEPOINT_NEG) {
          if (target.charCodeAt(pos) != edgeInfo[i].argI)
            nextst.push(to);
        }
        else if (act == EDGE_CHARCLASS) {
          if (iscclass(edgeInfo[i].argI, target, pos) != 0)
            nextst.push(to);
        }
        else if (act == EDGE_CHARCLASS_NEG) {
          if (iscclass(edgeInfo[i].argI, target, pos) == 0)
            nextst.push(to);
        }
        else if (act == EDGE_CHARLIST) {
          if (edgeInfo[i].argS.indexOf(target[pos]) >= 0) {
            nextst.push(to);
          }
        }
        else if (act == EDGE_CHARLIST_NEG) {
          if (edgeInfo[i].argS.indexOf(target[pos]) < 0) {
            nextst.push(to);
          }
        }
        else if (act == EDGE_CODEPOINT_I_LL) {
          console.log('TODO CODEPOINT I LL');
        }
        else if (act == EDGE_CODEPOINT_I) {
          console.log('TODO CODEPOINT I');
        /*char ucArg = edgeInfo[i].argUc;
              char lcArg = edgeInfo[i].argLc;
              char ord = target.charAt((int)pos);
              if (ord == lcArg || ord == ucArg)
                  nextst.push(to);*/
        }
        else if (act == EDGE_CODEPOINT_I_NEG) {
          console.log('TODO CODEPOINT NEG');
          /*char ucArg = edgeInfo[i].argUc;
              char lcArg = edgeInfo[i].argLc;
              char ord = target.charAt((int)pos);
              if (ord != lcArg && ord != ucArg)
                  nextst.push(to);*/
        }
        else if (act == EDGE_CHARRANGE) {
          var ucArg = edgeInfo[i].argUc;
          var lcArg = edgeInfo[i].argLc;
          var ord = target.charCodeAt(pos);
          if (ord >= lcArg && ord <= ucArg) {
            nextst.push(to);
          }
        }
        else if (act == EDGE_CHARRANGE_NEG) {
        // TODO
        } else if (act == EDGE_EPSILON) {
        } else {
          console.log('runNFA: unknown codepoint', act);
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


  if (usedlonglit > 0) {
    for (var i = 0; i < fates.length; i++) {
      fates[i] = fates[i] & 0xffffff;
    }
  }

  return BOOT.createArray(fates);
}

op.nfarunproto = function(nfa, target, pos) {
  return runNFA(nfa, target, pos);
};

op.nfarunalt = function(nfa, target, pos, bstackWrapped, cstackWrapped, marksWrapped) {
  var cstack;

  if (cstackWrapped !== Null && !cstackWrapped.typeObject_) {
    cstack = cstackWrapped.$$toArray();
  }
  var bstack = bstackWrapped.$$toArray();
  var marks = marksWrapped.$$toArray();

  /* Run the NFA. */
  var fates = runNFA(nfa, target, pos).array;

  /* Push the results onto the bstack. */
  var caps = cstack instanceof Array ? cstack.length : 0;

  for (var i = 0; i < fates.length; i++) {
    bstack.push(marks[fates[i]], pos, 0, caps);
  }

  return nfa;
};
