package org.perl6.nqp.sixmodel.reprs;

import com.sun.jna.Memory;
import com.sun.jna.Native;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class CStrInstance extends SixModelObject {
    public Memory cstr;

    public void set_str(ThreadContext tc, String value) {
        /* TODO: Handle encodings. */
        byte[] bytes = Native.toByteArray(value);
        cstr = new Memory(bytes.length);
        cstr.write(0, bytes, 0, bytes.length);
    }

    public String get_str(ThreadContext tc) {
        return cstr.getString(0, Native.getDefaultStringEncoding());
    }
}
