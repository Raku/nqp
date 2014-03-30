package org.perl6.nqp.jast2bc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.objectweb.asm.Label;
import org.objectweb.asm.Type;

import static org.perl6.nqp.runtime.Ops.*;
import org.perl6.nqp.runtime.ThreadContext;

import static org.perl6.nqp.jast2bc.JASTCompiler.processType;
import org.perl6.nqp.jast2bc.JASTCompiler.LabelInfo;
import org.perl6.nqp.jast2bc.JASTCompiler.VariableDef;

import org.perl6.nqp.sixmodel.SixModelObject;

public class JastMethod {
    public String name;
    public boolean isStatic = false;
    public Type returns;
    public List<Type> arguments = new ArrayList<Type>();
    public Map<String, VariableDef> locals = new HashMap<String, VariableDef>();
    public SixModelObject instructions;
    public String crName;
    public String crCuid;
    public int crOuter = -2; // -1 = has no outer  -2 = not a coderef
    public List<String> crOlex = new ArrayList<String>();
    public List<String> crIlex = new ArrayList<String>();
    public List<String> crNlex = new ArrayList<String>();
    public List<String> crSlex = new ArrayList<String>();
    public long[] crHandlers;
    public boolean hasExitHandler = false;
    public short argsExpectation = 0;

    Label beginAll, endAll;
    Map<String, LabelInfo> labels = new HashMap<String, LabelInfo>();

    public JastMethod(SixModelObject jast, SixModelObject jastMethod, ThreadContext tc) throws Exception {
        if (istype(jast, jastMethod, tc) == 0)
            throw new Exception("JAST node isn't a JAST::Method");

        SixModelObject iter;
        beginAll = new Label();
        endAll = new Label();
        int curArgIndex = 1;

        name = getattr_s(jast, jastMethod, "$!name", nameHint, tc);
        returns = processType(getattr(jast, jastMethod, "$!returns", returnsHint, tc).get_str(tc));
        isStatic = getattr_i(jast, jastMethod, "$!static", staticHint, tc) != 0;
        if (isStatic)
            curArgIndex = 0;

        iter = iter(getattr(jast, jastMethod, "@!arguments", argumentsHint, tc), tc);
        while (istrue(iter, tc) != 0) {
            SixModelObject pair = iter.shift_boxed(tc);
            String name = pair.at_pos_boxed(tc, 0).get_str(tc);
            Type type = processType(pair.at_pos_boxed(tc, 1).get_str(tc));
            arguments.add(type);
            if (locals.containsKey(name))
                throw new Exception("Duplicate local name: " + name);
            locals.put(name, new VariableDef(curArgIndex, type.getDescriptor(), beginAll, endAll));
            curArgIndex += (type == Type.LONG_TYPE || type == Type.DOUBLE_TYPE ? 2 : 1);
        }

        iter = iter(getattr(jast, jastMethod, "@!locals", localsHint, tc), tc);
        while (istrue(iter, tc) != 0) {
            SixModelObject pair = iter.shift_boxed(tc);
            String name = pair.at_pos_boxed(tc, 0).get_str(tc);
            Type type = processType(pair.at_pos_boxed(tc, 1).get_str(tc));
            if (locals.containsKey(name))
                throw new Exception("Duplicate local name: " + name);
            locals.put(name, new VariableDef(curArgIndex, type.getDescriptor(), beginAll, endAll));
            curArgIndex += (type == Type.LONG_TYPE || type == Type.DOUBLE_TYPE ? 2 : 1);
        }

        instructions = getattr(jast, jastMethod, "@!instructions", instructionsHint, tc);

        crName = getattr_s(jast, jastMethod, "$!cr_name", crNameHint, tc);
        crCuid = getattr_s(jast, jastMethod, "$!cr_cuid", crCuidHint, tc);
        crOuter = (int) getattr_i(jast, jastMethod, "$!cr_outer", crOuterHint, tc);

        fillList(crOlex, getattr(jast, jastMethod, "@!cr_olex", crOlexHint, tc), tc);
        fillList(crIlex, getattr(jast, jastMethod, "@!cr_ilex", crIlexHint, tc), tc);
        fillList(crNlex, getattr(jast, jastMethod, "@!cr_nlex", crNlexHint, tc), tc);
        fillList(crSlex, getattr(jast, jastMethod, "@!cr_slex", crSlexHint, tc), tc);

        SixModelObject handlersList = getattr(jast, jastMethod, "@!cr_handlers", crHandlersHint, tc);
        iter = iter(handlersList, tc);
        crHandlers = new long[(int) elems(handlersList, tc)];
        for (int i = 0; istrue(iter, tc) != 0; i++) {
            crHandlers[i] = iter.shift_boxed(tc).get_int(tc);
        }
        hasExitHandler = getattr_i(jast, jastMethod, "$!has_exit_handler", hasExitHandlerHint, tc) != 0;
        argsExpectation = (short) getattr_i(jast, jastMethod, "$!args_expectation", argsExpectationHint, tc);
    }

    private void fillList(List<String> list, SixModelObject smoList, ThreadContext tc) {
        SixModelObject iter = iter(smoList, tc);
        while(istrue(iter, tc) != 0) {
            String value = iter.shift_boxed(tc).get_str(tc);
            list.add(value);
        }
    }

    private static long nameHint, staticHint, returnsHint, argumentsHint,
            localsHint, instructionsHint, crNameHint, crCuidHint, crOuterHint,
            crOlexHint, crIlexHint, crNlexHint, crSlexHint, crHandlersHint,
            hasExitHandlerHint, argsExpectationHint;
    public static void setup(SixModelObject jastMethod, ThreadContext tc) {
        nameHint            = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!name");
        staticHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!static");
        returnsHint         = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!returns");
        argumentsHint       = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!arguments");
        localsHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!locals");
        instructionsHint    = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!instructions");
        crNameHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!cr_name");
        crCuidHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!cr_cuid");
        crOuterHint         = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!cr_outer");
        crOlexHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!cr_olex");
        crIlexHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!cr_ilex");
        crNlexHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!cr_nlex");
        crSlexHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!cr_slex");
        crHandlersHint      = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!cr_handlers");
        hasExitHandlerHint  = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!has_exit_handler");
        argsExpectationHint = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!args_expectation");
    }
}
