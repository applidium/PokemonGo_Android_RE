package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;

public abstract class ContainerSerializer<T> extends StdSerializer<T> {
    protected ContainerSerializer(JavaType javaType) {
        super(javaType);
    }

    protected ContainerSerializer(ContainerSerializer<?> containerSerializer) {
        super(containerSerializer._handledType, false);
    }

    protected ContainerSerializer(Class<T> cls) {
        super((Class) cls);
    }

    protected ContainerSerializer(Class<?> cls, boolean z) {
        super(cls, z);
    }

    protected abstract ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer);

    public abstract JsonSerializer<?> getContentSerializer();

    public abstract JavaType getContentType();

    protected boolean hasContentTypeAnnotation(SerializerProvider serializerProvider, BeanProperty beanProperty) {
        if (beanProperty != null) {
            AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
            Annotated member = beanProperty.getMember();
            if (!(member == null || annotationIntrospector == null || annotationIntrospector.findSerializationContentType(member, beanProperty.getType()) == null)) {
                return true;
            }
        }
        return false;
    }

    public abstract boolean hasSingleElement(T t);

    @Deprecated
    public boolean isEmpty(T t) {
        return isEmpty(null, t);
    }

    public ContainerSerializer<?> withValueTypeSerializer(TypeSerializer typeSerializer) {
        return typeSerializer == null ? this : _withValueTypeSerializer(typeSerializer);
    }
}
