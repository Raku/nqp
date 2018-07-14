package org.perl6.nqp.truffle;

import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlot;

import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPBlockBodyNode;
import org.perl6.nqp.truffle.nodes.control.NQPBlockNode;

import org.perl6.nqp.dsl.Predeserializer;
import org.perl6.nqp.dsl.Deserializer;

public class ManageScopes {
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

    @Predeserializer("declare-local")
    public static NQPScope declareLocal(NQPScope scope, String name) {
        scope.addLocal(name);
        return scope;
    }

    @Deserializer("declare-local")
    public static NQPNode createDeclareLocal(NQPScope scope, String name, NQPNode inner) {
        return inner;
    }
}

