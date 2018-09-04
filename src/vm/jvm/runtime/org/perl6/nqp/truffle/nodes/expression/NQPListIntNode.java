package org.perl6.nqp.truffle.nodes.expression;

import com.oracle.truffle.api.CompilerAsserts;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.api.nodes.NodeInfo;

import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPListInt;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "list_i")
public final class NQPListIntNode extends NQPObjNode {
    @Children private final NQPNode[] bodyNodes;

    @Deserializer
    public NQPListIntNode(NQPNode[] bodyNodes) {
        this.bodyNodes = bodyNodes;
    }

    @Override
    @ExplodeLoop
    public Object execute(VirtualFrame frame) {
        NQPListInt list = new NQPListInt();

        CompilerAsserts.compilationConstant(bodyNodes.length);

        for (NQPNode statement : bodyNodes) {
            list.pushInt(statement.executeInt(frame));
        }

        return list;
    }
}
