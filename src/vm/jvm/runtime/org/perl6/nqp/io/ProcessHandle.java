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

public class ProcessHandle extends SyncHandle {
    
    Process process;

    public ProcessHandle(ThreadContext tc, String cmd, String dir, Map<String, String> env) {
        ProcessBuilder pb;
        String os = System.getProperty("os.name").toLowerCase();
        if (os.indexOf("win") >= 0) {
            pb = new ProcessBuilder("cmd", "/c", cmd.replace('/', '\\'));
        } else {
            pb = new ProcessBuilder("sh", "-c", cmd);
        }
        pb.directory(new File(dir));
        pb.redirectErrorStream(true);

        // Clear the JVM inherited environment and use provided only
        Map<String, String> pbEnv = pb.environment();
        pbEnv.clear();
        pbEnv.putAll(env);
        
        try {
            process = pb.start();
            chan = new ProcessChannel(process.getOutputStream(), process.getInputStream());
            setEncoding(tc, Charset.forName("UTF-8"));
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public void flush(ThreadContext tc) {
        // Not provided.
    }
    
    static class ProcessChannel implements ByteChannel {
        protected WritableByteChannel stdin;
        protected ReadableByteChannel stdout;
        
        public ProcessChannel(OutputStream stdin, InputStream stdout) {
            this.stdin = Channels.newChannel(stdin);
            this.stdout = Channels.newChannel(stdout);
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

        public int write(ByteBuffer src) throws IOException {
            return stdin.write(src);
        }
    }
}
