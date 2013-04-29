package org.perl6.nqp.runtime;

import org.perl6.nqp.jast2bc.JavaClass;
import org.perl6.nqp.sixmodel.SixModelObject;

public class EvalResult extends SixModelObject {
    public JavaClass jc;
    public CompilationUnit cu;
}
