package org.perl6.nqp.io;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.AsynchronousFileChannel;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class AsyncFileHandle implements IIOClosable, IIOEncodable {
    private AsynchronousFileChannel chan;
    private CharsetEncoder enc;
    private CharsetDecoder dec;
    
    public AsyncFileHandle(ThreadContext tc, String filename, String mode) {
        try {
            Path p = new File(filename).toPath();
            if (mode.equals("r")) {
                chan = AsynchronousFileChannel.open(p, StandardOpenOption.READ);
            }
            else if (mode.equals("w")) {
                chan = AsynchronousFileChannel.open(p, StandardOpenOption.WRITE,
                                                       StandardOpenOption.CREATE);
            }
            else if (mode.equals("wa")) {
                chan = AsynchronousFileChannel.open(p, StandardOpenOption.WRITE,
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
    
    public void setEncoding(ThreadContext tc, Charset cs) {
        enc = cs.newEncoder();
        dec = cs.newDecoder();
    }
}
