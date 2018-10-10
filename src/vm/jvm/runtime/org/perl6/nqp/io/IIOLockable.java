package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOLockable {
    void lock(ThreadContext tc, long flag);

    void unlock(ThreadContext tc);
}
