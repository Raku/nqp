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
import org.perl6.nqp.truffle.runtime.NQPList;
import org.perl6.nqp.truffle.runtime.NQPHash;

import java.util.Map;
import java.util.Map.Entry;

import com.oracle.truffle.api.CompilerDirectives.CompilationFinal;
import org.perl6.nqp.dsl.Deserializer;


@NodeInfo(shortName = "call")
public final class NQPCallNode extends NQPObjNode {

    public static final long NAMED = 1;
    public static final long FLAT = 2;

    @Child private NQPNode functionNode;

    @Children private final NQPNode[] argumentNodes;

    @CompilationFinal(dimensions = 1)
    private final long[] argumentFlags;

    @CompilationFinal(dimensions = 1)
    private final String[] argumentNames;

    @Child private NQPDispatchNode dispatchNode;

    @Deserializer("call")
    public NQPCallNode(NQPNode functionNode, long[] argumentFlags, String[] argumentNames, NQPNode[] argumentNodes) {
        this.functionNode = functionNode;
        this.argumentFlags = argumentFlags;
        this.argumentNames = argumentNames;
        this.argumentNodes = argumentNodes;
        this.dispatchNode = NQPDispatchNodeGen.create();
    }

    @ExplodeLoop
    @Override
    public Object execute(VirtualFrame frame) {
        Object function = functionNode.execute(frame);

        CompilerAsserts.compilationConstant(argumentNodes.length);

        int count = 0;
        Object[] values = new Object[argumentNodes.length];
        for (int i = 0; i < argumentNodes.length; i++) {
            values[i] = argumentNodes[i].execute(frame);
            if ((argumentFlags[i] & NAMED) != 0) {
            } else if ((argumentFlags[i] & FLAT) != 0) {
                count += ((NQPList) values[i]).elems();
            } else {
                count++;
            }
        }

        Object[] arguments =  NQPArguments.createInitial(count);

        int positional = 0;
        int nameIndex = 0;

        for (int i = 0; i < argumentNodes.length; i++) {
            if ((argumentFlags[i] & FLAT) != 0 && (argumentFlags[i] & NAMED) != 0) {
                NQPHash hash = (NQPHash) values[i];
                for (Map.Entry<String, Object> entry : hash.entrySet()) {
                    NQPArguments.setNamedArgument(arguments, entry.getKey(), entry.getValue());
                }
            } else if ((argumentFlags[i] & NAMED) != 0) {
                NQPArguments.setNamedArgument(arguments, argumentNames[nameIndex++], values[i]);
            } else if ((argumentFlags[i] & FLAT) != 0) {
                NQPList array = (NQPList) values[i];
                for (int j = 0; j < array.elems(); j++) {
                    NQPArguments.setUserArgument(arguments, positional++, array.atpos(j));
                }
            } else {
                NQPArguments.setUserArgument(arguments, positional++, values[i]);
            }
        }

        return dispatchNode.executeDispatch(function, arguments);
    }
}
