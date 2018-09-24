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

import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.truffle.runtime.HLL;

import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlotKind;
import com.oracle.truffle.api.frame.FrameSlot;


public class NQPScopeWithFrame extends NQPScope {
    static class ContextSlot {
        public static final ContextSlot SINGLETON = new ContextSlot();
        private ContextSlot() {}
    }

    static class NQPLocalVariable {
        final String name;

        NQPLocalVariable(String name) {
            this.name = name;
        }

        public int hashCode() {
            return name.hashCode();
        }

        public boolean equals(Object obj) {
            if (obj instanceof NQPLocalVariable) {
                return ((NQPLocalVariable) obj).name.equals(name);
            } else {
                return false;
            }
        }
    }

    private final FrameDescriptor frameDescriptor;
    private final NQPScope outer;

    public NQPScopeWithFrame(FrameDescriptor frameDescriptor, NQPScope outer) {
        this.frameDescriptor = frameDescriptor;
        this.outer = outer;
    }

    public FrameSlot addLexical(String name) {
        return frameDescriptor.addFrameSlot(name, FrameSlotKind.Object);
    }

    @Override
    public FoundLexical findLexical(String name, int depth) {
        FrameSlot found = frameDescriptor.findFrameSlot(name);

        if (found == null) {
            return outer.findLexical(name, depth + 1);
        }
        return new FoundLexical(found, depth);
    }

    @Override
    public FrameSlot addLocal(String name) {
        return frameDescriptor.addFrameSlot(new NQPLocalVariable(name), FrameSlotKind.Object);
    }

    @Override
    public FrameSlot findLocal(String name) {
        FrameSlot found = frameDescriptor.findFrameSlot(new NQPLocalVariable(name));

        if (found == null) {
            throw new RuntimeException("Can't find local: " + name);
        }

        return found;
    }

    public FrameDescriptor getFrameDescriptor() {
        return frameDescriptor;
    }

    @Override
    public FrameSlot getContextSlot() {
        return frameDescriptor.findOrAddFrameSlot(ContextSlot.SINGLETON, FrameSlotKind.Object);
    }

    @Override
    public HLL getCurrentHLL() {
        return outer.getCurrentHLL();
    }

    @Override
    public GlobalContext getGlobalContext() {
        return outer.getGlobalContext();
    }

    @Override
    public NQPCodeRef getCuid(String cuid) {
        return outer.getCuid(cuid);
    }

    @Override
    public void addCuid(String cuid, NQPCodeRef codeRef) {
        outer.addCuid(cuid, codeRef);
    }
}

