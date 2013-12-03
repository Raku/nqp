package org.perl6.nqp.runtime;

import org.perl6.nqp.sixmodel.*;

/* Argument expectations are used to indicate what, exactly, a block we are
 * invoking expects. The default is that it wants the args in an Object[] and
 * will use the binder to process them specially. We special-case various of
 * the other most common signatures, however, to save that array and the whole
 * lot of binding work. This class helps handle that specialization; it is
 * also handled partly in the invoke dynamic bootstrap methods. */
public class ArgsExpectation {
    public static final short USE_BINDER = 0;
    public static final short NO_ARGS    = 1;
    public static final short OBJ        = 2;
    
    public static void invokeByExpectation(ThreadContext tc, CodeRef cr,
            CallSiteDescriptor csd, Object[] args) throws Throwable {
        switch (cr.staticInfo.argsExpectation) {
        case ArgsExpectation.USE_BINDER:
            cr.staticInfo.mh.invokeExact(tc, cr, csd, args);
            break;
        case ArgsExpectation.NO_ARGS:
            if (csd.argFlags.length != 0) {
                // Probable error, but consider flattening.
                if (csd.hasFlattening)
                    csd = csd.explodeFlattening(tc.curFrame, args);
                if (csd.argFlags.length != 0)
                    ExceptionHandling.dieInternal(tc,
                        "Wrong number of arguments passed; expected 0..0, but got " +
                        csd.numPositionals);
            }
            cr.staticInfo.mh.invokeExact(tc, cr, csd);
            break;
        case ArgsExpectation.OBJ:
            if (csd.argFlags.length == 1 && csd.argFlags[0] == CallSiteDescriptor.ARG_OBJ) {
                /* Simple, common case. */
                cr.staticInfo.mh.invokeExact(tc, cr, csd, (SixModelObject)args[0]);
            }
            else {
                /* Flatten if needed. */
                if (csd.hasFlattening) {
                    csd = csd.explodeFlattening(tc.curFrame, args);
                    args = tc.flatArgs;
                }
                if (csd.argFlags.length == 1) {
                    switch (csd.argFlags[0]) {
                    case CallSiteDescriptor.ARG_OBJ:
                        cr.staticInfo.mh.invokeExact(tc, cr, csd, (SixModelObject)args[0]);
                        break;
                    case CallSiteDescriptor.ARG_INT:
                        cr.staticInfo.mh.invokeExact(tc, cr, csd, Ops.box_i(
                            (long)args[0], cr.staticInfo.compUnit.hllConfig.intBoxType, tc));
                        break;
                    case CallSiteDescriptor.ARG_NUM:
                        cr.staticInfo.mh.invokeExact(tc, cr, csd, Ops.box_n(
                            (double)args[0], cr.staticInfo.compUnit.hllConfig.numBoxType, tc));
                        break;
                    case CallSiteDescriptor.ARG_STR:
                        cr.staticInfo.mh.invokeExact(tc, cr, csd, Ops.box_s(
                            (String)args[0], cr.staticInfo.compUnit.hllConfig.strBoxType, tc));
                        break;
                    default:
                        ExceptionHandling.dieInternal(tc,
                            "Wrong number of arguments passed; expected 1..1, but got " +
                            csd.numPositionals);
                    }
                }
                else {
                    ExceptionHandling.dieInternal(tc,
                        "Wrong number of arguments passed; expected 1..1, but got " +
                        csd.numPositionals);
                }
            }
            break;
        default:
            ExceptionHandling.dieInternal(tc, "Unknown Argument Expectation in invoke");
        }
    }
}
