package org.perl6.nqp.truffle;
import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlotKind;
import com.oracle.truffle.api.frame.FrameSlot;

public class NQPScopeWithFrame extends NQPScope {
    final FrameDescriptor frameDescriptor;
    final NQPScope outer;

    public NQPScopeWithFrame(FrameDescriptor frameDescriptor, NQPScope outer) {
        this.frameDescriptor = frameDescriptor;
        this.outer = outer;
    }

    public void addLexical(String name) {
        frameDescriptor.addFrameSlot(name, FrameSlotKind.Object);
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

    public FrameDescriptor getFrameDescriptor() {
        return this.frameDescriptor;
    }
}

