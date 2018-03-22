const xregexp = require('xregexp');

const ucd = require('nqp-unicode-data');

const core = require('./core.js');

// TODO - the regexes should be tweaked to match full graphemes instead
const graphemes = require('./graphemes.js');

function mangled(name) {
  return name.toLowerCase(name).replace(/_/g, '');
}


function addProp(propName, builder) {
  const propId = ucd.propId(propName);

  const match = builder(true);
  const do_not_match = builder(false);
  for (const alias of ucd.propIdToNames(propId)) {
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
  const regexp = xregexp('\\' + (shouldMatch ? 'p' : 'P') + '{' + category + '}', 'Ay');
  return function(target, pos) {
    regexp.lastIndex = pos;
    if (regexp.test(target)) {
      return graphemes.nextBreak(target, pos) - pos;
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
  for (const propValue of ucd.propValues(ucd.propId(propName))) {
    if (!filter(propValue[0])) continue;
    for (const alias of propValue) {
      const mangledAlias = mangled(extraMangle ? extraMangle(alias) : alias);
      exports['uniprop_' + mangledAlias] = builder(true, propValue[1]);
      exports['uniprop_not_' + mangledAlias] = builder(false, propValue[1]);
    }
  }
}

const missingBlocks = {NB: true, CJK_Ext_F: true, Kana_Ext_A: true, Masaram_Gondi: true, Nushu: true, Soyombo: true, Syriac_Sup: true, Zanabazar_Square: true};
addPropValueProps('Block',
  (match, long) => matchClass(match, 'In' + long),
  short => !(short in missingBlocks),
  alias => 'In' + alias
);

const missingScripts = {Hrkt: true, Zzzz: true, Gonm: true, Nshu: true, Soyo: true, Zanb: true};
addPropValueProps('Script',
  (match, long) => matchClass(match, long),
  short => !(short in missingScripts));

addPropValueProps('General_Category',
  (match, long) => matchClass(match, long.replace(/_/g, '')),
  short => short !== 'LC');

function categoriesToRegex(categories) {
 return categories ? categories.map(
    category => ucd.regex(ucd.propId(category)) || '\\p{' + category + '}'
  ).join('|') : '';
}

function matchDerived(shouldMatch, match, avoid) {
  const regexp = maybeNegated(shouldMatch, categoriesToRegex(match), categoriesToRegex(avoid));

  return function(target, pos) {
    regexp.lastIndex = pos;
    if (regexp.test(target)) {
      return graphemes.nextBreak(target, pos) - pos;
    } else {
      return -1;
    }
  };
}


const matchLC = match => matchDerived(match, ['Ll', 'Lu', 'Lt']);
addExtraProp('LC', matchLC);
addExtraProp('Cased_Letter', matchLC);


const nativeArgs = require('./native-args.js');
const NativeStrArg = nativeArgs.NativeStrArg;

const numericTypeData = ucd.propTrie('NumericType');
const bidiClassData = ucd.propTrie('BidiClass');
const numericValueData = ucd.propTrie('NumericValue');

function delegateAccepts(shouldMatch, ctx, cursor, obj, code, value) {
    const resultMaybeBoxed = cursor['!DELEGATE_ACCEPTS'](ctx, null, cursor, obj, new NativeStrArg(value));
    const result = typeof resultMaybeBoxed == 'number' ? resultMaybeBoxed : resultMaybeBoxed.$$getInt();
    if (result === (shouldMatch ? 0 : 1)) {
      return -1;
    } else {
      const isPair = 0; // TODO codes that take two bytes
      return isPair ? 2 : 1;
    }
}

function propWithArgs(shouldMatch, trie, propName, longNames) {
  const propId = ucd.propId(propName);
  return function(ctx, cursor, target, offset, obj) {
    const code = target.codePointAt(offset);
    if (code === undefined) return -1;
    const propValueId = trie.get(code);

    const valueName = ucd.propValues(propId)[propValueId-1][longNames ? 1 : 0];

    return delegateAccepts(shouldMatch, ctx, cursor, obj, code, valueName);
  };
};

function addPropWithArgs(alias, trie, propName, longNames) {
  exports['uniprop_' + alias] = propWithArgs(true, trie, propName, longNames);
  exports['uniprop_not_' + alias] = propWithArgs(false, trie, propName, longNames);
}

function matchName(shouldMatch) {
  return function(ctx, cursor, target, offset, obj) {
    const code = target.codePointAt(offset);
    if (code === undefined) return -1;
    const name = core.op.getuniname(code);

    return delegateAccepts(shouldMatch, ctx, cursor, obj, code, name);
  };
}

exports.uniprop_name = matchName(true);
exports.uniprop_not_name = matchName(false);

addPropWithArgs('numerictype', numericTypeData, 'nt', true);
addPropWithArgs('nt', numericTypeData, 'nt', false);
addPropWithArgs('bc', bidiClassData, 'bc', false);
addPropWithArgs('numericvalue', numericValueData, 'nv', false);

function maybeNegated(shouldMatch, main, exclude) {
  let regex;
  if (exclude !== undefined && exclude !== '') {
    regex = shouldMatch
      ? '(?!' + exclude + ')' + main
      : '(?:(?!' + main + ')\\p{Any})|' + exclude;
  } else {
    regex = shouldMatch ? main : '(?!' + main + ')\\p{Any}';
  }

  return xregexp(regex, 'yAu');
}

function matchRegex(shouldMatch, regexString) {
  const regexp = maybeNegated(shouldMatch, regexString);
  return function(target, pos) {
    regexp.lastIndex = pos;
    if (regexp.test(target)) {
      return graphemes.nextBreak(target, pos) - pos;
    } else {
      return -1;
    }
  };
}

for (const propId of ucd.propIdsWithRegexes()) {
  const match = matchRegex(true, ucd.regex(propId));
  const negatedMatch = matchRegex(false, ucd.regex(propId));
  if (ucd.propIdToNames(propId)) {
    for (const propName of ucd.propIdToNames(propId)) {
      exports['uniprop_' + mangled(propName)] = match;
      exports['uniprop_not_' + mangled(propName)] = negatedMatch;
    }
  }
}


const mathRegex = ucd.regex(ucd.propId('Other_Math')) + '|\\p{Sm}';
addProp('Math', match => matchRegex(match, mathRegex));

addExtraProp('Assigned', match => matchRegex(true, match ? '\\P{Cn}' : '\\p{Cn}'));

addExtraProp('Unassigned', match => matchRegex(true, match ? '\\p{Cn}' : '\\P{Cn}'));

addProp('ID_Start', match => matchDerived(match,
  ['Lu', 'Ll', 'Lt', 'Lm', 'Lo', 'Nl', 'Other_ID_Start'],
  ['Pattern_Syntax', 'Pattern_White_Space']));

addProp('ID_Continue', match => matchDerived(match,
  ['Lu', 'Ll', 'Lt', 'Lm', 'Lo', 'Nl', 'Mn', 'Mc', 'Nd', 'Pc', 'Other_ID_Continue', 'Other_ID_Start'],
  ['Pattern_Syntax', 'Pattern_White_Space']));
