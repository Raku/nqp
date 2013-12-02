package org.perl6.nqp.runtime;

/* Argument expectations are used to indicate what, exactly, a block we are
 * invoking expects. The default is that it wants the args in an Object[] and
 * will use the binder to process them specially. We special-case various of
 * the other most common signatures, however, to save that array and the whole
 * lot of binding work. This class helps handle that specialization; it is
 * also handled partly in the invoke dynamic bootstrap methods. */
public class ArgsExpectation {
    public static final short USE_BINDER = 0;
    public static final short NO_ARGS    = 1;
    
    public static void invokeByExpectation(ThreadContext tc, CodeRef cr,
            CallSiteDescriptor csd, Object[] args) throws Throwable {
        switch (cr.staticInfo.argsExpectation) {
        case ArgsExpectation.USE_BINDER:
            cr.staticInfo.mh.invokeExact(tc, cr, csd, args);
            break;
        case ArgsExpectation.NO_ARGS:
            if (csd.argFlags.length != 0) {
                // Probable error, but consider flattening.
                csd = csd.explodeFlattening(tc.curFrame, args);
                if (csd.argFlags.length != 0)
                    ExceptionHandling.dieInternal(tc,
                        "Wrong number of arguments passed; expected 0..0, but got " +
                        csd.numPositionals);
            }
            cr.staticInfo.mh.invokeExact(tc, cr, csd);
            break;
        default:
            ExceptionHandling.dieInternal(tc, "Unknown Argument Expectation in invoke");
        }
    }
}
