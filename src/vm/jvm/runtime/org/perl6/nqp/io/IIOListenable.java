package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOListenable {

    public void listen(ThreadContext tc, int backlog);

}
