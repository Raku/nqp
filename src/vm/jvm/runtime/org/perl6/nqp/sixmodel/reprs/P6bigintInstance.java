package org.perl6.nqp.sixmodel.reprs;

import java.math.BigInteger;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.runtime.ExceptionHandling;

public class P6bigintInstance extends SixModelObject {
    public BigInteger value;

    private static final BigInteger SMALLEST_UNBOXABLE = new BigInteger(String.valueOf(Long.MIN_VALUE));

    public void set_int(ThreadContext tc, long value) {
        this.value = BigInteger.valueOf(value);
    }

    public long get_int(ThreadContext tc) {
        if (value.bitLength() >= 64 && !equals(SMALLEST_UNBOXABLE)) {
            throw ExceptionHandling.dieInternal(tc, "Cannot unbox " + value.bitLength() + " bit wide bigint into native integer");
        } else {
            return value.longValue();
        }
    }
}
