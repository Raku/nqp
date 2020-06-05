'use strict';
const fs = require('fs-ext');
const os = require('os');
const sleep = require('sleep');

const tty = require('tty');

const Hash = require('./hash.js');

const core = require('./core.js');

const hll = require('./hll.js');

const child_process = require('child_process');

const NQPObject = require('./nqp-object.js');

const mkdirp = require('mkdirp');

const NQPException = require('./nqp-exception.js');

const nqp = require('./runtime.js');

const Null = require('./null.js');

const NQPInt = require('./nqp-int.js');
const NQPStr = require('./nqp-str.js');

const BOOT = require('./BOOT.js');

function boolish(bool) {
  return bool ? 1 : 0;
}

const op = {};
exports.op = op;

op.print = function(arg) {
  process.stdout.write(arg);
  return arg;
};

op.say = function(arg) {
  process.stdout.write(arg + '\n');
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
  let stats;
  try {
    if (lstat || code == ISLNK) {
      stats = fs.lstatSync(file);
    } else {
      stats = fs.statSync(file);
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
  $$can(ctx, name) {
    return 0;
  }

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

  $$setbuffersizefh(size) {
    return this;
  }
};

class FileHandle extends IOHandle {
  constructor(fd) {
    super();
    this.fd = fd;
    this.eof = false;
  }

  $$closefh() {
    fs.closeSync(this.fd);
    return this;
  }

  $$isttyfh() {
    return tty.isatty(this.fd) ? 1 : 0;
  }


  $$toBool(ctx) {
    return 1;
  }

  $$filenofh() {
    return this.fd;
  }

  $$eoffh() {
    return this.eof ? 1 : 0;
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
    const buffer = core.toRawBuffer(buf);
    return fs.writeSync(this.fd, buffer, 0, buffer.length);
  }

  $$readfh(buf, bytes) {
    const isUnsigned = buf.$$STable.REPR.type.$$STable.REPR.isUnsigned;
    const buffer = Buffer.allocUnsafe(bytes);
    const read = fs.readSync(this.fd, buffer, 0, bytes, null);
    if (read === 0) {
      this.eof = true;
    }
    buf.array.length = read;
    for (let i = 0; i < read; i++) {
      if (isUnsigned) {
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

  for (const c of mode.substr(1)) {
    if (c === 'a') flags |= fs.constants.O_APPEND;
    else if (c === 'c') flags |= fs.constants.O_CREAT;
    else if (c === 't') flags |= fs.constants.O_TRUNC;
    else if (c === 'x') flags |= fs.constants.O_EXCL;
    else throw 'unknown mode to open: ' + mode;
  }

  return flags;
}

op.open = function(name, mode) {
  try {
    const fh = new FileHandle(fs.openSync(name, modeToFlags(mode)));
    return fh;
  } catch (e) {
    if (e.code === 'ENOENT') {
      throw new NQPException(`Failed to open file ${name}: No such file or director`);
    } else {
      throw e;
    }
  }
};

op.seekfh = function(ctx, fh, offset, whence) {
  if (whence == 0 && offset < 0) {
    throw new NQPException(`Can't seek to position: ${offset}`);
  }
  if (!(whence == 0 || whence == 1 || whence == 2)) {
    throw new NQPException('Invalid whence passed to seekfh: ' + whence);
  }
  return fs.seekSync(fh.fd, offset, whence);
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
  try {
    fs.rmdirSync(dir);
  } catch (err) {
    if (err.code === 'ENOENT') {
    } else if (err.code === 'ENOTEMPTY') {
      throw new NQPException('Failed to rmdir: directory not empty');
    } else {
      throw err;
    }
  }
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

  $$istype(type) {
    return 0;
  }

  $$toBool(ctx) {
    return 1;
  }
};

op.opendir = function(path) {
  return new DirHandle(fs.readdirSync(path));
};

op.cwd = function() {
  return process.cwd();
};

op.getenvhash = function() {
  const hash = new Hash();
  for (const key in process.env) {
    hash.content.set(key, new NQPStr(process.env[key]));
  }
  return hash;
};

class StdHandle extends IOHandle {
  constructor() {
    super();
  }

  $$flushfh() {
    return this;
  }
};

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
    const buffer = core.toRawBuffer(buf);
    process.stderr.write(buffer);
  }
};

const STDERR = new Stderr();
op.getstderr = function() {
  return STDERR;
};

class Stdout extends StdHandle {
  constructor() {
    super();
    this.tellCount = 0;
  }

  $$isttyfh() {
    return (process.stdout.isTTY ? 1 : 0);
  }

  $$filenofh() {
    return process.stdout.fd;
  }

  $$flushfh() {
  }

  $$writefh(buf) {
    const buffer = core.toRawBuffer(buf);
    this.tellCount += buffer.length;
    process.stdout.write(buffer);
  }

  /* HACK - needed for the REPL to run */
  $$tellfh() {
    return this.tellCount;
  }
};

const STDOUT = new Stdout();
op.getstdout = function() {
  return STDOUT;
};


let stdin;
op.getstdin = function() {
  if (!stdin) {
    let fd;
    try {
      fd = fs.openSync('/dev/stdin', 'rs');
    } catch (e) {
      /* this should work on Windows, we need to test it tho */
      fd = 0;
    };
    stdin = new FileHandle(fd);
  }

  return stdin;
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

function wrapBuffer(buffer, type) {
  const elementSize = core.byteSize(type);

  const isUnsigned = type.$$STable.REPR.type.$$STable.REPR.isUnsigned;

  const wrapped = type.$$STable.REPR.allocate(type.$$STable);

  let offset = 0;
  for (let i = 0; i < buffer.length / elementSize; i++) {
    wrapped.array[i] = isUnsigned ? buffer.readUIntLE(offset, elementSize) : buffer.readIntLE(offset, elementSize);
    offset += elementSize;
  }

  return wrapped;
}

/*async*/ function stringifyEnv(ctx, hash) {
  const stringifed = {};

  for (const key of hash.content.keys()) {
    stringifed[key] = /*await*/ nqp.toStr(hash.content.get(key), ctx);
  }

  return stringifed;
}

/*async*/ function stringifyArray(ctx, array) {
  const stringified = [];
  for (const element of array.array) {
    stringified.push(/*await*/ nqp.toStr(element, ctx));
  }
  return stringified;
}

op.spawnprocasync = /*async*/ function(ctx, queue, args, cwd, env, config) {
  const options = {
    shell: false,
    windowsVerbatimArguments: true,
    cwd: cwd,
    env: /*await*/ stringifyEnv(ctx, env),
    stdio: [
      process.stdin,
      config.content.get('stdout_bytes') ? 'pipe' : process.stdout,
      config.content.get('stderr_bytes') ? 'pipe' : process.stderr,
    ],
  };

  const stringified = /*await*/ stringifyArray(ctx, args);

  const result = child_process.spawnSync(stringified.shift(), stringified, options);

  if (config.content.get('ready')) {
    /*await*/ config.content.get('ready').$$call(ctx, null);
  }


  let str_box = ctx.$$getHLL().get('str_box');

  if (str_box === undefined) str_box = Null;

  if (config.content.get('stdout_bytes')) {
    /*await*/ config.content.get('stdout_bytes').$$call(ctx, null, new NQPInt(0), wrapBuffer(result.output[1], config.content.get('buf_type')), str_box);
    /*await*/ config.content.get('stdout_bytes').$$call(ctx, null, new NQPInt(1), str_box, str_box);
  }

  if (config.content.get('stderr_bytes')) {
    /*await*/ config.content.get('stderr_bytes').$$call(ctx, null, new NQPInt(0), wrapBuffer(result.output[2], config.content.get('buf_type')), str_box);
    /*await*/ config.content.get('stderr_bytes').$$call(ctx, null, new NQPInt(1), str_box, str_box);
  }

  if (config.content.get('done')) {
    /*await*/ config.content.get('done').$$call(ctx, null, new NQPInt(result.status << 8));
  }
};

op.permit = function(handle, channel, permits) {
  // TODO Implement permit handling properly
  return handle;
};

let sigCache = null;
op.getsignals = function(currentHLL) {
  if (sigCache) {
    return sigCache;
  }

  const osSigs = os.platform() === 'win32'
    ? {
        SIGHUP: 1,
        SIGKILL: 9,
        SIGWINCH: 28,
      }
    : os.constants.signals;

  const sigWanted = [
    'SIGHUP', 'SIGINT', 'SIGQUIT', 'SIGILL', 'SIGTRAP', 'SIGABRT',
    'SIGEMT', 'SIGFPE', 'SIGKILL', 'SIGBUS', 'SIGSEGV', 'SIGSYS',
    'SIGPIPE', 'SIGALRM', 'SIGTERM', 'SIGURG', 'SIGSTOP', 'SIGTSTP',
    'SIGCONT', 'SIGCHLD', 'SIGTTIN', 'SIGTTOU', 'SIGIO', 'SIGXCPU',
    'SIGXFSZ', 'SIGVTALRM', 'SIGPROF', 'SIGWINCH', 'SIGINFO', 'SIGUSR1',
    'SIGUSR2', 'SIGTHR', 'SIGSTKFLT', 'SIGPWR', 'SIGBREAK',
  ];

  const arr = [];
  for (const k of sigWanted) {
    arr.push( core.strToObj(currentHLL, k), core.intToObj(currentHLL, k in osSigs ? osSigs[k] : 0) );
  }

  const res = hll.slurpyArray(currentHLL, arr);
  sigCache = res;
  return res;
};

op.getpid = function() {
  return process.pid;
};

op.getppid = function() {
  return process.ppid;
};

function uname(flag) {
  const result = child_process.spawnSync('uname', [flag]);
  if (result.error) {
    return "";
  } else {
    return result.stdout.toString().replace(/\n$/, '');
  }
}

op.uname = function() {
  let sysname = os.type();
  let release = os.release();
  let version = uname('-v');
  let machine = uname('-m');

  const stable = BOOT.StrArray.$$STable;
  return stable.REPR.allocateFromArray(stable, [sysname, release, version, machine]);
};
