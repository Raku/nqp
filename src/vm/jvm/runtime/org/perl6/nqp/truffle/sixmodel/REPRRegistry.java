package org.perl6.nqp.truffle.sixmodel;

import java.util.ArrayList;
import java.util.HashMap;

import org.perl6.nqp.truffle.sixmodel.reprs.P6opaque;

public class REPRRegistry {
    public static REPR getByName(String name) {
        switch (name) {
            case "P6opaque": return new P6opaque();
            default: throw new RuntimeException("No REPR " + name);
        }
    }
}
