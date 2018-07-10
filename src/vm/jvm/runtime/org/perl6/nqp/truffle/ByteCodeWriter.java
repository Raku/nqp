package org.perl6.nqp.truffle;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class ByteCodeWriter {
    static byte[] MAGIC = new byte[] {'T', 'R', 'U', 'F', 'F', 'L', 'E', '6', '\r', '\n'};
    private ByteBuffer buffer;

    ByteCodeWriter() {
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
        try {
            byte[] encoded = value.getBytes("UTF8");
            growToHold(4 + encoded.length);
            buffer.putInt(encoded.length);
            buffer.put(encoded);
        } catch (UnsupportedEncodingException e) {
            // This should never happen
            throw new RuntimeException("serious trouble: UTF8 encoding not recognized");
        }
    }
}
