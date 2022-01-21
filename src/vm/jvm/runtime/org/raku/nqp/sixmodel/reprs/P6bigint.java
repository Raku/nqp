package org.raku.nqp.sixmodel.reprs;

import java.math.BigInteger;

import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.Type;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.REPR;
import org.raku.nqp.sixmodel.STable;
import org.raku.nqp.sixmodel.SerializationReader;
import org.raku.nqp.sixmodel.SerializationWriter;
import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.sixmodel.StorageSpec;
import org.raku.nqp.sixmodel.TypeObject;

public class P6bigint extends REPR {
    @Override
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
    }

    @Override
    public SixModelObject allocate(ThreadContext tc, STable st) {
        P6bigintInstance obj = new P6bigintInstance();
        obj.st = st;
        return obj;
    }

    @Override
    public StorageSpec get_storage_spec(ThreadContext tc, STable st) {
        StorageSpec ss = new StorageSpec();
        ss.inlineable = StorageSpec.INLINED;
        ss.boxed_primitive = ss.is_unsigned == 0 ? StorageSpec.BP_INT : StorageSpec.BP_UINT;
        ss.bits = 64;
        ss.can_box = StorageSpec.CAN_BOX_INT;
        return ss;
    }

    @Override
    public void inlineStorage(ThreadContext tc, STable st, ClassWriter cw, String prefix) {
        cw.visitField(Opcodes.ACC_PUBLIC, prefix, Type.getType(BigInteger.class).getDescriptor(), null, null);
    }

    @Override
    public void inlineBind(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        String bigIntegerType = Type.getType(BigInteger.class).getDescriptor();
        String bigIntegerIN = Type.getType(BigInteger.class).getInternalName();

        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitInsn(Opcodes.ICONST_0 + ThreadContext.NATIVE_JVM_OBJ);
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/raku/nqp/runtime/ThreadContext", "native_type", "I");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitFieldInsn(Opcodes.GETFIELD, "org/raku/nqp/runtime/ThreadContext", "native_j",
                    Type.getType(Object.class).getDescriptor());
        mv.visitTypeInsn(Opcodes.CHECKCAST, bigIntegerIN);
        mv.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, bigIntegerType);
        mv.visitInsn(Opcodes.RETURN);
    }

    @Override
    public void inlineGet(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitInsn(Opcodes.DUP);
        mv.visitInsn(Opcodes.ICONST_0 + ThreadContext.NATIVE_JVM_OBJ);
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/raku/nqp/runtime/ThreadContext", "native_type", "I");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitFieldInsn(Opcodes.GETFIELD, className, prefix,
                Type.getType(BigInteger.class).getDescriptor());
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/raku/nqp/runtime/ThreadContext", "native_j",
                Type.getType(Object.class).getDescriptor());
        mv.visitInsn(Opcodes.RETURN);
    }

    @Override
    public void inlineDeserialize(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitTypeInsn(Opcodes.NEW, "java/math/BigInteger");
        mv.visitInsn(Opcodes.DUP);
        mv.visitVarInsn(Opcodes.ALOAD, 3);
        mv.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "org/raku/nqp/sixmodel/SerializationReader", "readStr", "()Ljava/lang/String;");
        mv.visitMethodInsn(Opcodes.INVOKESPECIAL, "java/math/BigInteger", "<init>", "(Ljava/lang/String;)V");
        mv.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, "Ljava/math/BigInteger;");
    }

    @Override
    public void generateBoxingMethods(ThreadContext tc, STable st, ClassWriter cw, String className, String prefix) {
        String bigIntegerType = Type.getType(BigInteger.class).getDescriptor();
        String bigIntegerIN = Type.getType(BigInteger.class).getInternalName();

        String getDesc = "(Lorg/raku/nqp/runtime/ThreadContext;)J";
        MethodVisitor getMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "get_int", getDesc, null, null);
        getMeth.visitVarInsn(Opcodes.ALOAD, 0);
        getMeth.visitFieldInsn(Opcodes.GETFIELD, className, prefix, bigIntegerType);
        getMeth.visitMethodInsn(Opcodes.INVOKEVIRTUAL, bigIntegerIN, "longValue", "()J");
        getMeth.visitInsn(Opcodes.LRETURN);
        getMeth.visitMaxs(0, 0);

        String setDesc = "(Lorg/raku/nqp/runtime/ThreadContext;J)V";
        MethodVisitor setMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "set_int", setDesc, null, null);
        setMeth.visitVarInsn(Opcodes.ALOAD, 0);
        setMeth.visitVarInsn(Opcodes.LLOAD, 2);
        setMeth.visitMethodInsn(Opcodes.INVOKESTATIC, bigIntegerIN, "valueOf",
                Type.getMethodDescriptor(Type.getType(BigInteger.class), new Type[] { Type.LONG_TYPE }));
        setMeth.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, bigIntegerType);
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
        P6bigintInstance obj = new P6bigintInstance();
        // "error: BigInteger(long) has private access in BigInteger"
        obj.value = new BigInteger("0");
        obj.st = st;
        return obj;
    }

    @Override
    public void deserialize_finish(ThreadContext tc, STable st,
                                   SerializationReader reader, SixModelObject obj) {
        ((P6bigintInstance)obj).value = new BigInteger(reader.readStr());
    }

    @Override
    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        /* Write out as String. */
        writer.writeStr(((P6bigintInstance)obj).value.toString());
    }

    @Override
    public void serialize_inlined(ThreadContext tc, STable st, SerializationWriter writer,
                                  String prefix, SixModelObject obj) {
        try {
            writer.writeStr(obj.getClass().getField(prefix).get(obj).toString());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
