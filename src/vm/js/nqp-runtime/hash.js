function Hash() {
}
Hash.prototype.$$bindkey = function(key, value) {
    return (this[key] = value);
};
Hash.prototype.$$atkey = function(key) {
    return this[key];
};

Hash.prototype.$$clone = function() {
    var clone = new Hash();
    for (var key in this) {
        if (this.hasOwnProperty(key)) {
            clone[key] = this[key];
        }
    }
    return clone;
};

module.exports = Hash;
