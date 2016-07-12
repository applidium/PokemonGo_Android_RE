package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.Named;
import java.lang.annotation.Annotation;

public interface BeanProperty extends Named {

    public static class Std implements BeanProperty {
        protected final Annotations _contextAnnotations;
        protected final AnnotatedMember _member;
        protected final PropertyMetadata _metadata;
        protected final PropertyName _name;
        protected final JavaType _type;
        protected final PropertyName _wrapperName;

        public Std(Std std, JavaType javaType) {
            this(std._name, javaType, std._wrapperName, std._contextAnnotations, std._member, std._metadata);
        }

        public Std(PropertyName propertyName, JavaType javaType, PropertyName propertyName2, Annotations annotations, AnnotatedMember annotatedMember, PropertyMetadata propertyMetadata) {
            this._name = propertyName;
            this._type = javaType;
            this._wrapperName = propertyName2;
            this._metadata = propertyMetadata;
            this._member = annotatedMember;
            this._contextAnnotations = annotations;
        }

        @Deprecated
        public Std(String str, JavaType javaType, PropertyName propertyName, Annotations annotations, AnnotatedMember annotatedMember, boolean z) {
            this(new PropertyName(str), javaType, propertyName, annotations, annotatedMember, z ? PropertyMetadata.STD_REQUIRED : PropertyMetadata.STD_OPTIONAL);
        }

        public void depositSchemaProperty(JsonObjectFormatVisitor jsonObjectFormatVisitor) {
            throw new UnsupportedOperationException("Instances of " + getClass().getName() + " should not get visited");
        }

        public Value findFormatOverrides(AnnotationIntrospector annotationIntrospector) {
            return null;
        }

        public <A extends Annotation> A getAnnotation(Class<A> cls) {
            return this._member == null ? null : this._member.getAnnotation(cls);
        }

        public <A extends Annotation> A getContextAnnotation(Class<A> cls) {
            return this._contextAnnotations == null ? null : this._contextAnnotations.get(cls);
        }

        public PropertyName getFullName() {
            return this._name;
        }

        public AnnotatedMember getMember() {
            return this._member;
        }

        public PropertyMetadata getMetadata() {
            return this._metadata;
        }

        public String getName() {
            return this._name.getSimpleName();
        }

        public JavaType getType() {
            return this._type;
        }

        public PropertyName getWrapperName() {
            return this._wrapperName;
        }

        public boolean isRequired() {
            return this._metadata.isRequired();
        }

        public boolean isVirtual() {
            return false;
        }

        public Std withType(JavaType javaType) {
            return new Std(this, javaType);
        }
    }

    void depositSchemaProperty(JsonObjectFormatVisitor jsonObjectFormatVisitor) throws JsonMappingException;

    Value findFormatOverrides(AnnotationIntrospector annotationIntrospector);

    <A extends Annotation> A getAnnotation(Class<A> cls);

    <A extends Annotation> A getContextAnnotation(Class<A> cls);

    PropertyName getFullName();

    AnnotatedMember getMember();

    PropertyMetadata getMetadata();

    String getName();

    JavaType getType();

    PropertyName getWrapperName();

    boolean isRequired();
}
