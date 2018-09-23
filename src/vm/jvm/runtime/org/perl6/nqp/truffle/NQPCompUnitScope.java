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

import com.oracle.truffle.api.frame.FrameSlot;

import java.util.HashMap;

public class NQPCompUnitScope extends NQPScope {
    NQPScope outer;
    HLL currentHLL;


    HashMap<String, NQPCodeRef> cuids;

    public NQPCompUnitScope(NQPScope outer, String hll) {
        this.outer = outer;

        HashMap<String, HLL> hlls = outer.getGlobalContext().hlls;

        if (!hlls.containsKey(hll)) {
            hlls.put(hll, new HLL());
        }

        this.currentHLL = hlls.get(hll);

        cuids = new HashMap<String, NQPCodeRef>();
    }

    @Override
    public GlobalContext getGlobalContext() {
        return outer.getGlobalContext();
    }


    @Override
    public FrameSlot getContextSlot() {
        return outer.getContextSlot();
    }


    @Override
    public HLL getCurrentHLL() {
        return currentHLL;
    }

    @Override
    public NQPCodeRef getCuid(String cuid) {
        NQPCodeRef got = cuids.get(cuid);
        if (got != null) {
            return got;
        } else {
            throw new RuntimeException("Can't get cuid: " + cuid);
        }
    }

    @Override
    public void addCuid(String cuid, NQPCodeRef codeRef) {
        cuids.put(cuid, codeRef);
    }

    @Override
    public FrameSlot addLexical(String name) {
        return outer.addLexical(name);
    }

    @Override
    public FoundLexical findLexical(String name, int depth) {
        return outer.findLexical(name, depth);
    }

    @Override
    public FrameSlot addLocal(String name) {
        return outer.addLocal(name);
    }

    @Override
    public FrameSlot findLocal(String name) {
        return outer.findLocal(name);
    }
}
