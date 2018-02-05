'use strict';
const data = require('nqp-unicode-data');

function build(source) {
  return source.replace(/ /g, '').replace(/<([^>]+)>/g, function(match, part) {
    const content = parts[part] ? build(parts[part]) : data.regex(part);
    if (content === undefined) throw "Can't do anything with: " + part;
    return '(?:' + content + ')';
  });
}

const parts = {};

parts.CRLF = '<CR><LF>';
parts.RISequence = '<Regional_Indicator><Regional_Indicator>';
parts.HangulSyllable = '<L>*<V>+<T>*|<L>*<LV><V>*<T>*|<L>*<LVT><T>*|<L>+|<T>+';
parts.Grapheme_Extend = '<Extend> | (?:<ZWJ><Glue_After_Zwj>) | (?:<ZWJ><E_Base_GAZ><Extend>*<E_Modifier>?) | <ZWJ>'
parts.Modified = '<Prepend>*(?:<RISequence>|<HangulSyllable>|(?:(?:<E_Base>|<E_Base_GAZ>)<Extend>*<E_Modifier>)|(?:(?!<Control>).))(<Grapheme_Extend>|<SpacingMark>)*';

parts.Degenerate = '<ZWJ>(?:<Glue_After_Zwj>|<E_Base_GAZ><Extend>*<E_Modifier>?)';

const graphemePattern = build('\u{10FFFD}x[0-9A-Z][0-9A-Z]|<CRLF>|<Degenerate>|<Modified>|[^]');

exports.regexp = new RegExp(graphemePattern, 'yu');

exports.completeGrapheme = new RegExp(build('(?:<CR>|<LF>|<Control>)$'), 'u');
