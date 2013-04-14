package org.perl6.nqp.jast2bc;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.lang.invoke.CallSite;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;

import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.Handle;
import org.objectweb.asm.Label;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.Type;

public class JASTToJVMBytecode {
    public static void main(String[] argv)
    {
        if (argv.length != 2)
            usage();
        
        try
        {
            BufferedReader in = new BufferedReader(new InputStreamReader(new FileInputStream(argv[0])));
            JavaClass c = buildClassFrom(in);
            in.close();
            FileOutputStream fos = new FileOutputStream(argv[1]);
            fos.write(c.bytes);
            fos.close();
        }
        catch (Exception e)
        {
            System.err.println("Error: " + e.getMessage());
        }
        
    }
    
    public static JavaClass buildClassFromString(String in) {
    	try {
	    	BufferedReader br = new BufferedReader(new StringReader(in));
	    	JavaClass c = buildClassFrom(br);
	    	return c;
    	}
    	catch (Exception e) {
    		throw new RuntimeException(e);
    	}
    }
    
    public static void writeClassFromString(String in, String filename) {
    	try {
	    	BufferedReader br = new BufferedReader(new StringReader(in));
	    	JavaClass c = buildClassFrom(br);
	    	FileOutputStream fos = new FileOutputStream(filename);
            fos.write(c.bytes);
            fos.close();
    	}
    	catch (Exception e) {
    		throw new RuntimeException(e);
    	}
    }
    
    private static JavaClass buildClassFrom(BufferedReader in) throws Exception
    {
        // Read in class name, superclass and any fields.
        String curLine, className = null, superName = null;
        List<String> fieldLines = new ArrayList<String>();
        while ((curLine = in.readLine()) != null) {
            if (curLine.startsWith("+ class ")) {
                className = curLine.substring("+ class ".length());
            }
            else if (curLine.startsWith("+ super ")) {
                superName = curLine.substring("+ super ".length());
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
        while (processMethod(in, cw, className))
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
        
        JavaClass c = new JavaClass(className, cw.toByteArray());
        return c;
    }
    
    private static boolean processMethod(BufferedReader in, ClassWriter c, String className) throws Exception {
        String curLine, methodName = null, returnType = null;
        boolean isStatic = false;
        List<String> argNames = new ArrayList<String>();
        List<Type> argTypes = new ArrayList<Type>();
        Map<String, Integer> argIndexes = new HashMap<String, Integer>();
        Map<String, VariableDef> localVariables = new HashMap<String, VariableDef>();
        Map<String, Label> labelMap = new HashMap<String, Label>();
        Stack<Label> tryStartStack = new Stack<Label>();
        Stack<Label> tryEndStack = new Stack<Label>();
        int curArgIndex = 1;
        
        MethodVisitor m = null;
        
        boolean inMethodHeader = true;
        while ((curLine = in.readLine()) != null) {
            // See if we need to move to the next method.
            if (curLine.equals("+ method")) {
                if (inMethodHeader)
                    throw new Exception("Unexpected + method in method header");
                finishMethod(m);
                return true;
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
                else if (curLine.startsWith("++ arg ")) {
                    String[] bits = curLine.split("\\s", 4);
                    Type t = processType(bits[3]);
                    argNames.add(bits[2]);
                    argTypes.add(t);
                    argIndexes.put(bits[2], curArgIndex);
                    curArgIndex += (t == Type.LONG_TYPE || t == Type.DOUBLE_TYPE ? 2 : 1);
                }
                else if (curLine.startsWith("++ local ")) {
                    String[] bits = curLine.split("\\s", 4);
                    if (localVariables.containsKey(bits[2]))
                        throw new Exception("Duplicate local name: " + bits[2]);
                    Type t = processType(bits[3]);
                    localVariables.put(bits[2], new VariableDef(curArgIndex, t.getDescriptor()));
                    curArgIndex += (t == Type.LONG_TYPE || t == Type.DOUBLE_TYPE ? 2 : 1);
                }
                else
                    throw new Exception("Cannot understand '" + curLine + "'");
                continue;
            }
            
            // Otherwise, we have an instruction. If we've been in the method
            // header, this will be the first instruction also.
            if (inMethodHeader) {
                // Transition to instructions mode.
                inMethodHeader = false;
                
                // Create method object.
                String desc = Type.getMethodDescriptor(processType(returnType), argTypes.toArray(new Type[0]));
                m = c.visitMethod(
                		(isStatic
                			? Opcodes.ACC_STATIC | Opcodes.ACC_PUBLIC
                			: Opcodes.ACC_PUBLIC), 
                			methodName, desc, null, null);
                 
                 // Add locals.
                 for (Map.Entry<String, VariableDef> e : localVariables.entrySet()) {
                	 VariableDef def = e.getValue();
                	 m.visitLocalVariable(e.getKey(), def.type, null, def.start, def.end, def.index);
                 }
            }
            
            // Check if it's a label.
            if (curLine.startsWith(":")) {
                String labelName = curLine.substring(1);
                if (!labelMap.containsKey(labelName))
                	labelMap.put(labelName, new Label());
                m.visitLabel(labelMap.get(labelName));
                continue;
            }
            
            // Check if it's some other kind of directive.
            if (curLine.startsWith(".")) {
                if (curLine.startsWith(".push_ic ")) {
                    Long value = Long.parseLong(curLine.substring(".push_ic ".length()));
                    m.visitLdcInsn(value);
                }
                else if (curLine.startsWith(".push_nc ")) {
                    Double value = Double.parseDouble(curLine.substring(".push_nc ".length()));
                    m.visitLdcInsn(value);
                }
                else if (curLine.startsWith(".push_sc ")) {
                    String value = curLine.substring(".push_sc ".length());
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
                    m.visitLdcInsn(sb.toString());
                }
                else if (curLine.startsWith(".push_cc ")) {
                    String cName = curLine.substring(".push_cc ".length());
                    Type t = Type.getType(cName);
                    m.visitLdcInsn(t);
                }
                else if (curLine.startsWith(".push_idx ")) {
                    Integer value = Integer.parseInt(curLine.substring(".push_idx ".length()));
                    m.visitLdcInsn(value);
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
                else {
                    throw new Exception("Don't understand directive: " + curLine);
                }
                continue;
            }
            
            // Process line as an instruction.
            emitInstruction(m, labelMap, argIndexes, localVariables, curLine);
        }
        if (inMethodHeader)
            throw new Exception("Unexpected end of file in method header");
        finishMethod(m);
        return false;
    }

    private static void emitInstruction(MethodVisitor m,
            Map<String, Label> labelMap,
            Map<String, Integer> argIndexes,
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
            else if (argIndexes.containsKey(rest))
            	m.visitVarInsn(instruction, argIndexes.get(rest));
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
            else if (argIndexes.containsKey(rest))
            	m.visitVarInsn(instruction, argIndexes.get(rest));
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
        	emitInvokeDynamic(m, rest);
        	break;
        case 0xbb: // new
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

    private static void emitInvokeDynamic(MethodVisitor m, String callSpec) {
        String[] bits = callSpec.split("\\s");
        if (bits.length != 4)
        	throw new RuntimeException("invokedynamic needs 4 arguments");
        MethodType bsmMT = MethodType.methodType(CallSite.class, MethodHandles.Lookup.class,
        		java.lang.String.class, MethodType.class);
        Handle bsmHandle = new Handle(Opcodes.H_INVOKESTATIC, bits[2], bits[3], bsmMT.toMethodDescriptorString());
        m.visitInvokeDynamicInsn(bits[0], bits[1], bsmHandle);
    }

    private static void emitBranchInstruction(MethodVisitor m,
            Map<String, Label> labelFixups,
            String label, int icode) {
    	
        if (!labelFixups.containsKey(label))
            labelFixups.put(label, new Label());
        m.visitJumpInsn(icode, labelFixups.get(label));
    }
    
    private static void emitTableSwitchInstruction(MethodVisitor m, Map<String, Label> labelMap, String rest) {
    	String[] labelKeys = rest.split("\\s");
    	Label[] labels = new Label[labelKeys.length - 1];
    	Label defaultLabel = null;
    	
    	for (int i = 0; i < labelKeys.length; i++) {
    		String key = labelKeys[i];
    		if (!labelMap.containsKey(key)) {
    			labelMap.put(key, new Label());
    		}
    		if (i == 0) {
    			defaultLabel = labelMap.get(key);
    		} else {
    			labels[i - 1] = labelMap.get(key);
    		}
    	}
    	m.visitTableSwitchInsn(0, labels.length - 1, defaultLabel, labels);
    }

    private static void finishMethod(MethodVisitor m) throws Exception {        
        // Finalize method.
        m.visitMaxs(0, 0);
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
    	public VariableDef(int i, String t) {
    		index = i;
    		type = t;
    		start = new Label();
    		end = new Label();
    	}
    	
    	public final int index;
    	public final String type;
    	public final Label start;
    	public final Label end;
    }
}
