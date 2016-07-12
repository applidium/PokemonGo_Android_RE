package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ResolvableDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
import java.util.Collection;

public abstract class DelegatingDeserializer extends StdDeserializer<Object> implements ContextualDeserializer, ResolvableDeserializer {
    private static final long serialVersionUID = 1;
    protected final JsonDeserializer<?> _delegatee;

    public DelegatingDeserializer(JsonDeserializer<?> jsonDeserializer) {
        super(_figureType(jsonDeserializer));
        this._delegatee = jsonDeserializer;
    }

    private static Class<?> _figureType(JsonDeserializer<?> jsonDeserializer) {
        Class<?> handledType = jsonDeserializer.handledType();
        return handledType != null ? handledType : Object.class;
    }

    @Deprecated
    protected JsonDeserializer<?> _createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty, JsonDeserializer<?> jsonDeserializer) {
        return jsonDeserializer == this._delegatee ? this : newDelegatingInstance(jsonDeserializer);
    }

    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(this._delegatee, beanProperty, deserializationContext.constructType(this._delegatee.handledType()));
        return handleSecondaryContextualization == this._delegatee ? this : newDelegatingInstance(handleSecondaryContextualization);
    }

    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        return this._delegatee.deserialize(jsonParser, deserializationContext);
    }

    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException, JsonProcessingException {
        return this._delegatee.deserialize(jsonParser, deserializationContext, obj);
    }

    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return this._delegatee.deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
    }

    public SettableBeanProperty findBackReference(String str) {
        return this._delegatee.findBackReference(str);
    }

    public JsonDeserializer<?> getDelegatee() {
        return this._delegatee;
    }

    @Deprecated
    public Object getEmptyValue() {
        return this._delegatee.getEmptyValue();
    }

    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return this._delegatee.getEmptyValue(deserializationContext);
    }

    public Collection<Object> getKnownPropertyNames() {
        return this._delegatee.getKnownPropertyNames();
    }

    @Deprecated
    public Object getNullValue() {
        return this._delegatee.getNullValue();
    }

    public Object getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return this._delegatee.getNullValue(deserializationContext);
    }

    public ObjectIdReader getObjectIdReader() {
        return this._delegatee.getObjectIdReader();
    }

    public boolean isCachable() {
        return this._delegatee.isCachable();
    }

    protected abstract JsonDeserializer<?> newDelegatingInstance(JsonDeserializer<?> jsonDeserializer);

    public JsonDeserializer<?> replaceDelegatee(JsonDeserializer<?> jsonDeserializer) {
        return jsonDeserializer == this._delegatee ? this : newDelegatingInstance(jsonDeserializer);
    }

    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        if (this._delegatee instanceof ResolvableDeserializer) {
            ((ResolvableDeserializer) this._delegatee).resolve(deserializationContext);
        }
    }
}
