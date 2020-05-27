package org.raku.nqp.sixmodel.reprs;

import com.sun.jna.NativeLong;
import com.sun.jna.Native;
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

public class P6int extends REPR {

    /**
     * Possible C types we can handle.
     */
    public final static byte P6INT_C_TYPE_CHAR     =  -1;
    public final static byte P6INT_C_TYPE_SHORT    =  -2;
    public final static byte P6INT_C_TYPE_INT      =  -3;
    public final static byte P6INT_C_TYPE_LONG     =  -4;
    public final static byte P6INT_C_TYPE_LONGLONG =  -5;
    public final static byte P6INT_C_TYPE_SIZE_T   =  -6;
    public final static byte P6INT_C_TYPE_BOOL     =  -7;

    @Override
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;

        StorageSpec ss = new StorageSpec();
        ss.inlineable = StorageSpec.INLINED;
        ss.boxed_primitive = StorageSpec.BP_INT;
        ss.bits = 64;
        ss.can_box = StorageSpec.CAN_BOX_INT;
        st.REPRData = ss;

        return st.WHAT;
    }

    @Override
    public void compose(ThreadContext tc, STable st, SixModelObject repr_info) {
        SixModelObject integerInfo = repr_info.at_key_boxed(tc, "integer");
        if (Ops.isnull(integerInfo) == 0) {
            SixModelObject bits = integerInfo.at_key_boxed(tc, "bits");
            if (Ops.isnull(bits) == 0) {
                short bitwidth = (short)bits.get_int(tc);
                switch (bitwidth) {
                    case P6INT_C_TYPE_CHAR:
                        ((StorageSpec)st.REPRData).bits = Byte.SIZE;
                        break;
                    case P6INT_C_TYPE_SHORT:
                        ((StorageSpec)st.REPRData).bits = Short.SIZE;
                        break;
                    case P6INT_C_TYPE_INT:
                        ((StorageSpec)st.REPRData).bits = Integer.SIZE;
                        break;
                    case P6INT_C_TYPE_LONG:
                        /* NativeLong.SIZE is in bytes, not bits. */
                        ((StorageSpec)st.REPRData).bits = (short)(8 * NativeLong.SIZE);
                        break;
                    case P6INT_C_TYPE_LONGLONG:
                        /* There is no LongLong in Java */
                        ((StorageSpec)st.REPRData).bits = Long.SIZE;
                        break;
                    case P6INT_C_TYPE_SIZE_T:
                        ((StorageSpec)st.REPRData).bits = (short)(8 * Native.SIZE_T_SIZE);
                        break;
                    case P6INT_C_TYPE_BOOL:
                        /* Let's just hope that a bool is 1 byte in size, always. */
                        ((StorageSpec)st.REPRData).bits = Byte.SIZE;
                        break;
                    default:
                        ((StorageSpec)st.REPRData).bits = bitwidth;
                        break;
                }
            }

            SixModelObject unsigned = integerInfo.at_key_boxed(tc, "unsigned");
            if (Ops.isnull(unsigned) == 0)
                ((StorageSpec)st.REPRData).is_unsigned = (short)unsigned.get_int(tc);
        }
    }

    @Override
    public SixModelObject allocate(ThreadContext tc, STable st) {
        P6intInstance obj = new P6intInstance();
        obj.st = st;
        return obj;
    }

    @Override
    public StorageSpec get_storage_spec(ThreadContext tc, STable st) {
        return (StorageSpec)st.REPRData;
    }

    @Override
    public void inlineStorage(ThreadContext tc, STable st, ClassWriter cw, String prefix) {
        cw.visitField(Opcodes.ACC_PUBLIC, prefix, "J", null, null);
    }

    @Override
    public void inlineBind(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitInsn(Opcodes.ICONST_0 + ThreadContext.NATIVE_INT);
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/raku/nqp/runtime/ThreadContext", "native_type", "I");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitFieldInsn(Opcodes.GETFIELD, "org/raku/nqp/runtime/ThreadContext", "native_i", "J");
        mv.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "J");
        mv.visitInsn(Opcodes.RETURN);
    }

    @Override
    public void inlineGet(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitInsn(Opcodes.DUP);
        mv.visitInsn(Opcodes.ICONST_0 + ThreadContext.NATIVE_INT);
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/raku/nqp/runtime/ThreadContext", "native_type", "I");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitFieldInsn(Opcodes.GETFIELD, className, prefix, "J");
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/raku/nqp/runtime/ThreadContext", "native_i", "J");
        mv.visitInsn(Opcodes.RETURN);
    }

    @Override
    public void inlineDeserialize(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitVarInsn(Opcodes.ALOAD, 3);
        mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "org/raku/nqp/sixmodel/SerializationReader", "readLong", "()J");
        mv.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "J");
    }

    @Override
    public void generateBoxingMethods(ThreadContext tc, STable st, ClassWriter cw, String className, String prefix) {
        String getDesc = "(Lorg/raku/nqp/runtime/ThreadContext;)J";
        MethodVisitor getMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "get_int", getDesc, null, null);
        getMeth.visitVarInsn(Opcodes.ALOAD, 0);
        getMeth.visitFieldInsn(Opcodes.GETFIELD, className, prefix, "J");
        getMeth.visitInsn(Opcodes.LRETURN);
        getMeth.visitMaxs(0, 0);

        String setDesc = "(Lorg/raku/nqp/runtime/ThreadContext;J)V";
        MethodVisitor setMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "set_int", setDesc, null, null);
        setMeth.visitVarInsn(Opcodes.ALOAD, 0);
        setMeth.visitVarInsn(Opcodes.LLOAD, 2);
        setMeth.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "J");
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
        P6intInstance obj = new P6intInstance();
        obj.st = st;
        return obj;
    }

    @Override
    public void deserialize_finish(ThreadContext tc, STable st,
                                   SerializationReader reader, SixModelObject obj) {
        ((P6intInstance)obj).value = reader.readLong();
    }

    @Override
    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        writer.writeInt(((P6intInstance)obj).value);
    }

    @Override
    public void serialize_inlined(ThreadContext tc, STable st, SerializationWriter writer,
                                  String prefix, SixModelObject obj) {
        try {
            writer.writeInt((long)obj.getClass().getField(prefix).get(obj));
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
        writer.writeInt(((StorageSpec)st.REPRData).is_unsigned);
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
        ss.boxed_primitive = StorageSpec.BP_INT;
        if (reader.version >= 7)
            ss.bits = (short)reader.readLong();
        else
            ss.bits = 64;
        if (reader.version >= 8)
            ss.is_unsigned = (short)reader.readLong();
        else
            ss.is_unsigned = 0;
        ss.can_box = StorageSpec.CAN_BOX_INT;
        st.REPRData = ss;
    }
}
