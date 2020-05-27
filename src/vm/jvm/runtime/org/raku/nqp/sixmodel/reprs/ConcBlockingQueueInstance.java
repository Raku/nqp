package org.raku.nqp.sixmodel.reprs;

import java.util.concurrent.LinkedBlockingQueue;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;

public class ConcBlockingQueueInstance extends SixModelObject {
	public LinkedBlockingQueue<SixModelObject> queue;

    /* Looking at the first element counts as a peek. */
    @Override
    public SixModelObject at_pos_boxed(ThreadContext tc, long index) {
        if (index == 0)
            return queue.peek();
        else
            throw ExceptionHandling.dieInternal(tc,
                "Can only request (peek) head of a concurrent blocking queue");
    }

    @Override
    public void push_boxed(ThreadContext tc, SixModelObject value) {
        queue.add(value);
    }

    @Override
    public SixModelObject shift_boxed(ThreadContext tc) {
        try {
            return queue.take();
        }
        catch (InterruptedException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public long elems(ThreadContext tc) {
        return queue.size();
    }
}
