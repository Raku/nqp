function Hash() {
}
Hash.prototype.$$bindkey = function(key, value) {
    return (this[key] = value);
};
Hash.prototype.$$atkey = function(key) {
    return this[key];
};
module.exports = Hash;
