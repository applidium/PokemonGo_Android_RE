package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import java.util.Collections;
import java.util.Iterator;

public class SimpleBeanPropertyDefinition extends BeanPropertyDefinition {
    protected final PropertyName _fullName;
    protected final Include _inclusion;
    protected final AnnotationIntrospector _introspector;
    protected final AnnotatedMember _member;
    protected final PropertyMetadata _metadata;
    @Deprecated
    protected final String _name;

    @Deprecated
    public SimpleBeanPropertyDefinition(AnnotatedMember annotatedMember) {
        this(annotatedMember, annotatedMember.getName(), null);
    }

    protected SimpleBeanPropertyDefinition(AnnotatedMember annotatedMember, PropertyName propertyName, AnnotationIntrospector annotationIntrospector, PropertyMetadata propertyMetadata, Include include) {
        this._introspector = annotationIntrospector;
        this._member = annotatedMember;
        this._fullName = propertyName;
        this._name = propertyName.getSimpleName();
        if (propertyMetadata == null) {
            propertyMetadata = PropertyMetadata.STD_OPTIONAL;
        }
        this._metadata = propertyMetadata;
        this._inclusion = include;
    }

    @Deprecated
    public SimpleBeanPropertyDefinition(AnnotatedMember annotatedMember, String str) {
        this(annotatedMember, new PropertyName(str), null, null, null);
    }

    @Deprecated
    protected SimpleBeanPropertyDefinition(AnnotatedMember annotatedMember, String str, AnnotationIntrospector annotationIntrospector) {
        this(annotatedMember, new PropertyName(str), annotationIntrospector, null, null);
    }

    public static SimpleBeanPropertyDefinition construct(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember) {
        return new SimpleBeanPropertyDefinition(annotatedMember, PropertyName.construct(annotatedMember.getName()), mapperConfig == null ? null : mapperConfig.getAnnotationIntrospector(), null, null);
    }

    public static SimpleBeanPropertyDefinition construct(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, PropertyName propertyName) {
        return construct(mapperConfig, annotatedMember, propertyName, null, null);
    }

    public static SimpleBeanPropertyDefinition construct(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, PropertyName propertyName, PropertyMetadata propertyMetadata, Include include) {
        return new SimpleBeanPropertyDefinition(annotatedMember, propertyName, mapperConfig == null ? null : mapperConfig.getAnnotationIntrospector(), propertyMetadata, include);
    }

    @Deprecated
    public static SimpleBeanPropertyDefinition construct(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, String str) {
        return new SimpleBeanPropertyDefinition(annotatedMember, PropertyName.construct(str), mapperConfig == null ? null : mapperConfig.getAnnotationIntrospector(), null, null);
    }

    public Include findInclusion() {
        return this._inclusion;
    }

    public AnnotatedMember getAccessor() {
        AnnotatedMember getter = getGetter();
        return getter == null ? getField() : getter;
    }

    public AnnotatedParameter getConstructorParameter() {
        return this._member instanceof AnnotatedParameter ? (AnnotatedParameter) this._member : null;
    }

    public Iterator<AnnotatedParameter> getConstructorParameters() {
        AnnotatedParameter constructorParameter = getConstructorParameter();
        return constructorParameter == null ? EmptyIterator.instance() : Collections.singleton(constructorParameter).iterator();
    }

    public AnnotatedField getField() {
        return this._member instanceof AnnotatedField ? (AnnotatedField) this._member : null;
    }

    public PropertyName getFullName() {
        return this._fullName;
    }

    public AnnotatedMethod getGetter() {
        return ((this._member instanceof AnnotatedMethod) && ((AnnotatedMethod) this._member).getParameterCount() == 0) ? (AnnotatedMethod) this._member : null;
    }

    public String getInternalName() {
        return getName();
    }

    public PropertyMetadata getMetadata() {
        return this._metadata;
    }

    public AnnotatedMember getMutator() {
        AnnotatedMember constructorParameter = getConstructorParameter();
        if (constructorParameter != null) {
            return constructorParameter;
        }
        constructorParameter = getSetter();
        return constructorParameter == null ? getField() : constructorParameter;
    }

    public String getName() {
        return this._fullName.getSimpleName();
    }

    public AnnotatedMember getNonConstructorMutator() {
        AnnotatedMember setter = getSetter();
        return setter == null ? getField() : setter;
    }

    public AnnotatedMember getPrimaryMember() {
        return this._member;
    }

    public AnnotatedMethod getSetter() {
        return ((this._member instanceof AnnotatedMethod) && ((AnnotatedMethod) this._member).getParameterCount() == 1) ? (AnnotatedMethod) this._member : null;
    }

    public PropertyName getWrapperName() {
        return (this._introspector != null || this._member == null) ? this._introspector.findWrapperName(this._member) : null;
    }

    public boolean hasConstructorParameter() {
        return this._member instanceof AnnotatedParameter;
    }

    public boolean hasField() {
        return this._member instanceof AnnotatedField;
    }

    public boolean hasGetter() {
        return getGetter() != null;
    }

    public boolean hasName(PropertyName propertyName) {
        return this._fullName.equals(propertyName);
    }

    public boolean hasSetter() {
        return getSetter() != null;
    }

    public boolean isExplicitlyIncluded() {
        return false;
    }

    public boolean isExplicitlyNamed() {
        return false;
    }

    public BeanPropertyDefinition withInclusion(Include include) {
        return this._inclusion == include ? this : new SimpleBeanPropertyDefinition(this._member, this._fullName, this._introspector, this._metadata, include);
    }

    public BeanPropertyDefinition withMetadata(PropertyMetadata propertyMetadata) {
        if (propertyMetadata.equals(this._metadata)) {
            return this;
        }
        return new SimpleBeanPropertyDefinition(this._member, this._fullName, this._introspector, propertyMetadata, this._inclusion);
    }

    public BeanPropertyDefinition withName(PropertyName propertyName) {
        if (this._fullName.equals(propertyName)) {
            return this;
        }
        return new SimpleBeanPropertyDefinition(this._member, propertyName, this._introspector, this._metadata, this._inclusion);
    }

    @Deprecated
    public BeanPropertyDefinition withName(String str) {
        return withSimpleName(str);
    }

    public BeanPropertyDefinition withSimpleName(String str) {
        return (!this._fullName.hasSimpleName(str) || this._fullName.hasNamespace()) ? new SimpleBeanPropertyDefinition(this._member, new PropertyName(str), this._introspector, this._metadata, this._inclusion) : this;
    }
}
