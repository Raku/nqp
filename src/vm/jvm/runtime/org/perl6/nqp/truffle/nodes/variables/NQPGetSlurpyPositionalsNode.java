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
package org.perl6.nqp.truffle.nodes.variables;

import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.NodeField;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.FrameSlot;
import com.oracle.truffle.api.frame.FrameSlotKind;
import com.oracle.truffle.api.frame.VirtualFrame;

import org.perl6.nqp.truffle.runtime.NQPArguments;
import org.perl6.nqp.truffle.runtime.NQPList;

import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.nodes.NQPNode;

import org.perl6.nqp.dsl.Deserializer;

import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.truffle.FoundLexical;

public class NQPGetSlurpyPositionalsNode extends NQPObjNode {
    private final FrameSlot slot;
    private final int index;

    public NQPGetSlurpyPositionalsNode(FrameSlot slot, int index) {
        this.slot = slot;
        this.index = index;
    }

    @Deserializer("get-lexical-slurpy-positionals")
    public static NQPGetSlurpyPositionalsNode getLexicalPositional(NQPScope scope, String name, long index) {
        scope.addLexical(name);
        FoundLexical foundLexical = scope.findLexical(name);
        assert foundLexical.getDepth() == 0;
        return new NQPGetSlurpyPositionalsNode(foundLexical.getFrameSlot(), (int) index);
    }

    @Deserializer("get-local-slurpy-positionals")
    public static NQPGetSlurpyPositionalsNode getLocalSlurpyPositionals(NQPScope scope, String name, long index) {
        scope.addLocal(name);
        return new NQPGetSlurpyPositionalsNode(scope.findLocal(name), (int) index);
    }

    @Override
    public Object execute(VirtualFrame frame) {
        NQPList slurpy = new NQPList();
        Object[] args = frame.getArguments();
        int count = NQPArguments.getUserArgumentCount(args);
      
        for (int i = index; i < count; i++) {
            slurpy.push(NQPArguments.getUserArgument(args, i));
        }
        frame.setObject(slot, slurpy);
        return slurpy;
    }
}
