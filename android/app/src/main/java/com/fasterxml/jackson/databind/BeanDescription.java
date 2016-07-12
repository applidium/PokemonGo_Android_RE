package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.Converter;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class BeanDescription {
    protected final JavaType _type;

    protected BeanDescription(JavaType javaType) {
        this._type = javaType;
    }

    public abstract TypeBindings bindingsForBeanType();

    public abstract AnnotatedMember findAnyGetter();

    public abstract AnnotatedMethod findAnySetter();

    public abstract Map<String, AnnotatedMember> findBackReferenceProperties();

    public abstract AnnotatedConstructor findDefaultConstructor();

    public abstract Converter<Object, Object> findDeserializationConverter();

    public abstract Value findExpectedFormat(Value value);

    public abstract Method findFactoryMethod(Class<?>... clsArr);

    public abstract Map<Object, AnnotatedMember> findInjectables();

    public abstract AnnotatedMethod findJsonValueMethod();

    public abstract AnnotatedMethod findMethod(String str, Class<?>[] clsArr);

    public abstract Class<?> findPOJOBuilder();

    public abstract JsonPOJOBuilder.Value findPOJOBuilderConfig();

    public abstract List<BeanPropertyDefinition> findProperties();

    public abstract Converter<Object, Object> findSerializationConverter();

    public abstract Include findSerializationInclusion(Include include);

    public abstract Include findSerializationInclusionForContent(Include include);

    public abstract Constructor<?> findSingleArgConstructor(Class<?>... clsArr);

    public Class<?> getBeanClass() {
        return this._type.getRawClass();
    }

    public abstract Annotations getClassAnnotations();

    public abstract AnnotatedClass getClassInfo();

    public abstract List<AnnotatedConstructor> getConstructors();

    public abstract List<AnnotatedMethod> getFactoryMethods();

    public abstract Set<String> getIgnoredPropertyNames();

    public abstract ObjectIdInfo getObjectIdInfo();

    public JavaType getType() {
        return this._type;
    }

    public abstract boolean hasKnownClassAnnotations();

    public abstract Object instantiateBean(boolean z);

    public abstract JavaType resolveType(Type type);
}
