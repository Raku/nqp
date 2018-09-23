package org.perl6.nqp.truffle.nodes.call;

import com.oracle.truffle.api.frame.FrameSlot;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.CompilerDirectives.CompilationFinal;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import com.oracle.truffle.api.nodes.IndirectCallNode;
import org.perl6.nqp.truffle.sixmodel.TypeObject;
import org.perl6.nqp.truffle.runtime.NQPArguments;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;

import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "callmethod")
public final class NQPCallmethodNode extends NQPObjNode {
    public static final long NAMED = 1;
    public static final long FLAT = 2;

    private final FrameSlot contextSlot;

    @Child private NQPNode invocantNode;
    @Child private NQPNode methodNode;

    @CompilationFinal(dimensions = 1)
    private final long[] argumentFlags;

    @CompilationFinal(dimensions = 1)
    private final String[] argumentNames;

    @Children private final NQPNode[] argumentNodes;

    public NQPCallmethodNode(FrameSlot contextSlot, NQPNode invocantNode, NQPNode methodNode, long[] argumentFlags, String[] argumentNames, NQPNode[] argumentNodes) {
        this.contextSlot = contextSlot;
        this.invocantNode = invocantNode;
        this.methodNode = methodNode;
        this.argumentFlags = argumentFlags;
        this.argumentNames = argumentNames;
        this.argumentNodes = argumentNodes;
    }

    @Deserializer("callmethod")
    public static NQPCallmethodNode deserialize(NQPScope scope, NQPNode invocantNode, NQPNode methodNode, long[] argumentFlags, String[] argumentNames, NQPNode[] argumentNodes) {
        return new NQPCallmethodNode(scope.getContextSlot(), invocantNode, methodNode, argumentFlags, argumentNames, argumentNodes);
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object invocant = invocantNode.execute(frame);
        String method = this.methodNode.executeStr(frame);

        /* TODO - specialization and all the cool inline caching */
        System.out.println("callmethod on: " + invocant.getClass().getName());
        if (invocant instanceof TypeObject) {
            System.out.println("callmethod on TypeObject: " + method);
            TypeObject typeObject = (TypeObject) invocant;
            Object foundMethod = typeObject.stable.methodCache.get(method);
            if (foundMethod != null) {

                Object[] arguments = NQPArguments.unpack(frame, contextSlot, 1, argumentFlags, argumentNames, argumentNodes);
                NQPArguments.setUserArgument(arguments, 0, invocant);

                NQPCodeRef function = (NQPCodeRef) foundMethod;
                NQPArguments.setOuterFrame(arguments, function.getOuterFrame());
                IndirectCallNode callNode = IndirectCallNode.create();
                return callNode.call(function.getCallTarget(), arguments);
            }
            return org.perl6.nqp.truffle.runtime.NQPNull.SINGLETON;
        } else {
            System.out.println("callmethod NYI: " + method);
            return org.perl6.nqp.truffle.runtime.NQPNull.SINGLETON;
        }
    }
}

