package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat.Shape;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonIntegerFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonStringFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonValueFormat;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

public abstract class DateTimeSerializerBase<T> extends StdScalarSerializer<T> implements ContextualSerializer {
    protected final DateFormat _customFormat;
    protected final Boolean _useTimestamp;

    protected DateTimeSerializerBase(Class<T> cls, Boolean bool, DateFormat dateFormat) {
        super(cls);
        this._useTimestamp = bool;
        this._customFormat = dateFormat;
    }

    protected void _acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType, boolean z) throws JsonMappingException {
        if (z) {
            JsonIntegerFormatVisitor expectIntegerFormat = jsonFormatVisitorWrapper.expectIntegerFormat(javaType);
            if (expectIntegerFormat != null) {
                expectIntegerFormat.numberType(NumberType.LONG);
                expectIntegerFormat.format(JsonValueFormat.UTC_MILLISEC);
                return;
            }
            return;
        }
        JsonStringFormatVisitor expectStringFormat = jsonFormatVisitorWrapper.expectStringFormat(javaType);
        if (expectStringFormat != null) {
            expectStringFormat.format(JsonValueFormat.DATE_TIME);
        }
    }

    protected boolean _asTimestamp(SerializerProvider serializerProvider) {
        if (this._useTimestamp != null) {
            return this._useTimestamp.booleanValue();
        }
        if (this._customFormat != null) {
            return false;
        }
        if (serializerProvider != null) {
            return serializerProvider.isEnabled(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
        }
        throw new IllegalArgumentException("Null SerializerProvider passed for " + handledType().getName());
    }

    protected abstract long _timestamp(T t);

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        _acceptJsonFormatVisitor(jsonFormatVisitorWrapper, javaType, _asTimestamp(jsonFormatVisitorWrapper.getProvider()));
    }

    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        if (beanProperty == null) {
            return this;
        }
        Value findFormat = serializerProvider.getAnnotationIntrospector().findFormat(beanProperty.getMember());
        if (findFormat == null) {
            return this;
        }
        if (findFormat.getShape().isNumeric()) {
            return withFormat(Boolean.TRUE, null);
        }
        Boolean bool = findFormat.getShape() == Shape.STRING ? Boolean.FALSE : null;
        TimeZone timeZone = findFormat.getTimeZone();
        if (findFormat.hasPattern()) {
            DateFormat simpleDateFormat = new SimpleDateFormat(findFormat.getPattern(), findFormat.hasLocale() ? findFormat.getLocale() : serializerProvider.getLocale());
            simpleDateFormat.setTimeZone(timeZone == null ? serializerProvider.getTimeZone() : timeZone);
            return withFormat(bool, simpleDateFormat);
        } else if (timeZone == null) {
            return this;
        } else {
            DateFormat dateFormat = serializerProvider.getConfig().getDateFormat();
            if (dateFormat.getClass() == StdDateFormat.class) {
                dateFormat = StdDateFormat.getISO8601Format(timeZone, findFormat.hasLocale() ? findFormat.getLocale() : serializerProvider.getLocale());
            } else {
                dateFormat = (DateFormat) dateFormat.clone();
                dateFormat.setTimeZone(timeZone);
            }
            return withFormat(bool, dateFormat);
        }
    }

    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        return createSchemaNode(_asTimestamp(serializerProvider) ? "number" : "string", true);
    }

    public boolean isEmpty(SerializerProvider serializerProvider, T t) {
        return t == null || _timestamp(t) == 0;
    }

    @Deprecated
    public boolean isEmpty(T t) {
        return t == null || _timestamp(t) == 0;
    }

    public abstract void serialize(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException;

    public abstract DateTimeSerializerBase<T> withFormat(Boolean bool, DateFormat dateFormat);
}
