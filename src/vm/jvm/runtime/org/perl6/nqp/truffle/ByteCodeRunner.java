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

import org.perl6.nqp.dsl.AstBuilder;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.runtime.DynamicContext;

import com.oracle.truffle.api.Truffle;
import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.nodes.RootNode;
import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlot;

import java.io.IOException;
import java.io.FileInputStream;
import java.nio.channels.FileChannel;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@AstBuilder(
    nodeClass = NQPNode.class,
    nodesClass = NQPNode[].class,
    intClass = long.class,
    intsClass = long[].class,
    numClass = double.class,
    strClass = String.class,
    strsClass = String[].class,
    scopeClass = NQPScope.class,
    contextSlotClass = FrameSlot.class,
    globalContextClass = GlobalContext.class,
    hllClass = HLL.class,
    tastToByteCode = false,
    tastToNode = false,
    byteCodeToNode = true)
abstract class ByteCodeRunner {
    abstract protected NQPNode byteCodeToNode(ByteCodeReader reader, NQPScope scope);

    protected NQPNode[] byteCodeToNodeArray(ByteCodeReader reader, NQPScope scope) {
        int count = reader.readCount();
        NQPNode[] nodes = new NQPNode[count];
        for (int i = 0; i < count; i++) {
            nodes[i] = byteCodeToNode(reader, scope);
        }
        return nodes;
    }

    public void runByteCode(GlobalContext globalContext, DynamicContext context, String input) {
        try {
            FileInputStream stream = new FileInputStream(input);
            FileChannel channel = stream.getChannel();

            ByteBuffer buffer = ByteBuffer.allocate((int)channel.size());
            channel.read(buffer);
            buffer.rewind();
            buffer.order(ByteOrder.LITTLE_ENDIAN);

            ByteCodeReader reader = new ByteCodeReader(buffer);

            if (!reader.hasMagicString()) {
                throw new RuntimeException("Bytecode stream corrupt (missing magic string)");
            }

            long version = reader.readVersion();

            FrameDescriptor frameDescriptor = new FrameDescriptor();
            RootNode rootNode = new NQPRootNode(null, frameDescriptor, byteCodeToNode(reader, new NQPScopeWithFrame(frameDescriptor, new NQPScopeWithGlobalContext(globalContext))));

            CallTarget callTarget = Truffle.getRuntime().createCallTarget(rootNode);
            callTarget.call(context);

            channel.close();
            stream.close();
        } catch (IOException e) {
            System.err.println("Can't read bytecode: " + e.getMessage());
        }
    }
}
