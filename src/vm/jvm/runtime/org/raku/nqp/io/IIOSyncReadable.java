package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;

public interface IIOSyncReadable {
    String slurp(ThreadContext tc);
    String readline(ThreadContext tc);
    String readchars(ThreadContext tc, int chars);
    byte[] read(ThreadContext tc, int bytes);
    boolean eof(ThreadContext tc);
}
