package org.raku.nqp.sixmodel.reprs;

import java.util.HashMap;
import java.util.List;

import org.raku.nqp.sixmodel.SixModelObject;

public class KnowHOWREPRInstance extends SixModelObject {
    public String name;
    public List<SixModelObject> attributes;
    public HashMap<String, SixModelObject> methods;
}
