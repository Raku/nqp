package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.CallFrame;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.sixmodel.SixModelObject;

public class VMExceptionInstance extends SixModelObject {
    public String message;
    public SixModelObject payload;
    public long category = ExceptionHandling.EX_CAT_CATCH;
    public boolean resumable;
    public CallFrame origin;
    public StackTraceElement[] nativeTrace;
}
