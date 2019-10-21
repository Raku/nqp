package org.perl6.nqp.truffle.nodes.control;

import com.oracle.truffle.api.CompilerAsserts;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.api.nodes.NodeInfo;

import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNodeWithBoolification;
import org.perl6.nqp.truffle.runtime.NQPNull;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "xor")
public final class NQPXor extends NQPNodeWithBoolification {
    @Children private final NQPNode[] bodyNodes;
    private final long falseNodeIndex;

    @Deserializer
    public NQPXor(long falseNodeIndex, NQPNode[] bodyNodes) {
        this.falseNodeIndex = falseNodeIndex;
        this.bodyNodes = bodyNodes;
    }

    @Override
    @ExplodeLoop
    public Object execute(VirtualFrame frame) {
        CompilerAsserts.compilationConstant(bodyNodes.length);

        int trueCount = 0;


        NQPNode falseNode = null;

        Object lastFalseValue = NQPNull.SINGLETON;
        Object trueValue = null;

        int index = 0;

        for (NQPNode node : bodyNodes) {
            if (index == falseNodeIndex) {
                falseNode = node;
            } else {
                if (trueCount < 2) {
                    Object value = node.execute(frame);
                    // TODO - decontainerization
                    // don't share boolification nodes

                    if (toBoolean(value)) {
                        trueCount++;
                        trueValue = value;
                    } else {
                        lastFalseValue = value;
                    }
                }
            }
        
            index++;
        }

        if (trueCount == 2) {
            if (falseNodeIndex == -1) {
                return NQPNull.SINGLETON;
            } else {
                return falseNode.execute(frame);
            }
        } else if (trueCount == 0) {
            return lastFalseValue;
        } else {
            return trueValue;
        }
    }

    @Override
    public void executeVoid(VirtualFrame frame) {
        execute(frame);
    }
}
