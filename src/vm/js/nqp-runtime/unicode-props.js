const xregexp = require('xregexp');

const names = require('./unicode-data/names.js');

function mangled(name) {
  return name.toLowerCase(name).replace(/_/g, '');
}

const propIdToNames = {};
for (const propName in names.props) {
  const propId = names.props[propName];
  if (!propIdToNames[propId]) propIdToNames[propId] = propIdToNames[propId] || [];
  propIdToNames[propId].push(propName);
}


function addProp(propName, builder) {
  const propId = names.props[propName];
  const match = builder(true);
  const do_not_match = builder(false);
  for (const alias of propIdToNames[propId]) {
    exports['uniprop_' + mangled(alias)] = match;
    exports['uniprop_not_' + mangled(alias)] = do_not_match;
  }
}

function addExtraProp(propName, builder) {
  if (!exports['uniprop_' + mangled(propName)]) {
    exports['uniprop_' + mangled(propName)] = builder(true);
    exports['uniprop_not_' + mangled(propName)] = builder(false);
  }
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

for (const prop of ['Lowercase', 'Uppercase', 'White_Space', 'Alphabetic']) {
  addProp(prop, match => matchClass(match, prop));
}

addExtraProp('ascii', match => matchClass(match, 'ASCII'));
addExtraProp('any', match => matchClass(match, 'Any'));

function addPropValueProps(propName, builder, filter, extraMangle) {
  for (const propValue of names.propValues[names.props[propName]]) {
    if (!filter(propValue[0])) continue;
    for (const alias of propValue) {
      const mangledAlias = mangled(extraMangle ? extraMangle(alias) : alias);
      exports['uniprop_' + mangledAlias] = builder(true, propValue[1]);
      exports['uniprop_not_' + mangledAlias] = builder(false, propValue[1]);
    }
  }
}

addPropValueProps('Block',
  (match, long) => matchClass(match, 'In' + long),
  short => short !== 'NB',
  alias => 'In' + alias
);

addPropValueProps('Script',
  (match, long) => matchClass(match, long),
  short => short !== 'Hrkt' && short !== 'Zzzz');

addPropValueProps('General_Category',
  (match, long) => matchClass(match, long.replace(/_/g, '')),
  short => short !== 'LC');

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


const matchLC = match => matchDerived(match, ['Ll', 'Lu', 'Lt']);
addExtraProp('LC', matchLC);
addExtraProp('Cased_Letter', matchLC);

const UnicodeTrie = require('unicode-trie')
const fs = require('fs')

const nativeArgs = require('./native-args.js');
const NativeStrArg = nativeArgs.NativeStrArg;

const numericTypeData = new UnicodeTrie(fs.readFileSync(__dirname + '/unicode-data/NumericType.trie'));
const bidiClassData = new UnicodeTrie(fs.readFileSync(__dirname + '/unicode-data/BidiClass.trie'));
const numericValueData = new UnicodeTrie(fs.readFileSync(__dirname + '/unicode-data/NumericValue.trie'));


function propWithArgs(negated, trie, propName, longNames) {
  const propId = names.props[propName];
  return function(ctx, cursor, target, offset, obj) {
    const code = target.codePointAt(offset);
    if (code === undefined) return -1;
    const propValueId = trie.get(code);


    let valueName = names.propValues[propId][propValueId-1][longNames ? 1 : 0];

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
exports.uniprop_not_numerictype = propWithArgs(true, numericTypeData, 'nt', true);

exports.uniprop_nt = propWithArgs(false, numericTypeData, 'nt', false);
exports.uniprop_not_nt = propWithArgs(true, numericTypeData, 'nt', false);

exports.uniprop_bc = propWithArgs(false, bidiClassData, 'bc', false);
exports.uniprop_not_bc = propWithArgs(true, bidiClassData, 'bc', false);

exports.uniprop_numericvalue = propWithArgs(false, numericValueData, 'nv', false);
exports.uniprop_not_numerictype = propWithArgs(true, numericValueData, 'nv', false);

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

for (const propId in names.regexes) {
  const match = matchRegex(true, names.regexes[propId]);
  const negatedMatch = matchRegex(false, names.regexes[propId]);
  for (const propName of propIdToNames[propId]) {
    exports['uniprop_' + mangled(propName)] = match;
    exports['uniprop_not_' + mangled(propName)] = negatedMatch;
  }
}


const mathRegex = names.regexes[names.props.Other_Math] + '|\\p{Sm}';
addProp('Math', match => matchRegex(match, mathRegex));

addExtraProp('Assigned', match => matchRegex(true, match ? '\\P{Cn}' : '\\p{Cn}'));

addExtraProp('Unassigned', match => matchRegex(true, match ? '\\p{Cn}' : '\\P{Cn}'));

addProp('ID_Start', match => matchDerived(match,
  ['Lu', 'Ll', 'Lt', 'Lm', 'Lo', 'Nl', 'Other_ID_Start'],
  ['Pattern_Syntax', 'Pattern_White_Space']));

addProp('ID_Continue', match => matchDerived(match,
  ['Lu', 'Ll', 'Lt', 'Lm', 'Lo', 'Nl', 'Mn', 'Mc', 'Nd', 'Pc', 'Other_ID_Continue', 'Other_ID_Start'],
  ['Pattern_Syntax', 'Pattern_White_Space']));
