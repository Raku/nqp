package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOBindable {
    void bind(ThreadContext tc, String host, int port, int backlog);
}
