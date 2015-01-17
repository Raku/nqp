// Converts a Boolean value - to either 1 or 0 as nqp has no boolean type
exports.nqp_bool = function(value) {
  return value ? 1 : 0;
};
