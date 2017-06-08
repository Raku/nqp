package org.perl6.nqp.runtime;

import java.nio.ByteBuffer;

import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_i8;
import org.perl6.nqp.sixmodel.reprs.VMArrayInstance_u8;

public class Buffers {

    public static void stashBytes(ThreadContext tc, SixModelObject res, byte[] bytes) {
        stashBytes(tc, res, bytes, bytes.length);
    }

    public static void stashBytes(ThreadContext tc, SixModelObject res, byte[] bytes, int elems) {
        if (res instanceof VMArrayInstance_i8) {
            VMArrayInstance_i8 arr = (VMArrayInstance_i8)res;
            arr.elems = elems;
            arr.start = 0;
            arr.slots = bytes;
        }
        else if (res instanceof VMArrayInstance_u8) {
            VMArrayInstance_u8 arr = (VMArrayInstance_u8)res;
            arr.elems = elems;
            arr.start = 0;
            arr.slots = bytes;
        }
        else {
            res.set_elems(tc, elems);
            for (int i = 0; i < elems; i++) {
                tc.native_i = bytes[i];
                res.bind_pos_native(tc, i);
            }
        }
    }

    public static ByteBuffer unstashBytes(SixModelObject buf, ThreadContext tc) {
        ByteBuffer bb;
        if (buf instanceof VMArrayInstance_i8) {
            VMArrayInstance_i8 bufi8 = (VMArrayInstance_i8)buf;
            bb = bufi8.slots != null
                ? ByteBuffer.wrap(bufi8.slots, bufi8.start, bufi8.elems)
                : ByteBuffer.allocate(0);
        }
        else if (buf instanceof VMArrayInstance_u8) {
            VMArrayInstance_u8 bufu8 = (VMArrayInstance_u8)buf;
            bb = bufu8.slots != null
                ? ByteBuffer.wrap(bufu8.slots, bufu8.start, bufu8.elems)
                : ByteBuffer.allocate(0);
        }
        else {
            int n = (int)buf.elems(tc);
            bb = ByteBuffer.allocate(n);
            for (int i = 0; i < n; i++) {
                buf.at_pos_native(tc, i);
                bb.put((byte)tc.native_i);
            }
            bb.rewind();
        }
        return bb;
    }
}
