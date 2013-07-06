package org.perl6.nqp.runtime;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;

import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.sixmodel.reprs.JavaObjectWrapper;

import org.objectweb.asm.ClassVisitor;
import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.Label;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.Type;

/** Factory for Java object interop wrappers.  This class is designed to be subclassed by HLLs.  Not shareable between {@link GlobalContext}s. */
public class BootJavaInterop {

    /** Set this to a non-null value to use the same STable for every class. */
    protected STable commonSTable;

    /** The global context that this interop factory is used for. */
    protected GlobalContext gc;

    public BootJavaInterop(GlobalContext gc) {
        this.gc = gc;
        commonSTable = gc.BOOTJava.st;
    }

    private static class InteropInfo {
        public Class<?> forClass;
        public SixModelObject interop;
        public STable stable; // not used if commonSTable != null
    }

    private ClassValue<InteropInfo> cache = new ClassValue<InteropInfo>() {
        @Override public InteropInfo computeValue(Class<?> cl) {
            InteropInfo r = new InteropInfo();
            r.forClass = cl;
            r.interop = computeInterop(cl);
            r.stable = computeSTable(cl, r.interop);
            return r;
        }
    };

    /** Override this to define per-class STables.  <b>Will not be used unless you set {@link commonSTable} to null in the constructor.</b> */
    protected STable computeSTable(Class<?> klass, SixModelObject interop) {
        return null;
    }

    /** Get STable for class, computing if necessary. */
    public STable getSTableForClass(Class<?> c) {
        return commonSTable != null ? commonSTable : cache.get(c).stable;
    }

    /** Get interop table for a class. */
    public SixModelObject getInterop(Class<?> c) {
        return cache.get(c).interop;
    }

    /** Entry point for callouts. */
    public SixModelObject getInterop(SixModelObject to, ThreadContext tc) {
        if (to instanceof JavaObjectWrapper) {
            Object o = ((JavaObjectWrapper)to).theObject;
            if (o instanceof Class<?>) return getInterop((Class<?>)o);
        }
        try {
            return getInterop(Class.forName(Ops.unbox_s(to, tc), false, BootJavaInterop.class.getClassLoader()));
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    /** Entry point for callback setup. */
    public SixModelObject implementClass(SixModelObject description, ThreadContext tc) {
        return null;
    }

    // begin gory details
    protected SixModelObject computeInterop(Class<?> klass) {
        ThreadContext tc = gc.getCurrentThreadContext();

        // fetch reflection stuff once so that order is consistent
        Method[] ms = klass.getMethods();
        Field[] fs = klass.getFields();
        Constructor<?>[] cs = klass.getConstructors();

        Class<?> adaptor = createAdaptor(klass, ms, fs, cs);
        return createInteropTable(klass, adaptor, ms, fs, cs);
    }

    protected Class<?> createAdaptor(Class<?> target, Method[] ms, Field[] fs, Constructor<?>[] cs) {
        ClassWriter cw = new ClassWriter(ClassWriter.COMPUTE_MAXS | ClassWriter.COMPUTE_FRAMES);
        String className = "org/perl6/nqp/generated-adaptor/"+target.getName().replace('.','/');
        cw.visit(Opcodes.V1_7, Opcodes.ACC_PUBLIC | Opcodes.ACC_SUPER, className, null, TYPE_CU.getInternalName(), null);

        ClassContext cc = new ClassContext();
        cc.cv = cw;
        cc.target = target;

        for (Method m : ms) createAdaptorMethod(cc, m);
        for (Field f : fs) createAdaptorField(cc, f);
        for (Constructor<?> c : cs) createAdaptorConstructor(cc, c);
        createAdaptorSpecials(cc);

        cw.visitEnd();
        return new ByteClassLoader(cw.toByteArray()).findClass(className);
    }

    protected void createAdaptorMethod(ClassContext c, Method tobind) {
        Class<?>[] ptype = tobind.getParameterTypes();
        boolean isStatic = Modifier.isStatic(tobind.getModifiers());

        String desc = Type.getMethodDescriptor(tobind);
        MethodContext cc = startCallout(c, ptype.length + (isStatic ? 0 : 1),
                (isStatic ? "static_method:" : "method:") + tobind.getName() + desc);

        int parix = 0;
        preMarshalIn(cc, tobind.getReturnType(), 0);
        if (!isStatic) marshalOut(cc, tobind.getDeclaringClass(), parix++);
        for (Class<?> pt : ptype) marshalOut(cc, pt, parix++);
        cc.mv.visitMethodInsn(isStatic ? Opcodes.INVOKESTATIC : Opcodes.INVOKEVIRTUAL, Type.getInternalName(tobind.getDeclaringClass()), tobind.getName(), desc);
        marshalIn(cc, tobind.getReturnType(), 0);

        endCallout(cc);
    }

    protected void createAdaptorField(ClassContext c, Field f) {
        boolean isStatic = Modifier.isStatic(f.getModifiers());
        MethodContext cc;

        cc = startCallout(c, isStatic ? 0 : 1, (isStatic ? "getstatic:" : "getfield:") + ":" + f.getName() + ";" + Type.getDescriptor(f.getType()));
        preMarshalIn(cc, f.getType(), 0);
        if (!isStatic) marshalOut(cc, f.getDeclaringClass(), 0);
        cc.mv.visitFieldInsn(isStatic ? Opcodes.GETSTATIC : Opcodes.GETFIELD, Type.getInternalName(f.getDeclaringClass()), f.getName(), Type.getDescriptor(f.getType()));
        marshalIn(cc, f.getType(), 0);
        endCallout(cc);

        if (!Modifier.isFinal(f.getModifiers())) {
            cc = startCallout(c, isStatic ? 1 : 2, (isStatic ? "putstatic:" : "putfield:") + ":" + f.getName() + ";" + Type.getDescriptor(f.getType()));
            preMarshalIn(cc, void.class, 0);
            if (!isStatic) marshalOut(cc, f.getDeclaringClass(), 0);
            marshalOut(cc, f.getType(), isStatic ? 0 : 1);
            cc.mv.visitFieldInsn(isStatic ? Opcodes.PUTSTATIC : Opcodes.PUTFIELD, Type.getInternalName(f.getDeclaringClass()), f.getName(), Type.getDescriptor(f.getType()));
            marshalIn(cc, void.class, 0);
            endCallout(cc);
        }
    }

    protected void createAdaptorConstructor(ClassContext c, Constructor<?> k) {
        Class<?>[] ptypes = k.getParameterTypes();
        String desc = Type.getConstructorDescriptor(k);
        MethodContext cc = startCallout(c, ptypes.length, "constructor:"+desc);
        int parix = 0;
        preMarshalIn(cc, k.getDeclaringClass(), 0);
        cc.mv.visitTypeInsn(Opcodes.NEW, Type.getInternalName(k.getDeclaringClass()));
        cc.mv.visitInsn(Opcodes.DUP);
        for (Class<?> p : ptypes) marshalOut(cc, p, parix++);
        cc.mv.visitMethodInsn(Opcodes.INVOKESPECIAL, Type.getInternalName(k.getDeclaringClass()), "<init>", desc);
        marshalIn(cc, k.getDeclaringClass(), 0);
        endCallout(cc);
    }

    protected void createAdaptorSpecials(ClassContext c) {
        // odds and ends like early bound array stuff, isinst, nondefault marshalling...
        MethodContext cc = startCallout(c, 1, "box");
        preMarshalIn(cc, Object.class, 0);
        marshalOut(cc, c.target, 0);
        // implicit widening conversion to Object
        marshalIn(cc, Object.class, 0);
        endCallout(cc);

        cc = startCallout(c, 1, "unbox");
        preMarshalIn(cc, c.target, 0);
        marshalOut(cc, Object.class, 0);
        cc.mv.visitTypeInsn(Opcodes.CHECKCAST, Type.getInternalName(c.target));
        marshalIn(cc, c.target, 0);
        endCallout(cc);

        cc = startCallout(c, 1, "isinst");
        preMarshalIn(cc, boolean.class, 0);
        marshalOut(cc, Object.class, 0);
        cc.mv.visitTypeInsn(Opcodes.INSTANCEOF, Type.getInternalName(c.target));
        marshalIn(cc, boolean.class, 0);
        endCallout(cc);
    }

    protected SixModelObject createInteropTable(Class<?> tgt, Class<?> adaptor, Method[] ms, Field[] fs, Constructor<?>[] cs) {
        throw new UnsupportedOperationException();
    }

    /** Override this to customize marshalling. */
    protected int storageForType(Class<?> what) {
        int ty;
        if (what == String.class || what == char.class)
            return StorageSpec.BP_STR;
        else if (what == float.class || what == double.class)
            return StorageSpec.BP_NUM;
        else if (what != void.class && what.isPrimitive())
            return StorageSpec.BP_INT;
        else
            return StorageSpec.BP_NONE;
    }

    /** Override this to customize marshalling. */
    protected void preMarshalIn(MethodContext c, Class<?> what, int ix) {
        preEmitPutToNQP(c, ix, storageForType(what));
    }

    /** Override this to customize marshalling. */
    protected void marshalIn(MethodContext c, Class<?> what, int ix) {
        if (what == void.class) {
            c.mv.visitInsn(Opcodes.ACONST_NULL);
        }
        else if (what == int.class || what == short.class || what == byte.class || what == boolean.class) {
            c.mv.visitInsn(Opcodes.I2L);
        }
        else if (what == long.class || what == double.class || what == String.class) {
            // already in needed form
        }
        else if (what == float.class) {
            c.mv.visitInsn(Opcodes.F2D);
        }
        else if (what == char.class) {
            c.mv.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/String", "valueOf", "(C)Ljava/lang/String;");
        }
        else {
            // XXX class boxing
            throw new UnsupportedOperationException();
        }

        emitPutToNQP(c, ix, storageForType(what));
    }

    protected void marshalOut(MethodContext c, Class<?> what, int ix) {
        emitGetFromNQP(c, ix, storageForType(what));

        if (what == void.class) {
            c.mv.visitInsn(Opcodes.POP);
        }
        else if (what == long.class || what == double.class || what == String.class) {
            // already in needed form
        }
        else if (what == int.class || what == short.class || what == byte.class || what == boolean.class) {
            c.mv.visitInsn(Opcodes.L2I);
            if (what == short.class) c.mv.visitInsn(Opcodes.I2S);
            else if (what == byte.class) c.mv.visitInsn(Opcodes.I2B);
            else if (what == boolean.class) {
                Label f = new Label(), e = new Label(); // ugh, but this is what javac does for != 0
                c.mv.visitJumpInsn(Opcodes.IFEQ, f);
                c.mv.visitInsn(Opcodes.ICONST_1);
                c.mv.visitJumpInsn(Opcodes.GOTO, e);
                c.mv.visitLabel(f);
                c.mv.visitInsn(Opcodes.ICONST_0);
                c.mv.visitLabel(e);
            }
        }
        else if (what == float.class)
            c.mv.visitInsn(Opcodes.D2F);
        else if (what == char.class) {
            c.mv.visitInsn(Opcodes.ICONST_0);
            c.mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/lang/String", "charAt", "(I)C");
        }
        else {
            // XXX class unboxing
            throw new UnsupportedOperationException();
        }
    }

    protected static final char[] TYPE_CHAR = new char[] { 'o', 'i', 'n', 's' };
    protected static final Type[] TYPES = new Type[] { Type.getType(SixModelObject.class), Type.LONG_TYPE, Type.DOUBLE_TYPE, Type.getType(String.class) };
    protected static final Type TYPE_OPS = Type.getType(Ops.class);
    protected static final Type TYPE_CU  = Type.getType(CompilationUnit.class);
    protected static final Type TYPE_CF  = Type.getType(CallFrame.class);
    protected static final Type TYPE_CSD = Type.getType(CallSiteDescriptor.class);
    protected static final Type TYPE_SMO = Type.getType(SixModelObject.class);
    protected static final Type TYPE_AOBJ = Type.getType(Object[].class);

    protected static class ClassContext {
        public ClassVisitor cv;
        public Class<?> target;
        public List<String> descriptors = new ArrayList< >();
        public int nextCallout;
    }

    protected MethodContext startCallout(ClassContext c, int arity, String desc) {
        throw new UnsupportedOperationException();
    }

    protected void endCallout(MethodContext c) {
        throw new UnsupportedOperationException();
    }

    protected static class MethodContext {
        public MethodVisitor mv;
        public boolean callback;
        public int cfLoc;
        public int argsLoc;
        public int csdLoc;
    }

    protected void emitInteger(MethodContext c, int i) {
        if (i >= -1 && i <= 5) c.mv.visitInsn(Opcodes.ICONST_0 + i);
        else if (i == (byte)i) c.mv.visitIntInsn(Opcodes.BIPUSH, i);
        else if (i == (short)i) c.mv.visitIntInsn(Opcodes.SIPUSH, i);
        else c.mv.visitLdcInsn(i);
    }

    protected void emitGetFromNQP(MethodContext c, int index, int type) {
        if (c.callback) {
            // return value
            c.mv.visitVarInsn(Opcodes.ALOAD, c.cfLoc);
            c.mv.visitMethodInsn(Opcodes.INVOKESTATIC, TYPE_OPS.getInternalName(), "result_"+TYPE_CHAR[type], Type.getMethodDescriptor(TYPES[type], TYPE_CF));
        } else {
            // an argument
            c.mv.visitVarInsn(Opcodes.ALOAD, c.cfLoc);
            c.mv.visitVarInsn(Opcodes.ALOAD, c.csdLoc);
            c.mv.visitVarInsn(Opcodes.ALOAD, c.argsLoc);
            emitInteger(c, index);
            c.mv.visitMethodInsn(Opcodes.INVOKESTATIC, TYPE_OPS.getInternalName(), "posparam_"+TYPE_CHAR[type], Type.getMethodDescriptor(TYPES[type], TYPE_CF, TYPE_CSD, TYPE_AOBJ, Type.INT_TYPE));
        }
    }

    protected void preEmitPutToNQP(MethodContext c, int index, int type) {
        if (c.callback) {
            // an argument
            c.mv.visitVarInsn(Opcodes.ALOAD, c.argsLoc);
            emitInteger(c, index);
            if (type == StorageSpec.BP_INT) {
                c.mv.visitTypeInsn(Opcodes.NEW, "java/lang/Long");
                c.mv.visitInsn(Opcodes.DUP);
            } else if (type == StorageSpec.BP_NUM) {
                c.mv.visitTypeInsn(Opcodes.NEW, "java/lang/Double");
                c.mv.visitInsn(Opcodes.DUP);
            }
        }
    }

    protected void emitPutToNQP(MethodContext c, int index, int type) {
        if (c.callback) {
            // an argument
            if (type == StorageSpec.BP_INT) {
                c.mv.visitMethodInsn(Opcodes.INVOKESPECIAL, "java/lang/Long", "<init>", "(J)V");
            } else if (type == StorageSpec.BP_NUM) {
                c.mv.visitMethodInsn(Opcodes.INVOKESPECIAL, "java/lang/Double", "<init>", "(D)V");
            }
            c.mv.visitInsn(Opcodes.AASTORE);
        } else {
            c.mv.visitVarInsn(Opcodes.ALOAD, c.cfLoc);
            c.mv.visitMethodInsn(Opcodes.INVOKESTATIC, TYPE_OPS.getInternalName(), "result_"+TYPE_CHAR[type], Type.getMethodDescriptor(Type.VOID_TYPE, TYPES[type], TYPE_CF));
        }
    }
}
