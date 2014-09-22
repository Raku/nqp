var fs = require('fs-ext');
var sleep = require('sleep');
var iconv = require('iconv-lite');
var execSync = require('execSync');

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

FileHandle.prototype.to_bool = function() {
  return 1;
};

FileHandle.prototype.closefh = function() {
  fs.closeSync(this.fd);
};

FileHandle.prototype.printfh = function(content) {
  var buffer = new Buffer(content, this.encoding);
  return fs.writeSync(this.fd, buffer, 0, buffer.length, 0);
};

FileHandle.prototype.$$to_bool = function() {
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

op.setencoding = function(fh, encoding) {
  fh.encoding = encoding;
};

op.readlinefh = function(fh) {
  var line = '';
  var buffer = new Buffer(16);
  var position = fs.seekSync(fh.fd, 0, 1);
  var bytesRead;
  READ_LINE:
  while ((bytesRead =
              fs.readSync(fh.fd, buffer, 0, buffer.length, position)) != 0) {
    var string = buffer.slice(0, bytesRead).toString(fh.encoding);
    var cr = string.indexOf('\r');
    var nl = string.indexOf('\n');
    var newline = (cr != -1 ? (cr < nl ? (cr + 1 == nl ? nl : cr) : nl) : nl);

    if (newline != -1) {
      var up_to_newline = string.slice(0, newline + 1);
      line += up_to_newline;
      // THINK ABOUT decoding and encoding might give a different offset
      fs.seekSync(fh.fd,
          Buffer.byteLength(up_to_newline, fh.encoding) + position, 0);
      return line;
    } else {
      line += string;
    }
    position += bytesRead;
  }
  fs.seekSync(fh.fd, position, 0);
  return line;
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

op.shell = function(command, dir, env) {
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
