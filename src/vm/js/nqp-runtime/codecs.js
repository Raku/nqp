"use strict";;
class SingleByteCodec {
  constructor(codes) {
    if (codes.length !== 128 && codes.length !== 256) {
      throw new Error("invalid codes passed to SingleByteCodec");
    }

    if (codes.length === 128) {
      let asciiString = "";
      for (var i = 0; i < 128; i++)
        asciiString += String.fromCharCode(i);
      codes = asciiString + codes;
    }

    this.encodeBuf = new Buffer(65536);
    this.encodeBuf.fill(0);
    
    // stored separately so that we can have a unmapped flag in encodeBuf
    this.zero = codes.charCodeAt(0);
    for (var i = 1; i < codes.length; i++) {
      //console.log(codes[i] + ": " + codes.charCodeAt(i) + ' -> ' + i);
      this.encodeBuf[codes.charCodeAt(i)] = i;
    }

    this.decodeBuf = Buffer.from(codes, 'ucs2');
  }

  encode(str) {
    let buf = new Buffer(str.length);
    for (let i = 0; i < str.length; i++) {
      // TODO: surrogate check
      const code = str.charCodeAt(i);
      if (code === this.zero) {
        buf[i] = 0;
      } else {
        const encoded = this.encodeBuf[code];
        if (encoded === 0) {
          console.log("unmapped character:", str[i]);
          throw new Error("unmapped character");
        } else {
          buf[i] = encoded;
        }
      }
    }

    return buf;
  }

  decode(buf) {
  }
};


const windows1252 = new SingleByteCodec("€�‚ƒ„…†‡ˆ‰Š‹Œ�Ž��‘’“”•–—˜™š›œ�žŸ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ");

//console.log(windows1252.encode("test"));
//console.log(windows1252.encode("test: ☃"));

module.exports.windows1252 = windows1252;
