package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;

import org.perl6.nqp.truffle.runtime.Coercions;

import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(description = "coerce an int to str")
public final class NQPCoerceNumToStrNode extends NQPStrNode {
    @Child private NQPNode argNode;

    @Deserializer("coerce-num-to-str")
    public NQPCoerceNumToStrNode(NQPNode argNode) {
        this.argNode = argNode;
    }


    @Override
    public String executeStr(VirtualFrame frame) {
        return Coercions.numToStr(argNode.executeNum(frame));
    }
}
