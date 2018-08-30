package org.perl6.nqp.truffle.runtime;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import org.perl6.nqp.sixmodel.ContainerSpec;
import org.perl6.nqp.sixmodel.NativeRefContainerSpec;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.TypeObject;
import org.perl6.nqp.sixmodel.reprs.NativeRefREPRData;

public class ContainerOps {
    @TruffleBoundary
    public static short getContainerPrimitive(SixModelObject obj) {
        if (obj != null && !(obj instanceof TypeObject)) {
            ContainerSpec cs = obj.st.ContainerSpec;
            if (cs instanceof NativeRefContainerSpec)
                return ((NativeRefREPRData)(obj.st.REPRData)).primitive_type;
        }
        return StorageSpec.BP_NONE;
    }
}
