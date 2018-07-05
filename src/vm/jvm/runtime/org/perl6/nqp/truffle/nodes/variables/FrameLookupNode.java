package org.perl6.nqp.truffle.nodes.variables;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.runtime.NQPArguments;
import com.oracle.truffle.api.frame.Frame;
import com.oracle.truffle.api.nodes.ExplodeLoop;

abstract public class FrameLookupNode extends NQPNode {
    final int depth;

    public FrameLookupNode(int depth) {
        this.depth = depth;
    }

    @ExplodeLoop
    protected Frame getFrame(Frame frame) {
        Frame ret = frame;
        for (int i = 0; i < depth; i++) {
              ret = NQPArguments.getOuterFrame(ret.getArguments());
        }  
        return ret;
    }
}
