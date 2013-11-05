package org.perl6.nqp.runtime;

import com.sun.jna.NativeLibrary;
import com.sun.jna.Pointer;

import static org.perl6.nqp.runtime.CallSiteDescriptor.*;

import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.REPRRegistry;
import org.perl6.nqp.sixmodel.SixModelObject;

import org.perl6.nqp.sixmodel.reprs.CArrayInstance;
import org.perl6.nqp.sixmodel.reprs.CPointerInstance;
import org.perl6.nqp.sixmodel.reprs.CStrInstance;
import org.perl6.nqp.sixmodel.reprs.NativeCallInstance;
import org.perl6.nqp.sixmodel.reprs.NativeCallBody;
import org.perl6.nqp.sixmodel.reprs.NativeCallBody.ArgType;

public final class NativeCallOps {
    public static long init() {
        /* Nothing to do here. The REPRs are all registered over in
         * REPRRegistry.java. */
        return 1L;
    }

    public static long build(SixModelObject target, String libname, String symbol, String convention, SixModelObject arguments, SixModelObject returns, ThreadContext tc) {
        NativeCallBody call = getNativeCallBody(tc, target);

        try {
            /* Load the library and locate the symbol. */
            /* TODO: Error handling! */
            NativeLibrary library = libname == null || libname.equals("")
                ? NativeLibrary.getProcess()
                : NativeLibrary.getInstance(libname);
            call.entry_point = library.getFunction(symbol);
    
            /* TODO: Set the calling convention. */
    
            /* Set up the argument types. */
            int n = (int) arguments.elems(tc);
            call.arg_types = new ArgType[n];
            for (int i = 0; i < n; i++) {
                call.arg_types[i] = getArgType(tc, arguments.at_pos_boxed(tc, i), false);
            }
    
            call.ret_type = getArgType(tc, returns, true);
    
            return 1L;
        }
        catch (Throwable t) {
            throw ExceptionHandling.dieInternal(tc, t);
        }
    }

    public static SixModelObject call(SixModelObject returns, SixModelObject callObject, SixModelObject arguments, ThreadContext tc) {
        NativeCallBody call = getNativeCallBody(tc, callObject);

        try {
            /* Convert arguments into array of appropriate objects. */
            int n = (int) arguments.elems(tc);
            /* TODO: Make sure n == call.arg_types.length? */
            Object[] cArgs = new Object[n];
            for (int i = 0; i < n; i++) {
                /* TODO: Converting sixmodel objects to appropriate JNA types. */
                cArgs[i] = toJNAType(tc, arguments.at_pos_boxed(tc, i), call.arg_types[i]);
            }

            /* The actual foreign function call. */
            Object returned = call.entry_point.invoke(javaType(tc, call.ret_type), cArgs);

            /* Wrap returned in the appropriate REPR type. */
            return toNQPType(tc, call.ret_type, returns, returned);
        }
        catch (ControlException e) { throw e; }
        catch (Throwable t) {
            throw ExceptionHandling.dieInternal(tc, t);
        }
    }

    public static long refresh(SixModelObject obj) {
        return 1L;
    }

    private static REPR ncrepr = REPRRegistry.getByName("NativeCall");
    private static NativeCallBody getNativeCallBody(ThreadContext tc, SixModelObject target) {
        NativeCallBody call;
        if (target instanceof NativeCallInstance) {
            call = ((NativeCallInstance)target).body;
        }
        else {
            call = (NativeCallBody)target.get_boxing_of(tc, ncrepr.ID);
            if (call == null) {
                call = new NativeCallBody();
                target.set_boxing_of(tc, ncrepr.ID, call);
            }
        }
        return call;
    }

    private static Class javaType(ThreadContext tc, ArgType target) {
        switch (target) {
        case VOID:
            return Void.class;
        case CHAR:
            return Byte.class;
        case SHORT:
            return Short.class;
        case INT:
            return Integer.class;
        case LONG:
            return Long.class;
        case FLOAT:
            return Float.class;
        case DOUBLE:
            return Double.class;
        case ASCIISTR:
        case UTF8STR:
        case UTF16STR:
            /* TODO: Handle encodings. */
            return String.class;
        case CPOINTER:
        case CARRAY:
            return Pointer.class;
        default:
            ExceptionHandling.dieInternal(tc, String.format("Don't know correct Java class for %s arguments yet", target));
        }

        /* And a dummy return to placate the Java flow analysis. */
        return null;
    }

    private static Object toJNAType(ThreadContext tc, SixModelObject o, ArgType target) {
        o = Ops.decont(o, tc);
        switch (target) {
        case CHAR:
            return new Byte((byte) o.get_int(tc));
        case SHORT:
            return new Short((short) o.get_int(tc));
        case INT:
            return new Integer((int) o.get_int(tc));
        case LONG:
            return new Long((long) o.get_int(tc));
        case FLOAT:
            return new Float((float) o.get_num(tc));
        case DOUBLE:
            return new Double((double) o.get_num(tc));
        case ASCIISTR:
        case UTF8STR:
        case UTF16STR: {
            /* TODO: Handle encodings. */
            SixModelObject meth = Ops.findmethod(o, "cstr", tc);
            if (meth != null) {
                Ops.invokeDirect(tc, meth, new CallSiteDescriptor(new byte[] { ARG_OBJ }, null), new Object[] { o });
                CStrInstance cstr = (CStrInstance) Ops.decont(Ops.result_o(tc.resultFrame()), tc);
                return cstr.cstr;
            }
            else {
                return o.get_str(tc);
            }
        }
        case CPOINTER:
            return ((CPointerInstance) o).pointer;
        case CARRAY:
            return ((CArrayInstance) o).storage;
        default:
            ExceptionHandling.dieInternal(tc, String.format("Don't know how to convert %s arguments to JNA yet", target));
        }

        /* And a dummy return to placate the Java flow analysis. */
        return null;
    }

    private static SixModelObject toNQPType(ThreadContext tc, ArgType target, SixModelObject type, Object o) {
        SixModelObject nqpobj = null;
        if (target != ArgType.VOID)
            nqpobj = type.st.REPR.allocate(tc, type.st);

        switch (target) {
        case VOID:
            return type;
        case CHAR: {
            byte val = ((Byte) o).byteValue();
            nqpobj.set_int(tc, val);
            break;
        }
        case SHORT: {
            short val = ((Short) o).shortValue();
            nqpobj.set_int(tc, val);
            break;
        }
        case INT: {
            int val = ((Integer) o).intValue();
            nqpobj.set_int(tc, val);
            break;
        }
        case LONG: {
            long val = ((Long) o).longValue();
            nqpobj.set_int(tc, val);
            break;
        }
        case FLOAT: {
            float val = ((Float) o).floatValue();
            nqpobj.set_num(tc, val);
            break;
        }
        case DOUBLE: {
            double val = ((Double) o).floatValue();
            nqpobj.set_num(tc, val);
            break;
        }
        case ASCIISTR:
        case UTF8STR:
        case UTF16STR:
            /* TODO: Handle encodings. */
            if (o != null) {
                nqpobj.set_str(tc, (String) o);
            }
            else {
                nqpobj = type;
            }
            break;
        case CPOINTER: {
            CPointerInstance cpointer = (CPointerInstance) nqpobj;
            cpointer.pointer = (Pointer) o;
            break;
        }
        case CARRAY: {
            CArrayInstance carray = (CArrayInstance) nqpobj;
            carray.storage = (Pointer) o;
            carray.managed = false;
            break;
        }
        default:
            ExceptionHandling.dieInternal(tc, String.format("Don't know how to convert %s arguments to NQP yet", target));
        }

        return nqpobj;
    }

    private static ArgType getArgType(ThreadContext tc, SixModelObject info, boolean isReturn) {
        String type_name = info.at_key_boxed(tc, "type").get_str(tc);

        ArgType type = ArgType.VOID;
        try {
            type = ArgType.valueOf(ArgType.class, type_name.toUpperCase());
        }
        catch (IllegalArgumentException e) {
            ExceptionHandling.dieInternal(tc, String.format("Unknown type '%s' used for native call", type_name));
        }

        if (!isReturn && type == ArgType.VOID) {
            ExceptionHandling.dieInternal(tc, "Can only use 'void' type on native call return values");
        }

        return type;
    }
}
