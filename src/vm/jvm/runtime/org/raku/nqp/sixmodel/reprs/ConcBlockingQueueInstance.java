package org.raku.nqp.sixmodel.reprs;

import java.util.concurrent.LinkedBlockingQueue;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;

public class ConcBlockingQueueInstance extends SixModelObject {
	public LinkedBlockingQueue<SixModelObject> queue;

    /* Looking at the first element counts as a peek. */
    public SixModelObject at_pos_boxed(ThreadContext tc, long index) {
        if (index == 0)
            return queue.peek();
        else
            throw ExceptionHandling.dieInternal(tc,
                "Can only request (peek) head of a concurrent blocking queue");
    }

    public void push_boxed(ThreadContext tc, SixModelObject value) {
        queue.add(value);
    }

    public SixModelObject shift_boxed(ThreadContext tc) {
        try {
            return queue.take();
        }
        catch (InterruptedException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public long elems(ThreadContext tc) {
        return queue.size();
    }
}
