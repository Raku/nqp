'use strict';

/* This file contains code borrowed/adapated from iconv-lite */

const NQPException = require('./nqp-exception.js');

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
    let idx1 = 0, idx2 = 0;
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

module.exports['windows-1252'] = windows1252;
module.exports.latin1 = latin1;
module.exports.ascii = ascii;
