package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

public abstract class AnnotatedWithParams extends AnnotatedMember {
    private static final long serialVersionUID = 1;
    protected final AnnotationMap[] _paramAnnotations;

    protected AnnotatedWithParams(AnnotatedClass annotatedClass, AnnotationMap annotationMap, AnnotationMap[] annotationMapArr) {
        super(annotatedClass, annotationMap);
        this._paramAnnotations = annotationMapArr;
    }

    public final void addOrOverrideParam(int i, Annotation annotation) {
        AnnotationMap annotationMap = this._paramAnnotations[i];
        if (annotationMap == null) {
            annotationMap = new AnnotationMap();
            this._paramAnnotations[i] = annotationMap;
        }
        annotationMap.add(annotation);
    }

    public abstract Object call() throws Exception;

    public abstract Object call(Object[] objArr) throws Exception;

    public abstract Object call1(Object obj) throws Exception;

    public final <A extends Annotation> A getAnnotation(Class<A> cls) {
        return this._annotations.get(cls);
    }

    public final int getAnnotationCount() {
        return this._annotations.size();
    }

    public abstract Type getGenericParameterType(int i);

    public final AnnotatedParameter getParameter(int i) {
        return new AnnotatedParameter(this, getGenericParameterType(i), getParameterAnnotations(i), i);
    }

    public final AnnotationMap getParameterAnnotations(int i) {
        return (this._paramAnnotations == null || i < 0 || i >= this._paramAnnotations.length) ? null : this._paramAnnotations[i];
    }

    public abstract int getParameterCount();

    public abstract Class<?> getRawParameterType(int i);

    protected JavaType getType(TypeBindings typeBindings, TypeVariable<?>[] typeVariableArr) {
        if (typeVariableArr != null && typeVariableArr.length > 0) {
            typeBindings = typeBindings.childInstance();
            for (TypeVariable typeVariable : typeVariableArr) {
                typeBindings._addPlaceholder(typeVariable.getName());
                Type type = typeVariable.getBounds()[0];
                typeBindings.addBinding(typeVariable.getName(), type == null ? TypeFactory.unknownType() : typeBindings.resolveType(type));
            }
        }
        return typeBindings.resolveType(getGenericType());
    }

    protected AnnotatedParameter replaceParameterAnnotations(int i, AnnotationMap annotationMap) {
        this._paramAnnotations[i] = annotationMap;
        return getParameter(i);
    }

    public final JavaType resolveParameterType(int i, TypeBindings typeBindings) {
        return typeBindings.resolveType(getGenericParameterType(i));
    }
}
