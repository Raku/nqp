package org.perl6.nqp.io;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import java.util.Map;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class ProcessChannel implements ByteChannel {
    protected WritableByteChannel stdin;
    protected ReadableByteChannel stdout;
    protected Process process;
    
    public ProcessChannel(Process process, OutputStream stdin, InputStream stdout) {
        this.stdin = Channels.newChannel(stdin);
        this.stdout = Channels.newChannel(stdout);
        this.process = process;
    }

    public int read(ByteBuffer dst) throws IOException {
        return stdout.read(dst);
    }

    public boolean isOpen() {
        return stdin.isOpen();
    }

    public void close() throws IOException {
        stdin.close();
        stdout.close();
    }

    public int exitValue() throws IllegalThreadStateException {
        return process.exitValue();
    }

    public int write(ByteBuffer src) throws IOException {
        return stdin.write(src);
    }
}
