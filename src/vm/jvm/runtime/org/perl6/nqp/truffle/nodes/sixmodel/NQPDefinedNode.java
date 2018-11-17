package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;

import org.perl6.nqp.truffle.runtime.NQPNull;
import org.perl6.nqp.truffle.sixmodel.TypeObject;

import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "defined")
public final class NQPDefinedNode extends NQPIntNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPDefinedNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        Object arg = argNode.execute(frame);
        return ((arg == NQPNull.SINGLETON) || arg instanceof TypeObject) ? 0 : 1;
    }
}
