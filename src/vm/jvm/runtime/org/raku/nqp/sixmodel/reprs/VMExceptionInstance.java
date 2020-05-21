package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.CallFrame;
import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.sixmodel.SixModelObject;

public class VMExceptionInstance extends SixModelObject {
    public String message;
    public SixModelObject payload;
    public long category = ExceptionHandling.EX_CAT_CATCH;
    public boolean resumable;
    public CallFrame origin;
    public StackTraceElement[] nativeTrace;
}
