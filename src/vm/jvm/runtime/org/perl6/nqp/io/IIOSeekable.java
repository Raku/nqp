package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOSeekable {
    void seek(ThreadContext tc, long offset, long whence);

    long tell(ThreadContext tc);
}
