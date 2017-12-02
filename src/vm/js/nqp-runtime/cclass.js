'use strict';
const xregexp = require('xregexp');
const op = {};
exports.op = op;

function boolish(bool) {
  return bool ? 1 : 0;
}

const UPPERCASE = xregexp('^\\p{Lu}');
const LOWERCASE = xregexp('^\\p{Ll}');
const ALPHABETIC = xregexp('^\\pL');
const NUMERIC = xregexp('^\\p{Nd}');
const HEXADECIMAL = xregexp('^[0-9A-Fa-f]');
const WHITESPACE = xregexp('^\\p{White_Space}');
const PRINTING = xregexp('^[^\u0000-\u001F\u007F-\u009F]');
const BLANK = xregexp('^[\t\\p{Zs}]');
const CONTROL = xregexp('^[\u0000-\u001F\u007F-\u009F]');
const PUNCTUATION = xregexp('^\\pP');
const ALPHANUMERIC = xregexp('^[\\pL\\p{Nd}]');
const NEWLINE = xregexp('[\n\r\u0085\u2029\f\u000b\u2028]');
const WORD = xregexp('^[\\pL_\\p{Nd}]');
const ANY = xregexp('^\\p{Any}');

const cclassToRegex = [];
cclassToRegex[1] = UPPERCASE;
cclassToRegex[2] = LOWERCASE;
cclassToRegex[4] = ALPHABETIC;
cclassToRegex[8] = NUMERIC;
cclassToRegex[16] = HEXADECIMAL;
cclassToRegex[32] = WHITESPACE;
cclassToRegex[64] = PRINTING;
cclassToRegex[256] = BLANK;
cclassToRegex[512] = CONTROL;
cclassToRegex[1024] = PUNCTUATION;
cclassToRegex[2048] = ALPHANUMERIC;
cclassToRegex[4096] = NEWLINE;
cclassToRegex[8192] = WORD;
cclassToRegex[65535] = ANY;

function iscclass(cclass, target, offset) {
  if (offset < 0 || offset >= target.length) return 0;
  const regex = cclassToRegex[cclass];
  if (regex === undefined) {
    throw 'cclass ' + cclass + ' not yet implemented';
  } else if (typeof regex !== 'string') {
    return boolish(regex.test(target[offset]));
  }
}

op.iscclass = function(cclass, target, offset) {
  return iscclass(cclass, target, offset);
};

op.findcclass = function(cclass, target, offset, count) {
  let end = offset + count;
  end = target.length < end ? target.length : end;

  for (let pos = offset; pos < end; pos++) {
    if (iscclass(cclass, target, pos) > 0) {
      return pos;
    }
  }

  return end;
};

op.findnotcclass = function(cclass, target, offset, count) {
  let end = offset + count;
  end = target.length < end ? target.length : end;

  for (let pos = offset; pos < end; pos++) {
    if (iscclass(cclass, target, pos) == 0) {
      return pos;
    }
  }

  return end;
};
