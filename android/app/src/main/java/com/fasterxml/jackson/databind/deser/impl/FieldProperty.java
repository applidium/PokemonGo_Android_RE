package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

public final class FieldProperty extends SettableBeanProperty {
    private static final long serialVersionUID = 1;
    protected final AnnotatedField _annotated;
    protected final transient Field _field;

    protected FieldProperty(FieldProperty fieldProperty) {
        super(fieldProperty);
        this._annotated = fieldProperty._annotated;
        Field annotated = this._annotated.getAnnotated();
        if (annotated == null) {
            throw new IllegalArgumentException("Missing field (broken JDK (de)serialization?)");
        }
        this._field = annotated;
    }

    protected FieldProperty(FieldProperty fieldProperty, JsonDeserializer<?> jsonDeserializer) {
        super((SettableBeanProperty) fieldProperty, (JsonDeserializer) jsonDeserializer);
        this._annotated = fieldProperty._annotated;
        this._field = fieldProperty._field;
    }

    protected FieldProperty(FieldProperty fieldProperty, PropertyName propertyName) {
        super((SettableBeanProperty) fieldProperty, propertyName);
        this._annotated = fieldProperty._annotated;
        this._field = fieldProperty._field;
    }

    public FieldProperty(BeanPropertyDefinition beanPropertyDefinition, JavaType javaType, TypeDeserializer typeDeserializer, Annotations annotations, AnnotatedField annotatedField) {
        super(beanPropertyDefinition, javaType, typeDeserializer, annotations);
        this._annotated = annotatedField;
        this._field = annotatedField.getAnnotated();
    }

    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object deserialize = deserialize(jsonParser, deserializationContext);
        try {
            this._field.set(obj, deserialize);
        } catch (Exception e) {
            _throwAsIOE(e, deserialize);
        }
    }

    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object deserialize = deserialize(jsonParser, deserializationContext);
        try {
            this._field.set(obj, deserialize);
        } catch (Exception e) {
            _throwAsIOE(e, deserialize);
        }
        return obj;
    }

    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return this._annotated == null ? null : this._annotated.getAnnotation(cls);
    }

    public AnnotatedMember getMember() {
        return this._annotated;
    }

    Object readResolve() {
        return new FieldProperty(this);
    }

    public final void set(Object obj, Object obj2) throws IOException {
        try {
            this._field.set(obj, obj2);
        } catch (Exception e) {
            _throwAsIOE(e, obj2);
        }
    }

    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        try {
            this._field.set(obj, obj2);
        } catch (Exception e) {
            _throwAsIOE(e, obj2);
        }
        return obj;
    }

    public FieldProperty withName(PropertyName propertyName) {
        return new FieldProperty(this, propertyName);
    }

    public FieldProperty withValueDeserializer(JsonDeserializer<?> jsonDeserializer) {
        return new FieldProperty(this, (JsonDeserializer) jsonDeserializer);
    }
}
