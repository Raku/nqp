
const propVals = require('./propVals.js');
const xregexp = require('xregexp');

const names = require('./unicode-data/names.js');

function mangled(name) {
  return name.toLowerCase(name).replace(/_/g, '');
}

function matchClass(shouldMatch, category, negated) {
  let regexp = xregexp('\\' + (shouldMatch ? 'p' : 'P') + '{' + category + '}', 'Ay');
  return function(target, pos) {
    regexp.lastIndex = pos;
    if (regexp.test(target)) {
      return regexp.lastIndex - pos;
    } else {
      return -1;
    }
  };
}

let props = {
  lower: 'Lowercase',
  upper: 'Uppercase',
  Lowercase: 'Lowercase',
  Uppercase: 'Uppercase',
  'White_Space': 'White_Space',
  'space': 'White_Space',
  'ASCII': 'ASCII',
  'Alpha': 'Alphabetic',
  'Alphabetic': 'Alphabetic',
  Any: 'Any'
};

for (let prop in props) {
  exports['uniprop_' + mangled(prop)] = matchClass(true, props[prop]);
  exports['uniprop_not_' + mangled(prop)] = matchClass(false, props[prop]);
}


for (let key in propVals.blk) {
  if (key === 'NB') {
    continue;
  }
  let alias = mangled('In' + key);

  let forXregexp = 'In' + propVals.blk[key];
  let long = mangled('In' + propVals.blk[key]);

  exports['uniprop_' + mangled(alias)] = matchClass(true, forXregexp );
  exports['uniprop_not_' + mangled(alias)] = matchClass(false, forXregexp);

  if (!(('uniprop_' + long) in exports)) {
    exports['uniprop_' + long] = matchClass(true, forXregexp);
    exports['uniprop_not_' + long] = matchClass(false, forXregexp);
  }
}

for (let alias in propVals.sc) {
  if (alias === 'Hrkt' || alias === 'Zzzz') {
    continue;
  }

  let forXregexp = propVals.sc[alias];
  let long = mangled(propVals.sc[alias]);


  exports['uniprop_' + mangled(alias)] = matchClass(true, forXregexp );
  exports['uniprop_not_' + mangled(alias)] = matchClass(false, forXregexp);

  if (!(('uniprop_' + long) in exports)) {
    exports['uniprop_' + long] = matchClass(true, forXregexp);
    exports['uniprop_not_' + long] = matchClass(false, forXregexp);
  }
}

for (let alias in propVals.gc) {
  if (alias === 'LC') {
    continue;
  }

  const long = mangled(propVals.gc[alias]);
  const forXregexp = propVals.gc[alias].replace(/_/g, '');

  exports['uniprop_' + mangled(alias)] = matchClass(true, forXregexp);
  exports['uniprop_not_' + mangled(alias)] = matchClass(false, forXregexp);


  if (!(('uniprop_' + long) in exports)) {
    exports['uniprop_' + long] = matchClass(true, forXregexp);
    exports['uniprop_not_' + long] = matchClass(false, forXregexp);
  }
}

function categoriesToRegex(categories) {
 return categories ? categories.map(
    category => names.regexes[names.props[category]] || '\\p{' + category + '}'
  ).join('|') : '';
}

function matchDerived(shouldMatch, match, avoid) {
  const regexp = maybeNegated(shouldMatch, categoriesToRegex(match), categoriesToRegex(avoid));

  return function(target, pos) {
    regexp.lastIndex = pos;
    if (regexp.test(target)) {
      return regexp.lastIndex - pos;
    } else {
      return -1;
    }
  };
}


const derivedRecipes = {
  LC: ['Ll', 'Lu', 'Lt']
};

const derived = {LC: 'Cased_Letter'};

for (let short in derived) {
  const long = mangled(derived[short]);
  exports['uniprop_' + mangled(short)] = exports['uniprop_' + long] = matchDerived(true, derivedRecipes[short]);
  exports['uniprop_not_' + mangled(short)] = exports['uniprop_not_' + long] = matchDerived(false, derivedRecipes[short]);
}


const UnicodeTrie = require('unicode-trie')
const fs = require('fs')

const nativeArgs = require('./native-args.js');
const NativeStrArg = nativeArgs.NativeStrArg;

const numericTypeData = new UnicodeTrie(fs.readFileSync(__dirname + '/unicode-data/NumericType.trie'));
const bidiClassData = new UnicodeTrie(fs.readFileSync(__dirname + '/unicode-data/BidiClass.trie'));


function propWithArgs(negated, trie, propName, longNames) {
  const propId = names.props[propName];
  return function(ctx, cursor, target, offset, obj) {
    const code = target.codePointAt(offset);
    if (code === undefined) return -1;
    const propValueId = trie.get(code);


    let valueName = longNames
      ? names.propLongValues[propId][propValueId-1]
      : names.propShortValues[propId][propValueId-1];


    const result = cursor['!DELEGATE_ACCEPTS'](ctx, null, cursor, obj, new NativeStrArg(valueName)).$$getInt();

    if (result === (negated ? 1 : 0)) {
      return -1;
    } else {
      let isPair = 0; // TODO codes that take two bytes
      return isPair ? 2 : 1;
    }


    return -1;
  };
};

exports.uniprop_numerictype = propWithArgs(false, numericTypeData, 'nt', true);
exports.uniprop_nt = propWithArgs(false, numericTypeData, 'nt', false);
exports.uniprop_bc = propWithArgs(false, bidiClassData, 'bc', false);

exports.uniprop_not_numerictype = propWithArgs(true, numericTypeData, 'nt', true);
exports.uniprop_not_nt = propWithArgs(true, numericTypeData, 'nt', false);
exports.uniprop_not_bc = propWithArgs(true, bidiClassData, 'bc', false);

function maybeNegated(shouldMatch, main, exclude) {
  let regex;
  if (exclude !== undefined && exclude !== '') {
    regex = shouldMatch
      ? '(?!' + exclude + ')' + main
      : '(?:(?!' + main + ')\\p{Any})|' + exclude;
  } else {
    regex = shouldMatch ? main : '(?!' + main + ')\\p{Any}';
  }

  return xregexp(regex, 'yA');
}

function matchRegex(shouldMatch, regexString) {
  const regexp = maybeNegated(shouldMatch, regexString);
  return function(target, pos) {
    regexp.lastIndex = pos;
    if (regexp.test(target)) {
      return regexp.lastIndex - pos;
    } else {
      return -1;
    }
  };
}

const propIdToNames = {};
for (const propName in names.props) {
  const propId = names.props[propName];
  if (!propIdToNames[propId]) propIdToNames[propId] = propIdToNames[propId] || [];
  propIdToNames[propId].push(propName);
}

for (const propId in names.regexes) {
  const match = matchRegex(true, names.regexes[propId]);
  const negatedMatch = matchRegex(false, names.regexes[propId]);
  for (const propName of propIdToNames[propId]) {
    exports['uniprop_' + mangled(propName)] = match;
    exports['uniprop_not_' + mangled(propName)] = negatedMatch;
  }
}


const mathRegex = names.regexes[names.props.Other_Math] + '|\\p{Sm}';

exports.uniprop_math = matchRegex(true, mathRegex);
exports.uniprop_not_math = matchRegex(false, mathRegex);

exports.uniprop_assigned = matchRegex(true, '\\P{Cn}');
exports.uniprop_not_assigned = matchRegex(true, '\\p{Cn}');

exports.uniprop_unassigned = matchRegex(true, '\\p{Cn}');
exports.uniprop_not_unassigned = matchRegex(true, '\\P{Cn}');

exports.uniprop_idstart = matchDerived(true, ['Lu', 'Ll', 'Lt', 'Lm', 'Lo', 'Nl', 'Other_ID_Start'],  ['Pattern_Syntax', 'Pattern_White_Space']);

exports.uniprop_not_idstart = matchDerived(false, ['Lu', 'Ll', 'Lt', 'Lm', 'Lo', 'Nl', 'Other_ID_Start'],  ['Pattern_Syntax', 'Pattern_White_Space']);

exports.uniprop_idcontinue = matchDerived(true, ['Lu', 'Ll', 'Lt', 'Lm', 'Lo', 'Nl', 'Mn', 'Mc', 'Nd', 'Pc', 'Other_ID_Continue', 'Other_ID_Start'],  ['Pattern_Syntax', 'Pattern_White_Space']);

exports.uniprop_not_idcontinue = matchDerived(false, ['Lu', 'Ll', 'Lt', 'Lm', 'Lo', 'Nl', 'Mn', 'Mc', 'Nd', 'Pc', 'Other_ID_Continue', 'Other_ID_Start'],  ['Pattern_Syntax', 'Pattern_White_Space']);
