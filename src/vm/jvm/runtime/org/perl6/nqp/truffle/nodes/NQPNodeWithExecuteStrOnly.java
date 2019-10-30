package org.perl6.nqp.truffle.nodes;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPBaseNode;
import com.oracle.truffle.api.frame.VirtualFrame;
public class NQPNodeWithExecuteStrOnly extends NQPBaseNode {
    private final NQPNode node;
    public String executeStr(VirtualFrame frame) {
        return node.executeStr(frame); 
    }

    public NQPNodeWithExecuteStrOnly(NQPNode node) {
        this.node = node; 
    }
}

