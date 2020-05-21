package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;

public interface IIOSyncReadable {
    public String slurp(ThreadContext tc);
    public String readline(ThreadContext tc);
    public String readchars(ThreadContext tc, int chars);
    public byte[] read(ThreadContext tc, int bytes);
    public boolean eof(ThreadContext tc);
}
