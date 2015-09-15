var fs = require('fs-ext');
var sleep = require('sleep');
var iconv = require('iconv-lite');
var execSync = require('fallback-exec-sync');

var Hash = require('./hash.js');

function boolish(bool) {
  return bool ? 1 : 0;
}

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

op.stat = function(file, code) {
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
    var stats = fs.lstatSync(file);
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
};

function FileHandle(fd) {
  this.fd = fd;
}

FileHandle.prototype.closefh = function() {
  fs.closeSync(this.fd);
};

FileHandle.prototype.printfh = function(content) {
  var buffer = new Buffer(content, this.encoding);
  return fs.writeSync(this.fd, buffer, 0, buffer.length, 0);
};

FileHandle.prototype.$$to_bool = function(ctx) {
  return 1;
};

op.open = function(name, mode) {
  var modes = {r: 'r', w: 'w', wa: 'a'};
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
  fh.encoding = encoding;
};

op.setinputlinesep = function(fh, sep) {
    fh.sep = sep;
};

op.readlinefh = function(fh) {
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
    if (fh.sep) {
        newline = string.indexOf(fh.sep);
        if (newline != -1) {
            newline += fh.sep.length - 1;
        }
    } else {
        var cr = string.indexOf('\r');
        var nl = string.indexOf('\n');
        newline = (cr != -1 ? (cr < nl ? (cr + 1 == nl ? nl : cr) : nl) : nl);
    }

    if (newline != -1) {
      var up_to_newline = string.slice(0, newline + 1);
      // THINK ABOUT decoding and encoding might give a different offset

      fs.seekSync(fh.fd,
          Buffer.byteLength(up_to_newline, fh.encoding) + starting, 0);
      return up_to_newline;
    }
  }

  fs.seekSync(fh.fd, position, 0);
  return string;
};


op.readallfh = function(fh) {
  var all = new Buffer(0);
  var buf = new Buffer(10);
  var total = 0;
  var bytesRead;
  while ((bytesRead = fs.readSync(fh.fd, buf, 0, buf.length, null)) != 0) {
    total += bytesRead;
    var all = Buffer.concat([all, buf], total);
  }
  return iconv.decode(all, fh.encoding);
};

op.seekfh = function(fh, offset, whence, ctx) {
  if (whence == 0 && offset < 0) {
      ctx.die("Can't seek to position: " + offset);
  }
  if (!(whence == 0 || whence == 1 || whence == 2)) {
      ctx.die("Invalid whence passed to seekfh: " + whence);
  }
  fs.seekSync(fh.fd, offset, whence);
};

op.closefh = function(fh) {
  fh.closefh();
  return fh;
};

op.printfh = function(fh, content) {
  return fh.printfh(content);
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
  fs.mkdirSync(dir, mode);
};

var PIPE_INHERIT        = 1;
var PIPE_IGNORE         = 2;
var PIPE_CAPTURE        = 4;
var PIPE_INHERIT_IN     = 1;
var PIPE_IGNORE_IN      = 2;
var PIPE_CAPTURE_IN     = 4;
var PIPE_INHERIT_OUT    = 8;
var PIPE_IGNORE_OUT     = 16;
var PIPE_CAPTURE_OUT    = 32;
var PIPE_INHERIT_ERR    = 64;
var PIPE_IGNORE_ERR     = 128;
var PIPE_CAPTURE_ERR    = 256;

op.shell = function(command, dir, env, input, output, error, flags) {

  if (flags != PIPE_INHERIT_IN + PIPE_INHERIT_OUT + PIPE_INHERIT_ERR) {
      throw "shell: NYI combination of flags";
  }

  var oldEnv = {};
  for (var v in process.env) {
    oldEnv[v] = process.env[v];
  }
  var oldCwd = process.cwd();
  for (var v in env) {
    process.env[v] = env[v];
  }
  process.chdir(dir);
  execSync.run(command);
  process.chdir(oldCwd);

  // restore the contents of object in process.env
  for (var v in process.env) {
    delete process.env[v];
  }
  for (var v in oldEnv) {
    process.env[v] = oldEnv[v];
  }
};

op.cwd = function() {
  return process.cwd();
};

op.getenvhash = function() {
  var hash = new Hash();
  for (var key in process.env) {
    hash[key] = process.env[key];
  }
  return hash;
};

function Stderr() {
};
Stderr.prototype.printfh = function(msg) {
    process.stderr.write(msg);
}

op.getstderr = function() {
    return new Stderr();
};

function Stdout() {
};
Stdout.prototype.printfh = function(msg) {
    process.stdout.write(msg);
}
op.getstdout = function() {
    return new Stdout();
};

function Stdin() {
}
op.getstdin = function() {
    return new Stdin();
};

op.exit = function(code) {
    process.exit(code);
};
