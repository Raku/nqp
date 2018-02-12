'use strict';
const data = require('nqp-unicode-data');
const escapeStringRegexp = require('escape-string-regexp');

function build(source) {
  return source.replace(/ /g, '').replace(/<([^>]+)>/g, function(match, part) {
    const content = parts[part] ? build(parts[part]) : data.regex(part);
    if (content === undefined) throw 'Can\'t do anything with: ' + part;
    return '(?:' + content + ')';
  });
}

const parts = {};

parts.CRLF = '<CR><LF>';
parts.RISequence = '<Regional_Indicator><Regional_Indicator>';
parts.HangulSyllable = '<L>*<V>+<T>*|<L>*<LV><V>*<T>*|<L>*<LVT><T>*|<L>+|<T>+';
parts.Grapheme_Extend = '<Extend> | (?:<ZWJ><Glue_After_Zwj>) | (?:<ZWJ><E_Base_GAZ><Extend>*<E_Modifier>?) | <ZWJ>';
parts.Modified = '<Prepend>*(?:<RISequence>|<HangulSyllable>|(?:(?:<E_Base>|<E_Base_GAZ>)<Extend>*<E_Modifier>)|(?:(?!<Control>).))(<Grapheme_Extend>|<SpacingMark>)*';

parts.Degenerate = '<ZWJ>(?:<Glue_After_Zwj>|<E_Base_GAZ><Extend>*<E_Modifier>?)';

const graphemePattern = build('\u{10FFFD}x[0-9A-Z][0-9A-Z]|<CRLF>|<Degenerate>|<Modified>|[^]');

const graphemeRegexp = exports.regexp = new RegExp(graphemePattern, 'yu');
const graphemeRegexpGlobal = new RegExp(graphemePattern, 'gu');

exports.completeGrapheme = new RegExp(build('(?:<CR>|<LF>|<Control>)$'), 'u');

exports.nextBreak = function(target, offset) {
  graphemeRegexp.lastIndex = offset;
  return graphemeRegexp.test(target) ? graphemeRegexp.lastIndex : -1;
};

exports.break = function(str) {
  return str === '' ? [] : str.match(graphemeRegexpGlobal);
};

// TODO: make it much more correct
const extend = build('(?!<Extend>)');
exports.regexForLiteral = function(literal) {
  return new RegExp(escapeStringRegexp(literal) + extend, 'u');
};

/* TODO - make the grapheme boundary rules more correct */
const extendCodes = new RegExp(build('<Extend>'), 'uy');

exports.graphemeBoundary = function(target, pos) {
  extendCodes.lastIndex = pos;
  if (extendCodes.test(target)) {
    return false;
  } else {
    return true;
  }
};
exports.build = build;
