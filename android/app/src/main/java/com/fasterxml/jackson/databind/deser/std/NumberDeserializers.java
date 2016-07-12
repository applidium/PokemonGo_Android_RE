package com.fasterxml.jackson.databind.deser.std;

import android.support.v4.internal.view.SupportMenu;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashSet;
import spacemadness.com.lunarconsole.C1401R;

public class NumberDeserializers {
    private static final HashSet<String> _classNames;

    /* renamed from: com.fasterxml.jackson.databind.deser.std.NumberDeserializers.1 */
    static /* synthetic */ class C01431 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType;

        static {
            $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType = new int[NumberType.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[NumberType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[NumberType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[NumberType.BIG_INTEGER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @JacksonStdImpl
    public static class BigDecimalDeserializer extends StdScalarDeserializer<BigDecimal> {
        public static final BigDecimalDeserializer instance;

        static {
            instance = new BigDecimalDeserializer();
        }

        public BigDecimalDeserializer() {
            super(BigDecimal.class);
        }

        public BigDecimal deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            switch (jsonParser.getCurrentTokenId()) {
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                        jsonParser.nextToken();
                        BigDecimal deserialize = deserialize(jsonParser, deserializationContext);
                        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                            return deserialize;
                        }
                        throw deserializationContext.wrongTokenException(jsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'BigDecimal' value but there was more than a single value in the array");
                    }
                    break;
                case Place.TYPE_ATM /*6*/:
                    String trim = jsonParser.getText().trim();
                    if (trim.length() == 0) {
                        return null;
                    }
                    try {
                        return new BigDecimal(trim);
                    } catch (IllegalArgumentException e) {
                        throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid representation");
                    }
                case Place.TYPE_BAKERY /*7*/:
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    return jsonParser.getDecimalValue();
            }
            throw deserializationContext.mappingException(this._valueClass, jsonParser.getCurrentToken());
        }
    }

    @JacksonStdImpl
    public static class BigIntegerDeserializer extends StdScalarDeserializer<BigInteger> {
        public static final BigIntegerDeserializer instance;

        static {
            instance = new BigIntegerDeserializer();
        }

        public BigIntegerDeserializer() {
            super(BigInteger.class);
        }

        public BigInteger deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            switch (jsonParser.getCurrentTokenId()) {
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                        jsonParser.nextToken();
                        BigInteger deserialize = deserialize(jsonParser, deserializationContext);
                        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                            return deserialize;
                        }
                        throw deserializationContext.wrongTokenException(jsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'BigInteger' value but there was more than a single value in the array");
                    }
                    break;
                case Place.TYPE_ATM /*6*/:
                    String trim = jsonParser.getText().trim();
                    if (trim.length() == 0) {
                        return null;
                    }
                    try {
                        return new BigInteger(trim);
                    } catch (IllegalArgumentException e) {
                        throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid representation");
                    }
                case Place.TYPE_BAKERY /*7*/:
                    switch (C01431.$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[jsonParser.getNumberType().ordinal()]) {
                        case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                        case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                        case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                            return jsonParser.getBigIntegerValue();
                        default:
                            break;
                    }
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    if (!deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                        _failDoubleToIntCoercion(jsonParser, deserializationContext, "java.math.BigInteger");
                    }
                    return jsonParser.getDecimalValue().toBigInteger();
            }
            throw deserializationContext.mappingException(this._valueClass, jsonParser.getCurrentToken());
        }
    }

    protected static abstract class PrimitiveOrWrapperDeserializer<T> extends StdScalarDeserializer<T> {
        private static final long serialVersionUID = 1;
        protected final T _nullValue;
        protected final boolean _primitive;

        protected PrimitiveOrWrapperDeserializer(Class<T> cls, T t) {
            super((Class) cls);
            this._nullValue = t;
            this._primitive = cls.isPrimitive();
        }

        @Deprecated
        public final T getNullValue() {
            return this._nullValue;
        }

        public final T getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
            if (!this._primitive || !deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
                return this._nullValue;
            }
            throw deserializationContext.mappingException("Can not map JSON null into type %s (set DeserializationConfig.DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)", handledType().toString());
        }
    }

    @JacksonStdImpl
    public static final class BooleanDeserializer extends PrimitiveOrWrapperDeserializer<Boolean> {
        static final BooleanDeserializer primitiveInstance;
        private static final long serialVersionUID = 1;
        static final BooleanDeserializer wrapperInstance;

        static {
            primitiveInstance = new BooleanDeserializer(Boolean.TYPE, Boolean.FALSE);
            wrapperInstance = new BooleanDeserializer(Boolean.class, null);
        }

        public BooleanDeserializer(Class<Boolean> cls, Boolean bool) {
            super(cls, bool);
        }

        public Boolean deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseBoolean(jsonParser, deserializationContext);
        }

        public Boolean deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return _parseBoolean(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    public static class ByteDeserializer extends PrimitiveOrWrapperDeserializer<Byte> {
        static final ByteDeserializer primitiveInstance;
        private static final long serialVersionUID = 1;
        static final ByteDeserializer wrapperInstance;

        static {
            primitiveInstance = new ByteDeserializer(Byte.TYPE, Byte.valueOf((byte) 0));
            wrapperInstance = new ByteDeserializer(Byte.class, null);
        }

        public ByteDeserializer(Class<Byte> cls, Byte b) {
            super(cls, b);
        }

        public Byte deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseByte(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    public static class CharacterDeserializer extends PrimitiveOrWrapperDeserializer<Character> {
        static final CharacterDeserializer primitiveInstance;
        private static final long serialVersionUID = 1;
        static final CharacterDeserializer wrapperInstance;

        static {
            primitiveInstance = new CharacterDeserializer(Character.TYPE, Character.valueOf('\u0000'));
            wrapperInstance = new CharacterDeserializer(Character.class, null);
        }

        public CharacterDeserializer(Class<Character> cls, Character ch) {
            super(cls, ch);
        }

        public Character deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            switch (jsonParser.getCurrentTokenId()) {
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                        jsonParser.nextToken();
                        Character deserialize = deserialize(jsonParser, deserializationContext);
                        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                            return deserialize;
                        }
                        throw deserializationContext.wrongTokenException(jsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single '" + this._valueClass.getName() + "' value but there was more than a single value in the array");
                    }
                    break;
                case Place.TYPE_ATM /*6*/:
                    String text = jsonParser.getText();
                    if (text.length() == 1) {
                        return Character.valueOf(text.charAt(0));
                    }
                    if (text.length() == 0) {
                        return (Character) getEmptyValue(deserializationContext);
                    }
                    break;
                case Place.TYPE_BAKERY /*7*/:
                    int intValue = jsonParser.getIntValue();
                    if (intValue >= 0 && intValue <= SupportMenu.USER_MASK) {
                        return Character.valueOf((char) intValue);
                    }
            }
            throw deserializationContext.mappingException(this._valueClass, jsonParser.getCurrentToken());
        }
    }

    @JacksonStdImpl
    public static class DoubleDeserializer extends PrimitiveOrWrapperDeserializer<Double> {
        static final DoubleDeserializer primitiveInstance;
        private static final long serialVersionUID = 1;
        static final DoubleDeserializer wrapperInstance;

        static {
            primitiveInstance = new DoubleDeserializer(Double.TYPE, Double.valueOf(0.0d));
            wrapperInstance = new DoubleDeserializer(Double.class, null);
        }

        public DoubleDeserializer(Class<Double> cls, Double d) {
            super(cls, d);
        }

        public Double deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseDouble(jsonParser, deserializationContext);
        }

        public Double deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return _parseDouble(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    public static class FloatDeserializer extends PrimitiveOrWrapperDeserializer<Float> {
        static final FloatDeserializer primitiveInstance;
        private static final long serialVersionUID = 1;
        static final FloatDeserializer wrapperInstance;

        static {
            primitiveInstance = new FloatDeserializer(Float.TYPE, Float.valueOf(0.0f));
            wrapperInstance = new FloatDeserializer(Float.class, null);
        }

        public FloatDeserializer(Class<Float> cls, Float f) {
            super(cls, f);
        }

        public Float deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseFloat(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    public static final class IntegerDeserializer extends PrimitiveOrWrapperDeserializer<Integer> {
        static final IntegerDeserializer primitiveInstance;
        private static final long serialVersionUID = 1;
        static final IntegerDeserializer wrapperInstance;

        static {
            primitiveInstance = new IntegerDeserializer(Integer.TYPE, Integer.valueOf(0));
            wrapperInstance = new IntegerDeserializer(Integer.class, null);
        }

        public IntegerDeserializer(Class<Integer> cls, Integer num) {
            super(cls, num);
        }

        public Integer deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return jsonParser.hasToken(JsonToken.VALUE_NUMBER_INT) ? Integer.valueOf(jsonParser.getIntValue()) : _parseInteger(jsonParser, deserializationContext);
        }

        public Integer deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return jsonParser.hasToken(JsonToken.VALUE_NUMBER_INT) ? Integer.valueOf(jsonParser.getIntValue()) : _parseInteger(jsonParser, deserializationContext);
        }

        public boolean isCachable() {
            return true;
        }
    }

    @JacksonStdImpl
    public static final class LongDeserializer extends PrimitiveOrWrapperDeserializer<Long> {
        static final LongDeserializer primitiveInstance;
        private static final long serialVersionUID = 1;
        static final LongDeserializer wrapperInstance;

        static {
            primitiveInstance = new LongDeserializer(Long.TYPE, Long.valueOf(0));
            wrapperInstance = new LongDeserializer(Long.class, null);
        }

        public LongDeserializer(Class<Long> cls, Long l) {
            super(cls, l);
        }

        public Long deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return jsonParser.hasToken(JsonToken.VALUE_NUMBER_INT) ? Long.valueOf(jsonParser.getLongValue()) : _parseLong(jsonParser, deserializationContext);
        }

        public boolean isCachable() {
            return true;
        }
    }

    @JacksonStdImpl
    public static class NumberDeserializer extends StdScalarDeserializer<Object> {
        public static final NumberDeserializer instance;

        static {
            instance = new NumberDeserializer();
        }

        public NumberDeserializer() {
            super(Number.class);
        }

        public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            switch (jsonParser.getCurrentTokenId()) {
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                        jsonParser.nextToken();
                        Object deserialize = deserialize(jsonParser, deserializationContext);
                        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                            return deserialize;
                        }
                        throw deserializationContext.wrongTokenException(jsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single '" + this._valueClass.getName() + "' value but there was more than a single value in the array");
                    }
                    break;
                case Place.TYPE_ATM /*6*/:
                    String trim = jsonParser.getText().trim();
                    if (trim.length() == 0) {
                        return getEmptyValue(deserializationContext);
                    }
                    if (_hasTextualNull(trim)) {
                        return getNullValue(deserializationContext);
                    }
                    if (_isPosInf(trim)) {
                        return Double.valueOf(Double.POSITIVE_INFINITY);
                    }
                    if (_isNegInf(trim)) {
                        return Double.valueOf(Double.NEGATIVE_INFINITY);
                    }
                    if (_isNaN(trim)) {
                        return Double.valueOf(Double.NaN);
                    }
                    try {
                        if (!_isIntNumber(trim)) {
                            return deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? new BigDecimal(trim) : new Double(trim);
                        } else {
                            if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS)) {
                                return new BigInteger(trim);
                            }
                            long parseLong = Long.parseLong(trim);
                            return (deserializationContext.isEnabled(DeserializationFeature.USE_LONG_FOR_INTS) || parseLong > 2147483647L || parseLong < -2147483648L) ? Long.valueOf(parseLong) : Integer.valueOf((int) parseLong);
                        }
                    } catch (IllegalArgumentException e) {
                        throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid number");
                    }
                case Place.TYPE_BAKERY /*7*/:
                    return deserializationContext.hasSomeOfFeatures(F_MASK_INT_COERCIONS) ? _coerceIntegral(jsonParser, deserializationContext) : jsonParser.getNumberValue();
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    return deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? jsonParser.getDecimalValue() : Double.valueOf(jsonParser.getDoubleValue());
            }
            throw deserializationContext.mappingException(this._valueClass, jsonParser.getCurrentToken());
        }

        public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            switch (jsonParser.getCurrentTokenId()) {
                case Place.TYPE_ATM /*6*/:
                case Place.TYPE_BAKERY /*7*/:
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    return deserialize(jsonParser, deserializationContext);
                default:
                    return typeDeserializer.deserializeTypedFromScalar(jsonParser, deserializationContext);
            }
        }
    }

    @JacksonStdImpl
    public static class ShortDeserializer extends PrimitiveOrWrapperDeserializer<Short> {
        static final ShortDeserializer primitiveInstance;
        private static final long serialVersionUID = 1;
        static final ShortDeserializer wrapperInstance;

        static {
            primitiveInstance = new ShortDeserializer(Short.TYPE, Short.valueOf((short) 0));
            wrapperInstance = new ShortDeserializer(Short.class, null);
        }

        public ShortDeserializer(Class<Short> cls, Short sh) {
            super(cls, sh);
        }

        public Short deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            return _parseShort(jsonParser, deserializationContext);
        }
    }

    static {
        int i = 0;
        _classNames = new HashSet();
        Class[] clsArr = new Class[]{Boolean.class, Byte.class, Short.class, Character.class, Integer.class, Long.class, Float.class, Double.class, Number.class, BigDecimal.class, BigInteger.class};
        int length = clsArr.length;
        while (i < length) {
            _classNames.add(clsArr[i].getName());
            i++;
        }
    }

    public static JsonDeserializer<?> find(Class<?> cls, String str) {
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                return IntegerDeserializer.primitiveInstance;
            }
            if (cls == Boolean.TYPE) {
                return BooleanDeserializer.primitiveInstance;
            }
            if (cls == Long.TYPE) {
                return LongDeserializer.primitiveInstance;
            }
            if (cls == Double.TYPE) {
                return DoubleDeserializer.primitiveInstance;
            }
            if (cls == Character.TYPE) {
                return CharacterDeserializer.primitiveInstance;
            }
            if (cls == Byte.TYPE) {
                return ByteDeserializer.primitiveInstance;
            }
            if (cls == Short.TYPE) {
                return ShortDeserializer.primitiveInstance;
            }
            if (cls == Float.TYPE) {
                return FloatDeserializer.primitiveInstance;
            }
        } else if (!_classNames.contains(str)) {
            return null;
        } else {
            if (cls == Integer.class) {
                return IntegerDeserializer.wrapperInstance;
            }
            if (cls == Boolean.class) {
                return BooleanDeserializer.wrapperInstance;
            }
            if (cls == Long.class) {
                return LongDeserializer.wrapperInstance;
            }
            if (cls == Double.class) {
                return DoubleDeserializer.wrapperInstance;
            }
            if (cls == Character.class) {
                return CharacterDeserializer.wrapperInstance;
            }
            if (cls == Byte.class) {
                return ByteDeserializer.wrapperInstance;
            }
            if (cls == Short.class) {
                return ShortDeserializer.wrapperInstance;
            }
            if (cls == Float.class) {
                return FloatDeserializer.wrapperInstance;
            }
            if (cls == Number.class) {
                return NumberDeserializer.instance;
            }
            if (cls == BigDecimal.class) {
                return BigDecimalDeserializer.instance;
            }
            if (cls == BigInteger.class) {
                return BigIntegerDeserializer.instance;
            }
        }
        throw new IllegalArgumentException("Internal error: can't find deserializer for " + cls.getName());
    }
}
