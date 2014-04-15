package org.perl6.nqp.jast2bc;

import org.objectweb.asm.ClassVisitor;
import org.objectweb.asm.Handle;
import org.objectweb.asm.Label;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.Type;
import org.objectweb.asm.tree.AbstractInsnNode;
import org.objectweb.asm.tree.FieldInsnNode;
import org.objectweb.asm.tree.IincInsnNode;
import org.objectweb.asm.tree.InsnList;
import org.objectweb.asm.tree.InsnNode;
import org.objectweb.asm.tree.IntInsnNode;
import org.objectweb.asm.tree.InvokeDynamicInsnNode;
import org.objectweb.asm.tree.JumpInsnNode;
import org.objectweb.asm.tree.LabelNode;
import org.objectweb.asm.tree.LdcInsnNode;
import org.objectweb.asm.tree.LineNumberNode;
import org.objectweb.asm.tree.LookupSwitchInsnNode;
import org.objectweb.asm.tree.MethodInsnNode;
import org.objectweb.asm.tree.MethodNode;
import org.objectweb.asm.tree.MultiANewArrayInsnNode;
import org.objectweb.asm.tree.TableSwitchInsnNode;
import org.objectweb.asm.tree.TryCatchBlockNode;
import org.objectweb.asm.tree.TypeInsnNode;
import org.objectweb.asm.tree.VarInsnNode;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

@SuppressWarnings("unchecked") /* our asm is stripped */
class AutosplitMethodWriter extends MethodNode {

    /** Maximum size of a method to leave alone. */
    private static final int MAX_UNSPLIT_METHOD = 65535;
    private static final int MAX_FRAGMENT = 65535;
    private static final int MAX_SWITCH = 256;

    /** True to dump control flow analysis. */
    private static final boolean DEBUG_CONTROL = false;
    private static final boolean DEBUG_FRAGMENT = false;
    private static final boolean TYPE_TRACE = false;

    /** The real instructions (not branches) in program order.  Filled out by {@link getControlFlow()}. */
    private AbstractInsnNode[] insnList;
    private Map<AbstractInsnNode, Integer> insnMap;
    private int[] lineNumbers;

    /** Array of (source, target) pairs.  Filled out by {@link getControlFlow()}.  -1 means from-outside. */
    private ControlEdge[] controlEdges;
    private ControlEdge[][] successors;
    private int[] baselineSize;
    private Frame[] types;

    private int nextJumpNo;
    private int[] jumpNoMap;
    private List<Integer> firstJump = new ArrayList< >();

    private static class ControlEdge {
        public final int from, to;
        public final String exn; // if non-null, replace the stack with this
        public ControlEdge(int f, int t, String e) { from = f; to = t; exn = e; }
    }

    private int nlocal;

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

        int maxsize = 0;
        for (AbstractInsnNode ai = instructions.getFirst(); ai != null; ai = ai.getNext())
            maxsize += insnSize(ai);

        if (maxsize <= MAX_UNSPLIT_METHOD) {
            // hey cool, we don't need to do anything fancy here
            MethodVisitor mw = target.visitMethod(access, name, desc, signature, ((List<String>)exceptions).toArray(new String[0]));
            accept(mw);
            return;
        }

        /* we need to split this thing */

        if (DEBUG_FRAGMENT) System.out.printf("method=%s max=%d\n", name, maxsize);

        splitSwitches();
        getInstructions();
        getControlFlow();
        if (DEBUG_CONTROL) printControlFlow();
        getTypes();
        getBaselineSize();

        if (DEBUG_CONTROL) {
            for (int i = 1; i <= insnList.length; i++)
                System.out.printf("from=%d to=%d frag=%d\n", 0,i,calcFragmentSize(0, i));
        }

        jumpNoMap = new int[insnList.length];
        Arrays.fill(jumpNoMap, -1);
        List<Integer> fragmentSizes = new ArrayList< >();
        int taken = 0;
        while (taken < insnList.length) {
            if (calcFragmentSize(taken, taken+1) > MAX_FRAGMENT)
                throw new RuntimeException("cannot take even one more instruction at "+taken);
            int takeable = bite(taken, 1, insnList.length - taken);

            if (DEBUG_FRAGMENT) System.out.printf("fragment: %d - %d (max %d bytes)\n", taken, taken + takeable - 1, calcFragmentSize(taken, taken+takeable));
            fragmentSizes.add(takeable);
            allocateJumpNrs(taken, taken+takeable);
            taken += takeable;
        }

        taken = 0;
        int fno = 0;
        for (int sz : fragmentSizes) {
            emitFragment(fno++, taken, taken+sz);
            taken += sz;
        }

        becomeWrapper();
        accept(target);
    }

    private int bite(int from, int min_take, int max_take) { /* min_take is known good */
        while (true) {
            if (min_take == max_take) return min_take;
            int mid_take = (min_take + max_take + 1) / 2;

            if (calcFragmentSize(from, from+mid_take) <= MAX_FRAGMENT) {
                min_take = mid_take;
            } else {
                max_take = mid_take-1;
            }
        }
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

    /** Break apart large switch instructions so that they may fit in a fragment. Runs before {@link getInstructions} because it changes instruction sequence. */
    private void splitSwitches() {
        AbstractInsnNode ptr = instructions.getFirst();

        while (ptr != null) {
            int cutoff = 0;
            AbstractInsnNode left = null, right = null;

            switch (ptr.getType()) {
                case AbstractInsnNode.LOOKUPSWITCH_INSN:
                    {
                        LookupSwitchInsnNode lsi = (LookupSwitchInsnNode) ptr;
                        if (lsi.labels.size() <= MAX_SWITCH) break;
                        LookupSwitchInsnNode lsl = new LookupSwitchInsnNode(lsi.dflt, new int[0], new LabelNode[0]);
                        LookupSwitchInsnNode lsr = new LookupSwitchInsnNode(lsi.dflt, new int[0], new LabelNode[0]);

                        int lsisz = lsi.labels.size();
                        lsl.keys.addAll(lsi.keys.subList(0, lsisz / 2));
                        lsr.keys.addAll(lsi.keys.subList(lsisz / 2, lsisz));
                        lsl.labels.addAll(lsi.labels.subList(0, lsisz / 2));
                        lsr.labels.addAll(lsi.labels.subList(lsisz / 2, lsisz));
                        left = lsl;
                        right = lsr;
                        cutoff = (Integer)lsr.keys.get(0);
                    }
                    break;

                case AbstractInsnNode.TABLESWITCH_INSN:
                    {
                        TableSwitchInsnNode lsi = (TableSwitchInsnNode) ptr;
                        if (lsi.labels.size() <= MAX_SWITCH) break;
                        cutoff = (lsi.min + lsi.max) / 2;
                        TableSwitchInsnNode lsl = new TableSwitchInsnNode(lsi.min, cutoff-1, lsi.dflt);
                        TableSwitchInsnNode lsr = new TableSwitchInsnNode(cutoff, lsi.max, lsi.dflt);

                        lsl.labels.addAll(lsi.labels.subList(0, cutoff - lsi.min));
                        lsr.labels.addAll(lsi.labels.subList(cutoff - lsi.min, lsi.max + 1 - lsi.min));
                        left = lsl;
                        right = lsr;
                    }
                    break;

                default: break;
            }

            if (left != null) {
                if (DEBUG_FRAGMENT) System.out.printf("Breaking switch at %d\n", cutoff);

                LabelNode high = new LabelNode();
                instructions.insertBefore(ptr, new InsnNode(Opcodes.DUP));
                instructions.insertBefore(ptr, intNode(cutoff));
                instructions.insertBefore(ptr, new JumpInsnNode(Opcodes.IF_ICMPGE, high));
                instructions.insertBefore(ptr, left);
                instructions.insertBefore(ptr, high);
                instructions.insertBefore(ptr, right);
                instructions.remove(ptr);

                ptr = left;
            } else {
                ptr = ptr.getNext();
            }
        }
    }

    private AbstractInsnNode intNode(int value) {
        return (value >= -1   && value <= 5) ? new InsnNode(Opcodes.ICONST_0 + value) :
               (value >= -128 && value <= 127) ? new IntInsnNode(Opcodes.BIPUSH, value) :
               (value >= -32768 && value <= 32767) ? new IntInsnNode(Opcodes.SIPUSH, value) :
               new LdcInsnNode(value);
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
        List<ControlEdge>[] succTemps = new List[insnList.length];

        successors = new ControlEdge[insnList.length][];


        for (int insnNo = 0; insnNo < insnList.length; insnNo++) {
            AbstractInsnNode node = insnList[insnNo];

            List<ControlEdge> succTemp = new ArrayList< >();
            succTemps[insnNo] = succTemp;

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
        }

        for (TryCatchBlockNode tcb : (List<TryCatchBlockNode>) tryCatchBlocks) {
            int start = insnMap.get(tcb.start);
            int end = insnMap.get(tcb.end);
            int handler = insnMap.get(tcb.handler);
            String type = tcb.type == null ? "java/lang/Throwable" : tcb.type;

            for (int i = start; i < end; i++)
                succTemps[i].add(new ControlEdge(i, handler, type));
        }

        for (int insnNo = 0; insnNo < insnList.length; insnNo++) {
            successors[insnNo] = succTemps[insnNo].toArray(new ControlEdge[0]);
            controlTemp.addAll(succTemps[insnNo]);
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
        simpleEffects[Opcodes.LLOAD] = new StackEffect("", "J");
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
            stack[sp++] = ('L'+ex+';').intern();
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
                    if (vi.var != 0 && ("D" == stack[vi.var-1] || "J" == stack[vi.var-1]))
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
                    stack[sp-1] = ("[" + tidesc).intern();
                    break;
                case Opcodes.ASTORE:
                    stack[vi.var] = stack[--sp];
                    break;
                case Opcodes.CHECKCAST:
                    stack[sp-1] = tidesc.intern();
                    break;
                case Opcodes.DSTORE:
                    stack[vi.var] = "D";
                    stack[vi.var+1] = "T";
                    sp--;
                    break;
                case Opcodes.DUP2:
                    // [b] a -> [b] a [b] a
                    a = stack[--sp];
                    b = ("D" == a || "J" == a) ? "X" : stack[--sp];

                    if (!"X".equals(b)) stack[sp++] = b;
                    stack[sp++] = a;
                    if (!"X".equals(b)) stack[sp++] = b;
                    stack[sp++] = a;
                    break;
                case Opcodes.DUP2_X1:
                    // c [b] a -> [b] a c [b] a
                    a = stack[--sp];
                    b = ("D" == a || "J" == a) ? "X" : stack[--sp];
                    c = stack[--sp];

                    if ("X" != b) stack[sp++] = b;
                    stack[sp++] = a;
                    stack[sp++] = c;
                    if ("X" != b) stack[sp++] = b;
                    stack[sp++] = a;
                    break;
                case Opcodes.DUP2_X2:
                    // [d] c [b] a -> b a d c b a
                    a = stack[--sp];
                    b = ("D" == a || "J" == a) ? "X" : stack[--sp];
                    c = stack[--sp];
                    d = ("D" == c || "J" == c) ? "X" : stack[--sp];

                    if ("X" != b) stack[sp++] = b;
                    stack[sp++] = a;
                    if ("X" != d) stack[sp++] = d;
                    stack[sp++] = c;
                    if ("X" != b) stack[sp++] = b;
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
                    d = ("D" == c || "J" == c) ? "X" : stack[--sp];

                    stack[sp++] = a;
                    if ("X" != d) stack[sp++] = d;
                    stack[sp++] = c;
                    stack[sp++] = a;
                    break;
                case Opcodes.FSTORE:
                    stack[vi.var] = "F";
                    sp--;
                    break;

                case Opcodes.GETFIELD:
                    sp--;
                    pushReturn(fi.desc.intern());
                    break;

                case Opcodes.GETSTATIC:
                    pushReturn(fi.desc.intern());
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
                            b = a.substring(a.indexOf(':')+1).intern();
                            for (int i = 0; i < stack.length; i++)
                                if (a == stack[i]) stack[i] = b;
                        }
                    }
                    pushReturn(midesc.getReturnType().getDescriptor().intern());
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
                    stack[vi.var+1] = "T";
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
                    stack[sp++] = ("U"+index+':'+tidesc).intern();
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
        public Frame[] frames;
        int[] changedQueue;
        int changedHead;
        int changedTail;
        boolean[] changedVec;


        public TypeInference(int size) {
            frames = new Frame[size];

            changedQueue = new int[size+1];
            changedVec = new boolean[size];
        }

        public int next() {
            if (changedHead == changedTail) return -1;
            int n = changedQueue[changedTail++];
            if (changedTail == changedQueue.length) changedTail = 0;
            changedVec[n] = false;
            return n;
        }

        @SuppressWarnings("unused")
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
                if (b != c) {
                    //System.out.printf("%d.%d %s -> %s\n", index, i, b, c);
                    if (DEBUG_FRAGMENT && a != c && b != c) System.out.printf("%d.%d  %s | %s => %s\n", index, i, a, b, c);
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
            changedQueue[changedHead++] = index;
            if (changedHead == changedQueue.length) changedHead = 0;
        }

        // computes the least upper bound of two verification types; we use descriptors, but U44:Lbar; for uninitialized(44), 0 for null, and T for TOP
        String lub(String a,String b) {
            // same type?  trivial
            if (a == b) return a;
            if (a == "T") return a;
            if (b == "T") return b;

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
                return ('['+cc).intern();
            } else {
                if (b0 != 'L') return "Ljava/lang/Object;";

                // at this point in a real verifier we would load the named classes and use their common superclass
                // lub(P6OpaqueInstance, CodeRef) = SixModelObject
                // punt.
                if (a == "Lorg/perl6/nqp/runtime/CodeRef;" && b == "Lorg/perl6/nqp/sixmodel/SixModelObject;") return b;
                if (b == "Lorg/perl6/nqp/runtime/CodeRef;" && a == "Lorg/perl6/nqp/sixmodel/SixModelObject;") return a;

                return "Ljava/lang/Object;";
            }
        }
    }

    @SuppressWarnings("unused")
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
            initial.stack[locwp++] = ('L'+tgtype+';').intern();
        }
        for (Type arg : Type.getArgumentTypes(desc)) {
            initial.stack[locwp] = arg.getDescriptor().intern();
            locwp += arg.getSize();
        }
        initial.sp = initial.sbase = nlocal;
        state.merge(0, initial);

        int insn;
        int step = 0;
        while ((insn = state.next()) >= 0) {
            Frame in = state.frames[insn].clone();

            if (TYPE_TRACE) System.out.printf("INFERENCE STEP: insn=%d [%d] locals=[%s] stack=[%s]\n", insn, insnList[insn].getOpcode(), Arrays.toString(Arrays.copyOfRange(in.stack, 0, nlocal)), Arrays.toString(Arrays.copyOfRange(in.stack, in.sbase, in.sp)));
            in.execute(insn, insnList[insn]);

            for (ControlEdge ce : successors[insn]) {
                // assume exceptions follow non-exceptions
                if (ce.exn != null) in.thrown(ce.exn);
                state.merge(ce.to, in);
            }
            step++;
            if (DEBUG_FRAGMENT && (step % 10000) == 0) System.out.printf("Inference step %d\n", step);
        }
        types = state.frames;

        if (DEBUG_FRAGMENT) {
            Map<String,Integer> histog = new HashMap< >();
            for (Frame fr : types) {
                for (int i = 0; i < fr.sp; i++) {
                    Integer r = histog.get(fr.stack[i]);
                    histog.put(fr.stack[i], r == null ? 1 : 1+r);
                }
            }
            for (Map.Entry<String,Integer> ent : histog.entrySet())
                System.out.printf("%s : %d\n", ent.getKey(), ent.getValue());
        }
    }

    private int insnSize(AbstractInsnNode ai) {
        int opc = ai.getOpcode();
        switch (ai.getType()) {
            case AbstractInsnNode.INSN:
                return 1;
            case AbstractInsnNode.INT_INSN:
                return (opc == Opcodes.SIPUSH) ? 3 : 2;
            case AbstractInsnNode.VAR_INSN:
                {
                    int var = ((VarInsnNode)ai).var;
                    return (var < 4 && opc != Opcodes.RET) ? 1 : (var >= 256) ? 4 : 2;
                }
            case AbstractInsnNode.TYPE_INSN:
                return 3;
            case AbstractInsnNode.FIELD_INSN:
                return 3;
            case AbstractInsnNode.METHOD_INSN:
                return (opc == Opcodes.INVOKEINTERFACE) ? 5 : 3;
            case AbstractInsnNode.INVOKE_DYNAMIC_INSN:
                return 5;
            case AbstractInsnNode.JUMP_INSN:
                return (opc == Opcodes.GOTO || opc == Opcodes.JSR) ? 5 : 8;
            case AbstractInsnNode.LDC_INSN:
                return 3;
            case AbstractInsnNode.IINC_INSN:
                {
                    IincInsnNode ii = (IincInsnNode) ai;
                    return (ii.var >= 256 || ii.incr > 127 || ii.incr < -128) ? 6 : 3;
                }
            case AbstractInsnNode.TABLESWITCH_INSN:
                {
                    TableSwitchInsnNode si = (TableSwitchInsnNode) ai;
                    return 16 + si.labels.size() * 4;
                }
            case AbstractInsnNode.LOOKUPSWITCH_INSN:
                {
                    LookupSwitchInsnNode si = (LookupSwitchInsnNode) ai;
                    return 12 + si.labels.size() * 8;
                }
            case AbstractInsnNode.MULTIANEWARRAY_INSN:
                return 4;
            default:
                return 0;
        }
    }

    // loosely based on the codesizeevaluator; 
    private void getBaselineSize() {
        baselineSize = new int[insnList.length+1];

        int accum=0;

        for (int i = 0; i < insnList.length; i++) {
            AbstractInsnNode ai = insnList[i];
            MethodInsnNode mi;
            int size = insnSize(ai);

            // some of these require special handling
            switch (ai.getOpcode()) {
                case Opcodes.RETURN:
                    // iconst_m1; ireturn
                    size = 2;
                    break;
                case Opcodes.IRETURN:
                case Opcodes.FRETURN:
                case Opcodes.LRETURN:
                case Opcodes.DRETURN:
                case Opcodes.ARETURN:
                    // xstore tmp[0-2]; aload buf; iconst_0; new java/lang/Wrapper; dup; xload tmp; invokespecial; aastore; iconst_m1; ireturn
                    size = 1+(nlocal >= 254 ? 4 : 2)+1+3+1+1+3+1+1+1;
                    break;
                // Opcodes.NEW may be rewritten into aconst_null if a spill is needed, but that doesn't affect the max
                case Opcodes.INVOKESPECIAL:
                    mi = (MethodInsnNode) ai;
                    if ("<init>".equals(mi.name)) {
                        int skeep = 0;
                        Frame f1 = types[i];
                        Frame f2 = types[i+1];
                        String uninit = f1.stack[f2.sp];

                        while (skeep < f1.sp && !uninit.equals(f1.stack[skeep])) skeep++;

                        size = 0;
                        int ltmp = nlocal + 2; /*buf*/
                        // spill everything relevant above skeep into locals
                        for (int j = skeep; j < f1.sp; j++) {
                            if (uninit.equals(f1.stack[j])) continue;
                            size += (ltmp < 256) ? 2 : 4;
                            ltmp += 2;
                        }
                        ltmp++; // keep a copy of the value

                        int argc = Type.getArgumentTypes(mi.desc).length;

                        // newobj, dup, unspill, invokespecial
                        size += 3 + 1 + argc*(ltmp < 256 ? 2 : 4) + 3;

                        // store in locals, including <tmp>
                        for (int j = 0; j < nlocal; j++) {
                            if (uninit.equals(f1.stack[j]))
                                size += 1 + (j < 256 ? 2 : 4);
                        }
                        size += (ltmp < 256 ? 2 : 4);
                        // unspill
                        size += (ltmp < 256 ? 2 : 4) * (f2.sp - skeep);
                    }
                    break;
            }

            baselineSize[i] = accum;
            accum += size;
        }
        baselineSize[insnList.length] = accum;

        if (DEBUG_CONTROL) System.out.println(Arrays.toString(baselineSize));
    }

    private int[][] nonlocalEntryExit(int from, int to) {
        // need to include entry trampolines and exit trampolines
        int[] entryPts = new int[to-from];
        int entryCt = 0;
        boolean[] entryDedup = new boolean[to-from];
        int[] exitPts = new int[insnList.length];
        int exitCt = 0;
        boolean[] exitDedup = new boolean[insnList.length];

        for (ControlEdge ce : controlEdges) {
            boolean from_this = (ce.from >= from && ce.from < to);
            boolean to_this   = (ce.to >= from && ce.to < to);
            if (!from_this && to_this && !entryDedup[ce.to-from]) {
                entryDedup[ce.to-from] = true;
                entryPts[entryCt++] = ce.to;
            }
            if (from_this && !to_this && !exitDedup[ce.to]) {
                exitDedup[ce.to] = true;
                exitPts[exitCt++] = ce.to;
            }
        }

        if (from == 0 && !entryDedup[0]) {
            entryPts[entryCt++] = 0;
        }

        entryPts = Arrays.copyOf(entryPts, entryCt);
        exitPts = Arrays.copyOf(exitPts, exitCt);
        Arrays.sort(entryPts);
        Arrays.sort(exitPts);

        if (DEBUG_CONTROL) {
            System.out.printf("NONLOCAL ENTRY: %s\n", Arrays.toString(entryPts));
            System.out.printf("NONLOCAL EXIT: %s\n", Arrays.toString(exitPts));
        }
        return new int[][] { entryPts, exitPts };
    }

    private int calcFragmentSize(int from, int to) {
        // we have to include the instructions
        int base = baselineSize[to] - baselineSize[from];

        int[][] ee = nonlocalEntryExit(from, to);
        int[] entryPts = ee[0];
        int[] exitPts = ee[1];
        // factor out commonalities from the trampolines
        String[] commonEntry = commonTrampoline(entryPts, null);
        String[] commonExit  = commonTrampoline(exitPts, null);

        // common entry code
        // iload; aload; {dup; ipush; aaload; UNBOX; xstore; }; swap; tableswitch

        int centry = 2;
        for (int i = 0; i < commonEntry.length; i++) {
            centry += localEntrySize(i, commonEntry[i]);
        }
        centry += 13; // swap+tswitch

        // uncommon entry code
        int uentry = 0;

        for (int ept : entryPts) {
            uentry += 4; // dispatch vector
            Frame f = types[ept];
            for (int j = 0; j < f.sp; j++) {
                if (j < commonEntry.length && commonEntry[j].equals(f.stack[j])) {
                    /* no action */
                } else if (j < nlocal) {
                    uentry += localEntrySize(j, f.stack[j]);
                } else {
                    uentry += stackEntrySize(j, f.stack[j]);
                }
            }
            uentry += (nlocal <= 255 ? 2 : 4); // astore
            uentry += 5; // final jump
        }

        // jump insertion
        int uexit = 3;

        // uncommon exit code
        for (int pt : exitPts) {
            Frame f = types[pt];
            for (int j = 0; j < f.sp; j++) {
                if (j < commonExit.length && commonExit[j].equals(f.stack[j])) {
                    /* no action */
                } else if (j < nlocal) {
                    uexit += localExitSize(j, f.stack[j]);
                } else {
                    uexit += stackExitSize(j, f.stack[j]);
                }
            }
            uexit += (nlocal <= 255 ? 2 : 4); // aload in middle
            uexit += 3; // ipush
            uexit += 5; // jump to combiner
        }

        // common exit code
        int cexit = 1; // swap
        for (int i = 0; i < commonExit.length; i++) {
            cexit += localExitSize(i, commonExit[i]);
        }
        cexit += 2; // pop; ireturn

        int total = centry + uentry + base + uexit + cexit;

        if (DEBUG_FRAGMENT) System.out.printf("calcSize: %d-%d : centry(%d) uentry(%d) base(%d) uexit(%d) cexit(%d) total(%d)\n", from, to, centry, uentry, base, uexit, cexit, total);

        return total;
    }

    private int localEntrySize(int loc, String desc) {
        char c0 = desc.charAt(0);
        if (c0 == 'T') return 0; // not loaded
        int sz;
        switch (c0) {
            case '0':
            case 'U':
                // just load as a null
                sz = 1;
                break;
            case 'L':
            case '[':
                // dup, ipush, aaload, checkcast
                sz = (loc < 128) ? 7 : 8;
                break;
            default:
                // dup, ipush, aaload, checkcast, fooValue
                sz = (loc < 128) ? 10 : 11;
                break;
        }
        return sz + ((loc < 256) ? 2 : 4);
    }

    private int localExitSize(int loc, String desc) {
        char c0 = desc.charAt(0);
        if (c0 == 'T' || c0 == '0' || c0 == 'U') return 0; // not saved
        int sz = (loc < 256) ? 2 : 4;
        switch (c0) {
            case 'L':
            case '[':
                // dup, ipush, xload, aastore
                return sz + ((loc < 128) ? 4 : 5);
            default:
                // dup, ipush, new, dup, xload, invokespecial, aastore
                return sz + ((loc < 128) ? 11 : 12);
        }
    }

    private int stackEntrySize(int loc, String desc) {
        char c0 = desc.charAt(0);
        switch (c0) {
            case '0':
            case 'U':
                // just load as a null
                return 1;
            case 'L':
            case '[':
                // aload, ipush, aaload, checkcast
                return (loc < 128) ? 10 : 11;
            default:
                // aload, ipush, aaload, checkcast, fooValue
                return (loc < 128) ? 13 : 14;
        }
    }

    private int stackExitSize(int loc, String desc) {
        char c0 = desc.charAt(0);
        if (c0 == 'T' || c0 == '0' || c0 == 'U') return 1; // not saved
        switch (c0) {
            case 'L':
            case '[':
                // xstore, aload, ipush, xload, aastore
                return (loc < 128) ? 15 : 16;
            default:
                // xstore, aload, ipush, new, dup, xload, invokespecial, aastore
                return (loc < 128) ? 22 : 23;
        }
    }

    private String[] commonTrampoline(int[] points, Set<String> spills) {
        String[] common = null;
        for (int i = 0; i < points.length; i++) {
            Frame f = types[points[i]];
            if (spills != null) {
                for (int j = 0; j < f.sp; j++) spills.add(f.stack[j]);
            }
            if (common == null) {
                common = Arrays.copyOf(f.stack, nlocal);
            } else {
                for (int j = 0; j < common.length; j++) {
                    if (j >= f.sp || !f.stack[j].equals(common[j]))
                        common[j] = "T";
                }
            }
        }
        return common == null ? new String[] { } : common;
    }

    private void allocateJumpNrs(int begin, int end) {
        int[][] ee = nonlocalEntryExit(begin, end);

        int firstEntry = nextJumpNo;
        for (int entry : ee[0]) {
            jumpNoMap[entry] = nextJumpNo++;
        }
        firstJump.add(firstEntry);

        if (DEBUG_FRAGMENT) System.out.printf("Fragment %d-%d has jump numbers %d-%d\n", begin, end, firstEntry, nextJumpNo);
    }

    private void emitFragment(int fno, int begin, int end) {

        MethodVisitor v = target.visitMethod(Opcodes.ACC_STATIC | Opcodes.ACC_PRIVATE | Opcodes.ACC_SYNTHETIC, name+"$f"+fno, "(I[Ljava/lang/Object;)I", null, null);
        v.visitCode();

        int[][] ee = nonlocalEntryExit(begin, end);
        int[] entryPts = ee[0];
        int[] exitPts = ee[1];
        // factor out commonalities from the trampolines
        Set<String> spilledUTypes = new HashSet< >();
        String[] commonEntry = commonTrampoline(entryPts, spilledUTypes);
        String[] commonExit  = commonTrampoline(exitPts, spilledUTypes);

        Label[] entryTrampolineLabels = new Label[entryPts.length];
        for (int i = 0; i < entryPts.length; i++)
            entryTrampolineLabels[i] = new Label();

        Map<Integer, Label> exitTrampolineLabels = new HashMap< >();
        for (int i = 0; i < exitPts.length; i++)
            exitTrampolineLabels.put(exitPts[i], new Label());

        Label[] insnLabels = new Label[end - begin + 1];
        for (int i = 0; i < end - begin + 1; i++)
            insnLabels[i] = new Label();

        // common entry code
        // aload; {dup; ipush; aaload; UNBOX; xstore; }; iload; tableswitch
        v.visitVarInsn(Opcodes.ILOAD, 0);
        v.visitVarInsn(Opcodes.ALOAD, 1);

        for (int i = 0; i < commonEntry.length; i++) {
            localEntryCode(v, i, commonEntry[i]);
        }
        v.visitInsn(Opcodes.SWAP);
        int firstj = firstJump.get(fno);
        v.visitTableSwitchInsn(firstj, firstj + entryPts.length - 1, entryTrampolineLabels[0] /*XXX*/, entryTrampolineLabels);

        int stash = nlocal;
        int scratch = nlocal+1;

        // emit salient tryblocks
        for (TryCatchBlockNode tcbn : (List<TryCatchBlockNode>) tryCatchBlocks) {
            int nstart = Math.max(begin, insnMap.get(tcbn.start));
            int nend   = Math.min(end, insnMap.get(tcbn.end));
            int nhndlr = insnMap.get(tcbn.handler);
            if (nstart >= nend) continue;

            v.visitTryCatchBlock(insnLabels[nstart - begin], insnLabels[nend - begin],
                    exitTrampolineLabels.containsKey(nhndlr) ? exitTrampolineLabels.get(nhndlr) : insnLabels[nhndlr - begin],
                    tcbn.type);
        }

        // uncommon entry code
        for (int ept : entryPts) {
            v.visitLabel(entryTrampolineLabels[jumpNoMap[ept]-firstj]);
            Frame f = types[ept];
            for (int j = 0; j < nlocal; j++) {
                if (j < commonEntry.length && commonEntry[j].equals(f.stack[j]))
                    continue;
                localEntryCode(v, j, f.stack[j]);
            }
            v.visitVarInsn(Opcodes.ASTORE, stash);
            for (int j = nlocal; j < f.sp; j++) {
                stackEntryCode(v, stash, j, f.stack[j]);
            }
            v.visitJumpInsn(Opcodes.GOTO, insnLabels[ept - begin]);
        }

        // we have to include the instructions
        for (int iix = begin; iix < end; iix++) {
            emitFragmentInsn(v, iix, begin, insnLabels, exitTrampolineLabels, spilledUTypes);
        }
        v.visitLabel(insnLabels[end - begin]);

        boolean fallthru = false;
        for (ControlEdge ce : successors[end-1]) {
            if (ce.to == end) {
                fallthru = true;
                break;
            }
        }

        if (fallthru)
            v.visitJumpInsn(Opcodes.GOTO, exitTrampolineLabels.get(end));

        int lineno = -1;
        for (int i = begin; i < end; i++) {
            if (lineNumbers[i] != lineno) {
                lineno = lineNumbers[i];
                v.visitLineNumber(lineno, insnLabels[i-begin]);
            }
        }

        Label commonExitLabel = new Label();

        // uncommon exit code
        for (int pt : exitPts) {
            v.visitLabel(exitTrampolineLabels.get(pt));
            Frame f = types[pt];
            for (int j = f.sp-1; j >= nlocal; j--) {
                stackExitCode(v, stash, scratch, j, f.stack[j]);
            }
            v.visitVarInsn(Opcodes.ALOAD, stash);
            for (int j = 0; j < nlocal; j++) {
                if (j < commonExit.length && commonExit[j].equals(f.stack[j]))
                    continue;

                localExitCode(v, j, f.stack[j]);
            }
            pushInt(v, jumpNoMap[pt]);
            v.visitJumpInsn(Opcodes.GOTO, commonExitLabel);
        }

        // common exit code
        if (exitPts.length > 0) {
            v.visitLabel(commonExitLabel);
            v.visitInsn(Opcodes.SWAP);
            for (int i = 0; i < commonExit.length; i++) {
                localExitCode(v, i, commonExit[i]);
            }
            v.visitInsn(Opcodes.POP);
            v.visitInsn(Opcodes.IRETURN);
        }
        v.visitMaxs(0,0);
        v.visitEnd();
    }

    private String[] box_types = new String[] { "java/lang/Integer", "java/lang/Long", "java/lang/Float", "java/lang/Double" };
    private String[] box_descs = new String[] { "(I)V", "(J)V", "(F)V", "(D)V" };

    private void emitFragmentInsn(MethodVisitor v, int iix, int begin, Label[] insnLabels, Map<Integer,Label> exitTrampolineLabels, Set<String> spilledUTypes) {
        v.visitLabel(insnLabels[iix - begin]);
        AbstractInsnNode ai = insnList[iix];

        // some instructions require very special handling
        int opc = ai.getOpcode();
        if (opc == Opcodes.RETURN) {
            v.visitInsn(Opcodes.ICONST_M1);
            v.visitInsn(Opcodes.IRETURN);
            return;
        }

        if (opc >= Opcodes.IRETURN && opc <= Opcodes.ARETURN) {
            int t = opc - Opcodes.IRETURN;
            v.visitVarInsn(Opcodes.ISTORE + t, nlocal+1);
            v.visitVarInsn(Opcodes.ALOAD, nlocal);
            v.visitInsn(Opcodes.ICONST_0);
            if (opc != Opcodes.ARETURN) {
                v.visitTypeInsn(Opcodes.NEW, box_types[t]);
                v.visitInsn(Opcodes.DUP);
                v.visitVarInsn(Opcodes.ILOAD + t, nlocal+1);
                v.visitMethodInsn(Opcodes.INVOKESPECIAL, box_types[t], "<init>", box_descs[t]);
            } else {
                v.visitVarInsn(Opcodes.ILOAD + t, nlocal+1);
            }
            v.visitInsn(Opcodes.AASTORE);
            v.visitInsn(Opcodes.ICONST_M1);
            v.visitInsn(Opcodes.IRETURN);
            return;
        }

        if (opc == Opcodes.NEW) {
            Frame f = types[iix+1];
            if (spilledUTypes.contains(f.stack[f.sp-1])) {
                v.visitInsn(Opcodes.ACONST_NULL);
                return;
            }
        }

        if (opc == Opcodes.INVOKESPECIAL) {
            MethodInsnNode mi = (MethodInsnNode)ai;
            Frame f1 = types[iix];
            Frame f2 = types[iix+1];
            String uninit = f1.stack[f2.sp];
            if (mi.name.equals("<init>") && spilledUTypes.contains(uninit)) {
                if (!f2.stack[f2.sp-1].equals(uninit)) throw new RuntimeException("general case of INVOKESPECIAL spill not implemented");
                for (int i = 0; i < f2.sp-1; i++) if (f2.stack[i].equals(uninit)) throw new RuntimeException("general case of INVOKESPECIAL spill not implemented");

                int ltmp = nlocal+1;
                int argc = Type.getArgumentTypes(mi.desc).length;
                int[] spillarg = new int[argc];

                for (int d = 0; d < argc; d++) {
                    char ty0 = f1.stack[f1.sp-d-1].charAt(0);

                    spillarg[d] = ltmp;
                    v.visitVarInsn(ty0 == 'D' ? Opcodes.DSTORE : ty0 == 'J' ? Opcodes.LSTORE : ty0 == 'I' ? Opcodes.ISTORE : ty0 == 'F' ? Opcodes.FSTORE : Opcodes.ASTORE, ltmp);
                    ltmp += (ty0 == 'D' || ty0 == 'J') ? 2 : 1;
                }
                v.visitInsn(Opcodes.POP2);
                v.visitTypeInsn(Opcodes.NEW, mi.owner);
                v.visitInsn(Opcodes.DUP);

                for (int d = argc-1; d >= 0; d++) {
                    char ty0 = f1.stack[f1.sp-d-1].charAt(0);
                    v.visitVarInsn(ty0 == 'D' ? Opcodes.DLOAD : ty0 == 'J' ? Opcodes.LLOAD : ty0 == 'I' ? Opcodes.ILOAD : ty0 == 'F' ? Opcodes.FLOAD : Opcodes.ALOAD, spillarg[d]);
                }

                v.visitMethodInsn(Opcodes.INVOKESPECIAL, mi.owner, mi.name, mi.desc);
                return;
            }
        }

        // all other instructions can be processed normally, perhaps with some control-flow fudging

        switch (ai.getType()) {
            case AbstractInsnNode.JUMP_INSN:
                {
                    JumpInsnNode ji = (JumpInsnNode)ai;
                    v.visitJumpInsn(opc, mapLabel(ji.label, begin, insnLabels, exitTrampolineLabels));
                    break;
                }
            case AbstractInsnNode.TABLESWITCH_INSN:
                {
                    TableSwitchInsnNode si = (TableSwitchInsnNode)ai;
                    Label[] mapped = new Label[si.labels.size()];
                    for (int i = 0; i < mapped.length; i++)
                        mapped[i] = mapLabel((LabelNode)si.labels.get(i), begin, insnLabels, exitTrampolineLabels);
                    v.visitTableSwitchInsn(si.min, si.max, mapLabel(si.dflt, begin, insnLabels, exitTrampolineLabels), mapped);
                    break;
                }
            case AbstractInsnNode.LOOKUPSWITCH_INSN:
                {
                    LookupSwitchInsnNode si = (LookupSwitchInsnNode)ai;
                    Label[] mapped = new Label[si.labels.size()];
                    for (int i = 0; i < mapped.length; i++)
                        mapped[i] = mapLabel((LabelNode)si.labels.get(i), begin, insnLabels, exitTrampolineLabels);
                    int[] keys = new int[si.keys.size()];
                    for (int i = 0; i < keys.length; i++)
                        keys[i] = (int)si.keys.get(i);
                    v.visitLookupSwitchInsn(mapLabel(si.dflt, begin, insnLabels, exitTrampolineLabels), keys, mapped);
                    break;
                }
            default:
                ai.accept(v);
                break;
        }
    }

    private Label mapLabel(LabelNode ln, int begin, Label[] insnLabels, Map<Integer,Label> exitTrampolineLabels) {
        int lni = insnMap.get(ln);
        if (exitTrampolineLabels.containsKey(lni))
            return exitTrampolineLabels.get(lni);

        return insnLabels[lni - begin];
    }


    private void localEntryCode(MethodVisitor v, int loc, String desc) {
        char c0 = desc.charAt(0);
        if (c0 == 'T') return; // not loaded
        switch (c0) {
            case '0':
            case 'U':
                // just load as a null
                v.visitInsn(Opcodes.ACONST_NULL);
                break;
            case 'L':
            case '[':
                // dup, ipush, aaload, checkcast
                v.visitInsn(Opcodes.DUP);
                pushInt(v, loc);
                v.visitInsn(Opcodes.AALOAD);
                if (!desc.equals("Ljava/lang/Object;")) v.visitTypeInsn(Opcodes.CHECKCAST, c0 == '[' ? desc : desc.substring(1, desc.length()-1));
                break;
            default:
                // dup, ipush, aaload, checkcast, fooValue
                v.visitInsn(Opcodes.DUP);
                pushInt(v, loc);
                v.visitInsn(Opcodes.AALOAD);
                unbox(v, c0);
                v.visitVarInsn( c0=='I' ? Opcodes.ISTORE : c0=='J' ? Opcodes.LSTORE : c0=='F' ? Opcodes.FSTORE : Opcodes.DSTORE, loc );
                return;
        }
        v.visitVarInsn(Opcodes.ASTORE, loc);
    }

    private void pushInt(MethodVisitor v, int value) {
        if (value >= -1 && value <= 5)
            v.visitInsn(Opcodes.ICONST_0 + value);
        else if (value >= -128 && value <= 127)
            v.visitIntInsn(Opcodes.BIPUSH, value);
        else if (value >= -32768 && value <= 32767)
            v.visitIntInsn(Opcodes.SIPUSH, value);
        else
            v.visitLdcInsn(value);
    }

    private void unbox(MethodVisitor v, char c0) {
        String c,m,d;
        switch (c0) {
            case 'I': c = "java/lang/Integer"; m = "intValue";    d = "()I"; break;
            case 'J': c = "java/lang/Long";    m = "longValue";   d = "()J"; break;
            case 'F': c = "java/lang/Float";   m = "floatValue";  d = "()F"; break;
            case 'D': c = "java/lang/Double";  m = "doubleValue"; d = "()D"; break;
            default: throw new IllegalArgumentException();
        }
        v.visitTypeInsn(Opcodes.CHECKCAST, c);
        v.visitMethodInsn(Opcodes.INVOKEVIRTUAL, c, m, d);
    }

    private void localExitCode(MethodVisitor v, int loc, String desc) {
        char c0 = desc.charAt(0);
        if (c0 == 'T' || c0 == '0' || c0 == 'U') return; // not saved
        switch (c0) {
            case 'L':
            case '[':
                v.visitInsn(Opcodes.DUP);
                pushInt(v, loc);
                v.visitVarInsn(Opcodes.ALOAD, loc);
                v.visitInsn(Opcodes.AASTORE);
                break;
            default:
                v.visitInsn(Opcodes.DUP);
                pushInt(v, loc);
                {
                    String ty;
                    int load;
                    switch (c0) {
                        case 'I': ty = "java/lang/Integer"; load = Opcodes.ILOAD; break;
                        case 'J': ty = "java/lang/Long"; load = Opcodes.LLOAD; break;
                        case 'F': ty = "java/lang/Float"; load = Opcodes.FLOAD; break;
                        case 'D': ty = "java/lang/Double"; load = Opcodes.DLOAD; break;
                        default: throw new IllegalArgumentException(desc);
                    }

                    v.visitTypeInsn(Opcodes.NEW, ty);
                    v.visitInsn(Opcodes.DUP);
                    v.visitVarInsn(load, loc);
                    v.visitMethodInsn(Opcodes.INVOKESPECIAL, ty, "<init>", "("+c0+")V");
                }
                v.visitInsn(Opcodes.AASTORE);
                break;
        }
    }

    private void stackEntryCode(MethodVisitor v, int stash, int loc, String desc) {
        char c0 = desc.charAt(0);
        switch (c0) {
            case '0':
            case 'U':
                v.visitInsn(Opcodes.ACONST_NULL);
                break;
            case 'L':
            case '[':
                v.visitVarInsn(Opcodes.ALOAD, stash);
                pushInt(v, loc);
                v.visitInsn(Opcodes.AALOAD);
                if (!desc.equals("Ljava/lang/Object;")) v.visitTypeInsn(Opcodes.CHECKCAST, c0 == '[' ? desc : desc.substring(1, desc.length()-1));
                break;
            default:
                v.visitVarInsn(Opcodes.ALOAD, stash);
                pushInt(v, loc);
                v.visitInsn(Opcodes.AALOAD);
                unbox(v, c0);
                break;
        }
    }

    private void stackExitCode(MethodVisitor v, int stash, int scratch, int loc, String desc) {
        char c0 = desc.charAt(0);
        if (c0 == 'T' || c0 == '0' || c0 == 'U') {
            v.visitInsn(Opcodes.POP);
            return;
        }
        String ty;
        int load, store;
        switch (c0) {
            case 'L':
            case '[':
                v.visitVarInsn(Opcodes.ASTORE, scratch);
                v.visitVarInsn(Opcodes.ALOAD, stash);
                pushInt(v, loc);
                v.visitVarInsn(Opcodes.ALOAD, scratch);
                v.visitInsn(Opcodes.AASTORE);
                return;
            case 'I': ty = "java/lang/Integer"; load = Opcodes.ILOAD; store = Opcodes.ISTORE; break;
            case 'J': ty = "java/lang/Long"; load = Opcodes.LLOAD; store = Opcodes.LSTORE; break;
            case 'F': ty = "java/lang/Float"; load = Opcodes.FLOAD; store = Opcodes.FSTORE; break;
            case 'D': ty = "java/lang/Double"; load = Opcodes.DLOAD; store = Opcodes.DSTORE; break;
            default: throw new IllegalArgumentException(desc);
        }

        v.visitVarInsn(store, scratch);
        v.visitVarInsn(Opcodes.ALOAD, stash);
        pushInt(v, loc);
        v.visitTypeInsn(Opcodes.NEW, ty);
        v.visitInsn(Opcodes.DUP);
        v.visitVarInsn(load, scratch);
        v.visitMethodInsn(Opcodes.INVOKESPECIAL, ty, "<init>", "("+c0+")V");
        v.visitInsn(Opcodes.AASTORE);
    }

    private void becomeWrapper() {
        int maxStack = 0;
        for (Frame f : types)
            maxStack = Math.max(maxStack, f.sp);

        tryCatchBlocks = null;
        localVariables = null;
        instructions.clear();

        // allocate the scratchpad
        instructions.add(intNode(maxStack));
        instructions.add(new TypeInsnNode(Opcodes.ANEWARRAY, "java/lang/Object"));
        // move the arguments onto the scratchpad
        int ltmp = 0;
        if ((access & Opcodes.ACC_STATIC) == 0) ltmp += saveArg(instructions, ltmp, Type.getType(Object.class));
        for (Type at : Type.getArgumentTypes(desc)) ltmp += saveArg(instructions, ltmp, at);

        instructions.add(new VarInsnNode(Opcodes.ASTORE, 0));
        instructions.add(intNode(0));
        instructions.add(new VarInsnNode(Opcodes.ISTORE, 1));

        LabelNode loop = new LabelNode();
        instructions.add(loop);

        for (int i = firstJump.size() - 1; i >= 0; i--) {
            LabelNode not_my_problem = new LabelNode();
            instructions.add(new VarInsnNode(Opcodes.ILOAD, 1));
            instructions.add(intNode(firstJump.get(i)));
            instructions.add(new JumpInsnNode(Opcodes.IF_ICMPLT, not_my_problem));
            instructions.add(new VarInsnNode(Opcodes.ILOAD, 1));
            instructions.add(new VarInsnNode(Opcodes.ALOAD, 0));
            instructions.add(new MethodInsnNode(Opcodes.INVOKESTATIC, tgtype, name + "$f" + i, "(I[Ljava/lang/Object;)I"));
            instructions.add(new VarInsnNode(Opcodes.ISTORE, 1));
            instructions.add(new JumpInsnNode(Opcodes.GOTO, loop));
            instructions.add(not_my_problem);
        }

        // time for return
        String rty = null, unboxName = null, unboxDesc = null;
        int retinst;
        Type rtyty = Type.getReturnType(desc);
        switch (rtyty.getSort()) {
            case Type.VOID:
                retinst = Opcodes.RETURN; break;
            case Type.BOOLEAN:
            case Type.CHAR:
            case Type.INT:
            case Type.SHORT:
            case Type.BYTE:
                retinst = Opcodes.IRETURN; rty = "java/lang/Integer"; unboxName = "intValue"; unboxDesc = "()I"; break;
            case Type.LONG:
                retinst = Opcodes.LRETURN; rty = "java/lang/Long"; unboxName = "longValue"; unboxDesc = "()J"; break;
            case Type.FLOAT:
                retinst = Opcodes.FRETURN; rty = "java/lang/Float"; unboxName = "floatValue"; unboxDesc = "()F"; break;
            case Type.DOUBLE:
                retinst = Opcodes.DRETURN; rty = "java/lang/Double"; unboxName = "doubleValue"; unboxDesc = "()D"; break;
            default:
                retinst = Opcodes.ARETURN; rty = rtyty.getInternalName(); break;
        }

        if (rty != null) {
            instructions.add(new VarInsnNode(Opcodes.ALOAD, 0));
            instructions.add(new InsnNode(Opcodes.ICONST_0));
            instructions.add(new InsnNode(Opcodes.AALOAD));
            instructions.add(new TypeInsnNode(Opcodes.CHECKCAST, rty));
            if (unboxName != null)
                instructions.add(new MethodInsnNode(Opcodes.INVOKEVIRTUAL, rty, unboxName, unboxDesc));
        }
        instructions.add(new InsnNode(retinst));
    }

    private int saveArg(InsnList il, int ltmp, Type at) {
        il.add(new InsnNode(Opcodes.DUP));
        il.add(intNode(ltmp));
        int opc;
        String ty = null, desc = null;
        switch (at.getSort()) {
            case Type.BOOLEAN:
            case Type.CHAR:
            case Type.INT:
            case Type.SHORT:
            case Type.BYTE:
                opc = Opcodes.ILOAD; ty = "java/lang/Integer"; desc = "(I)V"; break;
            case Type.LONG:
                opc = Opcodes.LLOAD; ty = "java/lang/Long"; desc = "(J)V"; break;
            case Type.FLOAT:
                opc = Opcodes.FLOAD; ty = "java/lang/Float"; desc = "(F)V"; break;
            case Type.DOUBLE:
                opc = Opcodes.DLOAD; ty = "java/lang/Double"; desc = "(D)V"; break;
            default:
                opc = Opcodes.ALOAD; break;
        }

        if (ty != null) {
            il.add(new TypeInsnNode(Opcodes.NEW, ty));
            il.add(new InsnNode(Opcodes.DUP));
        }
        il.add(new VarInsnNode(opc, ltmp));
        if (ty != null) il.add(new MethodInsnNode(Opcodes.INVOKESPECIAL, ty, "<init>", desc));
        il.add(new InsnNode(Opcodes.AASTORE));
        return at.getSize();
    }
}
