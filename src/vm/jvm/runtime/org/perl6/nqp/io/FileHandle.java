package org.perl6.nqp.io;

import java.io.File;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class FileHandle extends SyncHandle implements IIOSeekable {
    
    FileChannel fc;
    
    public FileHandle(ThreadContext tc, String filename, String mode) {
        try {
            Path p = new File(filename).toPath();
            if (mode.equals("r")) {
                fc = FileChannel.open(p, StandardOpenOption.READ);
            }
            else if (mode.equals("w")) {
                fc = FileChannel.open(p, StandardOpenOption.WRITE,
                                           StandardOpenOption.CREATE,
                                           StandardOpenOption.TRUNCATE_EXISTING);
            }
            else if (mode.equals("wa")) {
                fc = FileChannel.open(p, StandardOpenOption.WRITE,
                                           StandardOpenOption.CREATE,
                                           StandardOpenOption.APPEND);
            }
            else {
                ExceptionHandling.dieInternal(tc, "Unhandled file open mode '" + mode + "'");
            }
            chan = fc;
            setEncoding(tc, Charset.forName("UTF-8"));
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public void seek(ThreadContext tc, long offset, long whence) {
        try {
            switch ((int)whence) {
            case 0:
                fc.position(offset);
                break;
            case 1:
                fc.position(fc.position() + offset);
                break;
            case 2:
                fc.position(fc.size() + offset);
                break;
            default:
                throw ExceptionHandling.dieInternal(tc, "Invalid seek mode");
            }
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        } catch (IllegalArgumentException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public long tell(ThreadContext tc) {
        try {
            long position = fc.position();
            return readBuffer != null ? position - readBuffer.remaining() : position;
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public void flush(ThreadContext tc) {
        try {
            fc.force(false);
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
}
