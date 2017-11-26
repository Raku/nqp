const xregexp = require('xregexp');

function matchClass(category, negated) {
  let regexp = xregexp('\\' + (negated ? 'P' : 'p') + '{' + category + '}', 'Ay');
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
  No: 'No',
  Nl: 'Nl',
  lower: 'Lowercase',
  Letter: 'Letter',
  InCyrillicSupplementary: 'InCyrillicSupplement'
};

for (let prop in props) {
  exports['uniprop_' + prop] = matchClass(props[prop], false);
  exports['uniprop_not_' + prop] = matchClass(props[prop], true);
}

const inProps = "InAlphabeticPresentationForms InArabic InArabicPresentationFormsA InArabicPresentationFormsB InArmenian InArrows InBasicLatin InBengali InBlockElements InBopomofo InBopomofoExtended InBoxDrawing InBraillePatterns InBuhid InByzantineMusicalSymbols InCherokee InCJKCompatibility InCJKCompatibilityForms InCJKCompatibilityIdeographs InCJKCompatibilityIdeographsSupplement InCJKRadicalsSupplement InCJKSymbolsAndPunctuation InCJKUnifiedIdeographs InCJKUnifiedIdeographsExtensionA InCJKUnifiedIdeographsExtensionB InCombiningDiacriticalMarks InCombiningDiacriticalMarksforSymbols InCombiningHalfMarks InControlPictures InCurrencySymbols InCyrillic InDeseret InDevanagari InDingbats InEnclosedAlphanumerics InEnclosedCJKLettersAndMonths InEthiopic InGeneralPunctuation InGeometricShapes InGeorgian InGothic InGreekAndCoptic InGreekExtended InGujarati InGurmukhi InHalfwidthAndFullwidthForms InHangulCompatibilityJamo InHangulJamo InHangulSyllables InHanunoo InHebrew InHighPrivateUseSurrogates InHighSurrogates InHiragana InIdeographicDescriptionCharacters InIPAExtensions InKanbun InKangxiRadicals InKannada InKatakana InKatakanaPhoneticExtensions InKhmer InLao InLatin1Supplement InLatinExtendedA InLatinExtendedAdditional InLatinExtendedB InLetterlikeSymbols InLowSurrogates InMalayalam InMathematicalAlphanumericSymbols InMathematicalOperators InMiscellaneousMathematicalSymbolsA InMiscellaneousMathematicalSymbolsB InMiscellaneousSymbols InMiscellaneousTechnical InMongolian InMusicalSymbols InMyanmar InNumberForms InOgham InOldItalic InOpticalCharacterRecognition InOriya InPrivateUseArea InRunic InSinhala InSmallFormVariants InSpacingModifierLetters InSpecials InSuperscriptsAndSubscripts InSupplementalArrowsA InSupplementalArrowsB InSupplementalMathematicalOperators InSupplementaryPrivateUseAreaA InSupplementaryPrivateUseAreaB InSyriac InTagalog InTagbanwa InTags InTamil InTelugu InThaana InThai InTibetan InUnifiedCanadianAboriginalSyllabics InVariationSelectors InYiRadicals InYiSyllables".split(" ");

for (let prop of inProps) {
  exports['uniprop_' + prop] = matchClass(prop, false);
  exports['uniprop_not_' + prop] = matchClass(prop, true);
}
