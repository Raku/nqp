package org.perl6.nqp.runtime;

import org.perl6.nqp.sixmodel.SixModelObject;

public class UnwindException extends ControlException {
    private static final long serialVersionUID = -2452898396745530180L;
    
    /* What we're unwinding to. */
    public long unwindTarget;
    
    /* The compilation unit holding the unwind target. */
    public CompilationUnit unwindCompUnit;
    
    /* The category, if we're a simple handler. */
    public long category;
    
    /* If there was a block handler, this is the result the block
     * produced.
     */
    public SixModelObject result;

    /* When we transform a VMException into an UnwindException, we need
     * to keep the payload, for example when it is about a loop label. */
    public SixModelObject payload;
}
