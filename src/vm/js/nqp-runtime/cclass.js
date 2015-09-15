var op = {};
exports.op = op;

function boolish(bool) {
  return bool ? 1 : 0;
}

function iscclass(cclass, target, offset) {
  if (offset < 0 || offset >= target.length) return 0;
  switch (cclass) {
    //ANY
    case 65535: return 1;
    //UPPERCASE
    case 1: return boolish(!/^\d|_/.test(target[offset]) && /\w/.test(target[offset]) && target[offset] == target[offset].toUpperCase());
    //LOWERCASE
    case 2: return boolish(!/^\d|_/.test(target[offset]) && /\w/.test(target[offset]) && target[offset] == target[offset].toLowerCase());
    //ALPHABETIC
    case 4: return boolish(!/^\d|_/.test(target[offset]) && /\w/.test(target[offset]));
    //NUMERIC
    case 8: return boolish(/^\d/.test(target[offset]));
    //HEXADECIMAL
    case 16: return boolish(/^[0-9a-fA-F]/.test(target[offset]));
    //WHITESPACE
    case 32: return boolish('\n\u000b\f\r\u0085\u2028\u2029\t \u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000'.indexOf(target[offset]) != -1);
    //BLANK
    case 256: return boolish(target[offset] == ' ' || target[offset] == '\t'); //HACK - not all such chars
    //CONTROL
    case 512: return boolish('\n\t\r'.indexOf(target[offset]) != -1); //HACK - not all such chars
    //PUNCTUATION
    case 1024: return boolish(/[.,;?!]/.test(target[offset])); //HACK
    //ALPHANUMERIC
    case 2048: return boolish(/^\w/.test(target[offset]) && target[offset] != '_');
    //NEWLINE
    case 4096: return boolish(target[offset] == '\n' || target[offset] == '\r' || target[offset] == '\u0085'); //HACK
    //WORD
    case 8192: return boolish(/^\w/.test(target[offset]));
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
