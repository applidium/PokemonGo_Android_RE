package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ResolvableDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Converter;
import java.io.IOException;

public class StdDelegatingDeserializer<T> extends StdDeserializer<T> implements ContextualDeserializer, ResolvableDeserializer {
    private static final long serialVersionUID = 1;
    protected final Converter<Object, T> _converter;
    protected final JsonDeserializer<Object> _delegateDeserializer;
    protected final JavaType _delegateType;

    protected StdDelegatingDeserializer(StdDelegatingDeserializer<T> stdDelegatingDeserializer) {
        super((StdDeserializer) stdDelegatingDeserializer);
        this._converter = stdDelegatingDeserializer._converter;
        this._delegateType = stdDelegatingDeserializer._delegateType;
        this._delegateDeserializer = stdDelegatingDeserializer._delegateDeserializer;
    }

    public StdDelegatingDeserializer(Converter<?, T> converter) {
        super(Object.class);
        this._converter = converter;
        this._delegateType = null;
        this._delegateDeserializer = null;
    }

    public StdDelegatingDeserializer(Converter<Object, T> converter, JavaType javaType, JsonDeserializer<?> jsonDeserializer) {
        super(javaType);
        this._converter = converter;
        this._delegateType = javaType;
        this._delegateDeserializer = jsonDeserializer;
    }

    protected Object _handleIncompatibleUpdateValue(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        throw new UnsupportedOperationException(String.format("Can not update object of type %s (using deserializer for type %s)" + obj.getClass().getName(), new Object[]{this._delegateType}));
    }

    protected T convertValue(Object obj) {
        return this._converter.convert(obj);
    }

    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        if (this._delegateDeserializer != null) {
            JsonDeserializer handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(this._delegateDeserializer, beanProperty, this._delegateType);
            return handleSecondaryContextualization != this._delegateDeserializer ? withDelegate(this._converter, this._delegateType, handleSecondaryContextualization) : this;
        } else {
            JavaType inputType = this._converter.getInputType(deserializationContext.getTypeFactory());
            return withDelegate(this._converter, inputType, deserializationContext.findContextualValueDeserializer(inputType, beanProperty));
        }
    }

    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object deserialize = this._delegateDeserializer.deserialize(jsonParser, deserializationContext);
        return deserialize == null ? null : convertValue(deserialize);
    }

    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        return this._delegateType.getRawClass().isAssignableFrom(obj.getClass()) ? this._delegateDeserializer.deserialize(jsonParser, deserializationContext, obj) : _handleIncompatibleUpdateValue(jsonParser, deserializationContext, obj);
    }

    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        Object deserializeWithType = this._delegateDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
        return deserializeWithType == null ? null : convertValue(deserializeWithType);
    }

    public JsonDeserializer<?> getDelegatee() {
        return this._delegateDeserializer;
    }

    public Class<?> handledType() {
        return this._delegateDeserializer.handledType();
    }

    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        if (this._delegateDeserializer != null && (this._delegateDeserializer instanceof ResolvableDeserializer)) {
            ((ResolvableDeserializer) this._delegateDeserializer).resolve(deserializationContext);
        }
    }

    protected StdDelegatingDeserializer<T> withDelegate(Converter<Object, T> converter, JavaType javaType, JsonDeserializer<?> jsonDeserializer) {
        if (getClass() == StdDelegatingDeserializer.class) {
            return new StdDelegatingDeserializer(converter, javaType, jsonDeserializer);
        }
        throw new IllegalStateException("Sub-class " + getClass().getName() + " must override 'withDelegate'");
    }
}
