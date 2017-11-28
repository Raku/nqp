'use strict';
const op = {};
exports.op = op;

const iscclass = require('./cclass.js').op.iscclass;
const nqp = require('nqp-runtime');

const Null = require('./null.js');
const BOOT = require('./BOOT.js');

const stripMarks = require('./strip-marks.js');

const EDGE_FATE = 0;
const EDGE_EPSILON = 1;
const EDGE_CODEPOINT = 2;
const EDGE_CODEPOINT_NEG = 3;
const EDGE_CHARCLASS = 4;
const EDGE_CHARCLASS_NEG = 5;
const EDGE_CHARLIST = 6;
const EDGE_CHARLIST_NEG = 7;
const EDGE_CODEPOINT_I = 9;
const EDGE_CODEPOINT_I_NEG = 10;
const EDGE_CHARRANGE = 12;
const EDGE_CHARRANGE_NEG = 13;
const EDGE_CODEPOINT_LL = 14;
const EDGE_CODEPOINT_I_LL = 15;
const EDGE_CODEPOINT_M = 16;
const EDGE_CODEPOINT_M_NEG = 17;
const EDGE_CODEPOINT_M_LL = 18;
const EDGE_CODEPOINT_IM = 19;
const EDGE_CODEPOINT_IM_NEG = 20;
const EDGE_CODEPOINT_IM_LL = 21;
const EDGE_CHARRANGE_M = 22;
const EDGE_CHARRANGE_M_NEG = 23;

function convertState(thing) {
  if (thing.$$toArray) {
    return thing.$$toArray().map(x => convertState(x));
  } else {
    return thing;
  }
}

// TODO think about type conversions of the stuff inside the array
op.nfafromstatelist = function(ctx, rawStates, type) {
  const nfa = type._STable.REPR.allocate(type._STable);

  nfa.fates = rawStates.$$toArray()[0];

  const states = convertState(rawStates);

  nfa.states = [];
  for (let i = 1; i < states.length; i++) {
    nfa.states[i - 1] = [];
    for (let j = 0; j < states[i].length; j += 3) {
      const edge = {act: nqp.toInt(states[i][j], ctx), to: nqp.toInt(states[i][j + 2], ctx)};
      switch (edge.act & 0xff) {
        case EDGE_EPSILON:
          break;
        case EDGE_FATE:
        case EDGE_CODEPOINT:
        case EDGE_CODEPOINT_LL:
        case EDGE_CODEPOINT_NEG:
        case EDGE_CODEPOINT_M:
        case EDGE_CODEPOINT_M_LL:
        case EDGE_CODEPOINT_M_NEG:
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
        case EDGE_CODEPOINT_IM:
        case EDGE_CODEPOINT_IM_LL:
        case EDGE_CODEPOINT_IM_NEG:
        case EDGE_CHARRANGE:
        case EDGE_CHARRANGE_NEG:
        case EDGE_CHARRANGE_M:
        case EDGE_CHARRANGE_M_NEG:
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

function baseCodePoint(string, index) {
  const codePoint = string.codePointAt(index);
  return String.fromCodePoint(codePoint).normalize('NFD').codePointAt(0);
}

function runNFA(nfa, target, pos) {
  const origPos = pos;

  const longlit = [];
  for (let i = 0; i < 200; i++) longlit[i] = 0;


  const eos = target.length;
  let gen = 1;

  /* Allocate a "done states" array. */
  const done = [];

  /* JVM clears out arrays here, we allocate new ones for simplicity */
  let fates = [];
  let curst = [];
  let nextst = [];
  const numStates = nfa.states.length;

  nextst.push(1);

  let usedlonglit = 0;

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
    let prevFates = fates.length;

    while (curst.length) {
      const st = curst.pop();
      if (st <= numStates) {
        if (done[st] == gen) {
          continue;
        }
        done[st] = gen;
      }

      const edgeInfo = nfa.states[st - 1];
      for (let i = 0; i < edgeInfo.length; i++) {
        let act = edgeInfo[i].act;
        const to = edgeInfo[i].to;

        if (act <= EDGE_EPSILON) {
          if (act < 0) {
            act &= 0xff;
          } else if (act == EDGE_FATE) {
            /* Crossed a fate edge. Check if we already saw this, and
                 * if so bump the entry we already saw. */
            let arg = edgeInfo[i].argI;
            let foundFate = false;

            arg &= 0xffffff;
            for (let j = 0; j < fates.length; j++) {
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
        } else if (act == EDGE_CODEPOINT) {
          if (target.charCodeAt(pos) == edgeInfo[i].argI) {
            nextst.push(to);
          }
        } else if (act == EDGE_CODEPOINT_LL) {
          if (target.charCodeAt(pos) == edgeInfo[i].argI) {
            const fate = (edgeInfo[i].act >> 8) & 0xfffff;  /* act is probably signed 32 bits */
            nextst.push(to);
            while (usedlonglit <= fate) {
              longlit[usedlonglit++] = 0;
            }
            longlit[fate] = pos - origPos;
          }
        } else if (act == EDGE_CODEPOINT_NEG) {
          if (target.charCodeAt(pos) != edgeInfo[i].argI) {
            nextst.push(to);
          }
        } else if (act == EDGE_CHARCLASS) {
          if (iscclass(edgeInfo[i].argI, target, pos) != 0) {
            nextst.push(to);
          }
        } else if (act == EDGE_CHARCLASS_NEG) {
          if (iscclass(edgeInfo[i].argI, target, pos) == 0) {
            nextst.push(to);
          }
        } else if (act == EDGE_CHARLIST) {
          if (edgeInfo[i].argS.indexOf(target[pos]) >= 0) {
            nextst.push(to);
          }
        } else if (act == EDGE_CHARLIST_NEG) {
          if (edgeInfo[i].argS.indexOf(target[pos]) < 0) {
            nextst.push(to);
          }
        } else if (act == EDGE_CODEPOINT_I_LL) {
          const codePoint = target.codePointAt(pos);
          if (codePoint === edgeInfo[i].argLc || codePoint === edgeInfo[i].argUc) {
            const fate = (edgeInfo[i].act >> 8) & 0xfffff;  /* act is probably signed 32 bits */
            nextst.push(to);
            while (usedlonglit <= fate) {
              longlit[usedlonglit++] = 0;
            }
            longlit[fate] = pos - origPos;
          }
        } else if (act == EDGE_CODEPOINT_I) {
          const codePoint = target.codePointAt(pos);
          if (codePoint === edgeInfo[i].argLc || codePoint === edgeInfo[i].argUc) {
            nextst.push(to);
          }
        } else if (act == EDGE_CODEPOINT_I_NEG) {
          const codePoint = target.codePointAt(pos);
          if (!(codePoint === edgeInfo[i].argLc || codePoint === edgeInfo[i].argUc)) {
            nextst.push(to);
          }
        } else if (act == EDGE_CODEPOINT_M) {
          if (baseCodePoint(target, pos) === edgeInfo[i].argI) {
            nextst.push(to);
          }
        } else if (act == EDGE_CODEPOINT_IM) {
          const base = baseCodePoint(target, pos);
          if (base === edgeInfo[i].argLc || base == edgeInfo[i].argUc) {
            nextst.push(to);
          }
        } else if (act == EDGE_CHARRANGE) {
          const ucArg = edgeInfo[i].argUc;
          const lcArg = edgeInfo[i].argLc;
          const ord = target.charCodeAt(pos);
          if (ord >= lcArg && ord <= ucArg) {
            nextst.push(to);
          }
        } else if (act == EDGE_CHARRANGE_M) {
          const ucArg = edgeInfo[i].argUc;
          const lcArg = edgeInfo[i].argLc;
          const ord = stripMarks(target.substr(pos, 1)).charCodeAt(0);
          if (ord >= lcArg && ord <= ucArg) {
            nextst.push(to);
          }
        } else if (act == EDGE_CHARRANGE_NEG) {
          console.log('TODO EDGE_CHARRANGE_NEG');
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
    const charFates = fates.length - prevFates;
    if (charFates > 1) {
      // TODO do it more efficiently
      const charFateList = fates.slice(prevFates);
      charFateList.sort((a, b) => b - a);
      fates = fates.slice(0, prevFates).concat(charFateList);
    }
  }


  if (usedlonglit > 0) {
    for (let i = 0; i < fates.length; i++) {
      fates[i] = fates[i] & 0xffffff;
    }
  }

  return BOOT.createIntArray(fates);
}

op.nfarunproto = function(nfa, target, pos) {
  return runNFA(nfa, target, pos);
};

op.nfarunalt = function(nfa, target, pos, bstackWrapped, cstackWrapped, marksWrapped) {
  let cstack;

  if (cstackWrapped !== Null && !cstackWrapped.typeObject_) {
    cstack = cstackWrapped.$$toArray();
  }
  const bstack = bstackWrapped.$$toArray();
  const marks = marksWrapped.$$toArray();

  /* Run the NFA. */
  const fates = runNFA(nfa, target, pos).array;

  /* Push the results onto the bstack. */
  const caps = cstack instanceof Array ? cstack.length : 0;

  for (let i = 0; i < fates.length; i++) {
    bstack.push(marks[fates[i]], pos, 0, caps);
  }

  return nfa;
};
