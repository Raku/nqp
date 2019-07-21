function stat(fs, file, code, lstat, fstat) {
  const EXISTS             = 0;
  const FILESIZE           = 1;
  const ISDIR              = 2;
  const ISREG              = 3;
  const ISDEV              = 4;
  const CREATETIME         = 5;
  const ACCESSTIME         = 6;
  const MODIFYTIME         = 7;
  const CHANGETIME         = 8;
  const BACKUPTIME         = 9;
  const UID                = 10;
  const GID                = 11;
  const ISLNK              = 12;
  const PLATFORM_DEV       = -1;
  const PLATFORM_INODE     = -2;
  const PLATFORM_MODE      = -3;
  const PLATFORM_NLINKS    = -4;
  const PLATFORM_DEVTYPE   = -5;
  const PLATFORM_BLOCKSIZE = -6;
  const PLATFORM_BLOCKS    = -7;

  // we can't use fs.existsSync(file) as it follows symlinks
  let stats;
  try {
    if (lstat || code == ISLNK) {
      stats = fs.lstatSync(file);
    } else if (fstat) {
      stmts = fs.fstatSync(file);
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

module.export.stat = stat;
