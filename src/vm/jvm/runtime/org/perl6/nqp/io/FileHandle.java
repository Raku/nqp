package org.perl6.nqp.io;

import java.io.File;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class FileHandle implements IIOClosable, IIOSeekable, IIOEncodable {
    private FileChannel chan;
    private CharsetEncoder enc;
    private CharsetDecoder dec;
    
    public FileHandle(ThreadContext tc, String filename, String mode) {
        try {
            Path p = new File(filename).toPath();
            if (mode.equals("r")) {
                chan = FileChannel.open(p, StandardOpenOption.READ);
            }
            else if (mode.equals("w")) {
                chan = FileChannel.open(p, StandardOpenOption.WRITE,
                                           StandardOpenOption.CREATE);
            }
            else if (mode.equals("wa")) {
                chan = FileChannel.open(p, StandardOpenOption.WRITE,
                                           StandardOpenOption.CREATE,
                                           StandardOpenOption.APPEND);
            }
            else {
                ExceptionHandling.dieInternal(tc, "Unhandled file open mode '" + mode + "'");
            }
            setEncoding(tc, Charset.forName("UTF-8"));
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public void close(ThreadContext tc) {
        try {
            chan.close();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public void seek(ThreadContext tc, long offset, long whence) {
        try {
            switch ((int)whence) {
            case 0:
                chan.position(offset);
                break;
            case 1:
                chan.position(chan.position() + offset);
                break;
            case 2:
                chan.position(chan.size());
                break;
            default:
                throw ExceptionHandling.dieInternal(tc, "Invalid seek mode");
            }
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public long tell(ThreadContext tc) {
        try {
            return chan.position();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public void setEncoding(ThreadContext tc, Charset cs) {
        enc = cs.newEncoder();
        dec = cs.newDecoder();
    }
}
