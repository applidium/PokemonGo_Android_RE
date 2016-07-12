package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat.Feature;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.lang.reflect.Type;
import java.util.Collection;

public abstract class StaticListSerializerBase<T extends Collection<?>> extends StdSerializer<T> implements ContextualSerializer {
    protected final JsonSerializer<String> _serializer;
    protected final Boolean _unwrapSingle;

    protected StaticListSerializerBase(StaticListSerializerBase<?> staticListSerializerBase, JsonSerializer<?> jsonSerializer, Boolean bool) {
        super((StdSerializer) staticListSerializerBase);
        this._serializer = jsonSerializer;
        this._unwrapSingle = bool;
    }

    protected StaticListSerializerBase(Class<?> cls) {
        super(cls, false);
        this._serializer = null;
        this._unwrapSingle = null;
    }

    public abstract JsonSerializer<?> _withResolved(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, Boolean bool);

    protected abstract void acceptContentVisitor(JsonArrayFormatVisitor jsonArrayFormatVisitor) throws JsonMappingException;

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        acceptContentVisitor(jsonFormatVisitorWrapper.expectArrayFormat(javaType));
    }

    protected abstract JsonNode contentSchema();

    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer serializerInstance;
        Boolean feature;
        JsonSerializer jsonSerializer = null;
        if (beanProperty != null) {
            Value findFormatOverrides;
            AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
            Annotated member = beanProperty.getMember();
            if (member != null) {
                Object findContentSerializer = annotationIntrospector.findContentSerializer(member);
                if (findContentSerializer != null) {
                    serializerInstance = serializerProvider.serializerInstance(member, findContentSerializer);
                    findFormatOverrides = beanProperty.findFormatOverrides(annotationIntrospector);
                    feature = findFormatOverrides == null ? findFormatOverrides.getFeature(Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) : null;
                }
            }
            serializerInstance = null;
            findFormatOverrides = beanProperty.findFormatOverrides(annotationIntrospector);
            if (findFormatOverrides == null) {
            }
        } else {
            feature = null;
            serializerInstance = null;
        }
        if (serializerInstance == null) {
            serializerInstance = this._serializer;
        }
        serializerInstance = findConvertingContentSerializer(serializerProvider, beanProperty, serializerInstance);
        serializerInstance = serializerInstance == null ? serializerProvider.findValueSerializer(String.class, beanProperty) : serializerProvider.handleSecondaryContextualization(serializerInstance, beanProperty);
        if (!isDefaultSerializer(serializerInstance)) {
            jsonSerializer = serializerInstance;
        }
        return (jsonSerializer == this._serializer && feature == this._unwrapSingle) ? this : _withResolved(beanProperty, jsonSerializer, feature);
    }

    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        return createSchemaNode("array", true).set("items", contentSchema());
    }

    public boolean isEmpty(SerializerProvider serializerProvider, T t) {
        return t == null || t.size() == 0;
    }

    @Deprecated
    public boolean isEmpty(T t) {
        return isEmpty(null, (Collection) t);
    }
}
