package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.SerializerAndMapResult;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.UUID;

public class StdKeySerializers {
    protected static final JsonSerializer<Object> DEFAULT_KEY_SERIALIZER;
    protected static final JsonSerializer<Object> DEFAULT_STRING_SERIALIZER;

    @Deprecated
    public static class CalendarKeySerializer extends StdSerializer<Calendar> {
        protected static final JsonSerializer<?> instance;

        static {
            instance = new CalendarKeySerializer();
        }

        public CalendarKeySerializer() {
            super(Calendar.class);
        }

        public void serialize(Calendar calendar, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            serializerProvider.defaultSerializeDateKey(calendar.getTimeInMillis(), jsonGenerator);
        }
    }

    @Deprecated
    public static class DateKeySerializer extends StdSerializer<Date> {
        protected static final JsonSerializer<?> instance;

        static {
            instance = new DateKeySerializer();
        }

        public DateKeySerializer() {
            super(Date.class);
        }

        public void serialize(Date date, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            serializerProvider.defaultSerializeDateKey(date, jsonGenerator);
        }
    }

    public static class Default extends StdSerializer<Object> {
        static final int TYPE_CALENDAR = 2;
        static final int TYPE_CLASS = 3;
        static final int TYPE_DATE = 1;
        static final int TYPE_ENUM = 4;
        static final int TYPE_TO_STRING = 5;
        protected final int _typeId;

        public Default(int i, Class<?> cls) {
            super(cls, false);
            this._typeId = i;
        }

        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            switch (this._typeId) {
                case TYPE_DATE /*1*/:
                    serializerProvider.defaultSerializeDateKey((Date) obj, jsonGenerator);
                case TYPE_CALENDAR /*2*/:
                    serializerProvider.defaultSerializeDateKey(((Calendar) obj).getTimeInMillis(), jsonGenerator);
                case TYPE_CLASS /*3*/:
                    jsonGenerator.writeFieldName(((Class) obj).getName());
                case TYPE_ENUM /*4*/:
                    jsonGenerator.writeFieldName(serializerProvider.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING) ? obj.toString() : ((Enum) obj).name());
                default:
                    jsonGenerator.writeFieldName(obj.toString());
            }
        }
    }

    public static class Dynamic extends StdSerializer<Object> {
        protected transient PropertySerializerMap _dynamicSerializers;

        public Dynamic() {
            super(String.class, false);
            this._dynamicSerializers = PropertySerializerMap.emptyForProperties();
        }

        protected JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, Class<?> cls, SerializerProvider serializerProvider) throws JsonMappingException {
            SerializerAndMapResult findAndAddKeySerializer = propertySerializerMap.findAndAddKeySerializer(cls, serializerProvider, null);
            if (propertySerializerMap != findAndAddKeySerializer.map) {
                this._dynamicSerializers = findAndAddKeySerializer.map;
            }
            return findAndAddKeySerializer.serializer;
        }

        Object readResolve() {
            this._dynamicSerializers = PropertySerializerMap.emptyForProperties();
            return this;
        }

        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            Class cls = obj.getClass();
            PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
            JsonSerializer serializerFor = propertySerializerMap.serializerFor(cls);
            if (serializerFor == null) {
                serializerFor = _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
            }
            serializerFor.serialize(obj, jsonGenerator, serializerProvider);
        }
    }

    public static class StringKeySerializer extends StdSerializer<Object> {
        public StringKeySerializer() {
            super(String.class, false);
        }

        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeFieldName((String) obj);
        }
    }

    static {
        DEFAULT_KEY_SERIALIZER = new StdKeySerializer();
        DEFAULT_STRING_SERIALIZER = new StringKeySerializer();
    }

    private StdKeySerializers() {
    }

    @Deprecated
    public static JsonSerializer<Object> getDefault() {
        return DEFAULT_KEY_SERIALIZER;
    }

    public static JsonSerializer<Object> getFallbackKeySerializer(SerializationConfig serializationConfig, Class<?> cls) {
        if (cls != null) {
            if (cls == Enum.class) {
                return new Dynamic();
            }
            if (cls.isEnum()) {
                return new Default(4, cls);
            }
        }
        return DEFAULT_KEY_SERIALIZER;
    }

    @Deprecated
    public static JsonSerializer<Object> getStdKeySerializer(JavaType javaType) {
        return getStdKeySerializer(null, javaType.getRawClass(), true);
    }

    public static JsonSerializer<Object> getStdKeySerializer(SerializationConfig serializationConfig, Class<?> cls, boolean z) {
        return (cls == null || cls == Object.class) ? new Dynamic() : cls == String.class ? DEFAULT_STRING_SERIALIZER : (cls.isPrimitive() || Number.class.isAssignableFrom(cls)) ? DEFAULT_KEY_SERIALIZER : cls == Class.class ? new Default(3, cls) : Date.class.isAssignableFrom(cls) ? new Default(1, cls) : Calendar.class.isAssignableFrom(cls) ? new Default(2, cls) : cls == UUID.class ? new Default(5, cls) : z ? DEFAULT_KEY_SERIALIZER : null;
    }
}
