package org.perl6.nqp.runtime;

import java.lang.reflect.Constructor;

import java.util.Arrays;
import java.util.HashMap;

import com.sun.jna.Callback;
import com.sun.jna.Function;
import com.sun.jna.NativeLibrary;
import com.sun.jna.NativeLong;
import com.sun.jna.Memory;
import com.sun.jna.Pointer;
import com.sun.jna.Structure;
import com.sun.jna.Union;

import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.Type;

import static org.perl6.nqp.runtime.CallSiteDescriptor.*;

import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.REPRRegistry;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_i;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_i8;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_i16;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_i32;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_n;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_s;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_u8;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_u16;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_u32;
import org.perl6.nqp.sixmodel.reprs.CArrayInstance;
import org.perl6.nqp.sixmodel.reprs.CPointerInstance;
import org.perl6.nqp.sixmodel.reprs.CStrInstance;
import org.perl6.nqp.sixmodel.reprs.CStructInstance;
import org.perl6.nqp.sixmodel.reprs.CStructREPRData;
import org.perl6.nqp.sixmodel.reprs.CPPStructInstance;
import org.perl6.nqp.sixmodel.reprs.CPPStructREPRData;
import org.perl6.nqp.sixmodel.reprs.CUnionInstance;
import org.perl6.nqp.sixmodel.reprs.CUnionREPRData;
import org.perl6.nqp.sixmodel.reprs.NativeCall.ArgType;
import org.perl6.nqp.sixmodel.reprs.NativeCallInstance;
import org.perl6.nqp.sixmodel.reprs.NativeCallBody;
import org.perl6.nqp.sixmodel.reprs.NativeRefInstance;
import org.perl6.nqp.sixmodel.reprs.Refreshable;
import org.perl6.nqp.sixmodel.reprs.P6OpaqueBaseInstance;

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
            SixModelObject entry_point = Ops.atkey(returns, "entry_point", tc);
            if (Ops.isnull(entry_point) == 0) {
                /* TODO: Set the calling convention? */
                call.entry_point = Function.getFunction(new Pointer(Ops.unbox_i(entry_point, tc)));
            }
            else {
                NativeLibrary library = libname == null || libname.equals("")
                    ? NativeLibrary.getProcess()
                    : NativeLibrary.getInstance(libname);
                call.entry_point = library.getFunction(symbol);
            }

            /* TODO: Set the calling convention. */

            /* Set up the argument types. */
            int n = (int) arguments.elems(tc);
            call.arg_types = new ArgType[n];
            call.arg_info  = new SixModelObject[n];
            for (int i = 0; i < n; i++) {
                SixModelObject info = arguments.at_pos_boxed(tc, i);
                call.arg_types[i] = getArgType(tc, info, false);

                if (call.arg_types[i] == ArgType.CALLBACK)
                    call.arg_info[i] = info.at_key_boxed(tc, "callback_args");
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
            /* C++ structure invocant, in case we hit a C++ constructor. */
            CPPStructInstance cppstruct = null;
            /* Convert arguments into array of appropriate objects. */
            int n = (int) arguments.elems(tc);
            /* TODO: Make sure n == call.arg_types.length? */
            Object[] cArgs = new Object[n];
            for (int i = 0; i < n; i++) {
                SixModelObject arg = arguments.at_pos_boxed(tc, i);
                /* We need to allocate the struct (THIS) for C++ constructor before passing it along. */
                if (i == 0 && call.arg_types[i] == ArgType.CPPSTRUCT && Ops.isconcrete(arg, tc) == 0) {
                    CPPStructREPRData repr_data = (CPPStructREPRData)returns.st.REPRData;
                    Class<?>    structClass     = repr_data.structureClass;
                    cppstruct                   = (CPPStructInstance)returns.st.REPR.allocate(tc, returns.st);
                    cppstruct.storage           = (Structure)structClass.newInstance();
                    cArgs[i]                    = cppstruct.storage;
                }
                else {
                    cArgs[i] = toJNAType(tc, arg, call.arg_types[i], call.arg_info[i]);
                }
            }

            if (cppstruct != null) {
                /* We are calling a C++ constructor so we hand back the invocant (THIS) we recorded earlier. */
                call.entry_point.invoke(Void.class, cArgs);
                return toNQPType(tc, call.ret_type, returns, cppstruct.storage);
            }
            else {
                /* The actual foreign function call. */
                Object returned = call.entry_point.invoke(javaType(tc, call.ret_type, returns), cArgs);

                /* Assign to NativeRefs in case the argument is in an 'is rw' param slot, or otherwise call refresh(). */
                for (int i = 0; i < arguments.elems(tc); i++) {
                    SixModelObject o = arguments.at_pos_boxed(tc, i);
                    switch (call.arg_types[i]) {
                        case CHAR_RW:
                            ((NativeRefInstance) o).store_i(tc, ((Memory) cArgs[i]).getByte(0));
                            break;
                        case UCHAR_RW:
                            short bval = ((Memory) cArgs[i]).getByte(0);
                            bval += bval < 0 ? 0x100 : 0;
                            ((NativeRefInstance) o).store_i(tc, bval);
                            break;
                        case SHORT_RW:
                            ((NativeRefInstance) o).store_i(tc, ((Memory) cArgs[i]).getShort(0));
                            break;
                        case USHORT_RW:
                        case CHAR16_T_RW:
                            int sval = ((Memory) cArgs[i]).getShort(0);
                            sval += sval < 0 ? 0x10000 : 0;
                            ((NativeRefInstance) o).store_i(tc, sval);
                            break;
                        case INT_RW:
                        case WINT_T_RW: /* JNA assumes wint_t is int. */
                            ((NativeRefInstance) o).store_i(tc, ((Memory) cArgs[i]).getInt(0));
                            break;
                        case UINT_RW:
                        case CHAR32_T_RW:
                            long ival = ((Memory) cArgs[i]).getInt(0);
                            ival += ival < 0 ? 0x100000000L : 0;
                            ((NativeRefInstance) o).store_i(tc, ival);
                            break;
                        case LONG_RW:
                        case ULONG_RW:
                            ((NativeRefInstance) o).store_i(tc, ((Memory) cArgs[i]).getNativeLong(0).longValue());
                            break;
                        case LONGLONG_RW:
                        case ULONGLONG_RW:
                            ((NativeRefInstance) o).store_i(tc, ((Memory) cArgs[i]).getLong(0));
                            break;
                        case FLOAT_RW:
                            ((NativeRefInstance) o).store_n(tc, ((Memory) cArgs[i]).getFloat(0));
                            break;
                        case DOUBLE_RW:
                            ((NativeRefInstance) o).store_n(tc, ((Memory) cArgs[i]).getDouble(0));
                            break;
                        case WCHAR_T_RW:
                            ((NativeRefInstance) o).store_i(tc, ((Memory) cArgs[i]).getChar(0));
                            break;
                        case CPOINTER_RW:
                            o = Ops.decont(o, tc);
                            ((CPointerInstance) o).set_int(tc, Pointer.nativeValue(((Memory) cArgs[i]).getPointer(0)));
                            break;
                        default:
                            refresh(o, tc);
                            break;
                    }
                }

                /* Wrap returned in the appropriate REPR type. */
                return toNQPType(tc, call.ret_type, returns, returned);
            }
        }
        catch (ControlException e) { throw e; }
        catch (Throwable t) {
            throw ExceptionHandling.dieInternal(tc, t);
        }
    }

    public static long refresh(SixModelObject obj, ThreadContext tc) {
        obj = Ops.decont(obj, tc);
        if(!(obj instanceof Refreshable)) return 1L;

        ((Refreshable) obj).refresh(tc);

        return 1L;
    }

    public static SixModelObject nativecallglobal(String libname, String symbol, SixModelObject target_spec, SixModelObject target_type, ThreadContext tc) {
        try {
            /* Load the library and locate the symbol. */
            /* TODO: Error handling! */
            NativeLibrary library = libname == null || libname.equals("")
                ? NativeLibrary.getProcess()
                : NativeLibrary.getInstance(libname);
            Pointer entry_point = library.getGlobalVariableAddress(symbol);

            StorageSpec ss = target_spec.st.REPR.get_storage_spec(tc, target_spec.st);
            if (ss.boxed_primitive == StorageSpec.BP_STR)
                entry_point = entry_point.getPointer(0);

            return castNativeCall(tc, target_spec, target_type, entry_point);
        }
        catch (Throwable t) {
            throw ExceptionHandling.dieInternal(tc, t);
        }
    }

    public static long nativecallsizeof(SixModelObject obj, ThreadContext tc) {
        obj            = Ops.decont(obj, tc);
        StorageSpec ss = obj.st.REPR.get_storage_spec(tc, obj.st);

        switch (ss.boxed_primitive) {
            case StorageSpec.BP_INT:
            case StorageSpec.BP_NUM:
                return ss.bits / 8;
            case StorageSpec.BP_STR:
                return Pointer.SIZE;
            default:
                if (Ops.isconcrete(obj, tc) == 0)
                    obj = obj.st.REPR.allocate(tc, obj.st);
                if (obj instanceof org.perl6.nqp.sixmodel.reprs.CStrInstance
                 || obj instanceof org.perl6.nqp.sixmodel.reprs.CPointerInstance
                 || obj instanceof org.perl6.nqp.sixmodel.reprs.CArrayInstance) {
                    return Pointer.SIZE;
                }
                else if (obj instanceof org.perl6.nqp.sixmodel.reprs.CStructInstance) {
                    return ((CStructInstance) obj).storage.size();
                }
                else if (obj instanceof org.perl6.nqp.sixmodel.reprs.CPPStructInstance) {
                    return ((CPPStructInstance) obj).storage.size();
                }
                else if (obj instanceof org.perl6.nqp.sixmodel.reprs.CUnionInstance) {
                    return ((CUnionInstance) obj).storage.size();
                }
                else {
                    throw ExceptionHandling.dieInternal(tc,
                        String.format("NativeCall op sizeof expected type with CPointer, CStruct, CUnion, CArray, P6int or P6num representation, but got a %s", obj));
                }
        }
    }

    public static SixModelObject nativecallcast(SixModelObject target_spec, SixModelObject target_type, SixModelObject source, ThreadContext tc) {
        Pointer o = null;

        if (source instanceof CPointerInstance) {
            o = ((CPointerInstance)source).pointer;
        }
        else if (source instanceof CArrayInstance) {
            o = ((CStructInstance)source).storage.getPointer();
        }
        else if (source instanceof CStructInstance) {
            o = ((CStructInstance)source).storage.getPointer();
        }
        else if (source instanceof CPPStructInstance) {
            o = ((CPPStructInstance)source).storage.getPointer();
        }
        else if (source instanceof CUnionInstance) {
            o = ((CUnionInstance)source).storage.getPointer();
        }
        else {
            /* If we got something that is either a CPointer, CArray or CStruct but is not an instance,
             * it is the type object which represents NULL. So, just don't throw and we are fine. */
            if ( !(source.st.REPR instanceof org.perl6.nqp.sixmodel.reprs.CPointer
                || source.st.REPR instanceof org.perl6.nqp.sixmodel.reprs.CArray
                || source.st.REPR instanceof org.perl6.nqp.sixmodel.reprs.CStruct
                || source.st.REPR instanceof org.perl6.nqp.sixmodel.reprs.CPPStruct
                || source.st.REPR instanceof org.perl6.nqp.sixmodel.reprs.CUnion) ) {
                throw ExceptionHandling.dieInternal(tc,
                    "Native call expected object with CPointer representation, but got something else");
            }
        }

        return castNativeCall(tc, target_spec, target_type, o);
    }
    public static SixModelObject castNativeCall(ThreadContext tc, SixModelObject target_spec, SixModelObject target_type, Pointer o) {
        if (o == null)
            return target_type;

        ArgType target        = ArgType.INT;
        SixModelObject nqpobj = target_type.st.REPR.allocate(tc, target_type.st);
        StorageSpec        ss = target_spec.st.REPR.get_storage_spec(tc, target_spec.st);

        switch (ss.boxed_primitive) {
            case StorageSpec.BP_INT:
                switch (ss.bits) {
                    case 8:
                        nqpobj.set_int(tc, o.getByte(0));
                        break;
                    case 16:
                        nqpobj.set_int(tc, o.getShort(0));
                        break;
                    case 32:
                        nqpobj.set_int(tc, o.getInt(0));
                        break;
                    case 64:
                        nqpobj.set_int(tc, o.getLong(0));
                        break;
                    default:
                        throw ExceptionHandling.dieInternal(tc,
                            String.format("Cannot cast to %d bits integer", ss.bits));
                }
                break;
            case StorageSpec.BP_NUM:
                switch (ss.bits) {
                    case 32:
                        nqpobj.set_num(tc, o.getFloat(0));
                        break;
                    case 64:
                        nqpobj.set_num(tc, o.getDouble(0));
                        break;
                    default:
                        throw ExceptionHandling.dieInternal(tc,
                            String.format("Cannot cast to %d bits number", ss.bits));
                }
                break;
            case StorageSpec.BP_STR:
                /* TODO: Handle encodings. */
                nqpobj.set_str(tc, o.getString(0));
                break;
            default:
                if (target_type instanceof org.perl6.nqp.sixmodel.reprs.CStrInstance) {
                    /* TODO: Handle encodings. */
                    nqpobj.set_str(tc, o.getString(0));
                }
                else if (nqpobj instanceof org.perl6.nqp.sixmodel.reprs.CPointerInstance) {
                    CPointerInstance cpointer = (CPointerInstance) nqpobj;
                    cpointer.pointer          = o;
                }
                else if (nqpobj instanceof org.perl6.nqp.sixmodel.reprs.CArrayInstance) {
                    CArrayInstance carray = (CArrayInstance) nqpobj;
                    carray.storage        = o;
                    carray.managed        = false;
                }
                else if (nqpobj instanceof org.perl6.nqp.sixmodel.reprs.CStructInstance) {
                    Class<?>    structClass = ((CStructREPRData)target_type.st.REPRData).structureClass;
                    CStructInstance cstruct = (CStructInstance)nqpobj;
                    cstruct.storage         = Structure.newInstance(structClass, o);
                }
                else if (nqpobj instanceof org.perl6.nqp.sixmodel.reprs.CPPStructInstance) {
                    Class<?>    structClass     = ((CPPStructREPRData)target_type.st.REPRData).structureClass;
                    CPPStructInstance cppstruct = (CPPStructInstance)nqpobj;
                    cppstruct.storage           = Structure.newInstance(structClass, o);
                }
                else if (nqpobj instanceof org.perl6.nqp.sixmodel.reprs.CUnionInstance) {
                    Class<?>  structClass = ((CUnionREPRData)target_type.st.REPRData).structureClass;
                    CUnionInstance cunion = (CUnionInstance)nqpobj;
                    cunion.storage        = (Union)Union.newInstance(structClass, o);
                }
                else {
                    throw ExceptionHandling.dieInternal(tc,
                        String.format("Don't know how to cast to %s", nqpobj));
                }
        }

        return nqpobj;
    }

    private static REPR ncrepr = REPRRegistry.getByName("NativeCall");
    private static NativeCallBody getNativeCallBody(ThreadContext tc, SixModelObject target) {
        NativeCallBody call;
        if (target instanceof NativeCallInstance) {
            call = ((NativeCallInstance)target).body;
        }
        else {
            /* Handle mixins by following delegates. */
            if (target instanceof P6OpaqueBaseInstance
            && ((P6OpaqueBaseInstance)target).delegate != null)
                target = ((P6OpaqueBaseInstance)target).delegate;
            call = (NativeCallBody)target.get_boxing_of(tc, ncrepr.ID);
            if (call == null) {
                call = new NativeCallBody();
                target.set_boxing_of(tc, ncrepr.ID, call);
            }
        }
        return call;
    }

    private static Class<?> javaType(ThreadContext tc, ArgType target, SixModelObject smoType) {
        switch (target) {
        case VOID:
            return Void.class;
        case CHAR:
            return Byte.class;
        case SHORT:
            return Short.class;
        case INT:
        case WINT_T: /* JNA assumes wint_t is int. */
            return Integer.class;
        case LONG:
            return NativeLong.class;
        case LONGLONG:
            return Long.class;
        case UCHAR:
            return Byte.class;
        case USHORT:
        case CHAR16_T:
            return Short.class;
        case UINT:
        case CHAR32_T:
            return Integer.class;
        case ULONG:
            return NativeLong.class;
        case ULONGLONG:
            return Long.class;
        case FLOAT:
            return Float.class;
        case DOUBLE:
            return Double.class;
        case WCHAR_T:
            return Character.class;
        case ASCIISTR:
        case UTF8STR:
        case UTF16STR:
            /* TODO: Handle encodings. */
            return String.class;
        case CPOINTER:
        case CARRAY:
            return Pointer.class;
        case CSTRUCT:
            return ((CStructREPRData) smoType.st.REPRData).structureClass;
        case CPPSTRUCT:
            return ((CPPStructREPRData) smoType.st.REPRData).structureClass;
        case CUNION:
            return ((CUnionREPRData) smoType.st.REPRData).structureClass;
        default:
            throw ExceptionHandling.dieInternal(tc, String.format("Don't know correct Java class for %s arguments yet", target));
        }
    }

    public static Object toJNAType(ThreadContext tc, SixModelObject o, ArgType target, SixModelObject info) {
        switch (target) {
        case CHAR:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return new Byte((byte) o.get_int(tc));
        case SHORT:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return new Short((short) o.get_int(tc));
        case INT:
        case WINT_T: /* JNA assumes wint_t is an int. */
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return new Integer((int) o.get_int(tc));
        case LONG:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return new NativeLong((long) o.get_int(tc));
        case LONGLONG:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return new Long((long) o.get_int(tc));
        case UCHAR:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return new Byte((byte) o.get_int(tc));
        case USHORT:
        case CHAR16_T:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return new Short((short) o.get_int(tc));
        case UINT:
        case CHAR32_T:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return new Integer((int) o.get_int(tc));
        case ULONG:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return new NativeLong((long) o.get_int(tc));
        case ULONGLONG:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return new Long((long) o.get_int(tc));
        case FLOAT:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return new Float((float) o.get_num(tc));
        case DOUBLE:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return new Double((double) o.get_num(tc));
        case WCHAR_T:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return new Character((char) o.get_int(tc));
        case ASCIISTR:
        case UTF8STR:
        case UTF16STR: {
            /* TODO: Handle encodings. */
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            SixModelObject meth = Ops.findmethodNonFatal(o, "cstr", tc);
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
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return ((CPointerInstance) o).pointer;
        case CARRAY:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return ((CArrayInstance) o).storage;
        case CSTRUCT:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return ((CStructInstance) o).storage;
        case CPPSTRUCT:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return ((CPPStructInstance) o).storage;
        case CUNION:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return ((CUnionInstance) o).storage;
        case CALLBACK:
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            return callbackHandlerFor(o, info, tc);
        case VMARRAY: {
            o = Ops.decont(o, tc);
            if (Ops.isconcrete(o, tc) == 0) return null;
            if (o instanceof VMArrayInstance_i) {
                return ((VMArrayInstance_i) o).slots;
            }
            if (o instanceof VMArrayInstance_i8) {
                return ((VMArrayInstance_i8) o).slots;
            }
            else if (o instanceof VMArrayInstance_i16) {
                return ((VMArrayInstance_i16) o).slots;
            }
            else if (o instanceof VMArrayInstance_i32) {
                return ((VMArrayInstance_i32) o).slots;
            }
            else if (o instanceof VMArrayInstance_n) {
                return ((VMArrayInstance_n) o).slots;
            }
            else if (o instanceof VMArrayInstance_s) {
                return ((VMArrayInstance_s) o).slots;
            }
            else if (o instanceof VMArrayInstance_u8) {
                return ((VMArrayInstance_u8) o).slots;
            }
            else if (o instanceof VMArrayInstance_u16) {
                return ((VMArrayInstance_u16) o).slots;
            }
            else if (o instanceof VMArrayInstance_u32) {
                return ((VMArrayInstance_u16) o).slots;
            }
            return ((VMArrayInstance) o).slots;
        }
        case CHAR_RW:
        case UCHAR_RW: {
            if (Ops.iscont_i(o) == 0)
                throw ExceptionHandling.dieInternal(tc,
                    String.format("Native call expected argument that references a native integer, but got %s", o));
            Memory m = new Memory(Byte.SIZE);
            m.setByte(0, (byte) ((NativeRefInstance) o).fetch_i(tc));
            return m;
        }
        case SHORT_RW:
        case USHORT_RW:
        case CHAR16_T_RW: {
            if (Ops.iscont_i(o) == 0)
                throw ExceptionHandling.dieInternal(tc,
                    String.format("Native call expected argument that references a native integer, but got %s", o));
            Memory m = new Memory(Short.SIZE);
            m.setShort(0, (short) ((NativeRefInstance) o).fetch_i(tc));
            return m;
        }
        case INT_RW:
        case UINT_RW:
        case WINT_T_RW: /* JNA assumes wint_t is an int. */
        case CHAR32_T_RW: {
            if (Ops.iscont_i(o) == 0)
                throw ExceptionHandling.dieInternal(tc,
                    String.format("Native call expected argument that references a native integer, but got %s", o));
            Memory m = new Memory(Integer.SIZE);
            m.setInt(0, (int) ((NativeRefInstance) o).fetch_i(tc));
            return m;
        }
        case LONG_RW:
        case ULONG_RW: {
            if (Ops.iscont_i(o) == 0)
                throw ExceptionHandling.dieInternal(tc,
                    String.format("Native call expected argument that references a native integer, but got %s", o));
            Memory m = new Memory(NativeLong.SIZE);
            m.setNativeLong(0, new NativeLong((long) ((NativeRefInstance) o).fetch_i(tc)));
            return m;
        }
        case LONGLONG_RW:
        case ULONGLONG_RW: {
            if (Ops.iscont_i(o) == 0)
                throw ExceptionHandling.dieInternal(tc,
                    String.format("Native call expected argument that references a native integer, but got %s", o));
            Memory m = new Memory(Long.SIZE);
            m.setLong(0, (long) ((NativeRefInstance) o).fetch_i(tc));
            return m;
        }
        case FLOAT_RW: {
            if (Ops.iscont_n(o) == 0)
                throw ExceptionHandling.dieInternal(tc,
                    String.format("Native call expected argument that references a native number, but got %s", o));
            Memory m = new Memory(Float.SIZE);
            m.setFloat(0, (float) ((NativeRefInstance) o).fetch_n(tc));
            return m;
        }
        case DOUBLE_RW: {
            if (Ops.iscont_n(o) == 0)
                throw ExceptionHandling.dieInternal(tc,
                    String.format("Native call expected argument that references a native number, but got %s", o));
            Memory m = new Memory(Double.SIZE);
            m.setDouble(0, (double) ((NativeRefInstance) o).fetch_n(tc));
            return m;
        }
        case WCHAR_T_RW: {
            if (Ops.iscont_i(o) == 0)
                throw ExceptionHandling.dieInternal(tc,
                    String.format("Native call expected argument that references a native integer, but got %s", o));
            Memory m = new Memory(Character.SIZE);
            m.setChar(0, (char) ((NativeRefInstance) o).fetch_i(tc));
            return m;
        }
        case CPOINTER_RW: {
            Memory m = new Memory(Pointer.SIZE);
            o        = Ops.decont(o, tc);
            long ptr = ((CPointerInstance) o).get_int(tc);
            if (ptr > 0)
                m.setPointer(0, Pointer.createConstant(ptr));
            else
                m.setPointer(0, null);
            return m;
        }
        default:
            throw ExceptionHandling.dieInternal(tc, String.format("Don't know how to convert %s arguments to JNA yet", target));
        }
    }

    public static SixModelObject toNQPType(ThreadContext tc, ArgType target, SixModelObject type, Object o) {
        SixModelObject nqpobj = type;

        switch (target) {
        case VOID:
            return type;
        case CHAR: {
            nqpobj = type.st.REPR.allocate(tc, type.st);
            byte val = ((Byte) o).byteValue();
            nqpobj.set_int(tc, val);
            break;
        }
        case SHORT: {
            nqpobj = type.st.REPR.allocate(tc, type.st);
            short val = ((Short) o).shortValue();
            nqpobj.set_int(tc, val);
            break;
        }
        case INT:
        case WINT_T: { /* JNA assumes wint_t is an int. */
            nqpobj = type.st.REPR.allocate(tc, type.st);
            int val = ((Integer) o).intValue();
            nqpobj.set_int(tc, val);
            break;
        }
        case LONG: {
            nqpobj = type.st.REPR.allocate(tc, type.st);
            long val = ((NativeLong) o).longValue();
            nqpobj.set_int(tc, val);
            break;
        }
        case LONGLONG: {
            nqpobj = type.st.REPR.allocate(tc, type.st);
            long val = ((Long) o).longValue();
            nqpobj.set_int(tc, val);
            break;
        }
        case UCHAR: {
            nqpobj = type.st.REPR.allocate(tc, type.st);
            long val = ((Byte) o).byteValue();
            if (val < 0)
                val += 0x100;
            nqpobj.set_int(tc, val);
            break;
        }
        case USHORT:
        case CHAR16_T: {
            nqpobj = type.st.REPR.allocate(tc, type.st);
            long val = ((Short) o).shortValue();
            if (val < 0)
                val += 0x10000;
            nqpobj.set_int(tc, val);
            break;
        }
        case UINT:
        case CHAR32_T: {
            nqpobj = type.st.REPR.allocate(tc, type.st);
            long val = ((Integer) o).intValue();
            if (val < 0)
                val += 0x100000000L;
            nqpobj.set_int(tc, val);
            break;
        }
        case ULONG: {
            /* TODO: handle unsignedness properly. */
            nqpobj = type.st.REPR.allocate(tc, type.st);
            long val = ((NativeLong) o).longValue();
            nqpobj.set_int(tc, val);
            break;
        }
        case ULONGLONG: {
            /* TODO: handle unsignedness properly. */
            nqpobj = type.st.REPR.allocate(tc, type.st);
            long val = ((Long) o).longValue();
            nqpobj.set_int(tc, val);
            break;
        }
        case FLOAT: {
            nqpobj = type.st.REPR.allocate(tc, type.st);
            float val = ((Float) o).floatValue();
            nqpobj.set_num(tc, val);
            break;
        }
        case DOUBLE: {
            nqpobj = type.st.REPR.allocate(tc, type.st);
            double val = ((Double) o).doubleValue();
            nqpobj.set_num(tc, val);
            break;
        }
        case WCHAR_T: {
            nqpobj = type.st.REPR.allocate(tc, type.st);
            char val = ((Character) o).charValue();
            nqpobj.set_int(tc, val);
            break;
        }
        case ASCIISTR:
        case UTF8STR:
        case UTF16STR:
            /* TODO: Handle encodings. */
            if (o != null) {
                nqpobj = type.st.REPR.allocate(tc, type.st);
                nqpobj.set_str(tc, (String) o);
            }
            break;
        case CPOINTER: {
            if (o != null) {
                nqpobj = type.st.REPR.allocate(tc, type.st);
                CPointerInstance cpointer = (CPointerInstance) nqpobj;
                cpointer.pointer = (Pointer) o;
            }
            break;
        }
        case CARRAY: {
            if (o != null) {
                nqpobj = type.st.REPR.allocate(tc, type.st);
                CArrayInstance carray = (CArrayInstance) nqpobj;
                carray.storage = (Pointer) o;
                carray.managed = false;
            }
            break;
        }
        case CSTRUCT: {
            if (o != null) {
                nqpobj = type.st.REPR.allocate(tc, type.st);
                CStructInstance cstruct = (CStructInstance) nqpobj;
                cstruct.storage = (Structure) o;
            }
            break;
        }
        case CPPSTRUCT: {
            if (o != null) {
                nqpobj = type.st.REPR.allocate(tc, type.st);
                CPPStructInstance cppstruct = (CPPStructInstance) nqpobj;
                cppstruct.storage = (Structure) o;
            }
            break;
        }
        case CUNION: {
            if (o != null) {
                nqpobj = type.st.REPR.allocate(tc, type.st);
                CUnionInstance cunion = (CUnionInstance) nqpobj;
                cunion.storage = (Union) o;
            }
            break;
        }
        default:
            throw ExceptionHandling.dieInternal(tc, String.format("Don't know how to convert %s arguments to NQP yet", target));
        }

        return nqpobj;
    }

    private static ArgType getArgType(ThreadContext tc, SixModelObject info, boolean isReturn) {
        String type_name = info.at_key_boxed(tc, "type").get_str(tc);

        SixModelObject rw = info.at_key_boxed(tc, "rw");
        if (rw != null && rw.get_int(tc) == 1)
            type_name += "_RW";

        ArgType type = ArgType.VOID;
        try {
            type = ArgType.valueOf(ArgType.class, type_name.toUpperCase());
        }
        catch (IllegalArgumentException e) {
            throw ExceptionHandling.dieInternal(tc, String.format("Unknown type '%s' used for native call", type_name));
        }

        if (!isReturn && type == ArgType.VOID) {
            throw ExceptionHandling.dieInternal(tc, "Can only use 'void' type on native call return values");
        }

        return type;
    }

    static int typeId = 0;
    static String handlerName = Type.getInternalName(CallbackHandler.class);
    static private HashMap<SixModelObject, CallbackHandler> callbackHandlers = new HashMap<SixModelObject, CallbackHandler>();
    static private HashMap<String, Class<CallbackHandler>> callbackClasses = new HashMap<String, Class<CallbackHandler>>();
    @SuppressWarnings("unchecked")
    private static CallbackHandler callbackHandlerFor(SixModelObject function, SixModelObject infos, ThreadContext tc) {
        CallbackHandler handler = callbackHandlers.get(function);
        if (handler != null) return handler;

        /* Extract the information we need from the list of infos. The first
         * element of the list is the return type and any following items are
         * the argument types. We process the arguments first, since a JVM
         * method signature has the form "($arguments)$returns".
         *
         * At the same time, we collect the data needed for the callback when
         * it's time to call back into NQP: type objects for argument and
         * return types, and the ArgTypes for all of them.
         */
        int num_info = (int) infos.elems(tc);
        SixModelObject[] argumentTypes = new SixModelObject[num_info-1];
        ArgType[] argumentInfo = new ArgType[num_info-1];
        boolean isVoid = infos.at_pos_boxed(tc, 0).at_key_boxed(tc, "type").get_str(tc).equals("void");
        StringBuilder sb = new StringBuilder("(");
        for(int i = 1; i < num_info; i++) {
            SixModelObject info = infos.at_pos_boxed(tc, i);
            SixModelObject type = info.at_key_boxed(tc, "typeobj");
            sb.append(Type.getDescriptor(javaType(tc, getArgType(tc, info, false), type)));
            argumentTypes[i-1] = type;
            argumentInfo[i-1] = getArgType(tc, info, false);
        }
        sb.append(")");

        SixModelObject info = infos.at_pos_boxed(tc, 0);
        SixModelObject returnType = info.at_key_boxed(tc, "typeobj");
        ArgType returnInfo = getArgType(tc, info, true);
        Class<?> javaReturn = null;
        if (!isVoid) javaReturn = javaType(tc, getArgType(tc, info, true), returnType);
        sb.append(isVoid? "V": Type.getDescriptor(javaReturn));
        String sig = sb.toString();
        Class<CallbackHandler> handlerClass = callbackClasses.get(sig);

        if (handlerClass == null) {
            int typeNo = typeId++;

            /* We need to generate two separate pieces two work with callbacks
             * in JNA: an interface, which specifies which method to call and
             * its signature, and a class implementing that interface that
             * does the actual work.
             *
             * To keep codegen to a minimum, we'll only ever have a single
             * class implementing each interface (one for each type signature
             * used), with the classes delegating to the correct NQP function.
             */

            ClassWriter ifaceWriter = new ClassWriter(ClassWriter.COMPUTE_MAXS | ClassWriter.COMPUTE_FRAMES);
            String ifaceName = "__CallbackInterface__" + typeNo;

            // public interface $interfaceName extends com.sun.jna.Callback { ... }
            ifaceWriter.visit(Opcodes.V1_7, Opcodes.ACC_PUBLIC | Opcodes.ACC_ABSTRACT | Opcodes.ACC_INTERFACE,
                    ifaceName, null, "java/lang/Object", new String[] { Type.getInternalName(Callback.class) });
            // public $sig[0] callback($sig[1..*]);
            MethodVisitor ifaceMeth = ifaceWriter.visitMethod(Opcodes.ACC_PUBLIC | Opcodes.ACC_ABSTRACT, "callback", sig, null, null);
            ifaceMeth.visitEnd();

            ifaceWriter.visitEnd();
            byte[] ifaceCompiled = ifaceWriter.toByteArray();
            Class<?> iface = tc.gc.byteClassLoader.defineClass(ifaceName, ifaceCompiled);

            ClassWriter classWriter = new ClassWriter(ClassWriter.COMPUTE_MAXS | ClassWriter.COMPUTE_FRAMES);
            String className = "__CallbackHandler__" + typeNo;

            // public class $className extends CallbackHandler implements $ifaceName { ... }
            classWriter.visit(Opcodes.V1_7, Opcodes.ACC_PUBLIC | Opcodes.ACC_SUPER, className, null,
                    handlerName, new String[] { Type.getInternalName(iface) });

            // public $className(GlobalContext gc, SixModelObject function) { super(gc, function); }
            //String ctorSig = "(Lorg/perl6/nqp/runtime/GlobalContext;Lorg/perl6/nqp/sixmodel/SixModelObject;)V";
            String ctorSig = String.format("(%s%s%s%s%s)V",
                    Type.getDescriptor(GlobalContext.class), Type.getDescriptor(SixModelObject.class),
                    Type.getDescriptor(ArgType.class),
                    Type.getDescriptor(SixModelObject[].class), Type.getDescriptor(ArgType[].class));
            MethodVisitor constructor = classWriter.visitMethod(Opcodes.ACC_PUBLIC, "<init>", ctorSig, null, null);
            constructor.visitCode();
            constructor.visitVarInsn(Opcodes.ALOAD, 0);
            constructor.visitVarInsn(Opcodes.ALOAD, 1);
            constructor.visitVarInsn(Opcodes.ALOAD, 2);
            constructor.visitVarInsn(Opcodes.ALOAD, 3);
            constructor.visitVarInsn(Opcodes.ALOAD, 4);
            constructor.visitVarInsn(Opcodes.ALOAD, 5);
            constructor.visitMethodInsn(Opcodes.INVOKESPECIAL, handlerName, "<init>", ctorSig);
            constructor.visitInsn(Opcodes.RETURN);
            constructor.visitMaxs(6, 6);
            constructor.visitEnd();

            // public $sig[0] callback($sig[1..*]) { ... }
            MethodVisitor callback = classWriter.visitMethod(Opcodes.ACC_PUBLIC, "callback", sig, null, null);
            //   Object[] args = new Object[$argCount];
            callback.visitLdcInsn(num_info-1);
            callback.visitTypeInsn(Opcodes.ANEWARRAY, "java/lang/Object");

            //  args[$i] = $sig[$i+1];
            for (int i = 0; i < num_info-1; i++) {
                callback.visitInsn(Opcodes.DUP); // Dup the array, since we'll store to it
                callback.visitLdcInsn(i);
                callback.visitVarInsn(Opcodes.ALOAD, i+1);
                callback.visitInsn(Opcodes.AASTORE);
            }

            //  callFunction(args);
            callback.visitVarInsn(Opcodes.ALOAD, 0);
            callback.visitInsn(Opcodes.SWAP);
            callback.visitMethodInsn(Opcodes.INVOKEVIRTUAL, className, "callFunction", "([Ljava/lang/Object;)Ljava/lang/Object;");

            if (isVoid) {
                callback.visitInsn(Opcodes.POP);
                callback.visitInsn(Opcodes.RETURN);
            }
            else {
                callback.visitTypeInsn(Opcodes.CHECKCAST, Type.getInternalName(javaReturn));
                callback.visitInsn(Opcodes.ARETURN);
            }

            callback.visitMaxs(4, num_info);
            callback.visitEnd();

            classWriter.visitEnd();
            byte[] classCompiled = classWriter.toByteArray();
            /* Uncomment to dump generated class to file:
            try {
                java.io.FileOutputStream fos = new java.io.FileOutputStream(new java.io.File(className + ".class"));
                fos.write(classCompiled);
                fos.close();
            } catch (java.io.IOException e) {
            }
            */
            handlerClass = (Class<CallbackHandler>) tc.gc.byteClassLoader.defineClass(className, classCompiled);
            callbackClasses.put(sig, handlerClass);
        }

        try {
            Constructor<CallbackHandler> ctor = handlerClass.getConstructor(GlobalContext.class, SixModelObject.class,
                    ArgType.class,
                    SixModelObject[].class, ArgType[].class);
            handler = ctor.newInstance(tc.gc, function,
                    returnInfo,
                    argumentTypes, argumentInfo);
        }
        catch (Exception e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
        callbackHandlers.put(function, handler);
        return handler;
    }

    public static abstract class CallbackHandler implements Callback {
        public GlobalContext gc;
        public SixModelObject function;

        public ArgType returnInfo;

        public SixModelObject[] argumentTypes;
        public ArgType[] argumentInfo;

        public CallSiteDescriptor callsite;

        protected CallbackHandler(GlobalContext gc, SixModelObject function,
                ArgType returnInfo,
                SixModelObject[] argumentTypes, ArgType[] argumentInfo) {
            this.gc = gc;
            this.function = function;

            this.returnInfo = returnInfo;

            this.argumentTypes = argumentTypes;
            this.argumentInfo = argumentInfo;

            byte[] desc = new byte[argumentTypes.length];
            Arrays.fill(desc, ARG_OBJ);
            this.callsite = new CallSiteDescriptor(desc, null);
        }

        protected Object callFunction(Object... args) {
            ThreadContext tc = gc.getCurrentThreadContext();

            /* TODO: Make sure args.length == argumentTypes.length */

            for (int i = 0; i < args.length; i++) {
                args[i] = toNQPType(tc, argumentInfo[i], argumentTypes[i], args[i]);
            }
            Ops.invokeDirect(tc, function, callsite, args);

            if (returnInfo == ArgType.VOID) {
                return null;
            }
            else {
                return toJNAType(tc, Ops.decont(Ops.result_o(tc.resultFrame()), tc), returnInfo, null);
            }
        }
    }

    /* JNA doesn't really support wchar_t and wint_t themselves, just arrays of
     * wchar_t. We're forced to take a wild guess what their sign is. */

    public static long iswcharunsigned() {
        final String os          = System.getProperty("os.name");
        final String arch        = System.getProperty("os.arch");
        final long   isUnsigned;
        if (os.startsWith("Windows")) {
            isUnsigned = 1L;
        } else if (os.equals("AIX")) {
            isUnsigned = 1L;
        } else if (os.equals("FreeBSD") && (arch.equals("arm") || arch.equals("arm64"))) {
            isUnsigned = 1L;
        } else {
            /* wchar_t is signed... probably. We don't actually know.
             * If the library was compiled with GCC, it could actually have an
             * unsigned wchar_t, but we can't tell if it was or not! 🙄 */
            isUnsigned = 0L;
        }
        return isUnsigned;
    }

    public static long iswintunsigned() {
        final String os         = System.getProperty("os.name");
        final String arch       = System.getProperty("os.arch");
        final long   isUnsigned;
        if (os.equals("FreeBSD") && (arch.equals("arm") || arch.equals("arm64"))) {
            isUnsigned = 1L;
        } else {
            /* wint_t is signed... probably. We don't actually know.
             * On most platforms, architectures, and compilers, wint_t is
             * signed, so it's fairly safe to assume it is here. */
            isUnsigned = 0L;
        }
        return isUnsigned;
    }
}
