package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;

public interface IIOExitable {
    int exitValue(ThreadContext tc) throws IllegalThreadStateException;
}
