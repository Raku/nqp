package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOSeekable {
    public void seek(ThreadContext tc, long offset, long whence);
    public long tell(ThreadContext tc);
}
