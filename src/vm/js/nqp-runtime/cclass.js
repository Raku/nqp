'use strict';
const xregexp = require('xregexp');
const graphemes = require('./graphemes.js');

const op = {};
exports.op = op;

function boolish(bool) {
  return bool ? 1 : 0;
}

const UPPERCASE = xregexp('\\p{Lu}', 'yA');
const LOWERCASE = xregexp('\\p{Ll}', 'yA');
const ALPHABETIC = xregexp('\\pL', 'yA');
const NUMERIC = xregexp('\\p{Nd}', 'yA');
const HEXADECIMAL = xregexp('[0-9A-Fa-f]', 'y');
const WHITESPACE = xregexp('\\p{White_Space}', 'yA');
const PRINTING = xregexp('[^\u0000-\u001F\u007F-\u009F]', 'y');
const BLANK = xregexp('\t|\\p{Zs}', 'yA');
const CONTROL = xregexp('[\u0000-\u001F\u007F-\u009F]', 'y');
const PUNCTUATION = xregexp('\\pP', 'yA');
const ALPHANUMERIC = xregexp('\\pL|\\p{Nd}', 'yA');
const NEWLINE = xregexp('[\n\r\u0085\u2029\f\u000b\u2028]', 'y');
const WORD = xregexp('\\pL|_|\\p{Nd}', 'yA');
const ANY = xregexp('\\p{Any}', 'yA');

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
  } else {
    regex.lastIndex = offset;
    return boolish(regex.test(target));
  }
}

op.iscclass = function(cclass, target, offset) {
  return iscclass(cclass, target, offset);
};

op.iscclassnfg = function(cclass, target, offset) {
  let offsetGraphemes = offset;
  let offsetChars = 0;
  while (offsetGraphemes--) {
    offsetChars = graphemes.nextBreak(target, offsetChars);
  }

  return iscclass(cclass, target, offsetChars);
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

  const regex = cclassToRegex[cclass];

  let pos = offset;

  regex.lastIndex = pos;
  while (pos < end) {
    if (regex.test(target)) {
      pos = regex.lastIndex;
    } else {
      return pos;
    }
  }

  return end;
};
