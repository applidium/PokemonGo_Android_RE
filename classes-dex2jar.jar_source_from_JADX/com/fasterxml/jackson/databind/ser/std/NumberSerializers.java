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
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonIntegerFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonNumberFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Map;
import spacemadness.com.lunarconsole.C1401R;

public class NumberSerializers {

    /* renamed from: com.fasterxml.jackson.databind.ser.std.NumberSerializers.1 */
    static /* synthetic */ class C01641 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape;

        static {
            $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape = new int[Shape.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[Shape.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    protected static abstract class Base<T> extends StdScalarSerializer<T> implements ContextualSerializer {
        protected static final Integer EMPTY_INTEGER;
        protected final boolean _isInt;
        protected final NumberType _numberType;
        protected final String _schemaType;

        static {
            EMPTY_INTEGER = Integer.valueOf(0);
        }

        protected Base(Class<?> cls, NumberType numberType, String str) {
            boolean z = false;
            super(cls, false);
            this._numberType = numberType;
            this._schemaType = str;
            if (numberType == NumberType.INT || numberType == NumberType.LONG || numberType == NumberType.BIG_INTEGER) {
                z = true;
            }
            this._isInt = z;
        }

        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            if (this._isInt) {
                JsonIntegerFormatVisitor expectIntegerFormat = jsonFormatVisitorWrapper.expectIntegerFormat(javaType);
                if (expectIntegerFormat != null) {
                    expectIntegerFormat.numberType(this._numberType);
                    return;
                }
                return;
            }
            JsonNumberFormatVisitor expectNumberFormat = jsonFormatVisitorWrapper.expectNumberFormat(javaType);
            if (expectNumberFormat != null) {
                expectNumberFormat.numberType(this._numberType);
            }
        }

        public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
            if (beanProperty == null) {
                return this;
            }
            Annotated member = beanProperty.getMember();
            if (member == null) {
                return this;
            }
            Value findFormat = serializerProvider.getAnnotationIntrospector().findFormat(member);
            if (findFormat == null) {
                return this;
            }
            switch (C01641.$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[findFormat.getShape().ordinal()]) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    return ToStringSerializer.instance;
                default:
                    return this;
            }
        }

        public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            return createSchemaNode(this._schemaType, true);
        }
    }

    @JacksonStdImpl
    public static final class DoubleSerializer extends Base<Object> {
        private static final Double EMPTY;
        static final DoubleSerializer instance;

        static {
            EMPTY = Double.valueOf(0.0d);
            instance = new DoubleSerializer();
        }

        public DoubleSerializer() {
            super(Double.class, NumberType.DOUBLE, "number");
        }

        public /* bridge */ /* synthetic */ void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            super.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, javaType);
        }

        public /* bridge */ /* synthetic */ JsonSerializer createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(serializerProvider, beanProperty);
        }

        public /* bridge */ /* synthetic */ JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            return super.getSchema(serializerProvider, type);
        }

        public boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
            return EMPTY.equals(obj);
        }

        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeNumber(((Double) obj).doubleValue());
        }

        public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
            serialize(obj, jsonGenerator, serializerProvider);
        }
    }

    @JacksonStdImpl
    public static final class FloatSerializer extends Base<Object> {
        private static final Float EMPTY;
        static final FloatSerializer instance;

        static {
            EMPTY = Float.valueOf(0.0f);
            instance = new FloatSerializer();
        }

        public FloatSerializer() {
            super(Float.class, NumberType.FLOAT, "number");
        }

        public /* bridge */ /* synthetic */ void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            super.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, javaType);
        }

        public /* bridge */ /* synthetic */ JsonSerializer createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(serializerProvider, beanProperty);
        }

        public /* bridge */ /* synthetic */ JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            return super.getSchema(serializerProvider, type);
        }

        public boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
            return EMPTY.equals(obj);
        }

        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeNumber(((Float) obj).floatValue());
        }
    }

    @JacksonStdImpl
    public static final class IntLikeSerializer extends Base<Number> {
        static final IntLikeSerializer instance;

        static {
            instance = new IntLikeSerializer();
        }

        public IntLikeSerializer() {
            super(Number.class, NumberType.INT, "integer");
        }

        public /* bridge */ /* synthetic */ void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            super.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, javaType);
        }

        public /* bridge */ /* synthetic */ JsonSerializer createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(serializerProvider, beanProperty);
        }

        public /* bridge */ /* synthetic */ JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            return super.getSchema(serializerProvider, type);
        }

        public boolean isEmpty(SerializerProvider serializerProvider, Number number) {
            return number.intValue() == 0;
        }

        public void serialize(Number number, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeNumber(number.intValue());
        }
    }

    @JacksonStdImpl
    public static final class IntegerSerializer extends Base<Object> {
        public IntegerSerializer() {
            super(Integer.class, NumberType.INT, "integer");
        }

        public /* bridge */ /* synthetic */ void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            super.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, javaType);
        }

        public /* bridge */ /* synthetic */ JsonSerializer createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(serializerProvider, beanProperty);
        }

        public /* bridge */ /* synthetic */ JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            return super.getSchema(serializerProvider, type);
        }

        public boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
            return EMPTY_INTEGER.equals(obj);
        }

        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeNumber(((Integer) obj).intValue());
        }

        public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
            serialize(obj, jsonGenerator, serializerProvider);
        }
    }

    @JacksonStdImpl
    public static final class LongSerializer extends Base<Object> {
        private static final Long EMPTY;
        static final LongSerializer instance;

        static {
            EMPTY = Long.valueOf(0);
            instance = new LongSerializer();
        }

        public LongSerializer() {
            super(Long.class, NumberType.LONG, "number");
        }

        public /* bridge */ /* synthetic */ void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            super.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, javaType);
        }

        public /* bridge */ /* synthetic */ JsonSerializer createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(serializerProvider, beanProperty);
        }

        public /* bridge */ /* synthetic */ JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            return super.getSchema(serializerProvider, type);
        }

        public boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
            return EMPTY.equals(obj);
        }

        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeNumber(((Long) obj).longValue());
        }
    }

    @JacksonStdImpl
    public static final class ShortSerializer extends Base<Short> {
        private static final Short EMPTY;
        static final ShortSerializer instance;

        static {
            EMPTY = Short.valueOf((short) 0);
            instance = new ShortSerializer();
        }

        public ShortSerializer() {
            super(Short.class, NumberType.INT, "number");
        }

        public /* bridge */ /* synthetic */ void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            super.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, javaType);
        }

        public /* bridge */ /* synthetic */ JsonSerializer createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(serializerProvider, beanProperty);
        }

        public /* bridge */ /* synthetic */ JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            return super.getSchema(serializerProvider, type);
        }

        public boolean isEmpty(SerializerProvider serializerProvider, Short sh) {
            return EMPTY.equals(sh);
        }

        public void serialize(Short sh, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeNumber(sh.shortValue());
        }
    }

    protected NumberSerializers() {
    }

    public static void addAll(Map<String, JsonSerializer<?>> map) {
        IntegerSerializer integerSerializer = new IntegerSerializer();
        map.put(Integer.class.getName(), integerSerializer);
        map.put(Integer.TYPE.getName(), integerSerializer);
        map.put(Long.class.getName(), LongSerializer.instance);
        map.put(Long.TYPE.getName(), LongSerializer.instance);
        map.put(Byte.class.getName(), IntLikeSerializer.instance);
        map.put(Byte.TYPE.getName(), IntLikeSerializer.instance);
        map.put(Short.class.getName(), ShortSerializer.instance);
        map.put(Short.TYPE.getName(), ShortSerializer.instance);
        map.put(Float.class.getName(), FloatSerializer.instance);
        map.put(Float.TYPE.getName(), FloatSerializer.instance);
        map.put(Double.class.getName(), DoubleSerializer.instance);
        map.put(Double.TYPE.getName(), DoubleSerializer.instance);
    }
}
