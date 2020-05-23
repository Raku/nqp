package org.raku.nqp.sixmodel.reprs;

import java.util.concurrent.Semaphore;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.runtime.ThreadContext;

public class SemaphoreInstance extends SixModelObject {
    public java.util.concurrent.Semaphore sem;

    @Override
    public void set_int(ThreadContext tc, long value) {
        if (sem != null) {
            throw ExceptionHandling.dieInternal(tc, "cannot change the value of a semaphore");
        }
        sem = new Semaphore((int)value);
    }
}
