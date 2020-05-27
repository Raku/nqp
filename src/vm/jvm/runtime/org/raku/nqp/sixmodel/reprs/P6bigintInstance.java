package org.raku.nqp.sixmodel.reprs;

import java.math.BigInteger;

import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.runtime.ExceptionHandling;

public class P6bigintInstance extends SixModelObject {
    public BigInteger value;

    private static final BigInteger SMALLEST_UNBOXABLE = new BigInteger(String.valueOf(Long.MIN_VALUE));

    @Override
    public void set_int(ThreadContext tc, long value) {
        this.value = BigInteger.valueOf(value);
    }

    @Override
    public long get_int(ThreadContext tc) {
        if (value.bitLength() >= 64 && !equals(SMALLEST_UNBOXABLE)) {
            throw ExceptionHandling.dieInternal(tc, "Cannot unbox " + value.bitLength() + " bit wide bigint into native integer");
        } else {
            return value.longValue();
        }
    }
}
