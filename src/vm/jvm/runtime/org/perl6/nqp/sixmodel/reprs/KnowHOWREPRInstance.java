package org.perl6.nqp.sixmodel.reprs;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class KnowHOWREPRInstance extends SixModelObject {
    public String name;
    public List<SixModelObject> attributes;
    public HashMap<String, SixModelObject> methods;
}
