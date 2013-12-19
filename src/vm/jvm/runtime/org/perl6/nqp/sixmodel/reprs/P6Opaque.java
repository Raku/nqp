package org.perl6.nqp.sixmodel.reprs;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.Label;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.Type;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.ByteClassLoader;
import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SerializationWriter;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.sixmodel.TypeObject;

public class P6Opaque extends REPR {
    private static long typeId = 0;
    
    private static class AttrInfo {
        public STable st;
        public boolean boxTarget;
        public boolean hasAutoVivContainer;
        public boolean posDelegate;
        public boolean assDelegate;
    }

    // this is a weak *value* map; it provides instances of V, but does not retain them, and keeps strong refs to the keys
    @SuppressWarnings("unchecked")
    private static class ObjectCache<K,V> {
        private class Ref extends SoftReference<V> {
            public K key;
            public Ref(K key, V obj, ReferenceQueue<V> queue) { super(obj, queue); this.key = key; }
        }

        private HashMap<K, Ref> store = new HashMap< >();
        private ReferenceQueue<V> queue = new ReferenceQueue< >();

        public synchronized V get(K key) {
            Ref ref;
            while ((ref = (Ref) queue.poll()) != null) store.remove(ref.key);
            ref = store.get(key);
            return ref == null ? null : ref.get();
        }

        public synchronized void put(K key, V value) {
            Ref ref;
            while ((ref = (Ref) queue.poll()) != null) store.remove(ref.key);
            store.put(key, new Ref(key, value, queue));
        }
    }

    private static ObjectCache<String, Class<?>> classCache = new ObjectCache< >();

    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        st.REPRData = new P6OpaqueREPRData();
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
    }
    
    @SuppressWarnings("unchecked") // Because Java implemented generics stupidly
    public void compose(ThreadContext tc, STable st, SixModelObject repr_info_hash) {
        /* Get attribute part of the protocol from the hash. */
        SixModelObject repr_info = repr_info_hash.at_key_boxed(tc, "attribute");

        /* Go through MRO and find all classes with attributes and build up
         * mapping info hashes. Note, reverse order so indexes will match
         * those in parent types. */
        int curAttr = 0;
        boolean mi = false;
        List<SixModelObject> classHandles = new ArrayList<SixModelObject>();
        List<HashMap<String, Integer>> attrIndexes = new ArrayList<HashMap<String, Integer>>();
        List<SixModelObject> autoVivs = new ArrayList<SixModelObject>();
        List<STable> flattenedSTables = new ArrayList<STable>();
        List<AttrInfo> attrInfoList = new ArrayList<AttrInfo>();
        long mroLength = repr_info.elems(tc);
        for (long i = mroLength - 1; i >= 0; i--) {
            SixModelObject entry = repr_info.at_pos_boxed(tc, i);
            SixModelObject type = entry.at_pos_boxed(tc, 0);
            SixModelObject attrs = entry.at_pos_boxed(tc, 1);
            SixModelObject parents = entry.at_pos_boxed(tc, 2);
            
            /* If it has any attributes, give them each indexes and put them
             * in the list to add to the layout. */
            long numAttrs = attrs.elems(tc);
            if (numAttrs > 0) {
                HashMap<String, Integer> indexes = new HashMap<String, Integer>();
                for (long j = 0; j < numAttrs; j++) {
                    SixModelObject attrHash = attrs.at_pos_boxed(tc, j);
                    String attrName = attrHash.at_key_boxed(tc, "name").get_str(tc);
                    SixModelObject attrType = attrHash.at_key_boxed(tc, "type");
                    if (attrType == null)
                        attrType = tc.gc.KnowHOW;
                    indexes.put(attrName, curAttr);
                    AttrInfo info = new AttrInfo();
                    info.st = attrType.st;
                    if (attrType.st.REPR.get_storage_spec(tc, attrType.st).inlineable == StorageSpec.INLINED)
                        flattenedSTables.add(attrType.st);
                    else
                        flattenedSTables.add(null);
                    info.boxTarget = attrHash.exists_key(tc, "box_target") != 0;
                    SixModelObject autoViv = attrHash.at_key_boxed(tc, "auto_viv_container");
                    autoVivs.add(autoViv);
                    if (autoViv != null)
                        info.hasAutoVivContainer = true;
                    info.posDelegate = attrHash.exists_key(tc, "positional_delegate") != 0;
                    info.assDelegate = attrHash.exists_key(tc, "associative_delegate") != 0;
                    attrInfoList.add(info);
                    
                    if (info.boxTarget) {
                        switch (info.st.REPR.get_storage_spec(tc, info.st).boxed_primitive) {
                        case StorageSpec.BP_INT:
                            ((P6OpaqueREPRData)st.REPRData).unboxIntSlot = curAttr;
                            break;
                        case StorageSpec.BP_NUM:
                            ((P6OpaqueREPRData)st.REPRData).unboxNumSlot = curAttr;
                            break;
                        case StorageSpec.BP_STR:
                            ((P6OpaqueREPRData)st.REPRData).unboxStrSlot = curAttr;
                            break;
                        }
                    }
                    if (info.posDelegate)
                        ((P6OpaqueREPRData)st.REPRData).posDelSlot = curAttr;
                    if (info.assDelegate)
                        ((P6OpaqueREPRData)st.REPRData).assDelSlot = curAttr;
                    
                    curAttr++;
                }
                classHandles.add(type);
                attrIndexes.add(indexes);
            }
            
            /* Multiple parents means it's multiple inheritance. */
            if (parents.elems(tc) > 1)
                mi = true;
        }
        
        /* Populate some REPR data. */
        ((P6OpaqueREPRData)st.REPRData).classHandles = classHandles.toArray(new SixModelObject[0]);
        ((P6OpaqueREPRData)st.REPRData).nameToHintMap = attrIndexes.toArray(new HashMap[0]);
        ((P6OpaqueREPRData)st.REPRData).autoVivContainers = autoVivs.toArray(new SixModelObject[0]);
        ((P6OpaqueREPRData)st.REPRData).flattenedSTables = flattenedSTables.toArray(new STable[0]);
        ((P6OpaqueREPRData)st.REPRData).mi = mi;
        
        /* Provided we have attributes, generate the JVM backing type. If not,
         * P6OpaqueBaseInstance will do. */
        if (attrInfoList.size() > 0) {
            installJVMType(tc, st, attrInfoList);
        }
        else {
            ((P6OpaqueREPRData)st.REPRData).jvmClass = P6OpaqueBaseInstance.class;
            ((P6OpaqueREPRData)st.REPRData).instance = new P6OpaqueBaseInstance();
            ((P6OpaqueREPRData)st.REPRData).instance.st = st;
        }
    }
    
    /* Adds delegation, needed for mixin support. */
    private void addDelegation(MethodVisitor mv, String methodName,
            Type retType, Type[] argTypes, boolean hasValue) {

        mv.visitVarInsn(Opcodes.ALOAD, 0); // this
        mv.visitFieldInsn(Opcodes.GETFIELD, "org/perl6/nqp/sixmodel/reprs/P6OpaqueBaseInstance", "delegate", 
                "Lorg/perl6/nqp/sixmodel/SixModelObject;");
        mv.visitInsn(Opcodes.DUP);
        
        Label label = new Label();
        mv.visitJumpInsn(Opcodes.IFNULL, label);
        
        mv.visitVarInsn(Opcodes.ALOAD, 1); // tc
        mv.visitVarInsn(Opcodes.ALOAD, 2); // class_handle
        mv.visitVarInsn(Opcodes.ALOAD, 3); // name
        mv.visitVarInsn(Opcodes.LLOAD, 4); // hint
        if (hasValue)
            mv.visitVarInsn(Opcodes.ALOAD, 6); // value
        
        mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "org/perl6/nqp/sixmodel/SixModelObject", methodName, 
                Type.getMethodDescriptor(retType, argTypes));
        
        mv.visitInsn(retType == Type.VOID_TYPE ? Opcodes.RETURN : 
                     retType == Type.LONG_TYPE ? Opcodes.LRETURN :
                                                 Opcodes.ARETURN);
        mv.visitLabel(label);
        mv.visitInsn(Opcodes.POP);
    }

    private void installJVMType(ThreadContext tc, STable st, List<AttrInfo> attrInfoList) {
        StringBuilder sigBuilder = new StringBuilder();

        boolean forceNew = false;
        for (AttrInfo attr : attrInfoList) {

            if (attr.hasAutoVivContainer) sigBuilder.append('v');
            if (attr.posDelegate) sigBuilder.append('p');
            if (attr.assDelegate) sigBuilder.append('a');

            StorageSpec ss = attr.st.REPR.get_storage_spec(tc, attr.st);
            if (ss.inlineable != StorageSpec.REFERENCE) {
                sigBuilder.append('I');
                sigBuilder.append(attr.st.REPR.name);
                sigBuilder.append('(');
                if (!attr.st.REPR.inline_description(tc, attr.st, sigBuilder)) forceNew = true;
                sigBuilder.append(')');
            }

            if (attr.boxTarget) {
                sigBuilder.append('B');
                sigBuilder.append(attr.st.REPR.name);
                sigBuilder.append('(');
                if (!attr.st.REPR.box_description(tc, attr.st, sigBuilder)) forceNew = true;
                sigBuilder.append(')');
            }

            sigBuilder.append(';');
        }

        Class<?> use;
        if (forceNew) {
            use = generateJVMClass(tc, attrInfoList);
        } else {
            String sig = sigBuilder.toString();
            use = classCache.get(sig);
            if (use == null) {
                use = generateJVMClass(tc, attrInfoList);
                classCache.put(sig, use);
                //System.out.println("CREATE "+sig);
            } else {
                //System.out.println("REUSE "+sig);
            }
        }

        ((P6OpaqueREPRData)st.REPRData).jvmClass = use;
        try {
            ((P6OpaqueREPRData)st.REPRData).instance = (P6OpaqueBaseInstance)((P6OpaqueREPRData)st.REPRData).jvmClass.newInstance();
        }
        catch (InstantiationException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
        ((P6OpaqueREPRData)st.REPRData).instance.st = st;
    }

    private Class<?> generateJVMClass(ThreadContext tc, List<AttrInfo> attrInfoList) {
        /* Create a unique name. */
        String className = "__P6opaque__" + typeId++;

        ClassWriter cw = new ClassWriter(ClassWriter.COMPUTE_MAXS | ClassWriter.COMPUTE_FRAMES);
        cw.visit(Opcodes.V1_7, Opcodes.ACC_PUBLIC + Opcodes.ACC_SUPER, className, null, 
                "org/perl6/nqp/sixmodel/reprs/P6OpaqueBaseInstance", null);
        
        Type tcType = Type.getType("Lorg/perl6/nqp/runtime/ThreadContext;");
        Type smoType = Type.getType("Lorg/perl6/nqp/sixmodel/SixModelObject;");
        Type srType = Type.getType("Lorg/perl6/nqp/sixmodel/SerializationReader;");
        Type stType = Type.getType("Lorg/perl6/nqp/sixmodel/STable;");
        
        /* bind_attribute_boxed */
        MethodVisitor bindBoxedVisitor;
        Label bindBoxedSwitch = null;
        Label[] bindBoxedLabels = null;
        Label bindBoxedDefault = new Label();
        {
            String descriptor = Type.getMethodDescriptor(Type.VOID_TYPE, 
                    new Type[] { tcType, smoType, Type.getType(String.class), Type.LONG_TYPE, smoType });
            bindBoxedVisitor = cw.visitMethod(Opcodes.ACC_PUBLIC, "bind_attribute_boxed", descriptor, null, null);
            bindBoxedVisitor.visitCode();
            addDelegation(bindBoxedVisitor, "bind_attribute_boxed", Type.VOID_TYPE,
                    new Type[] { tcType, smoType, Type.getType(String.class), Type.LONG_TYPE, smoType }, true);

            bindBoxedVisitor.visitVarInsn(Opcodes.LLOAD, 4);
            bindBoxedVisitor.visitInsn(Opcodes.L2I);

            if (attrInfoList.size() > 0) {
                bindBoxedLabels = new Label[attrInfoList.size()];
                for (int i = 0; i < attrInfoList.size(); i++) {
                    bindBoxedLabels[i] = new Label();
                }
                bindBoxedSwitch = new Label();
                bindBoxedVisitor.visitLabel(bindBoxedSwitch);
                bindBoxedVisitor.visitTableSwitchInsn(0, attrInfoList.size() - 1, bindBoxedDefault, bindBoxedLabels);
            }
        }

        /* bind_attribute_native */
        MethodVisitor bindNativeVisitor;
        Label bindNativeSwitch = null;
        Label[] bindNativeLabels = null;
        Label bindNativeDefault = new Label();
        {
            String descriptor = Type.getMethodDescriptor(Type.VOID_TYPE, 
                    new Type[] { tcType, smoType, Type.getType(String.class), Type.LONG_TYPE });
            bindNativeVisitor = cw.visitMethod(Opcodes.ACC_PUBLIC, "bind_attribute_native", descriptor, null, null);
            bindNativeVisitor.visitCode();
            addDelegation(bindNativeVisitor, "bind_attribute_native", Type.VOID_TYPE,
                    new Type[] { tcType, smoType, Type.getType(String.class), Type.LONG_TYPE }, false);

            bindNativeVisitor.visitVarInsn(Opcodes.LLOAD, 4);
            bindNativeVisitor.visitInsn(Opcodes.L2I);

            if (attrInfoList.size() > 0) {
                bindNativeLabels = new Label[attrInfoList.size()];
                for (int i = 0; i < attrInfoList.size(); i++) {
                    bindNativeLabels[i] = new Label();
                }
                bindNativeSwitch = new Label();
                bindNativeVisitor.visitLabel(bindNativeSwitch);
                bindNativeVisitor.visitTableSwitchInsn(0, attrInfoList.size() - 1, bindNativeDefault, bindNativeLabels);
            }
        }
        
        /* get_attribute_boxed */
        MethodVisitor getBoxedVisitor;
        Label getBoxedSwitch = null;
        Label[] getBoxedLabels = null;
        Label getBoxedDefault = new Label();
        {
            String descriptor = Type.getMethodDescriptor(smoType, 
                    new Type[] { tcType, smoType, Type.getType(String.class), Type.LONG_TYPE });
            getBoxedVisitor = cw.visitMethod(Opcodes.ACC_PUBLIC, "get_attribute_boxed", descriptor, null, null);
            getBoxedVisitor.visitCode();
            addDelegation(getBoxedVisitor, "get_attribute_boxed", smoType,
                    new Type[] { tcType, smoType, Type.getType(String.class), Type.LONG_TYPE }, false);

            getBoxedVisitor.visitVarInsn(Opcodes.LLOAD, 4);
            getBoxedVisitor.visitInsn(Opcodes.L2I);

            if (attrInfoList.size() > 0) {
                getBoxedLabels = new Label[attrInfoList.size()];
                for (int i = 0; i < attrInfoList.size(); i++) {
                    getBoxedLabels[i] = new Label();
                }
                getBoxedSwitch = new Label();
                getBoxedVisitor.visitLabel(getBoxedSwitch);
                getBoxedVisitor.visitTableSwitchInsn(0, attrInfoList.size() - 1, getBoxedDefault, getBoxedLabels);
            }
        }

        /* get_attribute_native */
        MethodVisitor getNativeVisitor;
        Label getNativeSwitch = null;
        Label[] getNativeLabels = null;
        Label getNativeDefault = new Label();
        {
            String descriptor = Type.getMethodDescriptor(Type.VOID_TYPE, 
                    new Type[] { tcType, smoType, Type.getType(String.class), Type.LONG_TYPE });
            getNativeVisitor = cw.visitMethod(Opcodes.ACC_PUBLIC, "get_attribute_native", descriptor, null, null);
            getNativeVisitor.visitCode();
            addDelegation(getNativeVisitor, "get_attribute_native", Type.VOID_TYPE,
                    new Type[] { tcType, smoType, Type.getType(String.class), Type.LONG_TYPE }, false);

            getNativeVisitor.visitVarInsn(Opcodes.LLOAD, 4);
            getNativeVisitor.visitInsn(Opcodes.L2I);

            if (attrInfoList.size() > 0) {
                getNativeLabels = new Label[attrInfoList.size()];
                for (int i = 0; i < attrInfoList.size(); i++) {
                    getNativeLabels[i] = new Label();
                }
                getNativeSwitch = new Label();
                getNativeVisitor.visitLabel(getNativeSwitch);
                getNativeVisitor.visitTableSwitchInsn(0, attrInfoList.size() - 1, getNativeDefault, getNativeLabels);
            }
        }
        
        /* is_attribute_initialized */
        MethodVisitor isInitVisitor;
        Label isInitSwitch = null;
        Label[] isInitLabels = null;
        Label isInitDefault = new Label();
        Label isInitNull = new Label();
        {
            String descriptor = Type.getMethodDescriptor(Type.LONG_TYPE, 
                    new Type[] { tcType, smoType, Type.getType(String.class), Type.LONG_TYPE });
            isInitVisitor = cw.visitMethod(Opcodes.ACC_PUBLIC, "is_attribute_initialized", descriptor, null, null);
            isInitVisitor.visitCode();
            addDelegation(isInitVisitor, "is_attribute_initialized", Type.LONG_TYPE,
                    new Type[] { tcType, smoType, Type.getType(String.class), Type.LONG_TYPE }, false);

            isInitVisitor.visitVarInsn(Opcodes.LLOAD, 4);
            isInitVisitor.visitInsn(Opcodes.L2I);

            if (attrInfoList.size() > 0) {
                isInitLabels = new Label[attrInfoList.size()];
                for (int i = 0; i < attrInfoList.size(); i++) {
                    isInitLabels[i] = new Label();
                }
                isInitSwitch = new Label();
                isInitVisitor.visitLabel(isInitSwitch);
                isInitVisitor.visitTableSwitchInsn(0, attrInfoList.size() - 1, isInitDefault, isInitLabels);
            }
        }
        
        /* deserializeFields */
        MethodVisitor deserVisitor;
        {
            String descriptor = Type.getMethodDescriptor(Type.VOID_TYPE,
                    new Type[] { tcType, stType, srType });
            deserVisitor = cw.visitMethod(Opcodes.ACC_PUBLIC, "deserializeFields", descriptor, null, null);
            deserVisitor.visitCode();
        }
        
        /* Now add all of the required fields and fill out the methods. */
        for (int i = 0; i < attrInfoList.size(); i++) {
            AttrInfo attr = attrInfoList.get(i);

            /* Is it a reference type or not? */
            StorageSpec ss = attr.st.REPR.get_storage_spec(tc, attr.st);
            if (ss.inlineable == StorageSpec.REFERENCE) {
                /* Add field. */
                String field = "field_" + i;
                String desc = "Lorg/perl6/nqp/sixmodel/SixModelObject;";
                cw.visitField(Opcodes.ACC_PUBLIC, field, desc, null, null);
                
                /* Add bind code. */
                bindBoxedVisitor.visitLabel(bindBoxedLabels[i]);
                bindBoxedVisitor.visitVarInsn(Opcodes.ALOAD, 0);
                bindBoxedVisitor.visitVarInsn(Opcodes.ALOAD, 6);
                bindBoxedVisitor.visitFieldInsn(Opcodes.PUTFIELD, className, field, desc);
                bindBoxedVisitor.visitInsn(Opcodes.RETURN);
                
                /* Add get code. */
                getBoxedVisitor.visitLabel(getBoxedLabels[i]);
                getBoxedVisitor.visitVarInsn(Opcodes.ALOAD, 0);
                getBoxedVisitor.visitFieldInsn(Opcodes.GETFIELD, className, field, desc);

                if (attr.hasAutoVivContainer) {
                    Label end = new Label();
                    getBoxedVisitor.visitInsn(Opcodes.DUP);
                    getBoxedVisitor.visitJumpInsn(Opcodes.IFNONNULL, end);
                    getBoxedVisitor.visitInsn(Opcodes.POP);
                    getBoxedVisitor.visitVarInsn(Opcodes.ALOAD, 0);
                    getBoxedVisitor.visitIntInsn(Opcodes.BIPUSH, i);
                    getBoxedVisitor.visitVarInsn(Opcodes.ALOAD, 1);
                    String methodDesc = "(ILorg/perl6/nqp/runtime/ThreadContext;)Lorg/perl6/nqp/sixmodel/SixModelObject;";
                    getBoxedVisitor.visitMethodInsn(Opcodes.INVOKEVIRTUAL, className, "autoViv", methodDesc);
                    getBoxedVisitor.visitInsn(Opcodes.DUP);
                    getBoxedVisitor.visitVarInsn(Opcodes.ALOAD, 0);
                    getBoxedVisitor.visitInsn(Opcodes.SWAP);
                    getBoxedVisitor.visitFieldInsn(Opcodes.PUTFIELD, className, field, desc);
                    getBoxedVisitor.visitLabel(end);
                    getBoxedVisitor.visitInsn(Opcodes.ARETURN);
                }
                else {
                    getBoxedVisitor.visitInsn(Opcodes.ARETURN);
                }
                
                /* Add is init code. */
                isInitVisitor.visitLabel(isInitLabels[i]);
                isInitVisitor.visitVarInsn(Opcodes.ALOAD, 0);
                isInitVisitor.visitFieldInsn(Opcodes.GETFIELD, className, field, desc);
                isInitVisitor.visitJumpInsn(Opcodes.IFNULL, isInitNull);
                isInitVisitor.visitInsn(Opcodes.ICONST_1);
                isInitVisitor.visitInsn(Opcodes.I2L);
                isInitVisitor.visitInsn(Opcodes.LRETURN);
                
                /* Native variants should just throw. */
                bindNativeVisitor.visitLabel(bindNativeLabels[i]);
                bindNativeVisitor.visitVarInsn(Opcodes.ALOAD, 0);
                bindNativeVisitor.visitMethodInsn(Opcodes.INVOKEVIRTUAL, className, "badNative", "()V");
                
                getNativeVisitor.visitLabel(getNativeLabels[i]);
                getNativeVisitor.visitVarInsn(Opcodes.ALOAD, 0);
                getNativeVisitor.visitMethodInsn(Opcodes.INVOKEVIRTUAL, className, "badNative", "()V");

                /* We deserialize these ourselves */
                deserVisitor.visitVarInsn(Opcodes.ALOAD, 0);
                deserVisitor.visitVarInsn(Opcodes.ALOAD, 3);
                deserVisitor.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "org/perl6/nqp/sixmodel/SerializationReader", "readRef", "()Lorg/perl6/nqp/sixmodel/SixModelObject;");
                deserVisitor.visitFieldInsn(Opcodes.PUTFIELD, className, field, desc);
            }
            else {
                /* Generate field prefix and have target REPR install the field. */
                String prefix = "field_" + i;
                attr.st.REPR.inlineStorage(tc, attr.st, cw, prefix);
                
                /* Install bind/get instructions. */
                bindNativeVisitor.visitLabel(bindNativeLabels[i]);
                attr.st.REPR.inlineBind(tc, attr.st, bindNativeVisitor, className, prefix);
                getNativeVisitor.visitLabel(getNativeLabels[i]);
                attr.st.REPR.inlineGet(tc, attr.st, getNativeVisitor, className, prefix);

                /* Deserialization */
                attr.st.REPR.inlineDeserialize(tc, attr.st, deserVisitor, className, prefix);
                
                /* Add is init code. */
                isInitVisitor.visitLabel(isInitLabels[i]);
                isInitVisitor.visitInsn(Opcodes.ICONST_1);
                isInitVisitor.visitInsn(Opcodes.I2L);
                isInitVisitor.visitInsn(Opcodes.LRETURN);
                
                /* Reference variants should just throw. */                
                bindBoxedVisitor.visitLabel(bindBoxedLabels[i]);
                bindBoxedVisitor.visitVarInsn(Opcodes.ALOAD, 0);
                bindBoxedVisitor.visitMethodInsn(Opcodes.INVOKEVIRTUAL, className, "badReference", "()V");

                getBoxedVisitor.visitLabel(getBoxedLabels[i]);
                getBoxedVisitor.visitVarInsn(Opcodes.ALOAD, 0);
                getBoxedVisitor.visitMethodInsn(Opcodes.INVOKEVIRTUAL, className, "badReference", "()V");
            }            
            
            /* If this is a box/unbox target, make sure it gets the appropriate
             * methods.
             */
            if (attr.boxTarget) {
                if (ss.inlineable == StorageSpec.REFERENCE)
                    throw ExceptionHandling.dieInternal(tc, "A box_target must not have a reference type attribute");
                attr.st.REPR.generateBoxingMethods(tc, attr.st, cw, className, "field_" + i);
            }
            
            /* If it's a positional or associative delegate, give it the methods
             * for that.
             */
            if (attr.posDelegate)
                generateDelegateMethod(tc, cw, className, "field_" + i, "posDelegate");
            if (attr.assDelegate)
                generateDelegateMethod(tc, cw, className, "field_" + i, "assDelegate");
        }
        
        /* Finish bind_boxed_attribute. */
        bindBoxedVisitor.visitLabel(bindBoxedDefault);
        bindBoxedVisitor.visitVarInsn(Opcodes.ALOAD, 0);
        bindBoxedVisitor.visitVarInsn(Opcodes.ALOAD, 2);
        bindBoxedVisitor.visitVarInsn(Opcodes.ALOAD, 3);
        bindBoxedVisitor.visitMethodInsn(Opcodes.INVOKEVIRTUAL, className, "resolveAttribute", 
                "(Lorg/perl6/nqp/sixmodel/SixModelObject;Ljava/lang/String;)I");
        if (attrInfoList.size() > 0)
            bindBoxedVisitor.visitJumpInsn(Opcodes.GOTO, bindBoxedSwitch);
        else
            bindBoxedVisitor.visitInsn(Opcodes.RETURN);
        bindBoxedVisitor.visitMaxs(0, 0);
        bindBoxedVisitor.visitEnd();
        
        /* Finish bind_native_attribute. */
        bindNativeVisitor.visitLabel(bindNativeDefault);
        bindNativeVisitor.visitVarInsn(Opcodes.ALOAD, 0);
        bindNativeVisitor.visitVarInsn(Opcodes.ALOAD, 2);
        bindNativeVisitor.visitVarInsn(Opcodes.ALOAD, 3);
        bindNativeVisitor.visitMethodInsn(Opcodes.INVOKEVIRTUAL, className, "resolveAttribute", 
                "(Lorg/perl6/nqp/sixmodel/SixModelObject;Ljava/lang/String;)I");
        if (attrInfoList.size() > 0)
            bindNativeVisitor.visitJumpInsn(Opcodes.GOTO, bindNativeSwitch);
        else
            bindNativeVisitor.visitInsn(Opcodes.RETURN);
        bindNativeVisitor.visitMaxs(0, 0);
        bindNativeVisitor.visitEnd();
        
        /* Finish get_boxed_attribute. */
        getBoxedVisitor.visitLabel(getBoxedDefault);
        getBoxedVisitor.visitVarInsn(Opcodes.ALOAD, 0);
        getBoxedVisitor.visitVarInsn(Opcodes.ALOAD, 2);
        getBoxedVisitor.visitVarInsn(Opcodes.ALOAD, 3);
        getBoxedVisitor.visitMethodInsn(Opcodes.INVOKEVIRTUAL, className, "resolveAttribute", 
                "(Lorg/perl6/nqp/sixmodel/SixModelObject;Ljava/lang/String;)I");
        if (attrInfoList.size() > 0)
            getBoxedVisitor.visitJumpInsn(Opcodes.GOTO, getBoxedSwitch);
        else
            getBoxedVisitor.visitInsn(Opcodes.ACONST_NULL);
        getBoxedVisitor.visitInsn(Opcodes.ARETURN);
        getBoxedVisitor.visitMaxs(0, 0);
        getBoxedVisitor.visitEnd();    
        
        /* Finish get_native_attribute. */
        getNativeVisitor.visitLabel(getNativeDefault);
        getNativeVisitor.visitVarInsn(Opcodes.ALOAD, 0);
        getNativeVisitor.visitVarInsn(Opcodes.ALOAD, 2);
        getNativeVisitor.visitVarInsn(Opcodes.ALOAD, 3);
        getNativeVisitor.visitMethodInsn(Opcodes.INVOKEVIRTUAL, className, "resolveAttribute", 
                "(Lorg/perl6/nqp/sixmodel/SixModelObject;Ljava/lang/String;)I");
        if (attrInfoList.size() > 0)
            getNativeVisitor.visitJumpInsn(Opcodes.GOTO, getNativeSwitch);
        else
            getNativeVisitor.visitInsn(Opcodes.RETURN);
        getNativeVisitor.visitMaxs(6, 6);
        getNativeVisitor.visitEnd();
        
        /* Finish is_attribute_initialized. */
        isInitVisitor.visitLabel(isInitDefault);
        isInitVisitor.visitVarInsn(Opcodes.ALOAD, 0);
        isInitVisitor.visitVarInsn(Opcodes.ALOAD, 2);
        isInitVisitor.visitVarInsn(Opcodes.ALOAD, 3);
        isInitVisitor.visitMethodInsn(Opcodes.INVOKEVIRTUAL, className, "resolveAttribute", 
                "(Lorg/perl6/nqp/sixmodel/SixModelObject;Ljava/lang/String;)I");
        if (attrInfoList.size() > 0)
            isInitVisitor.visitJumpInsn(Opcodes.GOTO, isInitSwitch);
        isInitVisitor.visitLabel(isInitNull);
        isInitVisitor.visitInsn(Opcodes.ICONST_0);
        isInitVisitor.visitInsn(Opcodes.I2L);
        isInitVisitor.visitInsn(Opcodes.LRETURN);
        isInitVisitor.visitMaxs(0, 0);
        isInitVisitor.visitEnd();
        
        /* Finish deserializeFields. */
        deserVisitor.visitInsn(Opcodes.RETURN);
        deserVisitor.visitMaxs(0, 0);
        deserVisitor.visitEnd();

        /* Finally, add empty constructor and generate the JVM storage class. */
        MethodVisitor constructor = cw.visitMethod(Opcodes.ACC_PUBLIC, "<init>", "()V", null, null);
        constructor.visitCode();
        constructor.visitVarInsn(Opcodes.ALOAD, 0);
        constructor.visitMethodInsn(Opcodes.INVOKESPECIAL, 
                "org/perl6/nqp/sixmodel/reprs/P6OpaqueBaseInstance", "<init>", "()V");
        constructor.visitInsn(Opcodes.RETURN);
        constructor.visitMaxs(1, 1);
        constructor.visitEnd();

        cw.visitEnd();
        
        byte[] classCompiled = cw.toByteArray();
        // Uncomment the following line to help debug the code-gen.
//        try {
//            FileOutputStream fos = new FileOutputStream(new File(className + ".class"));
//            fos.write(classCompiled);
//            fos.close();
//        } catch (IOException e) {
//        }
        return new ByteClassLoader(classCompiled).findClass(className);
    }

    private void generateDelegateMethod(ThreadContext tc, ClassWriter cw, String className, String field, String methodName) {
        String desc = "Lorg/perl6/nqp/sixmodel/SixModelObject;";

        MethodVisitor mv = cw.visitMethod(Opcodes.ACC_PUBLIC, methodName, "()"+desc, null, null);        
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitFieldInsn(Opcodes.GETFIELD, className, field, desc);
        mv.visitInsn(Opcodes.ARETURN);
        mv.visitMaxs(0, 0);
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        return ((P6OpaqueREPRData)st.REPRData).instance.instClone();
    }
    
    public void change_type(ThreadContext tc, SixModelObject obj, SixModelObject newType) {
        // Ensure target type is also P6opaque-based.
        if (!(newType.st.REPR instanceof P6Opaque))
            throw ExceptionHandling.dieInternal(tc, "P6opaque can only rebless to another P6opaque-based type");
        
        // Ensure that the MROs overlap properly.
        P6OpaqueREPRData ourREPRData = (P6OpaqueREPRData)obj.st.REPRData;
        P6OpaqueREPRData targetREPRData = (P6OpaqueREPRData)newType.st.REPRData;
        if (ourREPRData.classHandles.length > targetREPRData.classHandles.length)
            throw ExceptionHandling.dieInternal(tc, "Incompatible MROs in P6opaque rebless");
        for (int i = 0; i < ourREPRData.classHandles.length; i++) {
            if (ourREPRData.classHandles[i] != targetREPRData.classHandles[i])
                throw ExceptionHandling.dieInternal(tc, "Incompatible MROs in P6opaque rebless");
        }
        
        // If there's a different number of attributes, need to set up delegate.
        // Note the condition below works because we don't make an entry in the
        // class handles list for a type with no attributes.
        P6OpaqueBaseInstance instance = (P6OpaqueBaseInstance)obj;
        if (ourREPRData.classHandles.length != targetREPRData.classHandles.length) {
            // Create delegate.
            SixModelObject delegate = newType.st.REPR.allocate(tc, newType.st);
            
            // Find original object.
            SixModelObject orig;
            if (instance.delegate != null)
                orig = instance.delegate;
            else
                orig = obj;
            
            // Copy over current attribute values.
            Field[] fromFields = orig.getClass().getFields();
            Field[] toFields = delegate.getClass().getFields();
            try {
                for (int i = 0; i < fromFields.length - 3; i++)
                    toFields[i].set(delegate, fromFields[i].get(orig));
            }
            catch (IllegalAccessException e) { throw new RuntimeException(e); }

            // Install.
            instance.delegate = delegate;
        }
        // If we don't have to create a new delegate, but there's a delegate
        // in place already, the delegate needs a new STable as well.
        // Otherwise, methods introduced in the new type won't be available.
        else if(instance.delegate != null) {
            instance.delegate.st = newType.st;
        }
        
        // Switch STable over to the new type.
        obj.st = newType.st;
    }
    
    public StorageSpec get_storage_spec(ThreadContext tc, STable st) {
        P6OpaqueREPRData rd = (P6OpaqueREPRData)st.REPRData;
        StorageSpec ss = new StorageSpec();
        if (rd.unboxIntSlot >= 0)
            ss.can_box += StorageSpec.CAN_BOX_INT;
        if (rd.unboxNumSlot >= 0)
            ss.can_box += StorageSpec.CAN_BOX_NUM;
        if (rd.unboxStrSlot >= 0)
            ss.can_box += StorageSpec.CAN_BOX_STR;
        return ss;
    }
    
    public long hint_for(ThreadContext tc, STable st, SixModelObject classHandle, String name) {
        P6OpaqueREPRData rd = (P6OpaqueREPRData)st.REPRData;
        for (int i = 0; i < rd.classHandles.length; i++) {
            if (rd.classHandles[i] == classHandle) {
                Integer idx = rd.nameToHintMap[i].get(name);
                if (idx != null)
                    return idx;
                else
                    break;
            }
        }
        return STable.NO_HINT;
    }
    
    @SuppressWarnings("unchecked")
    public void deserialize_repr_data(ThreadContext tc, STable st, SerializationReader reader) {
        // Instantiate REPR data.
        P6OpaqueREPRData REPRData = new P6OpaqueREPRData();
        st.REPRData = REPRData;
        
        // Get attribute count.
        int numAttributes = (int)reader.readLong();
        
        // Get list of any flattened in STables.
        STable[] flattenedSTables = new STable[numAttributes];
        for (int i = 0; i < numAttributes; i++)
            if (reader.readLong() != 0)
                flattenedSTables[i] = reader.readSTableRef();
        REPRData.flattenedSTables = flattenedSTables;

        // Read "is multiple inheritance" flag; can go straight into data.
        REPRData.mi = reader.readLong() != 0;
        
        // Read any auto-viv values, if we have them.
        REPRData.autoVivContainers = new SixModelObject[numAttributes];
        if (reader.readLong() != 0) {
            for (int i = 0; i < numAttributes; i++)
                REPRData.autoVivContainers[i] = reader.readRef();
        }
        
        // Read unbox slot locations.
        REPRData.unboxIntSlot = (int)reader.readLong();
        REPRData.unboxNumSlot = (int)reader.readLong();
        REPRData.unboxStrSlot = (int)reader.readLong();
        
        // Read unbox type map.
        if (reader.readLong() != 0) {
            // Don't actually support this yet.
            for (int i = 0; i < numAttributes; i++) {
                reader.readLong();
                reader.readLong();
            }
        }
        
        // Read in the name to index mapping.
        int numClasses = (int)reader.readLong();
        ArrayList<SixModelObject> classHandles = new ArrayList<SixModelObject>();
        ArrayList<HashMap<String, Integer>> nameToHintMaps = new ArrayList<HashMap<String, Integer>>(); 
        for (int i = 0; i < numClasses; i++) {
            SixModelObject classHandle = reader.readRef();
            SixModelObject nameToHintObject = reader.readRef();
            if (nameToHintObject == null) {
                /* Nothing to do. */
            }
            else if (nameToHintObject instanceof VMHashInstance) {
                HashMap<String, Integer> nameToHintMap = new HashMap<String, Integer>();
                HashMap<String, SixModelObject> origMap = ((VMHashInstance)nameToHintObject).storage;
                if (origMap.size() > 0) {
                    for (String key : origMap.keySet())
                        nameToHintMap.put(key, (int)origMap.get(key).get_int(tc));
                    classHandles.add(classHandle);
                    nameToHintMaps.add(nameToHintMap);
                }
            }
            else {
                throw ExceptionHandling.dieInternal(tc, "Unexpected hint map representation in deserialize");
            }
        }
        REPRData.classHandles = classHandles.toArray(new SixModelObject[0]);
        REPRData.nameToHintMap = nameToHintMaps.toArray(new HashMap[0]);
        
        // Read delegate slots.
        REPRData.posDelSlot = (int)reader.readLong();
        REPRData.assDelSlot = (int)reader.readLong();
        
        // Finally, reassemble the Java backing type.
        ArrayList<AttrInfo> attrInfoList = new ArrayList<AttrInfo>();
        for (int i = 0; i < numAttributes; i++) {
            AttrInfo info = new AttrInfo();
            if (flattenedSTables[i] != null)
                info.st = flattenedSTables[i];
            else
                info.st = tc.gc.KnowHOW.st; // Any reference type will do
            info.boxTarget = i == REPRData.unboxIntSlot || i == REPRData.unboxNumSlot ||
                    i == REPRData.unboxStrSlot;
            info.posDelegate = i == REPRData.posDelSlot;
            info.assDelegate = i == REPRData.assDelSlot;
            info.hasAutoVivContainer = REPRData.autoVivContainers[i] != null;
            attrInfoList.add(info);
        }
        if (numAttributes > 0) {
            installJVMType(tc, st, attrInfoList);
        }
        else {
            ((P6OpaqueREPRData)st.REPRData).jvmClass = P6OpaqueBaseInstance.class;
            ((P6OpaqueREPRData)st.REPRData).instance = new P6OpaqueBaseInstance();
            ((P6OpaqueREPRData)st.REPRData).instance.st = st;
        }
    }
    
    public void serialize_repr_data(ThreadContext tc, STable st, SerializationWriter writer) {
        P6OpaqueREPRData REPRData = (P6OpaqueREPRData)st.REPRData;
        
        int numAttrs = REPRData.flattenedSTables.length;
        writer.writeInt(numAttrs);
        
        for (int i = 0; i < numAttrs; i++) {
            if (REPRData.flattenedSTables[i] == null) {
                writer.writeInt(0);
            }
            else {
                writer.writeInt(1);
                writer.writeSTableRef(REPRData.flattenedSTables[i]);
            }
        }
        
        writer.writeInt(REPRData.mi ? 1 : 0);
        
        if (REPRData.autoVivContainers != null) {
            writer.writeInt(1);
            for (int i = 0; i < numAttrs; i++)
               writer.writeRef(REPRData.autoVivContainers[i]);
        }
        else {
            writer.writeInt(0);
        }
        
        writer.writeInt(REPRData.unboxIntSlot);
        writer.writeInt(REPRData.unboxNumSlot);
        writer.writeInt(REPRData.unboxStrSlot);
        
        // TODO: Unbox slots
        writer.writeInt(0);
        
        int numClasses = REPRData.classHandles.length;
        writer.writeInt(numClasses);
        for (int i = 0; i < numClasses; i++) {
            writer.writeRef(REPRData.classHandles[i]);
            writer.writeIntHash(REPRData.nameToHintMap[i]);
        }
        
        writer.writeInt(REPRData.posDelSlot);
        writer.writeInt(REPRData.assDelSlot);
    }

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        P6OpaqueDelegateInstance stub = new P6OpaqueDelegateInstance();
        stub.st = st;
        return stub;
    }

    public void deserialize_finish(ThreadContext tc, STable st,
            SerializationReader reader, SixModelObject stub) {
        // Create instance that we'll deserialize into.
        P6OpaqueBaseInstance obj = (P6OpaqueBaseInstance)((P6OpaqueREPRData)st.REPRData).instance.instClone();

        // Install it as the stub's delegate.
        ((P6OpaqueDelegateInstance)stub).delegate = obj;

        // Now deserialize all the fields.
        obj.deserializeFields(tc, st, reader);
    }
    
    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject origObj) {
        try {
            P6OpaqueBaseInstance obj = (P6OpaqueBaseInstance)origObj;
            if (obj.delegate != null)
                obj = (P6OpaqueBaseInstance)obj.delegate;
            STable[] flattenedSTables = ((P6OpaqueREPRData)obj.st.REPRData).flattenedSTables;
            if (flattenedSTables == null)
                throw ExceptionHandling.dieInternal(tc,
                    "Representation must be composed before it can be serialized");
            for (int i = 0; i < flattenedSTables.length; i++) {
                if (flattenedSTables[i] == null) {
                    writer.writeRef((SixModelObject)obj.getClass().getField("field_" + i).get(obj));
                }
                else {
                    flattenedSTables[i].REPR.serialize_inlined(tc, flattenedSTables[i],
                            writer, "field_" + i, obj);
                }
            }
        }
        catch (IllegalAccessException | NoSuchFieldException e) {
            throw new RuntimeException(e);
        }
    }
}
