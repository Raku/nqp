/*
 * Copyright (c) 2012, 2015, Oracle and/or its affiliates. All rights reserved.
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
package org.perl6.nqp.truffle.nodes.call;

import com.oracle.truffle.api.CompilerAsserts;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.instrumentation.StandardTags;
import com.oracle.truffle.api.instrumentation.Tag;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.api.nodes.NodeInfo;

import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;

import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.truffle.runtime.NQPArguments;
import com.oracle.truffle.api.CompilerDirectives.CompilationFinal;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "invoke")
public final class NQPInvokeNode extends NQPObjNode {

    @Child private NQPNode functionNode;

    @Children private final NQPNode[] argumentNodes;

    private final int positionalCount;

    @CompilationFinal(dimensions = 1)
    private final String[] argumentNames;

    @Child private NQPDispatchNode dispatchNode;

    @Deserializer("call")
    public NQPInvokeNode(NQPNode functionNode, String[] argumentNames, NQPNode[] argumentNodes) {
        this.functionNode = functionNode;
        this.argumentNames = argumentNames;
        this.argumentNodes = argumentNodes;
        this.dispatchNode = NQPDispatchNodeGen.create();

        int count = 0;

        for (String name : argumentNames) {
            if (name == "") {
                count++;
            }
        }

        positionalCount = count;
    }

    @ExplodeLoop
    @Override
    public Object execute(VirtualFrame frame) {
        Object function = functionNode.execute(frame);

        /*
         * The number of arguments is constant for one invoke node. During compilation, the loop is
         * unrolled and the execute methods of all arguments are inlined. This is triggered by the
         * ExplodeLoop annotation on the method. The compiler assertion below illustrates that the
         * array length is really constant.
         */
        CompilerAsserts.compilationConstant(argumentNodes.length);

        Object[] arguments =  NQPArguments.createInitial(positionalCount);

        int positional = 0;
        for (int i = 0; i < argumentNodes.length; i++) {
            if (argumentNames[i] == "") {
                NQPArguments.setUserArgument(arguments, positional++, argumentNodes[i].execute(frame));
            } else {
                NQPArguments.setNamedArgument(arguments, argumentNames[i], argumentNodes[i].execute(frame));
            }
        }
        return dispatchNode.executeDispatch(function, arguments);
    }
}
