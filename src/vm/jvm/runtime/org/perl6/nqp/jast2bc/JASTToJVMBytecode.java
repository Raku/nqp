package org.perl6.nqp.jast2bc;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.lang.invoke.CallSite;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;
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
import org.perl6.nqp.runtime.Base64;

public class JASTToJVMBytecode {
    public static void main(String[] argv)
    {
        if (argv.length != 2)
            usage();
        
        try
        {
            List<String> lines = new LinkedList<String>();
            String line;            
            BufferedReader in = new BufferedReader(new InputStreamReader(
                    new FileInputStream(argv[0]), "UTF-8"));
            while ((line = in.readLine()) != null) {
                lines.add(line);
            }
            in.close();
            JavaClass c = buildClassFrom(lines, true);
            FileOutputStream fos = new FileOutputStream(argv[1]);
            fos.write(c.bytes);
            fos.close();
        }
        catch (Exception e)
        {
            e.printStackTrace();
            System.err.println("Error: " + e.getMessage());
        }
        
    }
    
    public static JavaClass buildClassFromString(List<String> lines, boolean split) {
        try {
            JavaClass c = buildClassFrom(lines, split);
            return c;
        }
        catch (Exception e) {
            if (!split && "Method code too large!".equals(e.getMessage()))
                return buildClassFromString(lines, true);
            throw new RuntimeException(e);
        }
    }
    
    public static void writeClassFromString(List<String> lines, String filename) {    
        JavaClass c = buildClassFromString(lines, false);
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
    
    private static JavaClass buildClassFrom(List<String> lines, boolean split) throws Exception
    {
        JavaClass c = new JavaClass();
        // Read in class name, superclass and any fields.
        String curLine = null, className = null, superName = null, fileName = null;
        byte[] serData = null;
        List<String> fieldLines = new ArrayList<String>();
        
        Iterator<String> iter = lines.iterator();
        while (iter.hasNext()) {
            curLine = iter.next();
            if (curLine.startsWith("+ class ")) {
                className = c.name = curLine.substring("+ class ".length());
            }
            else if (curLine.startsWith("+ super ")) {
                superName = curLine.substring("+ super ".length());
            }
            else if (curLine.startsWith("+ serialized ")) {
                ByteBuffer sbuf = Base64.decode(curLine.substring("+ serialized ".length()));
                c.serialized = new byte[sbuf.remaining()];
                sbuf.get(c.serialized);
            }
            else if (curLine.startsWith("+ filename ")) {
            	fileName = curLine.substring("+ filename ".length());
            }
            else if (curLine.startsWith("+ field ")) {
                fieldLines.add(curLine.substring("+ field ".length()));
            }
            else if (curLine.equals("+ method")) {
                break;
            }
            else {
                throw new Exception("Cannot understand '" + curLine + "'");
            }
        }
        if (className == null)
            throw new Exception("Missing class name");
        if (superName == null)
            throw new Exception("Missing superclass name");

        className = className.replace('.', '/');
        superName = superName.replace('.', '/');
        
        ClassWriter cw = new ClassWriter(ClassWriter.COMPUTE_MAXS | ClassWriter.COMPUTE_FRAMES);
        cw.visit(Opcodes.V1_7, Opcodes.ACC_PUBLIC + Opcodes.ACC_SUPER, className, null, 
                superName, null);
        cw.visitSource(fileName, null);
        
        // Add the fields.
        for (String field : fieldLines) {
            String[] bits = field.split("\\s");
            
            cw.visitField(
                    bits[2].equals("static")
                        ? Opcodes.ACC_PUBLIC | Opcodes.ACC_STATIC
                        : Opcodes.ACC_PUBLIC, 
                    bits[0], processType(bits[1]).getDescriptor(), null, null);
        }
        
        // Process all of the methods.
        if (!curLine.equals("+ method"))
            throw new Exception("Expected method after class configuration");
        while (processMethod(c, iter, cw, className, split))
            ;
        
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

    private static class LabelInfo {
        public Label label = new Label();
        public boolean defined;
    }

    private static boolean processMethod(JavaClass jcout, Iterator<String> in, ClassWriter c, String className, boolean split) throws Exception {
        String curLine, methodName = null, returnType = null, desc = null;
        String crName = null, crCuid = null;
        int crOuterIx = -2; // not coderef
        boolean isStatic = false;
        List<Type> argTypes = new ArrayList<Type>();
        Map<String, VariableDef> localVariables = new HashMap<String, VariableDef>();
        Map<String, LabelInfo> labelMap = new HashMap< >();
        Stack<Label> tryStartStack = new Stack<Label>();
        Stack<Label> tryEndStack = new Stack<Label>();
        List<String> croLex = new ArrayList<String>();
        List<String> criLex = new ArrayList<String>();
        List<String> crnLex = new ArrayList<String>();
        List<String> crsLex = new ArrayList<String>();
        Label beginAll = new Label();
        Label endAll = new Label();
        long[] crHandlers = null;
        int curArgIndex = 1;
        boolean hasExitHandler = false;
        short argsExpectation = 0;
        
        MethodVisitor m = null;
        boolean contAfter = false;
        boolean inMethodHeader = true;
        while (in.hasNext()) {
            curLine = in.next();
            // See if we need to move to the next method.
            if (curLine.equals("+ method")) {
                if (inMethodHeader)
                    throw new Exception("Unexpected + method in method header");
                contAfter = true;
                break;
            }
            
            // Is it a header line?
            if (curLine.startsWith("++ ")) {
                if (!inMethodHeader)
                    throw new Exception("Unexpected method header directive: " + curLine);
                if (curLine.startsWith("++ name "))
                    methodName = curLine.substring("++ name ".length());
                else if (curLine.startsWith("++ returns "))
                    returnType = curLine.substring("++ returns ".length());
                else if (curLine.equals("++ static")) {
                    isStatic = true;
                    curArgIndex = 0; /* No invocant. */
                }
                else if (curLine.startsWith("++ args_expectation "))
                    argsExpectation = Short.parseShort(curLine.substring("++ args_expectation ".length()));
                else if (curLine.startsWith("++ local ") || curLine.startsWith("++ arg")) {
                    String[] bits = curLine.split("\\s", 4);
                    if (localVariables.containsKey(bits[2]))
                        throw new Exception("Duplicate local name: " + bits[2]);
                    Type t = processType(bits[3]);
                    localVariables.put(bits[2], new VariableDef(curArgIndex, t.getDescriptor(), beginAll, endAll));
                    curArgIndex += (t == Type.LONG_TYPE || t == Type.DOUBLE_TYPE ? 2 : 1);
                    if (curLine.startsWith("++ arg")) {
                    	argTypes.add(t);
                    }
                }
                else if (curLine.startsWith("++ crname "))
                    crName = curLine.substring("++ crname ".length());
                else if (curLine.startsWith("++ crcuid "))
                    crCuid = curLine.substring("++ crcuid ".length());
                else if (curLine.startsWith("++ crouterix "))
                    crOuterIx = Integer.parseInt(curLine.substring("++ crouterix ".length()));
                else if (curLine.startsWith("++ olex "))
                    croLex.add(curLine.substring("++ olex ".length()));
                else if (curLine.startsWith("++ ilex "))
                    criLex.add(curLine.substring("++ ilex ".length()));
                else if (curLine.startsWith("++ nlex "))
                    crnLex.add(curLine.substring("++ nlex ".length()));
                else if (curLine.startsWith("++ slex "))
                    crsLex.add(curLine.substring("++ slex ".length()));
                else if (curLine.startsWith("++ handlers ")) {
                    String suffix = curLine.substring("++ handlers ".length());
                    if (!suffix.equals("")) {
                        String[] longStrs = suffix.split("\\s");
                        crHandlers = new long[longStrs.length];
                        for (int i = 0; i < longStrs.length; i++)
                            crHandlers[i] = Long.parseLong(longStrs[i]);
                    }
                    else {
                        crHandlers = new long[0];
                    }
                }
                else if (curLine.startsWith("++ has_exit_handler"))
                    hasExitHandler = true;
                else
                    throw new Exception("Cannot understand '" + curLine + "'");
                continue;
            }
            
            // Otherwise, we have an instruction. If we've been in the method
            // header, this will be the first instruction also.
            if (inMethodHeader) {
                // Transition to instructions mode.
                inMethodHeader = false;

                if (methodName.equals("main")) jcout.hasMain = true;

                // Create method object.
                desc = Type.getMethodDescriptor(processType(returnType), argTypes.toArray(new Type[0]));
                int modifiers = isStatic ? Opcodes.ACC_STATIC | Opcodes.ACC_PUBLIC : Opcodes.ACC_PUBLIC;
                m = split ? new AutosplitMethodWriter(c, className, modifiers, methodName, desc, null, null) :
                    c.visitMethod(modifiers, methodName, desc, null, null);
                                  
                 // Add code ref info annotation.
                 if ((crCuid != null && !crCuid.equals("")) || crOuterIx >= -1) {
                    Type crAnnType = Type.getType("Lorg/perl6/nqp/runtime/CodeRefAnnotation;");
                    AnnotationVisitor av = m.visitAnnotation(crAnnType.getDescriptor(), true);
                    av.visit("name", crName);
                    if (crCuid != null && !crCuid.isEmpty()) av.visit("cuid", crCuid);
                    if (crOuterIx >= 0) av.visit("outerQbid", crOuterIx);

                    AnnotationVisitor avLex;
                    if (croLex.size() > 0) {
                        avLex = av.visitArray("oLexicalNames");
                        for (int i = 0; i < croLex.size(); i++)
                            avLex.visit(null, croLex.get(i));
                        avLex.visitEnd();
                    }
                    if (criLex.size() > 0) {
                        avLex = av.visitArray("iLexicalNames");
                        for (int i = 0; i < criLex.size(); i++)
                            avLex.visit(null, criLex.get(i));
                        avLex.visitEnd();
                    }
                    if (crnLex.size() > 0) {
                        avLex = av.visitArray("nLexicalNames");
                        for (int i = 0; i < crnLex.size(); i++)
                            avLex.visit(null, crnLex.get(i));
                        avLex.visitEnd();
                    }
                    if (crsLex.size() > 0) {
                        avLex = av.visitArray("sLexicalNames");
                        for (int i = 0; i < crsLex.size(); i++)
                            avLex.visit(null, crsLex.get(i));
                        avLex.visitEnd();
                    }

                    if (crHandlers.length != 1 || crHandlers[0] != 0) av.visit("handlers", crHandlers);
                    if (hasExitHandler) av.visit("hasExitHandler", hasExitHandler);
                    if (argsExpectation > 0) av.visit("argsExpectation", argsExpectation);
                    av.visitEnd();
                 }

                 if (!isStatic) {
                	 localVariables.put("this", new VariableDef(0, "L"+className+";", beginAll, endAll));
                 }                 

                 m.visitCode();
                 m.visitLabel(beginAll);
            }
            
            // Check if it's a label.
            if (curLine.startsWith(":")) {
                String labelName = curLine.substring(1);
                if (!labelMap.containsKey(labelName))
                    labelMap.put(labelName, new LabelInfo());
                LabelInfo inf = labelMap.get(labelName);
                if (inf.defined) throw new RuntimeException(labelName + " defined twice in " + methodName);
                inf.defined = true;
                m.visitLabel(inf.label);
                continue;
            }
            
            // Check if it's some other kind of directive.
            if (curLine.startsWith(".")) {
                if (curLine.startsWith(".push_ic ")) {
                    Long value = Long.parseLong(curLine.substring(".push_ic ".length()));
                    m.visitLdcInsn(value);
                }
                else if (curLine.startsWith(".push_nc ")) {
                    String dStr = curLine.substring(".push_nc ".length());
                    if (dStr.equals("Inf"))
                        m.visitLdcInsn(Double.POSITIVE_INFINITY);
                    else if (dStr.equals("-Inf"))
                        m.visitLdcInsn(Double.NEGATIVE_INFINITY);
                    else if (dStr.equals("NaN"))
                        m.visitLdcInsn(Double.NaN);
                    else
                        m.visitLdcInsn(Double.parseDouble(dStr));
                }
                else if (curLine.startsWith(".push_sc ")) {
                    String value = curLine.substring(".push_sc ".length());
                    m.visitLdcInsn(decodeString(value));
                }
                else if (curLine.startsWith(".push_cc ")) {
                    String cName = curLine.substring(".push_cc ".length());
                    Type t = Type.getType(cName);
                    m.visitLdcInsn(t);
                }
                else if (curLine.startsWith(".push_idx ")) {
                    Integer value = Integer.parseInt(curLine.substring(".push_idx ".length()));
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
                else if (curLine.equals(".try")) {
                    Label start = new Label();
                    m.visitLabel(start);
                    tryStartStack.push(start);
                }
                else if (curLine.startsWith(".catch ")) {
                    Label afterCatch = new Label();
                    m.visitJumpInsn(Opcodes.GOTO, afterCatch);
                    tryEndStack.push(afterCatch);
                    
                    String typeName = curLine.substring(".catch ".length());
                    if (typeName.equals(""))
                        typeName = null;
                    else
                        typeName = typeName.substring(1, typeName.length() - 1); 
                    Label start = tryStartStack.peek();
                    Label end = new Label();
                    Label handler = new Label();
                    m.visitLabel(end);
                    m.visitLabel(handler);
                    m.visitTryCatchBlock(start, end, handler, typeName);
                }
                else if (curLine.equals(".endtry")) {
                    tryStartStack.pop();
                    m.visitLabel(tryEndStack.pop());
                }
                else if (curLine.startsWith(".line ")) {
                	int lineNumber = Integer.parseInt(curLine.substring(".line ".length()), 10);
                	Label l = new Label();
                	m.visitLabel(l);
                	m.visitLineNumber(lineNumber, l);
                }
                else {
                    throw new Exception("Don't understand directive: " + curLine);
                }
                continue;
            }
            
            // Process line as an instruction.
            emitInstruction(in, m, labelMap, localVariables, curLine);
        }
        if (inMethodHeader)
            throw new Exception("Unexpected end of file in method header");

        // Add locals.
        m.visitLabel(endAll);
        for (Map.Entry<String, VariableDef> e : localVariables.entrySet()) {
            VariableDef def = e.getValue();
            m.visitLocalVariable(e.getKey(), def.type, null, def.start, def.end, def.index);
        }

        for (Map.Entry<String, LabelInfo> e : labelMap.entrySet()) {
            if (!e.getValue().defined)
                throw new Exception(e.getKey() + " used but not defined in " + methodName);
        }

        m.visitMaxs(0, 0);
        m.visitEnd();
        return contAfter;
    }
    
    private static String decodeString(String value) {
        StringBuilder sb = new StringBuilder(value.length());
        for (int i = 0; i < value.length(); i++) {
            char ch = value.charAt(i);
            if (ch == '\\') {
                i++;
                switch (value.charAt(i)) {
                case '\\': sb.append('\\'); break;
                case 'n': sb.append('\n'); break;
                case 'r': sb.append('\r'); break;
                case 't': sb.append('\t'); break;
                default:
                    new RuntimeException("Invalid string literal");
                }
            }
            else {
                sb.append(ch);
            }
        }
        return sb.toString();
    }

    private static void emitInstruction(Iterator<String> in, MethodVisitor m,
            Map<String, LabelInfo> labelMap,
            Map<String, VariableDef> localVariables,
            String curLine) throws Exception {
        // Find instruction code and get rest of the string.
        int endIns = curLine.indexOf(" ");
        String rest = "";
        if (endIns < 0)
            endIns = curLine.length();
        else
            rest = curLine.substring(endIns + 1);
        int instruction = Integer.parseInt(curLine.substring(0, endIns));

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
        case 0x19: // aload
            if (localVariables.containsKey(rest))
                m.visitVarInsn(instruction, localVariables.get(rest).index);
            else
                throw new Exception("Undeclared local variable: " + rest);
            break;
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
        case 0x3a: // astore
            if (localVariables.containsKey(rest))
                m.visitVarInsn(instruction, localVariables.get(rest).index);
            else
                throw new Exception("Undeclared local variable: " + rest);
            break;
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
            emitBranchInstruction(m, labelMap, rest, instruction);
            break;
        case 0xaa: // tableswitch
            emitTableSwitchInstruction(m, labelMap, rest);
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
            emitFieldAccess(m, rest, instruction);
            break;
        case 0xb6: // invokevirtual
        case 0xb7: // invokespecial
        case 0xb8: // invokestatic
            emitCall(m, rest, instruction);
            break;
        case 0xba:
            emitInvokeDynamic(in, m, rest);
            break;
        case 0xbb: // new
        case 0xc0: // checkcast
        case 0xc1: // instanceof
            Type t = processType(rest);
            m.visitTypeInsn(instruction, t.getInternalName());
            break;
        case 0xbc: // newarray
            int type;
            if (rest.equals("Integer"))
                type = Opcodes.T_INT;
            else if (rest.equals("Long"))
                type = Opcodes.T_LONG;
            else if (rest.equals("Double"))
                type = Opcodes.T_DOUBLE;
            else if (rest.equals("Boolean"))
                type = Opcodes.T_BOOLEAN;
            else if (rest.equals("J") || rest.equals("Long"))
                type = Opcodes.T_LONG;
            else if (rest.equals("Byte"))
                type = Opcodes.T_BYTE;
            else 
                throw new RuntimeException("Unknown native array type");
            m.visitIntInsn(Opcodes.NEWARRAY, type);
            break;
        case 0xbd: // anewarray
            m.visitTypeInsn(Opcodes.ANEWARRAY, processType(rest).getInternalName());
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
            emitBranchInstruction(m, labelMap, rest, instruction);
            break;
        default:
            throw new Exception("Unrecognized instruction line: " + curLine);
        }
    }

    private static void emitFieldAccess(MethodVisitor m, String fieldSpec, int accessType) {
        String[] bits = fieldSpec.split("\\s");
        Type classType = processType(bits[0]);
        String fieldName = bits[1];
        Type fieldType = processType(bits[2]);
        m.visitFieldInsn(accessType, classType.getInternalName(), fieldName, fieldType.getDescriptor());
    }

    private static void emitCall(MethodVisitor m,
            String callSpec, int callType) {
        String[] bits = callSpec.split("\\s");
        Type targetType = processType(bits[0]);
        String methodName = bits[1];
        Type returnType = processType(bits[2]);
        Type[] argumentTypes = new Type[bits.length - 3];
        for (int i = 3; i < bits.length; i++)
            argumentTypes[i - 3] = processType(bits[i]);
        m.visitMethodInsn(callType, targetType.getInternalName(), methodName, 
                Type.getMethodDescriptor(returnType, argumentTypes));
    }

    private static void emitInvokeDynamic(Iterator<String> in, MethodVisitor m, String callSpec) {
        String[] bits = callSpec.split("\\s");
        int numExtraArgs;
        if (bits.length == 4)
            numExtraArgs = 0;
        else if (bits.length == 5)
            numExtraArgs = new Integer(bits[4]);
        else
            throw new RuntimeException("invokedynamic needs 4 or 5 arguments");
        
        MethodType bsmMT = MethodType.methodType(CallSite.class, MethodHandles.Lookup.class,
                java.lang.String.class, MethodType.class);
        
        Object[] extraArgs = new Object[numExtraArgs];
        for (int i = 0; i < numExtraArgs; i++) {
            try {
                String curLine = in.next();
                if (curLine.startsWith(".push_ic ")) {
                    extraArgs[i] = Long.parseLong(curLine.substring(".push_ic ".length()));
                    bsmMT = bsmMT.appendParameterTypes(long.class);
                }
                else if (curLine.startsWith(".push_nc ")) {
                    extraArgs[i] = Double.parseDouble(curLine.substring(".push_nc ".length()));
                    bsmMT = bsmMT.appendParameterTypes(double.class);
                }
                else if (curLine.startsWith(".push_sc ")) {
                    extraArgs[i] = decodeString(curLine.substring(".push_sc ".length()));
                    bsmMT = bsmMT.appendParameterTypes(String.class);
                }
                else if (curLine.startsWith(".push_idx ")) {
                    extraArgs[i] = Integer.parseInt(curLine.substring(".push_idx ".length()));
                    bsmMT = bsmMT.appendParameterTypes(int.class);
                }
                else {
                    throw new RuntimeException("Unrecognized extra argument for invokedynamic");
                }
            }
            catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        Handle bsmHandle = new Handle(Opcodes.H_INVOKESTATIC, bits[2], bits[3], bsmMT.toMethodDescriptorString());
        m.visitInvokeDynamicInsn(bits[0], bits[1], bsmHandle, extraArgs);
    }

    private static void emitBranchInstruction(MethodVisitor m,
            Map<String, LabelInfo> labelFixups,
            String label, int icode) {
        
        if (!labelFixups.containsKey(label))
            labelFixups.put(label, new LabelInfo());
        m.visitJumpInsn(icode, labelFixups.get(label).label);
    }
    
    private static void emitTableSwitchInstruction(MethodVisitor m, Map<String, LabelInfo> labelMap, String rest) {
        String[] labelKeys = rest.split("\\s");
        Label[] labels = new Label[labelKeys.length - 1];
        Label defaultLabel = null;
        
        for (int i = 0; i < labelKeys.length; i++) {
            String key = labelKeys[i];
            if (!labelMap.containsKey(key)) {
                labelMap.put(key, new LabelInfo());
            }
            if (i == 0) {
                defaultLabel = labelMap.get(key).label;
            } else {
                labels[i - 1] = labelMap.get(key).label;
            }
        }
        m.visitTableSwitchInsn(0, labels.length - 1, defaultLabel, labels);
    }

    private static Type processType(String typeName) {
        // Long needs special treatment; getType doesn't cope with it.
        if (typeName.equals("Long"))
            return Type.LONG_TYPE;
        return Type.getType(typeName);
    }

    private static void usage()
    {
        System.err.println("Usage: JASTToJVMBytecode jast-dump-file output-class-file");
        System.exit(1);
    }
    
    static class VariableDef {
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
