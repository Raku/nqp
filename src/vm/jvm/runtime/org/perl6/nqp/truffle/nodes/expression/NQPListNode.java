package org.perl6.nqp.truffle.nodes.expression;

import com.oracle.truffle.api.CompilerAsserts;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.api.nodes.NodeInfo;

import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.runtime.NQPList;

@NodeInfo(shortName = "list")
public final class NQPListNode extends NQPNode {
    @Children private final NQPNode[] bodyNodes;

    public NQPListNode(NQPNode[] bodyNodes) {
        this.bodyNodes = bodyNodes;
    }

    @Override
    @ExplodeLoop
    public Object execute(VirtualFrame frame) {
        NQPList list = new NQPList();

        CompilerAsserts.compilationConstant(bodyNodes.length);

        for (NQPNode statement : bodyNodes) {
            list.push(statement.execute(frame));
        }

        return list;
    }
}
