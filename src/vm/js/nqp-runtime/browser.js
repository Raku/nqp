const op = {};
const Null = require('./null.js');
const Hash = require('./hash.js');
const core = require('./core.js');

const AnsiToHtml = require('ansi-to-html');

const NQPObject = require('./nqp-object.js');

exports.op = op;

class BufferedConsole extends NQPObject {
  constructor(output) {
    super();
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

  $$isttyfh() {
    return 1;
  }

  $$setbuffersizefh(size) {
    return this;
  }
}

class BrowserStdin extends NQPObject {
  $$isttyfh() {
    return 1;
  }
}

const converter = new AnsiToHtml({escapeXML: true, stream: true});

class HijackedConsole extends NQPObject {
  constructor(hijack) {
    super();
    this.hijack = hijack;
  }

  $$writefh(buf) {
    const buffer = core.toRawBuffer(buf);
    this.$$write(buffer.toString());
  }

  $$write(str) {
    this.hijack(converter.toHtml(str));
  }

  $$isttyfh() {
    return 1;
  }
}

let STDOUT;
if (window.NQP_STDOUT) {
  STDOUT = new HijackedConsole(window.NQP_STDOUT)
} else if (window.__karma__) {
  const TapConsole = require('./tap-console.js');
  STDOUT = new TapConsole();
} else {
  STDOUT = new BufferedConsole(output => console.error(output));
}

if (window.__karma__) {
  if (!window.__rakudo__) {
    window.__rakudo__ = {};
  }

  window.__rakudo__.startTime = new Date().getTime();
  window.__rakudo__.waitForStart = [];
  window.__rakudo__.results = [];
  window.__rakudo__.resultCount = 0;

  window.__karma__.start = function(results) {
    STDOUT.karmaResults = results;

    for (const code of window.__rakudo__.waitForStart) {
      code();
    }

    window.__karma__.info({total: window.__rakudo__.resultCount});
    for (const result of window.__rakudo__.results) {
      window.__karma__.result(result);
    }
    window.__karma__.complete({
      coverage: window.__coverage__
    });

  };
}

const STDERR = new BufferedConsole(output => console.error(output));
const STDIN = new BrowserStdin();

op.say = function(arg) {
  STDOUT.$$write(arg + '\n');
  return arg;
};

op.print = function(arg) {
  STDOUT.$$write(arg);
  return arg;
};

op.getstdin = function(arg) {
  return STDIN;
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

op.getpid = function() {
  return -1;
};

op.getppid = function() {
  return -1;
};

op.cwd = function() {
  return '?';
};

exports.Exit = class Exit {};

op.exit = function() {
  throw new exports.Exit();
};
