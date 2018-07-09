package org.perl6.nqp.truffle;

import com.oracle.truffle.api.Truffle;
import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.nodes.RootNode;
import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlot;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPBlockBodyNode;
import org.perl6.nqp.truffle.nodes.control.NQPBlockNode;

import org.perl6.nqp.truffle.nodes.control.NQPIfNode;

import org.perl6.nqp.truffle.nodes.variables.NQPReadLocalVariableNode;
import org.perl6.nqp.truffle.nodes.variables.NQPBindLocalVariableNode;
import org.perl6.nqp.truffle.nodes.variables.NQPGetPositionalNode;
import org.perl6.nqp.truffle.NQPRootNode;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.dsl.AstBuilder;

import org.perl6.nqp.dsl.Predeserializer;
import org.perl6.nqp.dsl.Deserializer;

@AstBuilder(
    nodeClass = NQPNode.class,
    nodesClass = NQPNode[].class,
    intClass = long.class,
    numClass = double.class,
    strClass = String.class,
    scopeClass = NQPScope.class
)

abstract class TruffleCompiler {
    public void run(SixModelObject node, ThreadContext tc) {
        FrameDescriptor frameDescriptor = new FrameDescriptor();
        RootNode rootNode = new NQPRootNode(null, frameDescriptor, tastToNode(node, new NQPScopeWithFrame(frameDescriptor, null), tc));


        CallTarget callTarget = Truffle.getRuntime().createCallTarget(rootNode);
        callTarget.call();
    }

    protected NQPNode[] tastToNodeArray(SixModelObject node, int from, NQPScope scope, ThreadContext tc) {
        int elems = (int) node.elems(tc);
        NQPNode children[] = new NQPNode[elems - from];
        for (int i = from; i < elems; i++) {
           children[i-from] =  tastToNode(node.at_pos_boxed(tc, i), scope, tc);
        }
        return children;
    }

    abstract protected NQPNode tastToNode(SixModelObject node, NQPScope scope, ThreadContext tc);

    @Predeserializer("block")
    public static NQPScope createNewScope(NQPScope scope) {
        FrameDescriptor frameDescriptor = new FrameDescriptor();
        return new NQPScopeWithFrame(frameDescriptor, scope);
    }

    @Deserializer("block")
    public static NQPNode createBlock(NQPScope scope, NQPNode[] children) {
        FrameDescriptor frameDescriptor = ((NQPScopeWithFrame) scope).getFrameDescriptor();
        return new NQPBlockNode(
            new NQPRootNode(null, frameDescriptor, new NQPBlockBodyNode(children))
        );
    }

    @Predeserializer("declare-lexical")
    public static NQPScope declareLexical(NQPScope scope, String name) {
        scope.addLexical(name);
        return scope;
    }

    @Deserializer("declare-lexical")
    public static NQPNode createDeclareLexical(NQPScope scope, String name, NQPNode inner) {
        return inner;
    }
}

