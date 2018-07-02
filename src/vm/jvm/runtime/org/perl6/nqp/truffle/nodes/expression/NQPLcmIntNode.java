package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.dsl.Deserializer;

import java.math.BigInteger;

@NodeInfo(shortName = "lcm_i")
public final class NQPLcmIntNode extends NQPNode {
    @Child private NQPNode leftNode;
    @Child private NQPNode rightNode;

    @Deserializer
    public NQPLcmIntNode(NQPNode leftNode, NQPNode rightNode) {
        this.leftNode = leftNode;
        this.rightNode = rightNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        long valA = leftNode.executeInt(frame);
        long valB = rightNode.executeInt(frame);

        return valA * (valB /
                BigInteger.valueOf(valA).gcd(BigInteger.valueOf(valB)).longValue());
    }
}
