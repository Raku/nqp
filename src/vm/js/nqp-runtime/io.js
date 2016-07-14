var fs = require('fs-ext');
var os = require('os');
var sleep = require('sleep');

var tty = require('tty');
var nqpIo = require('nqp-js-io');

var Hash = require('./hash.js');

var core = require('./core.js');

var child_process = require('child_process');

function boolish(bool) {
  return bool ? 1 : 0;
}

var op = {};
exports.op = op;

op.print = function(arg) {
  process.stdout.write(arg);
  return arg;
};

op.say = function(arg) {
  if (process.stdout) {
    process.stdout.write(arg);
    process.stdout.write('\n');
  } else {
    console.log(arg);
  }
  return arg;
};

function stat(file, code, lstat) {
  var EXISTS = 0;
  var FILESIZE = 1;
  var ISDIR = 2;
  var ISREG = 3;
  var ISDEV = 4;
  var CREATETIME = 5;
  var ACCESSTIME = 6;
  var MODIFYTIME = 7;
  var CHANGETIME = 8;
  var BACKUPTIME = 9;
  var UID = 10;
  var GID = 11;
  var ISLNK = 12;
  var PLATFORM_DEV = -1;
  var PLATFORM_INODE = -2;
  var PLATFORM_MODE = -3;
  var PLATFORM_NLINKS = -4;
  var PLATFORM_DEVTYPE = -5;
  var PLATFORM_BLOCKSIZE = -6;
  var PLATFORM_BLOCKS = -7;

  // we can't use fs.existsSync(file) as it follows symlinks
  try {
    if (lstat || code == ISLNK) {
      var stats = fs.lstatSync(file);
    } else {
      var stats = fs.statSync(file);
    }
  } catch (err) {
    if (code == EXISTS && err.code === 'ENOENT') {
      return 0;
    } else {
      throw err;
    }
  }

  switch (code) {
    case EXISTS: return 1;
    case FILESIZE: return stats.size;
    case ISDIR: return boolish(stats.isDirectory());
    case ISREG: return boolish(stats.isFile());
    case ISDEV:
      return boolish(stats.isCharacterDevice() || stats.isBlockDevice());
    case CREATETIME: return -1;
    case ACCESSTIME: return stats.atime.getTime() / 1000;
    case MODIFYTIME: return stats.mtime.getTime() / 1000;
    case CHANGETIME: return stats.ctime.getTime() / 1000;
    case BACKUPTIME: return -1;
    case UID: return stats.uid;
    case GID: return stats.gid;
    case ISLNK: return boolish(stats.isSymbolicLink());
    case PLATFORM_DEV: return stats.dev;
    case PLATFORM_INODE: return stats.ino;
    case PLATFORM_MODE: return stats.mode;
    case PLATFORM_NLINKS: return stats.nlink;
    case PLATFORM_DEVTYPE: return stats.rdev;
    case PLATFORM_BLOCKSIZE: return stats.blksize;
    case PLATFORM_BLOCKS: return stats.blocks;
  }
}


op.stat = function(file, code) {
  return stat(file, code, false) | 0;
};

op.stat_time = function(file, code) {
  return stat(file, code, false);
};

op.lstat = function(file, code) {
  return stat(file, code, true) | 0;
};

op.lstat_time = function(file, code) {
  return stat(file, code, true);
};

function FileHandle(fd) {
  this.fd = fd;
}

FileHandle.prototype.closefh = function() {
  fs.closeSync(this.fd);
};

FileHandle.prototype.isttyfh = function() {
  return tty.isatty(this.fd) ? 1 : 0;
};

FileHandle.prototype.printfh = function(content) {
  var buffer = new Buffer(content, this.encoding);
  return fs.writeSync(this.fd, buffer, 0, buffer.length);
};

FileHandle.prototype.$$toBool = function(ctx) {
  return 1;
};

op.open = function(name, mode) {
  var modes = {r: 'r', w: 'w', wa: 'a', '-ct': 'w', '-ca': 'a'};
  if (!modes[mode]) { throw 'unknown mode to open: ' + mode }
  var fh = new FileHandle(fs.openSync(name, modes[mode]));
  fh.encoding = 'utf8';
  return fh;
};

op.tellfh = function(fh) {
  return fs.seekSync(fh.fd, 0, 1);
};

op.eoffh = function(fh) {
  // I haven't found a way to implement this directly in node.js
  var current = fs.seekSync(fh.fd, 0, 1);
  var end = fs.seekSync(fh.fd, 0, 2);
  fs.seekSync(fh.fd, current, 0);
  return current == end ? 1 : 0;
};

op.setencoding = function(fh, encoding) {
  fh.encoding = core.renameEncoding(encoding);
};

op.setinputlinesep = function(fh, sep) {
  fh.seps = [sep];
};

op.setinputlineseps = function(fh, seps) {
  fh.seps = seps.array;
};

op.readlinefh = function(fh) {
  return readline(fh, false);
};

op.readlinechompfh = function(fh) {
  return readline(fh, true);
};

function readline(fh, chomp) {
  var line = '';
  var buffer = new Buffer(16);
  var starting = fs.seekSync(fh.fd, 0, 1);
  var position = starting;
  var bytesRead;
  READ_LINE:
  var string = '';
  while ((bytesRead =
              fs.readSync(fh.fd, buffer, 0, buffer.length, position)) != 0) {
    position += bytesRead;
    var string = string + buffer.slice(0, bytesRead).toString(fh.encoding);

    var newline;
    // TODO think/ask about a "" sep
    var offset;
    var sep;
    var newline = -1;
    if (fh.seps) {
      for (var i = 0; i < fh.seps.length; i++) {
        var offset = string.indexOf(fh.seps[i]);
        if (offset != -1 && (newline == -1 || offset < newline)) {
          newline = offset;
          sep = fh.seps[i];
        }
      }

    } else {
      var cr = string.indexOf('\r');
      var nl = string.indexOf('\n');
      if (cr != -1 && cr < nl) {
        if (cr < nl) {
          newline = cr;
          if (cr + 1 == nl) {
            sep = '\r\n';
          } else {
            sep = '\r';
          }
        }
      } else {
        newline = nl;
        sep = '\n';
      }
    }

    if (newline != -1) {
      var upToNewline = string.slice(0, newline);
      // THINK ABOUT decoding and encoding might give a different offset

      fs.seekSync(fh.fd,
          Buffer.byteLength(upToNewline + sep, fh.encoding) + starting, 0);

      return (chomp ? upToNewline : upToNewline + sep).replace(/\r\n/, '\n');
    }
  }

  fs.seekSync(fh.fd, position, 0);
  return string.replace(/\r\n/, '\n');
}


op.readallfh = function(fh) {
  if (fh instanceof nqpIo.SyncPipe) {
    return fh.slurp().toString(fh.encoding || 'utf8');
  }
  var all = new Buffer(0);
  var buf = new Buffer(32768);
  var total = 0;
  var bytesRead;
  while ((bytesRead = fs.readSync(fh.fd, buf, 0, buf.length, null)) != 0) {
    total += bytesRead;
    var all = Buffer.concat([all, buf], total);
  }
  return all.toString(fh.encoding).replace(/\r\n/, '\n');
};

op.seekfh = function(ctx, fh, offset, whence) {
  if (whence == 0 && offset < 0) {
    ctx.die("Can't seek to position: " + offset);
  }
  if (!(whence == 0 || whence == 1 || whence == 2)) {
    ctx.die('Invalid whence passed to seekfh: ' + whence);
  }
  fs.seekSync(fh.fd, offset, whence);
};

op.closefh = function(fh) {
  if (fh instanceof nqpIo.SyncPipe) {
    fh.close();
    return fh;
  }
  fh.closefh();
  return fh;
};

op.closefh_i = function(fh) {
  if (fh instanceof nqpIo.SyncPipe) {
    return fh.close();
  }
  op.closefh(fh);
  /* TODO proper return value */
  return 0;
};

op.isttyfh = function(fh) {
  return fh.isttyfh();
};

op.printfh = function(fh, content) {
  return fh.printfh(content);
};

op.sayfh = function(fh, content) {
  return fh.printfh(content + "\n");
};

op.unlink = function(filename) {
  fs.unlinkSync(filename);
};

op.link = function(srcpath, dstpath) {
  fs.linkSync(srcpath, dstpath);
};

op.symlink = function(srcpath, dstpath) {
  fs.symlinkSync(srcpath, dstpath);
};

op.chdir = function(dir) {
  process.chdir(dir);
};

op.rmdir = function(dir) {
  fs.rmdirSync(dir);
};

op.mkdir = function(dir, mode) {
  try {
    fs.accessSync(dir, fs.F_OK);
  } catch (e) {
    fs.mkdirSync(dir, mode);
  }
};

var PIPE_INHERIT = 1;
var PIPE_IGNORE = 2;
var PIPE_CAPTURE = 4;
var PIPE_INHERIT_IN = 1;
var PIPE_IGNORE_IN = 2;
var PIPE_CAPTURE_IN = 4;
var PIPE_INHERIT_OUT = 8;
var PIPE_IGNORE_OUT = 16;
var PIPE_CAPTURE_OUT = 32;
var PIPE_INHERIT_ERR = 64;
var PIPE_IGNORE_ERR = 128;
var PIPE_CAPTURE_ERR = 256;

op.spawn = function(command, dir, env, input, output, error, flags) {
  nqpIo.spawn(command.array, dir, env.$$toObject(), input, output, error, flags);
};


op.syncpipe = function() {
  return new nqpIo.SyncPipe();
};

op.shell = function(command, dir, env, input, output, error, flags) {
  nqpIo.shell(command, dir, env.$$toObject(), input, output, error, flags);
};

op.cwd = function() {
  return process.cwd();
};

op.getenvhash = function() {
  var hash = new Hash();
  for (var key in process.env) {
    hash.content.set(key, process.env[key]);
  }
  return hash;
};

function Stderr() {
}

Stderr.prototype.printfh = function(msg) {
  process.stderr.write(msg);
};

Stderr.prototype.isttyfh = function() {
  return (process.stderr.isTTY ? 1 : 0);
};

Stderr.prototype.$$toBool = function(ctx) {
  return 1;
};

op.getstderr = function() {
  return new Stderr();
};

function Stdout() {
}

Stdout.prototype.isttyfh = function() {
  return (process.stdout.isTTY ? 1 : 0);
};

Stdout.prototype.printfh = function(msg) {
  process.stdout.write(msg);
};

Stdout.prototype.$$toBool = function(ctx) {
  return 1;
};

op.getstdout = function() {
  return new Stdout();
};

op.flushfh = function(fh) {
  // STUB - will require custom io to implement
  return fh;
};

function Stdin() {
}

Stdin.prototype.$$toBool = function(ctx) {
  return 1;
};

Stdin.prototype.isttyfh = function() {
  return (process.stdin.isTTY ? 1 : 0);
};

op.getstdin = function() {
  return new Stdin();
};

op.exit = function(code) {
  process.exit(code);
};

op.readlink = function(path) {
  return fs.readlinkSync(path);
};

op.gethostname = function() {
  return os.hostname();
};

op.chmod = function(path, mode) {
  return fs.chmodSync(path, mode);
};

op.sleep = function(seconds) {
  sleep.usleep(Math.floor(seconds*1000000));
  return seconds;
}
