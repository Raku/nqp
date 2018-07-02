package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.dsl.Deserializer;

import java.math.BigInteger;

@NodeInfo(shortName = "gcd_i")
public final class NQPGcdIntNode extends NQPNode {
    @Child private NQPNode leftNode;
    @Child private NQPNode rightNode;

    @Deserializer
    public NQPGcdIntNode(NQPNode leftNode, NQPNode rightNode) {
        this.leftNode = leftNode;
        this.rightNode = rightNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return BigInteger.valueOf(leftNode.executeInt(frame))
                .gcd(BigInteger.valueOf(rightNode.executeInt(frame)))
                .longValue();
    }
}
