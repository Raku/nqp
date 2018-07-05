package org.perl6.nqp.truffle;
import com.oracle.truffle.api.frame.FrameSlot;

public class FoundLexical {
    final FrameSlot frameSlot;
    final int depth;

    FoundLexical(FrameSlot frameSlot, int depth) {
        this.frameSlot = frameSlot;
        this.depth = depth;
    }

    public FrameSlot getFrameSlot() {
        return frameSlot;
    }

    public int getDepth() {
        return depth;
    }

}

