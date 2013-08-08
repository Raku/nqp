package org.perl6.nqp.io;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class FileHandle implements IIOClosable, IIOSeekable, IIOEncodable, IIOSyncReadable, IIOSyncWritable {
    private FileChannel chan;
    private CharsetEncoder enc;
    private CharsetDecoder dec;
    private boolean eof = false;
    
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
    
    public String slurp(ThreadContext tc) {
        try {
            // Read in file.
            ArrayList<ByteBuffer> buffers = new ArrayList<ByteBuffer>();
            ByteBuffer curBuffer = ByteBuffer.allocate(32768);
            int total = 0;
            int read;
            while ((read = chan.read(curBuffer)) != -1) {
                buffers.add(curBuffer);
                curBuffer = ByteBuffer.allocate(32768);
                total += read;
            }
            eof = true;
            
            // Copy to a single buffer and decode (could be smarter, but need
            // to be wary as UTF-8 chars may span a buffer boundary).
            ByteBuffer allBytes = ByteBuffer.allocate(total);
            for (ByteBuffer bb : buffers)
                allBytes.put(bb.array(), 0, bb.position());
            allBytes.rewind();
            return dec.decode(allBytes).toString();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public String readline(ThreadContext tc) {
        throw new RuntimeException("FileHandle.readline() NYI");
    }
    
    public boolean eof(ThreadContext tc) {
        return eof;
    }
    
    public void print(ThreadContext tc, String s) {
        try {
            ByteBuffer buffer = enc.encode(CharBuffer.wrap(s));
            while (buffer.position() > 0) {
                buffer.flip();
                chan.write(buffer);
                buffer.compact();
            }
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public void say(ThreadContext tc, String s) {
        print(tc, s);
        print(tc, System.lineSeparator());
    }
}
