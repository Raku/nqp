package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOPossiblyTTY {
    boolean isTTY(ThreadContext tc);
}
