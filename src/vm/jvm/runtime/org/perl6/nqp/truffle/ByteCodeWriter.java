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

public class ByteCodeWriter {
    private static final byte[] MAGIC = new byte[] {'T', 'R', 'U', 'F', 'F', 'L', 'E', '6', '\r', '\n'};

    private ByteBuffer buffer;

    public ByteCodeWriter() {
        buffer = ByteBuffer.allocate(0);
    }

    public ByteBuffer getBuffer() {
        return buffer;
    }

    /* Grows a buffer as needed to hold more data. */
    private void growToHold(int required) {
        int position = buffer.position();
        if (position + required >= buffer.capacity()) {
            ByteBuffer replacement = ByteBuffer.allocate(
                Math.max(buffer.capacity() * 2, position + required));
            replacement.order(ByteOrder.LITTLE_ENDIAN);
            buffer.position(0);
            replacement.put(buffer);
            replacement.position(position);
            buffer = replacement;
        }
    }

    public void writeMagicString() {
        growToHold(MAGIC.length);
        buffer.put(MAGIC);
    }

    public void writeOpCode(int opCode) {
        growToHold(4);
        buffer.putInt(opCode);
    }

    public void writeCount(int count) {
        growToHold(4);
        buffer.putInt(count);
    }

    public void writeVersion(long version) {
        growToHold(8);
        buffer.putLong(version);
    }

    public void writeInt(long value) {
        growToHold(8);
        buffer.putLong(value);
    }

    public void writeNum(double value) {
        growToHold(8);
        buffer.putDouble(value);
    }

    public void writeStr(String value) {
        byte[] encoded = value.getBytes(StandardCharsets.UTF_8);
        growToHold(4 + encoded.length);
        buffer.putInt(encoded.length);
        buffer.put(encoded);
    }

    public void writeStrs(String[] values) {
        writeCount(values.length);
        for (String str : values) {
            writeStr(str);
        }
    }

    public void writeInts(long[] values) {
        writeCount(values.length);
        for (long value : values) {
            writeInt(value);
        }
    }
}
