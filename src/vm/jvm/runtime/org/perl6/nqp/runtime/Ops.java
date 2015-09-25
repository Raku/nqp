package org.perl6.nqp.runtime;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.ProcessBuilder.Redirect;
import java.lang.Thread;
import java.lang.NoSuchFieldException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NotLinkException;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.PosixFilePermissions;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.TimerTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

import org.perl6.nqp.io.AsyncFileHandle;
import org.perl6.nqp.io.FileHandle;
import org.perl6.nqp.io.IIOAsyncReadable;
import org.perl6.nqp.io.IIOAsyncWritable;
import org.perl6.nqp.io.IIOBindable;
import org.perl6.nqp.io.IIOCancelable;
import org.perl6.nqp.io.IIOClosable;
import org.perl6.nqp.io.IIOEncodable;
import org.perl6.nqp.io.IIOExitable;
import org.perl6.nqp.io.IIOInteractive;
import org.perl6.nqp.io.IIOLineSeparable;
import org.perl6.nqp.io.IIOSeekable;
import org.perl6.nqp.io.IIOSyncReadable;
import org.perl6.nqp.io.IIOSyncWritable;
import org.perl6.nqp.io.ProcessHandle;
import org.perl6.nqp.io.ProcessChannel;
import org.perl6.nqp.io.ServerSocketHandle;
import org.perl6.nqp.io.SocketHandle;
import org.perl6.nqp.io.StandardReadHandle;
import org.perl6.nqp.io.StandardWriteHandle;
import org.perl6.nqp.jast2bc.JASTCompiler;
import org.perl6.nqp.sixmodel.BoolificationSpec;
import org.perl6.nqp.sixmodel.ContainerConfigurer;
import org.perl6.nqp.sixmodel.ContainerSpec;
import org.perl6.nqp.sixmodel.InvocationSpec;
import org.perl6.nqp.sixmodel.NativeRefContainerSpec;
import org.perl6.nqp.sixmodel.ParameterizedType;
import org.perl6.nqp.sixmodel.ParametricType;
import org.perl6.nqp.sixmodel.REPRRegistry;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SerializationContext;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SerializationWriter;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.sixmodel.TypeObject;
import org.perl6.nqp.sixmodel.reprs.AsyncTaskInstance;
import org.perl6.nqp.sixmodel.reprs.CallCaptureInstance;
import org.perl6.nqp.sixmodel.reprs.ConcBlockingQueueInstance;
import org.perl6.nqp.sixmodel.reprs.ConditionVariable;
import org.perl6.nqp.sixmodel.reprs.ConditionVariableInstance;
import org.perl6.nqp.sixmodel.reprs.ContextRef;
import org.perl6.nqp.sixmodel.reprs.ContextRefInstance;
import org.perl6.nqp.sixmodel.reprs.IOHandleInstance;
import org.perl6.nqp.sixmodel.reprs.JavaObjectWrapper;
import org.perl6.nqp.sixmodel.reprs.LexoticInstance;
import org.perl6.nqp.sixmodel.reprs.MultiCacheInstance;
import org.perl6.nqp.sixmodel.reprs.NFA;
import org.perl6.nqp.sixmodel.reprs.NFAInstance;
import org.perl6.nqp.sixmodel.reprs.NFAStateInfo;
import org.perl6.nqp.sixmodel.reprs.NativeRefInstanceAttribute;
import org.perl6.nqp.sixmodel.reprs.NativeRefInstanceIntLex;
import org.perl6.nqp.sixmodel.reprs.NativeRefInstanceNumLex;
import org.perl6.nqp.sixmodel.reprs.NativeRefInstancePositional;
import org.perl6.nqp.sixmodel.reprs.NativeRefInstanceStrLex;
import org.perl6.nqp.sixmodel.reprs.NativeRefREPRData;
import org.perl6.nqp.sixmodel.reprs.P6bigintInstance;
import org.perl6.nqp.sixmodel.reprs.P6int;
import org.perl6.nqp.sixmodel.reprs.P6str;
import org.perl6.nqp.sixmodel.reprs.P6num;
import org.perl6.nqp.sixmodel.reprs.P6OpaqueREPRData;
import org.perl6.nqp.sixmodel.reprs.ReentrantMutexInstance;
import org.perl6.nqp.sixmodel.reprs.SCRefInstance;
import org.perl6.nqp.sixmodel.reprs.SemaphoreInstance;
import org.perl6.nqp.sixmodel.reprs.VMArray;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_i16;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_i32;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_i8;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_u16;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_u32;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_u8;
import org.perl6.nqp.sixmodel.reprs.VMExceptionInstance;
import org.perl6.nqp.sixmodel.reprs.VMHash;
import org.perl6.nqp.sixmodel.reprs.VMHashInstance;
import org.perl6.nqp.sixmodel.reprs.VMIterInstance;
import org.perl6.nqp.sixmodel.reprs.VMThreadInstance;

/**
 * Contains complex operations that are more involved that the simple ops that the
 * JVM makes available.
 */
public final class Ops {
    /* I/O opcodes */
    public static String print(String v, ThreadContext tc) {
        tc.gc.out.print(v);
        return v;
    }

    public static String say(String v, ThreadContext tc) {
        tc.gc.out.println(v);
        return v;
    }

    public static final int STAT_EXISTS             =  0;
    public static final int STAT_FILESIZE           =  1;
    public static final int STAT_ISDIR              =  2;
    public static final int STAT_ISREG              =  3;
    public static final int STAT_ISDEV              =  4;
    public static final int STAT_CREATETIME         =  5;
    public static final int STAT_ACCESSTIME         =  6;
    public static final int STAT_MODIFYTIME         =  7;
    public static final int STAT_CHANGETIME         =  8;
    public static final int STAT_BACKUPTIME         =  9;
    public static final int STAT_UID                = 10;
    public static final int STAT_GID                = 11;
    public static final int STAT_ISLNK              = 12;
    public static final int STAT_PLATFORM_DEV       = -1;
    public static final int STAT_PLATFORM_INODE     = -2;
    public static final int STAT_PLATFORM_MODE      = -3;
    public static final int STAT_PLATFORM_NLINKS    = -4;
    public static final int STAT_PLATFORM_DEVTYPE   = -5;
    public static final int STAT_PLATFORM_BLOCKSIZE = -6;
    public static final int STAT_PLATFORM_BLOCKS    = -7;

    public static long stat(String filename, long status) {
        long rval = -1;

        switch ((int) status) {
            case STAT_EXISTS:
                rval = new File(filename).exists() ? 1 : 0;
                break;

            case STAT_FILESIZE:
                rval = new File(filename).length();
                break;

            case STAT_ISDIR:
                try {
                    rval = (Boolean) Files.getAttribute(Paths.get(filename), "basic:isDirectory") ? 1 : 0;
                } catch(NoSuchFileException e) {
                    rval = 0;
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_ISREG:
                try {
                    rval = (Boolean) Files.getAttribute(Paths.get(filename), "basic:isRegularFile") ? 1 : 0;
                } catch(NoSuchFileException e) {
                    rval = 0;
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_ISDEV:
                try {
                    rval = (Boolean) Files.getAttribute(Paths.get(filename), "basic:isOther") ? 1 : 0;
                } catch(NoSuchFileException e) {
                    rval = 0;
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_CREATETIME:
                try {
                    rval = ((Number) Files.getAttribute(Paths.get(filename), "basic:creationTime")).longValue();
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_ACCESSTIME:
                try {
                    rval = ((FileTime) Files.getAttribute(Paths.get(filename), "basic:lastAccessTime")).to(TimeUnit.SECONDS);
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_MODIFYTIME:
                try {
                    rval = ((FileTime) Files.getAttribute(Paths.get(filename), "basic:lastModifiedTime")).to(TimeUnit.SECONDS);
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_CHANGETIME:
                try {
                    rval = ((FileTime) Files.getAttribute(Paths.get(filename), "unix:ctime")).to(TimeUnit.SECONDS);
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_BACKUPTIME:
                rval = -1;
                break;

            case STAT_UID:
                try {
                    rval = ((Number) Files.getAttribute(Paths.get(filename), "unix:uid")).longValue();
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_GID:
                try {
                    rval = ((Number) Files.getAttribute(Paths.get(filename), "unix:gid")).longValue();
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_ISLNK:
                try {
                    rval = (Boolean) Files.getAttribute(Paths.get(filename), "basic:isSymbolicLink", LinkOption.NOFOLLOW_LINKS) ? 1 : 0;
                } catch(NoSuchFileException e) {
                    rval = 0;
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_PLATFORM_DEV:
                try {
                    rval = ((Number) Files.getAttribute(Paths.get(filename), "unix:dev")).longValue();
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_PLATFORM_INODE:
                try {
                    rval = ((Number) Files.getAttribute(Paths.get(filename), "unix:ino")).longValue();
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_PLATFORM_MODE:
                try {
                    rval = ((Number) Files.getAttribute(Paths.get(filename), "unix:mode")).longValue();
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_PLATFORM_NLINKS:
                try {
                    rval = ((Number) Files.getAttribute(Paths.get(filename), "unix:nlink")).longValue();
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_PLATFORM_DEVTYPE:
                try {
                    rval = ((Number) Files.getAttribute(Paths.get(filename), "unix:rdev")).longValue();
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_PLATFORM_BLOCKSIZE:
                throw new UnsupportedOperationException("STAT_PLATFORM_BLOCKSIZE not supported");

            case STAT_PLATFORM_BLOCKS:
                throw new UnsupportedOperationException("STAT_PLATFORM_BLOCKS not supported");

            default:
                break;
        }

        return rval;
    }

    public static SixModelObject open(String path, String mode, ThreadContext tc) {
        SixModelObject IOType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.ioType;
        IOHandleInstance h = (IOHandleInstance)IOType.st.REPR.allocate(tc, IOType.st);
        h.handle = new FileHandle(tc, path, mode);
        return h;
    }

    public static SixModelObject openasync(String path, String mode, ThreadContext tc) {
        SixModelObject IOType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.ioType;
        IOHandleInstance h = (IOHandleInstance)IOType.st.REPR.allocate(tc, IOType.st);
        h.handle = new AsyncFileHandle(tc, path, mode);
        return h;
    }

    public static SixModelObject socket(long listener, ThreadContext tc) {
        SixModelObject IOType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.ioType;
        IOHandleInstance h = (IOHandleInstance)IOType.st.REPR.allocate(tc, IOType.st);
        if (listener == 0) {
            h.handle = new SocketHandle(tc);
        } else if (listener > 0) {
            h.handle = new ServerSocketHandle(tc);
        } else {
            ExceptionHandling.dieInternal(tc,
                "Socket handle does not support a negative listener value");
        }
        return h;
    }

    public static SixModelObject connect(SixModelObject obj, String host, long port, ThreadContext tc) {
        IOHandleInstance h = (IOHandleInstance)obj;
        if (h.handle instanceof SocketHandle) {
            ((SocketHandle)h.handle).connect(tc, host, (int) port);
        } else {
            ExceptionHandling.dieInternal(tc,
                "This handle does not support connect");
        }
        return obj;
    }

    public static SixModelObject bindsock(SixModelObject obj, String host, long port, ThreadContext tc) {
        IOHandleInstance h = (IOHandleInstance)obj;
        if (h.handle instanceof IIOBindable) {
            ((IIOBindable)h.handle).bind(tc, host, (int) port);
        } else {
            ExceptionHandling.dieInternal(tc,
                "This handle does not support bind");
        }
        return obj;
    }

    public static SixModelObject accept(SixModelObject obj, ThreadContext tc) {
        IOHandleInstance listener = (IOHandleInstance)obj;
        if (listener.handle instanceof ServerSocketHandle) {
            SocketHandle handle = ((ServerSocketHandle)listener.handle).accept(tc);
            if (handle != null) {
                SixModelObject IOType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.ioType;
                IOHandleInstance h = (IOHandleInstance)IOType.st.REPR.allocate(tc, IOType.st);
                h.handle = handle;
                return h;
            }
        } else {
            ExceptionHandling.dieInternal(tc,
                "This handle does not support accept");
        }
        return null;
    }

    public static long filereadable(String path, ThreadContext tc) {
        Path path_o;
        long res;
        try {
            path_o = Paths.get(path);
            res = Files.isReadable(path_o) ? 1 : 0;
        }
        catch (Exception e) {
            die_s(e.getMessage(), tc);
            res = -1; /* unreachable */
        }
        return res;
    }

    public static long filewritable(String path, ThreadContext tc) {
        Path path_o;
        long res;
        try {
            path_o = Paths.get(path);
            res = Files.isWritable(path_o) ? 1 : 0;
        }
        catch (Exception e) {
            die_s(e.getMessage(), tc);
            res = -1; /* unreachable */
        }
        return res;
    }

    public static long fileexecutable(String path, ThreadContext tc) {
        Path path_o;
        long res;
        try {
            path_o = Paths.get(path);
            res = Files.isExecutable(path_o) ? 1 : 0;
        }
        catch (Exception e) {
            die_s(e.getMessage(), tc);
            res = -1; /* unreachable */
        }
        return res;
    }

    public static long fileislink(String path, ThreadContext tc) {
        Path path_o;
        long res;
        try {
            path_o = Paths.get(path);
            res = Files.isSymbolicLink(path_o) ? 1 : 0;
        }
        catch (Exception e) {
            die_s(e.getMessage(), tc);
            res = -1; /* unreachable */
        }
        return res;
    }

    public static SixModelObject getstdin(ThreadContext tc) {
        SixModelObject IOType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.ioType;
        IOHandleInstance h = (IOHandleInstance)IOType.st.REPR.allocate(tc, IOType.st);
        h.handle = new StandardReadHandle(tc, tc.gc.in);
        return h;
    }

    public static SixModelObject getstdout(ThreadContext tc) {
        SixModelObject IOType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.ioType;
        IOHandleInstance h = (IOHandleInstance)IOType.st.REPR.allocate(tc, IOType.st);
        h.handle = new StandardWriteHandle(tc, tc.gc.out);
        return h;
    }

    public static SixModelObject getstderr(ThreadContext tc) {
        SixModelObject IOType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.ioType;
        IOHandleInstance h = (IOHandleInstance)IOType.st.REPR.allocate(tc, IOType.st);
        h.handle = new StandardWriteHandle(tc, tc.gc.err);
        return h;
    }

    public static SixModelObject setencoding(SixModelObject obj, String encoding, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;

            Charset cs;
            if (encoding.equals("ascii"))
                cs = Charset.forName("US-ASCII");
            else if (encoding.equals("iso-8859-1"))
                cs = Charset.forName("ISO-8859-1");
            else if (encoding.equals("utf8"))
                cs = Charset.forName("UTF-8");
            else if (encoding.equals("utf16"))
                cs = Charset.forName("UTF-16");
            else if (encoding.equals("windows-1252"))
                cs = Charset.forName("windows-1252");
            else
                throw ExceptionHandling.dieInternal(tc,
                    "Unsupported encoding " + encoding);

            if (h.handle instanceof IIOEncodable)
                ((IIOEncodable)h.handle).setEncoding(tc, cs);
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support textual I/O");
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                "setencoding requires an object with the IOHandle REPR");
        }
        return obj;
    }

    public static SixModelObject setinputlinesep(SixModelObject obj, String sep, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;

            if (h.handle instanceof IIOLineSeparable)
                ((IIOLineSeparable)h.handle).setInputLineSeparator(tc, sep);
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support setting input line separator");
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                "setinputlinesep requires an object with the IOHandle REPR");
        }
        return obj;
    }

    public static SixModelObject seekfh(SixModelObject obj, long offset, long whence, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.handle instanceof IIOSeekable) {
                ((IIOSeekable)h.handle).seek(tc, offset, whence);
                return obj;
            }
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support seek");
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                "seekfh requires an object with the IOHandle REPR");
        }
    }

    public static long tellfh(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.handle instanceof IIOSeekable)
                return ((IIOSeekable)h.handle).tell(tc);
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support tell");
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                "tellfh requires an object with the IOHandle REPR");
        }
    }

    public static SixModelObject readfh(SixModelObject io, SixModelObject res, long bytes, ThreadContext tc) {
        if (io instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)io;
            if (h.handle instanceof IIOSyncReadable) {
                if (res instanceof VMArrayInstance_i8) {
                    VMArrayInstance_i8 arr = (VMArrayInstance_i8)res;

                    byte[] array = ((IIOSyncReadable)h.handle).read(tc, (int)bytes);
                    arr.elems = array.length;
                    arr.start = 0;
                    arr.slots = array;

                    return res;
                } else if (res instanceof VMArrayInstance_u8) {
                    VMArrayInstance_u8 arr = (VMArrayInstance_u8)res;

                    byte[] array = ((IIOSyncReadable)h.handle).read(tc, (int)bytes);
                    arr.elems = array.length;
                    arr.start = 0;
                    arr.slots = array;

                    return res;
                } else {
                    throw ExceptionHandling.dieInternal(tc,
                        "readfh requires a Buf[int8] or a Buf[uint8]");
                }
            } else {
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support read");
            }
        } else {
            throw ExceptionHandling.dieInternal(tc,
                "readfh requires an object with the IOHandle REPR");
        }
    }

    public static long writefh(SixModelObject obj, SixModelObject buf, ThreadContext tc) {
        ByteBuffer bb = Buffers.unstashBytes(buf, tc);
        long written;
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            byte[] bytesToWrite = new byte[bb.limit()];
            bb.get(bytesToWrite);
            if (h.handle instanceof IIOSyncWritable)
                written = ((IIOSyncWritable)h.handle).write(tc, bytesToWrite);
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support write");
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                "writefh requires an object with the IOHandle REPR");
        }
        return written;
    }

    public static long printfh(SixModelObject obj, String data, ThreadContext tc) {
        long written;
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.handle instanceof IIOSyncWritable)
                written = ((IIOSyncWritable)h.handle).print(tc, data);
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support print");
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                "printfh requires an object with the IOHandle REPR");
        }
        return written;
    }

    public static long sayfh(SixModelObject obj, String data, ThreadContext tc) {
        long written;
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.handle instanceof IIOSyncWritable)
                written = ((IIOSyncWritable)h.handle).say(tc, data);
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support say");
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                "sayfh requires an object with the IOHandle REPR");
        }
        return written;
    }

    public static SixModelObject flushfh(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.handle instanceof IIOSyncWritable)
                ((IIOSyncWritable)h.handle).flush(tc);
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support flush");
        }
        else {
            die_s("flushfh requires an object with the IOHandle REPR", tc);
        }
        return obj;
    }

    public static String readlink(String path, ThreadContext tc) {
        try {
            return Files.readSymbolicLink(new File(path).toPath()).toString();
        } catch (NotLinkException e) {
            throw ExceptionHandling.dieInternal(tc, path + " is not a symbolic link");
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, "Failed to readlink file: " + e);
        }
    }

    public static String readlinefh(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.handle instanceof IIOSyncReadable)
                return ((IIOSyncReadable)h.handle).readline(tc);
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support readline");
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                "readlinefh requires an object with the IOHandle REPR");
        }
    }

    public static String readallfh(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.handle instanceof IIOSyncReadable)
                return ((IIOSyncReadable)h.handle).slurp(tc);
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support slurp");
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                "readallfh requires an object with the IOHandle REPR");
        }
    }

    public static String getcfh(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.handle instanceof IIOSyncReadable)
                return ((IIOSyncReadable)h.handle).getc(tc);
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support getc");
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                "getcfh requires an object with the IOHandle REPR");
        }
    }

    public static long eoffh(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.handle instanceof IIOSyncReadable)
                return ((IIOSyncReadable)h.handle).eof(tc) ? 1 : 0;
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support eof");
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                "eoffh requires an object with the IOHandle REPR");
        }
    }

    public static SixModelObject slurpasync(SixModelObject obj, SixModelObject resultType,
            SixModelObject done, SixModelObject error, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.handle instanceof IIOAsyncReadable)
                ((IIOAsyncReadable)h.handle).slurp(tc, resultType, done, error);
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support async slurp");
        }
        else {
            die_s("slurpasync requires an object with the IOHandle REPR", tc);
        }
        return obj;
    }

    public static SixModelObject spurtasync(SixModelObject obj, SixModelObject resultType, SixModelObject data,
            SixModelObject done, SixModelObject error, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.handle instanceof IIOAsyncWritable)
                ((IIOAsyncWritable)h.handle).spurt(tc, resultType, data, done, error);
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support async spurt");
        }
        else {
            die_s("spurtasync requires an object with the IOHandle REPR", tc);
        }
        return obj;
    }

    @SuppressWarnings({ "unchecked", "rawtypes" })
    public static SixModelObject linesasync(SixModelObject obj, SixModelObject resultType,
            long chomp, SixModelObject queue, SixModelObject done, SixModelObject error,
            ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.handle instanceof IIOAsyncReadable)
                ((IIOAsyncReadable)h.handle).lines(tc, resultType, chomp != 0,
                    (LinkedBlockingQueue)((JavaObjectWrapper)queue).theObject,
                    done, error);
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support async lines");
        }
        else {
            die_s("linesasync requires an object with the IOHandle REPR", tc);
        }
        return obj;
    }

    public static SixModelObject closefh(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.handle instanceof IIOClosable)
                ((IIOClosable)h.handle).close(tc);
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support close");
        }
        else {
            die_s("closefh requires an object with the IOHandle REPR", tc);
        }
        return obj;
    }

    public static long closefhi(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.handle instanceof IIOClosable
             && h.handle instanceof IIOExitable) {
                ((IIOClosable)h.handle).close(tc);
                return (long)((IIOExitable)h.handle).exitValue(tc) << 8;
            }
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This handle does not support close or exitValue");
        }
        else {
            die_s("closefhi requires an object with the IOHandle REPR", tc);
        }
        return -1;
    }

    public static Set<PosixFilePermission> modeToPosixFilePermission(long mode) {
        Set<PosixFilePermission> perms = EnumSet.noneOf(PosixFilePermission.class);
        if ((mode & 0001) != 0) perms.add(PosixFilePermission.OTHERS_EXECUTE);
        if ((mode & 0002) != 0) perms.add(PosixFilePermission.OTHERS_WRITE);
        if ((mode & 0004) != 0) perms.add(PosixFilePermission.OTHERS_READ);
        if ((mode & 0010) != 0) perms.add(PosixFilePermission.GROUP_EXECUTE);
        if ((mode & 0020) != 0) perms.add(PosixFilePermission.GROUP_WRITE);
        if ((mode & 0040) != 0) perms.add(PosixFilePermission.GROUP_READ);
        if ((mode & 0100) != 0) perms.add(PosixFilePermission.OWNER_EXECUTE);
        if ((mode & 0200) != 0) perms.add(PosixFilePermission.OWNER_WRITE);
        if ((mode & 0400) != 0) perms.add(PosixFilePermission.OWNER_READ);
        return perms;
    }

    public static long chmod(String path, long mode, ThreadContext tc) {
        Path path_o;
        try {
            path_o = Paths.get(path);
            Set<PosixFilePermission> perms = modeToPosixFilePermission(mode);
            Files.setPosixFilePermissions(path_o, perms);
        }
        catch (Exception e) {
            die_s(IOExceptionMessages.message(e), tc);
        }
        return 0;
    }

    public static long unlink(String path, ThreadContext tc) {
        try {
            if(!Files.deleteIfExists(Paths.get(path))) {
                return -2;
            }
        }
        catch (Exception e) {
            die_s(IOExceptionMessages.message(e), tc);
        }
        return 0;
    }

    public static long rmdir(String path, ThreadContext tc) {
        Path path_o = Paths.get(path);
        try {
            if (!Files.isDirectory(path_o)) {
                return -2;
            }
            Files.delete(path_o);
        }
        catch (Exception e) {
            die_s(IOExceptionMessages.message(e), tc);
        }
        return 0;
    }

    public static String cwd() {
        return System.getProperty("user.dir");
    }

    public static String chdir(String path, ThreadContext tc) {
        die_s("chdir is not available on JVM", tc);
        return null;
    }

    public static long mkdir(String path, long mode, ThreadContext tc) {
        try {
            String os = System.getProperty("os.name").toLowerCase();
            if (os.indexOf("win") >= 0)
                Files.createDirectory(Paths.get(path));
            else
                Files.createDirectory(Paths.get(path),
                    PosixFilePermissions.asFileAttribute(modeToPosixFilePermission(mode)));
        }
        catch (Exception e) {
            die_s(IOExceptionMessages.message(e), tc);
        }
        return 0;
    }

    public static long rename(String before, String after, ThreadContext tc) {
        Path before_o = Paths.get(before);
        Path after_o = Paths.get(after);
        try {
            Files.move(before_o, after_o);
        }
        catch (Exception e) {
            die_s(IOExceptionMessages.message(e), tc);
        }
        return 0;
    }

    public static long copy(String before, String after, ThreadContext tc) {
        Path before_o = Paths.get(before);
        Path after_o = Paths.get(after);
        try {
            Files.copy( before_o, after_o, StandardCopyOption.REPLACE_EXISTING);
        }
        catch (Exception e) {
            die_s(IOExceptionMessages.message(e), tc);
        }
        return 0;
    }

    public static long link(String before, String after, ThreadContext tc) {
        Path before_o = Paths.get(before);
        Path after_o = Paths.get(after);
        try {
            Files.createLink(after_o, before_o);
        }
        catch (Exception e) {
            die_s(IOExceptionMessages.message(e), tc);
        }
        return 0;
    }

    public static String gethostname(){
        try {
            String hostname = InetAddress.getLocalHost().getHostName();
            return hostname;
        } catch (Exception e) {
            return null;
        }
    }

    public static SixModelObject syncpipe(ThreadContext tc) {
        SixModelObject IOType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.ioType;
        IOHandleInstance h = (IOHandleInstance)IOType.st.REPR.allocate(tc, IOType.st);
        h.handle = new ProcessHandle(tc);
        return h;
    }

    public static long shell(String cmd, String dir, SixModelObject envObj,
            SixModelObject in, SixModelObject out, SixModelObject err, long flags, ThreadContext tc) {
        List<String> args = new ArrayList<String>();

        String os = System.getProperty("os.name").toLowerCase();
        if (os.indexOf("win") >= 0) {
            args.add("cmd");
            args.add("/c");
            args.add(cmd);
        } else {
            args.add("sh");
            args.add("-c");
            args.add(cmd);
        }

        return spawn(tc, args, envObj, dir, in, out, err, flags);
    }

    public static long spawn(SixModelObject argsObj, String dir, SixModelObject envObj,
            SixModelObject in, SixModelObject out, SixModelObject err, long flags, ThreadContext tc) {
        List<String> args = new ArrayList<String>();
        SixModelObject argIter = iter(argsObj, tc);
        while (istrue(argIter, tc) != 0) {
            SixModelObject v = argIter.shift_boxed(tc);
            String arg = v.get_str(tc);
            args.add(arg);
        }

        return spawn(tc, args, envObj, dir, in, out, err, flags);
    }

    public static final int PIPE_INHERIT        = 1;
    public static final int PIPE_IGNORE         = 2;
    public static final int PIPE_CAPTURE        = 4;
    public static final int PIPE_INHERIT_IN     = 1;
    public static final int PIPE_IGNORE_IN      = 2;
    public static final int PIPE_CAPTURE_IN     = 4;
    public static final int PIPE_INHERIT_OUT    = 8;
    public static final int PIPE_IGNORE_OUT     = 16;
    public static final int PIPE_CAPTURE_OUT    = 32;
    public static final int PIPE_INHERIT_ERR    = 64;
    public static final int PIPE_IGNORE_ERR     = 128;
    public static final int PIPE_CAPTURE_ERR    = 256;

    private static void setup_process_builder(ThreadContext tc, ProcessBuilder pb, SixModelObject in, SixModelObject out, SixModelObject err, long flags) {
        if ((flags & PIPE_INHERIT_IN) == 0 || in instanceof IOHandleInstance)
            pb.redirectInput(Redirect.PIPE);
        else
            pb.redirectInput(Redirect.INHERIT);

        if ((flags & PIPE_INHERIT_OUT) == 0 || out instanceof IOHandleInstance)
            pb.redirectOutput(Redirect.PIPE);
        else
            pb.redirectOutput(Redirect.INHERIT);

        if ((flags & PIPE_INHERIT_ERR) == 0 || err instanceof IOHandleInstance)
            pb.redirectError(Redirect.PIPE);
        else
            pb.redirectError(Redirect.INHERIT);
    }

    private static void setup_process_streams(ThreadContext tc, Process process, SixModelObject in, SixModelObject out, SixModelObject err, long flags) {
        if (in instanceof IOHandleInstance) {
            if ((flags & PIPE_CAPTURE_IN) != 0)
                /* getOutputStream() returns the output stream connected to the normal input of the subprocess. */
                ((ProcessHandle)((IOHandleInstance)in).handle).bindChannel(tc, process, process.getOutputStream());

            if ((flags & PIPE_INHERIT_IN) != 0) {
                /* If our stdin is connected to an output stream of another process, we need to let it run in a thread. */
                ProcessChannel pc = new ProcessChannel(process, process.getOutputStream(),
                    ((ProcessChannel)((ProcessHandle)((IOHandleInstance)in).handle).chan).in);
                new Thread(pc).start();
            }
        }

        if ((flags & PIPE_CAPTURE_OUT) != 0 && out instanceof IOHandleInstance)
            /* getInputStream() returns the input stream connected to the normal output of the subprocess. */
            ((ProcessHandle)((IOHandleInstance)out).handle).bindChannel(tc, process, process.getInputStream());

        if ((flags & PIPE_CAPTURE_ERR) != 0 && err instanceof IOHandleInstance)
            /* getErrorStream() returns the input stream connected to the error output of the subprocess. */
            ((ProcessHandle)((IOHandleInstance)err).handle).bindChannel(tc, process, process.getErrorStream());
    }

    private static long spawn(ThreadContext tc, List<String> args, SixModelObject envObj, String dir,
            SixModelObject in, SixModelObject out, SixModelObject err, long flags) {
        Map<String, String> env = new HashMap<String, String>();
        SixModelObject iter = iter(envObj, tc);
        while (istrue(iter, tc) != 0) {
            SixModelObject kv = iter.shift_boxed(tc);
            String key = iterkey_s(kv, tc);
            String value = unbox_s(iterval(kv, tc), tc);
            env.put(key, value);
        }

        long       retval = 255;
        ProcessBuilder pb = new ProcessBuilder(args);
        pb.directory(new File(dir));

        // Clear the JVM inherited environment and use provided only
        Map<String, String> pbEnv = pb.environment();
        pbEnv.clear();
        pbEnv.putAll(env);

        setup_process_builder(tc, pb, in, out, err, flags);

        if ((flags & (PIPE_CAPTURE_IN | PIPE_CAPTURE_OUT | PIPE_CAPTURE_ERR)) != 0) {
            try {
                Process process = pb.start();
                setup_process_streams(tc, process, in, out, err, flags);
            }
            catch (IOException e) {
                throw ExceptionHandling.dieInternal(tc, e);
            }
        }
        /* run immediatly */
        else {
            try {
                boolean finished = false;
                Process process  = pb.start();
                setup_process_streams(tc, process, in, out, err, flags);
                do {
                    try {
                        retval   = process.waitFor();
                        finished = true;
                    } catch (InterruptedException e) {
                    }
                } while (!finished);
            } catch (IOException e) {
            }
        }

        /* Return exit code left shifted by 8 for POSIX emulation. */
        return retval << 8;
    }

    public static long symlink(String before, String after, ThreadContext tc) {
        Path before_o = Paths.get(before);
        Path after_o = Paths.get(after);
        try {
            Files.createSymbolicLink(after_o, before_o);
        }
        catch (Exception e) {
            die_s(IOExceptionMessages.message(e), tc);
        }
        return 0;
    }

    public static SixModelObject opendir(String path, ThreadContext tc) {
        try {
            DirectoryStream<Path> dirstrm = Files.newDirectoryStream(Paths.get(path));
            SixModelObject IOType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.ioType;
            IOHandleInstance ioh = (IOHandleInstance)IOType.st.REPR.allocate(tc, IOType.st);
            ioh.dirstrm = dirstrm;
            ioh.diri = dirstrm.iterator();
            return ioh;
        }
        catch (Exception e) {
            die_s("nqp::opendir: unable to get a DirectoryStream", tc);
        }
        return null;
    }

    public static String nextfiledir(SixModelObject obj, ThreadContext tc) {
        try {
            if (obj instanceof IOHandleInstance) {
                IOHandleInstance ioh = (IOHandleInstance)obj;
                if (ioh.dirstrm != null && ioh.diri != null) {
                    if (ioh.diri.hasNext()) {
                        return ioh.diri.next().toString();
                    } else {
                        return null;
                    }
                } else {
                    die_s("called nextfiledir on an IOHandle without a dirstream and/or iterator.", tc);
                }
            } else {
                die_s("nextfiledir requires an object with the IOHandle REPR", tc);
            }
        }
        catch (Exception e) {
            die_s("nqp::nextfiledir: unhandled exception", tc);
        }
        return null;
    }

    public static long closedir(SixModelObject obj, ThreadContext tc) {
        try {
            if (obj instanceof IOHandleInstance) {
                IOHandleInstance ioh = (IOHandleInstance)obj;
                ioh.diri = null;
                ioh.dirstrm.close();
                ioh.dirstrm = null;
            } else {
                die_s("closedir requires an object with the IOHandle REPR", tc);
            }
        }
        catch (Exception e) {
            die_s("nqp::closedir: unhandled exception", tc);
        }
        return 0;
    }

    /* Lexical lookup in current scope. */
    public static long getlex_i(CallFrame cf, int i) { return cf.iLex[i]; }
    public static double getlex_n(CallFrame cf, int i) { return cf.nLex[i]; }
    public static String getlex_s(CallFrame cf, int i) { return cf.sLex[i]; }
    public static SixModelObject getlex_o(CallFrame cf, int i) { return cf.oLex[i]; }

    /* Lexical binding in current scope. */
    public static long bindlex_i(long v, CallFrame cf, int i) { cf.iLex[i] = v; return v; }
    public static double bindlex_n(double v, CallFrame cf, int i) { cf.nLex[i] = v; return v; }
    public static String bindlex_s(String v, CallFrame cf, int i) { cf.sLex[i] = v; return v; }
    public static SixModelObject bindlex_o(SixModelObject v, CallFrame cf, int i) { cf.oLex[i] = v; return v; }

    /* Lexical lookup in outer scope. */
    public static long getlex_i_si(CallFrame cf, int i, int si) {
        while (si-- > 0)
            cf = cf.outer;
        return cf.iLex[i];
    }
    public static double getlex_n_si(CallFrame cf, int i, int si) {
        while (si-- > 0)
            cf = cf.outer;
        return cf.nLex[i];
    }
    public static String getlex_s_si(CallFrame cf, int i, int si) {
        while (si-- > 0)
            cf = cf.outer;
        return cf.sLex[i];
    }
    public static SixModelObject getlex_o_si(CallFrame cf, int i, int si) {
        while (si-- > 0)
            cf = cf.outer;
        return cf.oLex[i];
    }

    /* Lexical binding in outer scope. */
    public static long bindlex_i_si(long v, CallFrame cf, int i, int si) {
        while (si-- > 0)
            cf = cf.outer;
        cf.iLex[i] = v;
        return v;
    }
    public static double bindlex_n_si(double v, CallFrame cf, int i, int si) {
        while (si-- > 0)
            cf = cf.outer;
        cf.nLex[i] = v;
        return v;
    }
    public static String bindlex_s_si(String v, CallFrame cf, int i, int si) {
        while (si-- > 0)
            cf = cf.outer;
        cf.sLex[i] = v;
        return v;
    }
    public static SixModelObject bindlex_o_si(SixModelObject v, CallFrame cf, int i, int si) {
        while (si-- > 0)
            cf = cf.outer;
        cf.oLex[i] = v;
        return v;
    }

    /* Lexical lookup by name. */
    public static SixModelObject getlex(String name, ThreadContext tc) {
        CallFrame curFrame = tc.curFrame;
        while (curFrame != null) {
            Integer found = curFrame.codeRef.staticInfo.oTryGetLexicalIdx(name);
            if (found != null)
                return curFrame.oLex[found];
            curFrame = curFrame.outer;
        }
        return null;
    }
    public static long getlex_i(String name, ThreadContext tc) {
        CallFrame curFrame = tc.curFrame;
        while (curFrame != null) {
            Integer found = curFrame.codeRef.staticInfo.iTryGetLexicalIdx(name);
            if (found != null)
                return curFrame.iLex[found];
            curFrame = curFrame.outer;
        }
        throw ExceptionHandling.dieInternal(tc, "Lexical '" + name + "' not found");
    }
    public static double getlex_n(String name, ThreadContext tc) {
        CallFrame curFrame = tc.curFrame;
        while (curFrame != null) {
            Integer found = curFrame.codeRef.staticInfo.nTryGetLexicalIdx(name);
            if (found != null)
                return curFrame.nLex[found];
            curFrame = curFrame.outer;
        }
        throw ExceptionHandling.dieInternal(tc, "Lexical '" + name + "' not found");
    }
    public static String getlex_s(String name, ThreadContext tc) {
        CallFrame curFrame = tc.curFrame;
        while (curFrame != null) {
            Integer found = curFrame.codeRef.staticInfo.sTryGetLexicalIdx(name);
            if (found != null)
                return curFrame.sLex[found];
            curFrame = curFrame.outer;
        }
        throw ExceptionHandling.dieInternal(tc, "Lexical '" + name + "' not found");
    }
    public static SixModelObject getlexouter(String name, ThreadContext tc) {
        CallFrame curFrame = tc.curFrame.outer;
        while (curFrame != null) {
            Integer found = curFrame.codeRef.staticInfo.oTryGetLexicalIdx(name);
            if (found != null)
                return curFrame.oLex[found];
            curFrame = curFrame.outer;
        }
        throw ExceptionHandling.dieInternal(tc, "Lexical '" + name + "' not found");
    }

    /* Lexical binding by name. */
    public static SixModelObject bindlex(String name, SixModelObject value, ThreadContext tc) {
        CallFrame curFrame = tc.curFrame;
        while (curFrame != null) {
            Integer found = curFrame.codeRef.staticInfo.oTryGetLexicalIdx(name);
            if (found != null)
                return curFrame.oLex[found] = value;
            curFrame = curFrame.outer;
        }
        throw ExceptionHandling.dieInternal(tc, "Lexical '" + name + "' not found");
    }
    public static long bindlex_i(String name, long value, ThreadContext tc) {
        CallFrame curFrame = tc.curFrame;
        while (curFrame != null) {
            Integer found = curFrame.codeRef.staticInfo.iTryGetLexicalIdx(name);
            if (found != null)
                return curFrame.iLex[found] = value;
            curFrame = curFrame.outer;
        }
        throw ExceptionHandling.dieInternal(tc, "Lexical '" + name + "' not found");
    }
    public static double bindlex_n(String name, double value, ThreadContext tc) {
        CallFrame curFrame = tc.curFrame;
        while (curFrame != null) {
            Integer found = curFrame.codeRef.staticInfo.nTryGetLexicalIdx(name);
            if (found != null)
                return curFrame.nLex[found] = value;
            curFrame = curFrame.outer;
        }
        throw ExceptionHandling.dieInternal(tc, "Lexical '" + name + "' not found");
    }
    public static String bindlex_s(String name, String value, ThreadContext tc) {
        CallFrame curFrame = tc.curFrame;
        while (curFrame != null) {
            Integer found = curFrame.codeRef.staticInfo.sTryGetLexicalIdx(name);
            if (found != null)
                return curFrame.sLex[found] = value;
            curFrame = curFrame.outer;
        }
        throw ExceptionHandling.dieInternal(tc, "Lexical '" + name + "' not found");
    }

    /* Native lexical references. */
    public static SixModelObject getlexref_i(ThreadContext tc, int idx) {
        CallFrame cf = tc.curFrame;
        SixModelObject refType = cf.codeRef.staticInfo.compUnit.hllConfig.intLexRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No int lexical reference type registered for current HLL");
        NativeRefInstanceIntLex ref = (NativeRefInstanceIntLex)refType.st.REPR.allocate(tc, refType.st);
        ref.lexicals = cf.iLex;
        ref.idx = idx;
        return ref;
    }
    public static SixModelObject getlexref_n(ThreadContext tc, int idx) {
        CallFrame cf = tc.curFrame;
        SixModelObject refType = cf.codeRef.staticInfo.compUnit.hllConfig.numLexRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No num lexical reference type registered for current HLL");
        NativeRefInstanceNumLex ref = (NativeRefInstanceNumLex)refType.st.REPR.allocate(tc, refType.st);
        ref.lexicals = cf.nLex;
        ref.idx = idx;
        return ref;
    }
    public static SixModelObject getlexref_s(ThreadContext tc, int idx) {
        CallFrame cf = tc.curFrame;
        SixModelObject refType = cf.codeRef.staticInfo.compUnit.hllConfig.strLexRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No str lexical reference type registered for current HLL");
        NativeRefInstanceStrLex ref = (NativeRefInstanceStrLex)refType.st.REPR.allocate(tc, refType.st);
        ref.lexicals = cf.sLex;
        ref.idx = idx;
        return ref;
    }
    public static SixModelObject getlexref_i_si(ThreadContext tc, int idx, int si) {
        CallFrame cf = tc.curFrame;
        SixModelObject refType = cf.codeRef.staticInfo.compUnit.hllConfig.intLexRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No int lexical reference type registered for current HLL");
        while (si-- > 0)
            cf = cf.outer;
        NativeRefInstanceIntLex ref = (NativeRefInstanceIntLex)refType.st.REPR.allocate(tc, refType.st);
        ref.lexicals = cf.iLex;
        ref.idx = idx;
        return ref;
    }
    public static SixModelObject getlexref_n_si(ThreadContext tc, int idx, int si) {
        CallFrame cf = tc.curFrame;
        SixModelObject refType = cf.codeRef.staticInfo.compUnit.hllConfig.numLexRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No num lexical reference type registered for current HLL");
        while (si-- > 0)
            cf = cf.outer;
        NativeRefInstanceNumLex ref = (NativeRefInstanceNumLex)refType.st.REPR.allocate(tc, refType.st);
        ref.lexicals = cf.nLex;
        ref.idx = idx;
        return ref;
    }
    public static SixModelObject getlexref_s_si(ThreadContext tc, int idx, int si) {
        CallFrame cf = tc.curFrame;
        SixModelObject refType = cf.codeRef.staticInfo.compUnit.hllConfig.strLexRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No str lexical reference type registered for current HLL");
        while (si-- > 0)
            cf = cf.outer;
        NativeRefInstanceStrLex ref = (NativeRefInstanceStrLex)refType.st.REPR.allocate(tc, refType.st);
        ref.lexicals = cf.sLex;
        ref.idx = idx;
        return ref;
    }
    public static SixModelObject getlexref_i(String name, ThreadContext tc) {
        CallFrame cf = tc.curFrame;
        SixModelObject refType = cf.codeRef.staticInfo.compUnit.hllConfig.intLexRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No int lexical reference type registered for current HLL");
        while (cf != null) {
            Integer found = cf.codeRef.staticInfo.iTryGetLexicalIdx(name);
            if (found != null) {
                NativeRefInstanceIntLex ref = (NativeRefInstanceIntLex)refType.st.REPR.allocate(tc, refType.st);
                ref.lexicals = cf.iLex;
                ref.idx = (int)found;
                return ref;
            }
            cf = cf.outer;
        }
        throw ExceptionHandling.dieInternal(tc, "Lexical '" + name + "' not found");
    }
    public static SixModelObject getlexref_n(String name, ThreadContext tc) {
        CallFrame cf = tc.curFrame;
        SixModelObject refType = cf.codeRef.staticInfo.compUnit.hllConfig.numLexRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No num lexical reference type registered for current HLL");
        while (cf != null) {
            Integer found = cf.codeRef.staticInfo.nTryGetLexicalIdx(name);
            if (found != null) {
                NativeRefInstanceNumLex ref = (NativeRefInstanceNumLex)refType.st.REPR.allocate(tc, refType.st);
                ref.lexicals = cf.nLex;
                ref.idx = (int)found;
                return ref;
            }
            cf = cf.outer;
        }
        throw ExceptionHandling.dieInternal(tc, "Lexical '" + name + "' not found");
    }
    public static SixModelObject getlexref_s(String name, ThreadContext tc) {
        CallFrame cf = tc.curFrame;
        SixModelObject refType = cf.codeRef.staticInfo.compUnit.hllConfig.strLexRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No str lexical reference type registered for current HLL");
        while (cf != null) {
            Integer found = cf.codeRef.staticInfo.sTryGetLexicalIdx(name);
            if (found != null) {
                NativeRefInstanceStrLex ref = (NativeRefInstanceStrLex)refType.st.REPR.allocate(tc, refType.st);
                ref.lexicals = cf.sLex;
                ref.idx = (int)found;
                return ref;
            }
            cf = cf.outer;
        }
        throw ExceptionHandling.dieInternal(tc, "Lexical '" + name + "' not found");
    }

    /* Dynamic lexicals. */
    public static SixModelObject bindlexdyn(SixModelObject value, String name, ThreadContext tc) {
        CallFrame curFrame = tc.curFrame.caller;
        while (curFrame != null) {
            Integer idx =  curFrame.codeRef.staticInfo.oTryGetLexicalIdx(name);
            if (idx != null) {
                curFrame.oLex[idx] = value;
                return value;
            }
            curFrame = curFrame.caller;
        }
        throw ExceptionHandling.dieInternal(tc, "Dyanmic variable '" + name + "' not found");
    }
    public static SixModelObject getlexdyn(String name, ThreadContext tc) {
        CallFrame curFrame = tc.curFrame.caller;
        while (curFrame != null) {
            Integer idx =  curFrame.codeRef.staticInfo.oTryGetLexicalIdx(name);
            if (idx != null)
                return curFrame.oLex[idx];
            curFrame = curFrame.caller;
        }
        return null;
    }
    public static SixModelObject getlexcaller(String name, ThreadContext tc) {
        CallFrame curCallerFrame = tc.curFrame.caller;
        while (curCallerFrame != null) {
            CallFrame curFrame = curCallerFrame;
            while (curFrame != null) {
                Integer found = curFrame.codeRef.staticInfo.oTryGetLexicalIdx(name);
                if (found != null)
                    return curFrame.oLex[found];
                curFrame = curFrame.outer;
            }
            curCallerFrame = curCallerFrame.caller;
        }
        return null;
    }

    /* Relative lexical lookups. */
    public static SixModelObject getlexrel(SixModelObject ctx, String name, ThreadContext tc) {
        if (ctx instanceof ContextRefInstance) {
            CallFrame curFrame = ((ContextRefInstance)ctx).context;
            while (curFrame != null) {
                Integer found = curFrame.codeRef.staticInfo.oTryGetLexicalIdx(name);
                if (found != null)
                    return curFrame.oLex[found];
                curFrame = curFrame.outer;
            }
            return null;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "getlexrel requires an operand with REPR ContextRef");
        }
    }
    public static SixModelObject getlexreldyn(SixModelObject ctx, String name, ThreadContext tc) {
        if (ctx instanceof ContextRefInstance) {
            CallFrame curFrame = ((ContextRefInstance)ctx).context;
            while (curFrame != null) {
                Integer idx =  curFrame.codeRef.staticInfo.oTryGetLexicalIdx(name);
                if (idx != null)
                    return curFrame.oLex[idx];
                curFrame = curFrame.caller;
            }
            return null;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "getlexreldyn requires an operand with REPR ContextRef");
        }
    }
    public static SixModelObject getlexrelcaller(SixModelObject ctx, String name, ThreadContext tc) {
        if (ctx instanceof ContextRefInstance) {
            CallFrame curCallerFrame = ((ContextRefInstance)ctx).context;
            while (curCallerFrame != null) {
                CallFrame curFrame = curCallerFrame;
                while (curFrame != null) {
                    Integer found = curFrame.codeRef.staticInfo.oTryGetLexicalIdx(name);
                    if (found != null)
                        return curFrame.oLex[found];
                    curFrame = curFrame.outer;
                }
                curCallerFrame = curCallerFrame.caller;
            }
            return null;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "getlexrelcaller requires an operand with REPR ContextRef");
        }
    }

    /* Context introspection. */
    public static SixModelObject ctx(ThreadContext tc) {
        SixModelObject ContextRef = tc.gc.ContextRef;
        SixModelObject wrap = ContextRef.st.REPR.allocate(tc, ContextRef.st);
        ((ContextRefInstance)wrap).context = tc.curFrame;
        return wrap;
    }
    public static SixModelObject ctxouter(SixModelObject ctx, ThreadContext tc) {
        if (ctx instanceof ContextRefInstance) {
            CallFrame outer = ((ContextRefInstance)ctx).context.outer;
            if (outer == null)
                return null;

            SixModelObject ContextRef = tc.gc.ContextRef;
            SixModelObject wrap = ContextRef.st.REPR.allocate(tc, ContextRef.st);
            ((ContextRefInstance)wrap).context = outer;
            return wrap;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "ctxouter requires an operand with REPR ContextRef");
        }
    }
    public static SixModelObject ctxcaller(SixModelObject ctx, ThreadContext tc) {
        if (ctx instanceof ContextRefInstance) {
            CallFrame caller = ((ContextRefInstance)ctx).context.caller;
            if (caller == null)
                return null;

            SixModelObject ContextRef = tc.gc.ContextRef;
            SixModelObject wrap = ContextRef.st.REPR.allocate(tc, ContextRef.st);
            ((ContextRefInstance)wrap).context = caller;
            return wrap;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "ctxcaller requires an operand with REPR ContextRef");
        }
    }
    public static SixModelObject ctxcode(SixModelObject ctx, ThreadContext tc) {
        if (ctx instanceof ContextRefInstance)
            return ((ContextRefInstance)ctx).context.codeRef;
        else
            throw ExceptionHandling.dieInternal(tc, "ctxcode requires an operand with REPR ContextRef");
    }
    public static SixModelObject ctxouterskipthunks(SixModelObject ctx, ThreadContext tc) {
        if (ctx instanceof ContextRefInstance) {
            CallFrame outer = ((ContextRefInstance)ctx).context.outer;
            while (outer != null && outer.codeRef.staticInfo.isThunk)
                outer = outer.outer;
            if (outer == null)
                return null;

            SixModelObject ContextRef = tc.gc.ContextRef;
            SixModelObject wrap = ContextRef.st.REPR.allocate(tc, ContextRef.st);
            ((ContextRefInstance)wrap).context = outer;
            return wrap;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "ctxouter requires an operand with REPR ContextRef");
        }
    }
    public static SixModelObject ctxcallerskipthunks(SixModelObject ctx, ThreadContext tc) {
        if (ctx instanceof ContextRefInstance) {
            CallFrame caller = ((ContextRefInstance)ctx).context.caller;
            while (caller != null && caller.codeRef.staticInfo.isThunk)
                caller = caller.caller;
            if (caller == null)
                return null;

            SixModelObject ContextRef = tc.gc.ContextRef;
            SixModelObject wrap = ContextRef.st.REPR.allocate(tc, ContextRef.st);
            ((ContextRefInstance)wrap).context = caller;
            return wrap;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "ctxcaller requires an operand with REPR ContextRef");
        }
    }
    public static SixModelObject ctxlexpad(SixModelObject ctx, ThreadContext tc) {
        if (ctx instanceof ContextRefInstance) {
            // The context serves happily enough as the lexpad also (provides
            // the associative bit of the REPR API, mapped to the lexpad).
            return ctx;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "ctxlexpad requires an operand with REPR ContextRef");
        }
    }
    public static SixModelObject curcode(ThreadContext tc) {
        return tc.curFrame.codeRef;
    }
    public static SixModelObject callercode(ThreadContext tc) {
        CallFrame caller = tc.curFrame.caller;
        return caller == null ? null : caller.codeRef;
    }
    public static long lexprimspec(SixModelObject pad, String key, ThreadContext tc) {
        if (pad instanceof ContextRefInstance) {
            StaticCodeInfo sci = ((ContextRefInstance)pad).context.codeRef.staticInfo;
            if (sci.oTryGetLexicalIdx(key) != null) return StorageSpec.BP_NONE;
            if (sci.iTryGetLexicalIdx(key) != null) return StorageSpec.BP_INT;
            if (sci.nTryGetLexicalIdx(key) != null) return StorageSpec.BP_NUM;
            if (sci.sTryGetLexicalIdx(key) != null) return StorageSpec.BP_STR;
            throw ExceptionHandling.dieInternal(tc, "Invalid lexical name passed to lexprimspec");
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "lexprimspec requires an operand with REPR ContextRef");
        }
    }

    /* Invocation arity check. */
    public static CallSiteDescriptor checkarity(CallFrame cf, CallSiteDescriptor cs, Object[] args, int required, int accepted) {
        if (cs.hasFlattening)
            cs = cs.explodeFlattening(cf, args);
        else
            cf.tc.flatArgs = args;
        int positionals = cs.numPositionals;
        if (positionals < required || positionals > accepted && accepted != -1)
            throw ExceptionHandling.dieInternal(cf.tc, "Wrong number of arguments passed; expected " +
                required + ".." + accepted + ", but got " + positionals);
        return cs;
    }

    /* Required positional parameter fetching. */
    public static SixModelObject posparam_o(CallFrame cf, CallSiteDescriptor cs, Object[] args, int idx) {
        switch (cs.argFlags[idx]) {
        case CallSiteDescriptor.ARG_OBJ:
            return (SixModelObject)args[idx];
        case CallSiteDescriptor.ARG_INT:
            return box_i((long)args[idx], cf.codeRef.staticInfo.compUnit.hllConfig.intBoxType, cf.tc);
        case CallSiteDescriptor.ARG_NUM:
            return box_n((double)args[idx], cf.codeRef.staticInfo.compUnit.hllConfig.numBoxType, cf.tc);
        case CallSiteDescriptor.ARG_STR:
            return box_s((String)args[idx], cf.codeRef.staticInfo.compUnit.hllConfig.strBoxType, cf.tc);
        default:
            throw ExceptionHandling.dieInternal(cf.tc, "Error in argument processing");
        }
    }
    public static long posparam_i(CallFrame cf, CallSiteDescriptor cs, Object[] args, int idx) {
        switch (cs.argFlags[idx]) {
        case CallSiteDescriptor.ARG_INT:
            return (long)args[idx];
        case CallSiteDescriptor.ARG_NUM:
            return (long)(double)args[idx];
        case CallSiteDescriptor.ARG_STR:
            return coerce_s2i((String)args[idx]);
        case CallSiteDescriptor.ARG_OBJ:
            return decont(((SixModelObject)args[idx]), cf.tc).get_int(cf.tc);
        default:
            throw ExceptionHandling.dieInternal(cf.tc, "Error in argument processing");
        }
    }
    public static double posparam_n(CallFrame cf, CallSiteDescriptor cs, Object[] args, int idx) {
        switch (cs.argFlags[idx]) {
        case CallSiteDescriptor.ARG_NUM:
            return (double)args[idx];
        case CallSiteDescriptor.ARG_INT:
            return (double)(long)args[idx];
        case CallSiteDescriptor.ARG_STR:
            return coerce_s2n((String)args[idx]);
        case CallSiteDescriptor.ARG_OBJ:
            return decont(((SixModelObject)args[idx]), cf.tc).get_num(cf.tc);
        default:
            throw ExceptionHandling.dieInternal(cf.tc, "Error in argument processing");
        }
    }
    public static String posparam_s(CallFrame cf, CallSiteDescriptor cs, Object[] args, int idx) {
        switch (cs.argFlags[idx]) {
        case CallSiteDescriptor.ARG_STR:
            return (String)args[idx];
        case CallSiteDescriptor.ARG_INT:
            return coerce_i2s((long)args[idx]);
        case CallSiteDescriptor.ARG_NUM:
            return coerce_n2s((double)args[idx]);
        case CallSiteDescriptor.ARG_OBJ:
            return decont(((SixModelObject)args[idx]), cf.tc).get_str(cf.tc);
        default:
            throw ExceptionHandling.dieInternal(cf.tc, "Error in argument processing");
        }
    }

    /* Optional positional parameter fetching. */
    public static SixModelObject posparam_opt_o(CallFrame cf, CallSiteDescriptor cs, Object[] args, int idx) {
        if (idx < cs.numPositionals) {
            cf.tc.lastParameterExisted = 1;
            return posparam_o(cf, cs, args, idx);
        }
        else {
            cf.tc.lastParameterExisted = 0;
            return null;
        }
    }
    public static long posparam_opt_i(CallFrame cf, CallSiteDescriptor cs, Object[] args, int idx) {
        if (idx < cs.numPositionals) {
            cf.tc.lastParameterExisted = 1;
            return posparam_i(cf, cs, args, idx);
        }
        else {
            cf.tc.lastParameterExisted = 0;
            return 0;
        }
    }
    public static double posparam_opt_n(CallFrame cf, CallSiteDescriptor cs, Object[] args, int idx) {
        if (idx < cs.numPositionals) {
            cf.tc.lastParameterExisted = 1;
            return posparam_n(cf, cs, args, idx);
        }
        else {
            cf.tc.lastParameterExisted = 0;
            return 0.0;
        }
    }
    public static String posparam_opt_s(CallFrame cf, CallSiteDescriptor cs, Object[] args, int idx) {
        if (idx < cs.numPositionals) {
            cf.tc.lastParameterExisted = 1;
            return posparam_s(cf, cs, args, idx);
        }
        else {
            cf.tc.lastParameterExisted = 0;
            return null;
        }
    }

    /* Slurpy positional parameter. */
    public static SixModelObject posslurpy(ThreadContext tc, CallFrame cf, CallSiteDescriptor cs, Object[] args, int fromIdx) {
        /* Create result. */
        HLLConfig hllConfig = cf.codeRef.staticInfo.compUnit.hllConfig;
        SixModelObject resType = hllConfig.slurpyArrayType;
        SixModelObject result = resType.st.REPR.allocate(tc, resType.st);

        /* Populate it. */
        for (int i = fromIdx; i < cs.numPositionals; i++) {
            switch (cs.argFlags[i]) {
            case CallSiteDescriptor.ARG_OBJ:
                result.push_boxed(tc, (SixModelObject)args[i]);
                break;
            case CallSiteDescriptor.ARG_INT:
                result.push_boxed(tc, box_i((long)args[i], hllConfig.intBoxType, tc));
                break;
            case CallSiteDescriptor.ARG_NUM:
                result.push_boxed(tc, box_n((double)args[i], hllConfig.numBoxType, tc));
                break;
            case CallSiteDescriptor.ARG_STR:
                result.push_boxed(tc, box_s((String)args[i], hllConfig.strBoxType, tc));
                break;
            }
        }

        return result;
    }

    /* Required named parameter getting. */
    public static SixModelObject namedparam_o(CallFrame cf, CallSiteDescriptor cs, Object[] args, String name) {
        if (cf.workingNameMap == null)
            cf.workingNameMap = new HashMap<String, Integer>(cs.nameMap);
        Integer lookup = cf.workingNameMap.remove(name);
        if (lookup != null) {
            switch (lookup & 7) {
            case CallSiteDescriptor.ARG_OBJ:
                return (SixModelObject)args[lookup >> 3];
            case CallSiteDescriptor.ARG_INT:
                return box_i((long)args[lookup >> 3], cf.codeRef.staticInfo.compUnit.hllConfig.intBoxType, cf.tc);
            case CallSiteDescriptor.ARG_NUM:
                return box_n((double)args[lookup >> 3], cf.codeRef.staticInfo.compUnit.hllConfig.numBoxType, cf.tc);
            case CallSiteDescriptor.ARG_STR:
                return box_s((String)args[lookup >> 3], cf.codeRef.staticInfo.compUnit.hllConfig.strBoxType, cf.tc);
            default:
                throw ExceptionHandling.dieInternal(cf.tc, "Error in argument processing");
            }
        }
        else
            throw ExceptionHandling.dieInternal(cf.tc, "Required named argument '" + name + "' not passed");
    }
    public static long namedparam_i(CallFrame cf, CallSiteDescriptor cs, Object[] args, String name) {
        if (cf.workingNameMap == null)
            cf.workingNameMap = new HashMap<String, Integer>(cs.nameMap);
        Integer lookup = cf.workingNameMap.remove(name);
        if (lookup != null) {
            switch ((lookup & 7)) {
            case CallSiteDescriptor.ARG_INT:
                return (long)args[lookup >> 3];
            case CallSiteDescriptor.ARG_NUM:
                return (long)(double)args[lookup >> 3];
            case CallSiteDescriptor.ARG_STR:
                return coerce_s2i((String)args[lookup >> 3]);
            case CallSiteDescriptor.ARG_OBJ:
                return ((SixModelObject)args[lookup >> 3]).get_int(cf.tc);
            default:
                throw ExceptionHandling.dieInternal(cf.tc, "Error in argument processing");
            }
        }
        else
            throw ExceptionHandling.dieInternal(cf.tc, "Required named argument '" + name + "' not passed");
    }
    public static double namedparam_n(CallFrame cf, CallSiteDescriptor cs, Object[] args, String name) {
        if (cf.workingNameMap == null)
            cf.workingNameMap = new HashMap<String, Integer>(cs.nameMap);
        Integer lookup = cf.workingNameMap.remove(name);
        if (lookup != null) {
            switch ((lookup & 7)) {
            case CallSiteDescriptor.ARG_NUM:
                return (double)args[lookup >> 3];
            case CallSiteDescriptor.ARG_INT:
                return (double)(long)args[lookup >> 3];
            case CallSiteDescriptor.ARG_STR:
                return coerce_s2n((String)args[lookup >> 3]);
            case CallSiteDescriptor.ARG_OBJ:
                return ((SixModelObject)args[lookup >> 3]).get_num(cf.tc);
            default:
                throw ExceptionHandling.dieInternal(cf.tc, "Error in argument processing");
            }
        }
        else
            throw ExceptionHandling.dieInternal(cf.tc, "Required named argument '" + name + "' not passed");
    }
    public static String namedparam_s(CallFrame cf, CallSiteDescriptor cs, Object[] args, String name) {
        if (cf.workingNameMap == null)
            cf.workingNameMap = new HashMap<String, Integer>(cs.nameMap);
        Integer lookup = cf.workingNameMap.remove(name);
        if (lookup != null) {
            switch ((lookup & 7)) {
            case CallSiteDescriptor.ARG_STR:
                return (String)args[lookup >> 3];
            case CallSiteDescriptor.ARG_INT:
                return coerce_i2s((long)args[lookup >> 3]);
            case CallSiteDescriptor.ARG_NUM:
                return coerce_n2s((double)args[lookup >> 3]);
            case CallSiteDescriptor.ARG_OBJ:
                return ((SixModelObject)args[lookup >> 3]).get_str(cf.tc);
            default:
                throw ExceptionHandling.dieInternal(cf.tc, "Error in argument processing");
            }
        }
        else
            throw ExceptionHandling.dieInternal(cf.tc, "Required named argument '" + name + "' not passed");
    }

    /* Optional named parameter getting. */
    public static SixModelObject namedparam_opt_o(CallFrame cf, CallSiteDescriptor cs, Object[] args, String name) {
        if (cf.workingNameMap == null)
            cf.workingNameMap = new HashMap<String, Integer>(cs.nameMap);
        Integer lookup = cf.workingNameMap.remove(name);
        if (lookup != null) {
            cf.tc.lastParameterExisted = 1;
            switch (lookup & 7) {
            case CallSiteDescriptor.ARG_OBJ:
                return (SixModelObject)args[lookup >> 3];
            case CallSiteDescriptor.ARG_INT:
                return box_i((long)args[lookup >> 3], cf.codeRef.staticInfo.compUnit.hllConfig.intBoxType, cf.tc);
            case CallSiteDescriptor.ARG_NUM:
                return box_n((double)args[lookup >> 3], cf.codeRef.staticInfo.compUnit.hllConfig.numBoxType, cf.tc);
            case CallSiteDescriptor.ARG_STR:
                return box_s((String)args[lookup >> 3], cf.codeRef.staticInfo.compUnit.hllConfig.strBoxType, cf.tc);
            default:
                throw ExceptionHandling.dieInternal(cf.tc, "Error in argument processing");
            }
        }
        else {
            cf.tc.lastParameterExisted = 0;
            return null;
        }
    }
    public static long namedparam_opt_i(CallFrame cf, CallSiteDescriptor cs, Object[] args, String name) {
        if (cf.workingNameMap == null)
            cf.workingNameMap = new HashMap<String, Integer>(cs.nameMap);
        Integer lookup = cf.workingNameMap.remove(name);
        if (lookup != null) {
            cf.tc.lastParameterExisted = 1;
            switch ((lookup & 7)) {
            case CallSiteDescriptor.ARG_INT:
                return (long)args[lookup >> 3];
            case CallSiteDescriptor.ARG_NUM:
                return (long)(double)args[lookup >> 3];
            case CallSiteDescriptor.ARG_STR:
                return coerce_s2i((String)args[lookup >> 3]);
            case CallSiteDescriptor.ARG_OBJ:
                return ((SixModelObject)args[lookup >> 3]).get_int(cf.tc);
            default:
                throw ExceptionHandling.dieInternal(cf.tc, "Error in argument processing");
            }
        }
        else {
            cf.tc.lastParameterExisted = 0;
            return 0;
        }
    }
    public static double namedparam_opt_n(CallFrame cf, CallSiteDescriptor cs, Object[] args, String name) {
        if (cf.workingNameMap == null)
            cf.workingNameMap = new HashMap<String, Integer>(cs.nameMap);
        Integer lookup = cf.workingNameMap.remove(name);
        if (lookup != null) {
            cf.tc.lastParameterExisted = 1;
            switch ((lookup & 7)) {
            case CallSiteDescriptor.ARG_NUM:
                return (double)args[lookup >> 3];
            case CallSiteDescriptor.ARG_INT:
                return (double)(long)args[lookup >> 3];
            case CallSiteDescriptor.ARG_STR:
                return coerce_s2n((String)args[lookup >> 3]);
            case CallSiteDescriptor.ARG_OBJ:
                return ((SixModelObject)args[lookup >> 3]).get_num(cf.tc);
            default:
                throw ExceptionHandling.dieInternal(cf.tc, "Error in argument processing");
            }
        }
        else {
            cf.tc.lastParameterExisted = 0;
            return 0.0;
        }
    }
    public static String namedparam_opt_s(CallFrame cf, CallSiteDescriptor cs, Object[] args, String name) {
        if (cf.workingNameMap == null)
            cf.workingNameMap = new HashMap<String, Integer>(cs.nameMap);
        Integer lookup = cf.workingNameMap.remove(name);
        if (lookup != null) {
            cf.tc.lastParameterExisted = 1;
            switch ((lookup & 7)) {
            case CallSiteDescriptor.ARG_STR:
                return (String)args[lookup >> 3];
            case CallSiteDescriptor.ARG_INT:
                return coerce_i2s((long)args[lookup >> 3]);
            case CallSiteDescriptor.ARG_NUM:
                return coerce_n2s((double)args[lookup >> 3]);
            case CallSiteDescriptor.ARG_OBJ:
                return ((SixModelObject)args[lookup >> 3]).get_str(cf.tc);
            default:
                throw ExceptionHandling.dieInternal(cf.tc, "Error in argument processing");
            }
        }
        else {
            cf.tc.lastParameterExisted = 0;
            return null;
        }
    }

    /* Slurpy named parameter. */
    public static SixModelObject namedslurpy(ThreadContext tc, CallFrame cf, CallSiteDescriptor cs, Object[] args) {
        /* Create result. */
        HLLConfig hllConfig = cf.codeRef.staticInfo.compUnit.hllConfig;
        SixModelObject resType = hllConfig.slurpyHashType;
        SixModelObject result = resType.st.REPR.allocate(tc, resType.st);

        /* Populate it. */
        if (cf.workingNameMap == null)
            cf.workingNameMap = new HashMap<String, Integer>(cs.nameMap);
        for (String name : cf.workingNameMap.keySet()) {
            Integer lookup = cf.workingNameMap.get(name);
            switch (lookup & 7) {
            case CallSiteDescriptor.ARG_OBJ:
                result.bind_key_boxed(tc, name, (SixModelObject)args[lookup >> 3]);
                break;
            case CallSiteDescriptor.ARG_INT:
                result.bind_key_boxed(tc, name, box_i((long)args[lookup >> 3], hllConfig.intBoxType, tc));
                break;
            case CallSiteDescriptor.ARG_NUM:
                result.bind_key_boxed(tc, name, box_n((double)args[lookup >> 3], hllConfig.numBoxType, tc));
                break;
            case CallSiteDescriptor.ARG_STR:
                result.bind_key_boxed(tc, name, box_s((String)args[lookup >> 3], hllConfig.strBoxType, tc));
                break;
            }
        }

        return result;
    }

    /* Return value setting. */
    public static void return_o(SixModelObject v, CallFrame cf) {
        CallFrame caller = cf.caller;
        if (caller == null) caller = cf.tc.dummyCaller;
        caller.oRet = v;
        caller.retType = CallFrame.RET_OBJ;
    }
    public static void return_i(long v, CallFrame cf) {
        CallFrame caller = cf.caller;
        if (caller == null) caller = cf.tc.dummyCaller;
        caller.iRet = v;
        caller.retType = CallFrame.RET_INT;
    }
    public static void return_n(double v, CallFrame cf) {
        CallFrame caller = cf.caller;
        if (caller == null) caller = cf.tc.dummyCaller;
        caller.nRet = v;
        caller.retType = CallFrame.RET_NUM;
    }
    public static void return_s(String v, CallFrame cf) {
        CallFrame caller = cf.caller;
        if (caller == null) caller = cf.tc.dummyCaller;
        caller.sRet = v;
        caller.retType = CallFrame.RET_STR;
    }

    /* Get returned result. */
    public static SixModelObject result_o(CallFrame cf) {
        switch (cf.retType) {
        case CallFrame.RET_INT:
            return box_i(cf.iRet, cf.codeRef.staticInfo.compUnit.hllConfig.intBoxType, cf.tc);
        case CallFrame.RET_NUM:
            return box_n(cf.nRet, cf.codeRef.staticInfo.compUnit.hllConfig.numBoxType, cf.tc);
        case CallFrame.RET_STR:
                return box_s(cf.sRet, cf.codeRef.staticInfo.compUnit.hllConfig.strBoxType, cf.tc);
        default:
            return cf.oRet;
        }
    }
    public static long result_i(CallFrame cf) {
        switch (cf.retType) {
            case CallFrame.RET_INT:
                return cf.iRet;
            case CallFrame.RET_NUM:
                return (long)cf.nRet;
            case CallFrame.RET_STR:
                return coerce_s2i(cf.sRet);
            default:
                return unbox_i(cf.oRet, cf.tc);
        }
    }
    public static double result_n(CallFrame cf) {
        switch (cf.retType) {
            case CallFrame.RET_INT:
                return (double)cf.iRet;
            case CallFrame.RET_NUM:
                return cf.nRet;
            case CallFrame.RET_STR:
                return coerce_s2n(cf.sRet);
            default:
                return unbox_n(cf.oRet, cf.tc);
        }
    }
    public static String result_s(CallFrame cf) {
        switch (cf.retType) {
            case CallFrame.RET_INT:
                return coerce_i2s(cf.iRet);
            case CallFrame.RET_NUM:
                return coerce_n2s(cf.nRet);
            case CallFrame.RET_STR:
                return cf.sRet;
            default:
                return unbox_s(cf.oRet, cf.tc);
        }
    }

    /* Capture related operations. */
    public static SixModelObject usecapture(ThreadContext tc, CallSiteDescriptor cs, Object[] args) {
        CallCaptureInstance cc = tc.savedCC;
        cc.descriptor = cs;
        cc.args = args.clone();
        return cc;
    }
    public static SixModelObject savecapture(ThreadContext tc, CallSiteDescriptor cs, Object[] args) {
        SixModelObject CallCapture = tc.gc.CallCapture;
        CallCaptureInstance cc = (CallCaptureInstance)CallCapture.st.REPR.allocate(tc, CallCapture.st);
        cc.descriptor = cs;
        cc.args = args.clone();
        return cc;
    }
    public static long captureposelems(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof CallCaptureInstance)
            return ((CallCaptureInstance)obj).descriptor.numPositionals;
        else
            throw ExceptionHandling.dieInternal(tc, "captureposelems requires a CallCapture");
    }
    public static SixModelObject captureposarg(SixModelObject obj, long idx, ThreadContext tc) {
        if (obj instanceof CallCaptureInstance) {
            CallCaptureInstance cc = (CallCaptureInstance)obj;
            int i = (int)idx;
            switch (cc.descriptor.argFlags[i]) {
            case CallSiteDescriptor.ARG_OBJ:
                return (SixModelObject)cc.args[i];
            case CallSiteDescriptor.ARG_INT:
                return box_i((long)cc.args[i],
                        tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.intBoxType, tc);
            case CallSiteDescriptor.ARG_NUM:
                return box_n((double)cc.args[i],
                        tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.numBoxType, tc);
            case CallSiteDescriptor.ARG_STR:
                return box_s((String)cc.args[i],
                        tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strBoxType, tc);
            default:
                throw ExceptionHandling.dieInternal(tc, "Invalid positional argument access from capture");
            }
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "captureposarg requires a CallCapture");
        }
    }
    public static long captureexistsnamed(SixModelObject obj, String name, ThreadContext tc) {
        if (obj instanceof CallCaptureInstance) {
            CallCaptureInstance cc = (CallCaptureInstance)obj;
            return cc.descriptor.nameMap.containsKey(name) ? 1 : 0;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "capturehasnameds requires a CallCapture");
        }
    }
    public static long capturehasnameds(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof CallCaptureInstance) {
            CallCaptureInstance cc = (CallCaptureInstance)obj;
            return cc.descriptor.names == null ? 0 : 1;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "capturehasnameds requires a CallCapture");
        }
    }
    public static long captureposprimspec(SixModelObject obj, long idx, ThreadContext tc) {
        if (obj instanceof CallCaptureInstance) {
            CallCaptureInstance cc = (CallCaptureInstance)obj;
            switch (cc.descriptor.argFlags[(int)idx]) {
            case CallSiteDescriptor.ARG_INT:
                return StorageSpec.BP_INT;
            case CallSiteDescriptor.ARG_NUM:
                return StorageSpec.BP_NUM;
            case CallSiteDescriptor.ARG_STR:
                return StorageSpec.BP_STR;
            default:
                return StorageSpec.BP_NONE;
            }
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "captureposarg requires a CallCapture");
        }
    }

    /* Invocation. */
    public static final CallSiteDescriptor emptyCallSite = new CallSiteDescriptor(new byte[0], null);
    public static final Object[] emptyArgList = new Object[0];
    public static final CallSiteDescriptor invocantCallSite = new CallSiteDescriptor(new byte[] { CallSiteDescriptor.ARG_OBJ }, null);
    public static final CallSiteDescriptor storeCallSite = new CallSiteDescriptor(new byte[] { CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_OBJ }, null);
    public static final CallSiteDescriptor storeCallSite_i = new CallSiteDescriptor(new byte[] { CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_INT }, null);
    public static final CallSiteDescriptor storeCallSite_n = new CallSiteDescriptor(new byte[] { CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_NUM }, null);
    public static final CallSiteDescriptor storeCallSite_s = new CallSiteDescriptor(new byte[] { CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_STR }, null);
    public static final CallSiteDescriptor findmethCallSite = new CallSiteDescriptor(new byte[] { CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_STR }, null);
    public static final CallSiteDescriptor typeCheckCallSite = new CallSiteDescriptor(new byte[] { CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_OBJ }, null);
    public static final CallSiteDescriptor howObjCallSite = new CallSiteDescriptor(new byte[] { CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_OBJ }, null);
    public static final CallSiteDescriptor parameterizeCallSite = new CallSiteDescriptor(new byte[] { CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_OBJ }, null);
    public static void invokeLexotic(SixModelObject invokee, CallSiteDescriptor csd, Object[] args, ThreadContext tc) {
        LexoticException throwee = tc.theLexotic;
        throwee.target = ((LexoticInstance)invokee).target;
        switch (csd.argFlags[0]) {
        case CallSiteDescriptor.ARG_OBJ:
            throwee.payload = (SixModelObject)args[0];
            break;
        case CallSiteDescriptor.ARG_INT:
            throwee.payload = box_i((long)args[0],
                    tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.intBoxType, tc);
            break;
        case CallSiteDescriptor.ARG_NUM:
            throwee.payload = box_n((double)args[0],
                    tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.numBoxType, tc);
            break;
        case CallSiteDescriptor.ARG_STR:
            throwee.payload = box_s((String)args[0],
                    tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strBoxType, tc);
            break;
        default:
            throw ExceptionHandling.dieInternal(tc, "Invalid lexotic invocation argument");
        }
        throw throwee;
    }
    public static void invoke(SixModelObject invokee, int callsiteIndex, Object[] args, ThreadContext tc) throws Exception {
        // TODO Find a smarter way to do this without all the pointer chasing.
        if (callsiteIndex >= 0)
            invokeDirect(tc, invokee, tc.curFrame.codeRef.staticInfo.compUnit.callSites[callsiteIndex], args);
        else
            invokeDirect(tc, invokee, emptyCallSite, args);
    }
    public static void invokeArgless(ThreadContext tc, SixModelObject invokee) {
        invokeDirect(tc, invokee, emptyCallSite, new Object[0]);
    }
    public static void invokeMain(ThreadContext tc, SixModelObject invokee, String prog, String[] argv) {
        /* Build argument list from argv. */
        SixModelObject Str = ((CodeRef)invokee).staticInfo.compUnit.hllConfig.strBoxType;
        Object[] args = new Object[argv.length + 1];
        byte[] callsite = new byte[argv.length + 1];
        args[0] = box_s(prog, Str, tc);
        callsite[0] = CallSiteDescriptor.ARG_OBJ;
        for (int i = 0; i < argv.length; i++) {
            args[i + 1] = box_s(argv[i], Str, tc);
            callsite[i + 1] = CallSiteDescriptor.ARG_OBJ;
        }

        /* Invoke with the descriptor and arg list. */
        invokeDirect(tc, invokee, new CallSiteDescriptor(callsite, null), args);
    }
    public static void invokeDirect(ThreadContext tc, SixModelObject invokee, CallSiteDescriptor csd, Object[] args) {
        invokeDirect(tc, invokee, csd, true, args);
    }
    public static void invokeDirect(ThreadContext tc, SixModelObject invokee, CallSiteDescriptor csd, boolean barrier, Object[] args) {
        // If it's lexotic, throw the exception right off.
        if (invokee instanceof LexoticInstance) {
            invokeLexotic(invokee, csd, args, tc);
        }
        // Otherwise, get the code ref.
        CodeRef cr;
        if (invokee instanceof CodeRef) {
            cr = (CodeRef)invokee;
        }
        else {
            InvocationSpec is = invokee.st.InvocationSpec;
            if (is == null)
                throw ExceptionHandling.dieInternal(tc, "Cannot invoke this object");
            if (is.ClassHandle != null)
                cr = (CodeRef)invokee.get_attribute_boxed(tc, is.ClassHandle, is.AttrName, is.Hint);
            else {
                cr = (CodeRef)is.InvocationHandler;
                csd = csd.injectInvokee(tc, args, invokee);
                args = tc.flatArgs;
            }
        }

        try {
            ArgsExpectation.invokeByExpectation(tc, cr, csd, args);
        }
        catch (ControlException e) {
            if (barrier && (e instanceof SaveStackException))
                ExceptionHandling.dieInternal(tc, "control operator crossed continuation barrier");
            throw e;
        }
        catch (Throwable e) {
            ExceptionHandling.dieInternal(tc, e);
        }
    }
    public static SixModelObject invokewithcapture(SixModelObject invokee, SixModelObject capture, ThreadContext tc) throws Exception {
        if (capture instanceof CallCaptureInstance) {
            CallCaptureInstance cc = (CallCaptureInstance)capture;
            invokeDirect(tc, invokee, cc.descriptor, cc.args);
            return result_o(tc.curFrame);
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "invokewithcapture requires a CallCapture");
        }
    }

    /* Lexotic. */
    public static SixModelObject lexotic(long target) {
        LexoticInstance res = new LexoticInstance();
        res.target = target;
        return res;
    }
    public static SixModelObject lexotic_tc(long target, ThreadContext tc) {
        LexoticInstance res = new LexoticInstance();
        res.st = tc.gc.Lexotic.st;
        res.target = target;
        return res;
    }

    /* Multi-dispatch cache. */
    public static SixModelObject multicacheadd(SixModelObject cache, SixModelObject capture, SixModelObject result, ThreadContext tc) {
        if (!(cache instanceof MultiCacheInstance))
            cache = tc.gc.MultiCache.st.REPR.allocate(tc, tc.gc.MultiCache.st);
        ((MultiCacheInstance)cache).add((CallCaptureInstance)capture, result, tc);
        return cache;
    }
    public static SixModelObject multicachefind(SixModelObject cache, SixModelObject capture, ThreadContext tc) {
        if (cache instanceof MultiCacheInstance)
            return ((MultiCacheInstance)cache).lookup((CallCaptureInstance)capture, tc);
        else
            return null;
    }

    /* Basic 6model operations. */
    public static SixModelObject what(SixModelObject o) {
        return o.st.WHAT;
    }
    public static SixModelObject how(SixModelObject o) {
        return o.st.HOW;
    }
    public static SixModelObject who(SixModelObject o) {
        return o.st.WHO;
    }
    public static long where(SixModelObject o) {
        return o.hashCode();
    }
    public static SixModelObject setwho(SixModelObject o, SixModelObject who) {
        o.st.WHO = who;
        return o;
    }
    public static SixModelObject what(SixModelObject o, ThreadContext tc) {
        return decont(o, tc).st.WHAT;
    }
    public static SixModelObject how(SixModelObject o, ThreadContext tc) {
        return decont(o, tc).st.HOW;
    }
    public static SixModelObject who(SixModelObject o, ThreadContext tc) {
        return decont(o, tc).st.WHO;
    }
    public static long where(SixModelObject o, ThreadContext tc) {
        return o.hashCode();
    }
    public static SixModelObject setwho(SixModelObject o, SixModelObject who, ThreadContext tc) {
        decont(o, tc).st.WHO = who;
        return o;
    }
    public static SixModelObject rebless(SixModelObject obj, SixModelObject newType, ThreadContext tc) {
        obj = decont(obj, tc);
        newType = decont(newType, tc);
        if (obj.st != newType.st) {
            obj.st.REPR.change_type(tc, obj, newType);
            if (obj.sc != null)
                scwbObject(tc, obj);
        }
        return obj;
    }
    public static SixModelObject create(SixModelObject obj, ThreadContext tc) {
        SixModelObject res = obj.st.REPR.allocate(tc, obj.st);
        return res;
    }
    public static SixModelObject clone(SixModelObject obj, ThreadContext tc) {
        return decont(obj, tc).clone(tc);
    }
    public static long isconcrete(SixModelObject obj, ThreadContext tc) {
        return obj == null || decont(obj, tc) instanceof TypeObject ? 0 : 1;
    }
    public static SixModelObject knowhow(ThreadContext tc) {
        return tc.gc.KnowHOW;
    }
    public static SixModelObject knowhowattr(ThreadContext tc) {
        return tc.gc.KnowHOWAttribute;
    }
    public static SixModelObject bootint(ThreadContext tc) {
        return tc.gc.BOOTInt;
    }
    public static SixModelObject bootnum(ThreadContext tc) {
        return tc.gc.BOOTNum;
    }
    public static SixModelObject bootstr(ThreadContext tc) {
        return tc.gc.BOOTStr;
    }
    public static SixModelObject bootarray(ThreadContext tc) {
        return tc.gc.BOOTArray;
    }
    public static SixModelObject bootintarray(ThreadContext tc) {
        return tc.gc.BOOTIntArray;
    }
    public static SixModelObject bootnumarray(ThreadContext tc) {
        return tc.gc.BOOTNumArray;
    }
    public static SixModelObject bootstrarray(ThreadContext tc) {
        return tc.gc.BOOTStrArray;
    }
    public static SixModelObject boothash(ThreadContext tc) {
        return tc.gc.BOOTHash;
    }
    public static SixModelObject hlllist(ThreadContext tc) {
        return tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.listType;
    }
    public static SixModelObject hllhash(ThreadContext tc) {
        return tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.hashType;
    }
    public static SixModelObject findmethod(ThreadContext tc, SixModelObject invocant, String name) {
        if (invocant == null)
            throw ExceptionHandling.dieInternal(tc, "Cannot call method '" + name + "' on a null object");
        invocant = decont(invocant, tc);

        SixModelObject meth = invocant.st.MethodCache.get(name);
        if (meth == null)
            throw ExceptionHandling.dieInternal(tc,
                "Method '" + name + "' not found for invocant of class '" + typeName(invocant, tc) + "'");
        return meth;
    }
    public static SixModelObject findmethod(SixModelObject invocant, String name, ThreadContext tc) {
        if (invocant == null)
            throw ExceptionHandling.dieInternal(tc, "Cannot call method '" + name + "' on a null object");
        invocant = decont(invocant, tc);

        Map<String, SixModelObject> cache = invocant.st.MethodCache;

        /* Try the by-name method cache, if the HOW published one. */
        if (cache != null) {
            SixModelObject found = cache.get(name);
            if (found != null)
                return found;
            if ((invocant.st.ModeFlags & STable.METHOD_CACHE_AUTHORITATIVE) != 0)
                return null;
        }

        /* Otherwise delegate to the HOW. */
        SixModelObject how = invocant.st.HOW;
        SixModelObject find_method = findmethod(how, "find_method", tc);
        invokeDirect(tc, find_method, findmethCallSite,
                new Object[] { how, invocant, name });
        return result_o(tc.curFrame);
    }
    public static String typeName(SixModelObject invocant, ThreadContext tc) {
        invocant = decont(invocant, tc);
        SixModelObject how = invocant.st.HOW;
        SixModelObject nameMeth = findmethod(tc, how, "name");
        invokeDirect(tc, nameMeth, howObjCallSite, new Object[] { how, invocant });
        return result_s(tc.curFrame);
    }
    public static long can(SixModelObject invocant, String name, ThreadContext tc) {
        return findmethod(invocant, name, tc) == null ? 0 : 1;
    }
    public static long eqaddr(SixModelObject a, SixModelObject b) {
        return a == b ? 1 : 0;
    }
    public static long isnull(SixModelObject obj) {
        return obj == null ? 1 : 0;
    }
    public static long isnull_s(String str) {
        return str == null ? 1 : 0;
    }
    public static String reprname(SixModelObject obj) {
        return obj.st.REPR.name;
    }
    public static SixModelObject newtype(SixModelObject how, String reprname, ThreadContext tc) {
        return REPRRegistry.getByName(reprname).type_object_for(tc, decont(how, tc));
    }
    public static SixModelObject composetype(SixModelObject obj, SixModelObject reprinfo, ThreadContext tc) {
        obj.st.REPR.compose(tc, obj.st, reprinfo);
        return obj;
    }
    public static SixModelObject setmethcache(SixModelObject obj, SixModelObject meths, ThreadContext tc) {
        SixModelObject iter = iter(meths, tc);
        HashMap<String, SixModelObject> cache = new HashMap<String, SixModelObject>();
        while (istrue(iter, tc) != 0) {
            SixModelObject cur = iter.shift_boxed(tc);
            cache.put(iterkey_s(cur, tc), iterval(cur, tc));
        }
        obj.st.MethodCache = cache;
        if (obj.st.sc != null)
            scwbSTable(tc, obj.st);
        return obj;
    }
    public static SixModelObject setmethcacheauth(SixModelObject obj, long flag, ThreadContext tc) {
        int newFlags = obj.st.ModeFlags & (~STable.METHOD_CACHE_AUTHORITATIVE);
        if (flag != 0)
            newFlags = newFlags | STable.METHOD_CACHE_AUTHORITATIVE;
        obj.st.ModeFlags = newFlags;
        if (obj.st.sc != null)
            scwbSTable(tc, obj.st);
        return obj;
    }
    public static SixModelObject settypecache(SixModelObject obj, SixModelObject types, ThreadContext tc) {
        long elems = types.elems(tc);
        SixModelObject[] cache = new SixModelObject[(int)elems];
        for (long i = 0; i < elems; i++)
            cache[(int)i] = types.at_pos_boxed(tc, i);
        obj.st.TypeCheckCache = cache;
        if (obj.st.sc != null)
            scwbSTable(tc, obj.st);
        return obj;
    }
    public static SixModelObject settypecheckmode(SixModelObject obj, long mode, ThreadContext tc) {
        obj.st.ModeFlags = (int)mode |
            (obj.st.ModeFlags & (~STable.TYPE_CHECK_CACHE_FLAG_MASK));
        if (obj.st.sc != null)
            scwbSTable(tc, obj.st);
        return obj;
    }
    public static long objprimspec(SixModelObject obj, ThreadContext tc) {
        return obj.st.REPR.get_storage_spec(tc, obj.st).boxed_primitive;
    }
    public static SixModelObject setinvokespec(SixModelObject obj, SixModelObject ch,
            String name, SixModelObject invocationHandler, ThreadContext tc) {
        InvocationSpec is = new InvocationSpec();
        is.ClassHandle = ch;
        is.AttrName = name;
        is.Hint = STable.NO_HINT;
        is.InvocationHandler = invocationHandler;
        obj.st.InvocationSpec = is;
        return obj;
    }
    public static long isinvokable(SixModelObject obj, ThreadContext tc) {
        return obj instanceof CodeRef || obj.st.InvocationSpec != null ? 1 : 0;
    }
    public static long istype(SixModelObject obj, SixModelObject type, ThreadContext tc) {
        return istype_nodecont(decont(obj, tc), decont(type, tc), tc);
    }
    public static long istype_nodecont(SixModelObject obj, SixModelObject type, ThreadContext tc) {
        /* Null always type checks false. */
        if (obj == null)
            return 0;

        /* Start by considering cache. */
        int typeCheckMode = type.st.ModeFlags & STable.TYPE_CHECK_CACHE_FLAG_MASK;
        SixModelObject[] cache = obj.st.TypeCheckCache;
        if (cache != null) {
            /* We have the cache, so just look for the type object we
             * want to be in there. */
            for (int i = 0; i < cache.length; i++)
                if (cache[i] == type)
                    return 1;

            /* If the type check cache is definitive, we're done. */
            if ((typeCheckMode & STable.TYPE_CHECK_CACHE_THEN_METHOD) == 0 &&
                    (typeCheckMode & STable.TYPE_CHECK_NEEDS_ACCEPTS) == 0)
                return 0;
        }

        /* If we get here, need to call .^type_check on the value we're
         * checking. */
        if (cache == null || (typeCheckMode & STable.TYPE_CHECK_CACHE_THEN_METHOD) != 0) {
            SixModelObject tcMeth = findmethod(obj.st.HOW, "type_check", tc);
            if (tcMeth == null)
                return 0;
                /* TODO: Review why the following busts stuff. */
                /*throw ExceptionHandling.dieInternal(tc,
                    "No type check cache and no type_check method in meta-object");*/
            invokeDirect(tc, tcMeth, typeCheckCallSite, new Object[] { obj.st.HOW, obj, type });
            if (tc.curFrame.retType == CallFrame.RET_INT) {
                if (result_i(tc.curFrame) != 0)
                    return 1;
            }
            else {
                if (istrue(result_o(tc.curFrame), tc) != 0)
                    return 1;
            }
        }

        /* If the flag to call .accepts_type on the target value is set, do so. */
        if ((typeCheckMode & STable.TYPE_CHECK_NEEDS_ACCEPTS) != 0) {
            SixModelObject atMeth = findmethod(type.st.HOW, "accepts_type", tc);
            if (atMeth == null)
                throw ExceptionHandling.dieInternal(tc,
                    "Expected accepts_type method, but none found in meta-object");
            invokeDirect(tc, atMeth, typeCheckCallSite, new Object[] { type.st.HOW, type, obj });
            return istrue(result_o(tc.curFrame), tc);
        }

        /* If we get here, type check failed. */
        return 0;
    }

    /* Box/unbox operations. */
    public static SixModelObject box_i(long value, SixModelObject type, ThreadContext tc) {
        SixModelObject res = type.st.REPR.allocate(tc, type.st);
        res.set_int(tc, value);
        return res;
    }
    public static SixModelObject box_n(double value, SixModelObject type, ThreadContext tc) {
        SixModelObject res = type.st.REPR.allocate(tc, type.st);
        res.set_num(tc, value);
        return res;
    }
    public static SixModelObject box_s(String value, SixModelObject type, ThreadContext tc) {
        SixModelObject res = type.st.REPR.allocate(tc, type.st);
        res.set_str(tc, value);
        return res;
    }
    public static long unbox_i(SixModelObject obj, ThreadContext tc) {
        return decont(obj, tc).get_int(tc);
    }
    public static double unbox_n(SixModelObject obj, ThreadContext tc) {
        return decont(obj, tc).get_num(tc);
    }
    public static String unbox_s(SixModelObject obj, ThreadContext tc) {
        return decont(obj, tc).get_str(tc);
    }
    public static long isint(SixModelObject obj, ThreadContext tc) {
        return decont(obj, tc).st.REPR.getClass().equals(P6int.class) ? 1 : 0;
    }
    public static long isnum(SixModelObject obj, ThreadContext tc) {
        return decont(obj, tc).st.REPR.getClass().equals(P6num.class) ? 1 : 0;
    }
    public static long isstr(SixModelObject obj, ThreadContext tc) {
        return decont(obj, tc).st.REPR.getClass().equals(P6str.class) ? 1 : 0;
    }

    /* Attribute operations. */
    public static SixModelObject getattr(SixModelObject obj, SixModelObject ch, String name, ThreadContext tc) {
        return obj.get_attribute_boxed(tc, decont(ch, tc), name, STable.NO_HINT);
    }
    public static long getattr_i(SixModelObject obj, SixModelObject ch, String name, ThreadContext tc) {
        obj.get_attribute_native(tc, decont(ch, tc), name, STable.NO_HINT);
        if (tc.native_type == ThreadContext.NATIVE_INT)
            return tc.native_i;
        else
            throw ExceptionHandling.dieInternal(tc, "Attribute '" + name + "' is not a native int");
    }
    public static double getattr_n(SixModelObject obj, SixModelObject ch, String name, ThreadContext tc) {
        obj.get_attribute_native(tc, decont(ch, tc), name, STable.NO_HINT);
        if (tc.native_type == ThreadContext.NATIVE_NUM)
            return tc.native_n;
        else
            throw ExceptionHandling.dieInternal(tc, "Attribute '" + name + "' is not a native num");
    }
    public static String getattr_s(SixModelObject obj, SixModelObject ch, String name, ThreadContext tc) {
        obj.get_attribute_native(tc, decont(ch, tc), name, STable.NO_HINT);
        if (tc.native_type == ThreadContext.NATIVE_STR)
            return tc.native_s;
        else
            throw ExceptionHandling.dieInternal(tc, "Attribute '" + name + "' is not a native str");
    }
    public static SixModelObject getattr(SixModelObject obj, SixModelObject ch, String name, long hint, ThreadContext tc) {
        return obj.get_attribute_boxed(tc, decont(ch, tc), name, hint);
    }
    public static long getattr_i(SixModelObject obj, SixModelObject ch, String name, long hint, ThreadContext tc) {
        obj.get_attribute_native(tc, decont(ch, tc), name, hint);
        if (tc.native_type == ThreadContext.NATIVE_INT)
            return tc.native_i;
        else
            throw ExceptionHandling.dieInternal(tc, "Attribute '" + name + "' is not a native int");
    }
    public static double getattr_n(SixModelObject obj, SixModelObject ch, String name, long hint, ThreadContext tc) {
        obj.get_attribute_native(tc, decont(ch, tc), name, hint);
        if (tc.native_type == ThreadContext.NATIVE_NUM)
            return tc.native_n;
        else
            throw ExceptionHandling.dieInternal(tc, "Attribute '" + name + "' is not a native num");
    }
    public static String getattr_s(SixModelObject obj, SixModelObject ch, String name, long hint, ThreadContext tc) {
        obj.get_attribute_native(tc, decont(ch, tc), name, hint);
        if (tc.native_type == ThreadContext.NATIVE_STR)
            return tc.native_s;
        else
            throw ExceptionHandling.dieInternal(tc, "Attribute '" + name + "' is not a native str");
    }
    public static SixModelObject bindattr(SixModelObject obj, SixModelObject ch, String name, SixModelObject value, ThreadContext tc) {
        obj.bind_attribute_boxed(tc, decont(ch, tc), name, STable.NO_HINT, value);
        if (obj.sc != null)
            scwbObject(tc, obj);
        return value;
    }
    public static long bindattr_i(SixModelObject obj, SixModelObject ch, String name, long value, ThreadContext tc) {
        tc.native_i = value;
        obj.bind_attribute_native(tc, decont(ch, tc), name, STable.NO_HINT);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "Attribute '" + name + "' is not a native int");
        if (obj.sc != null)
            scwbObject(tc, obj);
        return value;
    }
    public static double bindattr_n(SixModelObject obj, SixModelObject ch, String name, double value, ThreadContext tc) {
        tc.native_n = value;
        obj.bind_attribute_native(tc, decont(ch, tc), name, STable.NO_HINT);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "Attribute '" + name + "' is not a native num");
        if (obj.sc != null)
            scwbObject(tc, obj);
        return value;
    }
    public static String bindattr_s(SixModelObject obj, SixModelObject ch, String name, String value, ThreadContext tc) {
        tc.native_s = value;
        obj.bind_attribute_native(tc, decont(ch, tc), name, STable.NO_HINT);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "Attribute '" + name + "' is not a native str");
        if (obj.sc != null)
            scwbObject(tc, obj);
        return value;
    }
    public static SixModelObject bindattr(SixModelObject obj, SixModelObject ch, String name, SixModelObject value, long hint, ThreadContext tc) {
        obj.bind_attribute_boxed(tc, decont(ch, tc), name, hint, value);
        if (obj.sc != null)
            scwbObject(tc, obj);
        return value;
    }
    public static long bindattr_i(SixModelObject obj, SixModelObject ch, String name, long value, long hint, ThreadContext tc) {
        tc.native_i = value;
        obj.bind_attribute_native(tc, decont(ch, tc), name, hint);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "Attribute '" + name + "' is not a native int");
        if (obj.sc != null)
            scwbObject(tc, obj);
        return value;
    }
    public static double bindattr_n(SixModelObject obj, SixModelObject ch, String name, double value, long hint, ThreadContext tc) {
        tc.native_n = value;
        obj.bind_attribute_native(tc, decont(ch, tc), name, hint);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "Attribute '" + name + "' is not a native num");
        if (obj.sc != null)
            scwbObject(tc, obj);
        return value;
    }
    public static String bindattr_s(SixModelObject obj, SixModelObject ch, String name, String value, long hint, ThreadContext tc) {
        tc.native_s = value;
        obj.bind_attribute_native(tc, decont(ch, tc), name, hint);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "Attribute '" + name + "' is not a native str");
        if (obj.sc != null)
            scwbObject(tc, obj);
        return value;
    }
    public static long attrinited(SixModelObject obj, SixModelObject ch, String name, ThreadContext tc) {
        return obj.is_attribute_initialized(tc, decont(ch, tc), name, STable.NO_HINT);
    }
    public static long attrhintfor(SixModelObject ch, String name, ThreadContext tc) {
        ch = decont(ch, tc);
        return ch.st.REPR.hint_for(tc, ch.st, ch, name);
    }

    /* Attribute reference operations. */
    public static SixModelObject getattrref_i(SixModelObject obj, SixModelObject ch, String name, ThreadContext tc) {
        SixModelObject refType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.intAttrRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No int attribute reference type registered for current HLL");
        NativeRefInstanceAttribute ref = (NativeRefInstanceAttribute)refType.st.REPR.allocate(tc, refType.st);
        ref.obj = obj;
        ref.classHandle = decont(ch, tc);
        ref.name = name;
        ref.hint = STable.NO_HINT;
        return ref;
    }
    public static SixModelObject getattrref_n(SixModelObject obj, SixModelObject ch, String name, ThreadContext tc) {
        SixModelObject refType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.numAttrRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No num attribute reference type registered for current HLL");
        NativeRefInstanceAttribute ref = (NativeRefInstanceAttribute)refType.st.REPR.allocate(tc, refType.st);
        ref.obj = obj;
        ref.classHandle = decont(ch, tc);
        ref.name = name;
        ref.hint = STable.NO_HINT;
        return ref;
    }
    public static SixModelObject getattrref_s(SixModelObject obj, SixModelObject ch, String name, ThreadContext tc) {
        SixModelObject refType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strAttrRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No string attribute reference type registered for current HLL");
        NativeRefInstanceAttribute ref = (NativeRefInstanceAttribute)refType.st.REPR.allocate(tc, refType.st);
        ref.obj = obj;
        ref.classHandle = decont(ch, tc);
        ref.name = name;
        ref.hint = STable.NO_HINT;
        return ref;
    }

    /* Positional operations. */
    public static SixModelObject atpos(SixModelObject arr, long idx, ThreadContext tc) {
        return arr.at_pos_boxed(tc, idx);
    }
    public static long atpos_i(SixModelObject arr, long idx, ThreadContext tc) {
        arr.at_pos_native(tc, idx);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int array");
        return tc.native_i;
    }
    public static double atpos_n(SixModelObject arr, long idx, ThreadContext tc) {
        arr.at_pos_native(tc, idx);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num array");
        return tc.native_n;
    }
    public static String atpos_s(SixModelObject arr, long idx, ThreadContext tc) {
        arr.at_pos_native(tc, idx);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str array");
        return tc.native_s;
    }
    public static SixModelObject bindpos(SixModelObject arr, long idx, SixModelObject value, ThreadContext tc) {
        arr.bind_pos_boxed(tc, idx, value);
        if (arr.sc != null) { /*new Exception("bindpos").printStackTrace(); */
            scwbObject(tc, arr); }
        return value;
    }
    public static long bindpos_i(SixModelObject arr, long idx, long value, ThreadContext tc) {
        tc.native_i = value;
        arr.bind_pos_native(tc, idx);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int array");
        if (arr.sc != null) { /*new Exception("bindpos_i").printStackTrace(); */
            scwbObject(tc, arr); }
        return value;
    }
    public static double bindpos_n(SixModelObject arr, long idx, double value, ThreadContext tc) {
        tc.native_n = value;
        arr.bind_pos_native(tc, idx);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num array");
        if (arr.sc != null) { /*new Exception("bindpos_n").printStackTrace(); */
            scwbObject(tc, arr); }
        return value;
    }
    public static String bindpos_s(SixModelObject arr, long idx, String value, ThreadContext tc) {
        tc.native_s = value;
        arr.bind_pos_native(tc, idx);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str array");
        if (arr.sc != null) { /*new Exception("bindpos_s").printStackTrace(); */
            scwbObject(tc, arr); }
        return value;
    }
    public static SixModelObject push(SixModelObject arr, SixModelObject value, ThreadContext tc) {
        arr.push_boxed(tc, value);
        if (arr.sc != null)
            scwbObject(tc, arr);
        return value;
    }
    public static long push_i(SixModelObject arr, long value, ThreadContext tc) {
        tc.native_i = value;
        arr.push_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int array");
        if (arr.sc != null)
            scwbObject(tc, arr);
        return value;
    }
    public static double push_n(SixModelObject arr, double value, ThreadContext tc) {
        tc.native_n = value;
        arr.push_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num array");
        if (arr.sc != null)
            scwbObject(tc, arr);
        return value;
    }
    public static String push_s(SixModelObject arr, String value, ThreadContext tc) {
        tc.native_s = value;
        arr.push_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str array");
        if (arr.sc != null)
            scwbObject(tc, arr);
        return value;
    }
    public static SixModelObject pop(SixModelObject arr, ThreadContext tc) {
        return arr.pop_boxed(tc);
    }
    public static long pop_i(SixModelObject arr, ThreadContext tc) {
        arr.pop_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int array");
        return tc.native_i;
    }
    public static double pop_n(SixModelObject arr, ThreadContext tc) {
        arr.pop_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num array");
        return tc.native_n;
    }
    public static String pop_s(SixModelObject arr, ThreadContext tc) {
        arr.pop_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str array");
        return tc.native_s;
    }
    public static SixModelObject unshift(SixModelObject arr, SixModelObject value, ThreadContext tc) {
        arr.unshift_boxed(tc, value);
        return value;
    }
    public static long unshift_i(SixModelObject arr, long value, ThreadContext tc) {
        tc.native_i = value;
        arr.unshift_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int array");
        return value;
    }
    public static double unshift_n(SixModelObject arr, double value, ThreadContext tc) {
        tc.native_n = value;
        arr.unshift_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num array");
        return value;
    }
    public static String unshift_s(SixModelObject arr, String value, ThreadContext tc) {
        tc.native_s = value;
        arr.unshift_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str array");
        return value;
    }
    public static SixModelObject shift(SixModelObject arr, ThreadContext tc) {
        return arr.shift_boxed(tc);
    }
    public static long shift_i(SixModelObject arr, ThreadContext tc) {
        arr.shift_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int array");
        return tc.native_i;
    }
    public static double shift_n(SixModelObject arr, ThreadContext tc) {
        arr.shift_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num array");
        return tc.native_n;
    }
    public static String shift_s(SixModelObject arr, ThreadContext tc) {
        arr.shift_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str array");
        return tc.native_s;
    }
    public static SixModelObject splice(SixModelObject arr, SixModelObject from, long offset, long count, ThreadContext tc) {
        arr.splice(tc, from, offset, count);
        return arr;
    }

    /* Multi-dimensional positional access ops. */
    private static long[] smoToLongArray(ThreadContext tc, SixModelObject arr) {
        long[] res = new long[(int)arr.elems(tc)];
        for (int i = 0; i < res.length; i++) {
            arr.at_pos_native(tc, i);
            res[i] = tc.native_i;
        }
        return res;
    }
    public static SixModelObject atpos2d_o(SixModelObject arr, long idx1, long idx2, ThreadContext tc) {
        return arr.at_pos_multidim_boxed(tc, new long[] { idx1, idx2 });
    }
    public static long atpos2d_i(SixModelObject arr, long idx1, long idx2, ThreadContext tc) {
        arr.at_pos_multidim_native(tc, new long[] { idx1, idx2 });
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int array");
        return tc.native_i;
    }
    public static double atpos2d_n(SixModelObject arr, long idx1, long idx2, ThreadContext tc) {
        arr.at_pos_multidim_native(tc, new long[] { idx1, idx2 });
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num array");
        return tc.native_n;
    }
    public static String atpos2d_s(SixModelObject arr, long idx1, long idx2, ThreadContext tc) {
        arr.at_pos_multidim_native(tc, new long[] { idx1, idx2 });
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str array");
        return tc.native_s;
    }
    public static SixModelObject atpos3d_o(SixModelObject arr, long idx1, long idx2, long idx3, ThreadContext tc) {
        return arr.at_pos_multidim_boxed(tc, new long[] { idx1, idx2, idx3 });
    }
    public static long atpos3d_i(SixModelObject arr, long idx1, long idx2, long idx3, ThreadContext tc) {
        arr.at_pos_multidim_native(tc, new long[] { idx1, idx2, idx3 });
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int array");
        return tc.native_i;
    }
    public static double atpos3d_n(SixModelObject arr, long idx1, long idx2, long idx3, ThreadContext tc) {
        arr.at_pos_multidim_native(tc, new long[] { idx1, idx2, idx3 });
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num array");
        return tc.native_n;
    }
    public static String atpos3d_s(SixModelObject arr, long idx1, long idx2, long idx3, ThreadContext tc) {
        arr.at_pos_multidim_native(tc, new long[] { idx1, idx2, idx3 });
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str array");
        return tc.native_s;
    }
    public static SixModelObject atposnd_o(SixModelObject arr, SixModelObject indices, ThreadContext tc) {
        return arr.at_pos_multidim_boxed(tc, smoToLongArray(tc, indices));
    }
    public static long atposnd_i(SixModelObject arr, SixModelObject indices, ThreadContext tc) {
        arr.at_pos_multidim_native(tc, smoToLongArray(tc, indices));
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int array");
        return tc.native_i;
    }
    public static double atposnd_n(SixModelObject arr, SixModelObject indices, ThreadContext tc) {
        arr.at_pos_multidim_native(tc, smoToLongArray(tc, indices));
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num array");
        return tc.native_n;
    }
    public static String atposnd_s(SixModelObject arr, SixModelObject indices, ThreadContext tc) {
        arr.at_pos_multidim_native(tc, smoToLongArray(tc, indices));
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str array");
        return tc.native_s;
    }
    public static SixModelObject bindpos2d_o(SixModelObject arr, long idx1, long idx2, SixModelObject value, ThreadContext tc) {
        arr.bind_pos_multidim_boxed(tc, new long[] { idx1, idx2 }, value);
        return value;
    }
    public static long bindpos2d_i(SixModelObject arr, long idx1, long idx2, long value, ThreadContext tc) {
        tc.native_i = value;
        arr.bind_pos_multidim_native(tc, new long[] { idx1, idx2 });
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int array");
        return value;
    }
    public static double bindpos2d_n(SixModelObject arr, long idx1, long idx2, double value, ThreadContext tc) {
        tc.native_n = value;
        arr.bind_pos_multidim_native(tc, new long[] { idx1, idx2 });
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num array");
        return value;
    }
    public static String bindpos2d_s(SixModelObject arr, long idx1, long idx2, String value, ThreadContext tc) {
        tc.native_s = value;
        arr.bind_pos_multidim_native(tc, new long[] { idx1, idx2 });
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str array");
        return value;
    }
    public static SixModelObject bindpos3d_o(SixModelObject arr, long idx1, long idx2, long idx3, SixModelObject value, ThreadContext tc) {
        arr.bind_pos_multidim_boxed(tc, new long[] { idx1, idx2, idx3 }, value);
        return value;
    }
    public static long bindpos3d_i(SixModelObject arr, long idx1, long idx2, long idx3, long value, ThreadContext tc) {
        tc.native_i = value;
        arr.bind_pos_multidim_native(tc, new long[] { idx1, idx2, idx3 });
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int array");
        return value;
    }
    public static double bindpos3d_n(SixModelObject arr, long idx1, long idx2, long idx3, double value, ThreadContext tc) {
        tc.native_n = value;
        arr.bind_pos_multidim_native(tc, new long[] { idx1, idx2, idx3 });
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num array");
        return value;
    }
    public static String bindpos3d_s(SixModelObject arr, long idx1, long idx2, long idx3, String value, ThreadContext tc) {
        tc.native_s = value;
        arr.bind_pos_multidim_native(tc, new long[] { idx1, idx2, idx3 });
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str array");
        return value;
    }
    public static SixModelObject bindposnd_o(SixModelObject arr, SixModelObject indices, SixModelObject value, ThreadContext tc) {
        long[] jIndices = smoToLongArray(tc, indices);
        arr.bind_pos_multidim_boxed(tc, jIndices, value);
        return value;
    }
    public static long bindposnd_i(SixModelObject arr, SixModelObject indices, long value, ThreadContext tc) {
        long[] jIndices = smoToLongArray(tc, indices);
        tc.native_i = value;
        arr.bind_pos_multidim_native(tc, jIndices);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int array");
        return value;
    }
    public static double bindposnd_n(SixModelObject arr, SixModelObject indices, double value, ThreadContext tc) {
        long[] jIndices = smoToLongArray(tc, indices);
        tc.native_n = value;
        arr.bind_pos_multidim_native(tc, jIndices);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num array");
        return value;
    }
    public static String bindposnd_s(SixModelObject arr, SixModelObject indices, String value, ThreadContext tc) {
        long[] jIndices = smoToLongArray(tc, indices);
        tc.native_s = value;
        arr.bind_pos_multidim_native(tc, jIndices);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str array");
        return value;
    }

    /* Positional reference operations. */
    public static SixModelObject atposref_i(SixModelObject obj, long idx, ThreadContext tc) {
        SixModelObject refType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.intPosRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No int positional reference type registered for current HLL");
        NativeRefInstancePositional ref = (NativeRefInstancePositional)refType.st.REPR.allocate(tc, refType.st);
        ref.obj = obj;
        ref.idx = idx;
        return ref;
    }
    public static SixModelObject atposref_n(SixModelObject obj, long idx, ThreadContext tc) {
        SixModelObject refType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.numPosRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No num positional reference type registered for current HLL");
        NativeRefInstancePositional ref = (NativeRefInstancePositional)refType.st.REPR.allocate(tc, refType.st);
        ref.obj = obj;
        ref.idx = idx;
        return ref;
    }
    public static SixModelObject atposref_s(SixModelObject obj, long idx, ThreadContext tc) {
        SixModelObject refType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strPosRef;
        if (refType == null)
            throw ExceptionHandling.dieInternal(tc,
                "No string positional reference type registered for current HLL");
        NativeRefInstancePositional ref = (NativeRefInstancePositional)refType.st.REPR.allocate(tc, refType.st);
        ref.obj = obj;
        ref.idx = idx;
        return ref;
    }

    /* Associative operations. */
    public static SixModelObject atkey(SixModelObject hash, String key, ThreadContext tc) {
        return hash.at_key_boxed(tc, key);
    }
    public static long atkey_i(SixModelObject hash, String key, ThreadContext tc) {
        hash.at_key_native(tc, key);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int hash");
        return tc.native_i;
    }
    public static double atkey_n(SixModelObject hash, String key, ThreadContext tc) {
        hash.at_key_native(tc, key);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num hash");
        return tc.native_n;
    }
    public static String atkey_s(SixModelObject hash, String key, ThreadContext tc) {
        hash.at_key_native(tc, key);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str hash");
        return tc.native_s;
    }
    public static SixModelObject bindkey(SixModelObject hash, String key, SixModelObject value, ThreadContext tc) {
        hash.bind_key_boxed(tc, key, value);
        if (hash.sc != null)
            scwbObject(tc, hash);
        return value;
    }
    public static long bindkey_i(SixModelObject hash, String key, long value, ThreadContext tc) {
        tc.native_i = value;
        hash.bind_key_native(tc, key);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int hash");
        if (hash.sc != null)
            scwbObject(tc, hash);
        return value;
    }
    public static double bindkey_n(SixModelObject hash, String key, double value, ThreadContext tc) {
        tc.native_n = value;
        hash.bind_key_native(tc, key);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num hash");
        if (hash.sc != null)
            scwbObject(tc, hash);
        return value;
    }
    public static String bindkey_s(SixModelObject hash, String key, String value, ThreadContext tc) {
        tc.native_s = value;
        hash.bind_key_native(tc, key);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str hash");
        if (hash.sc != null)
            scwbObject(tc, hash);
        return value;
    }
    public static long existskey(SixModelObject hash, String key, ThreadContext tc) {
        return hash.exists_key(tc, key);
    }
    public static SixModelObject deletekey(SixModelObject hash, String key, ThreadContext tc) {
        hash.delete_key(tc, key);
        if (hash.sc != null)
            scwbObject(tc, hash);
        return hash;
    }

    /* Terms */
    public static long time_i() {
        return (long) (System.currentTimeMillis() / 1000);
    }

    public static double time_n() {
        return System.currentTimeMillis() / 1000.0;
    }

    /* Aggregate operations. */
    public static long elems(SixModelObject agg, ThreadContext tc) {
        return agg.elems(tc);
    }
    public static SixModelObject setelems(SixModelObject agg, long elems, ThreadContext tc) {
        agg.set_elems(tc, elems);
        return agg;
    }
    public static long numdimensions(SixModelObject agg, ThreadContext tc) {
        return agg.dimensions(tc).length;
    }
    public static SixModelObject dimensions(SixModelObject agg, ThreadContext tc) {
        long[] dims = agg.dimensions(tc);
        SixModelObject BOOTIntArray = tc.gc.BOOTIntArray;
        SixModelObject dimRes = BOOTIntArray.st.REPR.allocate(tc, BOOTIntArray.st);
        for (int i = 0; i < dims.length; i++) {
            tc.native_i = dims[i];
            dimRes.bind_pos_native(tc, i);
        }
        return dimRes;
    }
    public static SixModelObject setdimensions(SixModelObject agg, SixModelObject dims, ThreadContext tc) {
        agg.set_dimensions(tc, smoToLongArray(tc, dims));
        return agg;
    }
    public static long existspos(SixModelObject agg, long key, ThreadContext tc) {
        return agg.exists_pos(tc, key);
    }
    public static long islist(SixModelObject obj, ThreadContext tc) {
        return obj != null && obj.st.REPR instanceof VMArray ? 1 : 0;
    }
    public static long ishash(SixModelObject obj, ThreadContext tc) {
        return obj != null && obj.st.REPR instanceof VMHash ? 1 : 0;
    }

    /* Parametricity operations. */
    public static SixModelObject setparameterizer(SixModelObject type, SixModelObject parameterizer, ThreadContext tc) {
        STable st = type.st;

        /* Ensure that the type is not already parametric or parameterized. */
        if (st.parametricity != null) {
            if (st.parametricity instanceof ParametricType)
                ExceptionHandling.dieInternal(tc, "This type is already parametric");
            if (st.parametricity instanceof ParameterizedType)
                ExceptionHandling.dieInternal(tc, "Cannot make a parameterized type also be parametric");
        }

        /* Set up the type as parameterized. */
        ParametricType pt = new ParametricType();
        pt.parameterizer = parameterizer;
        pt.lookup = new ArrayList<Map.Entry<SixModelObject, SixModelObject>>();
        st.parametricity = pt;

        return type;
    }
    public static SixModelObject parameterizetype(SixModelObject type, SixModelObject params, ThreadContext tc) {
        /* Ensure we have a parametric type. */
        STable st = type.st;
        if (!(st.parametricity instanceof ParametricType))
            ExceptionHandling.dieInternal(tc, "This type is not parametric");

        /* Do a lookup in the parameterizations array. */
        List<Map.Entry<SixModelObject, SixModelObject>> lookup = ((ParametricType)st.parametricity).lookup;
        int numLookups = lookup.size();
        long paramsElems = params.elems(tc);
        for (int i = 0; i < numLookups; i++) {
            Map.Entry<SixModelObject, SixModelObject> entry = lookup.get(i);
            SixModelObject compare = entry.getKey();
            long comapreElems = compare.elems(tc);
            if (paramsElems == comapreElems) {
                boolean match = true;
                for (long j = 0; j < paramsElems; j++) {
                    SixModelObject want = params.at_pos_boxed(tc, j);
                    SixModelObject got = compare.at_pos_boxed(tc, j);
                    /* XXX More cases to consider here. */
                    if (want != got) {
                        match = false;
                        break;
                    }
                }
                if (match)
                    return entry.getValue();
            }
        }

        /* It wasn't found; run parameterizer. */
        invokeDirect(tc, ((ParametricType)st.parametricity).parameterizer,
            parameterizeCallSite, new Object[] { st.WHAT, params });
        SixModelObject result = result_o(tc.curFrame);

        /* Mark parametric and stash required data. */
        STable newSTable = result.st;
        ParameterizedType pt = new ParameterizedType();
        pt.parametricType = type;
        pt.parameters = params;
        newSTable.parametricity = pt;

        /* Add to lookup table. */
        /* XXX handle possible race. */
        lookup.add(new AbstractMap.SimpleEntry<>(params, result));

        return result;
    }
    public static SixModelObject typeparameterized(SixModelObject type, ThreadContext tc) {
        STable st = type.st;
        return st.parametricity instanceof ParameterizedType
             ? ((ParameterizedType)st.parametricity).parametricType
             : null;
    }
    public static SixModelObject typeparameters(SixModelObject type, ThreadContext tc) {
        STable st = type.st;
        if (!(st.parametricity instanceof ParameterizedType))
            ExceptionHandling.dieInternal(tc, "This type is not parameterized");
        return ((ParameterizedType)st.parametricity).parameters;
    }
    public static SixModelObject typeparameterat(SixModelObject type, long idx, ThreadContext tc) {
        return typeparameters(type, tc).at_pos_boxed(tc, idx);
    }

    /* Container operations. */
    public static SixModelObject setcontspec(SixModelObject obj, String confname, SixModelObject confarg, ThreadContext tc) {
        if (obj.st.ContainerSpec != null)
            ExceptionHandling.dieInternal(tc, "Cannot change a type's container specification");

        ContainerConfigurer cc = tc.gc.contConfigs.get(confname);
        if (cc == null)
            ExceptionHandling.dieInternal(tc, "No such container spec " + confname);
        cc.setContainerSpec(tc, obj.st);
        cc.configureContainerSpec(tc, obj.st, confarg);

        return obj;
    }
    public static long iscont(SixModelObject obj) {
        return obj == null || obj.st.ContainerSpec == null ? 0 : 1;
    }
    public static long isrwcont(SixModelObject obj, ThreadContext tc) {
        if (obj != null) {
            ContainerSpec cs = obj.st.ContainerSpec;
            if (cs != null && cs.canStore(tc, obj))
                return 1;
        }
        return 0;
    }
    private static short getContainerPrimitive(SixModelObject obj) {
        if (obj != null && !(obj instanceof TypeObject)) {
            ContainerSpec cs = obj.st.ContainerSpec;
            if (cs instanceof NativeRefContainerSpec)
                return ((NativeRefREPRData)(obj.st.REPRData)).primitive_type;
        }
        return StorageSpec.BP_NONE;
    }
    public static long iscont_i(SixModelObject obj) {
        return getContainerPrimitive(obj) == StorageSpec.BP_INT ? 1 : 0;
    }
    public static long iscont_n(SixModelObject obj) {
        return getContainerPrimitive(obj) == StorageSpec.BP_NUM ? 1 : 0;
    }
    public static long iscont_s(SixModelObject obj) {
        return getContainerPrimitive(obj) == StorageSpec.BP_STR ? 1 : 0;
    }
    public static SixModelObject decont(SixModelObject obj, ThreadContext tc) {
        if (obj == null)
            return null;
        ContainerSpec cs = obj.st.ContainerSpec;
        return cs == null || obj instanceof TypeObject ? obj : cs.fetch(tc, obj);
    }
    public static long decont_i(SixModelObject obj, ThreadContext tc) {
        if (!(obj instanceof TypeObject)) {
            ContainerSpec cs = obj.st.ContainerSpec;
            if (cs != null)
                return cs.fetch_i(tc, obj);
        }
        return obj.get_int(tc);
    }
    public static double decont_n(SixModelObject obj, ThreadContext tc) {
        if (!(obj instanceof TypeObject)) {
            ContainerSpec cs = obj.st.ContainerSpec;
            if (cs != null)
                return cs.fetch_n(tc, obj);
        }
        return obj.get_num(tc);
    }
    public static String decont_s(SixModelObject obj, ThreadContext tc) {
        if (!(obj instanceof TypeObject)) {
            ContainerSpec cs = obj.st.ContainerSpec;
            if (cs != null)
                return cs.fetch_s(tc, obj);
        }
        return obj.get_str(tc);
    }
    public static SixModelObject assign(SixModelObject cont, SixModelObject value, ThreadContext tc) {
        ContainerSpec cs = cont.st.ContainerSpec;
        if (cs != null)
            cs.store(tc, cont, decont(value, tc));
        else
            ExceptionHandling.dieInternal(tc, "Cannot assign to an immutable value");
        return cont;
    }
    public static SixModelObject assign_i(SixModelObject cont, long value, ThreadContext tc) {
        ContainerSpec cs = cont.st.ContainerSpec;
        if (cs != null)
            cs.store_i(tc, cont, value);
        else
            ExceptionHandling.dieInternal(tc, "Cannot assign to an immutable value");
        return cont;
    }
    public static SixModelObject assign_n(SixModelObject cont, double value, ThreadContext tc) {
        ContainerSpec cs = cont.st.ContainerSpec;
        if (cs != null)
            cs.store_n(tc, cont, value);
        else
            ExceptionHandling.dieInternal(tc, "Cannot assign to an immutable value");
        return cont;
    }
    public static SixModelObject assign_s(SixModelObject cont, String value, ThreadContext tc) {
        ContainerSpec cs = cont.st.ContainerSpec;
        if (cs != null)
            cs.store_s(tc, cont, value);
        else
            ExceptionHandling.dieInternal(tc, "Cannot assign to an immutable value");
        return cont;
    }
    public static SixModelObject assignunchecked(SixModelObject cont, SixModelObject value, ThreadContext tc) {
        ContainerSpec cs = cont.st.ContainerSpec;
        if (cs != null)
            cs.storeUnchecked(tc, cont, decont(value, tc));
        else
            ExceptionHandling.dieInternal(tc, "Cannot assign to an immutable value");
        return cont;
    }

    /* Iteration. */
    public static SixModelObject iter(SixModelObject agg, ThreadContext tc) {
        if (agg.st.REPR instanceof VMArray) {
            SixModelObject iterType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.arrayIteratorType;
            VMIterInstance iter = (VMIterInstance)iterType.st.REPR.allocate(tc, iterType.st);
            iter.target = agg;
            iter.idx = -1;
            iter.limit = agg.elems(tc);
            switch (agg.st.REPR.get_value_storage_spec(tc, agg.st).boxed_primitive) {
                case StorageSpec.BP_INT:
                    iter.iterMode = VMIterInstance.MODE_ARRAY_INT;
                    break;
                case StorageSpec.BP_NUM:
                    iter.iterMode = VMIterInstance.MODE_ARRAY_NUM;
                    break;
                case StorageSpec.BP_STR:
                    iter.iterMode = VMIterInstance.MODE_ARRAY_STR;
                    break;
                default:
                    iter.iterMode = VMIterInstance.MODE_ARRAY;
            }
            return iter;
        }
        else if (agg.st.REPR instanceof VMHash) {
            SixModelObject iterType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.hashIteratorType;
            VMIterInstance iter = (VMIterInstance)iterType.st.REPR.allocate(tc, iterType.st);
            iter.target = agg;
            iter.hashKeyIter = ((HashMap)((VMHashInstance)agg).storage.clone()).keySet().iterator();
            iter.iterMode = VMIterInstance.MODE_HASH;
            return iter;
        }
        else if (agg.st.REPR instanceof ContextRef) {
            /* Fake up a VMHash and then get its iterator. */
            SixModelObject BOOTHash = tc.gc.BOOTHash;
            SixModelObject hash = BOOTHash.st.REPR.allocate(tc, BOOTHash.st);

            /* TODO: don't cheat and just shove the nulls in. It's enough for
             * the initial use case of this, though.
             */
            StaticCodeInfo sci = ((ContextRefInstance)agg).context.codeRef.staticInfo;
            if (sci.oLexicalNames != null) {
                for (int i = 0; i < sci.oLexicalNames.length; i++)
                    hash.bind_key_boxed(tc, sci.oLexicalNames[i], null);
            }
            if (sci.iLexicalNames != null) {
                for (int i = 0; i < sci.iLexicalNames.length; i++)
                    hash.bind_key_boxed(tc, sci.iLexicalNames[i], null);
            }
            if (sci.nLexicalNames != null) {
                for (int i = 0; i < sci.nLexicalNames.length; i++)
                    hash.bind_key_boxed(tc, sci.nLexicalNames[i], null);
            }
            if (sci.sLexicalNames != null) {
                for (int i = 0; i < sci.sLexicalNames.length; i++)
                    hash.bind_key_boxed(tc, sci.sLexicalNames[i], null);
            }

            return iter(hash, tc);
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "Can only use iter with representation VMArray and VMHash");
        }
    }
    public static String iterkey_s(SixModelObject obj, ThreadContext tc) {
        return ((VMIterInstance)obj).key_s(tc);
    }
    public static SixModelObject iterval(SixModelObject obj, ThreadContext tc) {
        return ((VMIterInstance)obj).val(tc);
    }

    /* Boolification operations. */
    public static SixModelObject setboolspec(SixModelObject obj, long mode, SixModelObject method, ThreadContext tc) {
        BoolificationSpec bs = new BoolificationSpec();
        bs.Mode = (int)mode;
        bs.Method = method;
        obj.st.BoolificationSpec = bs;
        return obj;
    }
    public static long istrue(SixModelObject obj, ThreadContext tc) {
        obj = decont(obj, tc);
        BoolificationSpec bs = obj.st.BoolificationSpec;
        switch (bs == null ? BoolificationSpec.MODE_NOT_TYPE_OBJECT : bs.Mode) {
        case BoolificationSpec.MODE_CALL_METHOD:
            invokeDirect(tc, bs.Method, invocantCallSite, new Object[] { obj });
            return istrue(result_o(tc.curFrame), tc);
        case BoolificationSpec.MODE_UNBOX_INT:
            return obj instanceof TypeObject || obj.get_int(tc) == 0 ? 0 : 1;
        case BoolificationSpec.MODE_UNBOX_NUM:
            return obj instanceof TypeObject || obj.get_num(tc) == 0.0 ? 0 : 1;
        case BoolificationSpec.MODE_UNBOX_STR_NOT_EMPTY:
            return obj instanceof TypeObject || obj.get_str(tc).equals("") ? 0 : 1;
        case BoolificationSpec.MODE_UNBOX_STR_NOT_EMPTY_OR_ZERO:
            if (obj instanceof TypeObject)
                return 0;
            String str = obj.get_str(tc);
            return str == null || str.equals("") || str.equals("0") ? 0 : 1;
        case BoolificationSpec.MODE_NOT_TYPE_OBJECT:
            return obj instanceof TypeObject ? 0 : 1;
        case BoolificationSpec.MODE_BIGINT:
            return obj instanceof TypeObject || getBI(tc, obj).compareTo(BigInteger.ZERO) == 0 ? 0 : 1;
        case BoolificationSpec.MODE_ITER:
            return ((VMIterInstance)obj).boolify() ? 1 : 0;
        case BoolificationSpec.MODE_HAS_ELEMS:
            return obj.elems(tc) == 0 ? 0 : 1;
        default:
            throw ExceptionHandling.dieInternal(tc, "Invalid boolification spec mode used");
        }
    }
    public static long isfalse(SixModelObject obj, ThreadContext tc) {
        return istrue(obj, tc) == 0 ? 1 : 0;
    }
    public static long istrue_s(String str) {
        return str == null || str.equals("") ? 0 : 1;
    }
    public static long isfalse_s(String str) {
        return str == null || str.equals("") ? 1 : 0;
    }
    public static long not_i(long v) {
        return v == 0 ? 1 : 0;
    }

    /* Smart coercions. */
    public static String smart_stringify(SixModelObject obj, ThreadContext tc) {
        obj = decont(obj, tc);

        // If it can unbox to a string, that wins right off.
        StorageSpec ss = obj.st.REPR.get_storage_spec(tc, obj.st);
        if ((ss.can_box & StorageSpec.CAN_BOX_STR) != 0 && !(obj instanceof TypeObject))
            return obj.get_str(tc);

        // If it has a Str method, that wins.
        // We could put this in the generated code, but it's here to avoid the
        // bulk.
        SixModelObject numMeth = obj.st.MethodCache == null ? null : obj.st.MethodCache.get("Str");
        if (numMeth != null) {
            invokeDirect(tc, numMeth, invocantCallSite, new Object[] { obj });
            return result_s(tc.curFrame);
        }

        // If it's a type object, empty string.
        if (obj instanceof TypeObject)
            return "";

        // See if it can unbox to another primitive we can stringify.
        if ((ss.can_box & StorageSpec.CAN_BOX_INT) != 0)
            return coerce_i2s(obj.get_int(tc));
        if ((ss.can_box & StorageSpec.CAN_BOX_NUM) != 0)
            return coerce_n2s(obj.get_num(tc));

        // If it's an exception, take the message.
        if (obj instanceof VMExceptionInstance) {
            String msg = ((VMExceptionInstance)obj).message;
            return msg == null ? "Died" : msg;
        }

        // If anything else, we can't do it.
        throw ExceptionHandling.dieInternal(tc, "Cannot stringify this");
    }
    public static double smart_numify(SixModelObject obj, ThreadContext tc) {
        obj = decont(obj, tc);

        // If it can unbox as an int or a num, that wins right off.
        StorageSpec ss = obj.st.REPR.get_storage_spec(tc, obj.st);
        if ((ss.can_box & StorageSpec.CAN_BOX_INT) != 0)
            return (double)obj.get_int(tc);
        if ((ss.can_box & StorageSpec.CAN_BOX_NUM) != 0)
            return obj.get_num(tc);

        // Otherwise, look for a Num method.
        SixModelObject numMeth = obj.st.MethodCache.get("Num");
        if (numMeth != null) {
            invokeDirect(tc, numMeth, invocantCallSite, new Object[] { obj });
            return result_n(tc.curFrame);
        }

        // If it's a type object, empty string.
        if (obj instanceof TypeObject)
            return 0.0;

        // See if it can unbox to a primitive we can numify.
        if ((ss.can_box & StorageSpec.CAN_BOX_STR) != 0)
            return coerce_s2n(obj.get_str(tc));
        if (obj instanceof VMArrayInstance || obj instanceof VMHashInstance)
            return obj.elems(tc);

        // If anything else, we can't do it.
        throw ExceptionHandling.dieInternal(tc, "Cannot numify this");
    }

    /* Math operations. */
    public static double sec_n(double val) {
        return 1 / Math.cos(val);
    }

    public static double asec_n(double val) {
        return Math.acos(1 / val);
    }

    public static double sech_n(double val) {
        return 1 / Math.cosh(val);
    }

    public static long gcd_i(long valA, long valB) {
        return BigInteger.valueOf(valA).gcd(BigInteger.valueOf(valB))
                .longValue();
    }

    public static SixModelObject gcd_I(SixModelObject a, SixModelObject b, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a).gcd(getBI(tc, b)));
    }

    public static long lcm_i(long valA, long valB) {
        return valA * (valB / gcd_i(valA, valB));
    }

    public static SixModelObject lcm_I(SixModelObject a, SixModelObject b, SixModelObject type, ThreadContext tc) {
        BigInteger valA = getBI(tc, a);
        BigInteger valB = getBI(tc, b);
        BigInteger gcd = valA.gcd(valB);
        return makeBI(tc, type, valA.multiply(valB).divide(gcd).abs());
    }

    public static long isnanorinf(double n) {
        return Double.isInfinite(n) || Double.isNaN(n) ? 1 : 0;
    }

    public static double inf() {
        return Double.POSITIVE_INFINITY;
    }

    public static double neginf() {
        return Double.NEGATIVE_INFINITY ;
    }

    public static double nan() {
        return Double.NaN;
    }

    public static SixModelObject radix(long radix, String str, long zpos, long flags, ThreadContext tc) {
        double zvalue = 0.0;
        double zbase = 1.0;
        int chars = str.length();
        double value = zvalue;
        double base = zbase;
        long pos = -1;
        char ch;
        boolean neg = false;

        if (radix > 36) {
            throw ExceptionHandling.dieInternal(tc, "Cannot convert radix of " + radix + " (max 36)");
        }

        ch = (zpos < chars) ? str.charAt((int)zpos) : 0;
        if ((flags & 0x02) != 0 && (ch == '+' || ch == '-')) {
            neg = (ch == '-');
            zpos++;
            ch = (zpos < chars) ? str.charAt((int)zpos) : 0;
        }
        while (zpos < chars) {
            if (ch >= '0' && ch <= '9') ch = (char)(ch - '0');
            else if (ch >= 'a' && ch <= 'z') ch = (char)(ch - 'a' + 10);
            else if (ch >= 'A' && ch <= 'Z') ch = (char)(ch - 'A' + 10);
            else break;
            if (ch >= radix) break;
            zvalue = zvalue * radix + ch;
            zbase = zbase * radix;
            zpos++; pos = zpos;
            if (ch != 0 || (flags & 0x04) == 0) { value=zvalue; base=zbase; }
            if (zpos >= chars) break;
            ch = str.charAt((int)zpos);
            if (ch != '_') continue;
            zpos++;
            if (zpos >= chars) break;
            ch = str.charAt((int)zpos);
        }

        if (neg || (flags & 0x01) != 0) { value = -value; }

        HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
        SixModelObject result = hllConfig.slurpyArrayType.st.REPR.allocate(tc,
                hllConfig.slurpyArrayType.st);

        result.push_boxed(tc, box_n(value, hllConfig.numBoxType, tc));
        result.push_boxed(tc, box_n(base, hllConfig.numBoxType, tc));
        result.push_boxed(tc, box_n(pos, hllConfig.numBoxType, tc));

        return result;
    }

    public static double rand_n(double n, ThreadContext tc) {
        return n * tc.random.nextDouble();
    }

    public static long srand(long n, ThreadContext tc) {
        tc.random.setSeed(n);
        return n;
    }

    /* String operations. */
    public static long chars(String val) {
        return val.length();
    }

    public static String lc(String val) {
        return val.toLowerCase();
    }

    public static String uc(String val) {
        return val.toUpperCase();
    }

    public static String x(String val, long count) {
        StringBuilder retval = new StringBuilder();
        for (long ii = 1; ii <= count; ii++) {
            retval.append(val);
        }
        return retval.toString();
    }

    public static String concat(String valA, String valB) {
        return valA + valB;
    }

    public static String chr(long ord, ThreadContext tc) {
        if (ord < 0)
            throw ExceptionHandling.dieInternal(tc, "chr codepoint cannot be negative");

        return (new StringBuffer()).append(Character.toChars((int)ord)).toString();
    }

    public static String join(String delimiter, SixModelObject arr, ThreadContext tc) {
        final int prim = arr.st.REPR.get_value_storage_spec(tc, arr.st).boxed_primitive;
        if (prim != StorageSpec.BP_NONE && prim != StorageSpec.BP_STR)
            ExceptionHandling.dieInternal(tc, "Unsupported native array type in join");

        final int numElems = (int) arr.elems(tc);
        if (numElems == 0)
            return "";

        String[] strings = new String[numElems];
        int totalLength = delimiter.length() * (numElems - 1);

        if (prim == StorageSpec.BP_STR) {
            for (int i = 0; i < numElems; ++i) {
                arr.at_pos_native(tc, i);
                strings[i] = tc.native_s;
                totalLength += tc.native_s.length();
            }
        } else {
            for (int i = 0; i < numElems; ++i) {
                String s = arr.at_pos_boxed(tc, i).get_str(tc);
                strings[i] = s;
                totalLength += s.length();
            }
        }

        char[] chars = new char[totalLength];
        strings[0].getChars(0, strings[0].length(), chars, 0);

        int pos = strings[0].length();
        for(int i = 1; i < strings.length; ++i) {
            delimiter.getChars(0, delimiter.length(), chars, pos);
            pos += delimiter.length();

            strings[i].getChars(0, strings[i].length(), chars, pos);
            pos += strings[i].length();
        }

        return new String(chars);
    }

    public static SixModelObject split(String delimiter, String string, ThreadContext tc) {

        if (string == null || delimiter == null) {
            return null;
        }

        HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
        SixModelObject arrayType = hllConfig.slurpyArrayType;
        SixModelObject array = arrayType.st.REPR.allocate(tc, arrayType.st);

        int slen = string.length();
        if (slen == 0) {
            return array;
        }

        int dlen = delimiter.length();
        if (dlen == 0) {
            for (int i = 0; i < slen; i++) {
                String item = string.substring(i, i+1);
                SixModelObject value = box_s(item, hllConfig.strBoxType, tc);
                array.push_boxed(tc, value);
            }
        } else {
            int curpos = 0;
            int matchpos = string.indexOf(delimiter);
            while (matchpos > -1) {
                String item = string.substring(curpos, matchpos);
                SixModelObject value = box_s(item, hllConfig.strBoxType, tc);
                array.push_boxed(tc, value);

                curpos = matchpos + dlen;
                matchpos = string.indexOf(delimiter,  curpos);
            }

            String tail = string.substring(curpos);
            SixModelObject value = box_s(tail, hllConfig.strBoxType, tc);
            array.push_boxed(tc, value);
        }
        return array;
    }

    public static long indexfrom(String string, String pattern, long fromIndex) {
        if (fromIndex > string.length()) { return -1; }
        return string.indexOf(pattern, (int)fromIndex);
    }

    public static long rindexfromend(String string, String pattern) {
        return string.lastIndexOf(pattern);
    }

    public static long rindexfrom(String string, String pattern, long fromIndex) {
        if (fromIndex > string.length()) { return -1; }
        return string.lastIndexOf(pattern, (int)fromIndex);
    }

    public static String substr2(String val, long offset) {
        if (offset >= val.length())
            return "";
        if (offset < 0)
            offset += val.length();
        return val.substring((int)offset);
    }

    public static String substr3(String val, long offset, long length) {
        if (offset >= val.length())
            return "";
        int end = (int)(offset + length);
        if (end > val.length())
            end = val.length();
        return val.substring((int)offset, end);
    }

    // does haystack have needle as a substring at offset?
    public static long string_equal_at(String haystack, String needle, long offset) {
        long haylen = haystack.length();
        long needlelen = needle.length();

        if (offset < 0) {
            offset += haylen;
            if (offset < 0) {
                offset = 0;
            }
        }
        if (haylen - offset < needlelen) {
            return 0;
        }
        return haystack.regionMatches((int)offset, needle, 0, (int)needlelen) ? 1 : 0;
    }

    public static long ordfirst(String str) {
        return str.codePointAt(0);
    }

    public static long ordat(String str, long offset) {
        return str.codePointAt((int)offset);
    }

    public static long ordbaseat(String str, long offset) {
        throw new RuntimeException("ordbaseat NYI");
    }

    public static String sprintf(String format, SixModelObject arr, ThreadContext tc) {
        // This function just assumes that Java's printf format is compatible
        // with NQP's printf format...

        final int numElems = (int) arr.elems(tc);
        Object[] args = new Object[numElems];

        for (int i = 0; i < numElems; i++) {
            SixModelObject obj = arr.at_pos_boxed(tc, i);
            StorageSpec ss = obj.st.REPR.get_storage_spec(tc, obj.st);
            if ((ss.can_box & StorageSpec.CAN_BOX_INT) != 0) {
                args[i] = Long.valueOf(obj.get_int(tc));
            } else if ((ss.can_box & StorageSpec.CAN_BOX_NUM) != 0) {
                args[i] = Double.valueOf(obj.get_num(tc));
            } else if ((ss.can_box & StorageSpec.CAN_BOX_STR) != 0) {
                args[i] = obj.get_str(tc);
            } else {
                throw new IllegalArgumentException("sprintf only accepts ints, nums, and strs, not " + obj.getClass());
            }
        }

        return String.format(format, args);
    }

    public static String escape(String str) {
        int len = str.length();
        StringBuilder sb = new StringBuilder(2 * len);
        for (int i = 0; i < len; i++) {
            char c = str.charAt(i);
            switch (c) {
            case '\\': sb.append("\\\\"); break;
            case 7: sb.append("\\a"); break;
            case '\b': sb.append("\\b"); break;
            case '\n': sb.append("\\n"); break;
            case '\r': sb.append("\\r"); break;
            case '\t': sb.append("\\t"); break;
            case '\f': sb.append("\\f"); break;
            case '"': sb.append("\\\""); break;
            case 27: sb.append("\\e"); break;
            default:
                sb.append(c);
            }
        }
        return sb.toString();
    }

    public static String flip(String str) {
        return new StringBuffer(str).reverse().toString();
    }

    public static String replace(String str, long offset, long count, String repl) {
        return new StringBuffer(str).replace((int)offset, (int)(offset + count), repl).toString();
    }

    /* Brute force, but not normally needed for most programs. */
    private static volatile HashMap<String, Character> cpNameMap;
    public static long codepointfromname(String name) {
        HashMap<String, Character> names = cpNameMap;
        if (names == null) {
            names = new HashMap< >();
            for (char i = 0; i < Character.MAX_VALUE; i++)
                if (Character.isValidCodePoint(i))
                    names.put(Character.getName(i), i);
            names.put("LF",  (char)10);
            names.put("FF",  (char)12);
            names.put("CR",  (char)13);
            names.put("NEL", (char)133);
            cpNameMap = names;
        }
        Character found = names.get(name);
        return found == null ? -1 : found;
    }

    public static SixModelObject encode(String str, String encoding, SixModelObject res, ThreadContext tc) {
        try {
            if (encoding.equals("utf8")) {
                Buffers.stashBytes(tc, res, str.getBytes("UTF-8"));
            }
            else if (encoding.equals("ascii")) {
                Buffers.stashBytes(tc, res, str.getBytes("US-ASCII"));
            }
            else if (encoding.equals("iso-8859-1")) {
                Buffers.stashBytes(tc, res, str.getBytes("ISO-8859-1"));
            }
            else if (encoding.equals("windows-1252")) {
                Buffers.stashBytes(tc, res, str.getBytes("windows-1252"));
            }
            else if (encoding.equals("utf16")) {
                short[] buffer = new short[str.length()];
                for (int i = 0; i < str.length(); i++)
                    buffer[i] = (short)str.charAt(i);
                if (res instanceof VMArrayInstance_i16) {
                    VMArrayInstance_i16 arr = (VMArrayInstance_i16)res;
                    arr.elems = buffer.length;
                    arr.start = 0;
                    arr.slots = buffer;
                }
                else {
                    res.set_elems(tc, buffer.length);
                    for (int i = 0; i < buffer.length; i++) {
                        tc.native_i = buffer[i];
                        res.bind_pos_native(tc, i);
                    }
                }
            }
            else if (encoding.equals("utf32")) {
                int[] buffer = new int[str.length()]; /* Can be an overestimate. */
                int bufPos = 0;
                for (int i = 0; i < str.length(); ) {
                    int cp = str.codePointAt(i);
                    buffer[bufPos++] = cp;
                    i += Character.charCount(cp);
                }
                if (res instanceof VMArrayInstance_i32) {
                    VMArrayInstance_i32 arr = (VMArrayInstance_i32)res;
                    arr.elems = bufPos;
                    arr.start = 0;
                    arr.slots = buffer;
                }
                else {
                    res.set_elems(tc, buffer.length);
                    for (int i = 0; i < bufPos; i++) {
                        tc.native_i = buffer[i];
                        res.bind_pos_native(tc, i);
                    }
                }
            }
            else {
                throw ExceptionHandling.dieInternal(tc, "Unknown encoding '" + encoding + "'");
            }
            return res;
        }
        catch (UnsupportedEncodingException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public static String decode8(SixModelObject buf, String csName, ThreadContext tc) {
        ByteBuffer bb = Buffers.unstashBytes(buf, tc);
        return Charset.forName(csName).decode(bb).toString();
    }

    public static String decode(SixModelObject buf, String encoding, ThreadContext tc) {
        if (encoding.equals("utf8")) {
            return decode8(buf, "UTF-8", tc);
        }
        else if (encoding.equals("ascii")) {
            return decode8(buf, "US-ASCII", tc);
        }
        else if (encoding.equals("iso-8859-1")) {
            return decode8(buf, "ISO-8859-1", tc);
        }
        else if (encoding.equals("windows-1252")) {
            return decode8(buf, "windows-1252", tc);
        }
        else if (encoding.equals("utf16") || encoding.equals("utf32")) {
            int n = (int)buf.elems(tc);
            StringBuilder sb = new StringBuilder(n);
            if (buf instanceof VMArrayInstance_u8 || buf instanceof VMArrayInstance_i8) {
                if (encoding.equals("utf16") && n % 2 == 1) {
                    throw ExceptionHandling.dieInternal(tc, "Malformed UTF-16; odd number of bytes");
                }
                if (encoding.equals("utf32") && n % 4 > 0) {
                    throw ExceptionHandling.dieInternal(tc, "Malformed UTF-32; number of bytes must be factor of four");
                }
                for (int i = 0; i < n;) {
                    buf.at_pos_native(tc, i++);
                    int a = (int)tc.native_i;
                    buf.at_pos_native(tc, i++);
                    int b = (int)tc.native_i;
                    sb.appendCodePoint(a + (b << 8));
                }
            }
            else if (buf instanceof VMArrayInstance_i16 || buf instanceof VMArrayInstance_u16) {
                for (int i = 0; i < n; i++) {
                    buf.at_pos_native(tc, i);
                    sb.appendCodePoint((int)tc.native_i);
                }
            }
            else if (buf instanceof VMArrayInstance_i32 || buf instanceof VMArrayInstance_u32) {
                for (int i = 0; i < n; i++) {
                    buf.at_pos_native(tc, i);
                    int a = (int)tc.native_i;
                    sb.appendCodePoint(a & 0xFFFF);
                    sb.appendCodePoint(a >> 16);
                }
            }
            else {
                throw ExceptionHandling.dieInternal(tc, "Unknown buf type: " + buf.getClass() + "/" + Ops.typeName(buf, tc));
            }
            return sb.toString();
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "Unknown encoding '" + encoding + "'");
        }
    }

    private static final int CCLASS_ANY          = 65535;
    private static final int CCLASS_UPPERCASE    = 1;
    private static final int CCLASS_LOWERCASE    = 2;
    private static final int CCLASS_ALPHABETIC   = 4;
    private static final int CCLASS_NUMERIC      = 8;
    private static final int CCLASS_HEXADECIMAL  = 16;
    private static final int CCLASS_WHITESPACE   = 32;
    private static final int CCLASS_PRINTING     = 64;
    private static final int CCLASS_BLANK        = 256;
    private static final int CCLASS_CONTROL      = 512;
    private static final int CCLASS_PUNCTUATION  = 1024;
    private static final int CCLASS_ALPHANUMERIC = 2048;
    private static final int CCLASS_NEWLINE      = 4096;
    private static final int CCLASS_WORD         = 8192;
    private static final int PUNCT_TYPES =
        (1 << Character.CONNECTOR_PUNCTUATION) | (1 << Character.DASH_PUNCTUATION) |
        (1 << Character.END_PUNCTUATION) | (1 << Character.FINAL_QUOTE_PUNCTUATION) |
        (1 << Character.INITIAL_QUOTE_PUNCTUATION) | (1 << Character.OTHER_PUNCTUATION) |
        (1 << Character.START_PUNCTUATION);
    private static final int NONPRINT_TYPES =
        (1 << Character.CONTROL) | (1 << Character.SURROGATE) | (1 << Character.UNASSIGNED) |
        (1 << Character.LINE_SEPARATOR) | (1 << Character.PARAGRAPH_SEPARATOR);


    public static long iscclass(long cclass, String target, long offset) {
        if (offset < 0 || offset >= target.length())
            return 0;
        char test = target.charAt((int)offset);
        switch ((int)cclass) {
        case CCLASS_ANY:
            return 1;
        case CCLASS_NUMERIC:
            return Character.isDigit(test) ? 1 : 0;
        case CCLASS_WHITESPACE:
            if (Character.isSpaceChar(test)) return 1;
            if (test >= '\t' && test <= '\r') return 1;
            if (test == '\u0085') return 1;
            return 0;
        case CCLASS_PRINTING:
            if (((1 << Character.getType(test)) & NONPRINT_TYPES) != 0) return 0;
            return test < '\t' || test > '\r' ? 1 : 0;
        case CCLASS_WORD:
            return test == '_' || Character.isLetterOrDigit(test) ? 1 : 0;
        case CCLASS_NEWLINE:
            return (Character.getType(test) == Character.LINE_SEPARATOR) ||
                    (test == '\n' || test == '\u000b' || test == '\f' || test == '\r' ||
                     test == '\u0085' || test == '\u2029')
                    ? 1 : 0;
        case CCLASS_ALPHABETIC:
            return Character.isAlphabetic(test) ? 1 : 0;
        case CCLASS_UPPERCASE:
            return Character.isUpperCase(test) ? 1 : 0;
        case CCLASS_LOWERCASE:
            return Character.isLowerCase(test) ? 1 : 0;
        case CCLASS_HEXADECIMAL:
            return Character.isDigit(test) ||
                    (test >= 'A' && test <= 'F' || test >= 'a' && test <= 'f')
                    ? 1 : 0;
        case CCLASS_BLANK:
            return (Character.getType(test) == Character.SPACE_SEPARATOR) ||
                    (test == '\t')
                    ? 1 : 0;
        case CCLASS_CONTROL:
            return Character.isISOControl(test) ? 1 : 0;
        case CCLASS_PUNCTUATION:
            return ((1 << Character.getType(test)) & PUNCT_TYPES) != 0 ? 1 : 0;
        case CCLASS_ALPHANUMERIC:
            return Character.isLetterOrDigit(test) ? 1 : 0;
        default:
            return 0;
        }
    }

    public static long checkcrlf(String tgt, long pos, long eos) {
        return (pos <= eos-2 && tgt.substring((int)pos, ((int) pos)+2).equals("\r\n")) ? pos+1 : pos;
    }

    public static long findcclass(long cclass, String target, long offset, long count) {
        long length = target.length();
        long end = offset + count;
        end = length < end ? length : end;

        for (long pos = offset; pos < end; pos++) {
            if (iscclass(cclass, target, pos) > 0) {
                return pos;
            }
        }

        return end;
    }

    public static long findnotcclass(long cclass, String target, long offset, long count) {
        long length = target.length();
        long end = offset + count;
        end = length < end ? length : end;

        for (long pos = offset; pos < end; pos++) {
            if (iscclass(cclass, target, pos) == 0) {
                return pos;
            }
        }

        return end;
    }

    private static HashMap<String,String> canonNames = new HashMap<String, String>();
    private static HashMap<String,int[]> derivedProps = new HashMap<String, int[]>();
    static {
        canonNames.put("inlatin1supplement", "InLatin-1Supplement");
        canonNames.put("inlatinextendeda", "InLatinExtended-A");
        canonNames.put("inlatinextendedb", "InLatinExtended-B");
        canonNames.put("inarabicextendeda", "InArabicExtended-A");
        canonNames.put("inmiscellaneousmathematicalsymbolsa", "InMiscellaneousMathematicalSymbols-A");
        canonNames.put("insupplementalarrowsa", "InSupplementalArrows-A");
        canonNames.put("insupplementalarrowsb", "InSupplementalArrows-B");
        canonNames.put("inmiscellaneousmathematicalsymbolsb", "InMiscellaneousMathematicalSymbols-B");
        canonNames.put("inlatinextendedc", "InLatinExtended-C");
        canonNames.put("incyrillicextendeda", "InCyrillicExtended-A");
        canonNames.put("incyrillicextendedb", "InCyrillicExtended-B");
        canonNames.put("inlatinextendedd", "InLatinExtended-D");
        canonNames.put("inhanguljamoextendeda", "InHangulJamoExtended-A");
        canonNames.put("inmyanmarextendeda", "InMyanmarExtended-A");
        canonNames.put("inethiopicextendeda", "InEthiopicExtended-A");
        canonNames.put("inhanguljamoextendedb", "InHangulJamoExtended-B");
        canonNames.put("inarabicpresentationformsa", "InArabicPresentationForms-A");
        canonNames.put("inarabicpresentationformsb", "InArabicPresentationForms-B");
        canonNames.put("insupplementaryprivateuseareaa", "InSupplementaryPrivateUseArea-A");
        canonNames.put("insupplementaryprivateuseareab", "InSupplementaryPrivateUseArea-B");
        canonNames.put("ascii", "ASCII");
        canonNames.put("alpha", "IsAlphabetic");
        canonNames.put("alphabetic", "IsAlphabetic");
        canonNames.put("ideographic", "IsIdeographic");
        canonNames.put("letter", "IsLetter");
        canonNames.put("lower", "IsLowercase");
        canonNames.put("lowercase", "IsLowercase");
        canonNames.put("upper", "IsUppercase");
        canonNames.put("uppercase", "IsUppercase");
        canonNames.put("titlecase", "IsTitlecase");
        canonNames.put("punct", "IsPunctuation");
        canonNames.put("punctuation", "IsPunctuation");
        canonNames.put("cntrl", "IsControl");
        canonNames.put("control", "IsControl");
        canonNames.put("white_space", "IsWhite_Space");
        canonNames.put("digit", "IsDigit");
        canonNames.put("hex_digit", "IsHex_Digit");
        canonNames.put("noncharacter_code_point", "IsNoncharacter_Code_Point");
        canonNames.put("assigned", "IsAssigned");
        canonNames.put("uppercaseletter", "Lu");
        canonNames.put("lowercaseletter", "Ll");
        canonNames.put("titlecaseletter", "Lt");
        canonNames.put("casedletter", "LC");
        canonNames.put("modifierletter", "Lm");
        canonNames.put("otherletter", "Lo");
        canonNames.put("letter", "L");
        canonNames.put("nonspacingmark", "Mn");
        canonNames.put("spacingmark", "Mc");
        canonNames.put("enclosingmark", "Me");
        canonNames.put("mark", "M");
        canonNames.put("decimalnumber", "Nd");
        canonNames.put("letternumber", "Nl");
        canonNames.put("othernumber", "No");
        canonNames.put("number", "N");
        canonNames.put("connectorpunctuation", "Pc");
        canonNames.put("dashpunctuation", "Pd");
        canonNames.put("openpunctuation", "Ps");
        canonNames.put("closepunctuation", "Pe");
        canonNames.put("initialpunctuation", "Pi");
        canonNames.put("finalpunctuation", "Pf");
        canonNames.put("otherpunctuation", "Po");
        canonNames.put("punctuation", "P");
        canonNames.put("mathsymbol", "Sm");
        canonNames.put("currencysymbol", "Sc");
        canonNames.put("modifiersymbol", "Sk");
        canonNames.put("othersymbol", "So");
        canonNames.put("symbol", "S");
        canonNames.put("spaceseparator", "Zs");
        canonNames.put("lineseparator", "Zl");
        canonNames.put("paragraphseparator", "Zp");
        canonNames.put("separator", "Z");
        canonNames.put("control", "Cc");
        canonNames.put("format", "Cf");
        canonNames.put("surrogate", "Cs");
        canonNames.put("privateuse", "Co");
        canonNames.put("unassigned", "Cn");
        canonNames.put("other", "C");
        derivedProps.put("space", new int[] { 32, 32 });
        derivedProps.put("WhiteSpace", new int[] { 9,13,32,32,133,133,160,160,5760,5760,6158,6158,8192,8202,8232,8232,8233,8233,8239,8239,8287,8287,12288,12288 });
        derivedProps.put("BidiControl", new int[] { 8206,8207,8234,8238 });
        derivedProps.put("JoinControl", new int[] { 8204,8205 });
        derivedProps.put("Dash", new int[] { 45,45,1418,1418,1470,1470,5120,5120,6150,6150,8208,8213,8275,8275,8315,8315,8331,8331,8722,8722,11799,11799,11802,11802,11834,11835,12316,12316,12336,12336,12448,12448,65073,65074,65112,65112,65123,65123,65293,65293 });
        derivedProps.put("Hyphen", new int[] { 45,45,173,173,1418,1418,6150,6150,8208,8209,11799,11799,12539,12539,65123,65123,65293,65293,65381,65381 });
        derivedProps.put("QuotationMark", new int[] { 34,34,39,39,171,171,187,187,8216,8216,8217,8217,8218,8218,8219,8220,8221,8221,8222,8222,8223,8223,8249,8249,8250,8250,12300,12300,12301,12301,12302,12302,12303,12303,12317,12317,12318,12319,65089,65089,65090,65090,65091,65091,65092,65092,65282,65282,65287,65287,65378,65378,65379,65379 });
        derivedProps.put("TerminalPunctuation", new int[] { 33,33,44,44,46,46,58,59,63,63,894,894,903,903,1417,1417,1475,1475,1548,1548,1563,1563,1567,1567,1748,1748,1792,1802,1804,1804,2040,2041,2096,2110,2142,2142,2404,2405,3674,3675,3848,3848,3853,3858,4170,4171,4961,4968,5741,5742,5867,5869,6100,6102,6106,6106,6146,6149,6152,6153,6468,6469,6824,6827,7002,7003,7005,7007,7227,7231,7294,7295,8252,8253,8263,8265,11822,11822,12289,12290,42238,42239,42509,42511,42739,42743,43126,43127,43214,43215,43311,43311,43463,43465,43613,43615,43743,43743,43760,43761,44011,44011,65104,65106,65108,65111,65281,65281,65292,65292,65294,65294,65306,65307,65311,65311,65377,65377,65380,65380,66463,66463,66512,66512,67671,67671,67871,67871,68410,68415,69703,69709,69822,69825,69953,69955,70085,70086,74864,74867 });
        derivedProps.put("OtherMath", new int[] { 94,94,976,978,981,981,1008,1009,1012,1013,8214,8214,8242,8244,8256,8256,8289,8292,8317,8317,8318,8318,8333,8333,8334,8334,8400,8412,8417,8417,8421,8422,8427,8431,8450,8450,8455,8455,8458,8467,8469,8469,8473,8477,8484,8484,8488,8488,8489,8489,8492,8493,8495,8497,8499,8500,8501,8504,8508,8511,8517,8521,8597,8601,8604,8607,8609,8610,8612,8613,8615,8615,8617,8621,8624,8625,8630,8631,8636,8653,8656,8657,8659,8659,8661,8667,8669,8669,8676,8677,9140,9141,9143,9143,9168,9168,9186,9186,9632,9633,9646,9654,9660,9664,9670,9671,9674,9675,9679,9683,9698,9698,9700,9700,9703,9708,9733,9734,9792,9792,9794,9794,9824,9827,9837,9838,10181,10181,10182,10182,10214,10214,10215,10215,10216,10216,10217,10217,10218,10218,10219,10219,10220,10220,10221,10221,10222,10222,10223,10223,10627,10627,10628,10628,10629,10629,10630,10630,10631,10631,10632,10632,10633,10633,10634,10634,10635,10635,10636,10636,10637,10637,10638,10638,10639,10639,10640,10640,10641,10641,10642,10642,10643,10643,10644,10644,10645,10645,10646,10646,10647,10647,10648,10648,10712,10712,10713,10713,10714,10714,10715,10715,10748,10748,10749,10749,65121,65121,65123,65123,65128,65128,65340,65340,65342,65342,119808,119892,119894,119964,119966,119967,119970,119970,119973,119974,119977,119980,119982,119993,119995,119995,119997,120003,120005,120069,120071,120074,120077,120084,120086,120092,120094,120121,120123,120126,120128,120132,120134,120134,120138,120144,120146,120485,120488,120512,120514,120538,120540,120570,120572,120596,120598,120628,120630,120654,120656,120686,120688,120712,120714,120744,120746,120770,120772,120779,120782,120831,126464,126467,126469,126495,126497,126498,126500,126500,126503,126503,126505,126514,126516,126519,126521,126521,126523,126523,126530,126530,126535,126535,126537,126537,126539,126539,126541,126543,126545,126546,126548,126548,126551,126551,126553,126553,126555,126555,126557,126557,126559,126559,126561,126562,126564,126564,126567,126570,126572,126578,126580,126583,126585,126588,126590,126590,126592,126601,126603,126619,126625,126627,126629,126633,126635,126651 });
        derivedProps.put("HexDigit", new int[] { 48,57,65,70,97,102,65296,65305,65313,65318,65345,65350 });
        derivedProps.put("ASCIIHexDigit", new int[] { 48,57,65,70,97,102 });
        derivedProps.put("OtherAlphabetic", new int[] { 837,837,1456,1469,1471,1471,1473,1474,1476,1477,1479,1479,1552,1562,1611,1623,1625,1631,1648,1648,1750,1756,1761,1764,1767,1768,1773,1773,1809,1809,1840,1855,1958,1968,2070,2071,2075,2083,2085,2087,2089,2092,2276,2281,2288,2302,2304,2306,2307,2307,2362,2362,2363,2363,2366,2368,2369,2376,2377,2380,2382,2383,2389,2391,2402,2403,2433,2433,2434,2435,2494,2496,2497,2500,2503,2504,2507,2508,2519,2519,2530,2531,2561,2562,2563,2563,2622,2624,2625,2626,2631,2632,2635,2636,2641,2641,2672,2673,2677,2677,2689,2690,2691,2691,2750,2752,2753,2757,2759,2760,2761,2761,2763,2764,2786,2787,2817,2817,2818,2819,2878,2878,2879,2879,2880,2880,2881,2884,2887,2888,2891,2892,2902,2902,2903,2903,2914,2915,2946,2946,3006,3007,3008,3008,3009,3010,3014,3016,3018,3020,3031,3031,3073,3075,3134,3136,3137,3140,3142,3144,3146,3148,3157,3158,3170,3171,3202,3203,3262,3262,3263,3263,3264,3268,3270,3270,3271,3272,3274,3275,3276,3276,3285,3286,3298,3299,3330,3331,3390,3392,3393,3396,3398,3400,3402,3404,3415,3415,3426,3427,3458,3459,3535,3537,3538,3540,3542,3542,3544,3551,3570,3571,3633,3633,3636,3642,3661,3661,3761,3761,3764,3769,3771,3772,3789,3789,3953,3966,3967,3967,3968,3969,3981,3991,3993,4028,4139,4140,4141,4144,4145,4145,4146,4150,4152,4152,4155,4156,4157,4158,4182,4183,4184,4185,4190,4192,4194,4194,4199,4200,4209,4212,4226,4226,4227,4228,4229,4230,4252,4252,4253,4253,4959,4959,5906,5907,5938,5939,5970,5971,6002,6003,6070,6070,6071,6077,6078,6085,6086,6086,6087,6088,6313,6313,6432,6434,6435,6438,6439,6440,6441,6443,6448,6449,6450,6450,6451,6456,6576,6592,6600,6601,6679,6680,6681,6683,6741,6741,6742,6742,6743,6743,6744,6750,6753,6753,6754,6754,6755,6756,6757,6764,6765,6770,6771,6772,6912,6915,6916,6916,6965,6965,6966,6970,6971,6971,6972,6972,6973,6977,6978,6978,6979,6979,7040,7041,7042,7042,7073,7073,7074,7077,7078,7079,7080,7081,7084,7085,7143,7143,7144,7145,7146,7148,7149,7149,7150,7150,7151,7153,7204,7211,7212,7219,7220,7221,7410,7411,9398,9449,11744,11775,42612,42619,42655,42655,43043,43044,43045,43046,43047,43047,43136,43137,43188,43203,43302,43306,43335,43345,43346,43346,43392,43394,43395,43395,43444,43445,43446,43449,43450,43451,43452,43452,43453,43455,43561,43566,43567,43568,43569,43570,43571,43572,43573,43574,43587,43587,43596,43596,43597,43597,43696,43696,43698,43700,43703,43704,43710,43710,43755,43755,43756,43757,43758,43759,43765,43765,44003,44004,44005,44005,44006,44007,44008,44008,44009,44010,64286,64286,68097,68099,68101,68102,68108,68111,69632,69632,69633,69633,69634,69634,69688,69701,69762,69762,69808,69810,69811,69814,69815,69816,69888,69890,69927,69931,69932,69932,69933,69938,70016,70017,70018,70018,70067,70069,70070,70078,70079,70079,71339,71339,71340,71340,71341,71341,71342,71343,71344,71349,94033,94078 });
        derivedProps.put("Ideographic", new int[] { 12294,12294,12295,12295,12321,12329,12344,12346,13312,19893,19968,40908,63744,64109,64112,64217,131072,173782,173824,177972,177984,178205,194560,195101 });
        derivedProps.put("Diacritic", new int[] { 94,94,96,96,168,168,175,175,180,180,183,183,184,184,688,705,706,709,710,721,722,735,736,740,741,747,748,748,749,749,750,750,751,767,768,846,848,855,861,866,884,884,885,885,890,890,900,901,1155,1159,1369,1369,1425,1441,1443,1469,1471,1471,1473,1474,1476,1476,1611,1618,1623,1624,1759,1760,1765,1766,1770,1772,1840,1866,1958,1968,2027,2035,2036,2037,2072,2073,2276,2302,2364,2364,2381,2381,2385,2388,2417,2417,2492,2492,2509,2509,2620,2620,2637,2637,2748,2748,2765,2765,2876,2876,2893,2893,3021,3021,3149,3149,3260,3260,3277,3277,3405,3405,3530,3530,3655,3660,3662,3662,3784,3788,3864,3865,3893,3893,3895,3895,3897,3897,3902,3903,3970,3972,3974,3975,4038,4038,4151,4151,4153,4154,4231,4236,4237,4237,4239,4239,4250,4251,6089,6099,6109,6109,6457,6459,6773,6780,6783,6783,6964,6964,6980,6980,7019,7027,7082,7082,7083,7083,7222,7223,7288,7293,7376,7378,7379,7379,7380,7392,7393,7393,7394,7400,7405,7405,7412,7412,7468,7530,7620,7631,7677,7679,8125,8125,8127,8129,8141,8143,8157,8159,8173,8175,8189,8190,11503,11505,11823,11823,12330,12333,12334,12335,12441,12442,12443,12444,12540,12540,42607,42607,42620,42621,42623,42623,42736,42737,42775,42783,42784,42785,42888,42888,43000,43001,43204,43204,43232,43249,43307,43309,43310,43310,43347,43347,43443,43443,43456,43456,43643,43643,43711,43711,43712,43712,43713,43713,43714,43714,43766,43766,44012,44012,44013,44013,64286,64286,65056,65062,65342,65342,65344,65344,65392,65392,65438,65439,65507,65507,69817,69818,69939,69940,70080,70080,71350,71350,71351,71351,94095,94098,94099,94111,119143,119145,119149,119154,119163,119170,119173,119179,119210,119213 });
        derivedProps.put("Extender", new int[] { 183,183,720,721,1600,1600,2042,2042,3654,3654,3782,3782,6154,6154,6211,6211,6823,6823,7222,7222,7291,7291,12293,12293,12337,12341,12445,12446,12540,12542,40981,40981,42508,42508,43471,43471,43632,43632,43741,43741,43763,43764,65392,65392 });
        derivedProps.put("OtherLowercase", new int[] { 170,170,186,186,688,696,704,705,736,740,837,837,890,890,7468,7530,7544,7544,7579,7615,8305,8305,8319,8319,8336,8348,8560,8575,9424,9449,11388,11389,42864,42864,43000,43001 });
        derivedProps.put("OtherUppercase", new int[] { 8544,8559,9398,9423 });
        derivedProps.put("NoncharacterCodePoint", new int[] { 64976,65007,65534,65535,131070,131071,196606,196607,262142,262143,327678,327679,393214,393215,458750,458751,524286,524287,589822,589823,655358,655359,720894,720895,786430,786431,851966,851967,917502,917503,983038,983039,1048574,1048575,1114110,1114111 });
        derivedProps.put("OtherGraphemeExtend", new int[] { 2494,2494,2519,2519,2878,2878,2903,2903,3006,3006,3031,3031,3266,3266,3285,3286,3390,3390,3415,3415,3535,3535,3551,3551,8204,8205,12334,12335,65438,65439,119141,119141,119150,119154 });
        derivedProps.put("IDSBinaryOperator", new int[] { 12272,12273,12276,12283 });
        derivedProps.put("IDSTrinaryOperator", new int[] { 12274,12275 });
        derivedProps.put("Radical", new int[] { 11904,11929,11931,12019,12032,12245 });
        derivedProps.put("UnifiedIdeograph", new int[] { 13312,19893,19968,40908,64014,64015,64017,64017,64019,64020,64031,64031,64033,64033,64035,64036,64039,64041,131072,173782,173824,177972,177984,178205 });
        derivedProps.put("OtherDefaultIgnorableCodePoint", new int[] { 847,847,4447,4448,6068,6069,8293,8297,12644,12644,65440,65440,65520,65528,917504,917504,917506,917535,917632,917759,918000,921599 });
        derivedProps.put("Deprecated", new int[] { 329,329,1651,1651,3959,3959,3961,3961,6051,6052,8298,8303,9001,9001,9002,9002,917505,917505,917536,917631 });
        derivedProps.put("SoftDotted", new int[] { 105,106,303,303,585,585,616,616,669,669,690,690,1011,1011,1110,1110,1112,1112,7522,7522,7574,7574,7588,7588,7592,7592,7725,7725,7883,7883,8305,8305,8520,8521,11388,11388,119842,119843,119894,119895,119946,119947,119998,119999,120050,120051,120102,120103,120154,120155,120206,120207,120258,120259,120310,120311,120362,120363,120414,120415,120466,120467 });
        derivedProps.put("LogicalOrderException", new int[] { 3648,3652,3776,3780,43701,43702,43705,43705,43707,43708 });
        derivedProps.put("OtherIDStart", new int[] { 8472,8472,8494,8494,12443,12444 });
        derivedProps.put("OtherIDContinue", new int[] { 183,183,903,903,4969,4977,6618,6618 });
        derivedProps.put("STerm", new int[] { 33,33,46,46,63,63,1372,1372,1374,1374,1417,1417,1567,1567,1748,1748,1792,1794,2041,2041,2404,2405,4170,4171,4962,4962,4967,4968,5742,5742,5941,5942,6147,6147,6153,6153,6468,6469,6824,6827,7002,7003,7006,7007,7227,7228,7294,7295,8252,8253,8263,8265,11822,11822,12290,12290,42239,42239,42510,42511,42739,42739,42743,42743,43126,43127,43214,43215,43311,43311,43464,43465,43613,43615,43760,43761,44011,44011,65106,65106,65110,65111,65281,65281,65294,65294,65311,65311,65377,65377,68182,68183,69703,69704,69822,69825,69953,69955,70085,70086 });
        derivedProps.put("VariationSelector", new int[] { 6155,6157,65024,65039,917760,917999 });
        derivedProps.put("PatternWhiteSpace", new int[] { 9,13,32,32,133,133,8206,8207,8232,8232,8233,8233 });
        derivedProps.put("PatternSyntax", new int[] { 33,35,36,36,37,39,40,40,41,41,42,42,43,43,44,44,45,45,46,47,58,59,60,62,63,64,91,91,92,92,93,93,94,94,96,96,123,123,124,124,125,125,126,126,161,161,162,165,166,166,167,167,169,169,171,171,172,172,174,174,176,176,177,177,182,182,187,187,191,191,215,215,247,247,8208,8213,8214,8215,8216,8216,8217,8217,8218,8218,8219,8220,8221,8221,8222,8222,8223,8223,8224,8231,8240,8248,8249,8249,8250,8250,8251,8254,8257,8259,8260,8260,8261,8261,8262,8262,8263,8273,8274,8274,8275,8275,8277,8286,8592,8596,8597,8601,8602,8603,8604,8607,8608,8608,8609,8610,8611,8611,8612,8613,8614,8614,8615,8621,8622,8622,8623,8653,8654,8655,8656,8657,8658,8658,8659,8659,8660,8660,8661,8691,8692,8959,8960,8967,8968,8971,8972,8991,8992,8993,8994,9000,9001,9001,9002,9002,9003,9083,9084,9084,9085,9114,9115,9139,9140,9179,9180,9185,9186,9203,9204,9215,9216,9254,9255,9279,9280,9290,9291,9311,9472,9654,9655,9655,9656,9664,9665,9665,9666,9719,9720,9727,9728,9838,9839,9839,9840,9983,9984,9984,9985,10087,10088,10088,10089,10089,10090,10090,10091,10091,10092,10092,10093,10093,10094,10094,10095,10095,10096,10096,10097,10097,10098,10098,10099,10099,10100,10100,10101,10101,10132,10175,10176,10180,10181,10181,10182,10182,10183,10213,10214,10214,10215,10215,10216,10216,10217,10217,10218,10218,10219,10219,10220,10220,10221,10221,10222,10222,10223,10223,10224,10239,10240,10495,10496,10626,10627,10627,10628,10628,10629,10629,10630,10630,10631,10631,10632,10632,10633,10633,10634,10634,10635,10635,10636,10636,10637,10637,10638,10638,10639,10639,10640,10640,10641,10641,10642,10642,10643,10643,10644,10644,10645,10645,10646,10646,10647,10647,10648,10648,10649,10711,10712,10712,10713,10713,10714,10714,10715,10715,10716,10747,10748,10748,10749,10749,10750,11007,11008,11055,11056,11076,11077,11078,11079,11084,11085,11087,11088,11097,11098,11263,11776,11777,11778,11778,11779,11779,11780,11780,11781,11781,11782,11784,11785,11785,11786,11786,11787,11787,11788,11788,11789,11789,11790,11798,11799,11799,11800,11801,11802,11802,11803,11803,11804,11804,11805,11805,11806,11807,11808,11808,11809,11809,11810,11810,11811,11811,11812,11812,11813,11813,11814,11814,11815,11815,11816,11816,11817,11817,11818,11822,11823,11823,11824,11833,11834,11835,11836,11903,12289,12291,12296,12296,12297,12297,12298,12298,12299,12299,12300,12300,12301,12301,12302,12302,12303,12303,12304,12304,12305,12305,12306,12307,12308,12308,12309,12309,12310,12310,12311,12311,12312,12312,12313,12313,12314,12314,12315,12315,12316,12316,12317,12317,12318,12319,12320,12320,12336,12336,64830,64830,64831,64831,65093,65094 });
        derivedProps.put("Math", new int[] { 43,43,60,62,94,94,124,124,126,126,172,172,177,177,215,215,247,247,976,978,981,981,1008,1009,1012,1013,1014,1014,1542,1544,8214,8214,8242,8244,8256,8256,8260,8260,8274,8274,8289,8292,8314,8316,8317,8317,8318,8318,8330,8332,8333,8333,8334,8334,8400,8412,8417,8417,8421,8422,8427,8431,8450,8450,8455,8455,8458,8467,8469,8469,8472,8472,8473,8477,8484,8484,8488,8488,8489,8489,8492,8493,8495,8497,8499,8500,8501,8504,8508,8511,8512,8516,8517,8521,8523,8523,8592,8596,8597,8601,8602,8603,8604,8607,8608,8608,8609,8610,8611,8611,8612,8613,8614,8614,8615,8615,8617,8621,8622,8622,8624,8625,8630,8631,8636,8653,8654,8655,8656,8657,8658,8658,8659,8659,8660,8660,8661,8667,8669,8669,8676,8677,8692,8959,8968,8971,8992,8993,9084,9084,9115,9139,9140,9141,9143,9143,9168,9168,9180,9185,9186,9186,9632,9633,9646,9654,9655,9655,9660,9664,9665,9665,9670,9671,9674,9675,9679,9683,9698,9698,9700,9700,9703,9708,9720,9727,9733,9734,9792,9792,9794,9794,9824,9827,9837,9838,9839,9839,10176,10180,10181,10181,10182,10182,10183,10213,10214,10214,10215,10215,10216,10216,10217,10217,10218,10218,10219,10219,10220,10220,10221,10221,10222,10222,10223,10223,10224,10239,10496,10626,10627,10627,10628,10628,10629,10629,10630,10630,10631,10631,10632,10632,10633,10633,10634,10634,10635,10635,10636,10636,10637,10637,10638,10638,10639,10639,10640,10640,10641,10641,10642,10642,10643,10643,10644,10644,10645,10645,10646,10646,10647,10647,10648,10648,10649,10711,10712,10712,10713,10713,10714,10714,10715,10715,10716,10747,10748,10748,10749,10749,10750,11007,11056,11076,11079,11084,64297,64297,65121,65121,65122,65122,65123,65123,65124,65126,65128,65128,65291,65291,65308,65310,65340,65340,65342,65342,65372,65372,65374,65374,65506,65506,65513,65516,119808,119892,119894,119964,119966,119967,119970,119970,119973,119974,119977,119980,119982,119993,119995,119995,119997,120003,120005,120069,120071,120074,120077,120084,120086,120092,120094,120121,120123,120126,120128,120132,120134,120134,120138,120144,120146,120485,120488,120512,120513,120513,120514,120538,120539,120539,120540,120570,120571,120571,120572,120596,120597,120597,120598,120628,120629,120629,120630,120654,120655,120655,120656,120686,120687,120687,120688,120712,120713,120713,120714,120744,120745,120745,120746,120770,120771,120771,120772,120779,120782,120831,126464,126467,126469,126495,126497,126498,126500,126500,126503,126503,126505,126514,126516,126519,126521,126521,126523,126523,126530,126530,126535,126535,126537,126537,126539,126539,126541,126543,126545,126546,126548,126548,126551,126551,126553,126553,126555,126555,126557,126557,126559,126559,126561,126562,126564,126564,126567,126570,126572,126578,126580,126583,126585,126588,126590,126590,126592,126601,126603,126619,126625,126627,126629,126633,126635,126651,126704,126705 });
        derivedProps.put("ID_Start", new int[] { 65,90,97,122,170,170,181,181,186,186,192,214,216,246,248,442,443,443,444,447,448,451,452,659,660,660,661,687,688,705,710,721,736,740,748,748,750,750,880,883,884,884,886,887,890,890,891,893,902,902,904,906,908,908,910,929,931,1013,1015,1153,1162,1319,1329,1366,1369,1369,1377,1415,1488,1514,1520,1522,1568,1599,1600,1600,1601,1610,1646,1647,1649,1747,1749,1749,1765,1766,1774,1775,1786,1788,1791,1791,1808,1808,1810,1839,1869,1957,1969,1969,1994,2026,2036,2037,2042,2042,2048,2069,2074,2074,2084,2084,2088,2088,2112,2136,2208,2208,2210,2220,2308,2361,2365,2365,2384,2384,2392,2401,2417,2417,2418,2423,2425,2431,2437,2444,2447,2448,2451,2472,2474,2480,2482,2482,2486,2489,2493,2493,2510,2510,2524,2525,2527,2529,2544,2545,2565,2570,2575,2576,2579,2600,2602,2608,2610,2611,2613,2614,2616,2617,2649,2652,2654,2654,2674,2676,2693,2701,2703,2705,2707,2728,2730,2736,2738,2739,2741,2745,2749,2749,2768,2768,2784,2785,2821,2828,2831,2832,2835,2856,2858,2864,2866,2867,2869,2873,2877,2877,2908,2909,2911,2913,2929,2929,2947,2947,2949,2954,2958,2960,2962,2965,2969,2970,2972,2972,2974,2975,2979,2980,2984,2986,2990,3001,3024,3024,3077,3084,3086,3088,3090,3112,3114,3123,3125,3129,3133,3133,3160,3161,3168,3169,3205,3212,3214,3216,3218,3240,3242,3251,3253,3257,3261,3261,3294,3294,3296,3297,3313,3314,3333,3340,3342,3344,3346,3386,3389,3389,3406,3406,3424,3425,3450,3455,3461,3478,3482,3505,3507,3515,3517,3517,3520,3526,3585,3632,3634,3635,3648,3653,3654,3654,3713,3714,3716,3716,3719,3720,3722,3722,3725,3725,3732,3735,3737,3743,3745,3747,3749,3749,3751,3751,3754,3755,3757,3760,3762,3763,3773,3773,3776,3780,3782,3782,3804,3807,3840,3840,3904,3911,3913,3948,3976,3980,4096,4138,4159,4159,4176,4181,4186,4189,4193,4193,4197,4198,4206,4208,4213,4225,4238,4238,4256,4293,4295,4295,4301,4301,4304,4346,4348,4348,4349,4680,4682,4685,4688,4694,4696,4696,4698,4701,4704,4744,4746,4749,4752,4784,4786,4789,4792,4798,4800,4800,4802,4805,4808,4822,4824,4880,4882,4885,4888,4954,4992,5007,5024,5108,5121,5740,5743,5759,5761,5786,5792,5866,5870,5872,5888,5900,5902,5905,5920,5937,5952,5969,5984,5996,5998,6000,6016,6067,6103,6103,6108,6108,6176,6210,6211,6211,6212,6263,6272,6312,6314,6314,6320,6389,6400,6428,6480,6509,6512,6516,6528,6571,6593,6599,6656,6678,6688,6740,6823,6823,6917,6963,6981,6987,7043,7072,7086,7087,7098,7141,7168,7203,7245,7247,7258,7287,7288,7293,7401,7404,7406,7409,7413,7414,7424,7467,7468,7530,7531,7543,7544,7544,7545,7578,7579,7615,7680,7957,7960,7965,7968,8005,8008,8013,8016,8023,8025,8025,8027,8027,8029,8029,8031,8061,8064,8116,8118,8124,8126,8126,8130,8132,8134,8140,8144,8147,8150,8155,8160,8172,8178,8180,8182,8188,8305,8305,8319,8319,8336,8348,8450,8450,8455,8455,8458,8467,8469,8469,8472,8472,8473,8477,8484,8484,8486,8486,8488,8488,8490,8493,8494,8494,8495,8500,8501,8504,8505,8505,8508,8511,8517,8521,8526,8526,8544,8578,8579,8580,8581,8584,11264,11310,11312,11358,11360,11387,11388,11389,11390,11492,11499,11502,11506,11507,11520,11557,11559,11559,11565,11565,11568,11623,11631,11631,11648,11670,11680,11686,11688,11694,11696,11702,11704,11710,11712,11718,11720,11726,11728,11734,11736,11742,12293,12293,12294,12294,12295,12295,12321,12329,12337,12341,12344,12346,12347,12347,12348,12348,12353,12438,12443,12444,12445,12446,12447,12447,12449,12538,12540,12542,12543,12543,12549,12589,12593,12686,12704,12730,12784,12799,13312,19893,19968,40908,40960,40980,40981,40981,40982,42124,42192,42231,42232,42237,42240,42507,42508,42508,42512,42527,42538,42539,42560,42605,42606,42606,42623,42623,42624,42647,42656,42725,42726,42735,42775,42783,42786,42863,42864,42864,42865,42887,42888,42888,42891,42894,42896,42899,42912,42922,43000,43001,43002,43002,43003,43009,43011,43013,43015,43018,43020,43042,43072,43123,43138,43187,43250,43255,43259,43259,43274,43301,43312,43334,43360,43388,43396,43442,43471,43471,43520,43560,43584,43586,43588,43595,43616,43631,43632,43632,43633,43638,43642,43642,43648,43695,43697,43697,43701,43702,43705,43709,43712,43712,43714,43714,43739,43740,43741,43741,43744,43754,43762,43762,43763,43764,43777,43782,43785,43790,43793,43798,43808,43814,43816,43822,43968,44002,44032,55203,55216,55238,55243,55291,63744,64109,64112,64217,64256,64262,64275,64279,64285,64285,64287,64296,64298,64310,64312,64316,64318,64318,64320,64321,64323,64324,64326,64433,64467,64829,64848,64911,64914,64967,65008,65019,65136,65140,65142,65276,65313,65338,65345,65370,65382,65391,65392,65392,65393,65437,65438,65439,65440,65470,65474,65479,65482,65487,65490,65495,65498,65500,65536,65547,65549,65574,65576,65594,65596,65597,65599,65613,65616,65629,65664,65786,65856,65908,66176,66204,66208,66256,66304,66334,66352,66368,66369,66369,66370,66377,66378,66378,66432,66461,66464,66499,66504,66511,66513,66517,66560,66639,66640,66717,67584,67589,67592,67592,67594,67637,67639,67640,67644,67644,67647,67669,67840,67861,67872,67897,67968,68023,68030,68031,68096,68096,68112,68115,68117,68119,68121,68147,68192,68220,68352,68405,68416,68437,68448,68466,68608,68680,69635,69687,69763,69807,69840,69864,69891,69926,70019,70066,70081,70084,71296,71338,73728,74606,74752,74850,77824,78894,92160,92728,93952,94020,94032,94032,94099,94111,110592,110593,119808,119892,119894,119964,119966,119967,119970,119970,119973,119974,119977,119980,119982,119993,119995,119995,119997,120003,120005,120069,120071,120074,120077,120084,120086,120092,120094,120121,120123,120126,120128,120132,120134,120134,120138,120144,120146,120485,120488,120512,120514,120538,120540,120570,120572,120596,120598,120628,120630,120654,120656,120686,120688,120712,120714,120744,120746,120770,120772,120779,126464,126467,126469,126495,126497,126498,126500,126500,126503,126503,126505,126514,126516,126519,126521,126521,126523,126523,126530,126530,126535,126535,126537,126537,126539,126539,126541,126543,126545,126546,126548,126548,126551,126551,126553,126553,126555,126555,126557,126557,126559,126559,126561,126562,126564,126564,126567,126570,126572,126578,126580,126583,126585,126588,126590,126590,126592,126601,126603,126619,126625,126627,126629,126633,126635,126651,131072,173782,173824,177972,177984,178205,194560,195101 });
        derivedProps.put("ID_Continue", new int[] { 48,57,65,90,95,95,97,122,170,170,181,181,183,183,186,186,192,214,216,246,248,442,443,443,444,447,448,451,452,659,660,660,661,687,688,705,710,721,736,740,748,748,750,750,768,879,880,883,884,884,886,887,890,890,891,893,902,902,903,903,904,906,908,908,910,929,931,1013,1015,1153,1155,1159,1162,1319,1329,1366,1369,1369,1377,1415,1425,1469,1471,1471,1473,1474,1476,1477,1479,1479,1488,1514,1520,1522,1552,1562,1568,1599,1600,1600,1601,1610,1611,1631,1632,1641,1646,1647,1648,1648,1649,1747,1749,1749,1750,1756,1759,1764,1765,1766,1767,1768,1770,1773,1774,1775,1776,1785,1786,1788,1791,1791,1808,1808,1809,1809,1810,1839,1840,1866,1869,1957,1958,1968,1969,1969,1984,1993,1994,2026,2027,2035,2036,2037,2042,2042,2048,2069,2070,2073,2074,2074,2075,2083,2084,2084,2085,2087,2088,2088,2089,2093,2112,2136,2137,2139,2208,2208,2210,2220,2276,2302,2304,2306,2307,2307,2308,2361,2362,2362,2363,2363,2364,2364,2365,2365,2366,2368,2369,2376,2377,2380,2381,2381,2382,2383,2384,2384,2385,2391,2392,2401,2402,2403,2406,2415,2417,2417,2418,2423,2425,2431,2433,2433,2434,2435,2437,2444,2447,2448,2451,2472,2474,2480,2482,2482,2486,2489,2492,2492,2493,2493,2494,2496,2497,2500,2503,2504,2507,2508,2509,2509,2510,2510,2519,2519,2524,2525,2527,2529,2530,2531,2534,2543,2544,2545,2561,2562,2563,2563,2565,2570,2575,2576,2579,2600,2602,2608,2610,2611,2613,2614,2616,2617,2620,2620,2622,2624,2625,2626,2631,2632,2635,2637,2641,2641,2649,2652,2654,2654,2662,2671,2672,2673,2674,2676,2677,2677,2689,2690,2691,2691,2693,2701,2703,2705,2707,2728,2730,2736,2738,2739,2741,2745,2748,2748,2749,2749,2750,2752,2753,2757,2759,2760,2761,2761,2763,2764,2765,2765,2768,2768,2784,2785,2786,2787,2790,2799,2817,2817,2818,2819,2821,2828,2831,2832,2835,2856,2858,2864,2866,2867,2869,2873,2876,2876,2877,2877,2878,2878,2879,2879,2880,2880,2881,2884,2887,2888,2891,2892,2893,2893,2902,2902,2903,2903,2908,2909,2911,2913,2914,2915,2918,2927,2929,2929,2946,2946,2947,2947,2949,2954,2958,2960,2962,2965,2969,2970,2972,2972,2974,2975,2979,2980,2984,2986,2990,3001,3006,3007,3008,3008,3009,3010,3014,3016,3018,3020,3021,3021,3024,3024,3031,3031,3046,3055,3073,3075,3077,3084,3086,3088,3090,3112,3114,3123,3125,3129,3133,3133,3134,3136,3137,3140,3142,3144,3146,3149,3157,3158,3160,3161,3168,3169,3170,3171,3174,3183,3202,3203,3205,3212,3214,3216,3218,3240,3242,3251,3253,3257,3260,3260,3261,3261,3262,3262,3263,3263,3264,3268,3270,3270,3271,3272,3274,3275,3276,3277,3285,3286,3294,3294,3296,3297,3298,3299,3302,3311,3313,3314,3330,3331,3333,3340,3342,3344,3346,3386,3389,3389,3390,3392,3393,3396,3398,3400,3402,3404,3405,3405,3406,3406,3415,3415,3424,3425,3426,3427,3430,3439,3450,3455,3458,3459,3461,3478,3482,3505,3507,3515,3517,3517,3520,3526,3530,3530,3535,3537,3538,3540,3542,3542,3544,3551,3570,3571,3585,3632,3633,3633,3634,3635,3636,3642,3648,3653,3654,3654,3655,3662,3664,3673,3713,3714,3716,3716,3719,3720,3722,3722,3725,3725,3732,3735,3737,3743,3745,3747,3749,3749,3751,3751,3754,3755,3757,3760,3761,3761,3762,3763,3764,3769,3771,3772,3773,3773,3776,3780,3782,3782,3784,3789,3792,3801,3804,3807,3840,3840,3864,3865,3872,3881,3893,3893,3895,3895,3897,3897,3902,3903,3904,3911,3913,3948,3953,3966,3967,3967,3968,3972,3974,3975,3976,3980,3981,3991,3993,4028,4038,4038,4096,4138,4139,4140,4141,4144,4145,4145,4146,4151,4152,4152,4153,4154,4155,4156,4157,4158,4159,4159,4160,4169,4176,4181,4182,4183,4184,4185,4186,4189,4190,4192,4193,4193,4194,4196,4197,4198,4199,4205,4206,4208,4209,4212,4213,4225,4226,4226,4227,4228,4229,4230,4231,4236,4237,4237,4238,4238,4239,4239,4240,4249,4250,4252,4253,4253,4256,4293,4295,4295,4301,4301,4304,4346,4348,4348,4349,4680,4682,4685,4688,4694,4696,4696,4698,4701,4704,4744,4746,4749,4752,4784,4786,4789,4792,4798,4800,4800,4802,4805,4808,4822,4824,4880,4882,4885,4888,4954,4957,4959,4969,4977,4992,5007,5024,5108,5121,5740,5743,5759,5761,5786,5792,5866,5870,5872,5888,5900,5902,5905,5906,5908,5920,5937,5938,5940,5952,5969,5970,5971,5984,5996,5998,6000,6002,6003,6016,6067,6068,6069,6070,6070,6071,6077,6078,6085,6086,6086,6087,6088,6089,6099,6103,6103,6108,6108,6109,6109,6112,6121,6155,6157,6160,6169,6176,6210,6211,6211,6212,6263,6272,6312,6313,6313,6314,6314,6320,6389,6400,6428,6432,6434,6435,6438,6439,6440,6441,6443,6448,6449,6450,6450,6451,6456,6457,6459,6470,6479,6480,6509,6512,6516,6528,6571,6576,6592,6593,6599,6600,6601,6608,6617,6618,6618,6656,6678,6679,6680,6681,6683,6688,6740,6741,6741,6742,6742,6743,6743,6744,6750,6752,6752,6753,6753,6754,6754,6755,6756,6757,6764,6765,6770,6771,6780,6783,6783,6784,6793,6800,6809,6823,6823,6912,6915,6916,6916,6917,6963,6964,6964,6965,6965,6966,6970,6971,6971,6972,6972,6973,6977,6978,6978,6979,6980,6981,6987,6992,7001,7019,7027,7040,7041,7042,7042,7043,7072,7073,7073,7074,7077,7078,7079,7080,7081,7082,7082,7083,7083,7084,7085,7086,7087,7088,7097,7098,7141,7142,7142,7143,7143,7144,7145,7146,7148,7149,7149,7150,7150,7151,7153,7154,7155,7168,7203,7204,7211,7212,7219,7220,7221,7222,7223,7232,7241,7245,7247,7248,7257,7258,7287,7288,7293,7376,7378,7380,7392,7393,7393,7394,7400,7401,7404,7405,7405,7406,7409,7410,7411,7412,7412,7413,7414,7424,7467,7468,7530,7531,7543,7544,7544,7545,7578,7579,7615,7616,7654,7676,7679,7680,7957,7960,7965,7968,8005,8008,8013,8016,8023,8025,8025,8027,8027,8029,8029,8031,8061,8064,8116,8118,8124,8126,8126,8130,8132,8134,8140,8144,8147,8150,8155,8160,8172,8178,8180,8182,8188,8255,8256,8276,8276,8305,8305,8319,8319,8336,8348,8400,8412,8417,8417,8421,8432,8450,8450,8455,8455,8458,8467,8469,8469,8472,8472,8473,8477,8484,8484,8486,8486,8488,8488,8490,8493,8494,8494,8495,8500,8501,8504,8505,8505,8508,8511,8517,8521,8526,8526,8544,8578,8579,8580,8581,8584,11264,11310,11312,11358,11360,11387,11388,11389,11390,11492,11499,11502,11503,11505,11506,11507,11520,11557,11559,11559,11565,11565,11568,11623,11631,11631,11647,11647,11648,11670,11680,11686,11688,11694,11696,11702,11704,11710,11712,11718,11720,11726,11728,11734,11736,11742,11744,11775,12293,12293,12294,12294,12295,12295,12321,12329,12330,12333,12334,12335,12337,12341,12344,12346,12347,12347,12348,12348,12353,12438,12441,12442,12443,12444,12445,12446,12447,12447,12449,12538,12540,12542,12543,12543,12549,12589,12593,12686,12704,12730,12784,12799,13312,19893,19968,40908,40960,40980,40981,40981,40982,42124,42192,42231,42232,42237,42240,42507,42508,42508,42512,42527,42528,42537,42538,42539,42560,42605,42606,42606,42607,42607,42612,42621,42623,42623,42624,42647,42655,42655,42656,42725,42726,42735,42736,42737,42775,42783,42786,42863,42864,42864,42865,42887,42888,42888,42891,42894,42896,42899,42912,42922,43000,43001,43002,43002,43003,43009,43010,43010,43011,43013,43014,43014,43015,43018,43019,43019,43020,43042,43043,43044,43045,43046,43047,43047,43072,43123,43136,43137,43138,43187,43188,43203,43204,43204,43216,43225,43232,43249,43250,43255,43259,43259,43264,43273,43274,43301,43302,43309,43312,43334,43335,43345,43346,43347,43360,43388,43392,43394,43395,43395,43396,43442,43443,43443,43444,43445,43446,43449,43450,43451,43452,43452,43453,43456,43471,43471,43472,43481,43520,43560,43561,43566,43567,43568,43569,43570,43571,43572,43573,43574,43584,43586,43587,43587,43588,43595,43596,43596,43597,43597,43600,43609,43616,43631,43632,43632,43633,43638,43642,43642,43643,43643,43648,43695,43696,43696,43697,43697,43698,43700,43701,43702,43703,43704,43705,43709,43710,43711,43712,43712,43713,43713,43714,43714,43739,43740,43741,43741,43744,43754,43755,43755,43756,43757,43758,43759,43762,43762,43763,43764,43765,43765,43766,43766,43777,43782,43785,43790,43793,43798,43808,43814,43816,43822,43968,44002,44003,44004,44005,44005,44006,44007,44008,44008,44009,44010,44012,44012,44013,44013,44016,44025,44032,55203,55216,55238,55243,55291,63744,64109,64112,64217,64256,64262,64275,64279,64285,64285,64286,64286,64287,64296,64298,64310,64312,64316,64318,64318,64320,64321,64323,64324,64326,64433,64467,64829,64848,64911,64914,64967,65008,65019,65024,65039,65056,65062,65075,65076,65101,65103,65136,65140,65142,65276,65296,65305,65313,65338,65343,65343,65345,65370,65382,65391,65392,65392,65393,65437,65438,65439,65440,65470,65474,65479,65482,65487,65490,65495,65498,65500,65536,65547,65549,65574,65576,65594,65596,65597,65599,65613,65616,65629,65664,65786,65856,65908,66045,66045,66176,66204,66208,66256,66304,66334,66352,66368,66369,66369,66370,66377,66378,66378,66432,66461,66464,66499,66504,66511,66513,66517,66560,66639,66640,66717,66720,66729,67584,67589,67592,67592,67594,67637,67639,67640,67644,67644,67647,67669,67840,67861,67872,67897,67968,68023,68030,68031,68096,68096,68097,68099,68101,68102,68108,68111,68112,68115,68117,68119,68121,68147,68152,68154,68159,68159,68192,68220,68352,68405,68416,68437,68448,68466,68608,68680,69632,69632,69633,69633,69634,69634,69635,69687,69688,69702,69734,69743,69760,69761,69762,69762,69763,69807,69808,69810,69811,69814,69815,69816,69817,69818,69840,69864,69872,69881,69888,69890,69891,69926,69927,69931,69932,69932,69933,69940,69942,69951,70016,70017,70018,70018,70019,70066,70067,70069,70070,70078,70079,70080,70081,70084,70096,70105,71296,71338,71339,71339,71340,71340,71341,71341,71342,71343,71344,71349,71350,71350,71351,71351,71360,71369,73728,74606,74752,74850,77824,78894,92160,92728,93952,94020,94032,94032,94033,94078,94095,94098,94099,94111,110592,110593,119141,119142,119143,119145,119149,119154,119163,119170,119173,119179,119210,119213,119362,119364,119808,119892,119894,119964,119966,119967,119970,119970,119973,119974,119977,119980,119982,119993,119995,119995,119997,120003,120005,120069,120071,120074,120077,120084,120086,120092,120094,120121,120123,120126,120128,120132,120134,120134,120138,120144,120146,120485,120488,120512,120514,120538,120540,120570,120572,120596,120598,120628,120630,120654,120656,120686,120688,120712,120714,120744,120746,120770,120772,120779,120782,120831,126464,126467,126469,126495,126497,126498,126500,126500,126503,126503,126505,126514,126516,126519,126521,126521,126523,126523,126530,126530,126535,126535,126537,126537,126539,126539,126541,126543,126545,126546,126548,126548,126551,126551,126553,126553,126555,126555,126557,126557,126559,126559,126561,126562,126564,126564,126567,126570,126572,126578,126580,126583,126585,126588,126590,126590,126592,126601,126603,126619,126625,126627,126629,126633,126635,126651,131072,173782,173824,177972,177984,178205,194560,195101,917760,917999 });
    }
    public static long ischarprop(String propName, String target, long offset) {
        int iOffset = (int)offset;
        if (offset >= target.length())
            return 0;
        String check = target.codePointAt(iOffset) >= 65536
            ? target.substring(iOffset, iOffset + 2)
            : target.substring(iOffset, iOffset + 1);
        int[] derived = derivedProps.get(propName);
        if (derived != null) {
            /* It's one of the derived properties; see of the codepoint is
             * in it. */
            int cp = check.codePointAt(0);
            for (int i = 0; i < derived.length; i += 2)
                if (cp >= derived[i] && cp <= derived[i + 1])
                    return 1;
            return 0;
        }
        try {
            // This throws if we can't get the script name, meaning it's
            // not a script.
            Character.UnicodeScript script = Character.UnicodeScript.forName(propName);
            return Character.UnicodeScript.of(check.codePointAt(0)) == script ? 1 : 0;
        }
        catch (IllegalArgumentException e) {
            String canon = canonNames.get(propName.toLowerCase());
            if (canon != null)
                propName = canon;
            return check.matches("\\p{" + propName + "}") ? 1 : 0;
        }
    }

    public static String bitor_s(String a, String b) {
        int alength = a.length();
        int blength = b.length();
        int mlength = alength > blength ? alength : blength;
        StringBuilder r = new StringBuilder(mlength);
        int apos = 0;
        int bpos = 0;
        while (apos < alength || bpos < blength) {
           int cpa = apos < alength ? a.codePointAt(apos) : 0;
           int cpb = bpos < blength ? b.codePointAt(bpos) : 0;
           r.appendCodePoint(cpa | cpb);
           apos += Character.charCount(cpa);
           bpos += Character.charCount(cpb);
        }
        return r.toString();
    }

    public static String bitxor_s(String a, String b) {
        int alength = a.length();
        int blength = b.length();
        int mlength = alength > blength ? alength : blength;
        StringBuilder r = new StringBuilder(mlength);
        int apos = 0;
        int bpos = 0;
        while (apos < alength || bpos < blength) {
           int cpa = apos < alength ? a.codePointAt(apos) : 0;
           int cpb = bpos < blength ? b.codePointAt(bpos) : 0;
           r.appendCodePoint(cpa ^ cpb);
           apos += Character.charCount(cpa);
           bpos += Character.charCount(cpb);
        }
        return r.toString();
    }

    public static String bitand_s(String a, String b) {
        int alength = a.length();
        int blength = b.length();
        int mlength = alength > blength ? alength : blength;
        StringBuilder r = new StringBuilder(mlength);
        int apos = 0;
        int bpos = 0;
        while (apos < alength && bpos < blength) {
           int cpa = a.codePointAt(apos);
           int cpb = b.codePointAt(bpos);
           r.appendCodePoint(cpa & cpb);
           apos += Character.charCount(cpa);
           bpos += Character.charCount(cpb);
        }
        return r.toString();
    }

    /* serialization context related opcodes */
    public static String sha1(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest md = MessageDigest.getInstance("SHA1");

        byte[] inBytes = str.getBytes("UTF-8");
        byte[] outBytes = md.digest(inBytes);

        StringBuilder sb = new StringBuilder();
        for (byte b : outBytes) {
            sb.append(String.format("%02X", b));
        }
        return sb.toString();
    }
    public static SixModelObject createsc(String handle, ThreadContext tc) {
        if (tc.gc.scs.containsKey(handle))
            return tc.gc.scRefs.get(handle);

        SerializationContext sc = new SerializationContext(handle);
        tc.gc.scs.put(handle, sc);

        SixModelObject SCRef = tc.gc.SCRef;
        SCRefInstance ref = (SCRefInstance)SCRef.st.REPR.allocate(tc, SCRef.st);
        ref.referencedSC = sc;
        tc.gc.scRefs.put(handle, ref);

        return ref;
    }
    public static SixModelObject scsetobj(SixModelObject scRef, long idx, SixModelObject obj, ThreadContext tc) {
        if (scRef instanceof SCRefInstance) {
            SerializationContext sc = ((SCRefInstance)scRef).referencedSC;
            sc.addObject(obj, (int) idx);
            if (obj.st.sc == null) {
                sc.addSTable(obj.st);
                obj.st.sc = sc;
            }
            return obj;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "scsetobj can only operate on an SCRef");
        }
    }
    public static SixModelObject scsetcode(SixModelObject scRef, long idx, SixModelObject obj, ThreadContext tc) {
        if (scRef instanceof SCRefInstance) {
            if (obj instanceof CodeRef) {
                SerializationContext referencedSC = ((SCRefInstance)scRef).referencedSC;
                referencedSC.addCodeRef((CodeRef)obj, (int)idx);
                obj.sc = referencedSC;
                return obj;
            }
            else {
                throw ExceptionHandling.dieInternal(tc, "scsetcode can only store a CodeRef");
            }
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "scsetcode can only operate on an SCRef");
        }
    }
    public static SixModelObject scgetobj(SixModelObject scRef, long idx, ThreadContext tc) {
        if (scRef instanceof SCRefInstance) {
            return ((SCRefInstance)scRef).referencedSC.getObject((int)idx);
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "scgetobj can only operate on an SCRef");
        }
    }
    public static String scgethandle(SixModelObject scRef, ThreadContext tc) {
        if (scRef instanceof SCRefInstance) {
            return ((SCRefInstance)scRef).referencedSC.handle;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "scgethandle can only operate on an SCRef");
        }
    }
    public static String scgetdesc(SixModelObject scRef, ThreadContext tc) {
        if (scRef instanceof SCRefInstance) {
            return ((SCRefInstance)scRef).referencedSC.description;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "scgetdesc can only operate on an SCRef");
        }
    }
    public static long scgetobjidx(SixModelObject scRef, SixModelObject find, ThreadContext tc) {
        if (scRef instanceof SCRefInstance) {
             int idx = ((SCRefInstance)scRef).referencedSC.getObjectIndex(find);
             if (idx < 0)
                 throw ExceptionHandling.dieInternal(tc, "Object does not exist in this SC");
             return idx;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "scgetobjidx can only operate on an SCRef");
        }
    }
    public static String scsetdesc(SixModelObject scRef, String desc, ThreadContext tc) {
        if (scRef instanceof SCRefInstance) {
            ((SCRefInstance)scRef).referencedSC.description = desc;
            return desc;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "scsetdesc can only operate on an SCRef");
        }
    }
    public static long scobjcount(SixModelObject scRef, ThreadContext tc) {
        if (scRef instanceof SCRefInstance) {
            return ((SCRefInstance)scRef).referencedSC.objectCount();
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "scobjcount can only operate on an SCRef");
        }
    }
    public static SixModelObject setobjsc(SixModelObject obj, SixModelObject scRef, ThreadContext tc) {
        if (scRef instanceof SCRefInstance) {
            obj.sc = ((SCRefInstance)scRef).referencedSC;
            return obj;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "setobjsc requires an SCRef");
        }
    }
    public static SixModelObject getobjsc(SixModelObject obj, ThreadContext tc) {
        if (obj == null)
            return null;
        SerializationContext sc = obj.sc;
        if (sc == null)
            return null;
        if (!tc.gc.scRefs.containsKey(sc.handle)) {
            SixModelObject SCRef = tc.gc.SCRef;
            SCRefInstance ref = (SCRefInstance)SCRef.st.REPR.allocate(tc, SCRef.st);
            ref.referencedSC = sc;
            tc.gc.scRefs.put(sc.handle, ref);
        }
        return tc.gc.scRefs.get(sc.handle);
    }
    public static String serialize(SixModelObject scRef, SixModelObject sh, ThreadContext tc) {
        if (scRef instanceof SCRefInstance) {
            ArrayList<String> stringHeap = new ArrayList<String>();
            SerializationWriter sw = new SerializationWriter(tc,
                    ((SCRefInstance)scRef).referencedSC,
                    stringHeap);

            String serialized = sw.serialize();

            int index = 0;
            for (String s : stringHeap) {
                tc.native_s = s;
                sh.bind_pos_native(tc, index++);
            }

            return serialized;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "serialize was not passed a valid SCRef");
        }
    }
    public static String deserialize(String blob, SixModelObject scRef, SixModelObject sh, SixModelObject cr, SixModelObject conflict, ThreadContext tc) throws IOException {
        if (scRef instanceof SCRefInstance) {
            SerializationContext sc = ((SCRefInstance)scRef).referencedSC;

            String[] shArray = new String[(int)sh.elems(tc)];
            for (int i = 0; i < shArray.length; i++) {
                sh.at_pos_native(tc, i);
                shArray[i] = tc.native_s;
            }

            CodeRef[] crArray;
            int crCount;

            CompilationUnit cu = tc.curFrame.codeRef.staticInfo.compUnit;
            if (cr == null) {
                crArray = cu.qbidToCodeRef;
                crCount = cu.serializedCodeRefCount();
            } else {
                crArray = new CodeRef[(int)cr.elems(tc)];
                crCount = crArray.length;
                for (int i = 0; i < crArray.length; i++)
                    crArray[i] = (CodeRef)cr.at_pos_boxed(tc, i);
            }

            ByteBuffer binaryBlob;
            if (blob == null) {
                binaryBlob = ByteBuffer.wrap( LibraryLoader.readEverything( cu.getClass().getResourceAsStream( cu.getClass().getSimpleName() + ".serialized" ) ) );
            } else {
                binaryBlob = Base64.decode(blob);
            }

            SerializationReader sr = new SerializationReader(
                    tc, sc, shArray, crArray, crCount, binaryBlob);
            sr.deserialize();

            return blob;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "deserialize was not passed a valid SCRef");
        }
    }
    public static SixModelObject wval(String sc, long idx, ThreadContext tc) {
        return tc.gc.scs.get(sc).getObject((int)idx);
    }
    public static long scwbdisable(ThreadContext tc) {
        return ++tc.scwbDisableDepth;
    }
    public static long scwbenable(ThreadContext tc) {
        return --tc.scwbDisableDepth;
    }
    public static SixModelObject pushcompsc(SixModelObject sc, ThreadContext tc) {
        if (sc instanceof SCRefInstance) {
            if (tc.compilingSCs == null)
                tc.compilingSCs = new ArrayList<SCRefInstance>();
            tc.compilingSCs.add((SCRefInstance)sc);
            return sc;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "Can only push an SCRef with pushcompsc");
        }
    }
    public static SixModelObject popcompsc(ThreadContext tc) {
        if (tc.compilingSCs == null)
            throw ExceptionHandling.dieInternal(tc, "No current compiling SC.");
        int idx = tc.compilingSCs.size() - 1;
        SixModelObject result = tc.compilingSCs.get(idx);
        tc.compilingSCs.remove(idx);
        if (idx == 0)
            tc.compilingSCs = null;
        return result;
    }
    public static SixModelObject neverrepossess(SixModelObject obj, ThreadContext tc) {
        tc.gc.neverRepossess.put(obj, null);
        return obj;
    }
    public static SixModelObject scdisclaim(SixModelObject scRef, ThreadContext tc) {
        if (scRef instanceof SCRefInstance) {
            SerializationContext sc = ((SCRefInstance)scRef).referencedSC;
            sc.disclaimObjects();
            sc.disclaimSTables();
            sc.disclaimCodes();
            return scRef;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "scdisclaim was not passed a valid SCRef");
        }
    }

    /* SC write barriers (not really ops, but putting them here with the SC
     * related bits). */
    public static void scwbObject(ThreadContext tc, SixModelObject obj) {
        int cscSize = tc.compilingSCs == null ? 0 : tc.compilingSCs.size();
        if (cscSize == 0 || tc.scwbDisableDepth > 0)
            return;
        if (tc.gc.neverRepossess.containsKey(obj))
            return;

        /* See if the object is actually owned by another, and it's the
         * owner we need to repossess. */
        SixModelObject owner = obj.sc.owned_objects.get(obj);
        if (owner != null)
            obj = owner;

        SerializationContext compSC = tc.compilingSCs.get(cscSize - 1).referencedSC;
        if (obj.sc == null) { /* Probably disclaimed. */
            return;
        }
        else if (obj.sc != compSC) {
            compSC.repossessObject(obj.sc, obj);
            obj.sc = compSC;
        }
    }
    public static void scwbSTable(ThreadContext tc, STable st) {
        int cscSize = tc.compilingSCs == null ? 0 : tc.compilingSCs.size();
        if (cscSize == 0 || tc.scwbDisableDepth > 0)
            return;
        SerializationContext compSC = tc.compilingSCs.get(cscSize - 1).referencedSC;
        if (st.sc != compSC) {
            compSC.repossessSTable(st.sc, st);
            st.sc = compSC;
        }
    }

    /* bitwise operations. */
    public static long bitor_i(long valA, long valB) {
        return valA | valB;
    }

    public static long bitxor_i(long valA, long valB) {
        return valA ^ valB;
    }

    public static long bitand_i(long valA, long valB) {
        return valA & valB;
    }

    public static long bitshiftl_i(long valA, long valB) {
        return valA << valB;
    }

    public static long bitshiftr_i(long valA, long valB) {
        return valA >> valB;
    }

    public static long bitneg_i(long val) {
        return ~val;
    }

    /* Relational. */
    public static long cmp_i(long a, long b) {
        if (a < b) {
            return -1;
        } else if (a > b) {
            return 1;
        } else {
            return 0;
        }
    }
    public static long iseq_i(long a, long b) {
        return a == b ? 1 : 0;
    }
    public static long isne_i(long a, long b) {
        return a != b ? 1 : 0;
    }
    public static long islt_i(long a, long b) {
        return a < b ? 1 : 0;
    }
    public static long isle_i(long a, long b) {
        return a <= b ? 1 : 0;
    }
    public static long isgt_i(long a, long b) {
        return a > b ? 1 : 0;
    }
    public static long isge_i(long a, long b) {
        return a >= b ? 1 : 0;
    }

    public static long cmp_n(double a, double b) {
        if (a < b) {
            return -1;
        } else if (a > b) {
            return 1;
        } else {
            return 0;
        }
    }
    public static long iseq_n(double a, double b) {
        return a == b ? 1 : 0;
    }
    public static long isne_n(double a, double b) {
        return a != b ? 1 : 0;
    }
    public static long islt_n(double a, double b) {
        return a < b ? 1 : 0;
    }
    public static long isle_n(double a, double b) {
        return a <= b ? 1 : 0;
    }
    public static long isgt_n(double a, double b) {
        return a > b ? 1 : 0;
    }
    public static long isge_n(double a, double b) {
        return a >= b ? 1 : 0;
    }

    public static long cmp_s(String a, String b) {
        int result = a.compareTo(b);
        return result < 0 ? -1 : result > 0 ?  1 : 0;
    }
    public static long iseq_s(String a, String b) {
        return a.equals(b) ? 1 : 0;
    }
    public static long isne_s(String a, String b) {
        return a.equals(b) ? 0 : 1;
    }
    public static long islt_s(String a, String b) {
        return a.compareTo(b) < 0 ? 1 : 0;
    }
    public static long isle_s(String a, String b) {
        return a.compareTo(b) <= 0 ? 1 : 0;
    }
    public static long isgt_s(String a, String b) {
        return a.compareTo(b) > 0 ? 1 : 0;
    }
    public static long isge_s(String a, String b) {
        return a.compareTo(b) >= 0 ? 1 : 0;
    }

    /* Code object related. */
    public static SixModelObject takeclosure(SixModelObject code, ThreadContext tc) {
        if (code instanceof CodeRef) {
            CodeRef clone = (CodeRef)code.clone(tc);
            clone.outer = tc.curFrame;
            return clone;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "takeclosure can only be used with a CodeRef");
        }
    }
    public static SixModelObject getcodeobj(SixModelObject code, ThreadContext tc) {
        if (code instanceof CodeRef)
            return ((CodeRef)code).codeObject;
        else
            throw ExceptionHandling.dieInternal(tc, "getcodeobj can only be used with a CodeRef");
    }
    public static SixModelObject setcodeobj(SixModelObject code, SixModelObject obj, ThreadContext tc) {
        if (code instanceof CodeRef) {
            ((CodeRef)code).codeObject = obj;
            return code;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "setcodeobj can only be used with a CodeRef");
        }
    }
    public static String getcodename(SixModelObject code, ThreadContext tc) {
        if (code instanceof CodeRef)
            return ((CodeRef)code).name;
        else
            throw ExceptionHandling.dieInternal(tc, "getcodename can only be used with a CodeRef");
    }
    public static SixModelObject setcodename(SixModelObject code, String name, ThreadContext tc) {
        if (code instanceof CodeRef) {
            ((CodeRef)code).name = name;
            return code;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "setcodename can only be used with a CodeRef");
        }
    }
    public static String getcodecuid(SixModelObject code, ThreadContext tc) {
        if (code instanceof CodeRef)
            return ((CodeRef)code).staticInfo.uniqueId;
        else
            throw ExceptionHandling.dieInternal(tc, "getcodename can only be used with a CodeRef");
    }
    public static SixModelObject forceouterctx(SixModelObject code, SixModelObject ctx, ThreadContext tc) {
        if (!(code instanceof CodeRef))
            throw ExceptionHandling.dieInternal(tc, "forceouterctx first operand must be a CodeRef");
        if (!(ctx instanceof ContextRefInstance))
            throw ExceptionHandling.dieInternal(tc, "forceouterctx second operand must be a ContextRef");
        ((CodeRef)code).outer = ((ContextRefInstance)ctx).context;
        return code;
    }
    public static SixModelObject freshcoderef(SixModelObject code, ThreadContext tc) {
        if (!(code instanceof CodeRef))
            throw ExceptionHandling.dieInternal(tc, "freshcoderef must be used on a CodeRef");
        CodeRef clone = (CodeRef)code.clone(tc);
        clone.staticInfo = clone.staticInfo.clone();
        clone.staticInfo.staticCode = clone;
        return clone;
    }
    public static SixModelObject markcodestatic(SixModelObject code, ThreadContext tc) {
        if (!(code instanceof CodeRef))
            throw ExceptionHandling.dieInternal(tc, "markcodestatic must be used on a CodeRef");
        ((CodeRef)code).isStaticCodeRef = true;
        return code;
    }
    public static SixModelObject markcodestub(SixModelObject code, ThreadContext tc) {
        if (!(code instanceof CodeRef))
            throw ExceptionHandling.dieInternal(tc, "markcodestub must be used on a CodeRef");
        ((CodeRef)code).isCompilerStub = true;
        return code;
    }
    public static SixModelObject getstaticcode(SixModelObject code, ThreadContext tc) {
        if (code instanceof CodeRef)
            return ((CodeRef)code).staticInfo.staticCode;
        else
            throw ExceptionHandling.dieInternal(tc, "getstaticcode can only be used with a CodeRef");
    }
    public static void takedispatcher(int lexIdx, ThreadContext tc) {
        if (tc.currentDispatcher != null) {
            tc.curFrame.oLex[lexIdx] = tc.currentDispatcher;
            tc.currentDispatcher = null;
        }
    }

    /* process related opcodes */
    public static long exit(final long status, ThreadContext tc) {
        tc.gc.exit((int) status);
        return status;
    }

    public static double sleep(final double seconds) {
        // Is this really the right behavior, i.e., swallowing all
        // InterruptedExceptions?  As far as I can tell the original
        // nqp::sleep could not be interrupted, so that behavior is
        // duplicated here, but that doesn't mean it's the right thing
        // to do on the JVM...

        long now = System.currentTimeMillis();

        final long awake = now + (long) (seconds * 1000);

        while ((now = System.currentTimeMillis()) < awake) {
            long millis = awake - now;
            try {
                Thread.sleep(millis);
            } catch(InterruptedException e) {
                // swallow
            }
        }

        return seconds;
    }

    public static SixModelObject getenvhash(ThreadContext tc) {
        SixModelObject hashType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.hashType;
        SixModelObject strType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strBoxType;
        SixModelObject res = hashType.st.REPR.allocate(tc, hashType.st);

        Map<String, String> env = System.getenv();
        for (String envName : env.keySet())
            res.bind_key_boxed(tc, envName, box_s(env.get(envName), strType, tc));

        return res;
    }

    public static long getpid(ThreadContext tc) {
        /* Questionably portable; see:
         * http://boxysystems.com/index.php/java-tip-find-process-id-of-running-java-process/
         */
        try {
            java.lang.management.RuntimeMXBean runtime = java.lang.management.ManagementFactory.getRuntimeMXBean();
            Field jvm = runtime.getClass().getDeclaredField("jvm");
            jvm.setAccessible(true);
            Object mgmt = jvm.get(runtime);
            Method pid_method = mgmt.getClass().getDeclaredMethod("getProcessId");
            pid_method.setAccessible(true);
            return (Integer)pid_method.invoke(mgmt);
        }
        catch (Throwable t) {
            throw ExceptionHandling.dieInternal(tc, t);
        }
    }

    public static SixModelObject jvmgetproperties(ThreadContext tc) {
        SixModelObject hashType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.hashType;
        SixModelObject strType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strBoxType;
        SixModelObject res = hashType.st.REPR.allocate(tc, hashType.st);

        Properties env = System.getProperties();
        for (String envName : env.stringPropertyNames()) {
            String propVal = env.getProperty(envName);
            if (envName.equals("os.name")) {
                // Normalize OS name (some cases likely missing).
                String pvlc = propVal.toLowerCase();
                if (pvlc.indexOf("win") >= 0)
                    propVal = "MSWin32";
                else if (pvlc.indexOf("mac os x") >= 0)
                    propVal = "darwin";
            }
            res.bind_key_boxed(tc, envName, box_s(propVal, strType, tc));
        }

        return res;
    }

    /* Thread related. */
    static class CodeRunnable implements Runnable {
        private GlobalContext gc;
        private SixModelObject vmthread;
        private SixModelObject code;

        public CodeRunnable(GlobalContext gc, SixModelObject vmthread, SixModelObject code) {
            this.gc = gc;
            this.vmthread = vmthread;
            this.code = code;
        }

        public void run() {
            ThreadContext tc = gc.getCurrentThreadContext();
            tc.VMThread = vmthread;
            invokeArgless(tc, code);
        }
    }
    public static SixModelObject newthread(SixModelObject code, long appLifetime, ThreadContext tc) {
        SixModelObject thread = tc.gc.Thread.st.REPR.allocate(tc, tc.gc.Thread.st);
        ((VMThreadInstance)thread).thread = new Thread(new CodeRunnable(tc.gc, thread, code));
        ((VMThreadInstance)thread).thread.setDaemon(appLifetime != 0);
        return thread;
    }

    public static SixModelObject threadrun(SixModelObject thread, ThreadContext tc) {
        if (thread instanceof VMThreadInstance)
            ((VMThreadInstance)thread).thread.start();
        else
            throw ExceptionHandling.dieInternal(tc, "threadrun requires an operand with REPR VMThread");
        return thread;
    }

    public static SixModelObject threadjoin(SixModelObject thread, ThreadContext tc) {
        if (thread instanceof VMThreadInstance) {
            try {
                ((VMThreadInstance)thread).thread.join();
            }
            catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "threadjoin requires an operand with REPR VMThread");
        }
        return thread;
    }

    public static long threadid(SixModelObject thread, ThreadContext tc) {
        if (thread instanceof VMThreadInstance)
            return ((VMThreadInstance)thread).thread.getId();
        else
            throw ExceptionHandling.dieInternal(tc, "threadid requires an operand with REPR VMThread");
    }

    public static long threadyield(ThreadContext tc) {
        Thread.yield();
        return 0;
    }

    public static SixModelObject currentthread(ThreadContext tc) {
        SixModelObject thread = tc.VMThread;
        if (thread == null) {
            thread = tc.gc.Thread.st.REPR.allocate(tc, tc.gc.Thread.st);
            ((VMThreadInstance)thread).thread = Thread.currentThread();
            tc.VMThread = thread;
        }
        return thread;
    }

    public static SixModelObject lock(SixModelObject lock, ThreadContext tc) {
        if (lock instanceof ReentrantMutexInstance)
            ((ReentrantMutexInstance)lock).lock.lock();
        else
            throw ExceptionHandling.dieInternal(tc, "lock requires an operand with REPR ReentrantMutex");
        return lock;
    }

    public static SixModelObject unlock(SixModelObject lock, ThreadContext tc) {
        if (lock instanceof ReentrantMutexInstance)
            ((ReentrantMutexInstance)lock).lock.unlock();
        else
            throw ExceptionHandling.dieInternal(tc, "unlock requires an operand with REPR ReentrantMutex");
        return lock;
    }

    public static SixModelObject getlockcondvar(SixModelObject lock, SixModelObject type, ThreadContext tc) {
        if (!(lock instanceof ReentrantMutexInstance))
            throw ExceptionHandling.dieInternal(tc, "getlockcondvar requires an operand with REPR ReentrantMutex");
        if (!(type.st.REPR instanceof ConditionVariable))
            throw ExceptionHandling.dieInternal(tc, "getlockcondvar requires a result type with REPR ConditionVariable");
        ConditionVariableInstance result = new ConditionVariableInstance();
        result.st = type.st;
        result.condvar = ((ReentrantMutexInstance)lock).lock.newCondition();
        return result;
    }

    public static SixModelObject condwait(SixModelObject cv, ThreadContext tc) throws InterruptedException {
        if (cv instanceof ConditionVariableInstance)
            ((ConditionVariableInstance)cv).condvar.await();
        else
            throw ExceptionHandling.dieInternal(tc, "condwait requires an operand with REPR ConditionVariable");
        return cv;
    }

    public static SixModelObject condsignalone(SixModelObject cv, ThreadContext tc) {
        if (cv instanceof ConditionVariableInstance)
            try {
                ((ConditionVariableInstance)cv).condvar.signal();
            } catch (IllegalMonitorStateException imse) {
                throw ExceptionHandling.dieInternal(tc, "condsignalone requires the lock corresponding to the condition variable to be locked");
            }
        else
            throw ExceptionHandling.dieInternal(tc, "condsignalone requires an operand with REPR ConditionVariable");
        return cv;
    }

    public static SixModelObject condsignalall(SixModelObject cv, ThreadContext tc) {
        if (cv instanceof ConditionVariableInstance)
            try {
                ((ConditionVariableInstance)cv).condvar.signalAll();
            } catch (IllegalMonitorStateException imse) {
                throw ExceptionHandling.dieInternal(tc, "condsignalall requires the lock corresponding to the condition variable to be locked");
            }
        else
            throw ExceptionHandling.dieInternal(tc, "condsignalall requires an operand with REPR ConditionVariable");
        return cv;
    }

    public static SixModelObject semacquire(SixModelObject sem, ThreadContext tc) {
        try {
            if (sem instanceof SemaphoreInstance)
                ((SemaphoreInstance)sem).sem.acquire();
            else
                throw ExceptionHandling.dieInternal(tc, "semacquire requires an operand with REPR Semaphore");
        } catch (InterruptedException e) {
            throw ExceptionHandling.dieInternal(tc, "semacquire was interrupted");
        }
        return sem;
    }

    public static long semtryacquire(SixModelObject sem, ThreadContext tc) {
        boolean result;
        if (sem instanceof SemaphoreInstance)
            result = ((SemaphoreInstance)sem).sem.tryAcquire();
        else
            throw ExceptionHandling.dieInternal(tc, "semtryacquire requires an operand with REPR Semaphore");

        return result ? 1 : 0;
    }

    public static SixModelObject semrelease(SixModelObject sem, ThreadContext tc) {
        if (sem instanceof SemaphoreInstance)
            ((SemaphoreInstance)sem).sem.release();
        else
            throw ExceptionHandling.dieInternal(tc, "semrelease requires an operand with REPR Semaphore");
        return sem;
    }

    public static SixModelObject queuepoll(SixModelObject queue, ThreadContext tc) {
        if (queue instanceof ConcBlockingQueueInstance)
            return ((ConcBlockingQueueInstance)queue).queue.poll();
        else
            throw ExceptionHandling.dieInternal(tc, "queuepoll requires an operand with REPR ConcBlockingQueue");
    }

    /* Asynchronousy operations. */

    private static class AddToQueueTimerTask extends TimerTask implements IIOCancelable {
        private LinkedBlockingQueue<SixModelObject> queue;
        private SixModelObject schedulee;

        public AddToQueueTimerTask(LinkedBlockingQueue<SixModelObject> queue, SixModelObject schedulee) {
            this.queue = queue;
            this.schedulee = schedulee;
        }

        public void run() {
            queue.add(schedulee);
        }

        public void cancel(ThreadContext tc) {
            cancel();
        }
    }
    public static SixModelObject timer(SixModelObject queue, SixModelObject schedulee,
            long timeout, long repeat, SixModelObject handle_type, ThreadContext tc) {
        if (!(queue instanceof ConcBlockingQueueInstance))
            throw ExceptionHandling.dieInternal(tc, "timer's first argument should have REPR ConcBlockingQueue");
        AddToQueueTimerTask tt = new AddToQueueTimerTask(((ConcBlockingQueueInstance)queue).queue, schedulee);
        if (repeat > 0)
            tc.gc.timer.scheduleAtFixedRate(tt, timeout, repeat);
        else
            tc.gc.timer.schedule(tt, timeout);
        /* XXX TODO: cancellation handle. */
        AsyncTaskInstance handle = (AsyncTaskInstance) handle_type.st.REPR.allocate(tc, handle_type.st);
        handle.handle = tt;
        return handle;
    }
    public static SixModelObject cancel(SixModelObject handle, ThreadContext tc) {
        AsyncTaskInstance task = (AsyncTaskInstance) handle;
        if (task.handle instanceof IIOCancelable) {
            ((IIOCancelable)task.handle).cancel(tc);
        } else {
            throw ExceptionHandling.dieInternal(tc, "This handle does not support cancel");
        }
        return handle;
    }

    /* Exception related. */
    public static void die_s_c(String msg, ThreadContext tc) {
        // Construct exception object.
        SixModelObject exType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.exceptionType;
        VMExceptionInstance exObj = (VMExceptionInstance)exType.st.REPR.allocate(tc, exType.st);
        exObj.message = msg;
        exObj.category = ExceptionHandling.EX_CAT_CATCH;
        exObj.origin = tc.curFrame;
        exObj.nativeTrace = (new Throwable()).getStackTrace();
        ExceptionHandling.handlerDynamic(tc, ExceptionHandling.EX_CAT_CATCH, true, exObj);
    }
    public static void throwcatdyn_c(long category, ThreadContext tc) {
        ExceptionHandling.handlerDynamic(tc, category, false, null);
    }
    public static SixModelObject exception(ThreadContext tc) {
        int numHandlers = tc.handlers.size();
        if (numHandlers > 0)
            return tc.handlers.get(numHandlers - 1).exObj;
        else
            throw ExceptionHandling.dieInternal(tc, "Cannot get exception object ouside of exception handler");
    }
    public static long getextype(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof VMExceptionInstance)
            return ((VMExceptionInstance)obj).category;
        else
            throw ExceptionHandling.dieInternal(tc, "getextype needs an object with VMException representation");
    }
    public static long setextype(SixModelObject obj, long category, ThreadContext tc) {
        if (obj instanceof VMExceptionInstance) {
            ((VMExceptionInstance)obj).category = category;
            return category;
        }
        else
            throw ExceptionHandling.dieInternal(tc, "setextype needs an object with VMException representation");
    }
    public static String getmessage(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof VMExceptionInstance) {
            String msg = ((VMExceptionInstance)obj).message;
            return msg == null ? "Died" : msg;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "getmessage needs an object with VMException representation");
        }
    }
    public static String setmessage(SixModelObject obj, String msg, ThreadContext tc) {
        if (obj instanceof VMExceptionInstance) {
            ((VMExceptionInstance)obj).message = msg;
            return msg;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "setmessage needs an object with VMException representation");
        }
    }
    public static SixModelObject getpayload(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof VMExceptionInstance)
            return ((VMExceptionInstance)obj).payload;
        else
            throw ExceptionHandling.dieInternal(tc, "getpayload needs an object with VMException representation");
    }
    public static SixModelObject setpayload(SixModelObject obj, SixModelObject payload, ThreadContext tc) {
        if (obj instanceof VMExceptionInstance) {
            ((VMExceptionInstance)obj).payload = payload;
            return payload;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "setpayload needs an object with VMException representation");
        }
    }
    public static SixModelObject newexception(ThreadContext tc) {
        SixModelObject exType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.exceptionType;
        SixModelObject exObj = (VMExceptionInstance)exType.st.REPR.allocate(tc, exType.st);
        return exObj;
    }
    public static SixModelObject backtracestrings(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof VMExceptionInstance) {
            SixModelObject Array = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.listType;
            SixModelObject Str = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strBoxType;
            SixModelObject result = Array.st.REPR.allocate(tc, Array.st);

            List<String> lines = ExceptionHandling.backtraceStrings(((VMExceptionInstance)obj));
            for (int i = 0; i < lines.size(); i++)
                result.bind_pos_boxed(tc, i, box_s(lines.get(i), Str, tc));

            return result;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "backtracestring needs an object with VMException representation");
        }
    }
    public static SixModelObject backtrace(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof VMExceptionInstance) {
            SixModelObject Array = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.listType;
            SixModelObject Hash = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.hashType;
            SixModelObject Str = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strBoxType;
            SixModelObject Int = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.intBoxType;
            SixModelObject result = Array.st.REPR.allocate(tc, Array.st);

            for (ExceptionHandling.TraceElement te : ExceptionHandling.backtrace(((VMExceptionInstance)obj))) {
                if (te.frame.codeRef.staticInfo.isThunk)
                    continue;
                SixModelObject annots = Hash.st.REPR.allocate(tc, Hash.st);
                if (te.file != null) annots.bind_key_boxed(tc, "file", box_s(te.file, Str, tc));
                if (te.line >= 0) annots.bind_key_boxed(tc, "line", box_i(te.line, Int, tc));
                SixModelObject row = Hash.st.REPR.allocate(tc, Hash.st);
                row.bind_key_boxed(tc, "sub", te.frame.codeRef);
                row.bind_key_boxed(tc, "annotations", annots);
                result.push_boxed(tc, row);
            }

            return result;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "backtrace needs an object with VMException representation");
        }
    }
    public static void _throw_c(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof VMExceptionInstance) {
            VMExceptionInstance ex = (VMExceptionInstance)obj;
            ex.origin = tc.curFrame;
            ex.nativeTrace = (new Throwable()).getStackTrace();
            ExceptionHandling.handlerDynamic(tc, ex.category, false, ex);
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "throw needs an object with VMException representation");
        }
    }
    public static void _is_same_label(UnwindException uwex, SixModelObject where, long outerHandler, ThreadContext tc) {
        if ((uwex.category & ExceptionHandling.EX_CAT_LABELED) == 0)
            return;

        if (uwex instanceof UnwindException) {
            if (uwex.payload.hashCode() == where.hashCode())
                return;
            VMExceptionInstance vmex = (VMExceptionInstance)newexception(tc);
            /* We're moving to the outside so we do not rethrow to us. */
            vmex.category = uwex.category;
            vmex.payload = uwex.payload;
            tc.curFrame.curHandler = outerHandler;
            ExceptionHandling.handlerDynamic(tc, vmex.category, false, vmex);
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "_is_same_label needs an object with UnwindException representation");
        }
    }
    public static void _rethrow_label(UnwindException uwex, long outerHandler, ThreadContext tc) {
        if ((uwex.category & ExceptionHandling.EX_CAT_LABELED) == 0)
            return;

        if (uwex instanceof UnwindException) {
            /* We're moving to the outside so we do not rethrow to us. */
            VMExceptionInstance vmex = (VMExceptionInstance)newexception(tc);
            vmex.category = uwex.category;
            vmex.payload = uwex.payload;
            tc.curFrame.curHandler = outerHandler;
            ExceptionHandling.handlerDynamic(tc, vmex.category, false, vmex);
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "_is_same_label needs an object with UnwindException representation");
        }
    }
    public static void rethrow_c(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof VMExceptionInstance) {
            VMExceptionInstance ex = (VMExceptionInstance)obj;
            ExceptionHandling.handlerDynamic(tc, ex.category, false, ex);
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "rethrow needs an object with VMException representation");
        }
    }
    private static ResumeException theResumer = new ResumeException();
    public static SixModelObject resume(SixModelObject obj, ThreadContext tc) {
        throw theResumer;
    }

    /* compatibility shims for next bootstrap TODO */
    public static String die_s(String msg, ThreadContext tc) {
        try {
            die_s_c(msg, tc);
        } catch (SaveStackException sse) {
            ExceptionHandling.dieInternal(tc, "control operator crossed continuation barrier");
        }
        return result_s(tc.curFrame);
    }
    public static SixModelObject throwcatdyn(long category, ThreadContext tc) {
        try {
            throwcatdyn_c(category, tc);
        } catch (SaveStackException sse) {
            ExceptionHandling.dieInternal(tc, "control operator crossed continuation barrier");
        }
        return result_o(tc.curFrame);
    }
    public static SixModelObject _throw(SixModelObject obj, ThreadContext tc) {
        try {
            _throw_c(obj, tc);
        } catch (SaveStackException sse) {
            ExceptionHandling.dieInternal(tc, "control operator crossed continuation barrier");
        }
        return result_o(tc.curFrame);
    }
    public static SixModelObject rethrow(SixModelObject obj, ThreadContext tc) {
        try {
            rethrow_c(obj, tc);
        } catch (SaveStackException sse) {
            ExceptionHandling.dieInternal(tc, "control operator crossed continuation barrier");
        }
        return result_o(tc.curFrame);
    }

    /* HLL configuration and compiler related options. */
    public static SixModelObject sethllconfig(String language, SixModelObject configHash, ThreadContext tc) {
        HLLConfig config = tc.gc.getHLLConfigFor(language);
        if (configHash.exists_key(tc, "int_box") != 0)
            config.intBoxType = configHash.at_key_boxed(tc, "int_box");
        if (configHash.exists_key(tc, "num_box") != 0)
            config.numBoxType = configHash.at_key_boxed(tc, "num_box");
        if (configHash.exists_key(tc, "str_box") != 0)
            config.strBoxType = configHash.at_key_boxed(tc, "str_box");
        if (configHash.exists_key(tc, "list") != 0)
            config.listType = configHash.at_key_boxed(tc, "list");
        if (configHash.exists_key(tc, "hash") != 0)
            config.hashType = configHash.at_key_boxed(tc, "hash");
        if (configHash.exists_key(tc, "slurpy_array") != 0)
            config.slurpyArrayType = configHash.at_key_boxed(tc, "slurpy_array");
        if (configHash.exists_key(tc, "slurpy_hash") != 0)
            config.slurpyHashType = configHash.at_key_boxed(tc, "slurpy_hash");
        if (configHash.exists_key(tc, "array_iter") != 0)
            config.arrayIteratorType = configHash.at_key_boxed(tc, "array_iter");
        if (configHash.exists_key(tc, "hash_iter") != 0)
            config.hashIteratorType = configHash.at_key_boxed(tc, "hash_iter");
        if (configHash.exists_key(tc, "foreign_type_int") != 0)
            config.foreignTypeInt = configHash.at_key_boxed(tc, "foreign_type_int");
        if (configHash.exists_key(tc, "foreign_type_num") != 0)
            config.foreignTypeNum = configHash.at_key_boxed(tc, "foreign_type_num");
        if (configHash.exists_key(tc, "foreign_type_str") != 0)
            config.foreignTypeStr = configHash.at_key_boxed(tc, "foreign_type_str");
        if (configHash.exists_key(tc, "foreign_transform_int") != 0)
            config.foreignTransformInt = configHash.at_key_boxed(tc, "foreign_transform_int");
        if (configHash.exists_key(tc, "foreign_transform_str") != 0)
            config.foreignTransformNum = configHash.at_key_boxed(tc, "foreign_transform_num");
        if (configHash.exists_key(tc, "foreign_transform_num") != 0)
            config.foreignTransformStr = configHash.at_key_boxed(tc, "foreign_transform_str");
        if (configHash.exists_key(tc, "foreign_transform_array") != 0)
            config.foreignTransformArray = configHash.at_key_boxed(tc, "foreign_transform_array");
        if (configHash.exists_key(tc, "foreign_transform_hash") != 0)
            config.foreignTransformHash = configHash.at_key_boxed(tc, "foreign_transform_hash");
        if (configHash.exists_key(tc, "foreign_transform_code") != 0)
            config.foreignTransformCode = configHash.at_key_boxed(tc, "foreign_transform_code");
        if (configHash.exists_key(tc, "foreign_transform_any") != 0)
            config.foreignTransformAny = configHash.at_key_boxed(tc, "foreign_transform_any");
        if (configHash.exists_key(tc, "null_value") != 0)
            config.nullValue = configHash.at_key_boxed(tc, "null_value");
        if (configHash.exists_key(tc, "exit_handler") != 0)
            config.exitHandler = configHash.at_key_boxed(tc, "exit_handler");
        if (configHash.exists_key(tc, "int_lex_ref") != 0)
            config.intLexRef = configHash.at_key_boxed(tc, "int_lex_ref");
        if (configHash.exists_key(tc, "num_lex_ref") != 0)
            config.numLexRef = configHash.at_key_boxed(tc, "num_lex_ref");
        if (configHash.exists_key(tc, "str_lex_ref") != 0)
            config.strLexRef = configHash.at_key_boxed(tc, "str_lex_ref");
        if (configHash.exists_key(tc, "int_attr_ref") != 0)
            config.intAttrRef = configHash.at_key_boxed(tc, "int_attr_ref");
        if (configHash.exists_key(tc, "num_attr_ref") != 0)
            config.numAttrRef = configHash.at_key_boxed(tc, "num_attr_ref");
        if (configHash.exists_key(tc, "str_attr_ref") != 0)
            config.strAttrRef = configHash.at_key_boxed(tc, "str_attr_ref");
        if (configHash.exists_key(tc, "int_pos_ref") != 0)
            config.intPosRef = configHash.at_key_boxed(tc, "int_pos_ref");
        if (configHash.exists_key(tc, "num_pos_ref") != 0)
            config.numPosRef = configHash.at_key_boxed(tc, "num_pos_ref");
        if (configHash.exists_key(tc, "str_pos_ref") != 0)
            config.strPosRef = configHash.at_key_boxed(tc, "str_pos_ref");
        return configHash;
    }
    public static SixModelObject getcomp(String name, ThreadContext tc) {
        return tc.gc.compilerRegistry.get(name);
    }
    public static SixModelObject bindcomp(String name, SixModelObject comp, ThreadContext tc) {
        tc.gc.compilerRegistry.put(name, comp);
        return comp;
    }
    public static SixModelObject getcurhllsym(String name, ThreadContext tc) {
        String hllName = tc.curFrame.codeRef.staticInfo.compUnit.hllName();
        HashMap<String, SixModelObject> hllSyms = tc.gc.hllSyms.get(hllName);
        return hllSyms == null ? null : hllSyms.get(name);
    }
    public static SixModelObject bindcurhllsym(String name, SixModelObject value, ThreadContext tc) {
        String hllName = tc.curFrame.codeRef.staticInfo.compUnit.hllName();
        HashMap<String, SixModelObject> hllSyms = tc.gc.hllSyms.get(hllName);
        if (hllSyms == null) {
            hllSyms = new HashMap<String, SixModelObject>();
            tc.gc.hllSyms.put(hllName, hllSyms);
        }
        hllSyms.put(name, value);
        return value;
    }
    public static SixModelObject gethllsym(String hllName, String name, ThreadContext tc) {
        HashMap<String, SixModelObject> hllSyms = tc.gc.hllSyms.get(hllName);
        return hllSyms == null ? null : hllSyms.get(name);
    }
    public static SixModelObject bindhllsym(String hllName, String name, SixModelObject value, ThreadContext tc) {
        HashMap<String, SixModelObject> hllSyms = tc.gc.hllSyms.get(hllName);
        if (hllSyms == null) {
            hllSyms = new HashMap<String, SixModelObject>();
            tc.gc.hllSyms.put(hllName, hllSyms);
        }
        hllSyms.put(name, value);
        return value;
    }
    public static String loadbytecode(String filename, ThreadContext tc) {
        new LibraryLoader().load(tc, filename);
        return filename;
    }
    public static SixModelObject settypehll(SixModelObject type, String language, ThreadContext tc) {
        type.st.hllOwner = tc.gc.getHLLConfigFor(language);
        return type;
    }
    public static SixModelObject settypehllrole(SixModelObject type, long role, ThreadContext tc) {
        type.st.hllRole = role;
        return type;
    }
    public static SixModelObject hllize(SixModelObject obj, ThreadContext tc) {
        HLLConfig wanted = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
        if (obj != null && obj.st.hllOwner == wanted)
            return obj;
        else
            return hllizeInternal(obj, wanted, tc);
    }
    public static SixModelObject hllizefor(SixModelObject obj, String language, ThreadContext tc) {
        HLLConfig wanted = tc.gc.getHLLConfigFor(language);
        if (obj != null && obj.st.hllOwner == wanted)
            return obj;
        else
            return hllizeInternal(obj, wanted, tc);
    }
    private static SixModelObject hllizeInternal(SixModelObject obj, HLLConfig wanted, ThreadContext tc) {
        /* Map nulls to the language's designated null value. */
        if (obj == null)
            return wanted.nullValue;

        /* Go by what role the object plays. */
        switch ((int)obj.st.hllRole) {
            case HLLConfig.ROLE_INT:
                if (wanted.foreignTypeInt != null) {
                    return box_i(obj.get_int(tc), wanted.foreignTypeInt, tc);
                }
                else if (wanted.foreignTransformInt != null) {
                    throw new RuntimeException("foreign_transform_int NYI");
                }
                else {
                    return obj;
                }
            case HLLConfig.ROLE_NUM:
                if (wanted.foreignTypeNum != null) {
                    return box_n(obj.get_num(tc), wanted.foreignTypeNum, tc);
                }
                else if (wanted.foreignTransformNum != null) {
                    throw new RuntimeException("foreign_transform_num NYI");
                }
                else {
                    return obj;
                }
            case HLLConfig.ROLE_STR:
                if (wanted.foreignTypeStr != null) {
                    return box_s(obj.get_str(tc), wanted.foreignTypeStr, tc);
                }
                else if (wanted.foreignTransformStr != null) {
                    throw new RuntimeException("foreign_transform_str NYI");
                }
                else {
                    return obj;
                }
            case HLLConfig.ROLE_ARRAY:
                if (wanted.foreignTransformArray != null) {
                    invokeDirect(tc, wanted.foreignTransformArray,
                        invocantCallSite, new Object[] { obj });
                    return result_o(tc.curFrame);
                }
                else {
                    return obj;
                }
            case HLLConfig.ROLE_HASH:
                if (wanted.foreignTransformHash != null) {
                    invokeDirect(tc, wanted.foreignTransformHash,
                        invocantCallSite, new Object[] { obj });
                    return result_o(tc.curFrame);
                }
                else {
                    return obj;
                }
            case HLLConfig.ROLE_CODE:
                if (wanted.foreignTransformCode != null) {
                    invokeDirect(tc, wanted.foreignTransformCode,
                        invocantCallSite, new Object[] { obj });
                    return result_o(tc.curFrame);
                }
                else {
                    return obj;
                }
            default:
                if (wanted.foreignTransformAny != null) {
                    invokeDirect(tc, wanted.foreignTransformAny,
                        invocantCallSite, new Object[] { obj });
                    return result_o(tc.curFrame);
                }
                else {
                    return obj;
                }
        }
    }

    /* NFA operations. */
    public static SixModelObject nfafromstatelist(SixModelObject states, SixModelObject nfaType, ThreadContext tc) {
        /* Create NFA object. */
        NFAInstance nfa = (NFAInstance)nfaType.st.REPR.allocate(tc, nfaType.st);

        /* The first state entry is the fates list. */
        nfa.fates = states.at_pos_boxed(tc, 0);

        /* Go over the rest and convert to the NFA. */
        int numStates = (int)states.elems(tc) - 1;
        nfa.numStates = numStates;
        nfa.states = new NFAStateInfo[numStates][];
        for (int i = 0; i < numStates; i++) {
            SixModelObject edgeInfo = states.at_pos_boxed(tc, i + 1);
            int elems = (int)edgeInfo.elems(tc);
            int edges = elems / 3;
            int curEdge = 0;
            nfa.states[i] = new NFAStateInfo[edges];
            for (int j = 0; j < elems; j += 3) {
                int act = (int)smart_numify(edgeInfo.at_pos_boxed(tc, j), tc);
                int to = (int)smart_numify(edgeInfo.at_pos_boxed(tc, j + 2), tc);

                nfa.states[i][curEdge] = new NFAStateInfo();
                nfa.states[i][curEdge].act = act;
                nfa.states[i][curEdge].to = to;

                switch (act & 0xff) {
                case NFA.EDGE_FATE:
                case NFA.EDGE_CODEPOINT_LL:
                case NFA.EDGE_CODEPOINT:
                case NFA.EDGE_CODEPOINT_NEG:
                case NFA.EDGE_CHARCLASS:
                case NFA.EDGE_CHARCLASS_NEG:
                    nfa.states[i][curEdge].arg_i = (int)smart_numify(edgeInfo.at_pos_boxed(tc, j + 1), tc);
                    break;
                case NFA.EDGE_CHARLIST:
                case NFA.EDGE_CHARLIST_NEG:
                    nfa.states[i][curEdge].arg_s = edgeInfo.at_pos_boxed(tc, j + 1).get_str(tc);
                    break;
                case NFA.EDGE_CODEPOINT_I_LL:
                case NFA.EDGE_CODEPOINT_I:
                case NFA.EDGE_CODEPOINT_I_NEG:
                case NFA.EDGE_CHARRANGE:
                case NFA.EDGE_CHARRANGE_NEG: {
                    SixModelObject arg = edgeInfo.at_pos_boxed(tc, j + 1);
                    nfa.states[i][curEdge].arg_lc = (char)smart_numify(arg.at_pos_boxed(tc, 0), tc);
                    nfa.states[i][curEdge].arg_uc = (char)smart_numify(arg.at_pos_boxed(tc, 1), tc);
                    break;
                }
                }

                curEdge++;
            }
        }

        return nfa;
    }
    public static SixModelObject nfatostatelist(SixModelObject nfa, ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc, "nfatostatelist NYI");
    }
    public static SixModelObject nfarunproto(SixModelObject nfa, String target, long pos, ThreadContext tc) {
        /* Run the NFA. */
        int[] fates = runNFA(tc, (NFAInstance)nfa, target, pos);

        /* Copy results into an RIA. */
        SixModelObject BOOTIntArray = tc.gc.BOOTIntArray;
        SixModelObject fateRes = BOOTIntArray.st.REPR.allocate(tc, BOOTIntArray.st);
        for (int i = 0; i < fates.length; i++) {
            tc.native_i = fates[i];
            fateRes.bind_pos_native(tc, i);
        }

        return fateRes;
    }
    public static SixModelObject nfarunalt(SixModelObject nfa, String target, long pos,
            SixModelObject bstack, SixModelObject cstack, SixModelObject marks, ThreadContext tc) {
        /* Run the NFA. */
        int[] fates = runNFA(tc, (NFAInstance)nfa, target, pos);

        /* Push the results onto the bstack. */
        long caps = cstack == null || cstack instanceof TypeObject ? 0 : cstack.elems(tc);
        for (int i = 0; i < fates.length; i++) {
            marks.at_pos_native(tc, fates[i]);
            bstack.push_native(tc);
            tc.native_i = pos;
            bstack.push_native(tc);
            tc.native_i = 0;
            bstack.push_native(tc);
            tc.native_i = caps;
            bstack.push_native(tc);
        }

        return nfa;
    }

    /* The NFA evaluator. */
    private static int[] runNFA(ThreadContext tc, NFAInstance nfa, String target, long pos) {
        int eos = target.length();
        int gen = 1;

        /* Allocate a "done states" array. */
        int numStates = nfa.numStates;
        int[] done = new int[numStates + 1];
        long orig_pos = pos;

        /* Clear out other re-used arrays. */
        ArrayList<Integer> fates = tc.fates;
        ArrayList<Integer> curst = tc.curst;
        ArrayList<Integer> nextst = tc.nextst;
        curst.clear();
        nextst.clear();
        fates.clear();

        long[] longlit = tc.curlonglit;  // needs proper sizing to # of alternatives
        int usedlonglit = 0;             // lazy initialization highwater

        nextst.add(1);
        while (!nextst.isEmpty() && pos <= eos) {
            /* Translation of:
             *    my @curst := @nextst;
             *    @nextst := [];
             * But avoids an extra allocation per offset. */
            ArrayList<Integer> temp = curst;
            curst = nextst;
            temp.clear();
            nextst = temp;

            /* Save how many fates we have before this position is considered. */
            int prevFates = fates.size();

            while (!curst.isEmpty()) {
                int top = curst.size() - 1;
                int st = curst.get(top);
                curst.remove(top);
                if (st <= numStates) {
                    if (done[st] == gen)
                        continue;
                    done[st] = gen;
                }

                NFAStateInfo[] edgeInfo = nfa.states[st - 1];
                for (int i = 0; i < edgeInfo.length; i++) {
                    int act = edgeInfo[i].act;
                    int to  = edgeInfo[i].to;

                    if (act <= NFA.EDGE_EPSILON) {
                        if (act < 0) {
                            act &= 0xff;
                        }
                        else if (act == NFA.EDGE_FATE) {
                            /* Crossed a fate edge. Check if we already saw this, and
                             * if so bump the entry we already saw. */
                            int arg = edgeInfo[i].arg_i;
                            boolean foundFate = false;
                            arg &= 0xffffff;   // can go away after reboostrap?
                            for (int j = 0; j < fates.size(); j++) {
                                if (foundFate)
                                    fates.set(j - 1, fates.get(j));
                                if (fates.get(j )== arg) {
                                    foundFate = true;
                                    if (j < prevFates)
                                        prevFates--;
                                }
                            }
                            if (arg < usedlonglit)
                                arg -= longlit[arg] << 24;
                            if (foundFate)
                                fates.set(fates.size() - 1, arg);
                            else
                                fates.add(arg);
                            continue;
                        }
                        else if (act == NFA.EDGE_EPSILON && to <= numStates && done[to] != gen) {
                            if (to != 0)
                                curst.add(to);
                            continue;
                        }
                    }

                    if (pos >= eos) {
                        /* Can't match, so drop state. */
                        continue;
                    }

                    switch (act) {
                        case NFA.EDGE_CODEPOINT: {
                            char arg = (char)edgeInfo[i].arg_i;
                            if (target.charAt((int)pos) == arg)
                                nextst.add(to);
                            continue;
                        }
                        case NFA.EDGE_CODEPOINT_LL: {
                            char arg = (char)edgeInfo[i].arg_i;
                            if (target.charAt((int)pos) == arg) {
                                int fate = (edgeInfo[i].act >> 8) & 0xfffff;  /* act is probably signed 32 bits */
                                nextst.add(to);
                                while (usedlonglit <= fate)
                                    longlit[usedlonglit++] = 0;
                                longlit[fate] = pos - orig_pos;
                            }
                            continue;
                        }
                        case NFA.EDGE_CODEPOINT_NEG: {
                            char arg = (char)edgeInfo[i].arg_i;
                            if (target.charAt((int)pos) != arg)
                                nextst.add(to);
                            continue;
                        }
                        case NFA.EDGE_CHARCLASS: {
                            if (iscclass(edgeInfo[i].arg_i, target, pos) != 0)
                                nextst.add(to);
                            continue;
                        }
                        case NFA.EDGE_CHARCLASS_NEG: {
                            if (iscclass(edgeInfo[i].arg_i, target, pos) == 0)
                                nextst.add(to);
                            continue;
                        }
                        case NFA.EDGE_CHARLIST: {
                            String arg = edgeInfo[i].arg_s;
                            if (arg.indexOf(target.charAt((int)pos)) >= 0)
                                nextst.add(to);
                            continue;
                        }
                        case NFA.EDGE_CHARLIST_NEG: {
                            String arg = edgeInfo[i].arg_s;
                            if (arg.indexOf(target.charAt((int)pos)) < 0)
                                nextst.add(to);
                            continue;
                        }
                        case NFA.EDGE_CODEPOINT_I: {
                            char uc_arg = edgeInfo[i].arg_uc;
                            char lc_arg = edgeInfo[i].arg_lc;
                            char ord = target.charAt((int)pos);
                            if (ord == lc_arg || ord == uc_arg)
                                nextst.add(to);
                            continue;
                        }
                        case NFA.EDGE_CODEPOINT_I_LL: {
                            char uc_arg = edgeInfo[i].arg_uc;
                            char lc_arg = edgeInfo[i].arg_lc;
                            char ord = target.charAt((int)pos);
                            if (ord == lc_arg || ord == uc_arg) {
                                int fate = (edgeInfo[i].act >> 8) & 0xfffff;  /* act is probably signed 32 bits */
                                nextst.add(to);
                                while (usedlonglit <= fate)
                                    longlit[usedlonglit++] = 0;
                                longlit[fate] = pos - orig_pos;
                            }
                            continue;
                        }
                        case NFA.EDGE_CODEPOINT_I_NEG: {
                            char uc_arg = edgeInfo[i].arg_uc;
                            char lc_arg = edgeInfo[i].arg_lc;
                            char ord = target.charAt((int)pos);
                            if (ord != lc_arg && ord != uc_arg)
                                nextst.add(to);
                            continue;
                        }
                        case NFA.EDGE_CHARRANGE: {
                            char uc_arg = edgeInfo[i].arg_uc;
                            char lc_arg = edgeInfo[i].arg_lc;
                            char ord = target.charAt((int)pos);
                            if (ord >= lc_arg && ord <= uc_arg)
                                nextst.add(to);
                            continue;
                        }
                        case NFA.EDGE_CHARRANGE_NEG: {
                            char uc_arg = edgeInfo[i].arg_uc;
                            char lc_arg = edgeInfo[i].arg_lc;
                            char ord = target.charAt((int)pos);
                            if (ord < lc_arg || ord > uc_arg)
                                nextst.add(to);
                            continue;
                        }
                    }
                }
            }

            /* Move to next character and generation. */
            pos++;
            gen++;

            /* If we got multiple fates at this offset, sort them by the
             * declaration order (represented by the fate number). In the
             * future, we'll want to factor in longest literal prefix too. */
            int charFates = fates.size() - prevFates;
            if (charFates > 1) {
                List<Integer> charFateList = fates.subList(prevFates, fates.size());
                Collections.sort(charFateList, Collections.reverseOrder());
            }
        }

        /* strip any literal lengths, leaving only fates */
        int[] result = new int[fates.size()];
        if (usedlonglit > 0) {
            for (int i = 0; i < fates.size(); i++)
                result[i] = fates.get(i) & 0xffffff;
        }
        else {
            for (int i = 0; i < fates.size(); i++)
                result[i] = fates.get(i);
        }
        return result;
    }

    /* Regex engine mark stack operations. */
    public static void rxmark(SixModelObject bstack, long mark, long pos, long rep, ThreadContext tc) {
        long elems = bstack.elems(tc);

        long caps;
        if (elems > 0) {
            bstack.at_pos_native(tc, elems - 1);
            caps = tc.native_i;
        }
        else {
            caps = 0;
        }

        tc.native_i = mark;
        bstack.push_native(tc);
        tc.native_i = pos;
        bstack.push_native(tc);
        tc.native_i = rep;
        bstack.push_native(tc);
        tc.native_i = caps;
        bstack.push_native(tc);
    }

    public static long rxpeek(SixModelObject bstack, long mark, ThreadContext tc) {
        long ptr = bstack.elems(tc);
        while (ptr >= 0) {
            bstack.at_pos_native(tc, ptr);
            if (tc.native_i == mark)
                break;
            ptr -= 4;
        }
        return ptr;
    }

    public static void rxcommit(SixModelObject bstack, long mark, ThreadContext tc) {
        long ptr = bstack.elems(tc);
        long caps;
        if (ptr > 0) {
            bstack.at_pos_native(tc, ptr - 1);
            caps = tc.native_i;
        }
        else {
            caps = 0;
        }

        while (ptr >= 0) {
            bstack.at_pos_native(tc, ptr);
            if (tc.native_i == mark)
                break;
            ptr -= 4;
        }

        bstack.set_elems(tc, ptr);

        if (caps > 0) {
            if (ptr > 0) {
                /* top mark frame is an autofail frame, reuse it to hold captures */
                bstack.at_pos_native(tc, ptr - 3);
                if (tc.native_i < 0) {
                    tc.native_i = caps;
                    bstack.bind_pos_native(tc, ptr - 1);
                }
            }

            /* push a new autofail frame onto bstack to hold the captures */
            tc.native_i = 0;
            bstack.push_native(tc);
            tc.native_i = -1;
            bstack.push_native(tc);
            tc.native_i = 0;
            bstack.push_native(tc);
            tc.native_i = caps;
            bstack.push_native(tc);
        }
    }

    /* Coercions. */
    public static long coerce_s2i(String in) {
        try {
            return Long.parseLong(in);
        }
        catch (NumberFormatException e) {
            return 0;
        }
    }
    public static double coerce_s2n(String in) {
        try {
            return Double.parseDouble(in);
        }
        catch (NumberFormatException e) {
            if (in.equals("Inf"))
                return Double.POSITIVE_INFINITY;
            if (in.equals("+Inf"))
                return Double.POSITIVE_INFINITY;
            if (in.equals("-Inf"))
                return Double.NEGATIVE_INFINITY;
            if (in.equals("NaN"))
                return Double.NaN;
            return 0.0;
        }
    }
    public static String coerce_i2s(long in) {
        return Long.toString(in);
    }
    public static String coerce_n2s(double in) {
        if (in == (long)in) {
            if (in == 0 && Double.toString(in).equals("-0.0")) {
                return "-0";
            }
            return Long.toString((long)in);
        }
        else {
            if (in == Double.POSITIVE_INFINITY)
                return "Inf";
            if (in == Double.NEGATIVE_INFINITY)
                return "-Inf";
            if (in != in)
                return "NaN";
            return Double.toString(in);
        }
    }

    /* Long literal workaround. */
    public static String join_literal(String[] parts) {
        StringBuilder retval = new StringBuilder(parts.length * 65535);
        for (int i = 0; i < parts.length; i++)
            retval.append(parts[i]);
        return retval.toString();
    }

    /* Big integer operations. */
    private static BigInteger getBI(ThreadContext tc, SixModelObject obj) {
        if (obj instanceof P6bigintInstance)
            return ((P6bigintInstance)obj).value;
        return getBI(tc, obj, obj.st.WHAT);
    }

    private static BigInteger getBI(ThreadContext tc, SixModelObject obj, SixModelObject type) {
        if (obj instanceof P6bigintInstance)
            return ((P6bigintInstance)obj).value;

        int hint = 0;
        if( obj.st.REPRData != null ) {
            hint = ((P6OpaqueREPRData) obj.st.REPRData) != null ? ((P6OpaqueREPRData) obj.st.REPRData).unboxIntSlot : -1;
        }
        if( hint < 0 && type.st.REPRData != null ) {
            hint = ((P6OpaqueREPRData) type.st.REPRData) != null ? ((P6OpaqueREPRData) type.st.REPRData).unboxIntSlot : -1;
        }

        hint = hint < 0 ? 0 : hint;

        try {
            obj.get_attribute_native(tc, null, null, hint);
        } catch (RuntimeException rte) {
            // we couldn't get native, let's just getBI for the slot hinted at, with the type for that hint
            // XXX: type.st.REPRData could theoretically be null here - it shouldn't be, because if it was
            // we should already have handled a P6bigint successfully in the try above.
            SixModelObject innerType = ((P6OpaqueREPRData) type.st.REPRData).flattenedSTables[hint].WHAT;
            tc.native_j = (BigInteger) getBI(tc, obj.get_attribute_boxed(tc, null, null, hint), innerType);
        }
        return (BigInteger)tc.native_j;
    }

    private static SixModelObject makeBI(ThreadContext tc, SixModelObject type, BigInteger value) {
        SixModelObject res = type.st.REPR.allocate(tc, type.st);
        if (res instanceof P6bigintInstance) {
            ((P6bigintInstance)res).value = value;
        }
        else {
            int hint = (int) ((P6OpaqueREPRData) type.st.REPRData).unboxIntSlot;
            hint = hint < 0 ? 0 : hint;
            tc.native_j = value;
            try {
                res.bind_attribute_native(tc, null, null, hint);
            } catch (RuntimeException rte) {
                // we couldn't bind native, let's just makeBI for the slot hinted at, with the type for that hint
                SixModelObject innerType = ((P6OpaqueREPRData) type.st.REPRData).flattenedSTables[hint].WHAT;
                res.bind_attribute_boxed(tc, null, null, hint, makeBI(tc, innerType, value));
            }
        }
        return res;
    }

    public static SixModelObject fromstr_I(String str, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, new BigInteger(str));
    }

    public static String tostr_I(SixModelObject value, ThreadContext tc) {
        return getBI(tc, value).toString();
    }

    public static String base_I(SixModelObject value, long radix, ThreadContext tc) {
        return getBI(tc, value).toString((int)radix).toUpperCase();
    }

    public static long isbig_I(SixModelObject value, ThreadContext tc) {
        /* Check if it needs more bits than a long can offer; note that
         * bitLength excludes sign considerations, thus 31 rather than
         * 32. */
        return getBI(tc, value).bitLength() > 31 ? 1 : 0;
    }

    public static SixModelObject fromnum_I(double num, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, BigDecimal.valueOf(num).toBigInteger());
    }

    public static double tonum_I(SixModelObject value, ThreadContext tc) {
        return getBI(tc, value).doubleValue();
    }

    public static long bool_I(SixModelObject a, ThreadContext tc) {
        return getBI(tc, a).compareTo(BigInteger.ZERO) == 0 ? 0 : 1;
    }

    public static long cmp_I(SixModelObject a, SixModelObject b, ThreadContext tc) {
        return getBI(tc, a).compareTo(getBI(tc, b));
    }

    public static long iseq_I(SixModelObject a, SixModelObject b, ThreadContext tc) {
        return getBI(tc, a).compareTo(getBI(tc, b)) == 0 ? 1 : 0;
    }

    public static long isne_I(SixModelObject a, SixModelObject b, ThreadContext tc) {
        return getBI(tc, a).compareTo(getBI(tc, b)) == 0 ? 0 : 1;
    }

    public static long islt_I(SixModelObject a, SixModelObject b, ThreadContext tc) {
        return getBI(tc, a).compareTo(getBI(tc, b)) < 0 ? 1 : 0;
    }

    public static long isle_I(SixModelObject a, SixModelObject b, ThreadContext tc) {
        return getBI(tc, a).compareTo(getBI(tc, b)) <= 0 ? 1 : 0;
    }

    public static long isgt_I(SixModelObject a, SixModelObject b, ThreadContext tc) {
        return getBI(tc, a).compareTo(getBI(tc, b)) > 0 ? 1 : 0;
    }

    public static long isge_I(SixModelObject a, SixModelObject b, ThreadContext tc) {
        return getBI(tc, a).compareTo(getBI(tc, b)) >= 0 ? 1 : 0;
    }

    public static SixModelObject add_I(SixModelObject a, SixModelObject b, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a, type).add(getBI(tc, b, type)));
    }

    public static SixModelObject sub_I(SixModelObject a, SixModelObject b, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a, type).subtract(getBI(tc, b, type)));
    }

    public static SixModelObject mul_I(SixModelObject a, SixModelObject b, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a, type).multiply(getBI(tc, b, type)));
    }

    public static SixModelObject div_I(SixModelObject a, SixModelObject b, SixModelObject type, ThreadContext tc) {
        BigInteger dividend = getBI(tc, a, type);
        BigInteger divisor = getBI(tc, b, type);
        long dividend_sign = dividend.signum();
        long divisor_sign = divisor.signum();
        if (dividend_sign * divisor_sign == -1) {
            if (dividend.mod(divisor.abs ()).compareTo(BigInteger.ZERO) != 0) {
                return makeBI(tc, type, dividend.divide(divisor).subtract(BigInteger.ONE));
            }
        }
        return makeBI(tc, type, dividend.divide(divisor));
    }

    public static double div_In(SixModelObject a, SixModelObject b, ThreadContext tc) {
        return new BigDecimal(getBI(tc, a)).divide(new BigDecimal(getBI(tc, b)), 309, RoundingMode.HALF_UP).doubleValue();
    }

    public static SixModelObject mod_I(SixModelObject a, SixModelObject b, SixModelObject type, ThreadContext tc) {
        BigInteger divisor = getBI(tc, b, type);
        if (divisor.compareTo(BigInteger.ZERO) < 0) {
            BigInteger negDivisor = divisor.negate();
            BigInteger res = getBI(tc, a, type).mod(negDivisor);
            return makeBI(tc, type, res.equals(BigInteger.ZERO) ? res : divisor.add(res));
        }
        else {
            return makeBI(tc, type, getBI(tc, a).mod(divisor));
        }
    }

    public static SixModelObject expmod_I(SixModelObject a, SixModelObject b, SixModelObject c, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a, type).modPow(getBI(tc, b, type), getBI(tc, c, type)));
    }

    public static long isprime_I(SixModelObject a, long certainty, ThreadContext tc) {
        BigInteger bi = getBI(tc, a);
        if (bi.compareTo(BigInteger.valueOf(1)) <= 0) {
            return 0;
        }
        return bi.isProbablePrime((int)certainty) ? 1 : 0;
    }

    public static SixModelObject rand_I(SixModelObject a, SixModelObject type, ThreadContext tc) {
        BigInteger size = getBI(tc, a, type);
        BigInteger random = new BigInteger(size.bitLength(), tc.random);
        while (random.compareTo (size) != -1) {
            random = new BigInteger(size.bitLength(), tc.random);
        }
        return makeBI(tc, type, random);
    }
    
    public static int pow_i(int a, int b) {
        return (int)Math.pow(a, b);
    }

    public static double pow_n(double a, double b) {
        if (a == 1 && !Double.isNaN(b)) {
            return 1.0;
        }
        return Math.pow(a, b);
    }

    public static double mod_n(double a, double b) {
        return a - Math.floor(a / b) * b;
    }

    public static SixModelObject pow_I(SixModelObject a, SixModelObject b, SixModelObject nType, SixModelObject biType, ThreadContext tc) {
        BigInteger base = getBI(tc, a);
        BigInteger exponent = getBI(tc, b);
        int cmp = exponent.compareTo(BigInteger.ZERO);
        if (cmp == 0 || base.compareTo(BigInteger.ONE) == 0) {
            return makeBI(tc, biType, BigInteger.ONE);
        }
        else if (cmp > 0) {
            if (exponent.bitLength() > 31) {
                /* Overflows integer. Terrifyingly huge, but try to cope somehow. */
                cmp = base.compareTo(BigInteger.ZERO);
                if (cmp == 0 || base.compareTo(BigInteger.ONE) == 0) {
                    /* 0 ** $big_number and 1 ** big_number are easy to do: */
                    return makeBI(tc, biType, base);
                } else if (base.compareTo(BigInteger.ONE.negate ()) == 0) {
                    /* -1 ** exponent depends on whether b is odd or even */
                    return makeBI(tc, biType, exponent.mod(BigInteger.valueOf(2)) == BigInteger.ZERO
                                                ? BigInteger.ONE
                                                : BigInteger.ONE.negate ());
                } else {
                    /* Otherwise, do floating point infinity of the right sign. */
                    SixModelObject result = nType.st.REPR.allocate(tc, nType.st);
                    result.set_num(tc, exponent.mod(BigInteger.valueOf(2)) == BigInteger.ZERO
                                        ? Double.POSITIVE_INFINITY
                                        : Double.NEGATIVE_INFINITY);
                    return result;
                }
            }
            else {
                /* Can safely take its integer value. */
                return makeBI(tc, biType, base.pow(exponent.intValue()));
            }
        }
        else {
            double fBase = base.doubleValue();
            double fExponent = exponent.doubleValue();
            SixModelObject result = nType.st.REPR.allocate(tc, nType.st);
            result.set_num(tc, Math.pow(fBase, fExponent));
            return result;
        }
    }

    public static SixModelObject neg_I(SixModelObject a, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a).negate());
    }

    public static SixModelObject abs_I(SixModelObject a, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a).abs());
    }

    public static SixModelObject radix_I(long radix_l, String str, long zpos, long flags, SixModelObject type, ThreadContext tc) {
        BigInteger zvalue = BigInteger.ZERO;
        BigInteger zbase = BigInteger.ONE;
        int chars = str.length();
        BigInteger value = zvalue;
        BigInteger base = zbase;
        long pos = -1;
        char ch;
        boolean neg = false;
        BigInteger radix = BigInteger.valueOf(radix_l);

        if (radix_l > 36) {
            throw ExceptionHandling.dieInternal(tc, "Cannot convert radix of " + radix_l + " (max 36)");
        }

        ch = (zpos < chars) ? str.charAt((int)zpos) : 0;
        if ((flags & 0x02) != 0 && (ch == '+' || ch == '-')) {
            neg = (ch == '-');
            zpos++;
            ch = (zpos < chars) ? str.charAt((int)zpos) : 0;
        }
        while (zpos < chars) {
            if (ch >= '0' && ch <= '9') ch = (char)(ch - '0');
            else if (ch >= 'a' && ch <= 'z') ch = (char)(ch - 'a' + 10);
            else if (ch >= 'A' && ch <= 'Z') ch = (char)(ch - 'A' + 10);
            else break;
            if (ch >= radix_l) break;
            zvalue = zvalue.multiply(radix).add(BigInteger.valueOf(ch));
            zbase = zbase.multiply(radix);
            zpos++; pos = zpos;
            if (ch != 0 || (flags & 0x04) == 0) { value=zvalue; base=zbase; }
            if (zpos >= chars) break;
            ch = str.charAt((int)zpos);
            if (ch != '_') continue;
            zpos++;
            if (zpos >= chars) break;
            ch = str.charAt((int)zpos);
        }

        if (neg || (flags & 0x01) != 0) { value = value.negate(); }

        HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
        SixModelObject result = hllConfig.slurpyArrayType.st.REPR.allocate(tc,
                hllConfig.slurpyArrayType.st);

        result.push_boxed(tc, makeBI(tc, type, value));
        result.push_boxed(tc, makeBI(tc, type, base));
        result.push_boxed(tc, makeBI(tc, type, BigInteger.valueOf(pos)));

        return result;
    }

    public static SixModelObject bitor_I(SixModelObject a, SixModelObject b, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a).or(getBI(tc, b)));
    }

    public static SixModelObject bitxor_I(SixModelObject a, SixModelObject b, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a).xor(getBI(tc, b)));
    }

    public static SixModelObject bitand_I(SixModelObject a, SixModelObject b, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a).and(getBI(tc, b)));
    }

    public static SixModelObject bitneg_I(SixModelObject a, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a).not());
    }

    public static SixModelObject bitshiftl_I(SixModelObject a, long b, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a).shiftLeft((int)b));
    }

    public static SixModelObject bitshiftr_I(SixModelObject a, long b, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a).shiftRight((int)b));
    }

    /* Evaluation of code; JVM-specific ops. */
    public static SixModelObject compilejast(SixModelObject jast, SixModelObject jastNodes, ThreadContext tc) {
        EvalResult res = new EvalResult();
        res.jc = JASTCompiler.buildClass(jast, jastNodes, false, tc);
        return res;
    }
    public static SixModelObject compilejasttofile(SixModelObject jast, SixModelObject jastNodes, String filename, ThreadContext tc) {
        JASTCompiler.writeClass(jast, jastNodes, filename, tc);
        return jast;
    }
    public static SixModelObject loadcompunit(SixModelObject obj, long compileeHLL, ThreadContext tc) {
        try {
            EvalResult res = (EvalResult)obj;
            Class<?> cuClass = tc.gc.byteClassLoader.defineClass(res.jc.name, res.jc.bytes);
            res.cu = (CompilationUnit) cuClass.newInstance();
            if (compileeHLL != 0)
                usecompileehllconfig(tc);
            res.cu.initializeCompilationUnit(tc);
            if (compileeHLL != 0)
                usecompilerhllconfig(tc);
            res.jc = null;
            return obj;
        }
        catch (ControlException e) {
            throw e;
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public static long iscompunit(SixModelObject obj, ThreadContext tc) {
        return obj instanceof EvalResult ? 1 : 0;
    }
    public static SixModelObject compunitmainline(SixModelObject obj, ThreadContext tc) {
        EvalResult res = (EvalResult)obj;
        return res.cu.lookupCodeRef(res.cu.mainlineQbid());
    }
    public static SixModelObject compunitcodes(SixModelObject obj, ThreadContext tc) {
        EvalResult res = (EvalResult)obj;
        SixModelObject Array = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.listType;
        SixModelObject result = Array.st.REPR.allocate(tc, Array.st);
        for (int i = 0; i < res.cu.codeRefs.length; i++)
            result.bind_pos_boxed(tc, i, res.cu.codeRefs[i]);
        return result;
    }
    public static SixModelObject jvmclasspaths(ThreadContext tc) {
        SixModelObject Array = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.listType;
        SixModelObject Str = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strBoxType;
        SixModelObject result = Array.st.REPR.allocate(tc, Array.st);
        String cpStr = System.getProperty("java.class.path");
        String[] cps = cpStr.split("[:;]");
        for (int i = 0; i < cps.length; i++)
            result.push_boxed(tc, box_s(cps[i], Str, tc));
        return result;
    }

    public static long usecompileehllconfig(ThreadContext tc) {
        if (tc.gc.compileeDepth == 0)
            tc.gc.useCompileeHLLConfig();
        tc.gc.compileeDepth++;
        return 1;
    }
    public static long usecompilerhllconfig(ThreadContext tc) {
        tc.gc.compileeDepth--;
        if (tc.gc.compileeDepth == 0)
            tc.gc.useCompilerHLLConfig();
        return 1;
    }

    private static MethodHandle reset_reenter;
    static {
        try {
            reset_reenter = MethodHandles.insertArguments(
                    MethodHandles.publicLookup().findStatic(Ops.class, "continuationreset",
                        MethodType.methodType(Void.TYPE, SixModelObject.class, SixModelObject.class, ThreadContext.class, ResumeStatus.Frame.class)),
                    0, null, null, null);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    // this is the most complicated one because it's not doing a tailcall, so we need to actually use the resumeframe
    public static void continuationreset(SixModelObject key, SixModelObject run, ThreadContext tc) throws Throwable {
        continuationreset(key, run, tc, null);
    }
    public static void continuationreset(SixModelObject key, SixModelObject run, ThreadContext tc, ResumeStatus.Frame resume) throws Throwable {
        SixModelObject cont = null;

        if (resume != null) {
            // reload stuff here, then don't goto because java source doesn't have that
            Object[] bits = resume.saveSpace;
            key = (SixModelObject) bits[0];
            tc = resume.tc;
        }

        while (true) {
            try {
                if (resume != null) {
                    resume.resumeNext();
                } else if (cont != null) {
                    invokeDirect(tc, run, invocantCallSite, false, new Object[] { cont });
                } else {
                    if (run instanceof ResumeStatus) {
                        /* Got a continuation to invoke immediately (done by
                         * Rakudo cope with lack of tail calls). */
                        ResumeStatus.Frame root = ((ResumeStatus)run).top;
                        fixupContinuation(tc, root, null);
                        root.resume();
                    }
                    else {
                        /* Code a normal code ref to invoke. */
                        invokeDirect(tc, run, emptyCallSite, false, emptyArgList);
                    }
                }
                // If we get here, the reset argument or something placed using control returned normally
                // so we should just return.
                return;
            } catch (SaveStackException sse) {
                if (sse.key != null && sse.key != key) {
                    // This is intended for an outer scope, so just append ourself
                    throw sse.pushFrame(0, reset_reenter, new Object[] { key }, null);
                }
                // Ooo!  This is ours!
                resume = null;
                STable contType = tc.gc.Continuation.st;
                cont = contType.REPR.allocate(tc, contType);
                ((ResumeStatus)cont).top = sse.top;
                run = sse.handler;
                if (!sse.protect) break;
            }
        }
        // now, if we get HERE, it means we saw an unprotected control operator
        // so run it without protection

        invokeDirect(tc, run, invocantCallSite, false, new Object[] { cont });
    }

    public static SixModelObject continuationclone(SixModelObject in, ThreadContext tc) {
        if (!(in instanceof ResumeStatus))
            ExceptionHandling.dieInternal(tc, "applied continuationinvoke to non-continuation");

        ResumeStatus.Frame read = ((ResumeStatus)in).top;
        ResumeStatus.Frame nroot = null, ntail = null, nnew;

        while (read != null) {
            CallFrame cf = read.callFrame == null ? null : read.callFrame.cloneContinuation();
            nnew = new ResumeStatus.Frame(read.method, read.resumePoint, read.saveSpace, cf, null);
            if (ntail != null) {
                ntail.next = nnew;
            } else {
                nroot = nnew;
            }
            ntail = nnew;
            read = read.next;
        }

        STable contType = tc.gc.Continuation.st;
        SixModelObject cont = contType.REPR.allocate(tc, contType);
        ((ResumeStatus)cont).top = nroot;
        return cont;
    }

    public static void continuationcontrol(long protect, SixModelObject key, SixModelObject run, ThreadContext tc) {
        throw new SaveStackException(key, protect != 0, run);
    }

    public static void continuationinvoke(SixModelObject cont, SixModelObject arg, ThreadContext tc) throws Throwable {
        if (!(cont instanceof ResumeStatus))
            ExceptionHandling.dieInternal(tc, "applied continuationinvoke to non-continuation");
        ResumeStatus.Frame root = ((ResumeStatus)cont).top;
        fixupContinuation(tc, root, arg);
        root.resume();
    }
    private static void fixupContinuation(ThreadContext tc, ResumeStatus.Frame csr, SixModelObject arg) {
        // fixups: safe to do more than once, but not concurrently
        // these are why continuationclone is needed...
        while (csr != null) {
            csr.tc = tc; // csr.callFrame.{csr,tc} will be set on resume
            if (csr.next == null) csr.thunk = arg;
            csr = csr.next;
        }
    }

    /* noop, exists only so you can set a breakpoint in it */
    public static SixModelObject debugnoop(SixModelObject in, ThreadContext tc) {
        return in;
    }

    public static long jvmeqaddr(SixModelObject a, SixModelObject b, ThreadContext tc) {
        if (a instanceof TypeObject) {
            return (b instanceof TypeObject) ? 1 : 0;
        } else {
            return (b instanceof TypeObject || ((JavaObjectWrapper)a).theObject != ((JavaObjectWrapper)b).theObject) ? 0 : 1;
        }
    }

    public static long jvmisnull(SixModelObject a, ThreadContext tc) {
        if (a instanceof TypeObject) {
            return 1;
        } else {
            return ((JavaObjectWrapper)a).theObject == null ? 1 : 0;
        }
    }

    public static SixModelObject jvmbootinterop(ThreadContext tc) {
        return BootJavaInterop.RuntimeSupport.boxJava(tc.gc.bootInterop, tc.gc.bootInterop.getSTableForClass(BootJavaInterop.class));
    }

    public static SixModelObject jvmgetconfig(ThreadContext tc) {
        SixModelObject hashType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.hashType;
        SixModelObject strType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strBoxType;
        SixModelObject res = hashType.st.REPR.allocate(tc, hashType.st);

        try {
            InputStream is = Ops.class.getResourceAsStream("/jvmconfig.properties");
            Properties config = new Properties();
            config.load(is);
            for (String name : config.stringPropertyNames())
                res.bind_key_boxed(tc, name, box_s(config.getProperty(name), strType, tc));
        } catch (Throwable e) {
            die_s("Failed to load config.properties", tc);
        }

        return res;
    }

    public static String getuniname(long codePoint, ThreadContext tc) {
        String name;
        int cp = (int) codePoint;
        try {
            if(codePoint < 0) {
                name = "<illegal>";
            } else {
                name = Character.getName(cp);
                if(name == null) {
                    name = "<unassigned>";
                }
            }
        } catch (IllegalArgumentException iae) {
            name = "<unassigned>";
        }
        return name;
    }

    public static SixModelObject force_gc(ThreadContext tc) {
        System.gc();
        return null;
    }
}
