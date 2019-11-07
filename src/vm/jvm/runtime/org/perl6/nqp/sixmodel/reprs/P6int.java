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
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);

        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;

        StorageSpec ss = new StorageSpec();
        ss.inlineable      = StorageSpec.INLINED;
        ss.boxed_primitive = StorageSpec.BP_INT;
        ss.bits            = Long.SIZE;
        ss.is_unsigned     = 0;
        ss.can_box         = StorageSpec.CAN_BOX_INT;

        P6intREPRData rd = new P6intREPRData();
        rd.type        = REPR.P6INT_C_TYPE_LONGLONG;
        rd.bits        = Long.SIZE;
        rd.is_unsigned = 0;
        rd.ss          = ss;
        st.REPRData = rd;

        return st.WHAT;
    }

    public void compose(ThreadContext tc, STable st, SixModelObject repr_info) {
        P6intREPRData  rd          = (P6intREPRData) st.REPRData;
        SixModelObject integerInfo = repr_info.at_key_boxed(tc, "integer");

        if (integerInfo != null) {
            SixModelObject nativetype = integerInfo.at_key_boxed(tc, "nativetype");
            SixModelObject bits       = integerInfo.at_key_boxed(tc, "bits");
            SixModelObject unsigned   = integerInfo.at_key_boxed(tc, "unsigned");
            if (nativetype != null) {
                rd.type = (byte) nativetype.get_int(tc);
                if (bits != null) {
                    rd.bits = (short) bits.get_int(tc);
                }
                else {
                    switch (rd.type) {
                        case REPR.P6INT_C_TYPE_CHAR:
                            rd.bits = Byte.SIZE;
                            break;
                        case REPR.P6INT_C_TYPE_SHORT:
                            rd.bits = Short.SIZE;
                            break;
                        case REPR.P6INT_C_TYPE_INT:
                            rd.bits = Integer.SIZE;
                            break;
                        case REPR.P6INT_C_TYPE_LONG:
                            /* NativeLong.SIZE is in bytes, not bits. */
                            rd.bits = (short)(8 * NativeLong.SIZE);
                            break;
                        case REPR.P6INT_C_TYPE_LONGLONG:
                            /* There is no LongLong in Java. */
                            rd.bits = Long.SIZE;
                            break;
                        case REPR.P6INT_C_TYPE_BOOL:
                            /* Let's just hope that a bool is 1 byte in size, always. */
                            rd.bits = Byte.SIZE;
                            break;
                        case REPR.P6INT_C_TYPE_SIZE_T:
                            rd.bits = (short)(8 * Native.SIZE_T_SIZE);
                            break;
                        case REPR.P6INT_C_TYPE_WCHAR_T:
                            rd.bits = (short)(8 * Native.WCHAR_SIZE);
                            break;
                        case REPR.P6INT_C_TYPE_WINT_T:
                            /* wint_t is an int... maybe? We can't possibly
                             * know without using JNI, but it is an int
                             * (usually) on Linux so let's go with that. */
                            rd.bits = Integer.SIZE;
                            break;
                        case REPR.P6INT_C_TYPE_CHAR16_T:
                            rd.bits = Short.SIZE;
                            break;
                        case REPR.P6INT_C_TYPE_CHAR32_T:
                            rd.bits = Integer.SIZE;
                            break;
                    }
                }
            }
            else if (bits != null) {
                rd.bits = (short) bits.get_int(tc);
                switch (rd.bits) {
                    case 8:
                        rd.type = REPR.P6INT_C_TYPE_CHAR;
                        break;
                    case 16:
                        rd.type = REPR.P6INT_C_TYPE_SHORT;
                        break;
                    case 32:
                        rd.type = REPR.P6INT_C_TYPE_INT;
                        break;
                    case 64:
                        rd.type = REPR.P6INT_C_TYPE_LONGLONG;
                        break;
                }
            }
            else {
                rd.type = REPR.P6INT_C_TYPE_LONGLONG;
                rd.bits = Long.SIZE;
            }

            if (unsigned != null)
                rd.is_unsigned = (short) unsigned.get_int(tc);

            rd.ss.bits        = rd.bits;
            rd.ss.is_unsigned = rd.is_unsigned;
        }
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        P6intInstance obj = new P6intInstance();
        obj.st = st;
        return obj;
    }

    public StorageSpec get_storage_spec(ThreadContext tc, STable st) {
        P6intREPRData rd = (P6intREPRData) st.REPRData;
        return rd.ss;
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
        String getDesc = "(Lorg/perl6/nqp/runtime/ThreadContext;)J";
        MethodVisitor getMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "get_int", getDesc, null, null);
        getMeth.visitVarInsn(Opcodes.ALOAD, 0);
        getMeth.visitFieldInsn(Opcodes.GETFIELD, className, prefix, "J");
        getMeth.visitInsn(Opcodes.LRETURN);
        getMeth.visitMaxs(0, 0);

        String setDesc = "(Lorg/perl6/nqp/runtime/ThreadContext;J)V";
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

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        P6intInstance obj = new P6intInstance();
        obj.st = st;
        return obj;
    }

    public void deserialize_finish(ThreadContext tc, STable st,
            SerializationReader reader, SixModelObject obj) {
        ((P6intInstance)obj).value = reader.readLong();
    }

    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        writer.writeInt(((P6intInstance)obj).value);
    }

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
    public void serialize_repr_data(ThreadContext tc, STable st, SerializationWriter writer)
    {
        P6intREPRData rd = (P6intREPRData)st.REPRData;
        writer.writeInt(rd.type);
        writer.writeInt(rd.bits);
        writer.writeInt(rd.is_unsigned);
    }

    /**
     * REPR data deserialization. Deserializes the per-type representation data and
     * attaches it to the supplied STable.
     */
    public void deserialize_repr_data(ThreadContext tc, STable st, SerializationReader reader)
    {
        P6intREPRData rd = new P6intREPRData();
        if (reader.version >= 12) {
            rd.type        = (byte)  reader.readLong();
            rd.bits        = (short) reader.readLong();
            rd.is_unsigned = (short) reader.readLong();
        }
        else if (reader.version >= 8) {
            rd.bits        = (short) reader.readLong();
            rd.is_unsigned = (short) reader.readLong();
            switch (rd.bits) {
                case 8:
                    rd.type = REPR.P6INT_C_TYPE_CHAR;
                    break;
                case 16:
                    rd.type = REPR.P6INT_C_TYPE_SHORT;
                    break;
                case 32:
                    rd.type = REPR.P6INT_C_TYPE_INT;
                    break;
                case 64:
                    rd.type = REPR.P6INT_C_TYPE_LONGLONG;
                    break;
            }
        }
        else if (reader.version >= 7) {
            rd.bits        = (short) reader.readLong();
            rd.is_unsigned = 0;
            switch (rd.bits) {
                case 8:
                    rd.type = REPR.P6INT_C_TYPE_CHAR;
                    break;
                case 16:
                    rd.type = REPR.P6INT_C_TYPE_SHORT;
                    break;
                case 32:
                    rd.type = REPR.P6INT_C_TYPE_INT;
                    break;
                case 64:
                    rd.type = REPR.P6INT_C_TYPE_LONGLONG;
                    break;
            }
        }

        StorageSpec ss = new StorageSpec();
        ss.inlineable      = StorageSpec.INLINED;
        ss.boxed_primitive = StorageSpec.BP_INT;
        ss.bits            = rd.bits;
        ss.is_unsigned     = rd.is_unsigned;
        ss.can_box         = StorageSpec.CAN_BOX_INT;
        rd.ss = ss;

        st.REPRData = rd;
    }
}
