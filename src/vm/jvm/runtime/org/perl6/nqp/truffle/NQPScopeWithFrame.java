package org.perl6.nqp.truffle;
import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlotKind;
import com.oracle.truffle.api.frame.FrameSlot;

public class NQPScopeWithFrame extends NQPScope {
    FrameDescriptor frameDescriptor;

    NQPScopeWithFrame(FrameDescriptor frameDescriptor) {
        this.frameDescriptor = frameDescriptor;
    }

    public void addLexical(String name) {
        frameDescriptor.addFrameSlot(name, FrameSlotKind.Object);
    }

    public FrameSlot findLexical(String name) {
        FrameSlot found = frameDescriptor.findFrameSlot(name);
        if (found == null) {
            throw new RuntimeException("Can't find lexical: " + name);
        }
        return found;
    }
}

