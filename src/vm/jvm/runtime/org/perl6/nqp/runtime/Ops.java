package org.perl6.nqp.runtime;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.PosixFilePermissions;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ThreadLocalRandom;
import java.util.concurrent.TimeUnit;

import jline.ConsoleReader;

import org.perl6.nqp.jast2bc.JASTToJVMBytecode;
import org.perl6.nqp.sixmodel.BoolificationSpec;
import org.perl6.nqp.sixmodel.ContainerConfigurer;
import org.perl6.nqp.sixmodel.ContainerSpec;
import org.perl6.nqp.sixmodel.InvocationSpec;
import org.perl6.nqp.sixmodel.REPRRegistry;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SerializationContext;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SerializationWriter;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.sixmodel.TypeObject;
import org.perl6.nqp.sixmodel.reprs.CallCaptureInstance;
import org.perl6.nqp.sixmodel.reprs.ContextRef;
import org.perl6.nqp.sixmodel.reprs.ContextRefInstance;
import org.perl6.nqp.sixmodel.reprs.IOHandleInstance;
import org.perl6.nqp.sixmodel.reprs.MultiCacheInstance;
import org.perl6.nqp.sixmodel.reprs.NFA;
import org.perl6.nqp.sixmodel.reprs.NFAInstance;
import org.perl6.nqp.sixmodel.reprs.NFAStateInfo;
import org.perl6.nqp.sixmodel.reprs.P6bigintInstance;
import org.perl6.nqp.sixmodel.reprs.SCRefInstance;
import org.perl6.nqp.sixmodel.reprs.VMArray;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance;
import org.perl6.nqp.sixmodel.reprs.VMExceptionInstance;
import org.perl6.nqp.sixmodel.reprs.VMHash;
import org.perl6.nqp.sixmodel.reprs.VMHashInstance;
import org.perl6.nqp.sixmodel.reprs.VMIterInstance;

/**
 * Contains complex operations that are more involved that the simple ops that the
 * JVM makes available.
 */
public final class Ops {
    /* I/O opcodes */
    public static String print(String v) {
        System.out.print(v);
        return v;
    }
    
    public static String say(String v) {
        System.out.println(v);
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
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_ISREG:
                try {
                    rval = (Boolean) Files.getAttribute(Paths.get(filename), "basic:isRegularFile") ? 1 : 0;
                } catch (Exception e) {
                    rval = -1;
                }
                break;

            case STAT_ISDEV:
                try {
                    rval = (Boolean) Files.getAttribute(Paths.get(filename), "basic:isOther") ? 1 : 0;
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
        h.initialize(tc);
        
        try {
            if (mode.equals("r")) {
                h.is = new FileInputStream(path);
            }
            else if (mode.equals("w")) {
                h.os = new FileOutputStream(path);
            }
            else if (mode.equals("wa")) {
                h.os = new FileOutputStream(path, true);
            }
            else {
                die_s("Unhandled file open mode '" + mode + "'", tc);
            }
        }
        catch (FileNotFoundException e) {
            die_s(e.getMessage(), tc);
        }
        
        return h;
    }
    
    public static SixModelObject getstdin(ThreadContext tc) {
        SixModelObject IOType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.ioType; 
        IOHandleInstance h = (IOHandleInstance)IOType.st.REPR.allocate(tc, IOType.st);
        h.initialize(tc);
        h.is = System.in;
        return h;
    }
    
    public static SixModelObject getstdout(ThreadContext tc) {
        SixModelObject IOType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.ioType; 
        IOHandleInstance h = (IOHandleInstance)IOType.st.REPR.allocate(tc, IOType.st);
        h.initialize(tc);
        h.os = System.out;
        return h;
    }
    
    public static SixModelObject getstderr(ThreadContext tc) {
        SixModelObject IOType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.ioType; 
        IOHandleInstance h = (IOHandleInstance)IOType.st.REPR.allocate(tc, IOType.st);
        h.initialize(tc);
        h.os = System.err;
        return h;
    }
    
    public static SixModelObject setencoding(SixModelObject obj, String encoding, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.isr != null || h.osw != null)
                die_s("Too late to set file handle encoding", tc);
            
            String charset = null;
            if (encoding.equals("ascii"))
                charset = "US-ASCII";
            else if (encoding.equals("iso-8859-1"))
                charset = "ISO-8859-1";
            else if (encoding.equals("utf8"))
                charset = "UTF-8";
            else if (encoding.equals("utf16"))
                charset = "UTF-16";
            else if (encoding.equals("binary"))
                charset = "ISO-8859-1"; /* Byte oriented... */
            else
                die_s("Unsupported encoding " + encoding, tc);
            
            try {
                if (h.is != null)
                    h.isr = new InputStreamReader(h.is, charset);
                if (h.os != null)
                    h.osw = new OutputStreamWriter(h.os, charset);
            }
            catch (UnsupportedEncodingException e) {
                die_s(e.getMessage(), tc);
            }
        }
        else {
            die_s("setencoding requires an object with the IOHandle REPR", tc);
        }
        return obj;
    }
    
    public static long tellfh(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            /* TODO */
            return 0;
        }
        else {
            die_s("tellfh requires an object with the IOHandle REPR", tc);
            return 0; /* Unreachable */
        }
    }
    
    public static String printfh(SixModelObject obj, String data, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.os == null)
                die_s("File handle is not opened for write", tc);
            try {
                if (h.osw == null)
                    h.osw = new OutputStreamWriter(h.os, "UTF-8");
                h.osw.write(data);
                h.osw.flush();
            }
            catch (IOException e) {
                die_s(e.getMessage(), tc);
            }
        }
        else {
            die_s("printfh requires an object with the IOHandle REPR", tc);
        }
        return data;
    }
    
    public static String sayfh(SixModelObject obj, String data, ThreadContext tc) {
        printfh(obj, data, tc);
        printfh(obj, "\n", tc);
        return data;
    }
    
    public static String readlinefh(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.is == null)
                die_s("File handle is not opened for read", tc);
            try {
                if (h.isr == null)
                    h.isr = new InputStreamReader(h.is, "UTF-8");
                if (h.br == null)
                    h.br = new BufferedReader(h.isr);
                String line = h.br.readLine();
                if (line == null) {
                	h.eof = true;
                }
                return line;
            }
            catch (IOException e) {
                die_s(e.getMessage(), tc);
                return null; /* Unreachable */
            }
        }
        else {
            die_s("readlinefh requires an object with the IOHandle REPR", tc);
            return null; /* Unreachable */
        }
    }
    
    /* We don't have proper readline support yet. */
    public static String readlineintfh(SixModelObject obj, String prompt, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.is == null)
                die_s("File handle is not opened for read", tc);
            try {
            	if (h.cr == null) {
            		h.cr = new ConsoleReader(h.is, new OutputStreamWriter(System.out));
            	}
            	String line = h.cr.readLine(prompt);
                if (line == null) {
                	h.eof = true;
                }
                return line;
            }
            catch (IOException e) {
                die_s(e.getMessage(), tc);
                return null; /* Unreachable */
            }
        }
        else {
            die_s("readlineintfh requires an object with the IOHandle REPR", tc);
            return null; /* Unreachable */
        }
    }
    
    public static String readallfh(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.is == null)
                die_s("File handle is not opened for read", tc);
            try {
                if (h.isr == null)
                    h.isr = new InputStreamReader(h.is, "UTF-8");
                if (h.br == null)
                    h.br = new BufferedReader(h.isr);
                
                StringBuffer data = new StringBuffer();
                char[] buf = new char[4096];
                int read = 0;
                while((read = h.br.read(buf)) != -1)
                    data.append(String.valueOf(buf, 0, read));
                h.eof = true;
                return data.toString();
            }
            catch (IOException e) {
                die_s(e.getMessage(), tc);
                return null; /* Unreachable */
            }
        }
        else {
            die_s("readallfh requires an object with the IOHandle REPR", tc);
            return null; /* Unreachable */
        }
    }
    
    public static long eoffh(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            if (h.is == null)
                die_s("File handle is not opened for read", tc);
            
            return h.eof ? 1 : 0;
        }
        else {
            die_s("eoffh requires an object with the IOHandle REPR", tc);
            return 0; /* Unreachable */
        }
    }
    
    public static SixModelObject closefh(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)obj;
            try {
                if (h.br != null)
                    h.br.close();
                else if (h.isr != null)
                    h.isr.close();
                else if (h.osw != null)
                    h.osw.close();
                else if (h.is != null)
                    h.is.close();
                else if (h.os != null)
                    h.os.close();
            }
            catch (IOException e) {
                die_s(e.getMessage(), tc);
            }
        }
        else {
            die_s("closefh requires an object with the IOHandle REPR", tc);
        }
        return obj;
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
    
    public static long chmod(String path, long mode) {
        Path path_o;
        try {
            path_o = Paths.get(path);
        }
        catch (Exception e) {
            return -1;
        }
        
        Set<PosixFilePermission> perms = modeToPosixFilePermission(mode);
        try {
            Files.setPosixFilePermissions(path_o, perms);
        }
        catch (Exception e) {
            return -1;
        }
        return 0;
    }
    
    public static long unlink(String path) {
        try {
            if(!Files.deleteIfExists(Paths.get(path))) {
                return -2;
            }
        }
        catch (IOException e) {
            return -1;
        }
        return 0;
    }
    
    public static long rmdir(String path) {
        Path path_o = Paths.get(path);
        try {
            if (!Files.isDirectory(path_o)) {
                return -2;
            }
            Files.delete(path_o);
        }
        catch (IOException e) {
            return -1;
        }
        return 0;
    }
    
    public static String cwd() {
        return new File(".").getAbsolutePath();
    }
    
    public static long mkdir(String path, long mode) {
        try {
            Files.createDirectory(Paths.get(path),
                        PosixFilePermissions.asFileAttribute(modeToPosixFilePermission(mode)));
        }
        catch (Exception e) {
            return -1;
        }

        return 0;
    }
    
    public static long rename(String before, String after) {
        Path before_o = Paths.get(before);
        Path after_o = Paths.get(after);
        try {
            Files.move(before_o, after_o);
        }
        catch (Exception e) {
            return -1;
        }
        return 0;
    }
    
    public static long copy(String before, String after) {
        Path before_o = Paths.get(before);
        Path after_o = Paths.get(after);
        try {
            Files.copy(before_o, after_o);
        }
        catch (Exception e) {
            return -1;
        }
        return 0;
    }
    
    public static long link(String before, String after) {
        Path before_o = Paths.get(before);
        Path after_o = Paths.get(after);
        try {
            Files.createLink(before_o, after_o);
        }
        catch (Exception e) {
            return -1;
        }
        return 0;
    }
    
    public static long symlink(String before, String after) {
        Path before_o = Paths.get(before);
        Path after_o = Paths.get(after);
        try {
            Files.createSymbolicLink(before_o, after_o);
        }
        catch (Exception e) {
            return -1;
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
            return ((SixModelObject)args[idx]).get_int(cf.tc);
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
            return ((SixModelObject)args[idx]).get_num(cf.tc);
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
            return ((SixModelObject)args[idx]).get_str(cf.tc);
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
        result.initialize(tc);
        
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
        result.initialize(tc);
        
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
        if (caller != null) {
            caller.oRet = v;
            caller.retType = CallFrame.RET_OBJ;
        }
    }
    public static void return_i(long v, CallFrame cf) {
        CallFrame caller = cf.caller;
        if (caller != null) {
            caller.iRet = v;
            caller.retType = CallFrame.RET_INT;
        }
    }
    public static void return_n(double v, CallFrame cf) {
        CallFrame caller = cf.caller;
        if (caller != null) {
            caller.nRet = v;
            caller.retType = CallFrame.RET_NUM;
        }
    }
    public static void return_s(String v, CallFrame cf) {
        CallFrame caller = cf.caller;
        if (caller != null) {
            caller.sRet = v;
            caller.retType = CallFrame.RET_STR;
        }
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
        if (cf.retType == CallFrame.RET_INT)
            return cf.iRet;
        throw ExceptionHandling.dieInternal(cf.tc, "Return value coercion NYI");
    }
    public static double result_n(CallFrame cf) {
        if (cf.retType == CallFrame.RET_NUM)
            return cf.nRet;
        throw ExceptionHandling.dieInternal(cf.tc, "Return value coercion NYI");
    }
    public static String result_s(CallFrame cf) {
        if (cf.retType == CallFrame.RET_STR)
            return cf.sRet;
        throw ExceptionHandling.dieInternal(cf.tc, "Return value coercion NYI");
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
    public static final CallSiteDescriptor findmethCallSite = new CallSiteDescriptor(new byte[] { CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_STR }, null);
    public static final CallSiteDescriptor typeCheckCallSite = new CallSiteDescriptor(new byte[] { CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_OBJ }, null);
    public static void invoke(SixModelObject invokee, int callsiteIndex, Object[] args, ThreadContext tc) throws Exception {
        // If it's lexotic, throw the exception right off.
        if (invokee instanceof Lexotic) {
            LexoticException throwee = tc.theLexotic;
            throwee.target = ((Lexotic)invokee).target;
            CallSiteDescriptor csd = tc.curFrame.codeRef.staticInfo.compUnit.callSites[callsiteIndex];
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
        // Otherwise, get the code ref.
        CodeRef cr;
        if (invokee instanceof CodeRef) {
            cr = (CodeRef)invokee;
        }
        else {
            InvocationSpec is = invokee.st.InvocationSpec;
            if (is == null)
                throw ExceptionHandling.dieInternal(tc, "Can not invoke this object");
            if (is.ClassHandle != null)
                cr = (CodeRef)invokee.get_attribute_boxed(tc, is.ClassHandle, is.AttrName, is.Hint);
            else
                cr = (CodeRef)is.InvocationHandler;
        }
        
        try {
            // Do the invocation.
            cr.staticInfo.mh.invokeExact(tc, cr, csd, args);
        }
        catch (ControlException e) {
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
        Lexotic res = new Lexotic();
        res.target = target;
        return res;
    }
    
    /* Multi-dispatch cache. */
    public static SixModelObject multicacheadd(SixModelObject cache, SixModelObject capture, SixModelObject result, ThreadContext tc) {
        if (!(cache instanceof MultiCacheInstance))
            cache = tc.gc.MultiCache.st.REPR.allocate(tc, tc.gc.MultiCache.st);
        ((MultiCacheInstance)cache).add((CallCaptureInstance)capture, result);
        return cache;
    }
    public static SixModelObject multicachefind(SixModelObject cache, SixModelObject capture, ThreadContext tc) {
        if (cache instanceof MultiCacheInstance)
            return ((MultiCacheInstance)cache).lookup((CallCaptureInstance)capture);
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
        return decont(o, tc).hashCode();
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
        res.initialize(tc);
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
            throw ExceptionHandling.dieInternal(tc, "Can not call method '" + name + "' on a null object"); 
        invocant = decont(invocant, tc);
        
        SixModelObject meth = invocant.st.MethodCache.get(name);
        if (meth == null)
            throw ExceptionHandling.dieInternal(tc, "Method '" + name + "' not found"); 
        return meth;
    }
    public static SixModelObject findmethod(SixModelObject invocant, String name, ThreadContext tc) {
        if (invocant == null)
            throw ExceptionHandling.dieInternal(tc, "Can not call method '" + name + "' on a null object"); 
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
        /* Null always type checks false. */
        if (obj == null)
            return 0;
        obj = decont(obj, tc);
        type = decont(type, tc);

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
            if (tc.curFrame.retType == CallFrame.RET_INT)
                return result_i(tc.curFrame);
            else
                return istrue(result_o(tc.curFrame), tc);
        }
        
        /* If the flag to call .accepts_type on the target value is set, do so. */
        if ((typeCheckMode & STable.TYPE_CHECK_NEEDS_ACCEPTS) != 0) {
            throw new RuntimeException("Type accepts method fallback NYI");
        }
        
        /* If we get here, type check failed. */
        return 0;
    }
    
    /* Box/unbox operations. */
    public static SixModelObject box_i(long value, SixModelObject type, ThreadContext tc) {
        SixModelObject res = type.st.REPR.allocate(tc, type.st);
        res.initialize(tc);
        res.set_int(tc, value);
        return res;
    }
    public static SixModelObject box_n(double value, SixModelObject type, ThreadContext tc) {
        SixModelObject res = type.st.REPR.allocate(tc, type.st);
        res.initialize(tc);
        res.set_num(tc, value);
        return res;
    }
    public static SixModelObject box_s(String value, SixModelObject type, ThreadContext tc) {
        SixModelObject res = type.st.REPR.allocate(tc, type.st);
        res.initialize(tc);
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
        StorageSpec ss = decont(obj, tc).st.REPR.get_storage_spec(tc, obj.st);
        return (ss.can_box & StorageSpec.CAN_BOX_INT) == 0 ? 0 : 1;
    }
    public static long isnum(SixModelObject obj, ThreadContext tc) {
        StorageSpec ss = decont(obj, tc).st.REPR.get_storage_spec(tc, obj.st);
        return (ss.can_box & StorageSpec.CAN_BOX_NUM) == 0 ? 0 : 1;
    }
    public static long isstr(SixModelObject obj, ThreadContext tc) {
        StorageSpec ss = decont(obj, tc).st.REPR.get_storage_spec(tc, obj.st);
        return (ss.can_box & StorageSpec.CAN_BOX_STR) == 0 ? 0 : 1;
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
    public static long attrinited(SixModelObject obj, SixModelObject ch, String name, ThreadContext tc) {
        return obj.is_attribute_initialized(tc, decont(ch, tc), name, STable.NO_HINT);
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
        return value;
    }
    public static long bindpos_i(SixModelObject arr, long idx, long value, ThreadContext tc) {
        tc.native_i = value;
        arr.bind_pos_native(tc, idx);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int array");
        return value;
    }
    public static double bindpos_n(SixModelObject arr, long idx, double value, ThreadContext tc) {
        tc.native_n = value;
        arr.bind_pos_native(tc, idx);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num array");
        return value;
    }
    public static String bindpos_s(SixModelObject arr, long idx, String value, ThreadContext tc) {
        tc.native_s = value;
        arr.bind_pos_native(tc, idx);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str array");
        return value;
    }
    public static SixModelObject push(SixModelObject arr, SixModelObject value, ThreadContext tc) {
        arr.push_boxed(tc, value);
        return value;
    }
    public static long push_i(SixModelObject arr, long value, ThreadContext tc) {
        tc.native_i = value;
        arr.push_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int array");
        return value;
    }
    public static double push_n(SixModelObject arr, double value, ThreadContext tc) {
        tc.native_n = value;
        arr.push_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num array");
        return value;
    }
    public static String push_s(SixModelObject arr, String value, ThreadContext tc) {
        tc.native_s = value;
        arr.push_native(tc);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str array");
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
        return value;
    }
    public static long bindkey_i(SixModelObject hash, String key, long value, ThreadContext tc) {
        tc.native_i = value;
        hash.bind_key_native(tc, key);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc, "This is not a native int hash");
        return value;
    }
    public static double bindkey_n(SixModelObject hash, String key, double value, ThreadContext tc) {
        tc.native_n = value;
        hash.bind_key_native(tc, key);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc, "This is not a native num hash");
        return value;
    }
    public static String bindkey_s(SixModelObject hash, String key, String value, ThreadContext tc) {
        tc.native_s = value;
        hash.bind_key_native(tc, key);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc, "This is not a native str hash");
        return value;
    }
    public static long existskey(SixModelObject hash, String key, ThreadContext tc) {
        return hash.exists_key(tc, key);
    }
    public static SixModelObject deletekey(SixModelObject hash, String key, ThreadContext tc) {
        hash.delete_key(tc, key);
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
    public static long existspos(SixModelObject agg, long key, ThreadContext tc) {
        return agg.exists_pos(tc, key);
    }
    public static long islist(SixModelObject obj, ThreadContext tc) {
        return obj != null && obj.st.REPR instanceof VMArray ? 1 : 0;
    }
    public static long ishash(SixModelObject obj, ThreadContext tc) {
        return obj != null && obj.st.REPR instanceof VMHash ? 1 : 0;
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
        return obj.st.ContainerSpec == null ? 0 : 1;
    }
    public static SixModelObject decont(SixModelObject obj, ThreadContext tc) {
        ContainerSpec cs = obj.st.ContainerSpec;
        return cs == null || obj instanceof TypeObject ? obj : cs.fetch(tc, obj);
    }
    public static SixModelObject assign(SixModelObject cont, SixModelObject value, ThreadContext tc) {
        ContainerSpec cs = cont.st.ContainerSpec;
        if (cs != null)
            cs.store(tc, cont, value);
        else
            ExceptionHandling.dieInternal(tc, "Cannot assign to an immutable value");
        return cont;
    }
    public static SixModelObject assignunchecked(SixModelObject cont, SixModelObject value, ThreadContext tc) {
        ContainerSpec cs = cont.st.ContainerSpec;
        if (cs != null)
            cs.storeUnchecked(tc, cont, value);
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
            iter.iterMode = VMIterInstance.MODE_ARRAY;
            return iter;
        }
        else if (agg.st.REPR instanceof VMHash) {
            SixModelObject iterType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.hashIteratorType;
            VMIterInstance iter = (VMIterInstance)iterType.st.REPR.allocate(tc, iterType.st);
            iter.target = agg;
            iter.hashKeyIter = ((VMHashInstance)agg).storage.keySet().iterator();
            iter.iterMode = VMIterInstance.MODE_HASH;
            return iter;
        }
        else if (agg.st.REPR instanceof ContextRef) {
            /* Fake up a VMHash and then get its iterator. */
            SixModelObject BOOTHash = tc.gc.BOOTHash;
            SixModelObject hash = BOOTHash.st.REPR.allocate(tc, BOOTHash.st);
            hash.initialize(tc);
            
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
        return str == null || str.equals("") || str.equals("0") ? 0 : 1;
    }
    public static long isfalse_s(String str) {
        return str == null || str.equals("") || str.equals("0") ? 1 : 0;
    }
    public static long not_i(long v) {
        return v == 0 ? 1 : 0;
    }
    
    /* Smart coercions. */
    public static String smart_stringify(SixModelObject obj, ThreadContext tc) {
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
        // If it has a Num method, that wins.
        // We could put this in the generated code, but it's here to avoid the
        // bulk.
        SixModelObject numMeth = obj.st.MethodCache.get("Num");
        if (numMeth != null) {
            invokeDirect(tc, numMeth, invocantCallSite, new Object[] { obj });
            return result_n(tc.curFrame);
        }
        
        // If it's a type object, empty string.
        if (obj instanceof TypeObject)
            return 0.0;

        // See if it can unbox to a primitive we can numify.
        StorageSpec ss = obj.st.REPR.get_storage_spec(tc, obj.st);
        if ((ss.can_box & StorageSpec.CAN_BOX_INT) != 0)
            return (double)obj.get_int(tc);
        if ((ss.can_box & StorageSpec.CAN_BOX_NUM) != 0)
            return obj.get_num(tc);
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
        return makeBI(tc, type, valA.multiply(valB).divide(gcd));
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
        result.initialize(tc);
        
        result.push_boxed(tc, box_n(value, hllConfig.numBoxType, tc));
        result.push_boxed(tc, box_n(base, hllConfig.numBoxType, tc));
        result.push_boxed(tc, box_n(pos, hllConfig.numBoxType, tc));
        
        return result;
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

    public static String chr(long val) {
        return (new StringBuffer()).append((char) val).toString();
    }
    
    public static String join(String delimiter, SixModelObject arr, ThreadContext tc) {
        final StringBuilder sb = new StringBuilder();

        final int numElems = (int) arr.elems(tc);
        for (int i = 0; i < numElems; i++) {
            if (sb.length() > 0) {
                sb.append(delimiter);
            }
            sb.append(arr.at_pos_boxed(tc, i).get_str(tc));
        }

        return sb.toString();
    }
    
    public static SixModelObject split(String delimiter, String string, ThreadContext tc) {

        if (string == null || delimiter == null) {
            return null;
        }

        HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
        SixModelObject arrayType = hllConfig.slurpyArrayType;
        SixModelObject array = arrayType.st.REPR.allocate(tc, arrayType.st);
        array.initialize(tc);

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
        return string.indexOf(pattern, (int)fromIndex);
    }

    public static long rindexfromend(String string, String pattern) {
        return string.lastIndexOf(pattern);
    }

    public static long rindexfrom(String string, String pattern, long fromIndex) {
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

    public static long ordfirst(String str) {
        return str.codePointAt(0);
    }

    public static long ordat(String str, long offset) {
        return str.codePointAt((int)offset);
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
    
    /* Brute force, but not normally needed for most programs. */
    private static HashMap<String, Character> cpNameMap;
    public static long codepointfromname(String name) {
        if (cpNameMap == null) {
            cpNameMap = new HashMap<String, Character>();
            for (char i = 0; i < Character.MAX_VALUE; i++)
                if (Character.isValidCodePoint(i))
                    cpNameMap.put(Character.getName(i), i);
        }
        Character found = cpNameMap.get(name);
        return found == null ? -1 : found;
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
    private static final int[] PUNCT_TYPES = {
        Character.CONNECTOR_PUNCTUATION, Character.DASH_PUNCTUATION,
           Character.END_PUNCTUATION, Character.FINAL_QUOTE_PUNCTUATION,
           Character.INITIAL_QUOTE_PUNCTUATION, Character.OTHER_PUNCTUATION,
           Character.START_PUNCTUATION
    };
    
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
            return Character.isWhitespace(test) ? 1 : 0;
        case CCLASS_PRINTING:
            throw new RuntimeException("CCLASS_PRINTING NYI");
        case CCLASS_WORD:
            return test == '_' || Character.isLetterOrDigit(test) ? 1 : 0;
        case CCLASS_NEWLINE:
            return (Character.getType(test) == Character.LINE_SEPARATOR) ||
                    (test == '\n' || test == '\r')
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
            int type = Character.getType(test);
            for (int punct : PUNCT_TYPES) {
                if (type == punct) { return 1; }
            }
            return 0;
        case CCLASS_ALPHANUMERIC:
            return Character.isLetterOrDigit(test) ? 1 : 0;
        default:
            return 0;
        }
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
    
    public static long ischarprop(String propName, String target, long offset) {
        String check = target.substring((int)offset, (int)offset + 1);
        return check.matches("\\p{" + propName + "}") ? 1 : 0;
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
            throw ExceptionHandling.dieInternal(tc, "SC with handle " + handle + " already exists");
        
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
            ArrayList<SixModelObject> roots = sc.root_objects; 
            if (roots.size() == idx)
                roots.add(obj);
            else
                roots.set((int)idx, obj);
            if (obj.st.sc == null) {
                sc.root_stables.add(obj.st);
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
                ArrayList<CodeRef> roots = ((SCRefInstance)scRef).referencedSC.root_codes; 
                if (roots.size() == idx)
                    roots.add((CodeRef)obj);
                else
                    roots.set((int)idx, (CodeRef)obj);
                obj.sc = ((SCRefInstance)scRef).referencedSC;
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
            return ((SCRefInstance)scRef).referencedSC.root_objects.get((int)idx);
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
             int idx = ((SCRefInstance)scRef).referencedSC.root_objects.indexOf(find);
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
            return ((SCRefInstance)scRef).referencedSC.root_objects.size();
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
    public static String deserialize(String blob, SixModelObject scRef, SixModelObject sh, SixModelObject cr, SixModelObject conflict, ThreadContext tc) {
        if (scRef instanceof SCRefInstance) {
            SerializationContext sc = ((SCRefInstance)scRef).referencedSC;
            
            String[] shArray = new String[(int)sh.elems(tc)];
            for (int i = 0; i < shArray.length; i++) {
                sh.at_pos_native(tc, i); 
                shArray[i] = tc.native_s;
            }
            
            CodeRef[] crArray = new CodeRef[(int)cr.elems(tc)];
            for (int i = 0; i < crArray.length; i++)
                crArray[i] = (CodeRef)cr.at_pos_boxed(tc, i);
            
            SerializationReader sr = new SerializationReader(
                    tc, sc, shArray, crArray,
                    Base64.decode(blob));
            sr.deserialize();
            
            return blob;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "deserialize was not passed a valid SCRef");
        }
    }
    public static SixModelObject wval(String sc, long idx, ThreadContext tc) {
        return tc.gc.scs.get(sc).root_objects.get((int)idx);
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
    
    /* SC write barriers (not really ops, but putting them here with the SC
     * related bits). */
    public static void scwbObject(ThreadContext tc, SixModelObject obj) {
        int cscSize = tc.compilingSCs == null ? 0 : tc.compilingSCs.size();
        if (cscSize == 0 || tc.scwbDisableDepth > 0)
            return;
        SerializationContext compSC = tc.compilingSCs.get(cscSize - 1).referencedSC;
        if (obj.sc != compSC) {
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
            return ((CodeRef)code).staticInfo.name;
        else
            throw ExceptionHandling.dieInternal(tc, "getcodename can only be used with a CodeRef");
    }
    public static SixModelObject setcodename(SixModelObject code, String name, ThreadContext tc) {
        if (code instanceof CodeRef) {
            ((CodeRef)code).staticInfo.name = name;
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
        tc.curFrame.oLex[lexIdx] = tc.currentDispatcher;
        tc.currentDispatcher = null;
    }

    /* process related opcodes */
    public static long exit(final long status) {
        System.exit((int) status);
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
        res.initialize(tc);
        
        Map<String, String> env = System.getenv();
        for (String envName : env.keySet())
            res.bind_key_boxed(tc, envName, box_s(env.get(envName), strType, tc));
        
        return res;
    }
    
    /* Exception related. */
    public static String die_s(String msg, ThreadContext tc) {
        // Construct exception object.
        SixModelObject exType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.exceptionType;
        VMExceptionInstance exObj = (VMExceptionInstance)exType.st.REPR.allocate(tc, exType.st);
        exObj.initialize(tc);
        exObj.message = msg;
        exObj.category = ExceptionHandling.EX_CAT_CATCH;
        exObj.origin = tc.curFrame;
        ExceptionHandling.handlerDynamic(tc, ExceptionHandling.EX_CAT_CATCH, exObj);
        return msg;
    }
    public static SixModelObject throwcatdyn(long category, ThreadContext tc) {
        return ExceptionHandling.handlerDynamic(tc, category, null);
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
    public static String getmessage(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof VMExceptionInstance) {
            String msg = ((VMExceptionInstance)obj).message;
            return msg == null ? "Died" : msg;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "getmessage needs an object with VMException representation");
        }
    }
    public static SixModelObject getpayload(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof VMExceptionInstance)
            return ((VMExceptionInstance)obj).payload;
        else
            throw ExceptionHandling.dieInternal(tc, "getpayload needs an object with VMException representation");
    }
    public static SixModelObject backtracestrings(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof VMExceptionInstance) {
            SixModelObject Array = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.listType;
            SixModelObject Str = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strBoxType;
            SixModelObject result = Array.st.REPR.allocate(tc, Array.st);
            result.initialize(tc);
            
            List<String> lines = ExceptionHandling.backtraceStrings(((VMExceptionInstance)obj).origin);
            for (int i = 0; i < lines.size(); i++)
                result.bind_pos_boxed(tc, i, box_s(lines.get(i), Str, tc));
            
            return result;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "backtracestring needs an object with VMException representation");
        }
    }
    public static SixModelObject rethrow(SixModelObject obj, ThreadContext tc) {
        if (obj instanceof VMExceptionInstance) {
            VMExceptionInstance ex = (VMExceptionInstance)obj;
            return ExceptionHandling.handlerDynamic(tc, ex.category, ex);
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "rethrow needs an object with VMException representation");
        }
    }
    private static ResumeException theResumer = new ResumeException(); 
    public static SixModelObject resume(SixModelObject obj, ThreadContext tc) {
        throw theResumer;
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
        if (configHash.exists_key(tc, "foreign_transform_any") != 0)
            config.foreignTransformAny = configHash.at_key_boxed(tc, "foreign_transform_any");
        if (configHash.exists_key(tc, "null_value") != 0)
            config.nullValue = configHash.at_key_boxed(tc, "null_value");
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
        nfa.initialize(tc);
        
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
                
                switch (act) {
                case NFA.EDGE_FATE:
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
                case NFA.EDGE_CODEPOINT_I:
                case NFA.EDGE_CODEPOINT_I_NEG: {
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
        fateRes.initialize(tc);
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
    private static ArrayList<Integer> fates = new ArrayList<Integer>();
    private static ArrayList<Integer> curst = new ArrayList<Integer>();
    private static ArrayList<Integer> nextst = new ArrayList<Integer>();
    private static int[] runNFA(ThreadContext tc, NFAInstance nfa, String target, long pos) {
        int eos = target.length();
        int gen = 1;
        
        /* Allocate a "done states" array. */
        int numStates = nfa.numStates;
        int[] done = new int[numStates + 1];
        
        /* Clear out other re-used arrays. */
        curst.clear();
        nextst.clear();
        fates.clear();
        
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
                    
                    if (act == NFA.EDGE_FATE) {
                        /* Crossed a fate edge. Check if we already saw this, and
                         * if so bump the entry we already saw. */
                        int arg = edgeInfo[i].arg_i;
                        boolean foundFate = false;
                        for (int j = 0; j < fates.size(); j++) {
                            if (foundFate)
                                fates.set(j - 1, fates.get(j));
                            if (fates.get(j )== arg) {
                                foundFate = true;
                                if (j < prevFates)
                                    prevFates--;
                            }
                        }
                        if (foundFate)
                            fates.set(fates.size() - 1, arg);
                        else
                            fates.add(arg);
                    }
                    else if (act == NFA.EDGE_EPSILON && to <= numStates && done[to] != gen) {
                        curst.add(to);
                    }
                    else if (pos >= eos) {
                        /* Can't match, so drop state. */
                    }
                    else if (act == NFA.EDGE_CODEPOINT) {
                        char arg = (char)edgeInfo[i].arg_i;
                        if (target.charAt((int)pos) == arg)
                            nextst.add(to);
                    }
                    else if (act == NFA.EDGE_CODEPOINT_NEG) {
                        char arg = (char)edgeInfo[i].arg_i;
                        if (target.charAt((int)pos) != arg)
                            nextst.add(to);
                    }
                    else if (act == NFA.EDGE_CHARCLASS) {
                        if (iscclass(edgeInfo[i].arg_i, target, pos) != 0)
                            nextst.add(to);
                    }
                    else if (act == NFA.EDGE_CHARCLASS_NEG) {
                        if (iscclass(edgeInfo[i].arg_i, target, pos) == 0)
                            nextst.add(to);
                    }
                    else if (act == NFA.EDGE_CHARLIST) {
                        String arg = edgeInfo[i].arg_s;
                        if (arg.indexOf(target.charAt((int)pos)) >= 0)
                            nextst.add(to);
                    }
                    else if (act == NFA.EDGE_CHARLIST_NEG) {
                        String arg = edgeInfo[i].arg_s;
                        if (arg.indexOf(target.charAt((int)pos)) < 0)
                            nextst.add(to);
                    }
                    else if (act == NFA.EDGE_CODEPOINT_I) {
                        char uc_arg = edgeInfo[i].arg_uc;
                        char lc_arg = edgeInfo[i].arg_lc;
                        char ord = target.charAt((int)pos);
                        if (ord == lc_arg || ord == uc_arg)
                            nextst.add(to);
                    }
                    else if (act == NFA.EDGE_CODEPOINT_I_NEG) {
                        char uc_arg = edgeInfo[i].arg_uc;
                        char lc_arg = edgeInfo[i].arg_lc;
                        char ord = target.charAt((int)pos);
                        if (ord != lc_arg && ord != uc_arg)
                            nextst.add(to);
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
        
        int[] result = new int[fates.size()];
        for (int i = 0; i < fates.size(); i++)
                result[i] = fates.get(i);
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
            return 0.0;
        }
    }
    public static String coerce_i2s(long in) {
        return Long.toString(in);
    }
    public static String coerce_n2s(double in) {
        return in == (long)in ? Long.toString((long)in) : Double.toString(in);
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
        /* What follows is a bit of a hack, relying on the first field being the
         * big integer. */
        obj.get_attribute_native(tc, null, null, 0);
        return (BigInteger)tc.native_j;
    }
    
    private static SixModelObject makeBI(ThreadContext tc, SixModelObject type, BigInteger value) {
        SixModelObject res = type.st.REPR.allocate(tc, type.st);
        res.initialize(tc);
        if (res instanceof P6bigintInstance) {
            ((P6bigintInstance)res).value = value;
        }
        else {
            tc.native_j = value;
            res.bind_attribute_native(tc, null, null, 0);
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
         * bitLength excludes sign considerations, thus 63 rather than 64. */
        return getBI(tc, value).bitLength() > 63 ? 1 : 0;
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
        return makeBI(tc, type, getBI(tc, a).add(getBI(tc, b)));
    }
    
    public static SixModelObject sub_I(SixModelObject a, SixModelObject b, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a).subtract(getBI(tc, b)));
    }
    
    public static SixModelObject mul_I(SixModelObject a, SixModelObject b, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a).multiply(getBI(tc, b)));
    }
    
    public static SixModelObject div_I(SixModelObject a, SixModelObject b, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a).divide(getBI(tc, b)));
    }
    
    public static double div_In(SixModelObject a, SixModelObject b, ThreadContext tc) {
        return new BigDecimal(getBI(tc, a)).divide(new BigDecimal(getBI(tc, b))).doubleValue();
    }
    
    public static SixModelObject mod_I(SixModelObject a, SixModelObject b, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a).mod(getBI(tc, b)));
    }
    
    public static SixModelObject expmod_I(SixModelObject a, SixModelObject b, SixModelObject c, SixModelObject type, ThreadContext tc) {
        return makeBI(tc, type, getBI(tc, a).modPow(getBI(tc, b), getBI(tc, c)));
    }
    
    public static long isprime_I(SixModelObject a, long certainty, ThreadContext tc) {
        BigInteger bi = getBI(tc, a);
        if (bi.compareTo(BigInteger.valueOf(1)) <= 0) {
            return 0;
    	}
        return bi.isProbablePrime((int)certainty) ? 1 : 0;
    }
    
    public static SixModelObject rand_I(SixModelObject a, SixModelObject type, ThreadContext tc) {
        BigInteger size = getBI(tc, a);
        BigInteger random = new BigInteger(size.bitLength(), ThreadLocalRandom.current()).mod(size);
        return makeBI(tc, type, random);
    }
    
    public static SixModelObject pow_I(SixModelObject a, SixModelObject b, SixModelObject biType, SixModelObject nType, ThreadContext tc) {
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
                }
                else {
                    /* Otherwise, do floating point infinity of the right sign. */
                    SixModelObject result = nType.st.REPR.allocate(tc, nType.st);
                    result.initialize(tc);
                    result.set_num(tc, cmp > 0 ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY);
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
            result.initialize(tc);
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
        result.initialize(tc);
        
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
    public static SixModelObject compilejast(String dump, ThreadContext tc) {
        EvalResult res = new EvalResult();
        res.jc = JASTToJVMBytecode.buildClassFromString(dump);
        return res;
    }
    public static String compilejasttofile(String dump, String filename, ThreadContext tc) {
        JASTToJVMBytecode.writeClassFromString(dump, filename);
        return dump;
    }
    public static SixModelObject loadcompunit(SixModelObject obj, long compileeHLL, ThreadContext tc) {
        try {
            EvalResult res = (EvalResult)obj;
            ByteClassLoader cl = new ByteClassLoader(res.jc.bytes);
            res.cu = (CompilationUnit)cl.findClass(res.jc.name).newInstance();
            if (compileeHLL != 0)
                usecompileehllconfig(tc);
            res.cu.initializeCompilationUnit(tc);
            if (compileeHLL != 0)
                usecompilerhllconfig(tc);
            res.jc = null;
            return obj;
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
        return res.cu.codeRefs[res.cu.mainlineIdx()];
    }
    public static SixModelObject compunitcodes(SixModelObject obj, ThreadContext tc) {
        EvalResult res = (EvalResult)obj;
        SixModelObject Array = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.listType;
        SixModelObject result = Array.st.REPR.allocate(tc, Array.st);
        result.initialize(tc);
        for (int i = 0; i < res.cu.codeRefs.length; i++)
            result.bind_pos_boxed(tc, i, res.cu.codeRefs[i]);
        return result;
    }
    public static SixModelObject jvmclasspaths(ThreadContext tc) {
        SixModelObject Array = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.listType;
        SixModelObject Str = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strBoxType;
        SixModelObject result = Array.st.REPR.allocate(tc, Array.st);
        result.initialize(tc);
        String cpStr = System.getProperty("java.class.path");
        String[] cps = cpStr.split("[:;]");
        for (int i = 0; i < cps.length; i++)
            result.push_boxed(tc, box_s(cps[i], Str, tc));
        return result;
    }
    
    private static int compileeDepth = 0;
    public static long usecompileehllconfig(ThreadContext tc) {
        if (compileeDepth == 0)
            tc.gc.useCompileeHLLConfig();
        compileeDepth++;
        return 1;
    }
    public static long usecompilerhllconfig(ThreadContext tc) {
        compileeDepth--;
        if (compileeDepth == 0)
            tc.gc.useCompilerHLLConfig();
        return 1;
    }
}
