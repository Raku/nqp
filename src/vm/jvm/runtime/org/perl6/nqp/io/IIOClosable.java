package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOClosable {
    public void close(ThreadContext tc);
}
