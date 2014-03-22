package org.perl6.nqp.jast2bc;

import java.io.FileOutputStream;

import java.lang.invoke.CallSite;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;

import java.util.HashMap;
import java.util.Map;

import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import java.util.jar.Manifest;

import org.objectweb.asm.AnnotationVisitor;
import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.Handle;
import org.objectweb.asm.Label;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.Type;

import org.perl6.nqp.runtime.ExceptionHandling;
import static org.perl6.nqp.runtime.Ops.*;
import org.perl6.nqp.runtime.ThreadContext;

import org.perl6.nqp.sixmodel.SixModelObject;

public class JASTCompiler {
    public static JavaClass buildClass(SixModelObject jast, SixModelObject jastNodes, boolean split, ThreadContext tc) {
        try {
            JASTCompiler compiler = new JASTCompiler(jastNodes, tc);
            JavaClass c = compiler.compileJast(jast, jastNodes, split, tc);
            return c;
        }
        catch (Exception e) {
            if (!split && "Method code too large!".equals(e.getMessage()))
                return buildClass(jast, jastNodes, true, tc);
            throw new RuntimeException(e);
        }
    }

    public static void writeClass(SixModelObject jast, SixModelObject jastNodes, String filename, ThreadContext tc) {
        JavaClass c = buildClass(jast, jastNodes, false, tc);
        try {
            FileOutputStream fos = new FileOutputStream(filename);
            if (c.serialized == null) {
                // we're writing a plain java class
                fos.write(c.bytes);
                fos.close();
            } else {
                // writing a jar
                Manifest mf = new Manifest();

                mf.getMainAttributes().put( Attributes.Name.MANIFEST_VERSION, "1.0" );
                if (c.hasMain)
                    mf.getMainAttributes().put( Attributes.Name.MAIN_CLASS, c.name );

                JarOutputStream jos = new JarOutputStream(fos, mf);

                jos.putNextEntry(new JarEntry(c.name.replace('.','/') + ".class"));
                jos.write(c.bytes);
                jos.putNextEntry(new JarEntry(c.name.replace('.','/') + ".serialized"));
                jos.write(c.serialized);

                jos.close();
            }
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private JASTCompiler(SixModelObject jastNodes, ThreadContext tc) {
        if (!setup) setup(jastNodes, tc);

        jastLabel = jastNodes.at_key_boxed(tc, "JAST::Label");
        jastInstruction = jastNodes.at_key_boxed(tc, "JAST::Instruction");
        jastIndy = jastNodes.at_key_boxed(tc, "JAST::InvokeDynamic");
        jastInstructionList = jastNodes.at_key_boxed(tc, "JAST::InstructionList");
        jastPushI = jastNodes.at_key_boxed(tc, "JAST::PushIVal");
        jastPushN = jastNodes.at_key_boxed(tc, "JAST::PushNVal");
        jastPushS = jastNodes.at_key_boxed(tc, "JAST::PushSVal");
        jastPushC = jastNodes.at_key_boxed(tc, "JAST::PushCVal");
        jastPushIdx = jastNodes.at_key_boxed(tc, "JAST::PushIndex");
        jastTryCatch = jastNodes.at_key_boxed(tc, "JAST::TryCatch");
        jastAnnotation = jastNodes.at_key_boxed(tc, "JAST::Annotation");

    }

    private JavaClass compileJast(SixModelObject jast, SixModelObject jastNodes, boolean split, ThreadContext tc) throws Exception {

        SixModelObject jastClassObj = jastNodes.at_key_boxed(tc, "JAST::Class");
        SixModelObject jastField = jastNodes.at_key_boxed(tc, "JAST::Field");
        SixModelObject jastMethod = jastNodes.at_key_boxed(tc, "JAST::Method");

        JastClass jastClass = new JastClass(jast, jastClassObj, tc);
        JavaClass c = new JavaClass();

        c.name = jastClass.className;
        c.serialized = jastClass.serialized;

        String className = jastClass.className.replace('.', '/');
        String superName = jastClass.superName.replace('.', '/');

        ClassWriter cw = new ClassWriter(ClassWriter.COMPUTE_MAXS | ClassWriter.COMPUTE_FRAMES);
        cw.visit(Opcodes.V1_7, Opcodes.ACC_PUBLIC + Opcodes.ACC_SUPER, className, null,
                superName, null);
        cw.visitSource(jastClass.filename, null);

        SixModelObject iter = iter(jastClass.fields, tc);
        while (istrue(iter, tc) != 0) {
            JastField field = new JastField(iter.shift_boxed(tc), jastField, tc);
            String descriptor = null;

            cw.visitField(
                    field.isStatic
                        ? Opcodes.ACC_PUBLIC | Opcodes.ACC_STATIC
                        : Opcodes.ACC_PUBLIC,
                    field.name, field.type.getDescriptor(), null, null);
        }

        iter = iter(jastClass.methods, tc);
        while (istrue(iter, tc) != 0) {
            JastMethod method = new JastMethod(iter.shift_boxed(tc), jastMethod, tc);
            compileMethod(c, method, cw, className, split, tc);
        }

        // Add empty constructor.
        MethodVisitor constructor = cw.visitMethod(Opcodes.ACC_PUBLIC, "<init>", "()V", null, null);
        constructor.visitCode();
        constructor.visitVarInsn(Opcodes.ALOAD, 0);
        constructor.visitMethodInsn(Opcodes.INVOKESPECIAL,
                superName, "<init>", "()V");
        constructor.visitInsn(Opcodes.RETURN);
        constructor.visitMaxs(1, 1);
        constructor.visitEnd();

        cw.visitEnd();
        c.bytes = cw.toByteArray();

        return c;
    }

    private void compileMethod(JavaClass jcout, JastMethod method, ClassWriter c, String className, boolean split, ThreadContext tc) throws Exception {
        String desc = Type.getMethodDescriptor(method.returns, method.arguments.toArray(new Type[0]));
        int modifiers = method.isStatic? Opcodes.ACC_STATIC | Opcodes.ACC_PUBLIC: Opcodes.ACC_PUBLIC;
        MethodVisitor m = split ? new AutosplitMethodWriter(c, className, modifiers, method.name, desc, null, null) :
            c.visitMethod(modifiers, method.name, desc, null, null);

        if (method.name.equals("main")) jcout.hasMain = true;

        if ((method.crCuid != null && !method.crCuid.equals("")) || method.crOuter >= -1) {
            Type crAnnType = Type.getType("Lorg/perl6/nqp/runtime/CodeRefAnnotation;");
            AnnotationVisitor av = m.visitAnnotation(crAnnType.getDescriptor(), true);
            av.visit("name", method.crName);
            if (method.crCuid != null && !method.crCuid.isEmpty()) av.visit("cuid", method.crCuid);
            if (method.crOuter >= 0) av.visit("outerQbid", method.crOuter);

            AnnotationVisitor avLex;
            if (method.crOlex.size() > 0) {
                avLex = av.visitArray("oLexicalNames");
                for (int i = 0; i < method.crOlex.size(); i++)
                    avLex.visit(null, method.crOlex.get(i));
                avLex.visitEnd();
            }
            if (method.crIlex.size() > 0) {
                avLex = av.visitArray("iLexicalNames");
                for (int i = 0; i < method.crIlex.size(); i++)
                    avLex.visit(null, method.crIlex.get(i));
                avLex.visitEnd();
            }
            if (method.crNlex.size() > 0) {
                avLex = av.visitArray("nLexicalNames");
                for (int i = 0; i < method.crNlex.size(); i++)
                    avLex.visit(null, method.crNlex.get(i));
                avLex.visitEnd();
            }
            if (method.crSlex.size() > 0) {
                avLex = av.visitArray("sLexicalNames");
                for (int i = 0; i < method.crSlex.size(); i++)
                    avLex.visit(null, method.crSlex.get(i));
                avLex.visitEnd();
            }

            if (method.crHandlers.length != 1 || method.crHandlers[0] != 0) av.visit("handlers", method.crHandlers);
            if (method.hasExitHandler) av.visit("hasExitHandler", method.hasExitHandler);
            if (method.argsExpectation > 0) av.visit("argsExpectation", method.argsExpectation);
            av.visitEnd();
        }

        if (!method.isStatic)
            method.locals.put("this", new VariableDef(0, "L"+className+";", method.beginAll, method.endAll));

        m.visitCode();
        m.visitLabel(method.beginAll);

        SixModelObject iter = iter(method.instructions, tc);
        while (istrue(iter, tc) != 0) {
            SixModelObject insn = iter.shift_boxed(tc);
            compileInstruction(insn, method, m, tc);
        }

        m.visitLabel(method.endAll);
        for (Map.Entry<String, VariableDef> e : method.locals.entrySet()) {
            VariableDef def = e.getValue();
            m.visitLocalVariable(e.getKey(), def.type, null, def.start, def.end, def.index);
        }

        for (Map.Entry<String, LabelInfo> e : method.labels.entrySet()) {
            if (!e.getValue().defined)
                throw new Exception(e.getKey() + " used but not defined in " + method.name);
        }

        m.visitMaxs(0, 0);
        m.visitEnd();
    }

    private void compileInstruction(SixModelObject insn, JastMethod method, MethodVisitor m, ThreadContext tc) throws Exception {
        if (istype(insn, jastLabel, tc) != 0) {
            String labelName = getattr_s(insn, jastLabel, "$!name", 0, tc);
            if (!method.labels.containsKey(labelName))
                method.labels.put(labelName, new LabelInfo());
            LabelInfo inf = method.labels.get(labelName);
            if (inf.defined) throw new RuntimeException(labelName + " defined twice in " + method.name);
            inf.defined = true;
            m.visitLabel(inf.label);
        }
        else if (istype(insn, jastPushI, tc) != 0) {
            long value = getattr_i(insn, jastPushI, "$!value", 0, tc);
            m.visitLdcInsn(value);
        }
        else if (istype(insn, jastPushN, tc) != 0) {
            double value = getattr_n(insn, jastPushN, "$!value", 0, tc);
            m.visitLdcInsn(value);
        }
        else if (istype(insn, jastPushS, tc) != 0) {
            String value = getattr_s(insn, jastPushS, "$!value", 0, tc);
            m.visitLdcInsn(value);
        }
        else if (istype(insn, jastPushC, tc) != 0) {
            Type value = Type.getType(getattr_s(insn, jastPushC, "$!value", 0, tc));
            m.visitLdcInsn(value);
        }
        else if (istype(insn, jastPushIdx, tc) != 0) {
            int value = (int) getattr_i(insn, jastPushIdx, "$!value", 0, tc);
            if (value >= Byte.MIN_VALUE && value <= Byte.MAX_VALUE) {
                m.visitIntInsn(Opcodes.BIPUSH, value);
            }
            else if (value >= Short.MIN_VALUE && value <= Short.MAX_VALUE) {
                m.visitIntInsn(Opcodes.SIPUSH, value);
            }
            else {
                m.visitLdcInsn(value);
            }
        }
        else if (istype(insn, jastTryCatch, tc) != 0) {
            Label start = new Label();
            Label afterCatch = new Label();
            Label end = new Label();
            Label handler = new Label();
            String typeName = getattr_s(insn, jastTryCatch, "$!type", 2, tc);
            if (typeName != null) {
                typeName = typeName.substring(1, typeName.length() - 1);
            }

            m.visitLabel(start);

            compileInstruction(getattr(insn, jastTryCatch, "$!try", 0, tc), method, m, tc);

            m.visitJumpInsn(Opcodes.GOTO, afterCatch);
            m.visitLabel(end);
            m.visitLabel(handler);
            m.visitTryCatchBlock(start, end, handler, typeName);

            compileInstruction(getattr(insn, jastTryCatch, "$!catch", 1, tc), method, m, tc);

            m.visitLabel(afterCatch);
        }
        else if (istype(insn, jastAnnotation, tc) != 0) {
            long line = getattr_i(insn, jastAnnotation, "$!line", 0, tc);
        }
        else if (istype(insn, jastInstruction, tc) != 0) {
            emitInstruction(insn, method, m, tc);
        }
        else if (istype(insn, jastIndy, tc) != 0) {
            emitInvokeDynamic(insn, m, tc);
        }
        else if (istype(insn, jastInstructionList, tc) != 0) {
            SixModelObject iter = iter(getattr(insn, jastInstructionList, "@!instructions", 0, tc), tc);
            while (istrue(iter, tc) != 0) {
                compileInstruction(iter.shift_boxed(tc), method, m, tc);
            }
        }
        else {
            throw new Exception("Unknown JAST::Node in @!instructions");
        }
    }

    private void emitInstruction(SixModelObject insn, JastMethod method, MethodVisitor m, ThreadContext tc) throws Exception {
        int instruction = (int) getattr_i(insn, jastInstruction, "$!op", 0, tc);
        SixModelObject args = getattr(insn, jastInstruction, "@!args", 1, tc);

        // Go by instruction.
        switch (instruction) {
        case 0x00: // nop
        case 0x01: //aconst_null
        case 0x02: // iconst_m1
        case 0x03: // iconst_0
        case 0x04: // iconst_1
        case 0x05: // iconst_2
        case 0x06: // iconst_3
        case 0x07: // iconst_4
        case 0x08: // iconst_5
        case 0x09: // lconst_0
        case 0x0a: // lconst_1
        case 0x0b: // fconst_0
        case 0x0c: // fconst_1
        case 0x0d: // fconst_2
        case 0x0e: // dconst_0
        case 0x0f: // dconst_1
            m.visitInsn(instruction);
            break;
        case 0x15: // iload
        case 0x16: // lload
        case 0x17: // fload
        case 0x18: // dload
        case 0x19: { // aload
            String name = atpos(args, 0, tc).get_str(tc);
            if (method.locals.containsKey(name))
                m.visitVarInsn(instruction, method.locals.get(name).index);
            else
                throw new Exception("Undeclared local variable: " + name);
            break;
        }
        case 0x1a: // iload_0
            m.visitVarInsn(Opcodes.ILOAD, 0);
            break;
        case 0x1b: // iload_1
            m.visitVarInsn(Opcodes.ILOAD, 1);
            break;
        case 0x1c: // iload_2
            m.visitVarInsn(Opcodes.ILOAD, 2);
            break;
        case 0x1d: // iload_3
            m.visitVarInsn(Opcodes.ILOAD, 3);
            break;
        case 0x1e: // lload_0
            m.visitVarInsn(Opcodes.LLOAD, 0);
            break;
        case 0x1f: // lload_1
            m.visitVarInsn(Opcodes.LLOAD, 1);
            break;
        case 0x20: // lload_2
            m.visitVarInsn(Opcodes.LLOAD, 2);
            break;
        case 0x21: // lload_3
            m.visitVarInsn(Opcodes.LLOAD, 3);
            break;
        case 0x22: // fload_0
            m.visitVarInsn(Opcodes.FLOAD, 0);
            break;
        case 0x23: // fload_1
            m.visitVarInsn(Opcodes.FLOAD, 1);
            break;
        case 0x24: // fload_2
            m.visitVarInsn(Opcodes.FLOAD, 2);
            break;
        case 0x25: // fload_3
            m.visitVarInsn(Opcodes.FLOAD, 3);
            break;
        case 0x26: // dload_0
            m.visitVarInsn(Opcodes.DLOAD, 0);
            break;
        case 0x27: // dload_1
            m.visitVarInsn(Opcodes.DLOAD, 1);
            break;
        case 0x28: // dload_2
            m.visitVarInsn(Opcodes.DLOAD, 2);
            break;
        case 0x29: // dload_3
            m.visitVarInsn(Opcodes.DLOAD, 3);
            break;
        case 0x2a: // aload_0
            m.visitVarInsn(Opcodes.ALOAD, 0);
            break;
        case 0x2b: // aload_1
            m.visitVarInsn(Opcodes.ALOAD, 1);
            break;
        case 0x2c: // aload_2
            m.visitVarInsn(Opcodes.ALOAD, 2);
            break;
        case 0x2d: // aload_3
            m.visitVarInsn(Opcodes.ALOAD, 3);
            break;
        case 0x2e: // iaload
        case 0x2f: // laload
        case 0x30: // faload
        case 0x31: // daload
        case 0x32: // aaload
        case 0x33: // baload
        case 0x34: // caload
        case 0x35: // saload
            m.visitInsn(instruction);
            break;
        case 0x36: // istore
        case 0x37: // lstore
        case 0x38: // fstore
        case 0x39: // dstore
        case 0x3a: { // astore
            String name = atpos(args, 0, tc).get_str(tc);
            if (method.locals.containsKey(name))
                m.visitVarInsn(instruction, method.locals.get(name).index);
            else
                throw new Exception("Undeclared local variable: " + name);
            break;
        }
        case 0x3b: // istore_0
            m.visitVarInsn(Opcodes.ISTORE, 0);
            break;
        case 0x3c: // istore_1
            m.visitVarInsn(Opcodes.ISTORE, 1);
            break;
        case 0x3d: // istore_2
            m.visitVarInsn(Opcodes.ISTORE, 2);
            break;
        case 0x3e: // istore_3
            m.visitVarInsn(Opcodes.ISTORE, 3);
            break;
        case 0x3f: // lstore_0
            m.visitVarInsn(Opcodes.LSTORE, 0);
            break;
        case 0x40: // lstore_1
            m.visitVarInsn(Opcodes.LSTORE, 1);
            break;
        case 0x41: // lstore_2
            m.visitVarInsn(Opcodes.LSTORE, 2);
            break;
        case 0x42: // lstore_3
            m.visitVarInsn(Opcodes.LSTORE, 3);
            break;
        case 0x43: // fstore_0
            m.visitVarInsn(Opcodes.FSTORE, 0);
            break;
        case 0x44: // fstore_1
            m.visitVarInsn(Opcodes.FSTORE, 1);
            break;
        case 0x45: // fstore_2
            m.visitVarInsn(Opcodes.FSTORE, 2);
            break;
        case 0x46: // fstore_3
            m.visitVarInsn(Opcodes.FSTORE, 3);
            break;
        case 0x47: // dstore_0
            m.visitVarInsn(Opcodes.DSTORE, 0);
            break;
        case 0x48: // dstore_1
            m.visitVarInsn(Opcodes.DSTORE, 1);
            break;
        case 0x49: // dstore_2
            m.visitVarInsn(Opcodes.DSTORE, 2);
            break;
        case 0x4a: // dstore_3
            m.visitVarInsn(Opcodes.DSTORE, 3);
            break;
        case 0x4b: // astore_0
            m.visitVarInsn(Opcodes.DSTORE, 0);
            break;
        case 0x4c: // astore_1
            m.visitVarInsn(Opcodes.DSTORE, 1);
            break;
        case 0x4d: // astore_2
            m.visitVarInsn(Opcodes.DSTORE, 2);
            break;
        case 0x4e: // astore_3
            m.visitVarInsn(Opcodes.DSTORE, 3);
            break;
        case 0x4f: // iastore
        case 0x50: // lastore
        case 0x51: // fastore
        case 0x52: // dastore
        case 0x53: // aastore
        case 0x54: // bastore
        case 0x55: // castore
        case 0x56: // sastore
        case 0x57: // pop
        case 0x58: // pop2
        case 0x59: // dup
        case 0x5a: // dup_x1
        case 0x5b: // dup_x2
        case 0x5c: // dup2
        case 0x5d: // dup2_x1
        case 0x5e: // dup2_x2
        case 0x5f: // swap
        case 0x60: // iadd
        case 0x61: // ladd
        case 0x62: // fadd
        case 0x63: // dadd
        case 0x64: // isub
        case 0x65: // lsub
        case 0x66: // fsub
        case 0x67: // dsub
        case 0x68: // imul
        case 0x69: // lmul
        case 0x6a: // fmul
        case 0x6b: // dmul
        case 0x6c: // idiv
        case 0x6d: // ldiv
        case 0x6e: // fdiv
        case 0x6f: // ddiv
        case 0x70: // irem
        case 0x71: // lrem
        case 0x72: // frem
        case 0x73: // drem
        case 0x74: // ineg
        case 0x75: // lneg
        case 0x76: // fneg
        case 0x77: // dneg
        case 0x78: // ishl
        case 0x79: // lshl
        case 0x7a: // ishr
        case 0x7b: // lshr
        case 0x7c: // iushr
        case 0x7d: // lushr
        case 0x7e: // iand
        case 0x7f: // land
        case 0x80: // ior
        case 0x81: // lor
        case 0x82: // ixor
        case 0x83: // lxor
        case 0x85: // i2l
        case 0x86: // i2f
        case 0x87: // i2d
        case 0x88: // l2i
        case 0x89: // l2f
        case 0x8a: // l2d
        case 0x8b: // f2i
        case 0x8c: // f2l
        case 0x8d: // f2d
        case 0x8e: // d2i
        case 0x8f: // d2l
        case 0x90: // d2f
        case 0x91: // i2b
        case 0x92: // i2c
        case 0x93: // i2s
        case 0x94: // lcmp
        case 0x95: // fcmpl
        case 0x96: // fcmpg
        case 0x97: // dcmpl
        case 0x98: // dcmpg
            m.visitInsn(instruction);
            break;
        case 0x99: // ifeq
        case 0x9a: // ifne
        case 0x9b: // iflt
        case 0x9c: // ifge
        case 0x9d: // ifgt
        case 0x9e: // ifle
        case 0x9f: // if_icmpeq
        case 0xa0: // if_icmpne
        case 0xa1: // if_icmplt
        case 0xa2: // if_icmpge
        case 0xa3: // if_icmpgt
        case 0xa4: // if_icmple
        case 0xa5: // if_acmpeq
        case 0xa6: // if_acmpne
        case 0xa7: // goto
            emitBranchInstruction(method, m, getattr_s(atpos(args, 0, tc), jastLabel, "$!name", 0, tc), instruction);
            break;
        case 0xaa: // tableswitch
            emitTableSwitchInstruction(method, m, args, tc);
            break;
        case 0xac: // ireturn
        case 0xad: // lreturn
        case 0xae: // freturn
        case 0xaf: // dreturn
        case 0xb0: // areturn
        case 0xb1: // return
            m.visitInsn(instruction);
            break;
        case 0xb2: // getstatic
        case 0xb3: // putstatic
        case 0xb4: // getfield
        case 0xb5: // putfield
            emitFieldAccess(m, args, instruction, tc);
            break;
        case 0xb6: // invokevirtual
        case 0xb7: // invokespecial
        case 0xb8: // invokestatic
            emitCall(m, args, instruction, tc);
            break;
        case 0xba:
            throw new Exception("Encountered invokedynamic in emitInstruction. This should never happen.");
        case 0xbb: // new
        case 0xc0: // checkcast
        case 0xc1: // instanceof
            Type t = processType(atpos(args, 0, tc).get_str(tc));
            m.visitTypeInsn(instruction, t.getInternalName());
            break;
        case 0xbc: { // newarray
            String name = atpos(args, 0, tc).get_str(tc);
            int type;
            if (name.equals("Integer"))
                type = Opcodes.T_INT;
            else if (name.equals("Long"))
                type = Opcodes.T_LONG;
            else if (name.equals("Double"))
                type = Opcodes.T_DOUBLE;
            else if (name.equals("Boolean"))
                type = Opcodes.T_BOOLEAN;
            else if (name.equals("J") || name.equals("Long"))
                type = Opcodes.T_LONG;
            else if (name.equals("Byte"))
                type = Opcodes.T_BYTE;
            else
                throw new RuntimeException("Unknown native array type");
            m.visitIntInsn(Opcodes.NEWARRAY, type);
            break;
        }
        case 0xbd: // anewarray
            m.visitTypeInsn(Opcodes.ANEWARRAY, processType(atpos(args, 0, tc).get_str(tc)).getInternalName());
            break;
        case 0xbe: // arraylength
            m.visitInsn(Opcodes.ARRAYLENGTH);
            break;
        case 0xbf: // athrow
            m.visitInsn(Opcodes.ATHROW);
            break;
        case 0xc6: // ifnull
        case 0xc7: // ifnonnull
        case 0xc8: // goto_w
            emitBranchInstruction(method, m, getattr_s(atpos(args, 0, tc), jastLabel, "$!name", 0, tc), instruction);
            break;
        default:
            throw new Exception("Unrecognized instruction #" + instruction);
        }
    }

    private void emitBranchInstruction(JastMethod method, MethodVisitor m, String label, int icode) {
        if (!method.labels.containsKey(label))
            method.labels.put(label, new LabelInfo());
        m.visitJumpInsn(icode, method.labels.get(label).label);
    }

    private void emitTableSwitchInstruction(JastMethod method, MethodVisitor m, SixModelObject args, ThreadContext tc) {
        int numKeys = (int) args.elems(tc);
        Label[] labels = new Label[numKeys - 1];
        Label defaultLabel = null;

        for (int i = 0; i < numKeys; i++) {
            String key = getattr_s(atpos(args, i, tc), jastLabel, "$!name", 0, tc);
            if (!method.labels.containsKey(key)) {
                method.labels.put(key, new LabelInfo());
            }
            if (i == 0) {
                defaultLabel = method.labels.get(key).label;
            } else {
                labels[i - 1] = method.labels.get(key).label;
            }
        }
        m.visitTableSwitchInsn(0, labels.length - 1, defaultLabel, labels);
    }

    private void emitFieldAccess(MethodVisitor m, SixModelObject args, int accessType, ThreadContext tc) {
        Type classType = processType(atpos(args, 0, tc).get_str(tc));
        String fieldName = atpos(args, 1, tc).get_str(tc);
        Type fieldType = processType(atpos(args, 2, tc).get_str(tc));
        m.visitFieldInsn(accessType, classType.getInternalName(), fieldName, fieldType.getDescriptor());
    }

    private void emitCall(MethodVisitor m, SixModelObject args, int callType, ThreadContext tc) {
        int argLen = (int) args.elems(tc);
        Type targetType = processType(atpos(args, 0, tc).get_str(tc));
        String methodName = atpos(args, 1, tc).get_str(tc);
        Type returnType = processType(atpos(args, 2, tc).get_str(tc));
        Type[] argumentTypes = new Type[argLen - 3];
        for (int i = 3; i < argLen; i++)
            argumentTypes[i - 3] = processType(atpos(args, i, tc).get_str(tc));
        m.visitMethodInsn(callType, targetType.getInternalName(), methodName,
                Type.getMethodDescriptor(returnType, argumentTypes));
    }

    private void emitInvokeDynamic(SixModelObject insn, MethodVisitor m, ThreadContext tc) {
        String name = getattr(insn, jastIndy, "$!name", 0, tc).get_str(tc);
        SixModelObject argTypesSmo = getattr(insn, jastIndy, "@!arg_types", 1, tc);
        Type retType = processType(getattr(insn, jastIndy, "$!ret_type", 2, tc).get_str(tc));
        String bsmType = getattr(insn, jastIndy, "$!bsm_type", 3, tc).get_str(tc);
        String bsmName = getattr(insn, jastIndy, "$!bsm_name", 4, tc).get_str(tc);
        SixModelObject extraArgsSmo = getattr(insn, jastIndy, "@!extra_args", 5, tc);

        int numArgs = (int) argTypesSmo.elems(tc);
        Type[] argTypes = new Type[numArgs];
        for (int i = 0; i < numArgs; i++) {
            argTypes[i] = processType(atpos(argTypesSmo, i, tc).get_str(tc));
        }

        int numExtraArgs = (int) extraArgsSmo.elems(tc);
        MethodType bsmMT = MethodType.methodType(CallSite.class, MethodHandles.Lookup.class,
                java.lang.String.class, MethodType.class);

        Object[] extraArgs = new Object[numExtraArgs];
        for (int i = 0; i < numExtraArgs; i++) {
            SixModelObject extra = atpos(extraArgsSmo, i, tc);
            if (istype(extra, jastPushI, tc) != 0) {
                extraArgs[i] = getattr_i(extra, jastPushI, "$!value", 0, tc);
                bsmMT = bsmMT.appendParameterTypes(long.class);
            }
            else if (istype(extra, jastPushN, tc) != 0) {
                extraArgs[i] = getattr_n(extra, jastPushN, "$!value", 0, tc);
                bsmMT = bsmMT.appendParameterTypes(double.class);
            }
            else if (istype(extra, jastPushS, tc) != 0) {
                extraArgs[i] = getattr_s(extra, jastPushS, "$!value", 0, tc);
                bsmMT = bsmMT.appendParameterTypes(String.class);
            }
            else if (istype(extra, jastPushIdx, tc) != 0) {
                extraArgs[i] = (int) getattr_i(extra, jastPushIdx, "$!value", 0, tc);
                bsmMT = bsmMT.appendParameterTypes(int.class);
            }
            else {
                throw new RuntimeException("Unrecognized extra argument for invokedynamic");
            }
        }

        Handle bsmHandle = new Handle(Opcodes.H_INVOKESTATIC, bsmType, bsmName, bsmMT.toMethodDescriptorString());
        m.visitInvokeDynamicInsn(name, Type.getMethodDescriptor(retType, argTypes), bsmHandle, extraArgs);
    }

    private static boolean setup = false;
    private SixModelObject jastLabel, jastInstruction, jastInstructionList,
            jastIndy, jastPushI, jastPushIdx, jastPushN, jastPushS, jastPushC,
            jastTryCatch, jastAnnotation;
    private static void setup(SixModelObject jastNodes, ThreadContext tc) {
        setup = true;

        JastClass.setup(jastNodes.at_key_boxed(tc, "JAST::Class"), tc);
        JastField.setup(jastNodes.at_key_boxed(tc, "JAST::Field"), tc);
        JastMethod.setup(jastNodes.at_key_boxed(tc, "JAST::Method"), tc);
    }

    public static Type processType(String typeName) {
        // Long needs special treatment; getType doesn't cope with it.
        if (typeName.equals("Long"))
            return Type.LONG_TYPE;
        return Type.getType(typeName);
    }

    static public class LabelInfo {
        public Label label = new Label();
        public boolean defined;
    }

    static public class VariableDef {
        public VariableDef(int i, String t, Label s, Label e) {
            index = i;
            type = t;
            start = s;
            end = e;
        }

        public final int index;
        public final String type;
        public final Label start;
        public final Label end;
    }
}
