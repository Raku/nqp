package org.perl6.nqp.truffle.sixmodel;

import java.util.ArrayList;
import java.util.HashMap;

import org.perl6.nqp.truffle.sixmodel.reprs.P6opaque;
import org.perl6.nqp.truffle.sixmodel.reprs.P6int;
import org.perl6.nqp.truffle.sixmodel.reprs.P6num;
import org.perl6.nqp.truffle.sixmodel.reprs.P6str;
import org.perl6.nqp.truffle.sixmodel.reprs.KnowHOWREPR;
import org.perl6.nqp.truffle.sixmodel.reprs.KnowHOWAttribute;
import org.perl6.nqp.truffle.sixmodel.reprs.Uninstantiable;

public class REPRRegistry {
    private static REPR create(String name, STable stable) {
        switch (name) {
            case "P6opaque": return new P6opaque(stable);
            case "KnowHOWREPR": return new KnowHOWREPR(stable);
            case "KnowHOWAttribute": return new KnowHOWAttribute(stable);
            case "Uninstantiable": return new Uninstantiable();
            case "P6int": return new P6int(stable);
            case "P6num": return new P6num(stable);
            case "P6str": return new P6str(stable);
            default: throw new RuntimeException("No REPR " + name);
        }
    }

    public static REPR createFromName(String name, STable stable) {
        REPR repr = create(name, stable);
        stable.repr = repr;
        return repr;
    }

    public static TypeObject typeObjectFor(String name, Object how) {
        STable stable = new STable(how);
        stable.repr = create(name, stable);
        TypeObject typeObject = new TypeObject(stable);
        stable.what = typeObject;
        return typeObject;
    }

}
