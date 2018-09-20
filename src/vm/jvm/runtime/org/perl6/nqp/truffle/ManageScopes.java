package org.perl6.nqp.truffle;

import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlot;
import com.oracle.truffle.api.frame.FrameSlotKind;
import com.oracle.truffle.api.nodes.RootNode;


import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPBlockBodyNode;
import org.perl6.nqp.truffle.nodes.control.NQPBlockNode;
import org.perl6.nqp.truffle.nodes.control.NQPStaticBlockNode;

import org.perl6.nqp.truffle.runtime.NQPCodeRef;

import org.perl6.nqp.truffle.MalformedAstException;

import org.perl6.nqp.truffle.sixmodel.Bootstrapper;



import org.perl6.nqp.dsl.Predeserializer;
import org.perl6.nqp.dsl.Deserializer;

public class ManageScopes {
    @Predeserializer("block")
    public static NQPScope createNewScope(NQPScope scope) {
        return new NQPScopeWithFrame(new FrameDescriptor(), scope);
    }

    @Predeserializer("block-static")
    public static NQPScope createNewStaticScope(NQPScope scope) {
        return new NQPScopeWithFrame(new FrameDescriptor(), scope);
    }

    @Deserializer("block")
    public static NQPNode createBlock(NQPScope scope, NQPNode[] children) {
        FrameDescriptor frameDescriptor = ((NQPScopeWithFrame) scope).getFrameDescriptor();
        return new NQPBlockNode(
            new NQPRootNode(null, frameDescriptor, new NQPBlockBodyNode(children))
        );
    }

    @Deserializer("block-static")
    public static NQPNode createBlock(NQPScope scope, String cuid, NQPNode[] children) {
        FrameDescriptor frameDescriptor = ((NQPScopeWithFrame) scope).getFrameDescriptor();
        RootNode rootNode = new NQPRootNode(null, frameDescriptor, new NQPBlockBodyNode(children));
        NQPCodeRef code = new NQPCodeRef(rootNode, null);
        System.out.println("adding cuids");
        scope.addCuid(cuid, code);
        return new NQPStaticBlockNode(code);
    }

    private static FrameSlotKind kindFromType(long type) {
        switch ((int)type) {
            case 0: return FrameSlotKind.Object;
            case 1: return FrameSlotKind.Long;
            case 2: return FrameSlotKind.Double;
            case 3: return FrameSlotKind.Object;
            default: throw new MalformedAstException("Wrong variable type: " + type);
        }
    }


    @Predeserializer("declare-lexical")
    public static NQPScope declareLexical(NQPScope scope, long type, String name) {
        scope.addLexical(name);
        return scope;
    }

    @Deserializer("declare-lexical")
    public static NQPNode createDeclareLexical(NQPScope scope, long type, String name, NQPNode inner) {
        return inner;
    }

    @Predeserializer("declare-local")
    public static NQPScope declareLocal(NQPScope scope, long type, String name) {
        scope.addLocal(name);
        return scope;
    }

    @Deserializer("declare-local")
    public static NQPNode createDeclareLocal(NQPScope scope, long type, String name, NQPNode inner) {
        return inner;
    }

    @Predeserializer("comp-unit")
    public static NQPScope setupCompUnit(NQPScope scope, String hllName) {
        GlobalContext globalContext = new GlobalContext();
        Bootstrapper.bootstrap(globalContext);
        return new NQPCompUnitScope(scope, hllName, globalContext);
    }

    @Deserializer("comp-unit")
    public static NQPNode compUnitContents(NQPScope scope, String hllName, NQPNode content) {
        return content;
    }
}

