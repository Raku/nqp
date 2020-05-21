package org.raku.nqp.runtime;

import org.raku.nqp.jast2bc.JavaClass;
import org.raku.nqp.sixmodel.SixModelObject;

public class EvalResult extends SixModelObject {
    public JavaClass jc;
    public CompilationUnit cu;
}
