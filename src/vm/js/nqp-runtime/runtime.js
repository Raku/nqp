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
    throw "Can't convert to str";
  }
};

exports.to_num = function(arg) {
  if (typeof arg == 'number') {
    return arg;
  } else {
    throw "Can't convert to num";
  }
};

exports.to_bool = function(arg) {
  if (typeof arg == 'number') {
    return arg ? 1 : 0;
  }
  if (typeof arg == 'string') {
    return arg == "" || arg == "0" ? 0 : 1;
  }
};

exports.named = function(named) {
  return named;
};

// Placeholder
exports.top_context = function() {
  return null;
};
