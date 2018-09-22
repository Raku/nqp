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

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

public class ByteCodeReader {
    private static final byte[] MAGIC = new byte[] {'T', 'R', 'U', 'F', 'F', 'L', 'E', '6', '\r', '\n'};

    private ByteBuffer buffer;

    ByteCodeReader(ByteBuffer buffer) {
        this.buffer = buffer;
    }

    public int readOpCode() {
        return buffer.getInt();
    }

    public int readCount() {
        return buffer.getInt();
    }

    public long readVersion() {
        return buffer.getLong();
    }

    public long readInt() {
        return buffer.getLong();
    }

    public double readNum() {
        return buffer.getDouble();
    }

    public boolean hasMagicString() {
        if (buffer.remaining() < MAGIC.length) return false;
        byte maybeMagic[] = new byte[MAGIC.length];
        buffer.get(maybeMagic);
        return Arrays.equals(maybeMagic, MAGIC);
    }

    public String readStr() {
        int length = buffer.getInt();
        byte[] encoded = new byte[length];
        buffer.get(encoded);

        return new String(encoded, StandardCharsets.UTF_8);
    }

    public String[] readStrs() {
        int count = readCount();
        String[] strs = new String[count];
        for (int i = 0; i < count; i++) {
            strs[i] = readStr();
        }
        return strs;
    }

    public long[] readInts() {
        int count = readCount();
        long[] ints = new long[count];
        for (int i = 0; i < count; i++) {
            ints[i] = readInt();
        }
        return ints;
    }

    public ByteCodeReader duplicate() {
        ByteBuffer duplicateBuffer = buffer.duplicate();
        duplicateBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return new ByteCodeReader(duplicateBuffer);
    }
}
