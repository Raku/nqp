package org.perl6.nqp.sixmodel.reprs;

import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.Type;
import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SerializationWriter;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.sixmodel.TypeObject;
import org.perl6.nqp.runtime.ThreadContext;


public class NativeCall extends REPR {
    /* The available native call argument types. */
    public enum ArgType {
        VOID,
        CHAR,
        SHORT,
        INT,
        LONG,
        LONGLONG,
        FLOAT,
        DOUBLE,
        ASCIISTR,
        UTF8STR,
        UTF16STR,
        CSTRUCT,
        CUNION,
        CARRAY,
        CALLBACK,
        CPOINTER,
        VMARRAY,
        UCHAR,
        USHORT,
        UINT,
        ULONG,
        ULONGLONG,
        CHAR_RW,
        SHORT_RW,
        INT_RW,
        LONG_RW,
        LONGLONG_RW,
        FLOAT_RW,
        DOUBLE_RW,
        UCHAR_RW,
        USHORT_RW,
        UINT_RW,
        ULONG_RW,
        ULONGLONG_RW;
    }

    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        st.REPRData = null; /* No REPR data needed. */
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        NativeCallInstance obj = new NativeCallInstance();
        obj.st = st;
        obj.body = new NativeCallBody();
        return obj;
    }
    
    public StorageSpec get_storage_spec(ThreadContext tc, STable st) {
        StorageSpec ss = new StorageSpec();
        ss.inlineable = StorageSpec.INLINED;
        ss.bits = 64;
        return ss;
    }
    
    public void inlineStorage(ThreadContext tc, STable st, ClassWriter cw, String prefix) {
        cw.visitField(Opcodes.ACC_PUBLIC, prefix, Type.getType(NativeCallBody.class).getDescriptor(), null, null);
    }
    
    public void inlineBind(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        String nativeCallType = Type.getType(NativeCallBody.class).getDescriptor();
        String nativeCallIN = Type.getType(NativeCallBody.class).getInternalName();
        
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitInsn(Opcodes.ICONST_0 + ThreadContext.NATIVE_JVM_OBJ);
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_type", "I");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitFieldInsn(Opcodes.GETFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_j",
                    Type.getType(Object.class).getDescriptor());
        mv.visitTypeInsn(Opcodes.CHECKCAST, nativeCallIN);
        mv.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, nativeCallType);
        mv.visitInsn(Opcodes.RETURN);
    }
    
    public void inlineGet(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        mv.visitVarInsn(Opcodes.ALOAD, 1);
        mv.visitInsn(Opcodes.DUP);
        mv.visitInsn(Opcodes.ICONST_0 + ThreadContext.NATIVE_JVM_OBJ);
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_type", "I");
        mv.visitVarInsn(Opcodes.ALOAD, 0);
        mv.visitFieldInsn(Opcodes.GETFIELD, className, prefix,
                Type.getType(NativeCallBody.class).getDescriptor());
        mv.visitFieldInsn(Opcodes.PUTFIELD, "org/perl6/nqp/runtime/ThreadContext", "native_j",
                Type.getType(Object.class).getDescriptor());
        mv.visitInsn(Opcodes.RETURN);
    }
    
    public void inlineDeserialize(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        /* Assume it'll be re-configured each time, so just allow it. */
    }
    
    // XXX This is a hack as it fails to check the REPR ID, but the JVM will
    // catch any screw-ups and keep us safe.
    public void generateBoxingMethods(ThreadContext tc, STable st, ClassWriter cw, String className, String prefix) {
        String nativeCallType = Type.getType(NativeCallBody.class).getDescriptor();
        String nativeCallIN = Type.getType(NativeCallBody.class).getInternalName();
        
        String getDesc = "(Lorg/perl6/nqp/runtime/ThreadContext;J)Ljava/lang/Object;";
        MethodVisitor getMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "get_boxing_of", getDesc, null, null);
        getMeth.visitVarInsn(Opcodes.ALOAD, 0);
        getMeth.visitFieldInsn(Opcodes.GETFIELD, className, prefix, nativeCallType);
        getMeth.visitInsn(Opcodes.ARETURN);
        getMeth.visitMaxs(0, 0);

        String setDesc = "(Lorg/perl6/nqp/runtime/ThreadContext;JLjava/lang/Object;)V";
        MethodVisitor setMeth = cw.visitMethod(Opcodes.ACC_PUBLIC, "set_boxing_of", setDesc, null, null);
        setMeth.visitVarInsn(Opcodes.ALOAD, 0);
        setMeth.visitVarInsn(Opcodes.ALOAD, 4);
        setMeth.visitTypeInsn(Opcodes.CHECKCAST, nativeCallIN);
        setMeth.visitFieldInsn(Opcodes.PUTFIELD, className, prefix, nativeCallType);
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
        /* Assume it'll be re-configured each time, so just allow it. */
        NativeCallInstance stub = new NativeCallInstance();
        stub.st = st;
        return stub;
    }

    public void deserialize_finish(ThreadContext tc, STable st, SerializationReader reader, SixModelObject obj) {
        /* Assume it'll be re-configured each time, so just allow it. */
    }
    
    public void serialize_inlined(ThreadContext tc, STable st, SerializationWriter writer,
            String prefix, SixModelObject obj) {
        /* Assume it'll be re-configured each time, so just allow it. */
    }
}
