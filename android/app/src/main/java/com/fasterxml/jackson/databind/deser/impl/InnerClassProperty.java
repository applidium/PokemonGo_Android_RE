package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;

public final class InnerClassProperty extends SettableBeanProperty {
    private static final long serialVersionUID = 1;
    protected AnnotatedConstructor _annotated;
    protected final transient Constructor<?> _creator;
    protected final SettableBeanProperty _delegate;

    public InnerClassProperty(SettableBeanProperty settableBeanProperty, Constructor<?> constructor) {
        super(settableBeanProperty);
        this._delegate = settableBeanProperty;
        this._creator = constructor;
    }

    protected InnerClassProperty(InnerClassProperty innerClassProperty, JsonDeserializer<?> jsonDeserializer) {
        super((SettableBeanProperty) innerClassProperty, (JsonDeserializer) jsonDeserializer);
        this._delegate = innerClassProperty._delegate.withValueDeserializer(jsonDeserializer);
        this._creator = innerClassProperty._creator;
    }

    protected InnerClassProperty(InnerClassProperty innerClassProperty, PropertyName propertyName) {
        super((SettableBeanProperty) innerClassProperty, propertyName);
        this._delegate = innerClassProperty._delegate.withName(propertyName);
        this._creator = innerClassProperty._creator;
    }

    protected InnerClassProperty(InnerClassProperty innerClassProperty, AnnotatedConstructor annotatedConstructor) {
        super(innerClassProperty);
        this._delegate = innerClassProperty._delegate;
        this._annotated = annotatedConstructor;
        this._creator = this._annotated == null ? null : this._annotated.getAnnotated();
        if (this._creator == null) {
            throw new IllegalArgumentException("Missing constructor (broken JDK (de)serialization?)");
        }
    }

    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object nullValue;
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
            nullValue = this._valueDeserializer.getNullValue(deserializationContext);
        } else if (this._valueTypeDeserializer != null) {
            nullValue = this._valueDeserializer.deserializeWithType(jsonParser, deserializationContext, this._valueTypeDeserializer);
        } else {
            try {
                nullValue = this._creator.newInstance(new Object[]{obj});
            } catch (Throwable e) {
                ClassUtil.unwrapAndThrowAsIAE(e, "Failed to instantiate class " + this._creator.getDeclaringClass().getName() + ", problem: " + e.getMessage());
                nullValue = null;
            }
            this._valueDeserializer.deserialize(jsonParser, deserializationContext, nullValue);
        }
        set(obj, nullValue);
    }

    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        return setAndReturn(obj, deserialize(jsonParser, deserializationContext));
    }

    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return this._delegate.getAnnotation(cls);
    }

    public AnnotatedMember getMember() {
        return this._delegate.getMember();
    }

    Object readResolve() {
        return new InnerClassProperty(this, this._annotated);
    }

    public final void set(Object obj, Object obj2) throws IOException {
        this._delegate.set(obj, obj2);
    }

    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        return this._delegate.setAndReturn(obj, obj2);
    }

    public InnerClassProperty withName(PropertyName propertyName) {
        return new InnerClassProperty(this, propertyName);
    }

    public InnerClassProperty withValueDeserializer(JsonDeserializer<?> jsonDeserializer) {
        return new InnerClassProperty(this, (JsonDeserializer) jsonDeserializer);
    }

    Object writeReplace() {
        return this._annotated != null ? this : new InnerClassProperty(this, new AnnotatedConstructor(null, this._creator, null, null));
    }
}
