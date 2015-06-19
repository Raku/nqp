package org.perl6.nqp.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ProcessBuilder.Redirect;
import java.nio.charset.Charset;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class ProcessHandle extends SyncHandle {

    public Process process;

    public ProcessHandle(ThreadContext tc) {
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

    public void flush(ThreadContext tc) {
        // Not provided.
    }
}
