package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Member;
import java.util.Collections;

public abstract class AnnotatedMember extends Annotated implements Serializable {
    private static final long serialVersionUID = 1;
    protected final transient AnnotationMap _annotations;
    protected final transient AnnotatedClass _context;

    protected AnnotatedMember(AnnotatedClass annotatedClass, AnnotationMap annotationMap) {
        this._context = annotatedClass;
        this._annotations = annotationMap;
    }

    protected AnnotatedMember(AnnotatedMember annotatedMember) {
        this._context = annotatedMember._context;
        this._annotations = annotatedMember._annotations;
    }

    public final boolean addIfNotPresent(Annotation annotation) {
        return this._annotations.addIfNotPresent(annotation);
    }

    public final boolean addOrOverride(Annotation annotation) {
        return this._annotations.add(annotation);
    }

    public Iterable<Annotation> annotations() {
        return this._annotations == null ? Collections.emptyList() : this._annotations.annotations();
    }

    public final void fixAccess() {
        ClassUtil.checkAndFixAccess(getMember());
    }

    protected AnnotationMap getAllAnnotations() {
        return this._annotations;
    }

    public AnnotatedClass getContextClass() {
        return this._context;
    }

    public abstract Class<?> getDeclaringClass();

    public abstract Member getMember();

    public abstract Object getValue(Object obj) throws UnsupportedOperationException, IllegalArgumentException;

    public abstract void setValue(Object obj, Object obj2) throws UnsupportedOperationException, IllegalArgumentException;
}
