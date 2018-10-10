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
import org.perl6.nqp.sixmodel.reprs.CPPStructREPRData.AttrInfo;
import org.perl6.nqp.sixmodel.reprs.NativeCall.ArgType;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class CPPStruct extends REPR {
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        final STable st = new STable(this, HOW);
        final SixModelObject obj = new TypeObject();

        obj.st = st;
        st.WHAT = obj;

        return st.WHAT;
    }

    public void compose(ThreadContext tc, STable st, SixModelObject REPRInfoHash) {
        final SixModelObject REPRInfo = REPRInfoHash.at_key_boxed(tc, "attribute");
        final CPPStructREPRData REPRData = new CPPStructREPRData();

        final long mroLength = REPRInfo.elems(tc);
        final List<AttrInfo> attrInfos = new ArrayList<>();

        for (long i = mroLength - 1; i >= 0; i--) {
            final SixModelObject entry = REPRInfo.at_pos_boxed(tc, i);
            final SixModelObject attrs = entry.at_pos_boxed(tc, 1);
            final long parents = entry.at_pos_boxed(tc, 2).elems(tc);

            if (parents <= 1) {
                final long numAttrs = attrs.elems(tc);

                for (long j = 0; j < numAttrs; j++) {
                    final SixModelObject attrHash = attrs.at_pos_boxed(tc, j);
                    final AttrInfo info = new AttrInfo();
                    info.name = attrHash.at_key_boxed(tc, "name").get_str(tc);
                    info.type = attrHash.at_key_boxed(tc, "type");
                    info.inlined = (short)attrHash.at_key_boxed(tc, "inlined").get_int(tc);

                    final StorageSpec spec= info.type.st.REPR.get_storage_spec(tc, info.type.st);
                    info.bits = spec.bits;

                    REPRData.fieldTypes.put(info.name, info);

                    if (info.type == null) {
                        ExceptionHandling.dieInternal(tc, "CPPStruct representation requires the types of all attributes to be specified");
                    }

                    attrInfos.add(info);
                }
            } else {
                ExceptionHandling.dieInternal(tc, "CPPStruct representation does not support multiple inheritance");
            }
        }

        // TODO
        // We could generate the structure class lazily
        // the first time we allocate an object, rather than upfront.
        // Not sure if that's necessary though.
        st.REPRData = REPRData;
        generateStructClass(tc, st, attrInfos);
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        // TODO die if someone tries to allocate a CPPStruct before it's been composed

        final CPPStructInstance obj = new CPPStructInstance();
        obj.st = st;

        try {
            final CPPStructREPRData REPRData = (CPPStructREPRData) st.REPRData;
            obj.storage = (Structure) REPRData.structureClass.newInstance();
        } catch (InstantiationException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }

        return obj;
    }

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        ExceptionHandling.dieInternal(tc, "Can't deserialize_stub a CPPStruct object.");

        return null;
    }

    public void deserialize_finish(ThreadContext tc, STable st, SerializationReader reader, SixModelObject obj) {
        ExceptionHandling.dieInternal(tc, "Can't deserialize_finish a CPPStruct object.");
    }

    private static long typeId = 0;

    private void generateStructClass(ThreadContext tc, STable st, List<AttrInfo> fields) {
        final CPPStructREPRData reprData = (CPPStructREPRData) st.REPRData;
        final ClassWriter cw = new ClassWriter(ClassWriter.COMPUTE_MAXS | ClassWriter.COMPUTE_FRAMES);
        final String className = "__CPPStruct__" + typeId++;

        // public $className extends com.sun.jna.Structure implements com.sun.jna.Structure.ByReference { ... }
        cw.visit(Opcodes.V1_7, Opcodes.ACC_PUBLIC | Opcodes.ACC_SUPER, className, null, "com/sun/jna/Structure", null);

        //     private static List<String> fieldOrder;
        final FieldVisitor fv0 = cw.visitField(
            Opcodes.ACC_PRIVATE | Opcodes.ACC_STATIC,
            "fieldOrder",
            "Ljava/util/List;",
            "Ljava.util.List<Ljava.lang.String;>;",
            null);
        fv0.visitEnd();

        for (AttrInfo info: fields) {
            final String type = typeDescriptor(tc, info);
            // indirect referenced structs need to be handled as pointers here,
            // since the default of structs and unions is to inline.
            final FieldVisitor fv;

            if (info.inlined == 0 && (info.argType == ArgType.CSTRUCT || info.argType == ArgType.CPPSTRUCT || info.argType == ArgType.CUNION)) {
                fv = cw.visitField(Opcodes.ACC_PUBLIC, info.name, "Lcom/sun/jna/Pointer;", null, null);
            } else {
                fv = cw.visitField(Opcodes.ACC_PUBLIC, info.name, type, null, null);
            }

            fv.visitEnd();
        }

        //     static { fieldOrder = new ArrayList(); fieldOrder.add(field1); ... }
        final MethodVisitor staticVisitor = cw.visitMethod(Opcodes.ACC_STATIC, "<clinit>", "()V", null, null);
        staticVisitor.visitCode();
        staticVisitor.visitTypeInsn(Opcodes.NEW, "java/util/ArrayList"); // Construct new object.
        staticVisitor.visitInsn(Opcodes.DUP);
        staticVisitor.visitMethodInsn(Opcodes.INVOKESPECIAL, "java/util/ArrayList", "<init>", "()V"); // Invoke the constructor.
        staticVisitor.visitFieldInsn(Opcodes.PUTSTATIC, className, "fieldOrder", "Ljava/util/List;");

        for (AttrInfo attrInfo : fields) {
            staticVisitor.visitFieldInsn(Opcodes.GETSTATIC, className, "fieldOrder", "Ljava/util/List;");
            staticVisitor.visitLdcInsn(attrInfo.name);
            staticVisitor.visitMethodInsn(Opcodes.INVOKEINTERFACE, "java/util/List", "add", "(Ljava/lang/Object;)Z");
            staticVisitor.visitInsn(Opcodes.POP);
        }

        staticVisitor.visitInsn(Opcodes.RETURN);
        staticVisitor.visitMaxs(2, 0);
        staticVisitor.visitEnd();

        // public List<String> getFieldOrder() { return fieldOrder; }
        final MethodVisitor gfoVisitor = cw.visitMethod(Opcodes.ACC_PUBLIC, "getFieldOrder", "()Ljava/util/List;", "()Ljava/util/List<Ljava/lang/String;>;", null);
        gfoVisitor.visitCode();
        gfoVisitor.visitFieldInsn(Opcodes.GETSTATIC, className, "fieldOrder", "Ljava/util/List;");
        gfoVisitor.visitInsn(Opcodes.ARETURN);
        gfoVisitor.visitMaxs(1, 1);
        gfoVisitor.visitEnd();

        // Add nullary constructor calling superclass.
        final MethodVisitor constructor = cw.visitMethod(Opcodes.ACC_PUBLIC, "<init>", "()V", null, null);
        constructor.visitCode();
        constructor.visitVarInsn(Opcodes.ALOAD, 0);
        constructor.visitMethodInsn(Opcodes.INVOKESPECIAL, "com/sun/jna/Structure", "<init>", "()V");
        constructor.visitInsn(Opcodes.RETURN);
        constructor.visitMaxs(1, 1);
        constructor.visitEnd();

        cw.visitEnd();

        final byte[] compiled = cw.toByteArray();
        reprData.structureClass = tc.gc.byteClassLoader.defineClass(className, compiled);
    }

    private String typeDescriptor(ThreadContext tc, AttrInfo info) {
        final REPR repr = info.type.st.REPR;
        final StorageSpec spec = repr.get_storage_spec(tc, info.type.st);

        info.bits = spec.bits;

        if (spec.inlineable == StorageSpec.INLINED && spec.boxed_primitive == StorageSpec.BP_INT) {
            if (spec.bits == 8) {
                info.argType = ArgType.CHAR;
                return "B";
            } else if (spec.bits == 16) {
                info.argType = ArgType.SHORT;
                return "S";
            } else if (spec.bits == 32) {
                info.argType = ArgType.INT;
                return "I";
            } else if (spec.bits == 64) {
                info.argType = ArgType.LONG;
                return "J";
            } else {
                ExceptionHandling.dieInternal(tc, "CPPStruct representation only handles 8, 16, 32 and 64 bit ints");
                return null;
            }
        } else if (spec.inlineable == StorageSpec.INLINED && spec.boxed_primitive == StorageSpec.BP_NUM) {
            if (spec.bits == 32) {
                info.argType = ArgType.FLOAT;
                return "F";
            } else if (spec.bits == 64) {
                info.argType = ArgType.DOUBLE;
                return "D";
            } else {
                ExceptionHandling.dieInternal(tc, "CPPStruct representation only handles 32 and 64 bit nums");
                return null;
            }
        } else if ((spec.can_box & StorageSpec.CAN_BOX_STR) != 0) {
            info.argType = ArgType.UTF8STR;
            return "Ljava/lang/String;";
        } else if (repr instanceof CArray) {
            info.argType = ArgType.CARRAY;
            return "Lcom/sun/jna/Pointer;";
        } else if (repr instanceof CPointer) {
            info.argType = ArgType.CPOINTER;
            return "Lcom/sun/jna/Pointer;";
        } else if (repr instanceof CUnion) {
            info.argType = ArgType.CUNION;
            return Type.getDescriptor(((CUnionREPRData) info.type.st.REPRData).structureClass);
        } else if (repr instanceof CStruct) {
            info.argType = ArgType.CSTRUCT;
            return Type.getDescriptor(((CStructREPRData) info.type.st.REPRData).structureClass);
        } else if (repr instanceof CPPStruct) {
            info.argType = ArgType.CPPSTRUCT;

            final Class c = ((CPPStructREPRData) info.type.st.REPRData).structureClass;

            // when we hit a struct in an attribute that is not composed yet,
            // we most likely have hit a struct of our own kind.
            if (c == null) {
                return "L__CPPStruct__" + typeId + ";";
            }

            return Type.getDescriptor(c);
        } else {
            ExceptionHandling.dieInternal(tc, "CPPStruct representation only handles int, num, CArray, CPointer, CStruct, CPPStruct and CUnion");
            return null;
        }
    }
}
