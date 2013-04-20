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

public class P6int extends REPR {
	public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
		STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
	}

	public SixModelObject allocate(ThreadContext tc, STable st) {
		P6intInstance obj = new P6intInstance();
        obj.st = st;
        return obj;
	}
	
	public StorageSpec get_storage_spec(ThreadContext tc, STable st) {
        StorageSpec ss = new StorageSpec();
        ss.inlineable = StorageSpec.INLINED;
        ss.boxed_primitive = StorageSpec.BP_INT;
        ss.bits = 64;
        ss.can_box = StorageSpec.CAN_BOX_INT;
        return ss;
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
	
	public void deserialize_inlined(ThreadContext tc, STable st, SerializationReader reader,
			String prefix, SixModelObject obj) {
		try {
			obj.getClass().getField(prefix).set(obj, reader.readLong());
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public void serialize_inlined(ThreadContext tc, STable st, SerializationWriter writer,
			String prefix, SixModelObject obj) {
		try {
			writer.writeInt((long)obj.getClass().getField(prefix).get(obj));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
