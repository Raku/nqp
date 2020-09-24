package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;

public class VMNullInstance extends SixModelObject {
    // singleton object
    private static volatile VMNullInstance theVMNull;

    private VMNullInstance(ThreadContext tc) {
        this.st = tc.gc.VMNull.st;
    }

    public synchronized static VMNullInstance getInstance(ThreadContext tc) {
        // double check to make singleton thread safe
        if (theVMNull == null) {
            synchronized (VMNullInstance.class) {
                if (theVMNull == null)
                    theVMNull = new VMNullInstance(tc);
            }
        }

        return theVMNull;
    }
}
