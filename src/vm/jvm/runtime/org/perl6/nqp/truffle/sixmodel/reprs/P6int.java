package org.perl6.nqp.truffle.sixmodel.reprs;

import org.perl6.nqp.truffle.runtime.NQPHash;
import org.perl6.nqp.truffle.runtime.NQPNull;

import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;
import org.perl6.nqp.truffle.sixmodel.StorageSpec;


public class P6int extends FixedSizeObjectREPR {
    /**
     * Possible C types we can handle.
     */
    public final static byte P6INT_C_TYPE_CHAR     =  -1;
    public final static byte P6INT_C_TYPE_SHORT    =  -2;
    public final static byte P6INT_C_TYPE_INT      =  -3;
    public final static byte P6INT_C_TYPE_LONG     =  -4;
    public final static byte P6INT_C_TYPE_LONGLONG =  -5;
    public final static byte P6INT_C_TYPE_SIZE_T   =  -6;
    public final static byte P6INT_C_TYPE_BOOL     =  -7;

    StorageSpec storageSpec;

    public P6int(STable stable) {
        super(stable);

        StorageSpec storageSpec = new StorageSpec();
        storageSpec.inlineable = StorageSpec.INLINED;
        storageSpec.boxed_primitive = StorageSpec.BP_INT;
        storageSpec.bits = 64;
        storageSpec.can_box = StorageSpec.CAN_BOX_INT;
    }

    public Object allocate() {
        return new P6intInstance(stable);
    }

    public Object deserializeStub() {
        return new P6intInstance(stable);
    }

    public void deserializeFinish(SerializationReader reader, Object obj) {
      ((P6intInstance) obj).value = reader.readLong();
    }

    @Override
    public Object deserializeInline(SerializationReader reader) {
      return reader.readLong();
    }

    @Override
    public void compose(Object reprInfo) {
        System.out.println("composing P6int");
        Object integerInfo = ((NQPHash)reprInfo).atkey("integer");

        if (integerInfo != NQPNull.SINGLETON) {
            Object bits = ((NQPHash)integerInfo).atkey("bits");
            System.out.println("bits: " + bits);
        }
    }

    @Override
    public void deserializeReprData(SerializationReader reader, STable stable) {
        storageSpec = new StorageSpec();
        storageSpec.inlineable = StorageSpec.INLINED;
        storageSpec.boxed_primitive = StorageSpec.BP_INT;
        storageSpec.bits = (short)reader.readLong();
        storageSpec.is_unsigned = (short)reader.readLong();
        storageSpec.can_box = StorageSpec.CAN_BOX_INT;
    }

    @Override
    public StorageSpec getStorageSpec() {
        return storageSpec;
    }
}
