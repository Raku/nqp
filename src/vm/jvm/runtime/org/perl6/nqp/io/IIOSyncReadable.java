package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOSyncReadable {
    public String slurp(ThreadContext tc);
    public String readline(ThreadContext tc);
    public boolean eof(ThreadContext tc);
}
