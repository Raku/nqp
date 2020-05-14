package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;

public interface IIOSeekable {
    public void seek(ThreadContext tc, long offset, long whence);
    public long tell(ThreadContext tc);
}
