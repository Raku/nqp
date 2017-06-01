'use strict';
var fs = require('fs-ext');
var os = require('os');
var sleep = require('sleep');

var tty = require('tty');
var nqpIo = require('nqp-js-io');

var Hash = require('./hash.js');

var core = require('./core.js');

var child_process = require('child_process');

var NQPObject = require('./nqp-object.js');
var Null = require('./null.js');

var mkdirp = require('mkdirp');

var nqp = require('nqp-runtime');

nqpIo.SyncPipe.prototype.$$decont = function(ctx) {
  return this;
};

nqpIo.SyncPipe.prototype.$$can = function(method) {
  return 0;
};

nqpIo.SyncPipe.prototype.$$readfh = function(buf, size) {
  let lowlevel = this.$$readBuffer(size);

  let elementSize = core.byteSize(buf);

  let isUnsigned = buf._STable.REPR.type._STable.REPR.is_unsigned;

  if (lowlevel) {
    let offset = 0;
    buf.array.length = lowlevel.length / elementSize;
    for (var i = 0; i < lowlevel.length / elementSize; i++) {
      buf.array[i] = isUnsigned ? lowlevel.readUIntLE(offset, elementSize) : lowlevel.readIntLE(offset, elementSize);
      offset += elementSize;
    }
  } else {
    buf.array.length = 0;
  }

  return buf;
};

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

function isFile(path, mode) {
  try {
    fs.accessSync(path, mode);
  } catch (e) {
    return 0;
  }
  return 1;
}

op.filewritable = function(path) {
  return isFile(path, fs.constants.W_OK);
};

op.fileexecutable = function(path) {
  return isFile(path, fs.constants.X_OK);
};

op.filereadable = function(path) {
  return isFile(path, fs.constants.R_OK);
};

function stat(file, code, lstat) {
  const EXISTS = 0;
  const FILESIZE = 1;
  const ISDIR = 2;
  const ISREG = 3;
  const ISDEV = 4;
  const CREATETIME = 5;
  const ACCESSTIME = 6;
  const MODIFYTIME = 7;
  const CHANGETIME = 8;
  const BACKUPTIME = 9;
  const UID = 10;
  const GID = 11;
  const ISLNK = 12;
  const PLATFORM_DEV = -1;
  const PLATFORM_INODE = -2;
  const PLATFORM_MODE = -3;
  const PLATFORM_NLINKS = -4;
  const PLATFORM_DEVTYPE = -5;
  const PLATFORM_BLOCKSIZE = -6;
  const PLATFORM_BLOCKS = -7;

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

op.fileislink = function(file) {
  return boolish(fs.lstatSync(file).isSymbolicLink());
};

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

class IOHandle extends NQPObject {
  $$toBool(ctx) {
    return 1;
  }

  $$serializeAsNull() {
    return 1;
  }

  $$setinputlinesep(sep) {
    this.seps = [sep];
  }

  $$setinputlineseps(seps) {
    this.seps = seps.array;
  }

  $$setencoding(encoding) {
    this.encoding = core.renameEncoding(encoding);
  }
}

const CHUNK_SIZE = 32768;
class FileHandle extends IOHandle {
  constructor(fd) {
    super();
    this.fd = fd;
  }

  $$closefh() {
    fs.closeSync(this.fd);
  }

  $$isttyfh() {
    return tty.isatty(this.fd) ? 1 : 0;
  }


  $$toBool(ctx) {
    return 1;
  }

  $$can(ctx, name) {
    return 0;
  }

  $$filenofh() {
    return this.fd;
  }

  $$eoffh() {
    // I haven't found a way to implement this directly in node.js
    var current = fs.seekSync(this.fd, 0, 1);
    var end = fs.seekSync(this.fd, 0, 2);
    fs.seekSync(this.fd, current, 0);
    return current == end ? 1 : 0;
  }

  $$tellfh() {
    return fs.seekSync(this.fd, 0, 1);
  }

  $$lockfh(fh, flags) {
    fs.flockSync(this.fd, (flags & 0x01 ? 'sh' : 'ex') + (flags & 0x10 ? 'nb' : ''));
    return this;
  }

  $$unlockfh(flags) {
    fs.flockSync(this.fd, 'un');
    return this;
  }

  $$flushfh() {
    // STUB - will require custom io to implement
    return this;
  }

  $$writefh(buf) {
    var buffer = core.toRawBuffer(buf);
    return fs.writeSync(this.fd, buffer, 0, buffer.length);
  }

  $$setencoding(encoding) {
    this.encoding = core.renameEncoding(encoding);
  }

  $$readfh(buf, bytes) {
    let is_unsigned = buf._STable.REPR.type._STable.REPR.is_unsigned;
    let buffer = Buffer.allocUnsafe(bytes);
    let read = fs.readSync(this.fd, buffer, 0, bytes, null);
    buf.array.length = read;
    for (let i = 0; i < read; i++) {
      if (is_unsigned) {
        buf.array[i] = buffer[i];
      } else {
        buf.array[i] = buffer[i] > 127 ? buffer[i] - 256 : buffer[i];
      }
    }
    return buf;
  }
};

exports.FileHandle = FileHandle;

function modeToFlags(mode) {
  let flags;

  if (mode === 'w') {
    flags = fs.constants.O_WRONLY | fs.constants.O_CREAT | fs.constants.O_TRUNC;
  } else {
    if (mode[0] === 'r') flags = fs.constants.O_RDONLY;
    else if (mode[0] === '-') flags = fs.constants.O_WRONLY;
    else if (mode[0] === '+') flags = fs.constants.O_RDWR;
    else if (mode[0] === 'w') flags = fs.constants.O_WRONLY | fs.constants.O_CREAT;
    else throw 'unknown mode to open: ' + mode;
  }

  for (let c of mode.substr(1)) {
    if (c === 'a') flags |= fs.constants.O_APPEND;
    else if (c === 'c') flags |= fs.constants.O_CREAT;
    else if (c === 't') flags |= fs.constants.O_TRUNC;
    else if (c === 'x') flags |= fs.constants.O_EXCL;
    else throw 'unknown mode to open: ' + mode;
  }

  return flags;
}

op.open = function(name, mode) {
  let fh = new FileHandle(fs.openSync(name, modeToFlags(mode)));
  fh.encoding = 'utf8';
  return fh;
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
  fh.$$closefh();
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


op.unlink = function(filename) {
  try {
    fs.unlinkSync(filename);
  } catch (e) {
    if (e.code !== 'ENOENT') {
      throw e;
    }
  }
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
  mkdirp.sync(dir, mode);
};

class DirHandle {
  constructor(contents) {
    this.contents = contents;
    this.idx = 0;
  }

  $$nextfiledir() {
    if (this.idx === this.contents.length) return '';
    return this.contents[this.idx++];
  }

  $$decont(ctx) {
    return this;
  }

  $$closedir() {
  }
};

op.opendir = function(path) {
  return new DirHandle(fs.readdirSync(path));
};

const PIPE_INHERIT = 1;
const PIPE_IGNORE = 2;
const PIPE_CAPTURE = 4;
const PIPE_INHERIT_IN = 1;
const PIPE_IGNORE_IN = 2;
const PIPE_CAPTURE_IN = 4;
const PIPE_INHERIT_OUT = 8;
const PIPE_IGNORE_OUT = 16;
const PIPE_CAPTURE_OUT = 32;
const PIPE_INHERIT_ERR = 64;
const PIPE_IGNORE_ERR = 128;
const PIPE_CAPTURE_ERR = 256;

function convertNull(obj) {
  return obj === Null ? null : obj;
}

function stringifyEnv(ctx, hash) {
  let stringifed= {};

  hash.content.forEach(function(value, key, map) {
    stringifed[key] = nqp.toStr(value, ctx);
  });

  return stringifed;
}

op.spawn = function(ctx, command, dir, env, input, output, error, flags) {
  let stringified = [];
  for (let c of command.array) {
    stringified.push(nqp.toStr(c, ctx));
  }

  return nqpIo.spawn(stringified, dir, stringifyEnv(ctx, env), convertNull(input), convertNull(output), convertNull(error), flags);
};


op.syncpipe = function() {
  return new nqpIo.SyncPipe();
};

op.shell = function(ctx, command, dir, env, input, output, error, flags) {
  return nqpIo.shell(command, dir, stringifyEnv(ctx, env), convertNull(input), convertNull(output), convertNull(error), flags);
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

class StdHandle extends IOHandle {
    constructor() {
      super();
      this.encoding = 'utf8';
    }
}

class Stderr extends StdHandle {
  constructor() {
    super();
  }

  $$filenofh() {
    return process.stderr.fd;
  }

  $$isttyfh() {
    return (process.stderr.isTTY ? 1 : 0);
  }

  $$writefh(buf) {
    var buffer = core.toRawBuffer(buf);
    process.stdout.write(buffer);
  }
};

op.getstderr = function() {
  return new Stderr();
};

class Stdout extends StdHandle {
  isttyfh() {
    return (process.stdout.isTTY ? 1 : 0);
  }

  $$filenofh() {
    return process.stdout.fd;
  }

  $$flushfh() {
  }

  $$writefh(buf) {
    var buffer = core.toRawBuffer(buf);
    process.stdout.write(buffer);
  }
};

op.getstdout = function() {
  return new Stdout();
};


class Stdin extends StdHandle {
  $$filenofh() {
    return process.stdin.fd;
  }

  $$isttyfh() {
    return (process.stdin.isTTY ? 1 : 0);
  }
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
  sleep.usleep(Math.floor(seconds * 1000000));
  return seconds;
};

op.copy = function(source, target) {
  fs.writeFileSync(target, fs.readFileSync(source));
};

op.rename = function(oldPath, newPath) {
  fs.renameSync(oldPath, newPath);
};

