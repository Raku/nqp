package org.perl6.nqp.dsl;

import javax.tools.Diagnostic;
import javax.annotation.processing.SupportedAnnotationTypes;
import javax.annotation.processing.AbstractProcessor;
import java.util.Set;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.regex.Pattern;
import java.io.IOException;
import javax.lang.model.element.TypeElement;
import javax.lang.model.element.Element;
import javax.lang.model.element.ElementKind;
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

    static class AstTypes {
        TypeMirror nodeClass;
        TypeMirror nodesClass;
        TypeMirror intClass;
        TypeMirror numClass;
        TypeMirror strClass;
        TypeMirror scopeClass;

        AstTypes(AstBuilder annotation) {
            try {
                annotation.nodeClass();
            } catch (MirroredTypeException e) {
                nodeClass = e.getTypeMirror();
            }

            try {
                annotation.nodesClass();
            } catch (MirroredTypeException e) {
                nodesClass = e.getTypeMirror();
            }

            try {
                annotation.intClass();
            } catch (MirroredTypeException e) {
                intClass = e.getTypeMirror();
            }

            try {
                annotation.numClass();
            } catch (MirroredTypeException e) {
                numClass = e.getTypeMirror();
            }

            try {
                annotation.strClass();
            } catch (MirroredTypeException e) {
                strClass = e.getTypeMirror();
            }

            try {
                annotation.scopeClass();
            } catch (MirroredTypeException e) {
                scopeClass = e.getTypeMirror();
            }
        }
    }

    private String opNameFromClassName(String className) {
        return className.replaceFirst("^" + Pattern.quote(prefix), "")
          .replaceFirst("IntNode$", "_i")
          .replaceFirst("NumNode$", "_n")
          .replaceFirst("StrNode$", "_s")
          .replaceFirst("BigintNode$", "_I")
          .replaceFirst("UIntNode$", "_u")
          .replaceFirst("CodeBlock$", "_b")
          .replaceFirst("Node$", "")
          .toLowerCase();
    }

    String getOpName(TypeElement type, String gotOpName) {
        return gotOpName.equals("")
          ? opNameFromClassName(type.getSimpleName().toString())
          : gotOpName;
    }

    private void writeParams(ExecutableElement executableElement, AstTypes astTypes, PrintWriter writer) {
        boolean first = true;;
        int i = 0;

        for (VariableElement param : executableElement.getParameters()) {
            TypeMirror paramType = param.asType();

            if (first) {
                first = false;
            } else {
                writer.append(",");
            }

            if (paramType.equals(astTypes.nodeClass)) {
                writer.append("tastToNode(node.at_pos_boxed(tc, " + (i+1) + "), scope, tc)");
            } else if (paramType.equals(astTypes.nodesClass)) {
                writer.append("tastToNodeArray(node, " + (i+1) + ", scope, tc)");
            } else if (paramType.equals(astTypes.intClass)) {
                writer.append("node.at_pos_boxed(tc, " + (i+1) + ").get_int(tc)");
            } else if (paramType.equals(astTypes.numClass)) {
                writer.append("node.at_pos_boxed(tc, " + (i+1) + ").get_num(tc)");
            } else if (paramType.equals(astTypes.strClass)) {
                writer.append("node.at_pos_boxed(tc, " + (i+1) + ").get_str(tc)");
            } else if (paramType.equals(astTypes.scopeClass)) {
                writer.append("scope");
                i--;
            } else {
                processingEnv.getMessager().printMessage(Diagnostic.Kind.ERROR, "Wrong param type: " + paramType.toString());
            }

            i++;
        }
    }


    private String getElementCall(ExecutableElement element) {
        TypeElement type = (TypeElement) element.getEnclosingElement();
        String typeName = type.getQualifiedName().toString();
        return element.getKind() == ElementKind.CONSTRUCTOR
            ? "new " + typeName
            : typeName + "." + element.getSimpleName().toString();
    }

    private void writeBuildMethod(AstTypes astTypes, PrintWriter writer, RoundEnvironment roundEnv) {
        writer.append("    public NQPNode tastToNode(SixModelObject node, NQPScope scope, ThreadContext tc) {\n");

        writer.append("        switch (node.at_pos_boxed(tc, 0).get_str(tc)) {\n");

        HashMap<String, ExecutableElement> predeserializers = new HashMap<String, ExecutableElement>();

        for (Element element : roundEnv.getElementsAnnotatedWith(Predeserializer.class)) {
            ExecutableElement executableElement = (ExecutableElement) element;

            String opName = ((Predeserializer)element.getAnnotation(Predeserializer.class)).value();

            predeserializers.put(opName, executableElement);

        }

        for (Element element : roundEnv.getElementsAnnotatedWith(Deserializer.class)) {
            ExecutableElement executableElement = (ExecutableElement) element;


            TypeElement type = (TypeElement) element.getEnclosingElement();

            String opName = getOpName(type, ((Deserializer)element.getAnnotation(Deserializer.class)).value());

            writer.append("           case \"" + opName + "\":\n");

            if (predeserializers.containsKey(opName)) {
                ExecutableElement predeserializer = predeserializers.get(opName);
                writer.append("scope = " + getElementCall(predeserializer) + "(");
                writeParams(predeserializer, astTypes, writer);
                writer.append(");\n");
            }

            writer.append("                return " + getElementCall(executableElement) + "(");

            writeParams(executableElement, astTypes, writer);


            writer.append(");\n");
        }

        writer.append("            default: throw new IllegalArgumentException(\"Wrong node type: \" + node.at_pos_boxed(tc, 0).get_str(tc));\n");

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

            AstTypes astTypes = new AstTypes(element.getAnnotation(AstBuilder.class));


            String builderClass =  type.getQualifiedName().toString();
            String generatedClassQualified = builderClass + "Gen";
            String generatedClassSimple = type.getSimpleName().toString() + "Gen";

            String packageName = processingEnv.getElementUtils().getPackageOf(element).getQualifiedName().toString();

            try {
                JavaFileObject builderFile = processingEnv.getFiler().createSourceFile(generatedClassQualified);
                try (PrintWriter writer = new PrintWriter(builderFile.openWriter())) {
                    writer.append("package " + packageName + ";\n");

                    writer.append("import org.perl6.nqp.truffle.nodes.NQPNode;\n");
                    writer.append("import org.perl6.nqp.runtime.ThreadContext;\n");
                    writer.append("import org.perl6.nqp.sixmodel.SixModelObject;\n");

                    writer.append("public class " + generatedClassSimple + " extends " + builderClass + " {\n");

                    writeBuildMethod(astTypes, writer, roundEnv);

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
