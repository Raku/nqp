package org.perl6.nqp.sixmodel.reprs;

import java.math.BigInteger;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class P6bigintInstance extends SixModelObject {
    public BigInteger value;
    
    public void set_int(ThreadContext tc, long value) {
        this.value = BigInteger.valueOf(value);
    }
    
    public long get_int(ThreadContext tc) {
        return value.longValue();
    }
}
