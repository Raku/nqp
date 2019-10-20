package org.perl6.nqp.truffle.sixmodel.reprs;

import org.perl6.nqp.truffle.runtime.NQPHash;
import org.perl6.nqp.truffle.runtime.NQPNull;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;
import org.perl6.nqp.truffle.sixmodel.StorageSpec;
import org.perl6.nqp.truffle.sixmodel.TypeObject;


public class VMArray extends FixedSizeObjectREPR {
    StorageSpec storageSpec;

    public VMArray(STable stable) {
        super(stable);
    }

    @Override
    public Object allocate() {
        //return new VMArrayInstanceUInt8(stable);
        if (storageSpec == null) {
            return new VMArrayInstance(stable);
        }
        else {
            switch (storageSpec.boxed_primitive) {
            case StorageSpec.BP_INT:
                if (storageSpec.bits == 8) {
                    return new VMArrayInstanceUInt8(stable);
                }
                /*if (storageSpec.bits == 64)
                    obj = new VMArrayInstance_i();
                else if (storageSpec.bits == 8)
                    obj = storageSpec.is_unsigned == 0
                        ? new VMArrayInstance_i8()
                        : new VMArrayInstance_u8();
                else if (storageSpec.bits == 16)
                    obj = storageSpec.is_unsigned == 0
                        ? new VMArrayInstance_i16()
                        : new VMArrayInstance_u16();
                else if (storageSpec.bits == 32)
                    obj = storageSpec.is_unsigned == 0
                        ? new VMArrayInstance_i32()
                        : new VMArrayInstance_u32();
                else
                    obj = new VMArrayInstance_i();
                */
                throw new RuntimeException("array of this int size NYI");
            /*
            case StorageSpec.BP_NUM:
                obj = new VMArrayInstance_n();
                break;
            case StorageSpec.BP_STR:
                obj = new VMArrayInstance_s();
                break;
            */
            default:
                throw new RuntimeException("Invalid REPR data for VMArray");
            }
        }
    }

    @Override
    public Object deserializeStub() {
        System.out.println("NYI deserializing a VMArray");
        return null;
        //return new VMArrayInstance(stable);
    }

    @Override
    public void deserializeFinish(SerializationReader reader, Object obj) {
    }

    @Override
    public void deserializeReprData(SerializationReader reader, STable stable) {
        Object type = reader.readRef();

        if (type == NQPNull.SINGLETON) {
        } else {
            storageSpec = ((TypeObject) type).stable.repr.getStorageSpec();
        }
    }

    @Override
    public void compose(Object reprInfo) {
        NQPHash reprInfoHash = (NQPHash) reprInfo;
        Object array = reprInfoHash.atkey("array");

        if (array != NQPNull.SINGLETON) {
            NQPHash arrayHash = (NQPHash) array;
            TypeObject type = (TypeObject) arrayHash.atkey("type");
            storageSpec = type.stable.repr.getStorageSpec();
        }
        // By default, nothing to do.
    }
}
