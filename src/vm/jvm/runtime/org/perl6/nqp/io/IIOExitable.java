package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOExitable {
    int exitValue(ThreadContext tc) throws IllegalThreadStateException;
}
