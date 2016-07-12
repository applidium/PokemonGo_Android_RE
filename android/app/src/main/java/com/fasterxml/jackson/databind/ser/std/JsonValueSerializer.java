package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonStringFormatVisitor;
import com.fasterxml.jackson.databind.jsonschema.JsonSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;
import java.util.Set;

@JacksonStdImpl
public class JsonValueSerializer extends StdSerializer<Object> implements ContextualSerializer, JsonFormatVisitable, SchemaAware {
    protected final Method _accessorMethod;
    protected final boolean _forceTypeInformation;
    protected final BeanProperty _property;
    protected final JsonSerializer<Object> _valueSerializer;

    public JsonValueSerializer(JsonValueSerializer jsonValueSerializer, BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, boolean z) {
        super(_notNullClass(jsonValueSerializer.handledType()));
        this._accessorMethod = jsonValueSerializer._accessorMethod;
        this._valueSerializer = jsonSerializer;
        this._property = beanProperty;
        this._forceTypeInformation = z;
    }

    public JsonValueSerializer(Method method, JsonSerializer<?> jsonSerializer) {
        super(method.getReturnType(), false);
        this._accessorMethod = method;
        this._valueSerializer = jsonSerializer;
        this._property = null;
        this._forceTypeInformation = true;
    }

    private static final Class<Object> _notNullClass(Class<?> cls) {
        return cls == null ? Object.class : cls;
    }

    protected boolean _acceptJsonFormatVisitorForEnum(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType, Class<?> cls) throws JsonMappingException {
        int i = 0;
        JsonStringFormatVisitor expectStringFormat = jsonFormatVisitorWrapper.expectStringFormat(javaType);
        if (expectStringFormat != null) {
            Set linkedHashSet = new LinkedHashSet();
            Object[] enumConstants = cls.getEnumConstants();
            int length = enumConstants.length;
            while (i < length) {
                Object obj = enumConstants[i];
                try {
                    linkedHashSet.add(String.valueOf(this._accessorMethod.invoke(obj, new Object[0])));
                    i++;
                } catch (Exception e) {
                    Throwable e2 = e;
                    while ((e2 instanceof InvocationTargetException) && e2.getCause() != null) {
                        e2 = e2.getCause();
                    }
                    if (e2 instanceof Error) {
                        throw ((Error) e2);
                    }
                    throw JsonMappingException.wrapWithPath(e2, obj, this._accessorMethod.getName() + "()");
                }
            }
            expectStringFormat.enumTypes(linkedHashSet);
        }
        return true;
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        Class rawClass = javaType == null ? null : javaType.getRawClass();
        if (rawClass == null) {
            rawClass = this._accessorMethod.getDeclaringClass();
        }
        if (rawClass == null || !rawClass.isEnum() || !_acceptJsonFormatVisitorForEnum(jsonFormatVisitorWrapper, javaType, rawClass)) {
            JsonSerializer jsonSerializer = this._valueSerializer;
            if (jsonSerializer == null) {
                if (javaType == null) {
                    if (this._property != null) {
                        javaType = this._property.getType();
                    }
                    if (javaType == null) {
                        javaType = jsonFormatVisitorWrapper.getProvider().constructType(this._handledType);
                    }
                }
                jsonSerializer = jsonFormatVisitorWrapper.getProvider().findTypedValueSerializer(javaType, false, this._property);
                if (jsonSerializer == null) {
                    jsonFormatVisitorWrapper.expectAnyFormat(javaType);
                    return;
                }
            }
            jsonSerializer.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, null);
        }
    }

    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer jsonSerializer = this._valueSerializer;
        if (jsonSerializer != null) {
            return withResolved(beanProperty, serializerProvider.handlePrimaryContextualization(jsonSerializer, beanProperty), this._forceTypeInformation);
        }
        if (!serializerProvider.isEnabled(MapperFeature.USE_STATIC_TYPING) && !Modifier.isFinal(this._accessorMethod.getReturnType().getModifiers())) {
            return this;
        }
        JavaType constructType = serializerProvider.constructType(this._accessorMethod.getGenericReturnType());
        JsonSerializer findPrimaryPropertySerializer = serializerProvider.findPrimaryPropertySerializer(constructType, beanProperty);
        return withResolved(beanProperty, findPrimaryPropertySerializer, isNaturalTypeWithStdHandling(constructType.getRawClass(), findPrimaryPropertySerializer));
    }

    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) throws JsonMappingException {
        return this._valueSerializer instanceof SchemaAware ? ((SchemaAware) this._valueSerializer).getSchema(serializerProvider, null) : JsonSchema.getDefaultSchemaNode();
    }

    protected boolean isNaturalTypeWithStdHandling(Class<?> cls, JsonSerializer<?> jsonSerializer) {
        if (cls.isPrimitive()) {
            if (!(cls == Integer.TYPE || cls == Boolean.TYPE || cls == Double.TYPE)) {
                return false;
            }
        } else if (!(cls == String.class || cls == Integer.class || cls == Boolean.class || cls == Double.class)) {
            return false;
        }
        return isDefaultSerializer(jsonSerializer);
    }

    public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            Object invoke = this._accessorMethod.invoke(obj, new Object[0]);
            if (invoke == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
                return;
            }
            JsonSerializer jsonSerializer = this._valueSerializer;
            if (jsonSerializer == null) {
                jsonSerializer = serializerProvider.findTypedValueSerializer(invoke.getClass(), true, this._property);
            }
            jsonSerializer.serialize(invoke, jsonGenerator, serializerProvider);
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            Throwable e3 = e2;
            while ((e3 instanceof InvocationTargetException) && e3.getCause() != null) {
                e3 = e3.getCause();
            }
            if (e3 instanceof Error) {
                throw ((Error) e3);
            }
            throw JsonMappingException.wrapWithPath(e3, obj, this._accessorMethod.getName() + "()");
        }
    }

    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        try {
            Object invoke = this._accessorMethod.invoke(obj, new Object[0]);
            if (invoke == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
                return;
            }
            JsonSerializer jsonSerializer = this._valueSerializer;
            if (jsonSerializer == null) {
                jsonSerializer = serializerProvider.findValueSerializer(invoke.getClass(), this._property);
            } else if (this._forceTypeInformation) {
                typeSerializer.writeTypePrefixForScalar(obj, jsonGenerator);
                jsonSerializer.serialize(invoke, jsonGenerator, serializerProvider);
                typeSerializer.writeTypeSuffixForScalar(obj, jsonGenerator);
                return;
            }
            jsonSerializer.serializeWithType(invoke, jsonGenerator, serializerProvider, typeSerializer);
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            Throwable e3 = e2;
            while ((e3 instanceof InvocationTargetException) && e3.getCause() != null) {
                e3 = e3.getCause();
            }
            if (e3 instanceof Error) {
                throw ((Error) e3);
            }
            throw JsonMappingException.wrapWithPath(e3, obj, this._accessorMethod.getName() + "()");
        }
    }

    public String toString() {
        return "(@JsonValue serializer for method " + this._accessorMethod.getDeclaringClass() + "#" + this._accessorMethod.getName() + ")";
    }

    public JsonValueSerializer withResolved(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, boolean z) {
        return (this._property == beanProperty && this._valueSerializer == jsonSerializer && z == this._forceTypeInformation) ? this : new JsonValueSerializer(this, beanProperty, jsonSerializer, z);
    }
}
