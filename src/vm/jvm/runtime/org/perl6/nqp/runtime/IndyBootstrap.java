package org.perl6.nqp.runtime;

import java.lang.invoke.*;
import java.lang.invoke.MethodHandles.Lookup;

import org.perl6.nqp.sixmodel.*;

public class IndyBootstrap {
    public static CallSite wval(Lookup caller, String name, MethodType type) {
        try {
            /* Look up wval resolver method. */
            MethodType resType = MethodType.methodType(SixModelObject.class,
                    MutableCallSite.class, String.class, long.class, ThreadContext.class);
            MethodHandle res = caller.findStatic(IndyBootstrap.class, "wvalResolve", resType);
            
            /* Create a mutable callsite, and curry the resolver with it. */
            MutableCallSite cs = new MutableCallSite(type);
            cs.setTarget(res.bindTo(cs));
            
            /* Produce callsite; it'll be updated with the resolved WVal upon the
             * first invocation. */
            return cs;
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    
    public static SixModelObject wvalResolve(MutableCallSite cs, String sc, long idx, ThreadContext tc) {
        /* Look up the WVal. */
        SixModelObject res = tc.gc.scs.get(sc).root_objects.get((int)idx);
        
        /* Update this callsite, so that we never run the lookup again and instead
         * just always use the resolved object. Discards incoming arguments, as
         * they are no longer needed. */
        cs.setTarget(MethodHandles.dropArguments(
                MethodHandles.constant(SixModelObject.class, res),
                0, String.class, long.class, ThreadContext.class));
        
        /* Hand back the resulting object, for this first call. */
        return res;
    }
    
    public static CallSite subcall(Lookup caller, String _, MethodType type, String name, int csIdx) {
        try {
            /* Look up subcall resolver method. */
            MethodType resType = MethodType.methodType(void.class,
                    Lookup.class, MutableCallSite.class, String.class,
                    int.class, ThreadContext.class, Object[].class);
            MethodHandle res = caller.findStatic(IndyBootstrap.class, "subcallResolve", resType);
            
            /* Create a mutable callsite, and curry the resolver with it and
             * the sub name. */
            MutableCallSite cs = new MutableCallSite(type);
            cs.setTarget(MethodHandles.insertArguments(res, 0, caller, cs, name, csIdx));
            
            /* Produce callsite; it'll be updated with the resolved call upon the
             * first invocation. */
            return cs;
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    
    public static void subcallResolve(Lookup caller, MutableCallSite cs, String name, int csIdx, ThreadContext tc, Object[] args) {
        /* Locate the thing to call. */
        SixModelObject invokee = Ops.getlex(name, tc);
        
        /* Resolve callsite descriptor. */
        CallSiteDescriptor csd = csIdx >= 0
            ? tc.curFrame.codeRef.staticInfo.compUnit.callSites[csIdx]
            : Ops.emptyCallSite;
        
        /* If it's lexotic, then resolve to something to do the throwing. */
        if (invokee instanceof Lexotic) {
            /* Go by result type, updating callsite appropriately so we
             * don't have to do this in the future. */
            LexoticException throwee = tc.theLexotic;
            throwee.target = ((Lexotic)invokee).target;
            switch (csd.argFlags[0]) {
            case CallSiteDescriptor.ARG_OBJ:
                throwee.payload = (SixModelObject)args[0];
                try {
                    cs.setTarget(caller
                        .findStatic(IndyBootstrap.class, "lexotic_o",
                            MethodType.methodType(long.class, ThreadContext.class, Object[].class))
                        .bindTo(throwee.target));
                }
                catch (Exception e) {
                    throw new RuntimeException(e);
                }
                break;
            case CallSiteDescriptor.ARG_INT:
                SixModelObject intBoxType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.intBoxType;
                throwee.payload = Ops.box_i((long)args[0], intBoxType, tc);
                try {
                    cs.setTarget(MethodHandles.insertArguments(
                        caller.findStatic(IndyBootstrap.class, "lexotic_i",
                            MethodType.methodType(long.class, ThreadContext.class, Object[].class)),
                        0, throwee.target, intBoxType));
                }
                catch (Exception e) {
                    throw new RuntimeException(e);
                }
                break;
            case CallSiteDescriptor.ARG_NUM:
                SixModelObject numBoxType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.numBoxType;
                throwee.payload = Ops.box_n((double)args[0], numBoxType, tc);
                try {
                    cs.setTarget(MethodHandles.insertArguments(
                        caller.findStatic(IndyBootstrap.class, "lexotic_n",
                            MethodType.methodType(long.class, ThreadContext.class, Object[].class)),
                        0, throwee.target, numBoxType));
                }
                catch (Exception e) {
                    throw new RuntimeException(e);
                }
                break;
            case CallSiteDescriptor.ARG_STR:
                SixModelObject strBoxType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strBoxType;
                throwee.payload = Ops.box_s((String)args[0], strBoxType, tc);
                try {
                    cs.setTarget(MethodHandles.insertArguments(
                        caller.findStatic(IndyBootstrap.class, "lexotic_s",
                            MethodType.methodType(long.class, ThreadContext.class, Object[].class)),
                        0, throwee.target, strBoxType));
                }
                catch (Exception e) {
                    throw new RuntimeException(e);
                }
                break;
            default:
                throw ExceptionHandling.dieInternal(tc, "Invalid lexotic invocation argument");
            }
            throw throwee;
        }
        
        /* Otherwise, get the code ref. */
        CodeRef cr;
        if (invokee instanceof CodeRef) {
            cr = (CodeRef)invokee;
        }
        else {
            InvocationSpec is = invokee.st.InvocationSpec;
            if (is == null)
                throw ExceptionHandling.dieInternal(tc, "Can not invoke this object");
            if (is.ClassHandle != null)
                cr = (CodeRef)invokee.get_attribute_boxed(tc, is.ClassHandle, is.AttrName, is.Hint);
            else
                cr = (CodeRef)is.InvocationHandler;
        }
        
        /* Now need to adapt to the target callsite by binding the CodeRef
         * and callsite with what they've been resolved to. */
        cs.setTarget(MethodHandles.insertArguments(cr.staticInfo.mh, 1, cr, csd));
       
        /* Make the sub call directly for this initial call. */
        try {
            cr.staticInfo.mh.invokeExact(tc, cr, csd, args);
        }
        catch (ControlException e) {
            throw e;
        }
        catch (Throwable e) {
            ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public static void lexotic_o(long target, ThreadContext tc, Object[] args) {
        LexoticException throwee = tc.theLexotic;
        throwee.target = target;
        throwee.payload = (SixModelObject)args[0];
        throw throwee;
    }
    
    public static void lexotic_i(long target, SixModelObject boxType, ThreadContext tc, Object[] args) {
        LexoticException throwee = tc.theLexotic;
        throwee.target = target;
        throwee.payload = Ops.box_i((long)args[0], boxType, tc);
        throw throwee;
    }
    
    public static void lexotic_n(long target, SixModelObject boxType, ThreadContext tc, Object[] args) {
        LexoticException throwee = tc.theLexotic;
        throwee.target = target;
        throwee.payload = Ops.box_n((double)args[0], boxType, tc);
        throw throwee;
    }
    
    public static void lexotic_s(long target, SixModelObject boxType, ThreadContext tc, Object[] args) {
        LexoticException throwee = tc.theLexotic;
        throwee.target = target;
        throwee.payload = Ops.box_s((String)args[0], boxType, tc);
        throw throwee;
    }
}
