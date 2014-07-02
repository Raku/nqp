package org.perl6.nqp.sixmodel.reprs;

import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.TypeObject;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;


public class CPointer extends REPR {
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        st.REPRData = null; /* No REPR data needed. */
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        SixModelObject obj = new CPointerInstance();
        obj.st = st;
        return obj;
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

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        /* This REPR can't be serialized. */
        ExceptionHandling.dieInternal(tc, "Can't deserialize_stub a CPointer object.");

        return null;
    }

    public void deserialize_finish(ThreadContext tc, STable st, SerializationReader reader, SixModelObject obj) {
        ExceptionHandling.dieInternal(tc, "Can't deserialize_finish a CPointer object.");
    }
}
