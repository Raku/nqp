/*
 * Copyright (c) 2012, 2014, Oracle and/or its affiliates. All rights reserved.
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * The Universal Permissive License (UPL), Version 1.0
 *
 * Subject to the condition set forth below, permission is hereby granted to any
 * person obtaining a copy of this software, associated documentation and/or
 * data (collectively the "Software"), free of charge and under any and all
 * copyright rights in the Software, and any and all patent rights owned or
 * freely licensable by each licensor hereunder covering either (i) the
 * unmodified Software as contributed to or provided by such licensor, or (ii)
 * the Larger Works (as defined below), to deal in both
 *
 * (a) the Software, and
 *
 * (b) any piece of software and/or hardware listed in the lrgrwrks.txt file if
 * one is included with the Software each a "Larger Work" to which the Software
 * is contributed by such licensors),
 *
 * without restriction, including without limitation the rights to copy, create
 * derivative works of, display, perform, and distribute the Software and make,
 * use, sell, offer for sale, import, export, have made, and have sold the
 * Software and the Larger Work(s), and to sublicense the foregoing rights on
 * either these or other terms.
 *
 * This license is subject to the following condition:
 *
 * The above copyright notice and either this complete permission notice or at a
 * minimum a reference to the UPL must be included in all copies or substantial
 * portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

package org.perl6.nqp.truffle;

import org.perl6.nqp.dsl.Predeserializer;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPBlockBodyNode;
import org.perl6.nqp.truffle.nodes.control.NQPBlockNode;
import org.perl6.nqp.truffle.nodes.control.NQPStaticBlockNode;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.truffle.sixmodel.Bootstrapper;

import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlotKind;
import com.oracle.truffle.api.nodes.RootNode;

@SuppressWarnings("unused")
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

