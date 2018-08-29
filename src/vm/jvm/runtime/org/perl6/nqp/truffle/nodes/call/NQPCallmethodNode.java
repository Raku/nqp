package org.perl6.nqp.truffle.nodes.call;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.CompilerDirectives.CompilationFinal;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "callmethod")
public final class NQPCallmethodNode extends NQPObjNode {

    public static final long NAMED = 1;
    public static final long FLAT = 2;

    @Child private NQPNode invocantNode;
    @Child private NQPNode methodNode;

    @CompilationFinal(dimensions = 1)
    private final long[] argumentFlags;

    @CompilationFinal(dimensions = 1)
    private final String[] argumentNames;

    @Children private final NQPNode[] argumentNodes;

    @Deserializer("callmethod")
    public NQPCallmethodNode(NQPNode invocantNode, NQPNode methodNode, long[] argumentFlags, String[] argumentNames, NQPNode[] argumentNodes) {
        this.invocantNode = invocantNode;
        this.methodNode = methodNode;
        this.argumentFlags = argumentFlags;
        this.argumentNames = argumentNames;
        this.argumentNodes = argumentNodes;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        System.out.println("callmethod NYI");
        return org.perl6.nqp.truffle.runtime.NQPNull.SINGLETON;
    }
}

