// $ javac -cp bin/ examples/CallFromJava.java && java -cp nqp-runtime.jar:3rdparty/asm/asm-4.1.jar:3rdparty/asm/asm-tree-4.1.jar:. examples.CallFromJava
// 4

// Note: curently nqp only functions properly in the application class path.

package examples;
import org.perl6.nqp.runtime.*;
import static org.perl6.nqp.runtime.CallSiteDescriptor.*;
import org.perl6.nqp.sixmodel.*;

public class CallFromJava {
    private GlobalContext g;
    private ThreadContext t;
    private SixModelObject nqpComp;

    private CallFromJava() {
        g = new GlobalContext();
        t = g.getCurrentThreadContext();

        Ops.loadbytecode("nqp.jar", t);
        nqpComp = Ops.getcomp("nqp", t);
    }

    private SixModelObject eval(String nqp) {
        Ops.invokeDirect(t, Ops.findmethod(t, nqpComp, "compile"),
                new CallSiteDescriptor(new byte[] { ARG_OBJ, ARG_STR }, null),
                new Object[] { nqpComp, nqp });

        Ops.invokeDirect(t, Ops.result_o(t.resultFrame()), Ops.emptyCallSite, Ops.emptyArgList);
        return Ops.result_o(t.resultFrame());
    }

    public static void main(String[] args) {
        CallFromJava nqp = new CallFromJava();

        nqp.eval("say(2 + 2)");
    }
}


