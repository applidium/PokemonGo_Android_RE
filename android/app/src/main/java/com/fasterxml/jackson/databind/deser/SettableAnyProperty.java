package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId.Referring;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
import java.io.Serializable;

public class SettableAnyProperty implements Serializable {
    private static final long serialVersionUID = 1;
    protected final BeanProperty _property;
    protected final AnnotatedMethod _setter;
    protected final JavaType _type;
    protected JsonDeserializer<Object> _valueDeserializer;
    protected final TypeDeserializer _valueTypeDeserializer;

    private static class AnySetterReferring extends Referring {
        private final SettableAnyProperty _parent;
        private final Object _pojo;
        private final String _propName;

        public AnySetterReferring(SettableAnyProperty settableAnyProperty, UnresolvedForwardReference unresolvedForwardReference, Class<?> cls, Object obj, String str) {
            super(unresolvedForwardReference, cls);
            this._parent = settableAnyProperty;
            this._pojo = obj;
            this._propName = str;
        }

        public void handleResolvedForwardReference(Object obj, Object obj2) throws IOException {
            if (hasId(obj)) {
                this._parent.set(this._pojo, this._propName, obj2);
                return;
            }
            throw new IllegalArgumentException("Trying to resolve a forward reference with id [" + obj.toString() + "] that wasn't previously registered.");
        }
    }

    public SettableAnyProperty(BeanProperty beanProperty, AnnotatedMethod annotatedMethod, JavaType javaType, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer) {
        this._property = beanProperty;
        this._setter = annotatedMethod;
        this._type = javaType;
        this._valueDeserializer = jsonDeserializer;
        this._valueTypeDeserializer = typeDeserializer;
    }

    protected SettableAnyProperty(SettableAnyProperty settableAnyProperty) {
        this._property = settableAnyProperty._property;
        this._setter = settableAnyProperty._setter;
        this._type = settableAnyProperty._type;
        this._valueDeserializer = settableAnyProperty._valueDeserializer;
        this._valueTypeDeserializer = settableAnyProperty._valueTypeDeserializer;
    }

    private String getClassName() {
        return this._setter.getDeclaringClass().getName();
    }

    protected void _throwAsIOE(Exception exception, String str, Object obj) throws IOException {
        if (exception instanceof IllegalArgumentException) {
            String name = obj == null ? "[NULL]" : obj.getClass().getName();
            StringBuilder append = new StringBuilder("Problem deserializing \"any\" property '").append(str);
            append.append("' of class " + getClassName() + " (expected type: ").append(this._type);
            append.append("; actual type: ").append(name).append(")");
            name = exception.getMessage();
            if (name != null) {
                append.append(", problem: ").append(name);
            } else {
                append.append(" (no error message provided)");
            }
            throw new JsonMappingException(append.toString(), null, exception);
        } else if (exception instanceof IOException) {
            throw ((IOException) exception);
        } else if (exception instanceof RuntimeException) {
            throw ((RuntimeException) exception);
        } else {
            Throwable cause;
            while (cause.getCause() != null) {
                cause = cause.getCause();
            }
            throw new JsonMappingException(cause.getMessage(), null, cause);
        }
    }

    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return jsonParser.getCurrentToken() == JsonToken.VALUE_NULL ? null : this._valueTypeDeserializer != null ? this._valueDeserializer.deserializeWithType(jsonParser, deserializationContext, this._valueTypeDeserializer) : this._valueDeserializer.deserialize(jsonParser, deserializationContext);
    }

    public final void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        try {
            set(obj, str, deserialize(jsonParser, deserializationContext));
        } catch (Throwable e) {
            if (this._valueDeserializer.getObjectIdReader() == null) {
                throw JsonMappingException.from(jsonParser, "Unresolved forward reference but no identity info.", e);
            }
            e.getRoid().appendReferring(new AnySetterReferring(this, e, this._type.getRawClass(), obj, str));
        }
    }

    public BeanProperty getProperty() {
        return this._property;
    }

    public JavaType getType() {
        return this._type;
    }

    public boolean hasValueDeserializer() {
        return this._valueDeserializer != null;
    }

    Object readResolve() {
        if (this._setter != null && this._setter.getAnnotated() != null) {
            return this;
        }
        throw new IllegalArgumentException("Missing method (broken JDK (de)serialization?)");
    }

    public void set(Object obj, String str, Object obj2) throws IOException {
        try {
            this._setter.getAnnotated().invoke(obj, new Object[]{str, obj2});
        } catch (Exception e) {
            _throwAsIOE(e, str, obj2);
        }
    }

    public String toString() {
        return "[any property on class " + getClassName() + "]";
    }

    public SettableAnyProperty withValueDeserializer(JsonDeserializer<Object> jsonDeserializer) {
        return new SettableAnyProperty(this._property, this._setter, this._type, jsonDeserializer, this._valueTypeDeserializer);
    }
}
