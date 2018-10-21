package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOLockable {
    public void lock(ThreadContext tc, long flag);
    public void unlock(ThreadContext tc);
}
