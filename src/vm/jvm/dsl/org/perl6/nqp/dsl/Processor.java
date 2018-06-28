package org.perl6.nqp.dsl;

import javax.tools.Diagnostic;
import javax.annotation.processing.SupportedAnnotationTypes;
import javax.annotation.processing.AbstractProcessor;
import java.util.Set;
import java.util.List;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.regex.Pattern;
import java.io.IOException;
import javax.lang.model.element.TypeElement;
import javax.lang.model.element.Element;
import javax.lang.model.element.ExecutableElement;
import javax.lang.model.element.VariableElement;
import javax.lang.model.type.TypeMirror;
import javax.lang.model.type.MirroredTypeException;

import javax.annotation.processing.RoundEnvironment;
import javax.lang.model.SourceVersion;
import javax.annotation.processing.Messager;
import javax.annotation.processing.ProcessingEnvironment;
import javax.tools.JavaFileObject;
import java.io.PrintWriter;

public class Processor extends AbstractProcessor {
    boolean wrote = false;
    Messager messager;
    String prefix = "NQP";

    @Override
    public void init(ProcessingEnvironment env) {
        super.init(env);
        processingEnv.getMessager().printMessage(Diagnostic.Kind.NOTE, "doing some init...");
        System.out.println("here");
    }

    private String opNameFromClassName(String className) {
        return className.replaceFirst("^" + Pattern.quote(prefix), "")
          .replaceFirst("Node$", "")
          .toLowerCase();
    }

    private void writeBuildMethod(TypeMirror nodeClass, PrintWriter writer, RoundEnvironment roundEnv) {
        writer.append("    public NQPNode buildSimple(SixModelObject node, NQPScope scope, ThreadContext tc) {\n");

        writer.append("        switch (node.at_pos_boxed(tc, 0).get_str(tc)) {\n");

        for (Element element : roundEnv.getElementsAnnotatedWith(Deserializer.class)) {

            ExecutableElement constructor = (ExecutableElement) element;
            TypeElement type = (TypeElement) element.getEnclosingElement();

            processingEnv.getMessager().printMessage(Diagnostic.Kind.NOTE, "enclosing type: " + type.getSimpleName());


            String opName = opNameFromClassName(type.getSimpleName().toString());

            writer.append("           case \"" + opName + "\": return new " + type.getQualifiedName() + "(");

            int i = 0;

            for (VariableElement param : constructor. getParameters()) {
                TypeMirror paramType = param.asType();
                processingEnv.getMessager().printMessage(Diagnostic.Kind.NOTE, "param name: " + paramType.toString());

                if (i != 0) {
                    writer.append(",");
                }

                if (paramType.equals(nodeClass)) {
                    writer.append("build(node.at_pos_boxed(tc, " + (i+1) + "), scope, tc)");
                } else {
                    processingEnv.getMessager().printMessage(Diagnostic.Kind.ERROR, "Wrong param type: " + paramType.toString());
                }

                i++;
            }

            writer.append(");\n");
        }

        writer.append("            default: return null;\n");

        writer.append("        }\n");

        writer.append("    }\n");
    }

    @Override
    public boolean process(Set<? extends TypeElement> annotations, RoundEnvironment roundEnv) {
        if (annotations.size() != 0) {
            if (wrote) {
                processingEnv.getMessager().printMessage(Diagnostic.Kind.ERROR, "We only support doing stuff in just one round in this processor");
                return true;
            } else {
                wrote = true;
            }
        }

        for (Element element : roundEnv.getElementsAnnotatedWith(AstBuilder.class)) {
            TypeElement type = (TypeElement) element;

            AstBuilder annotation = element.getAnnotation(AstBuilder.class);

            TypeMirror nodeClass = null;

            try {
                annotation.nodeClass();
            } catch (MirroredTypeException e) {
                nodeClass = e.getTypeMirror();
            }

            String builderClass =  type.getQualifiedName().toString();
            String generatedClassQualified = builderClass + "Gen";
            String generatedClassSimple = type.getSimpleName().toString() + "Gen";

            String packageName = processingEnv.getElementUtils().getPackageOf(element).getQualifiedName().toString();

            processingEnv.getMessager().printMessage(Diagnostic.Kind.NOTE, "we have builder " + generatedClassQualified);

            try {
                JavaFileObject builderFile = processingEnv.getFiler().createSourceFile(generatedClassQualified);
                try (PrintWriter writer = new PrintWriter(builderFile.openWriter())) {
                    writer.append("package " + packageName + ";\n");

                    writer.append("import org.perl6.nqp.truffle.nodes.NQPNode;\n");
                    writer.append("import org.perl6.nqp.runtime.ThreadContext;\n");
                    writer.append("import org.perl6.nqp.sixmodel.SixModelObject;\n");

                    writer.append("public class " + generatedClassSimple + " extends " + builderClass + " {\n");

                    writeBuildMethod(nodeClass, writer, roundEnv);

                    writer.append("}\n");
                }
            } catch (IOException e) {
                processingEnv.getMessager().printMessage(Diagnostic.Kind.ERROR, "problem writing class: " + e.getMessage());
            }

        }

        return true;
    }

    @Override
    public Set<String> getSupportedAnnotationTypes() {
        Set<String> annotations = new LinkedHashSet<String>();
        annotations.add(Deserializer.class.getCanonicalName());
        annotations.add(AstBuilder.class.getCanonicalName());
        return annotations;
    }


    @Override
    public SourceVersion getSupportedSourceVersion() {
        return SourceVersion.latestSupported();
    }
}
