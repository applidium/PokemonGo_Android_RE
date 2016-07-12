package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.PropertyFilter;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.voxelbusters.nativeplugins.defines.Keys;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;

public abstract class StdSerializer<T> extends JsonSerializer<T> implements JsonFormatVisitable, SchemaAware, Serializable {
    private static final long serialVersionUID = 1;
    protected final Class<T> _handledType;

    protected StdSerializer(JavaType javaType) {
        this._handledType = javaType.getRawClass();
    }

    protected StdSerializer(StdSerializer<?> stdSerializer) {
        this._handledType = stdSerializer._handledType;
    }

    protected StdSerializer(Class<T> cls) {
        this._handledType = cls;
    }

    protected StdSerializer(Class<?> cls, boolean z) {
        this._handledType = cls;
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        jsonFormatVisitorWrapper.expectAnyFormat(javaType);
    }

    protected ObjectNode createObjectNode() {
        return JsonNodeFactory.instance.objectNode();
    }

    protected ObjectNode createSchemaNode(String str) {
        ObjectNode createObjectNode = createObjectNode();
        createObjectNode.put(Keys.TYPE, str);
        return createObjectNode;
    }

    protected ObjectNode createSchemaNode(String str, boolean z) {
        ObjectNode createSchemaNode = createSchemaNode(str);
        if (!z) {
            createSchemaNode.put("required", !z);
        }
        return createSchemaNode;
    }

    protected JsonSerializer<?> findConvertingContentSerializer(SerializerProvider serializerProvider, BeanProperty beanProperty, JsonSerializer<?> jsonSerializer) throws JsonMappingException {
        AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
        if (annotationIntrospector == null || beanProperty == null) {
            return jsonSerializer;
        }
        AnnotatedMember member = beanProperty.getMember();
        if (member == null) {
            return jsonSerializer;
        }
        Object findSerializationContentConverter = annotationIntrospector.findSerializationContentConverter(member);
        if (findSerializationContentConverter == null) {
            return jsonSerializer;
        }
        JsonSerializer findValueSerializer;
        Converter converterInstance = serializerProvider.converterInstance(beanProperty.getMember(), findSerializationContentConverter);
        JavaType outputType = converterInstance.getOutputType(serializerProvider.getTypeFactory());
        if (jsonSerializer == null && !outputType.hasRawClass(Object.class)) {
            findValueSerializer = serializerProvider.findValueSerializer(outputType);
        }
        return new StdDelegatingSerializer(converterInstance, outputType, findValueSerializer);
    }

    protected PropertyFilter findPropertyFilter(SerializerProvider serializerProvider, Object obj, Object obj2) throws JsonMappingException {
        FilterProvider filterProvider = serializerProvider.getFilterProvider();
        if (filterProvider != null) {
            return filterProvider.findPropertyFilter(obj, obj2);
        }
        throw new JsonMappingException("Can not resolve PropertyFilter with id '" + obj + "'; no FilterProvider configured");
    }

    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) throws JsonMappingException {
        return createSchemaNode("string");
    }

    public JsonNode getSchema(SerializerProvider serializerProvider, Type type, boolean z) throws JsonMappingException {
        ObjectNode objectNode = (ObjectNode) getSchema(serializerProvider, type);
        if (!z) {
            objectNode.put("required", !z);
        }
        return objectNode;
    }

    public Class<T> handledType() {
        return this._handledType;
    }

    protected boolean isDefaultSerializer(JsonSerializer<?> jsonSerializer) {
        return ClassUtil.isJacksonStdImpl((Object) jsonSerializer);
    }

    public abstract void serialize(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException;

    public void wrapAndThrow(SerializerProvider serializerProvider, Throwable th, Object obj, int i) throws IOException {
        Throwable th2 = th;
        while ((th2 instanceof InvocationTargetException) && th2.getCause() != null) {
            th2 = th2.getCause();
        }
        if (th2 instanceof Error) {
            throw ((Error) th2);
        }
        Object obj2 = (serializerProvider == null || serializerProvider.isEnabled(SerializationFeature.WRAP_EXCEPTIONS)) ? 1 : null;
        if (th2 instanceof IOException) {
            if (obj2 == null || !(th2 instanceof JsonMappingException)) {
                throw ((IOException) th2);
            }
        } else if (obj2 == null && (th2 instanceof RuntimeException)) {
            throw ((RuntimeException) th2);
        }
        throw JsonMappingException.wrapWithPath(th2, obj, i);
    }

    public void wrapAndThrow(SerializerProvider serializerProvider, Throwable th, Object obj, String str) throws IOException {
        Throwable th2 = th;
        while ((th2 instanceof InvocationTargetException) && th2.getCause() != null) {
            th2 = th2.getCause();
        }
        if (th2 instanceof Error) {
            throw ((Error) th2);
        }
        Object obj2 = (serializerProvider == null || serializerProvider.isEnabled(SerializationFeature.WRAP_EXCEPTIONS)) ? 1 : null;
        if (th2 instanceof IOException) {
            if (obj2 == null || !(th2 instanceof JsonMappingException)) {
                throw ((IOException) th2);
            }
        } else if (obj2 == null && (th2 instanceof RuntimeException)) {
            throw ((RuntimeException) th2);
        }
        throw JsonMappingException.wrapWithPath(th2, obj, str);
    }
}
