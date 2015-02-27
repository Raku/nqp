package org.perl6.nqp.runtime;

import java.io.File;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.sixmodel.reprs.JavaObjectWrapper;

import org.objectweb.asm.AnnotationVisitor;
import org.objectweb.asm.ClassVisitor;
import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.Label;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.Type;

/**
 * Factory for Java object interop wrappers.  This class is designed to be
 * subclassed by HLLs.  Not shareable between {@link GlobalContext}s.  Interop
 * factories should generally be treated as singletons, because constructed
 * wrappers and types cannot be shared between them.
 */
public class BootJavaInterop {

    /**
     * Set this to a non-null value to use the same STable for every class.
     */
    protected STable commonSTable;

    /** The global context that this interop factory is used for. */
    protected GlobalContext gc;
    
    /** If we need to load stuff from a JAR, the class loader for doing so. */
    protected HashMap<String, URLClassLoader> jarClassLoaders;

    /** Create a new interop object for a context. */
    public BootJavaInterop(GlobalContext gc) {
        this.gc = gc;
        this.jarClassLoaders = new HashMap<String, URLClassLoader>();
    }

    private static class InteropInfo {
        public Class<?> forClass;
        public SixModelObject interop;
        public STable stable; // not used if commonSTable != null
    }

    private ClassValue<InteropInfo> cache = new ClassValue<InteropInfo>() {
        @Override public InteropInfo computeValue(Class<?> cl) {
            ThreadContext tc = gc.getCurrentThreadContext();
            InteropInfo r = new InteropInfo();
            r.forClass = cl;
            r.interop = computeInterop(tc, cl);
            r.stable = computeSTable(tc, cl, r.interop);
            return r;
        }
    };

    /**
     * Override this to define per-class STables.
     */
    protected STable computeSTable(ThreadContext tc, Class<?> klass, SixModelObject interop) {
        return interop.at_key_boxed(tc, "/TYPE/").st;
    }

    /**
     * Get STable for class, computing if necessary.  You probably want to
     * override {@link computeSTable} instead of this.
     */
    public STable getSTableForClass(Class<?> c) {
        return commonSTable != null ? commonSTable : cache.get(c).stable;
    }

    /** Get interop table for a class. */
    public SixModelObject getInteropForClass(Class<?> c) {
        return cache.get(c).interop;
    }

    /** Main entry point for OO-ish callouts. */
    public SixModelObject typeForName(String name) {
        Class<?> klass = null;
        ClassLoader syscl = ClassLoader.getSystemClassLoader();
        try {
            klass = syscl.loadClass(name);
        }
        catch( ClassNotFoundException cnfe ) {
            throw ExceptionHandling.dieInternal(gc.getCurrentThreadContext(), cnfe);
        }
        return getSTableForClass(klass).WHAT;
    }

    /** Convenience methods for NQP coding. */
    public GlobalContext currentGC() {
        return gc;
    }

    public ThreadContext currentTC() {
        return gc.getCurrentThreadContext();
    }

    protected Class<?> unboxClass(SixModelObject to) {
        if (to instanceof JavaObjectWrapper) {
            Object o = ((JavaObjectWrapper)to).theObject;
            if (o instanceof Class<?>) return (Class<?>)o;
        }
        try {
            return Class.forName(Ops.unbox_s(to, gc.getCurrentThreadContext()));
        } catch (ClassNotFoundException e) {
            throw ExceptionHandling.dieInternal(gc.getCurrentThreadContext(), e);
        }
    }

    /**
     * Entry point for callouts.
     */
    public SixModelObject getInterop(SixModelObject to) {
        return getInteropForClass(unboxClass(to));
    }

    /** Entry point for callback setup. */
    public SixModelObject implementClass(SixModelObject description) {
        ThreadContext tc = gc.getCurrentThreadContext();
        // unpack the list-of-lists
        SixModelObject[][] rows = new SixModelObject[(int)description.elems(tc)][];
        for (int i = 0; i < rows.length; i++) {
            SixModelObject rawRow = description.at_pos_boxed(tc, i);
            SixModelObject[] row = rows[i] = new SixModelObject[(int)rawRow.elems(tc)];
            for (int j = 0; j < row.length; j++)
                row[j] = rawRow.at_pos_boxed(tc, j);
        }

        int rptr = 0;
        ClassContext cc = new ClassContext();
        ClassWriter cw = new ClassWriter(ClassWriter.COMPUTE_MAXS | ClassWriter.COMPUTE_FRAMES);
        String className = "org/perl6/nqp/generatedclass/"+description.hashCode();
        cc.className = className;
        cc.cv = cw;

        String superclass = "java/lang/Object";
        List<String> ifaces = new ArrayList< >();

        if (matchName(tc, rows, rptr, "extends"))
            superclass = Ops.unbox_s(rows[rptr++][1], tc).replace('.', '/');

        while (matchName(tc, rows, rptr, "implements"))
            ifaces.add(Ops.unbox_s(rows[rptr++][1], tc).replace('.', '/'));

        cw.visit(Opcodes.V1_7, Opcodes.ACC_PUBLIC | Opcodes.ACC_SUPER, className, null,
                superclass, ifaces.toArray(new String[0]));
        cw.visitField(Opcodes.ACC_STATIC | Opcodes.ACC_PUBLIC, "constants", "[Ljava/lang/Object;", null, null).visitEnd();

        // TODO if needed: source, outer class, (annotation | attribute)*

        // TODO if needed: constructors, fields, inner classes
        while (rptr < rows.length) {
            if (matchName(tc, rows, rptr, "instance_method")) {
                rptr = methodCallin(tc, cc, rows, rptr, false);
            } else if (matchName(tc, rows, rptr, "static_method")) {
                rptr = methodCallin(tc, cc, rows, rptr, true);
            } else {
                throw new RuntimeException("confused at index "+rptr);
            }
        }

        MethodVisitor mv = cw.visitMethod(Opcodes.ACC_PUBLIC, "<init>", "()V", null, null);
        mv.visitCode();
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitMethodInsn(Opcodes.INVOKESPECIAL, superclass, "<init>", "()V");
        mv.visitInsn(Opcodes.RETURN);
        mv.visitMaxs(0,0);
        mv.visitEnd();

        finishClass(cc);
        return RuntimeSupport.boxJava(cc.constructed, getSTableForClass(Class.class));
    }
    
    /** Hiding arbitrary 6model objects under Object, for working with
      * untyped collection classes, etc. */
    public SixModelObject sixmodelToJavaObject(SixModelObject smo) {
        return RuntimeSupport.boxJava(smo, getSTableForClass(Object.class));
    }
    public SixModelObject javaObjectToSixmodel(SixModelObject javaObj) {
        return (SixModelObject)RuntimeSupport.unboxJava(javaObj);
    }

    protected void finishClass(ClassContext cc) {
        cc.cv.visitEnd();

        byte[] bits = cc.cv.toByteArray();
        //try {
        //    java.nio.file.Files.write(new java.io.File(className.replace('/','_') + ".class").toPath(), bits);
        //} catch (java.io.IOException e) {
        //    e.printStackTrace();
        //}
        // XXX: The condition here can probably cut down a few more
        // allocations if we check if the target's class loader isn't in the
        // chain of loaders above gc.byteClassLoader.
        ByteClassLoader loader = cc.target == null
                ? gc.byteClassLoader
                : new ByteClassLoader(cc.target.getClassLoader());
        cc.constructed = loader.defineClass(cc.className.replace('/','.'), bits);
        try {
            cc.constructed.getField("constants").set(null, cc.constants.toArray(new Object[0]));
        } catch (ReflectiveOperationException roe) {
            throw new RuntimeException(roe);
        }
    }

    /** Helper method for parsing descriptions in {@link #implementClass(SixModelObject,ThreadContext)}. */
    protected boolean matchName(ThreadContext tc, SixModelObject[][] rows, int rptr, String name) {
        return rptr < rows.length && rows[rptr].length > 0 && name.equals(Ops.unbox_s(rows[rptr][0], tc));
    }

    // begin gory details
    /** Constructs interop objects for a class.  Override this if you need something other than a hash. */
    protected SixModelObject computeInterop(ThreadContext tc, Class<?> klass) {
        ClassContext adaptor = createAdaptor(klass);

        CompilationUnit adaptorUnit;
        try {
            adaptorUnit = (CompilationUnit) adaptor.constructed.newInstance();
        } catch (ReflectiveOperationException roe) {
            throw new RuntimeException(roe);
        }
        adaptorUnit.initializeCompilationUnit(tc);

        SixModelObject hash = gc.BOOTHash.st.REPR.allocate(tc, gc.BOOTHash.st);

        HashMap<String, SixModelObject> names = new HashMap< >();

        for (int i = 0; i < adaptor.descriptors.size(); i++) {
            String desc = adaptor.descriptors.get(i);
            SixModelObject cr = adaptorUnit.lookupCodeRef(i);

            int s1 = desc.indexOf('/');
            int s2 = desc.indexOf('/', s1+1);

            String shorten = desc.substring(s1+1, s2);
            names.put(shorten, names.containsKey(shorten) ? null : cr);
            names.put(desc, cr);
        }

        for (Iterator<Map.Entry<String, SixModelObject>> it = names.entrySet().iterator(); it.hasNext(); ) {
            Map.Entry<String, SixModelObject> ent = it.next();
            if (ent.getValue() != null)
                hash.bind_key_boxed(tc, ent.getKey(), ent.getValue());
            else
                it.remove();
        }

        STable protoSt = gc.BOOTJava.st;
        SixModelObject freshType = protoSt.REPR.type_object_for(tc, computeHOW(tc, klass.getName()));
        freshType.st.MethodCache = names;
        freshType.st.ModeFlags |= STable.METHOD_CACHE_AUTHORITATIVE;

        hash.bind_key_boxed(tc, "/TYPE/", freshType);

        return hash;
    }
    
    /** Produces a meta-object for a Java type. Override this to have something
      * other than the BOOTJava one. */
    protected SixModelObject computeHOW(ThreadContext tc, String name) {
        return gc.BOOTJava.st.HOW;
    }

    /** Handles class construction for adaptors. */
    protected ClassContext createAdaptor(Class<?> target) {
        ClassWriter cw = new ClassWriter(ClassWriter.COMPUTE_MAXS | ClassWriter.COMPUTE_FRAMES);
        String className = "org/perl6/nqp/generatedadaptor/"+target.getName().replace('.','/');
        cw.visit(Opcodes.V1_7, Opcodes.ACC_PUBLIC | Opcodes.ACC_SUPER, className, null, TYPE_CU.getInternalName(), null);

        cw.visitField(Opcodes.ACC_STATIC | Opcodes.ACC_PUBLIC, "constants", "[Ljava/lang/Object;", null, null).visitEnd();

        ClassContext cc = new ClassContext();
        cc.cv = cw;
        cc.className = className;
        cc.target = target;

        for (Method m : target.getMethods()) createAdaptorMethod(cc, m);
        for (Field f : target.getFields()) createAdaptorField(cc, f);
        for (Constructor<?> c : target.getConstructors()) createAdaptorConstructor(cc, c);
        createAdaptorSpecials(cc);
        compunitMethods(cc);

        finishClass(cc);
        return cc;
    }

    protected void compunitMethods(ClassContext c) {
        ClassVisitor cw = c.cv;
        MethodVisitor mv;
        mv = cw.visitMethod(Opcodes.ACC_PUBLIC, "getCallSites", "()[Lorg/perl6/nqp/runtime/CallSiteDescriptor;", null, null);
        mv.visitCode();
        mv.visitInsn(Opcodes.ACONST_NULL);
        mv.visitInsn(Opcodes.ARETURN);
        mv.visitMaxs(0,0);
        mv.visitEnd();

        mv = cw.visitMethod(Opcodes.ACC_PUBLIC, "hllName", "()Ljava/lang/String;", null, null);
        mv.visitCode();
        mv.visitLdcInsn("");
        mv.visitInsn(Opcodes.ARETURN);
        mv.visitMaxs(0,0);
        mv.visitEnd();

        mv = cw.visitMethod(Opcodes.ACC_PUBLIC, "<init>", "()V", null, null);
        mv.visitCode();
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitMethodInsn(Opcodes.INVOKESPECIAL, "org/perl6/nqp/runtime/CompilationUnit", "<init>", "()V");
        mv.visitInsn(Opcodes.RETURN);
        mv.visitMaxs(0,0);
        mv.visitEnd();
    }

    /** Override this to customize the calling convention for method adaptors. */
    protected void createAdaptorMethod(ClassContext c, Method tobind) {
        Class<?>[] ptype = tobind.getParameterTypes();
        boolean isStatic = Modifier.isStatic(tobind.getModifiers());

        String desc = Type.getMethodDescriptor(tobind);
        MethodContext cc = startCallout(c, ptype.length + 1, "method/" + tobind.getName() + "/" + desc);

        int parix = 1;
        preMarshalIn(cc, tobind.getReturnType(), 0);
        if (!isStatic) marshalOut(cc, tobind.getDeclaringClass(), 0);
        for (Class<?> pt : ptype) marshalOut(cc, pt, parix++);
        cc.mv.visitMethodInsn(isStatic ? Opcodes.INVOKESTATIC : Opcodes.INVOKEVIRTUAL, Type.getInternalName(tobind.getDeclaringClass()), tobind.getName(), desc);
        marshalIn(cc, tobind.getReturnType(), 0);

        endCallout(cc);
    }

    /** Override this to customize the calling convention for field adaptors. */
    protected void createAdaptorField(ClassContext c, Field f) {
        boolean isStatic = Modifier.isStatic(f.getModifiers());
        MethodContext cc;

        cc = startCallout(c, 1, "field/get_" + f.getName() + "/" + Type.getDescriptor(f.getType()));
        preMarshalIn(cc, f.getType(), 0);
        if (!isStatic) marshalOut(cc, f.getDeclaringClass(), 0);
        cc.mv.visitFieldInsn(isStatic ? Opcodes.GETSTATIC : Opcodes.GETFIELD, Type.getInternalName(f.getDeclaringClass()), f.getName(), Type.getDescriptor(f.getType()));
        marshalIn(cc, f.getType(), 0);
        endCallout(cc);

        if (!Modifier.isFinal(f.getModifiers())) {
            cc = startCallout(c, 2, "field/set_" + f.getName() + "/" + Type.getDescriptor(f.getType()));
            preMarshalIn(cc, void.class, 0);
            if (!isStatic) marshalOut(cc, f.getDeclaringClass(), 0);
            marshalOut(cc, f.getType(), 1);
            cc.mv.visitFieldInsn(isStatic ? Opcodes.PUTSTATIC : Opcodes.PUTFIELD, Type.getInternalName(f.getDeclaringClass()), f.getName(), Type.getDescriptor(f.getType()));
            marshalIn(cc, void.class, 0);
            endCallout(cc);
        }
    }

    /** Override this to customize the calling convention for constructor adaptors. */
    protected void createAdaptorConstructor(ClassContext c, Constructor<?> k) {
        Class<?>[] ptypes = k.getParameterTypes();
        String desc = Type.getConstructorDescriptor(k);
        MethodContext cc = startCallout(c, ptypes.length + 1, "constructor/new/"+desc);
        int parix = 1;
        preMarshalIn(cc, k.getDeclaringClass(), 0);
        cc.mv.visitTypeInsn(Opcodes.NEW, Type.getInternalName(k.getDeclaringClass()));
        cc.mv.visitInsn(Opcodes.DUP);
        for (Class<?> p : ptypes) marshalOut(cc, p, parix++);
        cc.mv.visitMethodInsn(Opcodes.INVOKESPECIAL, Type.getInternalName(k.getDeclaringClass()), "<init>", desc);
        marshalIn(cc, k.getDeclaringClass(), 0);
        endCallout(cc);
    }

    /** Override this to add or customize special adaptors not tied to specific fields. */
    protected void createAdaptorSpecials(ClassContext c) {
        // odds and ends like early bound array stuff, isinst, nondefault marshalling...
        MethodContext cc = startCallout(c, 2, "/box/");
        preMarshalIn(cc, Object.class, 0);
        marshalOut(cc, c.target, 1);
        // implicit widening conversion to Object
        marshalIn(cc, Object.class, 0);
        endCallout(cc);

        cc = startCallout(c, 2, "/unbox/");
        preMarshalIn(cc, c.target, 0);
        marshalOut(cc, Object.class, 1);
        cc.mv.visitTypeInsn(Opcodes.CHECKCAST, Type.getInternalName(c.target));
        marshalIn(cc, c.target, 0);
        endCallout(cc);

        cc = startCallout(c, 2, "/isinst/");
        preMarshalIn(cc, boolean.class, 0);
        marshalOut(cc, Object.class, 1);
        cc.mv.visitTypeInsn(Opcodes.INSTANCEOF, Type.getInternalName(c.target));
        marshalIn(cc, boolean.class, 0);
        endCallout(cc);
    }

    // [ "instance_method", "name", "descriptor", sub () {} ]
    /** Override this to customize generation of callin methods. */
    protected int methodCallin(ThreadContext tc, ClassContext c, SixModelObject[][] rows, int rptr, boolean isStatic) {
        SixModelObject[] row = rows[rptr++];
        if (row.length != 4) throw ExceptionHandling.dieInternal(tc, "instance_method requires 3 arguments");
        String name = Ops.unbox_s(row[1], tc);
        Type desc = Type.getMethodType(Ops.unbox_s(row[2], tc));
        MethodContext mc = startCallin(c, isStatic ? Opcodes.ACC_STATIC | Opcodes.ACC_PUBLIC : Opcodes.ACC_PUBLIC, name, desc);
        MethodVisitor mv = mc.mv;

        Type ret = desc.getReturnType();
        Type[] parm = desc.getArgumentTypes();

        Class<?>[] cbArgs = new Class<?>[parm.length + (isStatic ? 0 : 1)];
        int aidx = 0;
        if (!isStatic) cbArgs[aidx++] = Object.class; // XXX we can't properly marshal here because the class doesn't exist yet!
        for (Type p : parm) cbArgs[aidx++] = typeToClass(p);

        setupCallback(mc, row[3], null, cbArgs);

        int lidx = 0;
        for (int i = 0; i < cbArgs.length; i++) {
            Class<?> arg = cbArgs[i];
            Type ty = Type.getType(arg);
            preMarshalIn(mc, arg, i);
            mv.visitVarInsn( ty.getOpcode(Opcodes.ILOAD), lidx );
            lidx += ty.getSize();
            marshalIn(mc, arg, i);
        }

        fireCallback(mc);

        marshalOut(mc, typeToClass(ret), 0);
        mc.mv.visitInsn(ret.getOpcode(Opcodes.IRETURN));

        endCallin(mc);
        return rptr;
    }

    /**
     * Attempt to resolve a type name in a callin signature to a type for
     * marshalling.  This is icky factoring, we should either marshal by type
     * name or pass actual types when building callins.  The former option
     * makes subclass-sensitive marshalling tricky and the latter prevents
     * recursively referencing callin classes, though.
     */
    protected Class<?> typeToClass(Type t) {
        switch (t.getSort()) {
            case Type.ARRAY:
            case Type.OBJECT:
                try {
                    return Class.forName(t.getClassName()); // TODO: classloader selection
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
            case Type.BOOLEAN: return boolean.class;
            case Type.BYTE: return byte.class;
            case Type.CHAR: return char.class;
            case Type.DOUBLE: return double.class;
            case Type.FLOAT: return float.class;
            case Type.INT: return int.class;
            case Type.LONG: return long.class;
            case Type.SHORT: return short.class;
            case Type.VOID: return void.class;
            default: throw new RuntimeException("impossible type in typeToClass");
        }
    }

    /**
     * Returns a {@link StorageSpec} BP_XXX constant for a given type.
     * Override this to customize marshalling.  You will probably only need to
     * change this if you want to make char or boolean come in as objects.
     */
    protected int storageForType(Class<?> what) {
        if (what == String.class || what == char.class)
            return StorageSpec.BP_STR;
        else if (what == float.class || what == double.class)
            return StorageSpec.BP_NUM;
        else if (what != void.class && what.isPrimitive())
            return StorageSpec.BP_INT;
        else
            return StorageSpec.BP_NONE;
    }

    /** Generates "early" code for a marshal-in, such as C<new> opcodes.  Override this to customize marshalling. */
    protected void preMarshalIn(MethodContext c, Class<?> what, int ix) {
        preEmitPutToNQP(c, ix, storageForType(what));
    }

    /** Generates "late" code for a marshal-in.  Override this to customize marshalling. */
    protected void marshalIn(MethodContext c, Class<?> what, int ix) {
        if (what == void.class) {
            c.mv.visitInsn(Opcodes.ACONST_NULL);
        }
        else if (what == int.class || what == short.class || what == byte.class || what == boolean.class) {
            c.mv.visitInsn(Opcodes.I2L);
        }
        else if (what == long.class || what == double.class || what == String.class || what == SixModelObject.class) {
            // already in needed form
        }
        else if (what == float.class) {
            c.mv.visitInsn(Opcodes.F2D);
        }
        else if (what == char.class) {
            c.mv.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/String", "valueOf", "(C)Ljava/lang/String;");
        }
        else {
            if (commonSTable != null) {
                emitConst(c, commonSTable, STable.class);
            } else {
                emitConst(c, new STableCache(what), STableCache.class);
                c.mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, Type.getInternalName(STableCache.class), "getSTable", "()Lorg/perl6/nqp/sixmodel/STable;");
            }
            c.mv.visitMethodInsn(Opcodes.INVOKESTATIC, "org/perl6/nqp/runtime/BootJavaInterop$RuntimeSupport", "boxJava", Type.getMethodDescriptor(TYPE_SMO, TYPE_OBJ, TYPE_ST));
        }

        emitPutToNQP(c, ix, storageForType(what));
    }

    public static Object castObjectToClass(Object obj, Class<?> klass) throws Throwable {
        Object retVal = null;

        if( klass.isAssignableFrom(obj.getClass()) ) {
            retVal = obj;
        }
        else if( klass.equals(Boolean.class) && obj.getClass().equals(Long.class) ){
            retVal = new Boolean( ((Long)obj) == 0 ? false : true);
        }
        else if( klass.equals(Byte.class) && obj.getClass().equals(Long.class) ){
            retVal = new Byte( ((Long)obj).byteValue() );
        }
        else if( klass.equals(Short.class) && obj.getClass().equals(Long.class) ){
            retVal = new Short( ((Long)obj).shortValue() );
        }
        else if( klass.equals(Integer.class) && obj.getClass().equals(Long.class) ){
            retVal = new Integer( ((Long)obj).intValue() );
        }
        else if( klass.equals(Long.class) && obj.getClass().equals(Long.class) ){
            retVal = (Long) obj;
        }
        else if( klass.equals(Float.class) && obj.getClass().equals(Double.class) ){
            retVal = new Float( ((Double)obj).floatValue() );
        }
        else if( klass.equals(Double.class) && obj.getClass().equals(Double.class) ){
            retVal = (Double) obj;
        }
        else if( klass.equals(Character.class) && obj.getClass().equals(String.class) ){
            retVal = new Character( ((String)obj).charAt(0));
        }
        else if( klass.equals(String.class) && obj.getClass().equals(String.class) ){
            retVal = (String) obj;
        }
        else if( klass.equals(boolean.class) && obj.getClass().equals(Long.class) ) {
            retVal = obj != null
                ? ((Long) obj) == 0
                    ? new Boolean(false)
                    : new Boolean(true)
                : null;
        }
        else if( klass.equals(byte.class) && obj.getClass().equals(Long.class) ) {
            retVal = obj != null ? ((Long)obj).byteValue() : null;
        }
        else if( klass.equals(short.class) && obj.getClass().equals(Long.class) ) {
            retVal = obj != null ? ((Long)obj).shortValue() : null;
        }
        else if( klass.equals(int.class) && obj.getClass().equals(Long.class) ) {
            retVal = obj != null ? ((Long)obj).intValue() : null;
        }
        else if( klass.equals(long.class) && obj.getClass().equals(Long.class) ) {
            retVal = obj;
        }
        else if( klass.equals(char.class) && obj.getClass().equals(String.class) ) {
            retVal = ((String) obj).charAt(0);
        }
        else if( klass.equals(float.class) && obj.getClass().equals(Double.class) ) {
            retVal = obj != null ? ((Double)obj).floatValue() : null;
        }
        else if( klass.equals(double.class) && obj.getClass().equals(Double.class) ) {
            retVal = obj;
        }

        return retVal;
    }

    public static Object marshalOutRecursive(SixModelObject in, ThreadContext tc, Class<?> what) throws Throwable {
        Object out = null;
        int size = (int) Ops.elems(in, tc);
        if(what != null) {
            out = Array.newInstance(what.getComponentType(), size);
            for( int i = 0; i < size; ++i ) {
                in.at_pos_native(tc, i);
                Object value = null;
                if( tc.native_type == ThreadContext.NATIVE_NUM ) {
                    value = new Double(tc.native_n);
                }
                else if( tc.native_type == ThreadContext.NATIVE_STR ) {
                    value = tc.native_s;
                }
                else if( tc.native_type == ThreadContext.NATIVE_INT ) {
                    value = new Long(tc.native_i);
                } 
                else {
                    SixModelObject cur = Ops.atpos(in, i, tc);
                    if( cur instanceof JavaObjectWrapper ) {
                        value = RuntimeSupport.unboxJava(cur);
                    } // XXX: probably cases missing here
                    else {
                        value = marshalOutRecursive(cur, tc, what.getComponentType());
                    }
                }
                value = castObjectToClass(value, what.getComponentType());
                Array.set(out, i, value);
            }
        }
        else { 
            // we've hopefully been called from a subclass, so we rely on them for casting and just unbox
            for( int i = 0; i < size; ++i ) {
                in.at_pos_native(tc, i);
                Object value = null;
                if( tc.native_type == ThreadContext.NATIVE_NUM ) {
                    if( out == null ) 
                        out = new Double[size];
                    ((Double[]) out)[i] = new Double(tc.native_n);
                }
                else if( tc.native_type == ThreadContext.NATIVE_STR ) {
                    if( out == null )
                        out = new String[size];
                    ((String[]) out)[i] = tc.native_s;
                }
                else if( tc.native_type == ThreadContext.NATIVE_INT ) {
                    if( out == null )
                        out = new Long[size];
                    ((Long[]) out)[i] = new Long(tc.native_i);
                } 
                else {
                    SixModelObject cur = Ops.atpos(in, i, tc);
                    if( cur instanceof JavaObjectWrapper ) {
                        ((Object[]) out)[i] = RuntimeSupport.unboxJava(cur);
                    } // XXX: probably cases missing here?
                    else {
                        ((Object[]) out)[i] = marshalOutRecursive(cur, tc, null);
                    }
                }
            }
        }
        return out;
    }

    /**
     * Generates code for a marshal-out (NQP to Java).
     */
    protected void marshalOut(MethodContext c, Class<?> what, int ix) {
        emitGetFromNQP(c, ix, storageForType(what));
        MethodVisitor mv = c.mv;

        if (what == void.class) {
            mv.visitInsn(Opcodes.POP);
        }
        else if (what == long.class || what == double.class || what == String.class || what == SixModelObject.class) {
            // already in needed form
        }
        else if (what == int.class || what == short.class || what == byte.class || what == boolean.class) {
            mv.visitInsn(Opcodes.L2I);
            if (what == short.class) mv.visitInsn(Opcodes.I2S);
            else if (what == byte.class) mv.visitInsn(Opcodes.I2B);
            else if (what == boolean.class) {
                Label f = new Label(), e = new Label(); // ugh, but this is what javac does for != 0
                mv.visitJumpInsn(Opcodes.IFEQ, f);
                mv.visitInsn(Opcodes.ICONST_1);
                mv.visitJumpInsn(Opcodes.GOTO, e);
                mv.visitLabel(f);
                mv.visitInsn(Opcodes.ICONST_0);
                mv.visitLabel(e);
            }
        }
        else if (what == float.class)
            mv.visitInsn(Opcodes.D2F);
        else if (what == char.class) {
            mv.visitInsn(Opcodes.ICONST_0);
            mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/lang/String", "charAt", "(I)C");
        }
        else if (what == GlobalContext.class) {
            Label provided = new Label(), done = new Label();
            mv.visitInsn(Opcodes.DUP);
            mv.visitJumpInsn(Opcodes.IFNONNULL, provided);
            mv.visitInsn(Opcodes.POP);
            mv.visitVarInsn(Opcodes.ALOAD, c.tcLoc);
            mv.visitFieldInsn(Opcodes.GETFIELD, TYPE_TC.getInternalName(), "gc", "Lorg/perl6/nqp/runtime/GlobalContext;");
            mv.visitJumpInsn(Opcodes.GOTO, done);
            mv.visitLabel(provided);
            mv.visitMethodInsn(Opcodes.INVOKESTATIC, "org/perl6/nqp/runtime/BootJavaInterop$RuntimeSupport", "unboxJava", Type.getMethodDescriptor(TYPE_OBJ, TYPE_SMO));
            mv.visitTypeInsn(Opcodes.CHECKCAST, Type.getInternalName(what));
            mv.visitLabel(done);
        }
        else if (what == ThreadContext.class) {
            Label provided = new Label(), done = new Label();
            mv.visitInsn(Opcodes.DUP);
            mv.visitJumpInsn(Opcodes.IFNONNULL, provided);
            mv.visitInsn(Opcodes.POP);
            mv.visitVarInsn(Opcodes.ALOAD, c.tcLoc);
            mv.visitJumpInsn(Opcodes.GOTO, done);
            mv.visitLabel(provided);
            mv.visitMethodInsn(Opcodes.INVOKESTATIC, "org/perl6/nqp/runtime/BootJavaInterop$RuntimeSupport", "unboxJava", Type.getMethodDescriptor(TYPE_OBJ, TYPE_SMO));
            mv.visitTypeInsn(Opcodes.CHECKCAST, Type.getInternalName(what));
            mv.visitLabel(done);
        }
        // array cases
        else if(what.getComponentType() != null) {
            mv.visitVarInsn(Opcodes.ALOAD, c.tcLoc);
            mv.visitLdcInsn(Type.getType(what));
            mv.visitMethodInsn(Opcodes.INVOKESTATIC, "org/perl6/nqp/runtime/BootJavaInterop", "marshalOutRecursive",
                Type.getMethodDescriptor(Type.getType(Object[].class), TYPE_SMO, TYPE_TC, Type.getType(Class.class)));
        }
        else {
            mv.visitVarInsn(Opcodes.ALOAD, c.tcLoc);
            mv.visitMethodInsn(Opcodes.INVOKESTATIC, TYPE_OPS.getInternalName(), "decont", Type.getMethodDescriptor(TYPE_SMO, TYPE_SMO, TYPE_TC));
            mv.visitMethodInsn(Opcodes.INVOKESTATIC, "org/perl6/nqp/runtime/BootJavaInterop$RuntimeSupport", "unboxJava", Type.getMethodDescriptor(TYPE_OBJ, TYPE_SMO));
            mv.visitTypeInsn(Opcodes.CHECKCAST, Type.getInternalName(what));
        }
    }

    /** Maps BP_XXX constants to o, i, n, s flags. */
    protected static final char[] TYPE_CHAR = new char[] { 'o', 'i', 'n', 's' };
    /** Maps BP_XXX constants to ARG_XXX constants. */
    protected static final byte[] TYPE_argflag = new byte[] { CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_INT, CallSiteDescriptor.ARG_NUM, CallSiteDescriptor.ARG_STR };
    /** Maps BP_XXX constants to type names. */
    protected static final Type[] TYPES = new Type[] { Type.getType(SixModelObject.class), Type.LONG_TYPE, Type.DOUBLE_TYPE, Type.getType(String.class) };
    /** Name of arrays of Object. */
    protected static final Type TYPE_AOBJ = Type.getType(Object[].class);
    /** Type name of {@link CallFrame}. */
    protected static final Type TYPE_CF  = Type.getType(CallFrame.class);
    /** Type name of {@link CodeRef}. */
    protected static final Type TYPE_CR = Type.getType(CodeRef.class);
    /** Type name of {@link CallSiteDescriptor}. */
    protected static final Type TYPE_CSD = Type.getType(CallSiteDescriptor.class);
    /** Type name of {@link CompilationUnit}. */
    protected static final Type TYPE_CU  = Type.getType(CompilationUnit.class);
    /** Type name of {@link Object}. */
    protected static final Type TYPE_OBJ = Type.getType(Object.class);
    /** Type name of {@link Ops}. */
    protected static final Type TYPE_OPS = Type.getType(Ops.class);
    /** Type name of {@link SixModelObject}. */
    protected static final Type TYPE_SMO = Type.getType(SixModelObject.class);
    /** Type name of {@link STable}. */
    protected static final Type TYPE_ST = Type.getType(STable.class);
    /** Type name of {@link ThreadContext}. */
    protected static final Type TYPE_TC = Type.getType(ThreadContext.class);

    /** Stores working information while building a class. */
    protected static class ClassContext {
        public ClassContext() {}
        /** The ASM class writer. */
        public ClassWriter cv;
        /** The new class' internal name. */
        public String className;
        /** The incomplete list of constants, used by {@link BootJavaInterop#emitConst}. */
        public List<Object> constants = new ArrayList< >();
        /** The referenced class (for adaptors only). */
        public Class<?> target;
        /** The newly minted class. */
        public Class<?> constructed;
        /** Adaptor names, in the same order as the qb_NNN indexes, for adaptors only. */
        public List<String> descriptors = new ArrayList< >();
        /** The next qb_NNN index to use. */
        public int nextCallout;
    }

    /** Start an adaptor method and generate standard prologue. */
    protected MethodContext startCallout(ClassContext cc, int arity, String desc) {
        MethodContext mc = new MethodContext();
        mc.cc = cc;
        MethodVisitor mv = mc.mv = cc.cv.visitMethod(Opcodes.ACC_PUBLIC | Opcodes.ACC_STATIC, "qb_"+(cc.nextCallout++),
                Type.getMethodDescriptor(Type.VOID_TYPE, TYPE_CU, TYPE_TC, TYPE_CR, TYPE_CSD, TYPE_AOBJ),
                null, null);
        AnnotationVisitor av = mv.visitAnnotation("Lorg/perl6/nqp/runtime/CodeRefAnnotation;", true);
        av.visit("name", "callout "+cc.target.getName()+" "+desc);
        av.visitEnd();
        mv.visitCode();
        cc.descriptors.add(desc);

        mc.argsLoc = 4;
        mc.csdLoc = 3;
        mc.cfLoc = 5;
        mc.tcLoc = 1;

        mv.visitTypeInsn(Opcodes.NEW, "org/perl6/nqp/runtime/CallFrame");
        mv.visitInsn(Opcodes.DUP);
        mv.visitVarInsn(Opcodes.ALOAD, 1); // tc
        mv.visitVarInsn(Opcodes.ALOAD, 2); // cr
        mv.visitMethodInsn(Opcodes.INVOKESPECIAL, "org/perl6/nqp/runtime/CallFrame", "<init>", Type.getMethodDescriptor(Type.VOID_TYPE, TYPE_TC, TYPE_CR));
        mv.visitVarInsn(Opcodes.ASTORE, 5); // cf;

        mv.visitLabel(mc.tryStart = new Label());

        mv.visitVarInsn(Opcodes.ALOAD, 5); // cf
        mv.visitVarInsn(Opcodes.ALOAD, 3); // csd
        mv.visitVarInsn(Opcodes.ALOAD, 4); // args
        emitInteger(mc, arity);
        emitInteger(mc, arity);
        mv.visitMethodInsn(Opcodes.INVOKESTATIC, TYPE_OPS.getInternalName(), "checkarity", Type.getMethodDescriptor(TYPE_CSD, TYPE_CF, TYPE_CSD, TYPE_AOBJ, Type.INT_TYPE, Type.INT_TYPE));
        mv.visitVarInsn(Opcodes.ASTORE, 3); // csd
        mv.visitVarInsn(Opcodes.ALOAD, 1); // tc
        mv.visitFieldInsn(Opcodes.GETFIELD, TYPE_TC.getInternalName(), "flatArgs", TYPE_AOBJ.getDescriptor());
        mv.visitVarInsn(Opcodes.ASTORE, 4); // args

        return mc;
    }

    /** Generate adaptor epilogue and end the method. */
    protected void endCallout(MethodContext c) {
        MethodVisitor mv = c.mv;
        Label endTry = new Label();
        Label handler = new Label();
        Label notcontrol = new Label();

        mv.visitLabel(endTry);
        mv.visitVarInsn(Opcodes.ALOAD, 5); //cf
        mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, TYPE_CF.getInternalName(), "leave", "()V");
        mv.visitInsn(Opcodes.RETURN);

        mv.visitLabel(handler);
        mv.visitInsn(Opcodes.DUP);
        mv.visitTypeInsn(Opcodes.INSTANCEOF, "org/perl6/nqp/runtime/ControlException");
        mv.visitJumpInsn(Opcodes.IFEQ, notcontrol);
        mv.visitVarInsn(Opcodes.ALOAD, 5); //cf
        mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, TYPE_CF.getInternalName(), "leave", "()V");
        mv.visitInsn(Opcodes.ATHROW);

        mv.visitLabel(notcontrol);
        mv.visitVarInsn(Opcodes.ALOAD, 1); // tc
        mv.visitInsn(Opcodes.SWAP);
        mv.visitMethodInsn(Opcodes.INVOKESTATIC, "org/perl6/nqp/runtime/ExceptionHandling", "dieInternal",
                Type.getMethodDescriptor(Type.getType(RuntimeException.class), TYPE_TC, Type.getType(Throwable.class)));
        mv.visitInsn(Opcodes.ATHROW);

        c.mv.visitTryCatchBlock(c.tryStart, endTry, handler, null);
        c.mv.visitMaxs(0,0);
        c.mv.visitEnd();
    }

    /** Generate callin prologue. */
    protected MethodContext startCallin(ClassContext cc, int modifiers, String name, Type desc) {
        MethodContext mc = new MethodContext();
        mc.cc = cc;
        MethodVisitor mv = mc.mv = cc.cv.visitMethod(modifiers, name, desc.getDescriptor(), null, null);
        mc.callback = true;

        mv.visitCode();
        emitConst(mc, gc, GlobalContext.class);
        mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "org/perl6/nqp/runtime/GlobalContext", "getCurrentThreadContext", "()Lorg/perl6/nqp/runtime/ThreadContext;");
        mc.tcLoc = desc.getArgumentsAndReturnSizes() >> 2;
        if ((modifiers & Opcodes.ACC_STATIC) != 0) mc.tcLoc--;
        mc.argsLoc = mc.tcLoc + 1;
        mc.cfLoc = mc.tcLoc + 2;
        mv.visitVarInsn(Opcodes.ASTORE, mc.tcLoc);

        mv.visitVarInsn(Opcodes.ALOAD, mc.tcLoc);
        mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, TYPE_TC.getInternalName(), "resultFrame", Type.getMethodDescriptor(TYPE_CF));
        mv.visitVarInsn(Opcodes.ASTORE, mc.cfLoc);

        mv.visitLabel(mc.tryStart = new Label());
        return mc;
    }

    /** Generate callin epilogue. */
    protected void endCallin(MethodContext mc) {
        Label end = new Label();
        MethodVisitor mv = mc.mv;
        mv.visitLabel(end);
        mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/lang/Throwable", "getCause", "()Ljava/lang/Throwable;");
        mv.visitInsn(Opcodes.ATHROW);
        mv.visitTryCatchBlock(mc.tryStart, end, end, "org/perl6/nqp/runtime/JavaCallinException");
        mv.visitMaxs(0,0);
        mv.visitEnd();
    }

    /** Constructs a CallSiteDescriptor and argument array for a callback and begins the invokeDirect call. */
    protected void setupCallback(MethodContext mc, SixModelObject invokee, Method invokeeKey, Class<?>[] args) {
        byte[] csdFlags = new byte[args.length];
        for (int i = 0; i < args.length; i++)
            csdFlags[i] = TYPE_argflag[storageForType(args[i])];
        CallSiteDescriptor csd = new CallSiteDescriptor(csdFlags, null);

        MethodVisitor mv = mc.mv;
        mv.visitVarInsn(Opcodes.ALOAD, mc.tcLoc);
        if (invokee != null) {
            emitConst(mc, invokee, SixModelObject.class);
        } else {
            mv.visitVarInsn(Opcodes.ALOAD, 0);
            mv.visitFieldInsn(Opcodes.GETFIELD, mc.cc.className, "methodMap", "Ljava/util/Map;");
            emitConst(mc, invokeeKey, Object.class);
            mv.visitMethodInsn(Opcodes.INVOKEINTERFACE, "java/util/Map", "get", "(Ljava/lang/Object;)Ljava/lang/Object;");
            mv.visitTypeInsn(Opcodes.CHECKCAST, Type.getInternalName(SixModelObject.class));
        }
        emitConst(mc, csd, CallSiteDescriptor.class);
        emitInteger(mc, args.length);
        mv.visitTypeInsn(Opcodes.ANEWARRAY, "java/lang/Object");
        mv.visitVarInsn(Opcodes.ASTORE, mc.argsLoc);
    }

    /** Finishes the invokeDirect call for a callback. */
    protected void fireCallback(MethodContext mc) {
        MethodVisitor mv = mc.mv;
        mv.visitVarInsn(Opcodes.ALOAD, mc.argsLoc);
        mv.visitMethodInsn(Opcodes.INVOKESTATIC, TYPE_OPS.getInternalName(), "invokeDirect",
                Type.getMethodDescriptor(Type.VOID_TYPE, TYPE_TC, TYPE_SMO, TYPE_CSD, TYPE_AOBJ));
    }

    /** Working information for a method under construction. */
    protected static class MethodContext {
        public MethodContext() { }
        /** The owning incomplete class. */
        public ClassContext cc;
        /** The ASM method writer. */
        public MethodVisitor mv;
        /** True if this is a callin. */
        public boolean callback;
        /** Local variable index of the current {@link CallFrame}. */
        public int cfLoc;
        /** Local variable index of the argument list being constructed or read. */
        public int argsLoc;
        /** Local variable index of the {@link CallSiteDescriptor} being read. */
        public int csdLoc;
        /** Local variable index of the current {@link ThreadContext}. */
        public int tcLoc;
        /** Temporary used for whole-method exception catching. */
        public Label tryStart;
    }

    /** Emits code to a working method to push an integer constant. */
    protected void emitInteger(MethodContext c, int i) {
        if (i >= -1 && i <= 5) c.mv.visitInsn(Opcodes.ICONST_0 + i);
        else if (i == (byte)i) c.mv.visitIntInsn(Opcodes.BIPUSH, i);
        else if (i == (short)i) c.mv.visitIntInsn(Opcodes.SIPUSH, i);
        else c.mv.visitLdcInsn(i);
    }

    /** Emits code to a working method to push an object constant. */
    protected <T> void emitConst(MethodContext c, T k, Class<T> cls) {
        List<Object> ks = c.cc.constants;
        int kix = ks.size();
        ks.add(k);
        c.mv.visitFieldInsn(Opcodes.GETSTATIC, c.cc.className, "constants", "[Ljava/lang/Object;");
        emitInteger(c, kix);
        c.mv.visitInsn(Opcodes.AALOAD);
        if (cls != Object.class) c.mv.visitTypeInsn(Opcodes.CHECKCAST, Type.getInternalName(cls));
    }

    /** Emits code to a working method to get a value from an argument list or return value. */
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

    /** Emits "early" code to a working method to push a value to a return value or argument list constructor. */
    protected void preEmitPutToNQP(MethodContext c, int index, int type) {
        if (c.callback) {
            // an argument
            c.mv.visitVarInsn(Opcodes.ALOAD, c.argsLoc);
            emitInteger(c, index);
        }
    }

    /** Emits "late" code to a working method to push a value to a return value or argument list constructor. */
    protected void emitPutToNQP(MethodContext c, int index, int type) {
        if (c.callback) {
            // an argument
            if (type == StorageSpec.BP_INT) {
                c.mv.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
            } else if (type == StorageSpec.BP_NUM) {
                c.mv.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double");
            }
            c.mv.visitInsn(Opcodes.AASTORE);
        } else {
            c.mv.visitVarInsn(Opcodes.ALOAD, c.cfLoc);
            c.mv.visitMethodInsn(Opcodes.INVOKESTATIC, TYPE_OPS.getInternalName(), "return_"+TYPE_CHAR[type], Type.getMethodDescriptor(Type.VOID_TYPE, TYPES[type], TYPE_CF));
        }
    }

    /** No user-servicable parts inside.  Public for the sake of generated code only. */
    public static class RuntimeSupport {
        public static SixModelObject boxJava(Object o, STable st) {
            JavaObjectWrapper jow = new JavaObjectWrapper();
            jow.st = st;
            jow.theObject = o;
            return jow;
        }

        public static Object unboxJava(SixModelObject smo) {
            return ((JavaObjectWrapper)smo).theObject;
        }
    }

    /** A non-invalidating inline cache for lazily turning a {@link Class} into a {@link STable}. */
    public class STableCache {
        private volatile STable localCache;
        private Class<?> what;

        public STableCache(Class<?> what) { this.what = what; }
        public STable getSTable() {
            STable fetch = localCache;
            if (fetch != null) return fetch;
            return localCache = getSTableForClass(what);
        }
    }

    private final ClassValue<MethodHandle> proxyClasses = new ClassValue<MethodHandle>() {
        @Override
        public MethodHandle computeValue(Class<?> iface) {
            Class<?> cls = computeProxyClass(iface);
            try {
                return MethodHandles.publicLookup().findConstructor(cls, MethodType.methodType(void.class, Map.class));
            } catch (ReflectiveOperationException roe) {
                throw new RuntimeException(roe);
            }
        }
    };

    /** Produce an interface instance using a cached class, in the style of (but not using) {@link java.lang.reflect.Proxy}. */
    public SixModelObject proxy(SixModelObject iface_smo, SixModelObject methods) {
        Class<?> iface = unboxClass(iface_smo);
        ThreadContext tc = gc.getCurrentThreadContext();
        Map<Method, SixModelObject> methodImpl = proxyGetMethods(tc, iface, methods);
        Object proxy;
        try {
            proxy = proxyClasses.get(iface).invoke(methodImpl);
        } catch (Throwable t) {
            throw ExceptionHandling.dieInternal(tc, t);
        }

        return RuntimeSupport.boxJava(proxy, getSTableForClass(iface));
    }

    /** Override this to customize {@link #proxy(Class,SixModelObject)} method extraction. */
    protected Map<Method, SixModelObject> proxyGetMethods(ThreadContext tc, Class<?> iface, SixModelObject methods) {
        // here in BOOTland we can't tell the difference between a coderef and a hash, so require a hash
        Method[] ms = iface.getMethods();
        Map<Method, SixModelObject> ret = new HashMap< >();
        for (Method m : ms) {
            if (m.getDeclaringClass() != iface) continue; // don't care about hashCode and equals

            String s = m.getName();
            String l = s + "/" + Type.getMethodDescriptor(m);

            if (methods.exists_key(tc, l) != 0)
                ret.put(m, methods.at_key_boxed(tc, l));
            else if (methods.exists_key(tc, s) != 0)
                ret.put(m, methods.at_key_boxed(tc, s));
            else if (!Modifier.isAbstract(iface.getModifiers()) || Modifier.isAbstract(m.getModifiers()))
                throw ExceptionHandling.dieInternal(tc, "method hash has no definition for "+l);
        }
        return ret;
    }

    /** Override this to customize generation of proxy classes. */
    protected Class<?> computeProxyClass(Class<?> iface) {
        ClassContext cc = new ClassContext();
        ClassWriter cw = new ClassWriter(ClassWriter.COMPUTE_MAXS | ClassWriter.COMPUTE_FRAMES);
        String className = "org/perl6/nqp/generatedproxy/"+Type.getInternalName(iface);
        cc.className = className;
        cc.cv = cw;

        String superclass;
        if (Modifier.isInterface(iface.getModifiers())) {
            cw.visit(Opcodes.V1_7, Opcodes.ACC_PUBLIC | Opcodes.ACC_SUPER, className, null,
                    "java/lang/Object", new String[] { Type.getInternalName(iface) });
            superclass = "java/lang/Object";
        }
        else {
            superclass = Type.getInternalName(iface);
            cw.visit(Opcodes.V1_7, Opcodes.ACC_PUBLIC | Opcodes.ACC_SUPER, className, null,
                    superclass, new String[] { });
        }
        cw.visitField(Opcodes.ACC_STATIC | Opcodes.ACC_PUBLIC, "constants", "[Ljava/lang/Object;", null, null).visitEnd();
        cw.visitField(Opcodes.ACC_PRIVATE, "methodMap", "Ljava/util/Map;", null, null).visitEnd();

        for (Method m : iface.getMethods()) {
            if (m.getDeclaringClass() != iface) continue; // no hashCode, equals
            createProxyMethod(cc, m);
        }

        MethodVisitor mv = cw.visitMethod(Opcodes.ACC_PUBLIC, "<init>", "(Ljava/util/Map;)V", null, null);
        mv.visitCode();
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitMethodInsn(Opcodes.INVOKESPECIAL, superclass, "<init>", "()V");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitFieldInsn(Opcodes.PUTFIELD, className, "methodMap", "Ljava/util/Map;");
        mv.visitInsn(Opcodes.RETURN);
        mv.visitMaxs(0,0);
        mv.visitEnd();

        finishClass(cc);
        return cc.constructed;
    }

    /** Override this to customize proxy callins. */
    protected void createProxyMethod(ClassContext cc, Method m) {
        MethodContext mc = startCallin(cc, Opcodes.ACC_PUBLIC, m.getName(), Type.getType(m));
        MethodVisitor mv = mc.mv;

        Class<?> cret = m.getReturnType();
        Class<?>[] cparm = m.getParameterTypes();

        setupCallback(mc, null, m, cparm);

        int lidx = 1; // skip self
        for (int i = 0; i < cparm.length; i++) {
            Class<?> arg = cparm[i];
            Type ty = Type.getType(arg);
            preMarshalIn(mc, arg, i);
            mv.visitVarInsn( ty.getOpcode(Opcodes.ILOAD), lidx );
            lidx += ty.getSize();
            marshalIn(mc, arg, i);
        }

        fireCallback(mc);

        marshalOut(mc, cret, 0);
        mc.mv.visitInsn(Type.getType(cret).getOpcode(Opcodes.IRETURN));

        endCallin(mc);
    }
}
