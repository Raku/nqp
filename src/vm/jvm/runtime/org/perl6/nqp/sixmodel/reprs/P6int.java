package org.perl6.nqp.sixmodel.reprs;

import com.sun.jna.NativeLong;
import com.sun.jna.Native;
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

public class P6int extends REPR {

    // ------------------------------
    // Possible C types we can handle
    // ------------------------------

    private final static byte P6INT_C_TYPE_CHAR     =  -1;
    private final static byte P6INT_C_TYPE_SHORT    =  -2;
    private final static byte P6INT_C_TYPE_INT      =  -3;
    private final static byte P6INT_C_TYPE_LONG     =  -4;
    private final static byte P6INT_C_TYPE_LONGLONG =  -5;
    private final static byte P6INT_C_TYPE_SIZE_T   =  -6;
    private final static byte P6INT_C_TYPE_BOOL     =  -7;

    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        final STable st = new STable(this, HOW);
        final SixModelObject obj = new TypeObject();

        obj.st = st;
        st.WHAT = obj;

        final StorageSpec storageSpec = new StorageSpec();
        storageSpec.inlineable = StorageSpec.INLINED;
        storageSpec.boxed_primitive = StorageSpec.BP_INT;
        storageSpec.bits = 64;
        storageSpec.can_box = StorageSpec.CAN_BOX_INT;
        st.REPRData = storageSpec;

        return st.WHAT;
    }

    public void compose(ThreadContext tc, STable st, SixModelObject reprInfo) {
        final SixModelObject integerInfo = reprInfo.at_key_boxed(tc, "integer");

        if (integerInfo != null) {
            final SixModelObject bits = integerInfo.at_key_boxed(tc, "bits");
            if (bits != null) {
                final short bitWidth = (short) bits.get_int(tc);

                switch (bitWidth) {
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
                        // NativeLong.SIZE is in bytes, not bits.
                        ((StorageSpec)st.REPRData).bits = (short)(8 * NativeLong.SIZE);
                        break;
                    case P6INT_C_TYPE_LONGLONG:
                        // there is no LongLong in Java
                        ((StorageSpec)st.REPRData).bits = Long.SIZE;
                        break;
                    case P6INT_C_TYPE_SIZE_T:
                        ((StorageSpec)st.REPRData).bits = (short)(8 * Native.SIZE_T_SIZE);
                        break;
                    case P6INT_C_TYPE_BOOL:
                        // let's just hope that a bool is 1 byte in size, always.
                        ((StorageSpec)st.REPRData).bits = Byte.SIZE;
                        break;
                    default:
                        ((StorageSpec)st.REPRData).bits = bitWidth;
                        break;
                }
            }

            final SixModelObject unsigned = integerInfo.at_key_boxed(tc, "unsigned");
            if (unsigned != null) {
                ((StorageSpec) st.REPRData).is_unsigned = (short) unsigned.get_int(tc);
            }
        }
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        final P6intInstance obj = new P6intInstance();

        obj.st = st;

        return obj;
    }

    public StorageSpec get_storage_spec(ThreadContext tc, STable st) {
        return (StorageSpec)st.REPRData;
    }

    public void inlineStorage(ThreadContext tc, STable st, ClassWriter cw, String prefix) {
        cw.visitField(Opcodes.ACC_PUBLIC, prefix, "J", null, null);
    }

    public void inlineBind(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitInsn(Opcodes.ICONST_0 + ThreadContext.NATIVE_INT);
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_type", "I");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitFieldInsn(Opcodes.GETFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_i", "J");
        mv.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "J");
        mv.visitInsn(Opcodes.RETURN);
    }

    public void inlineGet(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitInsn(Opcodes.DUP);
        mv.visitInsn(Opcodes.ICONST_0 + ThreadContext.NATIVE_INT);
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_type", "I");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitFieldInsn(Opcodes.GETFIELD, className, prefix, "J");
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_i", "J");
        mv.visitInsn(Opcodes.RETURN);
    }

    public void inlineDeserialize(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitVarInsn(Opcodes.ALOAD, 3);
        mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "org/perl6/nqp/sixmodel/SerializationReader", "readLong", "()J");
        mv.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "J");
    }

    public void generateBoxingMethods(ThreadContext tc, STable st, ClassWriter cw, String className, String prefix) {
        final String getDesc = "(Lorg/perl6/nqp/runtime/ThreadContext;)J";
        final MethodVisitor getMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "get_int", getDesc, null, null);
        getMeth.visitVarInsn(Opcodes.ALOAD, 0);
        getMeth.visitFieldInsn(Opcodes.GETFIELD, className, prefix, "J");
        getMeth.visitInsn(Opcodes.LRETURN);
        getMeth.visitMaxs(0, 0);

        final String setDesc = "(Lorg/perl6/nqp/runtime/ThreadContext;J)V";
        final MethodVisitor setMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "set_int", setDesc, null, null);
        setMeth.visitVarInsn(Opcodes.ALOAD, 0);
        setMeth.visitVarInsn(Opcodes.LLOAD, 2);
        setMeth.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "J");
        setMeth.visitInsn(Opcodes.RETURN);
        setMeth.visitMaxs(0, 0);
    }

    // We don't depend on any details of the STable, so no description is needed

    @Override
    public boolean inline_description(ThreadContext tc, STable st, StringBuilder out) {
        return true;
    }

    @Override
    public boolean box_description(ThreadContext tc, STable st, StringBuilder out) {
        return true;
    }

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        final P6intInstance obj = new P6intInstance();

        obj.st = st;

        return obj;
    }

    public void deserialize_finish(
        ThreadContext tc,
        STable st,
        SerializationReader reader,
        SixModelObject obj
    ) {
        ((P6intInstance)obj).value = reader.readLong();
    }

    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        writer.writeInt(((P6intInstance)obj).value);
    }

    public void serialize_inlined(
        ThreadContext tc,
        STable st,
        SerializationWriter writer,
        String prefix,
        SixModelObject obj
    ) {
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
    public void serialize_repr_data(ThreadContext tc, STable st, SerializationWriter writer) {
        writer.writeInt(((StorageSpec)st.REPRData).bits);
        writer.writeInt(((StorageSpec)st.REPRData).is_unsigned);
    }

    /**
     * REPR data deserialization. Deserializes the per-type representation data and
     * attaches it to the supplied STable.
     */
    public void deserialize_repr_data(ThreadContext tc, STable st, SerializationReader reader) {
        final StorageSpec storageSpec = new StorageSpec();

        storageSpec.inlineable = StorageSpec.INLINED;
        storageSpec.boxed_primitive = StorageSpec.BP_INT;
        storageSpec.bits = (reader.version >= 7) ? (short) reader.readLong() : 64;
        storageSpec.is_unsigned = (reader.version >= 8) ? (short)reader.readLong() : 0;
        storageSpec.can_box = StorageSpec.CAN_BOX_INT;

        st.REPRData = storageSpec;
    }
}
