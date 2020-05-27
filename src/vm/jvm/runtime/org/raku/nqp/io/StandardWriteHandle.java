package org.raku.nqp.io;

import java.io.IOException;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.ThreadContext;

public class StandardWriteHandle implements IIOClosable, IIOSeekable, IIOEncodable, IIOSyncWritable, IIOPossiblyTTY {
    private PrintStream ps;
    private CharsetEncoder enc;
    private CharsetDecoder dec;
    private long pos;

    public StandardWriteHandle(ThreadContext tc, PrintStream ps) {
        this.ps = ps;
        this.pos = 0;
        setEncoding(tc, Charset.forName("UTF-8"));
    }

    @Override
    public void close(ThreadContext tc) {
        ps.close();
    }

    @Override
    public void seek(ThreadContext tc, long offset, long whence) {
        throw ExceptionHandling.dieInternal(tc, "Cannot seek stdout or stderr");
    }

    @Override
    public long tell(ThreadContext tc) {
        return pos;
    }

    @Override
    public void setEncoding(ThreadContext tc, Charset cs) {
        enc = cs.newEncoder();
        dec = cs.newDecoder();
    }

    @Override
    public long write(ThreadContext tc, byte[] bytes) {
        ps.write(bytes, 0, bytes.length);
        pos += bytes.length;
        return bytes.length;
    }

    @Override
    public long print(ThreadContext tc, String s) {
        try {
            ByteBuffer buffer = enc.encode(CharBuffer.wrap(s));
            byte[] bytes = buffer.array();
            ps.write(bytes, 0, buffer.limit());
            return bytes.length;
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public long say(ThreadContext tc, String s) {
        long bytes = print(tc, s);
        bytes += print(tc, System.lineSeparator());
        return bytes;
    }

    @Override
    public void flush(ThreadContext tc) {
        ps.flush();
    }

    @Override
    public boolean isTTY(ThreadContext tc) {
        return System.console() != null;
    }

    @Override
    public void setBufferSize(ThreadContext tc, long size) {
        // TODO: does it make sense to have setBufferSize here?
        // currently required as IIOSyncWritable has this method
    }
}
