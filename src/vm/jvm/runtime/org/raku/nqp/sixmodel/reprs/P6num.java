package org.raku.nqp.sixmodel.reprs;

import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.raku.nqp.runtime.Ops;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.REPR;
import org.raku.nqp.sixmodel.STable;
import org.raku.nqp.sixmodel.SerializationReader;
import org.raku.nqp.sixmodel.SerializationWriter;
import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.sixmodel.StorageSpec;
import org.raku.nqp.sixmodel.TypeObject;

public class P6num extends REPR {
    /**
     * Possible C types we can handle.
     */
    public final static byte P6NUM_C_TYPE_FLOAT      =  -1;
    public final static byte P6NUM_C_TYPE_DOUBLE     =  -2;
    public final static byte P6NUM_C_TYPE_LONGDOUBLE =  -3;

    @Override
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;

        StorageSpec ss = new StorageSpec();
        ss.inlineable = StorageSpec.INLINED;
        ss.boxed_primitive = StorageSpec.BP_NUM;
        ss.bits = 64;
        ss.can_box = StorageSpec.CAN_BOX_NUM;
        st.REPRData = ss;

        return st.WHAT;
    }

    @Override
    public void compose(ThreadContext tc, STable st, SixModelObject repr_info) {
        SixModelObject floatInfo = repr_info.at_key_boxed(tc, "float");
        if (Ops.isnull(floatInfo) == 0) {
            SixModelObject bits = floatInfo.at_key_boxed(tc, "bits");
            if (Ops.isnull(bits) == 0) {
                short bitwidth = (short)bits.get_int(tc);
                switch (bitwidth) {
                    case P6NUM_C_TYPE_FLOAT:
                        ((StorageSpec)st.REPRData).bits = Float.SIZE;
                        break;
                    case P6NUM_C_TYPE_DOUBLE:
                        ((StorageSpec)st.REPRData).bits = Double.SIZE;
                        break;
                    case P6NUM_C_TYPE_LONGDOUBLE:
                        /* There is no LongDouble in Java */
                        ((StorageSpec)st.REPRData).bits = Double.SIZE;
                        break;
                    default:
                        ((StorageSpec)st.REPRData).bits = bitwidth;
                        break;
                }
            }
        }
    }

    @Override
    public SixModelObject allocate(ThreadContext tc, STable st) {
        P6numInstance obj = new P6numInstance();
        obj.st = st;
        obj.value = Double.NaN;
        return obj;
    }

    @Override
    public StorageSpec get_storage_spec(ThreadContext tc, STable st) {
        return (StorageSpec)st.REPRData;
    }

    @Override
    public void inlineStorage(ThreadContext tc, STable st, ClassWriter cw, String prefix) {
        cw.visitField(Opcodes.ACC_PUBLIC, prefix, "D", null, null);
    }

    @Override
    public void inlineBind(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitInsn(Opcodes.ICONST_0 + ThreadContext.NATIVE_NUM);
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/raku/nqp/runtime/ThreadContext", "native_type", "I");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitFieldInsn(Opcodes.GETFIELD, "org/raku/nqp/runtime/ThreadContext", "native_n", "D");
        mv.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "D");
        mv.visitInsn(Opcodes.RETURN);
    }

    @Override
    public void inlineGet(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitInsn(Opcodes.DUP);
        mv.visitInsn(Opcodes.ICONST_0 + ThreadContext.NATIVE_NUM);
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/raku/nqp/runtime/ThreadContext", "native_type", "I");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitFieldInsn(Opcodes.GETFIELD, className, prefix, "D");
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/raku/nqp/runtime/ThreadContext", "native_n", "D");
        mv.visitInsn(Opcodes.RETURN);
    }

    @Override
    public void inlineDeserialize(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitVarInsn(Opcodes.ALOAD, 3);
        mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "org/raku/nqp/sixmodel/SerializationReader", "readDouble", "()D");
        mv.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "D");
    }

    @Override
    public void generateBoxingMethods(ThreadContext tc, STable st, ClassWriter cw, String className, String prefix) {
        MethodVisitor getMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "get_num",
                "(Lorg/raku/nqp/runtime/ThreadContext;)D", null, null);
        getMeth.visitVarInsn(Opcodes.ALOAD, 0);
        getMeth.visitFieldInsn(Opcodes.GETFIELD, className, prefix, "D");
        getMeth.visitInsn(Opcodes.DRETURN);
        getMeth.visitMaxs(0, 0);

        MethodVisitor setMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "set_num",
                "(Lorg/raku/nqp/runtime/ThreadContext;D)V", null, null);
        setMeth.visitVarInsn(Opcodes.ALOAD, 0);
        setMeth.visitVarInsn(Opcodes.DLOAD, 2);
        setMeth.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "D");
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

    @Override
    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        P6numInstance obj = new P6numInstance();
        obj.st = st;
        return obj;
    }

    @Override
    public void deserialize_finish(ThreadContext tc, STable st,
                                   SerializationReader reader, SixModelObject obj) {
        ((P6numInstance)obj).value = reader.readDouble();
    }

    @Override
    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        writer.writeNum(((P6numInstance)obj).value);
    }

    @Override
    public void serialize_inlined(ThreadContext tc, STable st, SerializationWriter writer,
                                  String prefix, SixModelObject obj) {
        try {
            writer.writeNum((double)obj.getClass().getField(prefix).get(obj));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * REPR data serialization. Serializes the per-type representation data that
     * is attached to the supplied STable.
     */
    @Override
    public void serialize_repr_data(ThreadContext tc, STable st, SerializationWriter writer)
    {
        writer.writeInt(((StorageSpec)st.REPRData).bits);
    }

    /**
     * REPR data deserialization. Deserializes the per-type representation data and
     * attaches it to the supplied STable.
     */
    @Override
    public void deserialize_repr_data(ThreadContext tc, STable st, SerializationReader reader)
    {
        StorageSpec ss = new StorageSpec();
        ss.inlineable = StorageSpec.INLINED;
        ss.boxed_primitive = StorageSpec.BP_NUM;
        if (reader.version >= 7)
            ss.bits = (short)reader.readLong();
        else
            ss.bits = 64;
        ss.can_box = StorageSpec.CAN_BOX_NUM;
        st.REPRData = ss;
    }
}
