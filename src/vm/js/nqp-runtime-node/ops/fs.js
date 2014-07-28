var op = exports;
var fs = require('fs-ext');
var sleep = require('sleep');
var iconv = require('iconv-lite');
var Hash = require('nqp-runtime-core/hash.js');

function FileHandleStream(stream) {
  this.stream = stream;
}

//TODO return value
FileHandleStream.prototype.printfh = function(ctx, arg) {
  this.stream.write(arg.to_s(ctx));
};

function FileHandle(fd) {
  this.fd = fd;
}
FileHandle.prototype.Bool = function(ctx) {
  return 1;
};
FileHandle.prototype.printfh = function(ctx, content) {
  var buffer = new Buffer(content,this.encoding);
  return fs.writeSync(this.fd,buffer,0,buffer.length,0);
};

op.open = function(ctx,name,mode) {
  var modes = {r:'r',w:'w',wa:'a'};
  if (!modes[mode]) { throw "unknown mode to open: "+mode }
  var fh = new FileHandle(fs.openSync(name,modes[mode]));
  fh.encoding = 'utf8';
  return fh;
};

op.tellfh = function(ctx,fh) {
  return fs.seekSync(fh.fd, 0, 1);
}

op.setencoding = function(ctx,fh,encoding) {
  fh.encoding = encoding;
};
op.readlinefh = function(ctx,fh) {
  var line = "";
  var buffer = new Buffer(16);
  var position = fs.seekSync(fh.fd, 0, 1);
  var bytesRead;
  READ_LINE: while ((bytesRead = fs.readSync(fh.fd,buffer,0,buffer.length,position)) != 0) {
    var string = buffer.slice(0,bytesRead).toString(fh.encoding);
    var cr = string.indexOf("\r");
    var nl = string.indexOf("\n");
    var newline = (cr != -1 ? (cr < nl ? (cr+1 == nl ? nl : cr) : nl) : nl);

    if (newline != -1) {
      var up_to_newline = string.slice(0,newline+1);
      line += up_to_newline;
      // FIXME might decoding and encoding might give a different offset - we need to think about it
      fs.seekSync(fh.fd, Buffer.byteLength(up_to_newline,fh.encoding)+position, 0);
      return line;
    } else {
      line += string;
    }
    position += bytesRead;
  }
  fs.seekSync(fh.fd, position, 0);
  return line;
};

op.readallfh = function(ctx,fh) {
  var all = new Buffer(0);
  var buffer = new Buffer(10);
  var total = 0;
  var bytesRead;
  while ((bytesRead = fs.readSync(fh.fd,buffer,0,buffer.length,null)) != 0) {
    total += bytesRead;
    var all = Buffer.concat([all,buffer],total);
  }
  return iconv.decode(all,fh.encoding);
};
op.chdir = function(ctx,dir) {
  process.chdir(dir);
};

op.rmdir = function(ctx,dir) {
  fs.rmdirSync(dir);
};

op.mkdir = function(ctx,dir,mode) {
  fs.mkdirSync(dir,mode);
};

op.printfh = function(ctx,fh,content) {
  return fh.printfh(ctx,content);
}
op.closefh = function(ctx,fh) {
  fs.closeSync(fh.fd);
  return fh;
};
op.getstdin = function(ctx) {
  return new FileHandle(process.stdin.fd);
};
op.getstdout = function(ctx) {
  return new FileHandleStream(process.stdout);
};
op.getstderr = function(ctx) {
  return new FileHandleStream(process.stderr);
};
op.unlink = function(ctx,filename) {
  fs.unlinkSync(filename);
};

var execSync = require('execSync');
op.shell = function(ctx,command,dir,env) {
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
    process.env[v] = oldEnv[v] 
  }
}

op.stat = function(ctx, file, code) {
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
  if (code == EXISTS) {
    return nqp_bool(fs.existsSync(file));
  }
  var stats = fs.lstatSync(file);
  switch (code) {
    case FILESIZE: return stats.size;
    case ISDIR: return nqp_bool(stats.isDirectory());
    case ISREG: return nqp_bool(stats.isFile());
    case ISDEV:
      return nqp_bool(stats.isCharacterDevice() || stats.isBlockDevice());
    case CREATETIME: return -1;
    case ACCESSTIME: return stats.atime.getTime() / 1000;
    case MODIFYTIME: return stats.mtime.getTime() / 1000;
    case CHANGETIME: return stats.ctime.getTime() / 1000;
    case BACKUPTIME: return -1;
    case UID: return stats.uid;
    case GID: return stats.gid;
    case ISLNK: return nqp_bool(stats.isSymbolicLink());
    case PLATFORM_DEV: return stats.dev;
    case PLATFORM_INODE: return stats.ino;
    case PLATFORM_MODE: return stats.mode;
    case PLATFORM_NLINKS: return stats.nlink;
    case PLATFORM_DEVTYPE: return stats.rdev;
    case PLATFORM_BLOCKSIZE: return stats.blksize;
    case PLATFORM_BLOCKS: return stats.blocks;
  }
};
op.exit = function(ctx, code) {
  process.exit(code);
};
op.sleep = function(ctx, n) {
  sleep.usleep(Math.floor(n.to_n() * 1000000));
  return n;
};
op.getenvhash = function(ctx) {
  return new Hash(process.env);
};
op.cwd = function(ctx) {
  return process.cwd();
};
