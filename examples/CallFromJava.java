// nqp$ javac -cp bin/ examples/CallFromJava.java
// nqp$ java -cp nqp-runtime.jar:3rdparty/asm/asm-4.1.jar:3rdparty/asm/asm-tree-4.1.jar:. examples.CallFromJava nqp.jar nqp 'say(2+2)'
// 4
// rakudo$ java -cp ../nqp-jvm:../nqp-jvm/3rdparty/asm/asm-4.1.jar:../nqp-jvm/3rdparty/asm/asm-tree-4.1.jar:../nqp-jvm/nqp-runtime.jar:rakudo-runtime.jar:. examples.CallFromJava raku.jar raku 'say 2 + 2'
// 4


// Note: currently nqp only functions properly in the application class path.

package examples;
import org.raku.nqp.runtime.*;
import static org.raku.nqp.runtime.CallSiteDescriptor.*;
import org.raku.nqp.sixmodel.*;

public class CallFromJava {
    private GlobalContext g;
    private ThreadContext t;
    private SixModelObject nqpComp;

    private CallFromJava(String bytecode, String hll) {
        g = new GlobalContext();
        t = g.getCurrentThreadContext();

        Ops.loadbytecode(bytecode, t);
        nqpComp = Ops.getcomp(hll, t);
    }

    private SixModelObject eval(String nqp) {
        Ops.invokeDirect(t, Ops.findmethod(nqpComp, "compile", t),
                new CallSiteDescriptor(new byte[] { ARG_OBJ, ARG_STR }, null),
                new Object[] { nqpComp, nqp });

        Ops.invokeDirect(t, Ops.result_o(t.resultFrame()), Ops.emptyCallSite, Ops.emptyArgList);
        return Ops.result_o(t.resultFrame());
    }

    public static void main(String[] args) {
        CallFromJava nqp = new CallFromJava(args[0], args[1]);

        nqp.eval(args[2]);
    }
}
