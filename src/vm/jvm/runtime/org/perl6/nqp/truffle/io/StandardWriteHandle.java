package org.perl6.nqp.truffle.io;

import java.io.IOException;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;


public class StandardWriteHandle implements IIOClosable, IIOSeekable, IIOEncodable, IIOSyncWritable, IIOPossiblyTTY {
    private PrintStream ps;
    private CharsetEncoder enc;
    private CharsetDecoder dec;
    private long pos;

    public StandardWriteHandle(PrintStream ps) {
        this.ps = ps;
        this.pos = 0;
        setEncoding(Charset.forName("UTF-8"));
    }

    public void close() {
        ps.close();
    }

    public void seek(long offset, long whence) {
        throw new RuntimeException("Cannot seek stdout or stderr");
    }

    public long tell() {
        return pos;
    }

    public void setEncoding(Charset cs) {
        enc = cs.newEncoder();
        dec = cs.newDecoder();
    }

    public long write(byte[] bytes) {
        ps.write(bytes, 0, bytes.length);
        pos += bytes.length;
        return bytes.length;
    }

    public long print(String s) {
        try {
            ByteBuffer buffer = enc.encode(CharBuffer.wrap(s));
            byte[] bytes = buffer.array();
            ps.write(bytes, 0, buffer.limit());
            return bytes.length;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public long say(String s) {
        long bytes = print(s);
        bytes += print(System.lineSeparator());
        return bytes;
    }

    public void flush() {
        ps.flush();
    }

    public boolean isTTY() {
        return System.console() != null;
    }
}
