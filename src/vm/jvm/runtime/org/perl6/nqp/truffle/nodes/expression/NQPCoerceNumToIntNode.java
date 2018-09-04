package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;

import org.perl6.nqp.truffle.runtime.Coercions;

import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(description = "coerce an num to int")
public final class NQPCoerceNumToIntNode extends NQPStrNode {
    @Child private NQPNode argNode;

    @Deserializer("coerce-num-to-int")
    public NQPCoerceNumToIntNode(NQPNode argNode) {
        this.argNode = argNode;
    }


    @Override
    public long executeInt(VirtualFrame frame) {
        return (long)argNode.executeNum(frame);
    }
}
