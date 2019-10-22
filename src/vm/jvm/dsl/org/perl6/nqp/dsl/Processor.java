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
        TypeMirror intsClass;
        TypeMirror numClass;
        TypeMirror strClass;
        TypeMirror strsClass;
        TypeMirror scopeClass;
        TypeMirror hllClass;
        TypeMirror contextSlotClass;
        TypeMirror globalContextClass;
        TypeMirror threadContextClass;

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
                annotation.strsClass();
            } catch (MirroredTypeException e) {
                strsClass = e.getTypeMirror();
            }

            try {
                annotation.intsClass();
            } catch (MirroredTypeException e) {
                intsClass = e.getTypeMirror();
            }

            try {
                annotation.scopeClass();
            } catch (MirroredTypeException e) {
                scopeClass = e.getTypeMirror();
            }

            try {
                annotation.hllClass();
            } catch (MirroredTypeException e) {
                hllClass = e.getTypeMirror();
            }

            try {
                annotation.contextSlotClass();
            } catch (MirroredTypeException e) {
                contextSlotClass = e.getTypeMirror();
            }

            try {
                annotation.globalContextClass();
            } catch (MirroredTypeException e) {
                globalContextClass = e.getTypeMirror();
            }

            try {
                annotation.threadContextClass();
            } catch (MirroredTypeException e) {
                threadContextClass = e.getTypeMirror();
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

    String getOpName(Element element) {
        TypeElement type = (TypeElement) element.getEnclosingElement();
        String gotOpName = ((Deserializer)element.getAnnotation(Deserializer.class)).value();
        return gotOpName.equals("")
          ? opNameFromClassName(type.getSimpleName().toString())
          : gotOpName;
    }

    private void writeParams(ExecutableElement executableElement, AstTypes astTypes, PrintWriter writer) {
        boolean first = true;;
        int i = 0;

        for (VariableElement param : executableElement.getParameters()) {

            Global global = ((Global)param.getAnnotation(Global.class));
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
            } else if (paramType.equals(astTypes.strsClass)) {
                writer.append("tastToStrArray(node, " + (i+1) + ", tc)");
            } else if (paramType.equals(astTypes.intsClass)) {
                writer.append("tastToIntArray(node, " + (i+1) + ", tc)");
            } else if (paramType.equals(astTypes.scopeClass)) {
                writer.append("scope");
                i--;
            } else if (paramType.equals(astTypes.hllClass)) {
                writer.append("scope.getCurrentHLL()");
                i--;
            } else if (paramType.equals(astTypes.contextSlotClass)) {
                writer.append("scope.getContextSlot()");
                i--;
            } else if (paramType.equals(astTypes.globalContextClass)) {
                writer.append("scope.getGlobalContext()");
                i--;
            } else if (paramType.equals(astTypes.threadContextClass)) {
                writer.append("scope.getThreadContext()");
                i--;
            } else if (global != null) {
                writer.append("scope.getGlobalContext()." + param.getSimpleName());
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

    private HashMap<String, Integer> calculateOpCodes(RoundEnvironment roundEnv) {
        HashMap<String, Integer> opCodes = new HashMap<String, Integer>();
        List<String> opNames = new ArrayList<String>();

        for (Element element : roundEnv.getElementsAnnotatedWith(Deserializer.class)) {
            opNames.add(getOpName(element));
        }

        opNames.sort(null);

        int id = 1;
        for (String opName : opNames) {
            opCodes.put(opName, id++);
        }

        return opCodes;
    }

    private HashMap<String, ExecutableElement> getPredeserializers(RoundEnvironment roundEnv) {
        HashMap<String, ExecutableElement> predeserializers = new HashMap<String, ExecutableElement>();

        for (Element element : roundEnv.getElementsAnnotatedWith(Predeserializer.class)) {
            ExecutableElement executableElement = (ExecutableElement) element;

            String opName = ((Predeserializer)element.getAnnotation(Predeserializer.class)).value();

            predeserializers.put(opName, executableElement);

        }

        return predeserializers;
    }

    private void writeTastToNode(AstTypes astTypes, PrintWriter writer, RoundEnvironment roundEnv) {
        HashMap<String, ExecutableElement> predeserializers = getPredeserializers(roundEnv);

        writer.append("    public NQPNode tastToNode(SixModelObject node, NQPScope scope, ThreadContext tc) {\n");

        writer.append("        switch (node.at_pos_boxed(tc, 0).get_str(tc)) {\n");


        for (Element element : roundEnv.getElementsAnnotatedWith(Deserializer.class)) {
            ExecutableElement executableElement = (ExecutableElement) element;


            String opName = getOpName(element);

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

    private void writeArgumentsToByteCode(ExecutableElement executableElement, AstTypes astTypes, PrintWriter writer) {
        int i = 0;

        String indent = "               ";

        for (VariableElement param : executableElement.getParameters()) {

            Global global = ((Global)param.getAnnotation(Global.class));
            TypeMirror paramType = param.asType();

            if (paramType.equals(astTypes.nodeClass)) {
                writer.append(indent + "tastToByteCode(node.at_pos_boxed(tc, " + (i+1) + "), writer, tc);\n");
            } else if (paramType.equals(astTypes.nodesClass)) {
                writer.append(indent + "childrenToByteCode(node, " + (i+1) + ", writer, tc);\n");
            } else if (paramType.equals(astTypes.intClass)) {
                writer.append(indent + "writer.writeInt(node.at_pos_boxed(tc, " + (i+1) + ").get_int(tc));\n");
            } else if (paramType.equals(astTypes.numClass)) {
                writer.append(indent + "writer.writeNum(node.at_pos_boxed(tc, " + (i+1) + ").get_num(tc));\n");
            } else if (paramType.equals(astTypes.strClass)) {
                writer.append("writer.writeStr(node.at_pos_boxed(tc, " + (i+1) + ").get_str(tc));\n");
            } else if (paramType.equals(astTypes.strsClass)) {
                writer.append("writer.writeStrs(tastToStrArray(node," + (i+1) + ", tc));\n");
            } else if (paramType.equals(astTypes.intsClass)) {
                writer.append("writer.writeInts(tastToIntArray(node," + (i+1) + ", tc));\n");
            } else if (paramType.equals(astTypes.scopeClass)) {
                i--;
            } else if (paramType.equals(astTypes.hllClass)) {
                i--;
            } else if (paramType.equals(astTypes.contextSlotClass)) {
                i--;
            } else if (paramType.equals(astTypes.globalContextClass)) {
                i--;
            } else if (paramType.equals(astTypes.threadContextClass)) {
                i--;
            } else if (global != null) {
                i--;
            } else {
                processingEnv.getMessager().printMessage(Diagnostic.Kind.ERROR, "Wrong param type: " + paramType.toString());
            }

            i++;
        }
    }

    private void writeByteCodeParams(ExecutableElement executableElement, String reader, AstTypes astTypes, PrintWriter writer) {
        boolean first = true;;

        for (VariableElement param : executableElement.getParameters()) {

            Global global = ((Global)param.getAnnotation(Global.class));
            TypeMirror paramType = param.asType();

            if (first) {
                first = false;
            } else {
                writer.append(",");
            }

            if (paramType.equals(astTypes.nodeClass)) {
                writer.append("byteCodeToNode(" + reader + ", scope)");
            } else if (paramType.equals(astTypes.nodesClass)) {
                writer.append("byteCodeToNodeArray(" + reader + ", scope)");
            } else if (paramType.equals(astTypes.intClass)) {
                writer.append(reader + ".readInt()");
            } else if (paramType.equals(astTypes.numClass)) {
                writer.append(reader + ".readNum()");
            } else if (paramType.equals(astTypes.strClass)) {
                writer.append(reader + ".readStr()");
            } else if (paramType.equals(astTypes.strsClass)) {
                writer.append(reader + ".readStrs()");
            } else if (paramType.equals(astTypes.intsClass)) {
                writer.append(reader + ".readInts()");
            } else if (paramType.equals(astTypes.scopeClass)) {
                writer.append("scope");
            } else if (paramType.equals(astTypes.hllClass)) {
                writer.append("scope.getCurrentHLL()");
            } else if (paramType.equals(astTypes.contextSlotClass)) {
                writer.append("scope.getContextSlot()");
            } else if (paramType.equals(astTypes.globalContextClass)) {
                writer.append("scope.getGlobalContext()");
            } else if (paramType.equals(astTypes.threadContextClass)) {
                writer.append("scope.getThreadContext()");
            } else if (global != null) {
                writer.append("scope.getGlobalContext()." + param.getSimpleName());
            } else {
                processingEnv.getMessager().printMessage(Diagnostic.Kind.ERROR, "Wrong param type: " + paramType.toString());
            }

        }
    }

    private void writeTastToByteCode(AstTypes astTypes, PrintWriter writer, RoundEnvironment roundEnv) {
        HashMap<String, Integer> opIds = calculateOpCodes(roundEnv);

        writer.append("    public void tastToByteCode(SixModelObject node, ByteCodeWriter writer, ThreadContext tc) {\n");
        writer.append("        switch (node.at_pos_boxed(tc, 0).get_str(tc)) {\n");

        for (Element element : roundEnv.getElementsAnnotatedWith(Deserializer.class)) {
            ExecutableElement executableElement = (ExecutableElement) element;

            String opName = getOpName(element);

            writer.append("           case \"" + opName + "\":\n");
            writer.append("               writer.writeOpCode(" + opIds.get(opName).toString() + ");\n");
            writeArgumentsToByteCode(executableElement, astTypes, writer);

            writer.append("               break;\n");
        }


        writer.append("            default: throw new IllegalArgumentException(\"Wrong node type: \" + node.at_pos_boxed(tc, 0).get_str(tc));\n");

        writer.append("        }\n");

        writer.append("    }\n");
    }

    private void writeByteCodeToNode(AstTypes astTypes, PrintWriter writer, RoundEnvironment roundEnv) {
        HashMap<String, ExecutableElement> predeserializers = getPredeserializers(roundEnv);

        HashMap<String, Integer> opIds = calculateOpCodes(roundEnv);

        writer.append("    public NQPNode byteCodeToNode(ByteCodeReader reader, NQPScope scope) {\n");

        writer.append("        switch (reader.readOpCode()) {\n");


        for (Element element : roundEnv.getElementsAnnotatedWith(Deserializer.class)) {
            ExecutableElement executableElement = (ExecutableElement) element;


            String opName = getOpName(element);

            writer.append("           case " + opIds.get(opName).toString()+ ":\n");

            if (predeserializers.containsKey(opName)) {
                ExecutableElement predeserializer = predeserializers.get(opName);
                writer.append("{\n");
                writer.append("ByteCodeReader readerClone = reader.duplicate();\n");
                writer.append("scope = " + getElementCall(predeserializer) + "(");
                writeByteCodeParams(predeserializer, "readerClone", astTypes, writer);
                writer.append(");\n");
                writer.append("}\n");
            }

            writer.append("                return " + getElementCall(executableElement) + "(");

            writeByteCodeParams(executableElement, "reader", astTypes, writer);

            writer.append(");\n");
        }

        writer.append("            default: throw new IllegalArgumentException(\"Wrong op code \");\n");

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

            AstBuilder astBuilder = element.getAnnotation(AstBuilder.class);
            AstTypes astTypes = new AstTypes(astBuilder);


            String builderClass =  type.getQualifiedName().toString();
            String generatedClassQualified = builderClass + "Gen";
            String generatedClassSimple = type.getSimpleName().toString() + "Gen";

            String packageName = processingEnv.getElementUtils().getPackageOf(element).getQualifiedName().toString();

            try {
                JavaFileObject builderFile = processingEnv.getFiler().createSourceFile(generatedClassQualified);
                try (PrintWriter writer = new PrintWriter(builderFile.openWriter())) {
                    writer.append("package " + packageName + ";\n");


                    writer.append("import org.perl6.nqp.truffle.nodes.NQPNode;\n");
                    writer.append("import org.perl6.nqp.truffle.NQPScope;");

                    if (astBuilder.tastToByteCode()) {
                        writer.append("import org.perl6.nqp.truffle.ByteCodeWriter;\n");
                    }

                    if (astBuilder.tastToByteCode() || astBuilder.tastToNode()) {
                        writer.append("import org.perl6.nqp.runtime.ThreadContext;\n");
                        writer.append("import org.perl6.nqp.sixmodel.SixModelObject;\n");
                    }


                    if (astBuilder.byteCodeToNode()) {
                        writer.append("import org.perl6.nqp.truffle.ByteCodeReader;\n");
                    }

                    writer.append("public class " + generatedClassSimple + " extends " + builderClass + " {\n");
                    if (astBuilder.tastToByteCode()) {
                        writeTastToByteCode(astTypes, writer, roundEnv);
                    }

                    if (astBuilder.tastToNode()) {
                        writeTastToNode(astTypes, writer, roundEnv);
                    }

                    if (astBuilder.byteCodeToNode()) {
                        writeByteCodeToNode(astTypes, writer, roundEnv);
                    }

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
