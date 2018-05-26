const graphemes = require('./graphemes.js');

const meat = '<Prepend>*(<RISequence>|<HangulSyllable>|(?:(<E_Base>|<E_Base_GAZ>)<Extend>*<E_Modifier>)|(?:(?!<Control>|<Prepend>|<Extend>).))(?:<Grapheme_Extend>|<SpacingMark>)*';

const graphemePattern = new RegExp(graphemes.build('\u{10FFFD}x[0-9A-Z][0-9A-Z]|<CRLF>|<Degenerate>|' + meat + '|(?:(<Prepend>|<Extend>)(?:<Prepend>|<Extend>)*)|[^]'), 'ug');

module.exports = str => {
  const stripped = str.normalize('NFD').replace( graphemePattern,
    function(match, baseSequence, baseEmoji, firstDegenerate, offset, string) {
      if (baseEmoji !== undefined) return baseEmoji;
      if (baseSequence !== undefined) return baseSequence;
      if (firstDegenerate !== undefined) return firstDegenerate;
      return match;
    });
  return stripped;
};
