package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;

public interface IIOLockable {
    void lock(ThreadContext tc, long flag);
    void unlock(ThreadContext tc);
}
