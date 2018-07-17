const op = {};
const Null = require('./null.js');
const Hash = require('./hash.js');
const core = require('./core.js');

exports.op = op;

class BufferedConsole {
  constructor(output) {
    this.buffered = [];
    this.output = output;
  }

  $$writefh(buf) {
    const buffer = core.toRawBuffer(buf);
    this.$$write(buffer.toString());
  }

  $$write(str) {
    const lines = str.split(/\n/);
    if (lines.length === 0) return;
    for (let i = 0; i < lines.length-1; i++) {
      if (i === 0) {
        this.output(this.buffered.join('') + lines[0]);
        this.buffered.length = 0;
      } else {
        this.output(lines[i]);
      }
    }

    if (lines[lines.length - 1] !== '') {
      this.buffered.push(lines[lines.length - 1]);
    }
  }
}

const STDOUT = new BufferedConsole(output => console.log(output));
const STDERR = new BufferedConsole(output => console.error(output));

op.say = function(arg) {
  STDOUT.$$write(arg + '\n');
  return arg;
};

op.print = function(arg) {
  STDOUT.$$write(arg);
  return arg;
};

op.getstdin = function(arg) {
  return Null;
};

op.getstdout = function(arg) {
  return STDOUT;
};

op.getstderr = function(arg) {
  return STDERR;
};

op.getenvhash = function() {
  return new Hash();
};
