package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;

public interface IIOClosable {
    public void close(ThreadContext tc);
}
