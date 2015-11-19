package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOPossiblyTTY {
    public boolean isTTY(ThreadContext tc);
}
