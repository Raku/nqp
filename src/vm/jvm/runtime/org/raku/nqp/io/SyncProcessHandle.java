package org.raku.nqp.io;

import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

import org.raku.nqp.runtime.ThreadContext;

public class SyncProcessHandle extends SyncHandle {

    public Process process;

    public SyncProcessHandle(ThreadContext tc) {
        setEncoding(tc, Charset.forName("UTF-8"));
    }

    public void bindChannel(ThreadContext tc, Process process, OutputStream out) {
        this.process = process;
        this.chan    = new ProcessChannel(process, out);
        setEncoding(tc, Charset.forName("UTF-8"));
    }

    public void bindChannel(ThreadContext tc, Process process, InputStream in) {
        this.process = process;
        this.chan    = new ProcessChannel(process, in);
        setEncoding(tc, Charset.forName("UTF-8"));
    }

    @Override
    public void flush(ThreadContext tc) {
        // Not provided.
    }
}
