package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.CallSiteDescriptor;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

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
