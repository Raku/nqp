package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;

public interface IIOLockable {
    public void lock(ThreadContext tc, long flag);
    public void unlock(ThreadContext tc);
}
