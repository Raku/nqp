package org.perl6.nqp.runtime;

import java.lang.invoke.*;
import java.lang.invoke.MethodHandles.Lookup;

import org.perl6.nqp.sixmodel.*;
import org.perl6.nqp.sixmodel.reprs.LexoticInstance;

public class IndyBootstrap {
    public static CallSite wval_noa(Lookup caller, String name, MethodType type) {
        try {
            /* Look up wval resolver method. */
            MethodType resType = MethodType.methodType(SixModelObject.class,
                    MutableCallSite.class, String.class, int.class, ThreadContext.class);
            MethodHandle res = caller.findStatic(IndyBootstrap.class, "wvalResolve_noa", resType);

            /* Create a mutable callsite, and curry the resolver with it. */
            MutableCallSite cs = new MutableCallSite(type);
            cs.setTarget(MethodHandles.insertArguments(res, 0, cs));

            /* Produce callsite; it'll be updated with the resolved WVal upon the
             * first invocation. */
            return cs;
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static SixModelObject wvalResolve_noa(MutableCallSite cs, String sc, int idx, ThreadContext tc) {
        /* Look up the WVal. */
        SixModelObject res = tc.gc.scs.get(sc).getObject(idx);

        /* Update this callsite, so that we never run the lookup again and instead
         * just always use the resolved object. Discards incoming arguments, as
         * they are no longer needed. */
        if (!tc.curFrame.codeRef.staticInfo.compUnit.shared)
            cs.setTarget(MethodHandles.dropArguments(
                        MethodHandles.constant(SixModelObject.class, res),
                        0, String.class, int.class, ThreadContext.class));

        /* Hand back the resulting object, for this first call. */
        return res;
    }

    public static CallSite subcall_noa(Lookup caller, String _, MethodType type) {
        try {
            /* Look up subcall resolver method. */
            MethodType resType = MethodType.methodType(void.class,
                    Lookup.class, MutableCallSite.class, String.class,
                    int.class, ThreadContext.class, Object[].class);
            MethodHandle res = caller.findStatic(IndyBootstrap.class, "subcallResolve_noa", resType);

            /* Create a mutable callsite, and curry the resolver with it and
             * the sub name. */
            MutableCallSite cs = new MutableCallSite(type);
            cs.setTarget(MethodHandles
                .insertArguments(res, 0, caller, cs)
                .asCollector(Object[].class, type.parameterCount() - 3)
                .asType(type));

            /* Produce callsite; it'll be updated with the resolved call upon the
             * first invocation. */
            return cs;
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void subcallResolve_noa(Lookup caller, MutableCallSite cs, String name, int csIdx, ThreadContext tc, Object... args) {
        /* Locate the thing to call. */
        SixModelObject invokee = Ops.getlex(name, tc);

        /* Don't update callsite in cases where it's not safe. */
        boolean shared = tc.curFrame.codeRef.staticInfo.compUnit.shared;
        if (invokee.st != null && invokee.st.ContainerSpec != null) {
            invokee = Ops.decont(invokee, tc);
            shared = true;
        }

        /* Resolve callsite descriptor. */
        CallSiteDescriptor csd = csIdx >= 0
            ? tc.curFrame.codeRef.staticInfo.compUnit.callSites[csIdx]
            : Ops.emptyCallSite;
        CallSiteDescriptor csdOrig = csd;

        /* If it's lexotic, then resolve to something to do the throwing. */
        if (invokee instanceof LexoticInstance)
            throw setLexoticTarget(caller, cs, tc, invokee, csd, args, shared);

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
            else {
                cr = (CodeRef)is.InvocationHandler;
                csd = csd.injectInvokee(tc, args, invokee);
                args = tc.flatArgs;
            }
        }

        /* Now need to adapt to the target callsite by binding the CodeRef
         * and callsite with what they've been resolved to. Don't do it if
         * it's a compiler stub, though. */
        if (!cr.isCompilerStub && !shared) {
            try {
                MethodType invType = MethodType.methodType(void.class,
                    MethodHandle.class, String.class, CallSiteDescriptor.class,
                    ThreadContext.class, Object[].class);
                MethodHandle inv = caller.findStatic(IndyBootstrap.class, "subInvoker", invType);
                cs.setTarget(MethodHandles
                    .dropArguments(
                        MethodHandles.insertArguments(inv, 0, cr.staticInfo.mh, name, csdOrig),
                        0, String.class, int.class)
                    .asVarargsCollector(Object[].class)
                    .asType(cs.getTarget().type()));
            }
            catch (Throwable t) {
                throw ExceptionHandling.dieInternal(tc, t);
            }
        }

        /* Make the sub call directly for this initial call. */
        try {
            ArgsExpectation.invokeByExpectation(tc, cr, csd, args);
        }
        catch (ControlException e) {
            throw e;
        }
        catch (Throwable e) {
            ExceptionHandling.dieInternal(tc, e);
        }
    }

    public static void subInvoker(MethodHandle mh, String name, CallSiteDescriptor csd, ThreadContext tc, Object[] args) throws Throwable {
        SixModelObject invokee = Ops.getlex(name, tc);
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
            else {
                cr = (CodeRef)is.InvocationHandler;
                csd = csd.injectInvokee(tc, args, invokee);
                args = tc.flatArgs;
            }
        }
        ArgsExpectation.invokeByExpectation(tc, cr, csd, args);
    }

    public static CallSite subcallstatic_noa(Lookup caller, String _, MethodType type) {
        try {
            /* Look up subcall resolver method. */
            MethodType resType = MethodType.methodType(void.class,
                    Lookup.class, MutableCallSite.class, String.class,
                    int.class, ThreadContext.class, Object[].class);
            MethodHandle res = caller.findStatic(IndyBootstrap.class, "subcallstaticResolve_noa", resType);

            /* Create a mutable callsite, and curry the resolver with it and
             * the sub name. */
            MutableCallSite cs = new MutableCallSite(type);
            cs.setTarget(MethodHandles
                .insertArguments(res, 0, caller, cs)
                .asCollector(Object[].class, type.parameterCount() - 3)
                .asType(type));

            /* Produce callsite; it'll be updated with the resolved call upon the
             * first invocation. */
            return cs;
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void subcallstaticResolve_noa(Lookup caller, MutableCallSite cs, String name, int csIdx, ThreadContext tc, Object... args) {
        /* Locate the thing to call. */
        SixModelObject invokee = Ops.getlex(name, tc);

        /* Don't update callsite in cases where it's not safe. */
        boolean shared = tc.curFrame.codeRef.staticInfo.compUnit.shared;
        if (invokee.st != null && invokee.st.ContainerSpec != null) {
            invokee = Ops.decont(invokee, tc);
            shared = true;
        }

        /* Resolve callsite descriptor. */
        CallSiteDescriptor csd = csIdx >= 0
            ? tc.curFrame.codeRef.staticInfo.compUnit.callSites[csIdx]
            : Ops.emptyCallSite;
        CallSiteDescriptor csdOrig = csd;

        /* If it's lexotic, then resolve to something to do the throwing. */
        if (invokee instanceof LexoticInstance)
            throw setLexoticTarget(caller, cs, tc, invokee, csd, args, shared);

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
            else {
                cr = (CodeRef)is.InvocationHandler;
                csd = csd.injectInvokee(tc, args, invokee);
                args = tc.flatArgs;
                shared = true;
            }
        }

        /* Now need to adapt to the target callsite by binding the CodeRef
         * and callsite with what they've been resolved to. Don't do it if
         * it's a compiler stub, though. */
        if (!cr.isCompilerStub && !shared) {
            try {
                boolean updated = false;
                switch (cr.staticInfo.argsExpectation) {
                case ArgsExpectation.NO_ARGS:
                    if (csd.argFlags.length == 0) {
                        cs.setTarget(MethodHandles
                            .dropArguments(
                                MethodHandles.insertArguments(cr.staticInfo.mh, 1, cr, csdOrig),
                                0, String.class, int.class)
                            .asType(cs.getTarget().type()));
                        updated = true;
                    }
                    break;
                case ArgsExpectation.OBJ:
                    if (csd.argFlags.length == 1 && csd.argFlags[0] == CallSiteDescriptor.ARG_OBJ) {
                        cs.setTarget(MethodHandles
                            .dropArguments(
                                MethodHandles.insertArguments(cr.staticInfo.mh, 1, cr, csdOrig),
                                0, String.class, int.class)
                            .asType(cs.getTarget().type()));
                        updated = true;
                    }
                    break;
                case ArgsExpectation.OBJ_OBJ:
                    if (csd.argFlags.length == 2 && csd.argFlags[0] == CallSiteDescriptor.ARG_OBJ &&
                            csd.argFlags[1] == CallSiteDescriptor.ARG_OBJ) {
                        cs.setTarget(MethodHandles
                            .dropArguments(
                                MethodHandles.insertArguments(cr.staticInfo.mh, 1, cr, csdOrig),
                                0, String.class, int.class)
                            .asType(cs.getTarget().type()));
                        updated = true;
                    }
                    break;
                }
                if (!updated) {
                    MethodType invType = MethodType.methodType(void.class,
                        CallSiteDescriptor.class, CodeRef.class, ThreadContext.class,
                        Object[].class);
                    MethodHandle inv = caller.findStatic(IndyBootstrap.class, "substaticInvoker", invType);
                    cs.setTarget(MethodHandles
                        .dropArguments(
                            MethodHandles.insertArguments(inv, 0, csdOrig, cr),
                            0, String.class, int.class)
                        .asVarargsCollector(Object[].class)
                        .asType(cs.getTarget().type()));
                }
            }
            catch (Throwable t) {
                throw ExceptionHandling.dieInternal(tc, t);
            }
        }

        /* Make the sub call directly for this initial call. */
        try {
            ArgsExpectation.invokeByExpectation(tc, cr, csd, args);
        }
        catch (ControlException e) {
            throw e;
        }
        catch (Throwable e) {
            ExceptionHandling.dieInternal(tc, e);
        }
    }

    public static void substaticInvoker(CallSiteDescriptor csd, CodeRef cr, ThreadContext tc, Object[] args) throws Throwable {
        ArgsExpectation.invokeByExpectation(tc, cr, csd, args);
    }

    private static LexoticException setLexoticTarget(Lookup caller, MutableCallSite cs,
            ThreadContext tc, SixModelObject invokee, CallSiteDescriptor csd,
            Object[] args, boolean shared) {
        /* Go by result type, updating callsite appropriately so we
         * don't have to do this in the future. */
        LexoticException throwee = tc.theLexotic;
        throwee.target = ((LexoticInstance)invokee).target;
        switch (csd.argFlags[0]) {
        case CallSiteDescriptor.ARG_OBJ:
            throwee.payload = (SixModelObject)args[0];
            try {
                if (!shared) cs.setTarget(MethodHandles.insertArguments(
                    caller.findStatic(IndyBootstrap.class, "lexotic_o_noa",
                        MethodType.methodType(void.class, long.class, String.class, int.class,
                                ThreadContext.class, SixModelObject.class)),
                    0, throwee.target));
            }
            catch (Exception e) {
                throw new RuntimeException(e);
            }
            break;
        case CallSiteDescriptor.ARG_INT:
            SixModelObject intBoxType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.intBoxType;
            throwee.payload = Ops.box_i((long)args[0], intBoxType, tc);
            try {
                if (!shared) cs.setTarget(MethodHandles.insertArguments(
                    caller.findStatic(IndyBootstrap.class, "lexotic_i_noa",
                        MethodType.methodType(void.class, long.class,
                                SixModelObject.class, String.class, int.class,
                                ThreadContext.class, long.class)),
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
                if (!shared) cs.setTarget(MethodHandles.insertArguments(
                    caller.findStatic(IndyBootstrap.class, "lexotic_n_noa",
                        MethodType.methodType(void.class, long.class,
                                SixModelObject.class, String.class, int.class,
                                ThreadContext.class, double.class)),
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
                if (!shared) cs.setTarget(MethodHandles.insertArguments(
                    caller.findStatic(IndyBootstrap.class, "lexotic_s_noa",
                        MethodType.methodType(void.class, long.class,
                                SixModelObject.class, String.class, int.class,
                                ThreadContext.class, String.class)),
                    0, throwee.target, strBoxType));
            }
            catch (Exception e) {
                throw new RuntimeException(e);
            }
            break;
        default:
            throw ExceptionHandling.dieInternal(tc, "Invalid lexotic invocation argument");
        }
        return throwee;
    }

    public static void lexotic_o_noa(long target, String _, int __, ThreadContext tc, SixModelObject arg) {
        LexoticException throwee = tc.theLexotic;
        throwee.target = target;
        throwee.payload = arg;
        throw throwee;
    }

    public static void lexotic_i_noa(long target, SixModelObject boxType, String _, int __, ThreadContext tc, long arg) {
        LexoticException throwee = tc.theLexotic;
        throwee.target = target;
        throwee.payload = Ops.box_i(arg, boxType, tc);
        throw throwee;
    }

    public static void lexotic_n_noa(long target, SixModelObject boxType, String _, int __, ThreadContext tc, double arg) {
        LexoticException throwee = tc.theLexotic;
        throwee.target = target;
        throwee.payload = Ops.box_n(arg, boxType, tc);
        throw throwee;
    }

    public static void lexotic_s_noa(long target, SixModelObject boxType, String _, int __, ThreadContext tc, String arg) {
        LexoticException throwee = tc.theLexotic;
        throwee.target = target;
        throwee.payload = Ops.box_s(arg, boxType, tc);
        throw throwee;
    }

    public static CallSite indcall_noa(Lookup caller, String _, MethodType type) {
        try {
            /* Look up indirect call invoker method. */
            MethodType resType = MethodType.methodType(void.class,
                    MutableCallSite.class, int.class, ThreadContext.class,
                    SixModelObject.class, Object[].class);
            MethodHandle res = caller.findStatic(IndyBootstrap.class, "indcallInvoker_noa", resType);

            /* Create a mutable callsite, and curry the resolver with it and
             * the sub name. */
            MutableCallSite cs = new MutableCallSite(type);
            cs.setTarget(MethodHandles
                .insertArguments(res, 0, cs)
                .asCollector(Object[].class, type.parameterCount() - 3)
                .asType(type));

            /* Produce callsite. */
            return cs;
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void indcallInvoker_noa(MutableCallSite cs, int csIdx,
            ThreadContext tc, SixModelObject invokee, Object... args) {
        /* Resolve callsite descriptor. */
        CallSiteDescriptor csd = csIdx >= 0
            ? tc.curFrame.codeRef.staticInfo.compUnit.callSites[csIdx]
            : Ops.emptyCallSite;

        /* Get the code ref. */
        CodeRef cr;
        invokee = Ops.decont(invokee, tc);
        if (invokee instanceof LexoticInstance)
            Ops.invokeLexotic(invokee, csd, args, tc);
        if (invokee instanceof CodeRef) {
            cr = (CodeRef)invokee;
        }
        else {
            InvocationSpec is = invokee.st.InvocationSpec;
            if (is == null)
                throw ExceptionHandling.dieInternal(tc, "Can not invoke this object");
            if (is.ClassHandle != null)
                cr = (CodeRef)invokee.get_attribute_boxed(tc, is.ClassHandle, is.AttrName, is.Hint);
            else {
                cr = (CodeRef)is.InvocationHandler;
                csd = csd.injectInvokee(tc, args, invokee);
                args = tc.flatArgs;
            }
        }

        /* Make the call. */
        try {
            ArgsExpectation.invokeByExpectation(tc, cr, csd, args);
        }
        catch (ControlException e) {
            throw e;
        }
        catch (Throwable e) {
            ExceptionHandling.dieInternal(tc, e);
        }
    }

    public static CallSite methcall_noa(Lookup caller, String _, MethodType type) {
        try {
            /* Look up methcall resolver method. */
            MethodType resType = MethodType.methodType(void.class,
                    Lookup.class, MutableCallSite.class, String.class,
                    int.class, ThreadContext.class, Object[].class);
            MethodHandle res = caller.findStatic(IndyBootstrap.class, "methcallResolve_noa", resType);

            /* Create a mutable callsite, and curry the resolver with it and
             * the method name. */
            MutableCallSite cs = new MutableCallSite(type);
            cs.setTarget(MethodHandles
                .insertArguments(res, 0, caller, cs)
                .asCollector(Object[].class, type.parameterCount() - 3)
                .asType(type));

            /* Produce callsite; it'll build up a PIC over various polymorphic
             * invocations. */
            return cs;
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void methcallResolve_noa(Lookup caller, MutableCallSite cs, String name, int csIdx,
            ThreadContext tc, Object... args) {
        /* Resolve callsite descriptor. */
        CallSiteDescriptor csd = csIdx >= 0
            ? tc.curFrame.codeRef.staticInfo.compUnit.callSites[csIdx]
            : Ops.emptyCallSite;

        /* Don't update callsite in cases where it's not safe. */
        boolean shared = tc.curFrame.codeRef.staticInfo.compUnit.shared;

        /* Try to resolve method to a coderef. */
        SixModelObject invocant = (SixModelObject)args[0];
        SixModelObject invokee = Ops.findmethod(invocant, name, tc);
        if (invokee == null)
            throw ExceptionHandling.dieInternal(tc,
                "Method '" + name + "' not found for invocant of class '" + Ops.typeName(invocant, tc) + "'");
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
            else {
                cr = (CodeRef)is.InvocationHandler;
                csd = csd.injectInvokee(tc, args, invokee);
                args = tc.flatArgs;
                shared = true;
            }
        }

        /* If not shared, then we'll optimize on the assumption that most
         * method callsites are monomorphic. */
        if (!cr.isCompilerStub && !shared) {
            try {
                MethodType resType = MethodType.methodType(void.class,
                        String.class, CallSiteDescriptor.class, STable.class,
                        CodeRef.class, ThreadContext.class, Object[].class);
                MethodHandle res = caller.findStatic(IndyBootstrap.class,
                    "methcallCacheMono_noa", resType);
                cs.setTarget(MethodHandles
                    .dropArguments(
                        MethodHandles.insertArguments(res, 1, csd,
                            Ops.decont(invocant, tc).st, cr),
                        1, int.class)
                    .asCollector(Object[].class, cs.type().parameterCount() - 3)
                    .asType(cs.type()));
            }
            catch (Throwable e) {
                ExceptionHandling.dieInternal(tc, e);
            }
        }

        /* Make the call directly for this initial call. */
        try {
            ArgsExpectation.invokeByExpectation(tc, cr, csd, args);
        }
        catch (ControlException e) {
            throw e;
        }
        catch (Throwable e) {
            ExceptionHandling.dieInternal(tc, e);
        }
    }

    public static void methcallCacheMono_noa(String name, CallSiteDescriptor csd,
            STable assumedST, CodeRef assumedCR, ThreadContext tc, Object... args) {
        /* Try to resolve method to a coderef. */
        SixModelObject invocant = Ops.decont((SixModelObject)args[0], tc);
        CodeRef cr;
        if (invocant.st == assumedST) {
            cr = assumedCR;
        }
        else {
            SixModelObject invokee = Ops.findmethod(invocant, name, tc);
            if (invokee == null)
                throw ExceptionHandling.dieInternal(tc,
                    "Method '" + name + "' not found for invocant of class '" + Ops.typeName(invocant, tc) + "'");

            if (invokee instanceof CodeRef) {
                cr = (CodeRef)invokee;
            }
            else {
                InvocationSpec is = invokee.st.InvocationSpec;
                if (is == null)
                    throw ExceptionHandling.dieInternal(tc, "Can not invoke this object");
                if (is.ClassHandle != null)
                    cr = (CodeRef)invokee.get_attribute_boxed(tc, is.ClassHandle, is.AttrName, is.Hint);
                else {
                    cr = (CodeRef)is.InvocationHandler;
                    csd = csd.injectInvokee(tc, args, invokee);
                    args = tc.flatArgs;
                }
            }
        }

        /* Make the call directly for this initial call. */
        try {
            ArgsExpectation.invokeByExpectation(tc, cr, csd, args);
        }
        catch (ControlException e) {
            throw e;
        }
        catch (Throwable e) {
            ExceptionHandling.dieInternal(tc, e);
        }
    }

    public static CallSite indmethcall_noa(Lookup caller, String _, MethodType type) {
        try {
            /* Look up methcall invoker method. */
            MethodType resType = MethodType.methodType(void.class,
                    MutableCallSite.class, int.class,
                    ThreadContext.class, String.class, Object[].class);
            MethodHandle res = caller.findStatic(IndyBootstrap.class, "indmethcallInvoker_noa", resType);

            /* Create a mutable callsite, and curry the resolver with it and
             * the method name. */
            MutableCallSite cs = new MutableCallSite(type);
            cs.setTarget(MethodHandles
                .insertArguments(res, 0, cs)
                .asCollector(Object[].class, type.parameterCount() - 3)
                .asType(type));

            /* Produce callsite. */
            return cs;
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void indmethcallInvoker_noa(MutableCallSite cs, int csIdx,
            ThreadContext tc, String name, Object... args) {
        /* Resolve callsite descriptor. */
        CallSiteDescriptor csd = csIdx >= 0
            ? tc.curFrame.codeRef.staticInfo.compUnit.callSites[csIdx]
            : Ops.emptyCallSite;

        /* Try to resolve method to a coderef. */
        SixModelObject invocant = (SixModelObject)args[0];
        SixModelObject invokee = Ops.findmethod(invocant, name, tc);
        if (invokee == null)
            throw ExceptionHandling.dieInternal(tc,
                "Method '" + name + "' not found for invocant of class '" + Ops.typeName(invocant, tc) + "'");
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
            else {
                cr = (CodeRef)is.InvocationHandler;
                csd = csd.injectInvokee(tc, args, invokee);
                args = tc.flatArgs;
            }
        }

        /* Make the call. */
        try {
            ArgsExpectation.invokeByExpectation(tc, cr, csd, args);
        }
        catch (ControlException e) {
            throw e;
        }
        catch (Throwable e) {
            ExceptionHandling.dieInternal(tc, e);
        }
    }
}
