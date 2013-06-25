package org.perl6.nqp.jast2bc;

import org.objectweb.asm.ClassVisitor;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.Type;
import org.objectweb.asm.Handle;
import org.objectweb.asm.commons.CodeSizeEvaluator;
import org.objectweb.asm.tree.AbstractInsnNode;
import org.objectweb.asm.tree.JumpInsnNode;
import org.objectweb.asm.tree.LabelNode;
import org.objectweb.asm.tree.VarInsnNode;
import org.objectweb.asm.tree.MethodInsnNode;
import org.objectweb.asm.tree.TypeInsnNode;
import org.objectweb.asm.tree.IntInsnNode;
import org.objectweb.asm.tree.InvokeDynamicInsnNode;
import org.objectweb.asm.tree.MultiANewArrayInsnNode;
import org.objectweb.asm.tree.LdcInsnNode;
import org.objectweb.asm.tree.FieldInsnNode;
import org.objectweb.asm.tree.LineNumberNode;
import org.objectweb.asm.tree.LookupSwitchInsnNode;
import org.objectweb.asm.tree.MethodNode;
import org.objectweb.asm.tree.TableSwitchInsnNode;
import org.objectweb.asm.tree.TryCatchBlockNode;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SuppressWarnings("unchecked") /* our asm is stripped */
class AutosplitMethodWriter extends MethodNode {

    /** Maximum size of a method to leave alone. */
    private static final int MAX_UNSPLIT_METHOD = 1;

    /** True to dump control flow analysis. */
    private static final boolean DEBUG_CONTROL = true;
    private static final boolean TYPE_TRACE = true;

    /** The real instructions (not branches) in program order.  Filled out by {@link getControlFlow()}. */
    private AbstractInsnNode[] insnList;
    private Map<AbstractInsnNode, Integer> insnMap;
    private int[] lineNumbers;

    /** Array of (source, target) pairs.  Filled out by {@link getControlFlow()}.  -1 means from-outside. */
    private ControlEdge[] controlEdges;
    private ControlEdge[][] successors;
    private int[] depth;

    private static class ControlEdge {
        public final int from, to;
        public final String exn; // if non-null, replace the stack with this
        public ControlEdge(int f, int t, String e) { from = f; to = t; exn = e; }
    }

    private int nstack, nlocal;

    private final ClassVisitor target;
    private final String tgtype;

    public AutosplitMethodWriter(ClassVisitor target, String tgtype, int access, String name, String desc, String sig, String[] exn) {
        super(Opcodes.ASM4, access, name, desc, sig, exn);
        this.target = target;
        this.tgtype = tgtype;
    }

    @Override
    public void visitEnd() {
        super.visitEnd();

        CodeSizeEvaluator cse = new CodeSizeEvaluator(null);
        accept(cse);

        if (cse.getMaxSize() <= MAX_UNSPLIT_METHOD) {
            // hey cool, we don't need to do anything fancy here
            MethodVisitor mw = target.visitMethod(access, name, desc, signature, ((List<String>)exceptions).toArray(new String[0]));
            accept(mw);
            return;
        }

        /* we need to split this thing */

        System.out.printf("method=%s min=%d max=%d\n", name, cse.getMinSize(), cse.getMaxSize());

        getInstructions();
        getControlFlow();
        if (DEBUG_CONTROL) printControlFlow();
        getTypes();

        System.exit(1);
    }

    private boolean isRealInsn(AbstractInsnNode node) {
        switch (node.getType()) {
            case AbstractInsnNode.LINE:
            case AbstractInsnNode.LABEL:
            case AbstractInsnNode.FRAME:
                return false;
            default:
                return true;
        }
    }

    /** Extract the real instructions from the instruction list. */
    private void getInstructions() {
        // munge the linked list of insns we got from ASM into something saner
        ArrayList<AbstractInsnNode> tempInsnList = new ArrayList< >();
        insnMap = new HashMap< >();
        HashMap<AbstractInsnNode, Integer> linesMap = new HashMap< >();

        for (AbstractInsnNode n = instructions.getFirst(); n != null; n = n.getNext()) {
            insnMap.put(n, tempInsnList.size());
            if (isRealInsn(n)) tempInsnList.add(n);
            if (n.getType() == AbstractInsnNode.LINE) {
                LineNumberNode nn = (LineNumberNode) n;
                AbstractInsnNode start = nn.start;
                while (start != null && !isRealInsn(start)) start = start.getNext();
                linesMap.put(start, nn.line);
            }
        }
        insnList = tempInsnList.toArray(new AbstractInsnNode[0]);

        int curLine = 0;
        lineNumbers = new int[insnList.length];

        for (int i = 0; i < insnList.length; i++) {
            Integer ll = linesMap.get(insnList[i]);
            if (ll != null) curLine = ll.intValue();
            lineNumbers[i] = curLine;
        }
    }

    /** Build the control flow graph. */
    private void getControlFlow() {
        List<ControlEdge> controlTemp = new ArrayList< >();

        successors = new ControlEdge[insnList.length][];
        for (int insnNo = 0; insnNo < insnList.length; insnNo++) {
            AbstractInsnNode node = insnList[insnNo];

            List<ControlEdge> succTemp = new ArrayList< >();

            switch (node.getType()) {
                case AbstractInsnNode.JUMP_INSN:
                    JumpInsnNode ji = (JumpInsnNode) node;
                    succTemp.add(new ControlEdge(insnNo, insnMap.get(ji.label), null));
                    if (node.getOpcode() != Opcodes.GOTO)
                        succTemp.add(new ControlEdge(insnNo, insnNo+1, null));
                    break;

                case AbstractInsnNode.TABLESWITCH_INSN:
                    TableSwitchInsnNode tsi = (TableSwitchInsnNode) node;
                    succTemp.add(new ControlEdge(insnNo, insnMap.get(tsi.dflt), null));
                    for (int i = 0; i  < tsi.labels.size(); i++)
                        succTemp.add(new ControlEdge(insnNo, insnMap.get(tsi.labels.get(i)), null));
                    break;

                case AbstractInsnNode.LOOKUPSWITCH_INSN:
                    LookupSwitchInsnNode lsi = (LookupSwitchInsnNode) node;
                    succTemp.add(new ControlEdge(insnNo, insnMap.get(lsi.dflt), null));
                    for (int i = 0; i  < lsi.labels.size(); i++)
                        succTemp.add(new ControlEdge(insnNo, insnMap.get(lsi.labels.get(i)), null));
                    break;

                default:
                    int opcode = node.getOpcode();

                    if (! (opcode == Opcodes.ATHROW || opcode >= Opcodes.IRETURN && opcode <= Opcodes.RETURN))
                        succTemp.add(new ControlEdge(insnNo, insnNo+1, null));
                    break;
            }

            for (TryCatchBlockNode tcb : (List<TryCatchBlockNode>) tryCatchBlocks) {
                if (insnNo < insnMap.get(tcb.start) || insnNo >= insnMap.get(tcb.end)) continue;
                succTemp.add(new ControlEdge(insnNo, insnMap.get(tcb.handler), tcb.type == null ? "java/lang/Throwable" : tcb.type));
            }

            successors[insnNo] = succTemp.toArray(new ControlEdge[0]);
            controlTemp.addAll(succTemp);
        }

        controlEdges = controlTemp.toArray(new ControlEdge[0]);
    }

    private static class StackEffect {
        public final String[] pop;
        public final String[] push;
        public StackEffect(String... ops) {
            int nul = 0;
            while (!ops[nul].isEmpty()) nul++;
            this.pop = Arrays.copyOfRange(ops, 0, nul);
            this.push = Arrays.copyOfRange(ops, nul+1, ops.length);
        }
    }

    private static final StackEffect[] simpleEffects;

    static {
        simpleEffects = new StackEffect[256];

        simpleEffects[Opcodes.AASTORE] = new StackEffect("L", "I", "L", "");
        simpleEffects[Opcodes.ACONST_NULL] = new StackEffect("", "0");
        simpleEffects[Opcodes.ARETURN] = new StackEffect("");
        simpleEffects[Opcodes.ARRAYLENGTH] = new StackEffect("L", "", "I");
        simpleEffects[Opcodes.ATHROW] = new StackEffect("");
        simpleEffects[Opcodes.BALOAD] = new StackEffect("L", "I", "", "I");
        simpleEffects[Opcodes.BASTORE] = new StackEffect("L", "I", "I", "");
        simpleEffects[Opcodes.BIPUSH] = new StackEffect("", "I");
        simpleEffects[Opcodes.CALOAD] = new StackEffect("[C", "I", "", "I");
        simpleEffects[Opcodes.CASTORE] = new StackEffect("[C", "I", "I", "");
        simpleEffects[Opcodes.D2F]   = new StackEffect("D", "", "F");
        simpleEffects[Opcodes.D2I]   = new StackEffect("D", "", "I");
        simpleEffects[Opcodes.D2L]   = new StackEffect("D", "", "J");
        simpleEffects[Opcodes.DADD] = new StackEffect("D", "D", "", "D");
        simpleEffects[Opcodes.DALOAD] = new StackEffect("[D", "I", "", "D");
        simpleEffects[Opcodes.DASTORE] = new StackEffect("[D", "I", "D", "");
        simpleEffects[Opcodes.DCMPG] = new StackEffect("D", "D", "", "I");
        simpleEffects[Opcodes.DCMPL] = new StackEffect("D", "D", "", "I");
        simpleEffects[Opcodes.DCONST_0] = new StackEffect("", "D");
        simpleEffects[Opcodes.DCONST_1] = new StackEffect("", "D");
        simpleEffects[Opcodes.DDIV] = new StackEffect("D", "D", "", "D");
        simpleEffects[Opcodes.DLOAD] = new StackEffect("", "D");
        simpleEffects[Opcodes.DMUL] = new StackEffect("D", "D", "", "D");
        simpleEffects[Opcodes.DNEG] = new StackEffect("D", "", "D");
        simpleEffects[Opcodes.DREM] = new StackEffect("D", "D", "", "D");
        simpleEffects[Opcodes.DRETURN] = new StackEffect("");
        simpleEffects[Opcodes.DSUB] = new StackEffect("D", "D", "", "D");
        simpleEffects[Opcodes.F2D]   = new StackEffect("F", "", "D");
        simpleEffects[Opcodes.F2I]   = new StackEffect("F", "", "I");
        simpleEffects[Opcodes.F2L]   = new StackEffect("F", "", "J");
        simpleEffects[Opcodes.FADD] = new StackEffect("F", "F", "", "F");
        simpleEffects[Opcodes.FALOAD] = new StackEffect("[F", "I", "", "F");
        simpleEffects[Opcodes.FASTORE] = new StackEffect("[F", "I", "F", "");
        simpleEffects[Opcodes.FCMPG] = new StackEffect("F", "F", "", "I");
        simpleEffects[Opcodes.FCMPL] = new StackEffect("F", "F", "", "I");
        simpleEffects[Opcodes.FCONST_0] = new StackEffect("", "F");
        simpleEffects[Opcodes.FCONST_1] = new StackEffect("", "F");
        simpleEffects[Opcodes.FCONST_2] = new StackEffect("", "F");
        simpleEffects[Opcodes.FDIV] = new StackEffect("F", "F", "", "F");
        simpleEffects[Opcodes.FLOAD] = new StackEffect("", "F");
        simpleEffects[Opcodes.FMUL] = new StackEffect("F", "F", "", "F");
        simpleEffects[Opcodes.FNEG] = new StackEffect("F", "", "F");
        simpleEffects[Opcodes.FREM] = new StackEffect("F", "F", "", "F");
        simpleEffects[Opcodes.FRETURN] = new StackEffect("");
        simpleEffects[Opcodes.FSUB] = new StackEffect("F", "F", "", "F");
        simpleEffects[Opcodes.GOTO] = new StackEffect("");
        simpleEffects[Opcodes.I2B]   = new StackEffect("I", "", "I");
        simpleEffects[Opcodes.I2C]   = new StackEffect("I", "", "I");
        simpleEffects[Opcodes.I2D]   = new StackEffect("I", "", "D");
        simpleEffects[Opcodes.I2F]   = new StackEffect("I", "", "F");
        simpleEffects[Opcodes.I2L]   = new StackEffect("I", "", "J");
        simpleEffects[Opcodes.I2S]   = new StackEffect("I", "", "I");
        simpleEffects[Opcodes.IADD] = new StackEffect("I", "I", "", "I");
        simpleEffects[Opcodes.IALOAD] = new StackEffect("[I", "I", "", "I");
        simpleEffects[Opcodes.IAND]  = new StackEffect("I", "I", "", "I");
        simpleEffects[Opcodes.IASTORE] = new StackEffect("[I", "I", "I", "");
        simpleEffects[Opcodes.ICONST_0] = new StackEffect("", "I");
        simpleEffects[Opcodes.ICONST_1] = new StackEffect("", "I");
        simpleEffects[Opcodes.ICONST_2] = new StackEffect("", "I");
        simpleEffects[Opcodes.ICONST_3] = new StackEffect("", "I");
        simpleEffects[Opcodes.ICONST_4] = new StackEffect("", "I");
        simpleEffects[Opcodes.ICONST_5] = new StackEffect("", "I");
        simpleEffects[Opcodes.ICONST_M1] = new StackEffect("", "I");
        simpleEffects[Opcodes.IDIV] = new StackEffect("I", "I", "", "I");
        simpleEffects[Opcodes.IFEQ] = new StackEffect("I", "");
        simpleEffects[Opcodes.IFGE] = new StackEffect("I", "");
        simpleEffects[Opcodes.IFGT] = new StackEffect("I", "");
        simpleEffects[Opcodes.IFLE] = new StackEffect("I", "");
        simpleEffects[Opcodes.IFLT] = new StackEffect("I", "");
        simpleEffects[Opcodes.IFNE] = new StackEffect("I", "");
        simpleEffects[Opcodes.IFNONNULL] = new StackEffect("L", "");
        simpleEffects[Opcodes.IFNULL] = new StackEffect("L", "");
        simpleEffects[Opcodes.IF_ACMPEQ] = new StackEffect("I", "I", "");
        simpleEffects[Opcodes.IF_ACMPNE] = new StackEffect("I", "I", "");
        simpleEffects[Opcodes.IF_ICMPEQ] = new StackEffect("I", "I", "");
        simpleEffects[Opcodes.IF_ICMPGE] = new StackEffect("I", "I", "");
        simpleEffects[Opcodes.IF_ICMPGT] = new StackEffect("I", "I", "");
        simpleEffects[Opcodes.IF_ICMPLE] = new StackEffect("I", "I", "");
        simpleEffects[Opcodes.IF_ICMPLT] = new StackEffect("I", "I", "");
        simpleEffects[Opcodes.IF_ICMPNE] = new StackEffect("I", "I", "");
        simpleEffects[Opcodes.IINC]  = new StackEffect("");
        simpleEffects[Opcodes.ILOAD] = new StackEffect("", "I");
        simpleEffects[Opcodes.IMUL] = new StackEffect("I", "I", "", "I");
        simpleEffects[Opcodes.INEG] = new StackEffect("I", "", "I");
        simpleEffects[Opcodes.INSTANCEOF] = new StackEffect("L", "", "I");
        simpleEffects[Opcodes.IOR]   = new StackEffect("I", "I", "", "I");
        simpleEffects[Opcodes.IREM] = new StackEffect("I", "I", "", "I");
        simpleEffects[Opcodes.IRETURN] = new StackEffect("");
        simpleEffects[Opcodes.ISHL]  = new StackEffect("I", "I", "", "I");
        simpleEffects[Opcodes.ISHR]  = new StackEffect("I", "I", "", "I");
        simpleEffects[Opcodes.ISUB] = new StackEffect("I", "I", "", "I");
        simpleEffects[Opcodes.IUSHR] = new StackEffect("I", "I", "", "I");
        simpleEffects[Opcodes.IXOR]  = new StackEffect("I", "I", "", "I");
        simpleEffects[Opcodes.L2D]   = new StackEffect("J", "", "D");
        simpleEffects[Opcodes.L2F]   = new StackEffect("J", "", "F");
        simpleEffects[Opcodes.L2I]   = new StackEffect("J", "", "I");
        simpleEffects[Opcodes.LADD] = new StackEffect("J", "J", "", "J");
        simpleEffects[Opcodes.LALOAD] = new StackEffect("[J", "I", "", "J");
        simpleEffects[Opcodes.LAND]  = new StackEffect("J", "J", "", "J");
        simpleEffects[Opcodes.LASTORE] = new StackEffect("[J", "I", "J", "");
        simpleEffects[Opcodes.LCMP]  = new StackEffect("J", "J", "", "I");
        simpleEffects[Opcodes.LCONST_0] = new StackEffect("", "J");
        simpleEffects[Opcodes.LCONST_1] = new StackEffect("", "J");
        simpleEffects[Opcodes.LDIV] = new StackEffect("J", "J", "", "J");
        simpleEffects[Opcodes.LLOAD] = new StackEffect("", "L");
        simpleEffects[Opcodes.LMUL] = new StackEffect("J", "J", "", "J");
        simpleEffects[Opcodes.LNEG] = new StackEffect("J", "", "J");
        simpleEffects[Opcodes.LOOKUPSWITCH] = new StackEffect("I", "");
        simpleEffects[Opcodes.LOR]   = new StackEffect("J", "J", "", "J");
        simpleEffects[Opcodes.LREM] = new StackEffect("J", "J", "", "J");
        simpleEffects[Opcodes.LRETURN] = new StackEffect("");
        simpleEffects[Opcodes.LSHL]  = new StackEffect("J", "I", "", "J");
        simpleEffects[Opcodes.LSHR]  = new StackEffect("J", "I", "", "J");
        simpleEffects[Opcodes.LSUB] = new StackEffect("J", "J", "", "J");
        simpleEffects[Opcodes.LUSHR] = new StackEffect("J", "I", "", "J");
        simpleEffects[Opcodes.LXOR]  = new StackEffect("J", "J", "", "J");
        simpleEffects[Opcodes.MONITORENTER] = new StackEffect("L", "");
        simpleEffects[Opcodes.MONITOREXIT] = new StackEffect("L", "");
        simpleEffects[Opcodes.NOP] = new StackEffect("");
        simpleEffects[Opcodes.PUTFIELD] = new StackEffect("X", "");
        simpleEffects[Opcodes.PUTSTATIC] = new StackEffect("X", "X", "");
        simpleEffects[Opcodes.RETURN]  = new StackEffect("");
        simpleEffects[Opcodes.SALOAD] = new StackEffect("[S", "I", "", "I");
        simpleEffects[Opcodes.SASTORE] = new StackEffect("[S", "I", "I", "");
        simpleEffects[Opcodes.SIPUSH] = new StackEffect("", "I");
        simpleEffects[Opcodes.TABLESWITCH] = new StackEffect("I", "");

    }

    private void printControlFlow() {
        for (int i = 0; i < insnList.length; i++) {
            System.out.printf("%5d: %s\n", i, insnList[i]);
            for (ControlEdge ce : successors[i])
                System.out.printf("     %5d -> %d %s\n", ce.from, ce.to, ce.exn == null ? "-" : ce.exn);
        }
    }

    /** Infer types. */
    private static class Frame {
        public String[] stack;
        public int sp;
        public int sbase;

        public Frame(String[] stack, int sp, int sbase) {
            this.stack = stack.clone(); this.sp = sp; this.sbase = sbase;
        }

        public Frame clone() {
            return new Frame(stack, sp, sbase);
        }

        public void grow(int len) {
            if (len <= stack.length) return;

            int olen = stack.length;
            stack = Arrays.copyOf(stack, len);
            Arrays.fill(stack, olen, len, "T");
        }

        public String describe() {
            return String.format("locals=[%s] stack=[%s]", Arrays.toString(Arrays.copyOfRange(stack, 0, sbase)), Arrays.toString(Arrays.copyOfRange(stack, sbase, sp)));
        }

        public void thrown(String ex) {
            sp = sbase;
            stack[sp++] = 'L'+ex+';';
        }

        private void pushReturn(String s) {
            switch (s.charAt(0)) {
                case 'V': break;
                case 'B': case 'Z': case 'S': case 'C': stack[sp++] = "I"; break;
                default: stack[sp++] = s; break;
            }
        }

        public void execute(int index, AbstractInsnNode anode) {
            StackEffect simp = simpleEffects[anode.getOpcode()];

            if (stack.length < sp + 5) grow(sp+8);// room for all fixed effects and a bit to spare

            if (simp != null) {
                sp -= simp.pop.length;
                if (sp < sbase) throw new RuntimeException("stack underflow");
                if (stack.length < sp + simp.push.length)
                    stack = Arrays.copyOf(stack, sp + simp.push.length);
                for (String s : simp.push)
                    stack[sp++] = s;
                return;
            }

            VarInsnNode vi = null;
            TypeInsnNode ti = null;
            FieldInsnNode fi = null;
            String tidesc = null;
            MethodInsnNode mi = null;
            Type midesc = null;

            switch (anode.getType()) {
                case AbstractInsnNode.VAR_INSN:
                    vi = (VarInsnNode) anode;
                    if (vi.var != 0 && ("D".equals(stack[vi.var-1]) || "J".equals(stack[vi.var-1])))
                        stack[vi.var-1] = "T";
                    break;
                case AbstractInsnNode.TYPE_INSN:
                    ti = (TypeInsnNode) anode;
                    tidesc = ti.desc.charAt(0) == '[' ? ti.desc : ("L" + ti.desc + ";");
                    break;
                case AbstractInsnNode.METHOD_INSN:
                    mi = (MethodInsnNode) anode;
                    midesc = Type.getMethodType(mi.desc);
                    break;
                case AbstractInsnNode.INVOKE_DYNAMIC_INSN:
                    midesc = Type.getMethodType(((InvokeDynamicInsnNode)anode).desc);
                    break;
                case AbstractInsnNode.FIELD_INSN:
                    fi = (FieldInsnNode) anode;
                    break;
            }

            String a,b,c,d;
            int opcode = anode.getOpcode();
            switch (opcode) {
                case Opcodes.AALOAD:
                    stack[sp-2] = stack[sp-2].substring(1);
                    sp--;
                    break;
                case Opcodes.ALOAD:
                    stack[sp++] = stack[vi.var];
                    break;
                case Opcodes.ANEWARRAY:
                    stack[sp-1] = "[" + tidesc;
                    break;
                case Opcodes.ASTORE:
                    stack[vi.var] = stack[--sp];
                    break;
                case Opcodes.CHECKCAST:
                    stack[sp-1] = tidesc;
                    break;
                case Opcodes.DSTORE:
                    stack[vi.var] = "D";
                    stack[vi.var+1] = null;
                    sp--;
                    break;
                case Opcodes.DUP2:
                    // [b] a -> [b] a [b] a
                    a = stack[--sp];
                    b = ("D".equals(a) || "J".equals(a)) ? "X" : stack[--sp];

                    if (!"X".equals(b)) stack[sp++] = b;
                    stack[sp++] = a;
                    if (!"X".equals(b)) stack[sp++] = b;
                    stack[sp++] = a;
                    break;
                case Opcodes.DUP2_X1:
                    // c [b] a -> [b] a c [b] a
                    a = stack[--sp];
                    b = ("D".equals(a) || "J".equals(a)) ? "X" : stack[--sp];
                    c = stack[--sp];

                    if (!"X".equals(b)) stack[sp++] = b;
                    stack[sp++] = a;
                    stack[sp++] = c;
                    if (!"X".equals(b)) stack[sp++] = b;
                    stack[sp++] = a;
                    break;
                case Opcodes.DUP2_X2:
                    // [d] c [b] a -> b a d c b a
                    a = stack[--sp];
                    b = ("D".equals(a) || "J".equals(a)) ? "X" : stack[--sp];
                    c = stack[--sp];
                    d = ("D".equals(c) || "J".equals(c)) ? "X" : stack[--sp];

                    if (!"X".equals(b)) stack[sp++] = b;
                    stack[sp++] = a;
                    if (!"X".equals(d)) stack[sp++] = d;
                    stack[sp++] = c;
                    if (!"X".equals(b)) stack[sp++] = b;
                    stack[sp++] = a;

                    break;
                case Opcodes.DUP:
                    // D, J invalid...
                    stack[sp] = stack[sp-1];
                    sp++;
                    break;
                case Opcodes.DUP_X1:
                    // b a -> a b a
                    a = stack[--sp];
                    b = stack[--sp];

                    stack[sp++] = a;
                    stack[sp++] = b;
                    stack[sp++] = a;
                    break;

                case Opcodes.DUP_X2:
                    // [d] c a -> a [d] c a
                    a = stack[--sp];
                    c = stack[--sp];
                    d = ("D".equals(c) || "J".equals(c)) ? "X" : stack[--sp];

                    stack[sp++] = a;
                    if (!"X".equals(d)) stack[sp++] = d;
                    stack[sp++] = c;
                    stack[sp++] = a;
                    break;
                case Opcodes.FSTORE:
                    stack[vi.var] = "F";
                    sp--;
                    break;

                case Opcodes.GETFIELD:
                    sp--;
                    pushReturn(fi.desc);
                    break;

                case Opcodes.GETSTATIC:
                    pushReturn(fi.desc);
                    break;

                case Opcodes.INVOKEINTERFACE:
                case Opcodes.INVOKESPECIAL:
                case Opcodes.INVOKESTATIC:
                case Opcodes.INVOKEVIRTUAL:
                case Opcodes.INVOKEDYNAMIC:
                    sp -= midesc.getArgumentTypes().length; // pop arguments
                    if (opcode != Opcodes.INVOKESTATIC && opcode != Opcodes.INVOKEDYNAMIC) {
                        a = stack[--sp]; // pop this
                        // initialize
                        if (a.charAt(0) == 'U') {
                            b = a.substring(a.indexOf(':')+1);
                            for (int i = 0; i < stack.length; i++)
                                if (a.equals(stack[i])) stack[i] = b;
                        }
                    }
                    pushReturn(midesc.getReturnType().getDescriptor());
                    break;

                case Opcodes.ISTORE:
                    stack[vi.var] = "I";
                    sp--;
                    break;

        //simpleEffects[Opcodes.JSR] = new StackEffect(null);

                case Opcodes.LDC:
                    {
                        Object cst = ((LdcInsnNode)anode).cst;
                        if (cst instanceof Integer)             { stack[sp++] = "I"; break; }
                        if (cst instanceof Byte)                { stack[sp++] = "I"; break; }
                        if (cst instanceof Character)           { stack[sp++] = "I"; break; }
                        if (cst instanceof Short)               { stack[sp++] = "I"; break; }
                        if (cst instanceof Boolean)             { stack[sp++] = "I"; break; }
                        if (cst instanceof Float)               { stack[sp++] = "F"; break; }
                        if (cst instanceof Long)                { stack[sp++] = "J"; break; }
                        if (cst instanceof Double)              { stack[sp++] = "D"; break; }
                        if (cst instanceof String)              { stack[sp++] = "Ljava/lang/String;"; break; }
                        if (cst instanceof Type)                { stack[sp++] = ((Type)cst).getSort() == Type.METHOD ? "Ljava/lang/invoke/MethodType;" : "Ljava/lang/Class;"; break; }
                        if (cst instanceof Handle)              { stack[sp++] = "Ljava/lang/invoke/MethodHandle;"; break; }
                        throw new RuntimeException("Unknown constant type "+cst);
                    }

                case Opcodes.LSTORE:
                    stack[vi.var] = "J";
                    stack[vi.var+1] = null;
                    sp--;
                    break;

                case Opcodes.MULTIANEWARRAY:
                    {
                        MultiANewArrayInsnNode m = (MultiANewArrayInsnNode)anode;
                        sp -= m.dims;
                        stack[sp++] = m.desc;
                    }
                    break;

                case Opcodes.NEWARRAY:
                    {
                        int type = ((IntInsnNode)anode).operand;
                        switch (type) {
                            case Opcodes.T_BOOLEAN: stack[sp++] = "[Z"; break;
                            case Opcodes.T_CHAR: stack[sp++] = "[C"; break;
                            case Opcodes.T_FLOAT: stack[sp++] = "[F"; break;
                            case Opcodes.T_DOUBLE: stack[sp++] = "[D"; break;
                            case Opcodes.T_BYTE: stack[sp++] = "[B"; break;
                            case Opcodes.T_SHORT: stack[sp++] = "[S"; break;
                            case Opcodes.T_INT: stack[sp++] = "[I"; break;
                            case Opcodes.T_LONG: stack[sp++] = "[J"; break;
                            default: throw new RuntimeException("NEWARRAY "+type);
                        }
                        break;
                    }

                case Opcodes.NEW:
                    stack[sp++] = "U"+index+':'+tidesc;
                    break;

                case Opcodes.POP2:
                    // [d] c ->
                    c = stack[--sp];
                    d = ("D".equals(c) || "J".equals(c)) ? "X" : stack[--sp];
                    break;
                case Opcodes.POP:
                    sp--;
                    break;
        //simpleEffects[Opcodes.RET] = new StackEffect(null);
                case Opcodes.SWAP:
                    a = stack[--sp];
                    b = stack[--sp];
                    stack[sp++] = a;
                    stack[sp++] = b;
                    break;
                default:
                    throw new RuntimeException("unimplemented opcode " + anode.getOpcode());
            }
        }
    }

    private static class TypeInference {
        Frame[] frames;
        int[] changedStack;
        int changedSp;
        boolean[] changedVec;


        public TypeInference(int size) {
            frames = new Frame[size];

            changedStack = new int[size];
            changedVec = new boolean[size];
        }

        public int next() {
            if (changedSp == 0) return -1;
            int n = changedStack[--changedSp];
            changedVec[n] = false;
            return n;
        }

        public Frame get(int index) {
            return frames[index].clone();
        }

        public void merge(int index, Frame f) {
            Frame slot = frames[index];
            if (slot == null) {
                frames[index] = f.clone();
                mark(index);
                return;
            }
            slot.grow(f.stack.length);
            f.grow(slot.stack.length);

            if (f.sp != slot.sp) throw new RuntimeException(String.format("Insn %d can be reached with stack sizes of %d and %d", index, f.sp-f.sbase, slot.sp-slot.sbase));

            boolean changed = false;
            if (TYPE_TRACE) System.out.printf("MERGE INSN=%d\nOLD=   [%s]\nINPUT= [%s]\n", index, slot.describe(), f.describe());
            for (int i = 0; i < f.sp; i++) {
                String a = f.stack[i];
                String b = slot.stack[i];
                String c = lub(a,b);
                if (!b.equals(c)) {
                    slot.stack[i] = c;
                    changed = true;
                }
            }
            if (TYPE_TRACE) System.out.printf("OUTPUT=[%s]\n%s\n", slot.describe(), changed ? "CHANGED" : "");

            if (changed) mark(index);
        }

        void mark(int index) {
            if (changedVec[index]) return;
            changedVec[index] = true;
            changedStack[changedSp++] = index;
        }

        // computes the least upper bound of two verification types; we use descriptors, but U44:Lbar; for uninitialized(44), 0 for null, and T for TOP
        String lub(String a,String b) {
            // same type?  trivial
            if (a.equals(b)) return a;

            char a0 = a.charAt(0);
            char b0 = b.charAt(0);

            // types other than initialized references cannot validly merge with anything
            if (a0 != '0' && a0 != 'L' && a0 != '[') return "T";
            if (b0 != '0' && b0 != 'L' && b0 != '[') return "T";

            // null is the bottom of what remains
            if (a0 == '0') return b;
            if (b0 == '0') return a;

            // an array and a non-array can merge only to Object
            if (a0 == '[') {
                if (b0 != '[') return "Ljava/lang/Object;";

                // array types are covariant
                String cc = lub(a.substring(1), b.substring(1));
                if (cc.charAt(0) == 'T') // children are not compatible, but we know we have *some* array, which is an object
                    return "Ljava/lang/Object;";
                return '['+cc;
            } else {
                if (b0 != 'L') return "Ljava/lang/Object;";

                // at this point in a real verifier we would load the named classes and use their common superclass
                // lub(P6OpaqueInstance, CodeRef) = SixModelObject
                // punt.
                return "Ljava/lang/Object;";
            }
        }
    }

    private void getTypes() {
        // first, establish a locals size so that we can merge locals and stacks
        nlocal = Type.getArgumentsAndReturnSizes(desc) >> 2;
        if ((access & Opcodes.ACC_STATIC) != 0) nlocal--;

        for (AbstractInsnNode an : insnList) {
            if (an.getType() != AbstractInsnNode.VAR_INSN) continue;
            int size = (an.getOpcode() == Opcodes.DSTORE || an.getOpcode() == Opcodes.LSTORE) ? 2 : 1;
            nlocal = Math.max(nlocal, ((VarInsnNode)an).var + size);
        }

        TypeInference state = new TypeInference(insnList.length);
        Frame initial = new Frame(new String[0], 0, 0);
        initial.grow(nlocal+10);

        int locwp = 0;

        if ((access & Opcodes.ACC_STATIC) == 0) {
            initial.stack[locwp++] = 'L'+tgtype+';';
        }
        for (Type arg : Type.getArgumentTypes(desc)) {
            initial.stack[locwp] = arg.getDescriptor();
            locwp += arg.getSize();
        }
        initial.sp = initial.sbase = nlocal;
        state.merge(0, initial);

        int insn;
        while ((insn = state.next()) >= 0) {
            Frame in = state.get(insn);

            if (TYPE_TRACE) System.out.printf("INFERENCE STEP: insn=%d locals=[%s] stack=[%s]\n", insn, Arrays.toString(Arrays.copyOfRange(in.stack, 0, nlocal)), Arrays.toString(Arrays.copyOfRange(in.stack, in.sbase, in.sp)));
            in.execute(insn, insnList[insn]);

            for (ControlEdge ce : successors[insn]) {
                // assume exceptions follow non-exceptions
                if (ce.exn != null) in.thrown(ce.exn);
                state.merge(ce.to, in);
            }
        }
    }
}
