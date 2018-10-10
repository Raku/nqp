package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOSyncReadable {
    String slurp(ThreadContext tc);

    String readline(ThreadContext tc);

    String readchars(ThreadContext tc, int chars);

    byte[] read(ThreadContext tc, int bytes);

    boolean eof(ThreadContext tc);
}
