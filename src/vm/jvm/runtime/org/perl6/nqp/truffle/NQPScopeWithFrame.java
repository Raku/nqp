package org.perl6.nqp.truffle;
import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlotKind;
import com.oracle.truffle.api.frame.FrameSlot;

import java.util.HashMap;

import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;
import org.perl6.nqp.truffle.GlobalContext;

public class NQPScopeWithFrame extends NQPScope {

    static class NQPLocalVariable {
        final String name;

        NQPLocalVariable(String name) {
            this.name = name;
        }

        public int hashCode() {
            return name.hashCode();
        }

        public boolean equals(Object obj) {
            if (obj instanceof NQPLocalVariable) {
                return ((NQPLocalVariable) obj).name.equals(name);
            } else {
                return false;
            }
        }
    }

    final FrameDescriptor frameDescriptor;
    final NQPScope outer;

    public NQPScopeWithFrame(FrameDescriptor frameDescriptor, NQPScope outer) {
        this.frameDescriptor = frameDescriptor;
        this.outer = outer;
    }

    public FrameSlot addLexical(String name) {
        return frameDescriptor.addFrameSlot(name, FrameSlotKind.Object);
    }

    @Override
    public FoundLexical findLexical(String name, int depth) {
        FrameSlot found = frameDescriptor.findFrameSlot(name);

        if (found == null) {
            if (outer != null) {
                return outer.findLexical(name, depth + 1);
            } else {
                throw new RuntimeException("Can't find lexical: " + name);
            }
        }
        return new FoundLexical(found, depth);
    }

    @Override
    public FrameSlot addLocal(String name) {
        return frameDescriptor.addFrameSlot(new NQPLocalVariable(name), FrameSlotKind.Object);
    }

    @Override
    public FrameSlot findLocal(String name) {
        FrameSlot found = frameDescriptor.findFrameSlot(new NQPLocalVariable(name));

        if (found == null) {
            throw new RuntimeException("Can't find local: " + name);
        }

        return found;
    }

    public FrameDescriptor getFrameDescriptor() {
        return this.frameDescriptor;
    }

    @Override
    public HLL getCurrentHLL() {
        if (outer != null) {
            return outer.getCurrentHLL();
        } else {
            throw new RuntimeException("Can't get current HLL");
        }
    }

    @Override
    public GlobalContext getGlobalContext() {
        if (outer != null) {
            return outer.getGlobalContext();
        } else {
            throw new RuntimeException("Can't get HLLs");
        }
    }

    @Override
    public NQPCodeRef getCuid(String cuid) {
        if (outer != null) {
            return outer.getCuid(cuid);
        } else {
            throw new RuntimeException("Can't get cuid");
        }
    }

    @Override
    public void addCuid(String cuid, NQPCodeRef codeRef) {
        if (outer != null) {
            outer.addCuid(cuid, codeRef);
        } else {
            throw new RuntimeException("Can't add cuid");
        }
    }
}

