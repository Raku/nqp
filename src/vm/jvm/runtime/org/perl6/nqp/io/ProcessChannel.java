package org.perl6.nqp.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class ProcessChannel implements ByteChannel, java.lang.Runnable {
    public WritableByteChannel out;
    public OutputStream out_stream;
    public ReadableByteChannel in;
    public Process process;

    public void run() {
        try {
            ByteBuffer bb = ByteBuffer.allocate(32768);
            int      read = 1;
            while (read > 0) {
                read = in.read(bb);
                if (read > 0) {
                    out_stream.write(bb.array(), 0, read);
                }
            }
        } catch (Exception e) {
            throw new RuntimeException("Broken pipe", e);
        } finally {
            try {
                out.close();
            } catch (Exception e) {
            }
            try {
                in.close();
            } catch (Exception e) {
            }
        }
    }

    public ProcessChannel(Process process, OutputStream out, ReadableByteChannel in) {
        this.out        = Channels.newChannel(out);
        this.out_stream = out;
        this.in         = in;
        this.process    = process;
    }

    public ProcessChannel(Process process, OutputStream out) {
        this.out     = Channels.newChannel(out);
        this.process = process;
    }

    public ProcessChannel(Process process, InputStream in) {
        this.in      = Channels.newChannel(in);
        this.process = process;
    }

    public int read(ByteBuffer dst) throws IOException {
        return in.read(dst);
    }

    public boolean isOpen() {
        return in.isOpen();
    }

    public void close() throws IOException {
        if (in instanceof ReadableByteChannel)
            in.close();
        if (out instanceof WritableByteChannel)
            out.close();
    }

    public int exitValue() throws InterruptedException {
        return process.waitFor();
    }

    public int write(ByteBuffer src) throws IOException {
        return out.write(src);
    }
}
