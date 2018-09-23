package org.perl6.nqp.truffle.nodes.variables;

import com.oracle.truffle.api.frame.FrameSlot;
import com.oracle.truffle.api.frame.FrameUtil;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.frame.Frame;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.DynamicContext;
import org.perl6.nqp.dsl.Deserializer;

import org.perl6.nqp.truffle.NQPScope;

public class NQPDynamicBindDirectNode extends NQPObjNode {
    private final FrameSlot contextSlot;
    private final String name;
    private final NQPNode valueNode;

    public NQPDynamicBindDirectNode(FrameSlot contextSlot, String name, NQPNode valueNode) {
        this.contextSlot = contextSlot;
        this.name = name;
        this.valueNode = valueNode;
    }

    @Deserializer("dynamic-bind-direct")
    public static NQPDynamicBindDirectNode deserializer(NQPScope scope, String name, NQPNode valueNode) {
        FrameSlot contextSlot = scope.getContextSlot();
        return new NQPDynamicBindDirectNode(contextSlot, name, valueNode);
    }

    @Override
    public Object execute(VirtualFrame frame) {
        DynamicContext context = (DynamicContext) FrameUtil.getObjectSafe(frame, contextSlot);
        Object value = valueNode.execute(frame);
        context.bindDirect(name, value);
        return value;
    }
}
