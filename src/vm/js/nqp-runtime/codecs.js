'use strict';

/* This file contains code borrowed/adapated from iconv-lite
 and http://bjoern.hoehrmann.de/utf-8/decoder/dfa/
 */

const NQPException = require('./nqp-exception.js');

const graphemeBreaker = require('grapheme-breaker');

function isSurrogate(unit) {
  return false;
}

class SingleByteCodec {
  constructor(name, codes) {
    this.name = name;
    this.encodeBuf = new Buffer(65536);
    this.encodeBuf.fill(0);

    // stored separately so that we can have a unmapped flag in encodeBuf
    this.zero = codes.charCodeAt(0);
    for (let i = 1; i < codes.length; i++) {
      this.encodeBuf[codes.charCodeAt(i)] = i;
    }

    this.decodeBuf = Buffer.from(codes, 'ucs2');
  }

  encode(str) {
    const buf = new Buffer(str.length);
    for (let i = 0; i < str.length; i++) {
      const unit = str.charCodeAt(i);
      if (unit === this.zero) {
        buf[i] = 0;
      } else {
        const encoded = this.encodeBuf[unit];
        if (encoded === 0) {
          throw new NQPException('Error encoding ' + this.name + ' string: could not encode codepoint ' + unit);
        } else {
          buf[i] = encoded;
        }
      }
    }

    return buf;
  }

  encodeWithReplacement(str, replacement) {
    const replacementBuffer = this.encode(replacement);

    let replacementCount = 0;
    for (let i = 0; i < str.length; i++) {
      const code = str.charCodeAt(i);
      if (isSurrogate(code)) {
        i++;
        replacementCount++;
      } else {
        if (code !== this.zero && this.encodeBuf[code] === 0) {
          replacementCount++;
        }
      }
    }

    const buf = new Buffer(str.length + replacementCount * (replacementBuffer.length - 1));

    let offset = 0;

    for (let i = 0; i < str.length; i++) {
      const unit = str.charCodeAt(i);
      if (unit === this.zero) {
        buf[i] = 0;
      } else {
        const encoded = this.encodeBuf[unit];
        if (encoded === 0) {
          offset += replacementBuffer.copy(buf, offset);
        } else {
          buf[offset++] = encoded;
        }

        if (isSurrogate(unit)) {
          i++;
        }
      }
    }

    return buf;
  }

  decode(buf) {
    const decodeBuf = this.decodeBuf;
    const newBuf = new Buffer(buf.length*2);
    let idx1 = 0;
    let idx2 = 0;
    for (let i = 0; i < buf.length; i++) {
        idx1 = buf[i]*2; idx2 = i*2;
        newBuf[idx2] = decodeBuf[idx1];
        newBuf[idx2+1] = decodeBuf[idx1+1];
    }
    return newBuf.toString('ucs2');
  }
};

function withASCII(codes) {
  let asciiString = '';
  for (let i = 0; i < 128; i++) {
    asciiString += String.fromCharCode(i);
  }
  codes = asciiString + codes;
  return codes;
}

const windows1252 = new SingleByteCodec('Windows-1252', withASCII('€‚ƒ„…†‡ˆ‰Š‹ŒŽ‘’“”•–—˜™š›œžŸ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ'));

const latin1 = new SingleByteCodec('Latin-1', withASCII(' ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ'));

const ascii = new SingleByteCodec('ASCII', withASCII(''));

const UTF8_ACCEPT = 0;
const UTF8_REJECT = 1;

const UTF8_DFA = Buffer.from([
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // 00..1f
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // 20..3f
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // 40..5f
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // 60..7f
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, // 80..9f
  7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, // a0..bf
  8, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, // c0..df
  0xa, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x4, 0x3, 0x3, // e0..ef
  0xb, 0x6, 0x6, 0x6, 0x5, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, // f0..ff
  0x0, 0x1, 0x2, 0x3, 0x5, 0x8, 0x7, 0x1, 0x1, 0x1, 0x4, 0x6, 0x1, 0x1, 0x1, 0x1, // s0..s0
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, // s1..s2
  1, 2, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, // s3..s4
  1, 2, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 3, 1, 1, 1, 1, 1, 1, // s5..s6
  1, 3, 1, 1, 1, 1, 1, 3, 1, 3, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, // s7..s8
]);


class Utf8C8 {
  constructor() {
  }

  buildGraphemes(codePoints, chunks) {
    const graphemes = graphemeBreaker.break(String.fromCodePoint(...codePoints));
    for (const grapheme of graphemes) {
      if (grapheme === grapheme.normalize('NFC')) {
        chunks.push(grapheme);
      } else {
        let normalizedPrefix = 0;
        while (grapheme.slice(0, normalizedPrefix+1).normalize('NFC') === grapheme.slice(0, normalizedPrefix+1)) normalizedPrefix++;

        chunks.push(grapheme.slice(0, normalizedPrefix));
        const buf = Buffer.from(grapheme.slice(normalizedPrefix), 'utf8');
        this.reject(buf, 0, buf.length, chunks);
      }
    }
    codePoints.length = 0;
  }

  toDigit(n) {
    return n <= 9 ? String.fromCharCode('0'.charCodeAt(0) + n) : String.fromCharCode('A'.charCodeAt(0) + n - 10);
  }

  reject(buf, start, end, chunks) {
    for (let i = start; i < end; i++) {
      chunks.push(
        '\u{10FFFD}x' + this.toDigit(buf[i] >> 4) + this.toDigit(buf[i] & 0x0F)
      );
    }
  }

  decode(buf) {
    let state = UTF8_ACCEPT;
    let codePoint;
    const codePoints = [];

    const chunks = [];

    let accepted = -1;

    for (let i = 0; i < buf.length; i++) {
      const byte = buf[i];
      const type = UTF8_DFA[byte];

      codePoint = (state !== UTF8_ACCEPT) ?
       (byte & 0x3f) | (codePoint << 6) :
       (0xff >> type) & (byte);

      state = UTF8_DFA[256 + state*16 + type];

      if (state === UTF8_ACCEPT) {
        codePoints.push(codePoint);
        accepted = i;
      }

      if (state === UTF8_REJECT) {
        this.buildGraphemes(codePoints, chunks);
        this.reject(buf, accepted+1, i+1, chunks);

        state = UTF8_ACCEPT;
        accepted = i;
      }
    }

    this.buildGraphemes(codePoints, chunks);

    if (state !== UTF8_ACCEPT) {
      this.reject(buf, accepted+1, buf.length, chunks);
    }

    return chunks.join('');
  }
}

module.exports['utf8-c8'] = new Utf8C8;

module.exports['windows-1252'] = windows1252;
module.exports.latin1 = latin1;
module.exports.ascii = ascii;
