package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;

public interface IIOSeekable {
    void seek(ThreadContext tc, long offset, long whence);
    long tell(ThreadContext tc);
}
