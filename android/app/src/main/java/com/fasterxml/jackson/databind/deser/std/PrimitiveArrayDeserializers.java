package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ArrayBuilders.BooleanBuilder;
import com.fasterxml.jackson.databind.util.ArrayBuilders.ByteBuilder;
import com.fasterxml.jackson.databind.util.ArrayBuilders.DoubleBuilder;
import com.fasterxml.jackson.databind.util.ArrayBuilders.FloatBuilder;
import com.fasterxml.jackson.databind.util.ArrayBuilders.IntBuilder;
import com.fasterxml.jackson.databind.util.ArrayBuilders.LongBuilder;
import com.fasterxml.jackson.databind.util.ArrayBuilders.ShortBuilder;
import java.io.IOException;

public abstract class PrimitiveArrayDeserializers<T> extends StdDeserializer<T> {

    @JacksonStdImpl
    static final class BooleanDeser extends PrimitiveArrayDeserializers<boolean[]> {
        private static final long serialVersionUID = 1;

        public BooleanDeser() {
            super(boolean[].class);
        }

        private final boolean[] handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                return new boolean[]{_parseBooleanPrimitive(jsonParser, deserializationContext)};
            }
            throw deserializationContext.mappingException(this._valueClass);
        }

        public boolean[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            BooleanBuilder booleanBuilder = deserializationContext.getArrayBuilders().getBooleanBuilder();
            Object obj = (boolean[]) booleanBuilder.resetAndStart();
            int i = 0;
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                try {
                    Object obj2;
                    boolean _parseBooleanPrimitive = _parseBooleanPrimitive(jsonParser, deserializationContext);
                    if (i >= obj.length) {
                        obj2 = (boolean[]) booleanBuilder.appendCompletedChunk(obj, i);
                        i = 0;
                    } else {
                        obj2 = obj;
                    }
                    int i2 = i + 1;
                    obj2[i] = _parseBooleanPrimitive;
                    i = i2;
                    obj = obj2;
                } catch (Throwable e) {
                    throw JsonMappingException.wrapWithPath(e, obj, i + booleanBuilder.bufferedSize());
                }
            }
            return (boolean[]) booleanBuilder.completeAndClearBuffer(obj, i);
        }
    }

    @JacksonStdImpl
    static final class ByteDeser extends PrimitiveArrayDeserializers<byte[]> {
        private static final long serialVersionUID = 1;

        public ByteDeser() {
            super(byte[].class);
        }

        private final byte[] handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                byte byteValue;
                JsonToken currentToken = jsonParser.getCurrentToken();
                if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
                    byteValue = jsonParser.getByteValue();
                } else if (currentToken != JsonToken.VALUE_NULL) {
                    throw deserializationContext.mappingException(this._valueClass.getComponentType());
                } else {
                    byteValue = (byte) 0;
                }
                return new byte[]{byteValue};
            }
            throw deserializationContext.mappingException(this._valueClass);
        }

        public byte[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_STRING) {
                return jsonParser.getBinaryValue(deserializationContext.getBase64Variant());
            }
            Object embeddedObject;
            if (currentToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
                embeddedObject = jsonParser.getEmbeddedObject();
                if (embeddedObject == null) {
                    return null;
                }
                if (embeddedObject instanceof byte[]) {
                    return (byte[]) embeddedObject;
                }
            }
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ByteBuilder byteBuilder = deserializationContext.getArrayBuilders().getByteBuilder();
            Object obj = (byte[]) byteBuilder.resetAndStart();
            int i = 0;
            while (true) {
                try {
                    currentToken = jsonParser.nextToken();
                    if (currentToken == JsonToken.END_ARRAY) {
                        return (byte[]) byteBuilder.completeAndClearBuffer(obj, i);
                    }
                    byte byteValue;
                    if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
                        byteValue = jsonParser.getByteValue();
                    } else if (currentToken != JsonToken.VALUE_NULL) {
                        break;
                    } else {
                        byteValue = (byte) 0;
                    }
                    if (i >= obj.length) {
                        embeddedObject = (byte[]) byteBuilder.appendCompletedChunk(obj, i);
                        i = 0;
                    } else {
                        embeddedObject = obj;
                    }
                    int i2 = i + 1;
                    embeddedObject[i] = byteValue;
                    i = i2;
                    obj = embeddedObject;
                } catch (Throwable e) {
                    throw JsonMappingException.wrapWithPath(e, obj, i + byteBuilder.bufferedSize());
                }
            }
            throw deserializationContext.mappingException(this._valueClass.getComponentType());
        }
    }

    @JacksonStdImpl
    static final class CharDeser extends PrimitiveArrayDeserializers<char[]> {
        private static final long serialVersionUID = 1;

        public CharDeser() {
            super(char[].class);
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public char[] deserialize(com.fasterxml.jackson.core.JsonParser r6, com.fasterxml.jackson.databind.DeserializationContext r7) throws java.io.IOException {
            /*
            r5 = this;
            r4 = 0;
            r0 = r6.getCurrentToken();
            r1 = com.fasterxml.jackson.core.JsonToken.VALUE_STRING;
            if (r0 != r1) goto L_0x001b;
        L_0x0009:
            r1 = r6.getTextCharacters();
            r2 = r6.getTextOffset();
            r3 = r6.getTextLength();
            r0 = new char[r3];
            java.lang.System.arraycopy(r1, r2, r0, r4, r3);
        L_0x001a:
            return r0;
        L_0x001b:
            r1 = r6.isExpectedStartArrayToken();
            if (r1 == 0) goto L_0x0079;
        L_0x0021:
            r0 = new java.lang.StringBuilder;
            r1 = 64;
            r0.<init>(r1);
        L_0x0028:
            r1 = r6.nextToken();
            r2 = com.fasterxml.jackson.core.JsonToken.END_ARRAY;
            if (r1 == r2) goto L_0x0070;
        L_0x0030:
            r2 = com.fasterxml.jackson.core.JsonToken.VALUE_STRING;
            if (r1 == r2) goto L_0x003b;
        L_0x0034:
            r0 = java.lang.Character.TYPE;
            r0 = r7.mappingException(r0);
            throw r0;
        L_0x003b:
            r1 = r6.getText();
            r2 = r1.length();
            r3 = 1;
            if (r2 == r3) goto L_0x0068;
        L_0x0046:
            r0 = new java.lang.StringBuilder;
            r0.<init>();
            r2 = "Can not convert a JSON String of length ";
            r0 = r0.append(r2);
            r1 = r1.length();
            r0 = r0.append(r1);
            r1 = " into a char element of char array";
            r0 = r0.append(r1);
            r0 = r0.toString();
            r0 = com.fasterxml.jackson.databind.JsonMappingException.from(r6, r0);
            throw r0;
        L_0x0068:
            r1 = r1.charAt(r4);
            r0.append(r1);
            goto L_0x0028;
        L_0x0070:
            r0 = r0.toString();
            r0 = r0.toCharArray();
            goto L_0x001a;
        L_0x0079:
            r1 = com.fasterxml.jackson.core.JsonToken.VALUE_EMBEDDED_OBJECT;
            if (r0 != r1) goto L_0x00af;
        L_0x007d:
            r0 = r6.getEmbeddedObject();
            if (r0 != 0) goto L_0x0085;
        L_0x0083:
            r0 = 0;
            goto L_0x001a;
        L_0x0085:
            r1 = r0 instanceof char[];
            if (r1 == 0) goto L_0x008e;
        L_0x0089:
            r0 = (char[]) r0;
            r0 = (char[]) r0;
            goto L_0x001a;
        L_0x008e:
            r1 = r0 instanceof java.lang.String;
            if (r1 == 0) goto L_0x0099;
        L_0x0092:
            r0 = (java.lang.String) r0;
            r0 = r0.toCharArray();
            goto L_0x001a;
        L_0x0099:
            r1 = r0 instanceof byte[];
            if (r1 == 0) goto L_0x00af;
        L_0x009d:
            r1 = com.fasterxml.jackson.core.Base64Variants.getDefaultVariant();
            r0 = (byte[]) r0;
            r0 = (byte[]) r0;
            r0 = r1.encode(r0, r4);
            r0 = r0.toCharArray();
            goto L_0x001a;
        L_0x00af:
            r0 = r5._valueClass;
            r0 = r7.mappingException(r0);
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers.CharDeser.deserialize(com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.databind.DeserializationContext):char[]");
        }
    }

    @JacksonStdImpl
    static final class DoubleDeser extends PrimitiveArrayDeserializers<double[]> {
        private static final long serialVersionUID = 1;

        public DoubleDeser() {
            super(double[].class);
        }

        private final double[] handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                return new double[]{_parseDoublePrimitive(jsonParser, deserializationContext)};
            }
            throw deserializationContext.mappingException(this._valueClass);
        }

        public double[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            DoubleBuilder doubleBuilder = deserializationContext.getArrayBuilders().getDoubleBuilder();
            Object obj = (double[]) doubleBuilder.resetAndStart();
            int i = 0;
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                try {
                    Object obj2;
                    double _parseDoublePrimitive = _parseDoublePrimitive(jsonParser, deserializationContext);
                    if (i >= obj.length) {
                        obj2 = (double[]) doubleBuilder.appendCompletedChunk(obj, i);
                        i = 0;
                    } else {
                        obj2 = obj;
                    }
                    int i2 = i + 1;
                    obj2[i] = _parseDoublePrimitive;
                    i = i2;
                    obj = obj2;
                } catch (Throwable e) {
                    throw JsonMappingException.wrapWithPath(e, obj, i + doubleBuilder.bufferedSize());
                }
            }
            return (double[]) doubleBuilder.completeAndClearBuffer(obj, i);
        }
    }

    @JacksonStdImpl
    static final class FloatDeser extends PrimitiveArrayDeserializers<float[]> {
        private static final long serialVersionUID = 1;

        public FloatDeser() {
            super(float[].class);
        }

        private final float[] handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                return new float[]{_parseFloatPrimitive(jsonParser, deserializationContext)};
            }
            throw deserializationContext.mappingException(this._valueClass);
        }

        public float[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            FloatBuilder floatBuilder = deserializationContext.getArrayBuilders().getFloatBuilder();
            Object obj = (float[]) floatBuilder.resetAndStart();
            int i = 0;
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                try {
                    Object obj2;
                    float _parseFloatPrimitive = _parseFloatPrimitive(jsonParser, deserializationContext);
                    if (i >= obj.length) {
                        obj2 = (float[]) floatBuilder.appendCompletedChunk(obj, i);
                        i = 0;
                    } else {
                        obj2 = obj;
                    }
                    int i2 = i + 1;
                    obj2[i] = _parseFloatPrimitive;
                    i = i2;
                    obj = obj2;
                } catch (Throwable e) {
                    throw JsonMappingException.wrapWithPath(e, obj, i + floatBuilder.bufferedSize());
                }
            }
            return (float[]) floatBuilder.completeAndClearBuffer(obj, i);
        }
    }

    @JacksonStdImpl
    static final class IntDeser extends PrimitiveArrayDeserializers<int[]> {
        public static final IntDeser instance;
        private static final long serialVersionUID = 1;

        static {
            instance = new IntDeser();
        }

        public IntDeser() {
            super(int[].class);
        }

        private final int[] handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                return new int[]{_parseIntPrimitive(jsonParser, deserializationContext)};
            }
            throw deserializationContext.mappingException(this._valueClass);
        }

        public int[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            IntBuilder intBuilder = deserializationContext.getArrayBuilders().getIntBuilder();
            Object obj = (int[]) intBuilder.resetAndStart();
            int i = 0;
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                try {
                    Object obj2;
                    int _parseIntPrimitive = _parseIntPrimitive(jsonParser, deserializationContext);
                    if (i >= obj.length) {
                        obj2 = (int[]) intBuilder.appendCompletedChunk(obj, i);
                        i = 0;
                    } else {
                        obj2 = obj;
                    }
                    int i2 = i + 1;
                    obj2[i] = _parseIntPrimitive;
                    i = i2;
                    obj = obj2;
                } catch (Throwable e) {
                    throw JsonMappingException.wrapWithPath(e, obj, i + intBuilder.bufferedSize());
                }
            }
            return (int[]) intBuilder.completeAndClearBuffer(obj, i);
        }
    }

    @JacksonStdImpl
    static final class LongDeser extends PrimitiveArrayDeserializers<long[]> {
        public static final LongDeser instance;
        private static final long serialVersionUID = 1;

        static {
            instance = new LongDeser();
        }

        public LongDeser() {
            super(long[].class);
        }

        private final long[] handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                return new long[]{_parseLongPrimitive(jsonParser, deserializationContext)};
            }
            throw deserializationContext.mappingException(this._valueClass);
        }

        public long[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            LongBuilder longBuilder = deserializationContext.getArrayBuilders().getLongBuilder();
            Object obj = (long[]) longBuilder.resetAndStart();
            int i = 0;
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                try {
                    Object obj2;
                    long _parseLongPrimitive = _parseLongPrimitive(jsonParser, deserializationContext);
                    if (i >= obj.length) {
                        obj2 = (long[]) longBuilder.appendCompletedChunk(obj, i);
                        i = 0;
                    } else {
                        obj2 = obj;
                    }
                    int i2 = i + 1;
                    obj2[i] = _parseLongPrimitive;
                    i = i2;
                    obj = obj2;
                } catch (Throwable e) {
                    throw JsonMappingException.wrapWithPath(e, obj, i + longBuilder.bufferedSize());
                }
            }
            return (long[]) longBuilder.completeAndClearBuffer(obj, i);
        }
    }

    @JacksonStdImpl
    static final class ShortDeser extends PrimitiveArrayDeserializers<short[]> {
        private static final long serialVersionUID = 1;

        public ShortDeser() {
            super(short[].class);
        }

        private final short[] handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                return new short[]{_parseShortPrimitive(jsonParser, deserializationContext)};
            }
            throw deserializationContext.mappingException(this._valueClass);
        }

        public short[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return handleNonArray(jsonParser, deserializationContext);
            }
            ShortBuilder shortBuilder = deserializationContext.getArrayBuilders().getShortBuilder();
            Object obj = (short[]) shortBuilder.resetAndStart();
            int i = 0;
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                try {
                    Object obj2;
                    short _parseShortPrimitive = _parseShortPrimitive(jsonParser, deserializationContext);
                    if (i >= obj.length) {
                        obj2 = (short[]) shortBuilder.appendCompletedChunk(obj, i);
                        i = 0;
                    } else {
                        obj2 = obj;
                    }
                    int i2 = i + 1;
                    obj2[i] = _parseShortPrimitive;
                    i = i2;
                    obj = obj2;
                } catch (Throwable e) {
                    throw JsonMappingException.wrapWithPath(e, obj, i + shortBuilder.bufferedSize());
                }
            }
            return (short[]) shortBuilder.completeAndClearBuffer(obj, i);
        }
    }

    protected PrimitiveArrayDeserializers(Class<T> cls) {
        super((Class) cls);
    }

    public static JsonDeserializer<?> forType(Class<?> cls) {
        if (cls == Integer.TYPE) {
            return IntDeser.instance;
        }
        if (cls == Long.TYPE) {
            return LongDeser.instance;
        }
        if (cls == Byte.TYPE) {
            return new ByteDeser();
        }
        if (cls == Short.TYPE) {
            return new ShortDeser();
        }
        if (cls == Float.TYPE) {
            return new FloatDeser();
        }
        if (cls == Double.TYPE) {
            return new DoubleDeser();
        }
        if (cls == Boolean.TYPE) {
            return new BooleanDeser();
        }
        if (cls == Character.TYPE) {
            return new CharDeser();
        }
        throw new IllegalStateException();
    }

    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }
}
