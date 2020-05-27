package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;

public interface IIOBindable {

    void bind(ThreadContext tc, String host, int port, int backlog);

}
