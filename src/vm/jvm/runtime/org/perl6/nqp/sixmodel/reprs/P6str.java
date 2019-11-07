package org.perl6.nqp.sixmodel.reprs;

import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SerializationWriter;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.sixmodel.TypeObject;

public class P6str extends REPR {
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;

        P6strREPRData rd = new P6strREPRData();
        rd.type = REPR.P6STR_C_TYPE_CHAR;
        st.REPRData = rd;

        return st.WHAT;
    }

    public void compose(ThreadContext tc, STable st, SixModelObject repr_info) {
        P6strREPRData  rd         = (P6strREPRData) st.REPRData;
        SixModelObject stringInfo = repr_info.at_key_boxed(tc, "string");

        if (stringInfo != null) {
            SixModelObject nativetype = stringInfo.at_key_boxed(tc, "nativetype");
            if (nativetype != null)
                rd.type = (byte) nativetype.get_int(tc);
            else
                rd.type = REPR.P6STR_C_TYPE_CHAR;
        }
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        P6strInstance obj = new P6strInstance();
        obj.st    = st;
        obj.value = "";
        return obj;
    }

    public StorageSpec get_storage_spec(ThreadContext tc, STable st) {
        StorageSpec ss = new StorageSpec();
        ss.inlineable = StorageSpec.INLINED;
        ss.boxed_primitive = StorageSpec.BP_STR;
        ss.can_box = StorageSpec.CAN_BOX_STR;
        return ss;
    }

    public void inlineStorage(ThreadContext tc, STable st, ClassWriter cw, String prefix) {
        cw.visitField(Opcodes.ACC_PUBLIC, prefix, "Ljava/lang/String;", null, null);
    }

    public void inlineBind(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitInsn(Opcodes.ICONST_0 + ThreadContext.NATIVE_STR);
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_type", "I");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitFieldInsn(Opcodes.GETFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_s", "Ljava/lang/String;");
        mv.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "Ljava/lang/String;");
        mv.visitInsn(Opcodes.RETURN);
    }

    public void inlineGet(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitInsn(Opcodes.DUP);
        mv.visitInsn(Opcodes.ICONST_0 + ThreadContext.NATIVE_STR);
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_type", "I");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitFieldInsn(Opcodes.GETFIELD, className, prefix, "Ljava/lang/String;");
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_s", "Ljava/lang/String;");
        mv.visitInsn(Opcodes.RETURN);
    }

    public void inlineDeserialize(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitVarInsn(Opcodes.ALOAD, 3);
        mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "org/perl6/nqp/sixmodel/SerializationReader", "readStr", "()Ljava/lang/String;");
        mv.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "Ljava/lang/String;");
    }

    public void generateBoxingMethods(ThreadContext tc, STable st, ClassWriter cw, String className, String prefix) {
        MethodVisitor getMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "get_str",
                "(Lorg/perl6/nqp/runtime/ThreadContext;)Ljava/lang/String;", null, null);
        getMeth.visitVarInsn(Opcodes.ALOAD, 0);
        getMeth.visitFieldInsn(Opcodes.GETFIELD, className, prefix, "Ljava/lang/String;");
        getMeth.visitInsn(Opcodes.ARETURN);
        getMeth.visitMaxs(0, 0);

        MethodVisitor setMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "set_str",
                "(Lorg/perl6/nqp/runtime/ThreadContext;Ljava/lang/String;)V", null, null);
        setMeth.visitVarInsn(Opcodes.ALOAD, 0);
        setMeth.visitVarInsn(Opcodes.ALOAD, 2);
        setMeth.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "Ljava/lang/String;");
        setMeth.visitInsn(Opcodes.RETURN);
        setMeth.visitMaxs(0, 0);
    }

    // We don't depend on any details of the STable, so no description is needed
    @Override public boolean inline_description(ThreadContext tc, STable st, StringBuilder out) {
        return true;
    }
    @Override public boolean box_description(ThreadContext tc, STable st, StringBuilder out) {
        return true;
    }

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        P6strInstance obj = new P6strInstance();
        obj.st = st;
        return obj;
    }

    public void deserialize_finish(ThreadContext tc, STable st,
            SerializationReader reader, SixModelObject obj) {
        ((P6strInstance)obj).value = reader.readStr();
    }

    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        writer.writeStr(((P6strInstance)obj).value);
    }

    public void serialize_inlined(ThreadContext tc, STable st, SerializationWriter writer,
            String prefix, SixModelObject obj) {
        try {
            writer.writeStr((String)obj.getClass().getField(prefix).get(obj));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * REPR data serialization. Serializes the per-type representation data that
     * is attached to the supplied STable.
     */
    public void serialize_repr_data(ThreadContext tc, STable st, SerializationWriter writer) {
        P6strREPRData rd = (P6strREPRData) st.REPRData;
        writer.writeInt(rd.type);
    }

    /**
     * REPR data deserialization. Deserializes the per-type representation data and
     * attaches it to the supplied STable.
     */
    public void deserialize_repr_data(ThreadContext tc, STable st, SerializationReader reader) {
        P6strREPRData rd = new P6strREPRData();

        if (reader.version >= 12)
            rd.type = (byte) reader.readLong();
        else
            rd.type = REPR.P6STR_C_TYPE_CHAR;

        st.REPRData = rd;
    }
}
