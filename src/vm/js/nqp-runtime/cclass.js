var xregexp = require('xregexp');
var op = {};
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
const BLANK = xregexp('^[\t\\p{Zs}]');
const PUNCTUATION = xregexp('^\\pP');
const ALPHANUMERIC = xregexp('^[\\pL\\p{Nd}]');
const WORD = xregexp('^[\\pL_\\p{Nd}]');

function iscclass(cclass, target, offset) {
  if (offset < 0 || offset >= target.length) return 0;
  switch (cclass) {
    //ANY
    case 65535: return 1;
    //UPPERCASE
    case 1: return boolish(UPPERCASE.test(target[offset]));
    //LOWERCASE
    case 2: return boolish(LOWERCASE.test(target[offset]));
    //ALPHABETIC
    case 4: return boolish(ALPHABETIC.test(target[offset]));
    //NUMERIC
    case 8: return boolish(NUMERIC.test(target[offset]));
    //HEXADECIMAL
    case 16: return boolish(HEXADECIMAL.test(target[offset]));
    //WHITESPACE
    case 32: return boolish(WHITESPACE.test(target[offset]));
    //BLANK
    case 256: return boolish(BLANK.test(target[offset]));
    //CONTROL
    /* TODO - all character*/
    case 512: return boolish('\n\t\r'.indexOf(target[offset]) != -1); //HACK - not all such chars
    //PUNCTUATION
    case 1024: return boolish(PUNCTUATION.test(target[offset])); //HACK
    //ALPHANUMERIC
    case 2048: return boolish(ALPHANUMERIC.test(target[offset]));
    //NEWLINE
    /* TODO - all characters*/
    case 4096: return boolish(target[offset] == '\n' || target[offset] == '\r' || target[offset] == '\u0085'); //HACK
    //WORD
    case 8192: return boolish(WORD.test(target[offset]));
    default: throw 'cclass ' + cclass + ' not yet implemented';
  }
}

op.iscclass = function(cclass, target, offset) {
  return iscclass(cclass, target, offset);
};

op.findcclass = function(cclass, target, offset, count) {
  var end = offset + count;
  end = target.length < end ? target.length : end;

  for (var pos = offset; pos < end; pos++) {
    if (iscclass(cclass, target, pos) > 0) {
      return pos;
    }
  }

  return end;
};

op.findnotcclass = function(cclass, target, offset, count) {
  var end = offset + count;
  end = target.length < end ? target.length : end;

  for (var pos = offset; pos < end; pos++) {
    if (iscclass(cclass, target, pos) == 0) {
      return pos;
    }
  }

  return end;
};
