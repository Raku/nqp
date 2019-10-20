package org.perl6.nqp.truffle.nodes.expression;

import com.oracle.truffle.api.CompilerAsserts;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.api.nodes.NodeInfo;

import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.sixmodel.reprs.VMArrayInstance;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "list")
public final class NQPListNode extends NQPObjNode {
    private final HLL hll;
    @Children private final NQPNode[] bodyNodes;

    @Deserializer
    public NQPListNode(HLL hll, NQPNode[] bodyNodes) {
        this.hll = hll;
        this.bodyNodes = bodyNodes;
    }

    @Override
    @ExplodeLoop
    public Object execute(VirtualFrame frame) {
        VMArrayInstance list = (VMArrayInstance) hll.listType.stable.repr.allocate();

        CompilerAsserts.compilationConstant(bodyNodes.length);

        for (NQPNode statement : bodyNodes) {
            list.push(statement.execute(frame));
        }

        return list;
    }
}
