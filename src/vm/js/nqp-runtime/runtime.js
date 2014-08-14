var op = {};
exports.op = op;

op.print = function(arg) {
  process.stdout.write(arg);
};
op.say = function(arg) {
  process.stdout.write(arg);
  process.stdout.write('\n');
};

exports.to_str = function(arg) {
  if (typeof arg == 'number') {
    return arg.toString();
  } else if (typeof arg == 'string') {
    return arg;
  } else {
    throw "Can't convert to string";
  }
};

exports.named = function(named) {
  return named;
};

// Placeholder
exports.top_context = function() {
  return null;
};
