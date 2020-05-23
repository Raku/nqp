package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;

public interface IIOPossiblyTTY {
    boolean isTTY(ThreadContext tc);
}
