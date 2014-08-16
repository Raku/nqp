var op = {};
exports.op = op;

op.print = function(arg) {
  process.stdout.write(arg);
};
op.say = function(arg) {
  if (process.stdout) {
    process.stdout.write(arg);
    process.stdout.write('\n');
  } else {
    console.log(arg);
  }
};

op.isinvokable = function(obj) {
  return (typeof obj == 'function' ? 1 : 0);
};

exports.to_str = function(arg) {
  if (typeof arg == 'number') {
    return arg.toString();
  } else if (typeof arg == 'string') {
    return arg;
  } else {
    console.log(arg);
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
  } else if (typeof arg == 'string') {
    return arg == "" || arg == "0" ? 0 : 1;
  } else if (arg instanceof Array) {
    return arg.length == 0 ? 0 : 1;
  } else {
    console.log(arg);
    throw "Can't decide if arg is true";
  }
};

exports.named = function(named) {
  return named;
};


// Placeholder
exports.top_context = function() {
  return null;
};
