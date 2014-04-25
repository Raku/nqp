package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.sixmodel.SixModelObject;

public class AsyncTaskInstance extends SixModelObject {

    public SixModelObject queue;
    public SixModelObject schedulee;

    /* Object that can perform I/O operations; will be checked for its
     * capabilities by interface by ops and then invoked. */
    public Object handle;

    /* Sequence number for incremental ops */
    public long seq;
}
