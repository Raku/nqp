package org.perl6.nqp.sixmodel.reprs;

import java.util.concurrent.Semaphore;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.runtime.ThreadContext;

public class SemaphoreInstance extends SixModelObject {
    public java.util.concurrent.Semaphore sem;

    public void set_int(ThreadContext tc, long value) {
        if (sem != null) {
            throw ExceptionHandling.dieInternal(tc, "cannot change the value of a semaphore");
        }
        sem = new Semaphore((int)value);
    }
}
