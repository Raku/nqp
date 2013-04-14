package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.CallFrame;
import org.perl6.nqp.sixmodel.SixModelObject;

public class VMExceptionInstance extends SixModelObject {
	public String message;
	public SixModelObject payload;
	public long category;
	public boolean resumable;
	public CallFrame origin;
}
