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

public class P6num extends REPR {
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
    
    public void compose(ThreadContext tc, STable st, SixModelObject repr_info) {
        SixModelObject floatInfo = repr_info.at_key_boxed(tc, "float");
        if (floatInfo != null) {
            SixModelObject bits = floatInfo.at_key_boxed(tc, "bits");
            if (bits != null)
                ((StorageSpec)st.REPRData).bits = (short)bits.get_int(tc);
        }
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        P6numInstance obj = new P6numInstance();
        obj.st = st;
        obj.value = Double.NaN;
        return obj;
    }
    
    public StorageSpec get_storage_spec(ThreadContext tc, STable st) {
        return (StorageSpec)st.REPRData;
    }
    
    public void inlineStorage(ThreadContext tc, STable st, ClassWriter cw, String prefix) {
        cw.visitField(Opcodes.ACC_PUBLIC, prefix, "D", null, null);
    }
    
    public void inlineBind(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitInsn(Opcodes.ICONST_0 + ThreadContext.NATIVE_NUM);
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_type", "I");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitFieldInsn(Opcodes.GETFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_n", "D");
        mv.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "D");
        mv.visitInsn(Opcodes.RETURN);
    }
    
    public void inlineGet(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitInsn(Opcodes.DUP);
        mv.visitInsn(Opcodes.ICONST_0 + ThreadContext.NATIVE_NUM);
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_type", "I");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitFieldInsn(Opcodes.GETFIELD, className, prefix, "D");
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_n", "D");
        mv.visitInsn(Opcodes.RETURN);        
    }
    
    public void inlineDeserialize(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitVarInsn(Opcodes.ALOAD, 3);
        mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "org/perl6/nqp/sixmodel/SerializationReader", "readDouble", "()D");
        mv.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "D");
    }

    public void generateBoxingMethods(ThreadContext tc, STable st, ClassWriter cw, String className, String prefix) {
        MethodVisitor getMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "get_num", 
                "(Lorg/perl6/nqp/runtime/ThreadContext;)D", null, null);
        getMeth.visitVarInsn(Opcodes.ALOAD, 0);
        getMeth.visitFieldInsn(Opcodes.GETFIELD, className, prefix, "D");
        getMeth.visitInsn(Opcodes.DRETURN);
        getMeth.visitMaxs(0, 0);

        MethodVisitor setMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "set_num", 
                "(Lorg/perl6/nqp/runtime/ThreadContext;D)V", null, null);
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

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        P6numInstance obj = new P6numInstance();
        obj.st = st;
        return obj;
    }

    public void deserialize_finish(ThreadContext tc, STable st,
            SerializationReader reader, SixModelObject obj) {
        ((P6numInstance)obj).value = reader.readDouble();
    }
    
    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        writer.writeNum(((P6numInstance)obj).value);
    }
    
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
    public void serialize_repr_data(ThreadContext tc, STable st, SerializationWriter writer)
    {
        writer.writeInt(((StorageSpec)st.REPRData).bits);
    }
    
    /**
     * REPR data deserialization. Deserializes the per-type representation data and
     * attaches it to the supplied STable.
     */
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
