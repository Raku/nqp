package org.perl6.nqp.runtime;

import java.lang.reflect.Constructor;

import java.util.Arrays;
import java.util.HashMap;

import com.sun.jna.Callback;
import com.sun.jna.NativeLibrary;
import com.sun.jna.NativeLong;
import com.sun.jna.Pointer;
import com.sun.jna.Structure;

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
import org.perl6.nqp.sixmodel.reprs.NativeCall.ArgType;
import org.perl6.nqp.sixmodel.reprs.NativeCallInstance;
import org.perl6.nqp.sixmodel.reprs.NativeCallBody;
import org.perl6.nqp.sixmodel.reprs.Refreshable;

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
            /* Convert arguments into array of appropriate objects. */
            int n = (int) arguments.elems(tc);
            /* TODO: Make sure n == call.arg_types.length? */
            Object[] cArgs = new Object[n];
            for (int i = 0; i < n; i++) {
                /* TODO: Converting sixmodel objects to appropriate JNA types. */
                cArgs[i] = toJNAType(tc, arguments.at_pos_boxed(tc, i), call.arg_types[i], call.arg_info[i]);
            }

            /* The actual foreign function call. */
            Object returned = call.entry_point.invoke(javaType(tc, call.ret_type, returns), cArgs);

            for (int i = 0; i < arguments.elems(tc); i++) {
                refresh(arguments.at_pos_boxed(tc, i), tc);
            }

            /* Wrap returned in the appropriate REPR type. */
            return toNQPType(tc, call.ret_type, returns, returned);
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
                    return ((CStructInstance) obj).storage.size() / 8;
                }
                else {
                    throw ExceptionHandling.dieInternal(tc,
                        String.format("NativeCall op sizeof expected type with CPointer, CStruct, CArray, P6int or P6num representation, but got a %s", obj));
                }
        }
    }

    public static SixModelObject nativecallcast(SixModelObject target_spec, SixModelObject target_type, SixModelObject source, ThreadContext tc) {
        Pointer o = null;

        if (source instanceof CPointerInstance) { // TODO Care about CPointer type object
            o = ((CPointerInstance)source).pointer;
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                "Native call expected object with CPointer representation, but got something else");
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
            return Integer.class;
        case LONG:
            return NativeLong.class;
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
        case CSTRUCT:
            return ((CStructREPRData) smoType.st.REPRData).structureClass;
        default:
            throw ExceptionHandling.dieInternal(tc, String.format("Don't know correct Java class for %s arguments yet", target));
        }
    }

    public static Object toJNAType(ThreadContext tc, SixModelObject o, ArgType target, SixModelObject info) {
        o = Ops.decont(o, tc);
        if (Ops.isconcrete(o, tc) == 0) return null;

        switch (target) {
        case CHAR:
            return new Byte((byte) o.get_int(tc));
        case SHORT:
            return new Short((short) o.get_int(tc));
        case INT:
            return new Integer((int) o.get_int(tc));
        case LONG:
            return new NativeLong((long) o.get_int(tc));
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
        case CSTRUCT:
            return ((CStructInstance) o).storage;
        case CALLBACK:
            return callbackHandlerFor(o, info, tc);
        case VMARRAY: {
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
        default:
            throw ExceptionHandling.dieInternal(tc, String.format("Don't know how to convert %s arguments to JNA yet", target));
        }
    }

    public static SixModelObject toNQPType(ThreadContext tc, ArgType target, SixModelObject type, Object o) {
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
            long val = ((NativeLong) o).longValue();
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
        case CSTRUCT: {
            CStructInstance cstruct = (CStructInstance) nqpobj;
            cstruct.storage = (Structure) o;
            break;
        }
        default:
            throw ExceptionHandling.dieInternal(tc, String.format("Don't know how to convert %s arguments to NQP yet", target));
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
}
