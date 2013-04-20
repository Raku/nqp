package org.perl6.nqp.runtime;

import org.perl6.nqp.sixmodel.reprs.VMExceptionInstance;

/* Describes an exception handler currently being processed. */
public class HandlerInfo {
    public VMExceptionInstance exObj;
    public long[] handlerInfo;
    
    public HandlerInfo(VMExceptionInstance exObj, long[] handlerInfo) {
        this.exObj = exObj;
        this.handlerInfo = handlerInfo;
    }
}
