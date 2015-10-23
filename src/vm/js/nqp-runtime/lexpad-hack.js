function LexPadHack(content) {
  this.content = content;
}

LexPadHack.prototype.$$existskey = function(key) {
  return this.content.hasOwnProperty(key) ? 1 : 0;
};

LexPadHack.prototype.$$atkey = function(key) {
  return this.content[key];
};

module.exports = LexPadHack;
