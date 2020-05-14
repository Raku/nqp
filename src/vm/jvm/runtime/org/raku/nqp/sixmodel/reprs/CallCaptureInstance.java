package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.CallSiteDescriptor;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;

public class CallCaptureInstance extends SixModelObject {
    public CallSiteDescriptor descriptor;
    public Object[] args;

    public SixModelObject clone(ThreadContext tc) {
        CallCaptureInstance clone = new CallCaptureInstance();
        clone.st = this.st;
        clone.descriptor = this.descriptor;
        clone.args = this.args.clone();
        return clone;
    }
}
