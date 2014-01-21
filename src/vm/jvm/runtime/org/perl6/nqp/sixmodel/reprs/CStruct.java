package org.perl6.nqp.sixmodel.reprs;

import java.util.List;
import java.util.ArrayList;

import com.sun.jna.Structure;

import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.FieldVisitor;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.Type;

import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.sixmodel.TypeObject;

import org.perl6.nqp.sixmodel.reprs.CStructREPRData.AttrInfo;
import org.perl6.nqp.sixmodel.reprs.NativeCall.ArgType;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class CStruct extends REPR {
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
    }

    public void compose(ThreadContext tc, STable st, SixModelObject repr_info_hash) {
        SixModelObject repr_info = repr_info_hash.at_key_boxed(tc, "attribute");
        CStructREPRData repr_data = new CStructREPRData();

        long mroLength = repr_info.elems(tc);
        List<AttrInfo> attrInfos = new ArrayList<AttrInfo>();
        for (long i = mroLength - 1; i >= 0; i--) {
            SixModelObject entry = repr_info.at_pos_boxed(tc, i);
            SixModelObject attrs = entry.at_pos_boxed(tc, 1);
            long parents = entry.at_pos_boxed(tc, 2).elems(tc);

            if (parents <= 1) {
                long numAttrs = attrs.elems(tc);
                for (long j = 0; j < numAttrs; j++) {
                    SixModelObject attrHash = attrs.at_pos_boxed(tc, j);
                    AttrInfo info = new AttrInfo();
                    info.name = attrHash.at_key_boxed(tc, "name").get_str(tc);
                    info.type = attrHash.at_key_boxed(tc, "type");
                    StorageSpec spec = info.type.st.REPR.get_storage_spec(tc, info.type.st);
                    info.bits = spec.bits;
                    repr_data.fieldTypes.put(info.name, info);

                    if (info.type == null) {
                        ExceptionHandling.dieInternal(tc, "CStruct representation requires the types of all attributes to be specified");
                    }

                    attrInfos.add(info);
                }
            }
            else {
                ExceptionHandling.dieInternal(tc, "CStruct representation does not support multiple inheritance");
            }
        }

        /* XXX: We could generate the structure class lazily the first time we
         * allocate an object, rather than upfront. Not sure if that's
         * necessary though. */
        st.REPRData = repr_data;
        generateStructClass(tc, st, attrInfos);
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        /* TODO: Die if someone tries to allocate a CStruct before it's been
         * composed. */
        CStructInstance obj = new CStructInstance();
        CStructREPRData repr_data = (CStructREPRData) st.REPRData;
        obj.st = st;
        try {
            obj.storage = (Structure) repr_data.structureClass.newInstance();
        }
        catch (InstantiationException | IllegalAccessException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return obj;
    }

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        /* This REPR can't be serialized. */
        ExceptionHandling.dieInternal(tc, "Can't deserialize_stub a CStruct object.");

        return null;
    }

    public void deserialize_finish(ThreadContext tc, STable st, SerializationReader reader, SixModelObject obj) {
        ExceptionHandling.dieInternal(tc, "Can't deserialize_finish a CStruct object.");
    }

    private static long typeId = 0;
    private void generateStructClass(ThreadContext tc, STable st, List<AttrInfo> fields) {
        CStructREPRData reprData = (CStructREPRData) st.REPRData;
        ClassWriter cw = new ClassWriter(ClassWriter.COMPUTE_MAXS | ClassWriter.COMPUTE_FRAMES);
        String className = "__CStruct__" + typeId++;

        int attributes = fields.size();

        // public $className extends com.sun.jna.Structure { ... }
        cw.visit(Opcodes.V1_7, Opcodes.ACC_PUBLIC | Opcodes.ACC_SUPER, className, null,
                "com/sun/jna/Structure", null);

        //     private static List<String> fieldOrder;
        FieldVisitor fv = cw.visitField(Opcodes.ACC_PRIVATE | Opcodes.ACC_STATIC, "fieldOrder", "Ljava/util/List;",
                "Ljava.util.List<Ljava.lang.String;>;", null);
        fv.visitEnd();

        for (AttrInfo info: fields) {
            fv = cw.visitField(Opcodes.ACC_PUBLIC, info.name, typeDescriptor(tc, info), null, null);
            fv.visitEnd();
        }

        //     static { fieldOrder = new ArrayList(); fieldOrder.add(field1); ... }
        MethodVisitor staticVisitor = cw.visitMethod(Opcodes.ACC_STATIC, "<clinit>", "()V", null, null);
        staticVisitor.visitCode();
        staticVisitor.visitTypeInsn(Opcodes.NEW, "java/util/ArrayList"); // Construct new object.
        staticVisitor.visitInsn(Opcodes.DUP);
        staticVisitor.visitMethodInsn(Opcodes.INVOKESPECIAL, "java/util/ArrayList", "<init>", "()V"); // Invoke the constructor.
        staticVisitor.visitFieldInsn(Opcodes.PUTSTATIC, className, "fieldOrder", "Ljava/util/List;");

        for (int i = 0; i < attributes; i++) {
            staticVisitor.visitFieldInsn(Opcodes.GETSTATIC, className, "fieldOrder", "Ljava/util/List;");
            staticVisitor.visitLdcInsn(fields.get(i).name);
            staticVisitor.visitMethodInsn(Opcodes.INVOKEINTERFACE, "java/util/List", "add", "(Ljava/lang/Object;)Z");
            staticVisitor.visitInsn(Opcodes.POP);
        }

        staticVisitor.visitInsn(Opcodes.RETURN);
        staticVisitor.visitMaxs(2, 0);
        staticVisitor.visitEnd();

        // public List<String> getFieldOrder() { return fieldOrder; }
        MethodVisitor gfoVisitor = cw.visitMethod(Opcodes.ACC_PUBLIC, "getFieldOrder", "()Ljava/util/List;", "()Ljava/util/List<Ljava/lang/String;>;", null);
        gfoVisitor.visitCode();
        gfoVisitor.visitFieldInsn(Opcodes.GETSTATIC, className, "fieldOrder", "Ljava/util/List;");
        gfoVisitor.visitInsn(Opcodes.ARETURN);
        gfoVisitor.visitMaxs(1, 1);
        gfoVisitor.visitEnd();

        // Add nullary constructor calling superclass.
        MethodVisitor constructor = cw.visitMethod(Opcodes.ACC_PUBLIC, "<init>", "()V", null, null);
        constructor.visitCode();
        constructor.visitVarInsn(Opcodes.ALOAD, 0);
        constructor.visitMethodInsn(Opcodes.INVOKESPECIAL, 
                "com/sun/jna/Structure", "<init>", "()V");
        constructor.visitInsn(Opcodes.RETURN);
        constructor.visitMaxs(1, 1);
        constructor.visitEnd();

        cw.visitEnd();
        byte[] compiled = cw.toByteArray();
        reprData.structureClass = tc.gc.byteClassLoader.defineClass(className, compiled);
    }

    private String typeDescriptor(ThreadContext tc, AttrInfo info) {
        REPR repr = info.type.st.REPR;
        StorageSpec spec = repr.get_storage_spec(tc, info.type.st);
        info.bits = spec.bits;
        if (spec.inlineable == StorageSpec.INLINED && spec.boxed_primitive == StorageSpec.BP_INT) {
            if (spec.bits == 8) {
                info.argType = ArgType.CHAR;
                return "B";
            }
            else if (spec.bits == 16) {
                info.argType = ArgType.SHORT;
                return "S";
            }
            else if (spec.bits == 32) {
                info.argType = ArgType.INT;
                return "I";
            }
            else if (spec.bits == 64) {
                info.argType = ArgType.LONG;
                return "J";
            }
            else {
                ExceptionHandling.dieInternal(tc, "CStruct representation only handles 8, 16, 32 and 64 bit ints");
                return null;
            }
        }
        else if (spec.inlineable == StorageSpec.INLINED && spec.boxed_primitive == StorageSpec.BP_NUM) {
            if (spec.bits == 32) {
                info.argType = ArgType.FLOAT;
                return "F";
            }
            else if (spec.bits == 64) {
                info.argType = ArgType.DOUBLE;
                return "D";
            }
            else {
                ExceptionHandling.dieInternal(tc, "CStruct representation only handles 32 and 64 bit nums");
                return null;
            }
        }
        else if ((spec.can_box & StorageSpec.CAN_BOX_STR) != 0) {
            info.argType = ArgType.UTF8STR;
            return "Ljava/lang/String;";
        }
        else if (repr instanceof CArray) {
            info.argType = ArgType.CARRAY;
            return "Lcom/sun/jna/Pointer;";
        }
        else if (repr instanceof CPointer) {
            info.argType = ArgType.CPOINTER;
            return "Lcom/sun/jna/Pointer;";
        }
        else if (repr instanceof CStruct) {
            info.argType = ArgType.CSTRUCT;
            return Type.getDescriptor(((CStructREPRData) info.type.st.REPRData).structureClass);
        }
        else {
            ExceptionHandling.dieInternal(tc, "CStruct representation only handles int, num, CArray, CPointer and CStruct");
            return null;
        }
    }
}
