package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonGenerator.Feature;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.TreeNode;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.base.ParserMinimalBase;
import com.fasterxml.jackson.core.json.JsonReadContext;
import com.fasterxml.jackson.core.json.JsonWriteContext;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.TreeMap;
import spacemadness.com.lunarconsole.C1401R;

public class TokenBuffer extends JsonGenerator {
    protected static final int DEFAULT_GENERATOR_FEATURES;
    protected int _appendAt;
    protected boolean _closed;
    protected Segment _first;
    protected boolean _forceBigDecimal;
    protected int _generatorFeatures;
    protected boolean _hasNativeId;
    protected boolean _hasNativeObjectIds;
    protected boolean _hasNativeTypeIds;
    protected Segment _last;
    protected boolean _mayHaveNativeIds;
    protected ObjectCodec _objectCodec;
    protected Object _objectId;
    protected Object _typeId;
    protected JsonWriteContext _writeContext;

    /* renamed from: com.fasterxml.jackson.databind.util.TokenBuffer.1 */
    static /* synthetic */ class C01691 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType;
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonToken;

        static {
            $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType = new int[NumberType.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[NumberType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[NumberType.BIG_INTEGER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[NumberType.BIG_DECIMAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[NumberType.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[NumberType.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            $SwitchMap$com$fasterxml$jackson$core$JsonToken = new int[JsonToken.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.START_OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.END_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.START_ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.END_ARRAY.ordinal()] = 4;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.FIELD_NAME.ordinal()] = 5;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_STRING.ordinal()] = 6;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_INT.ordinal()] = 7;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_TRUE.ordinal()] = 9;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_FALSE.ordinal()] = 10;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NULL.ordinal()] = 11;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_EMBEDDED_OBJECT.ordinal()] = 12;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    protected static final class Parser extends ParserMinimalBase {
        protected transient ByteArrayBuilder _byteBuilder;
        protected boolean _closed;
        protected ObjectCodec _codec;
        protected final boolean _hasNativeIds;
        protected final boolean _hasNativeObjectIds;
        protected final boolean _hasNativeTypeIds;
        protected JsonLocation _location;
        protected JsonReadContext _parsingContext;
        protected Segment _segment;
        protected int _segmentPtr;

        public Parser(Segment segment, ObjectCodec objectCodec, boolean z, boolean z2) {
            super(0);
            this._location = null;
            this._segment = segment;
            this._segmentPtr = -1;
            this._codec = objectCodec;
            this._parsingContext = JsonReadContext.createRootContext(null);
            this._hasNativeTypeIds = z;
            this._hasNativeObjectIds = z2;
            this._hasNativeIds = z | z2;
        }

        protected final void _checkIsNumber() throws JsonParseException {
            if (this._currToken == null || !this._currToken.isNumeric()) {
                throw _constructError("Current token (" + this._currToken + ") not numeric, can not use numeric value accessors");
            }
        }

        protected final Object _currentObject() {
            return this._segment.get(this._segmentPtr);
        }

        protected void _handleEOF() throws JsonParseException {
            _throwInternal();
        }

        public boolean canReadObjectId() {
            return this._hasNativeObjectIds;
        }

        public boolean canReadTypeId() {
            return this._hasNativeTypeIds;
        }

        public void close() throws IOException {
            if (!this._closed) {
                this._closed = true;
            }
        }

        public BigInteger getBigIntegerValue() throws IOException {
            Number numberValue = getNumberValue();
            return numberValue instanceof BigInteger ? (BigInteger) numberValue : getNumberType() == NumberType.BIG_DECIMAL ? ((BigDecimal) numberValue).toBigInteger() : BigInteger.valueOf(numberValue.longValue());
        }

        public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException, JsonParseException {
            if (this._currToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
                Object _currentObject = _currentObject();
                if (_currentObject instanceof byte[]) {
                    return (byte[]) _currentObject;
                }
            }
            if (this._currToken != JsonToken.VALUE_STRING) {
                throw _constructError("Current token (" + this._currToken + ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary");
            }
            String text = getText();
            if (text == null) {
                return null;
            }
            ByteArrayBuilder byteArrayBuilder = this._byteBuilder;
            if (byteArrayBuilder == null) {
                byteArrayBuilder = new ByteArrayBuilder(100);
                this._byteBuilder = byteArrayBuilder;
            } else {
                this._byteBuilder.reset();
            }
            _decodeBase64(text, byteArrayBuilder, base64Variant);
            return byteArrayBuilder.toByteArray();
        }

        public ObjectCodec getCodec() {
            return this._codec;
        }

        public JsonLocation getCurrentLocation() {
            return this._location == null ? JsonLocation.NA : this._location;
        }

        public String getCurrentName() {
            return (this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) ? this._parsingContext.getParent().getCurrentName() : this._parsingContext.getCurrentName();
        }

        public BigDecimal getDecimalValue() throws IOException {
            Number numberValue = getNumberValue();
            if (numberValue instanceof BigDecimal) {
                return (BigDecimal) numberValue;
            }
            switch (C01691.$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[getNumberType().ordinal()]) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                case Place.TYPE_ART_GALLERY /*5*/:
                    return BigDecimal.valueOf(numberValue.longValue());
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    return new BigDecimal((BigInteger) numberValue);
                default:
                    return BigDecimal.valueOf(numberValue.doubleValue());
            }
        }

        public double getDoubleValue() throws IOException {
            return getNumberValue().doubleValue();
        }

        public Object getEmbeddedObject() {
            return this._currToken == JsonToken.VALUE_EMBEDDED_OBJECT ? _currentObject() : null;
        }

        public float getFloatValue() throws IOException {
            return getNumberValue().floatValue();
        }

        public int getIntValue() throws IOException {
            return this._currToken == JsonToken.VALUE_NUMBER_INT ? ((Number) _currentObject()).intValue() : getNumberValue().intValue();
        }

        public long getLongValue() throws IOException {
            return getNumberValue().longValue();
        }

        public NumberType getNumberType() throws IOException {
            Number numberValue = getNumberValue();
            return numberValue instanceof Integer ? NumberType.INT : numberValue instanceof Long ? NumberType.LONG : numberValue instanceof Double ? NumberType.DOUBLE : numberValue instanceof BigDecimal ? NumberType.BIG_DECIMAL : numberValue instanceof BigInteger ? NumberType.BIG_INTEGER : numberValue instanceof Float ? NumberType.FLOAT : numberValue instanceof Short ? NumberType.INT : null;
        }

        public final Number getNumberValue() throws IOException {
            _checkIsNumber();
            Object _currentObject = _currentObject();
            if (_currentObject instanceof Number) {
                return (Number) _currentObject;
            }
            if (_currentObject instanceof String) {
                String str = (String) _currentObject;
                return str.indexOf(46) >= 0 ? Double.valueOf(Double.parseDouble(str)) : Long.valueOf(Long.parseLong(str));
            } else if (_currentObject == null) {
                return null;
            } else {
                throw new IllegalStateException("Internal error: entry should be a Number, but is of type " + _currentObject.getClass().getName());
            }
        }

        public Object getObjectId() {
            return this._segment.findObjectId(this._segmentPtr);
        }

        public JsonStreamContext getParsingContext() {
            return this._parsingContext;
        }

        public String getText() {
            Object _currentObject;
            if (this._currToken == JsonToken.VALUE_STRING || this._currToken == JsonToken.FIELD_NAME) {
                _currentObject = _currentObject();
                if (_currentObject instanceof String) {
                    return (String) _currentObject;
                }
                if (_currentObject != null) {
                    return _currentObject.toString();
                }
            } else if (this._currToken != null) {
                switch (C01691.$SwitchMap$com$fasterxml$jackson$core$JsonToken[this._currToken.ordinal()]) {
                    case Place.TYPE_BAKERY /*7*/:
                    case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                        _currentObject = _currentObject();
                        if (_currentObject != null) {
                            return _currentObject.toString();
                        }
                        break;
                    default:
                        return this._currToken.asString();
                }
            }
            return null;
        }

        public char[] getTextCharacters() {
            String text = getText();
            return text == null ? null : text.toCharArray();
        }

        public int getTextLength() {
            String text = getText();
            return text == null ? 0 : text.length();
        }

        public int getTextOffset() {
            return 0;
        }

        public JsonLocation getTokenLocation() {
            return getCurrentLocation();
        }

        public Object getTypeId() {
            return this._segment.findTypeId(this._segmentPtr);
        }

        public boolean hasTextCharacters() {
            return false;
        }

        public boolean isClosed() {
            return this._closed;
        }

        public String nextFieldName() throws IOException {
            if (this._closed || this._segment == null) {
                return null;
            }
            int i = this._segmentPtr + 1;
            if (i >= 16 || this._segment.type(i) != JsonToken.FIELD_NAME) {
                return nextToken() == JsonToken.FIELD_NAME ? getCurrentName() : null;
            } else {
                this._segmentPtr = i;
                Object obj = this._segment.get(i);
                String obj2 = obj instanceof String ? (String) obj : obj.toString();
                this._parsingContext.setCurrentName(obj2);
                return obj2;
            }
        }

        public JsonToken nextToken() throws IOException {
            if (this._closed || this._segment == null) {
                return null;
            }
            int i = this._segmentPtr + 1;
            this._segmentPtr = i;
            if (i >= 16) {
                this._segmentPtr = 0;
                this._segment = this._segment.next();
                if (this._segment == null) {
                    return null;
                }
            }
            this._currToken = this._segment.type(this._segmentPtr);
            if (this._currToken == JsonToken.FIELD_NAME) {
                Object _currentObject = _currentObject();
                this._parsingContext.setCurrentName(_currentObject instanceof String ? (String) _currentObject : _currentObject.toString());
            } else if (this._currToken == JsonToken.START_OBJECT) {
                this._parsingContext = this._parsingContext.createChildObjectContext(-1, -1);
            } else if (this._currToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(-1, -1);
            } else if (this._currToken == JsonToken.END_OBJECT || this._currToken == JsonToken.END_ARRAY) {
                this._parsingContext = this._parsingContext.getParent();
                if (this._parsingContext == null) {
                    this._parsingContext = JsonReadContext.createRootContext(null);
                }
            }
            return this._currToken;
        }

        public void overrideCurrentName(String str) {
            JsonReadContext jsonReadContext = this._parsingContext;
            if (this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) {
                jsonReadContext = jsonReadContext.getParent();
            }
            try {
                jsonReadContext.setCurrentName(str);
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }

        public JsonToken peekNextToken() throws IOException {
            if (this._closed) {
                return null;
            }
            Segment segment = this._segment;
            int i = this._segmentPtr + 1;
            if (i >= 16) {
                i = 0;
                segment = segment == null ? null : segment.next();
            }
            return segment != null ? segment.type(i) : null;
        }

        public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
            byte[] binaryValue = getBinaryValue(base64Variant);
            if (binaryValue == null) {
                return 0;
            }
            outputStream.write(binaryValue, 0, binaryValue.length);
            return binaryValue.length;
        }

        public void setCodec(ObjectCodec objectCodec) {
            this._codec = objectCodec;
        }

        public void setLocation(JsonLocation jsonLocation) {
            this._location = jsonLocation;
        }

        public Version version() {
            return PackageVersion.VERSION;
        }
    }

    protected static final class Segment {
        public static final int TOKENS_PER_SEGMENT = 16;
        private static final JsonToken[] TOKEN_TYPES_BY_INDEX;
        protected TreeMap<Integer, Object> _nativeIds;
        protected Segment _next;
        protected long _tokenTypes;
        protected final Object[] _tokens;

        static {
            TOKEN_TYPES_BY_INDEX = new JsonToken[TOKENS_PER_SEGMENT];
            Object values = JsonToken.values();
            System.arraycopy(values, 1, TOKEN_TYPES_BY_INDEX, 1, Math.min(15, values.length - 1));
        }

        public Segment() {
            this._tokens = new Object[TOKENS_PER_SEGMENT];
        }

        private final int _objectIdIndex(int i) {
            return (i + i) + 1;
        }

        private final int _typeIdIndex(int i) {
            return i + i;
        }

        private final void assignNativeIds(int i, Object obj, Object obj2) {
            if (this._nativeIds == null) {
                this._nativeIds = new TreeMap();
            }
            if (obj != null) {
                this._nativeIds.put(Integer.valueOf(_objectIdIndex(i)), obj);
            }
            if (obj2 != null) {
                this._nativeIds.put(Integer.valueOf(_typeIdIndex(i)), obj2);
            }
        }

        private void set(int i, int i2, Object obj) {
            this._tokens[i] = obj;
            long j = (long) i2;
            if (i > 0) {
                j <<= i << 2;
            }
            this._tokenTypes = j | this._tokenTypes;
        }

        private void set(int i, int i2, Object obj, Object obj2, Object obj3) {
            this._tokens[i] = obj;
            long j = (long) i2;
            if (i > 0) {
                j <<= i << 2;
            }
            this._tokenTypes = j | this._tokenTypes;
            assignNativeIds(i, obj2, obj3);
        }

        private void set(int i, JsonToken jsonToken) {
            long ordinal = (long) jsonToken.ordinal();
            if (i > 0) {
                ordinal <<= i << 2;
            }
            this._tokenTypes = ordinal | this._tokenTypes;
        }

        private void set(int i, JsonToken jsonToken, Object obj) {
            this._tokens[i] = obj;
            long ordinal = (long) jsonToken.ordinal();
            if (i > 0) {
                ordinal <<= i << 2;
            }
            this._tokenTypes = ordinal | this._tokenTypes;
        }

        private void set(int i, JsonToken jsonToken, Object obj, Object obj2) {
            long ordinal = (long) jsonToken.ordinal();
            if (i > 0) {
                ordinal <<= i << 2;
            }
            this._tokenTypes = ordinal | this._tokenTypes;
            assignNativeIds(i, obj, obj2);
        }

        private void set(int i, JsonToken jsonToken, Object obj, Object obj2, Object obj3) {
            this._tokens[i] = obj;
            long ordinal = (long) jsonToken.ordinal();
            if (i > 0) {
                ordinal <<= i << 2;
            }
            this._tokenTypes = ordinal | this._tokenTypes;
            assignNativeIds(i, obj2, obj3);
        }

        public Segment append(int i, JsonToken jsonToken) {
            if (i < TOKENS_PER_SEGMENT) {
                set(i, jsonToken);
                return null;
            }
            this._next = new Segment();
            this._next.set(0, jsonToken);
            return this._next;
        }

        public Segment append(int i, JsonToken jsonToken, Object obj) {
            if (i < TOKENS_PER_SEGMENT) {
                set(i, jsonToken, obj);
                return null;
            }
            this._next = new Segment();
            this._next.set(0, jsonToken, obj);
            return this._next;
        }

        public Segment append(int i, JsonToken jsonToken, Object obj, Object obj2) {
            if (i < TOKENS_PER_SEGMENT) {
                set(i, jsonToken, obj, obj2);
                return null;
            }
            this._next = new Segment();
            this._next.set(0, jsonToken, obj, obj2);
            return this._next;
        }

        public Segment append(int i, JsonToken jsonToken, Object obj, Object obj2, Object obj3) {
            if (i < TOKENS_PER_SEGMENT) {
                set(i, jsonToken, obj, obj2, obj3);
                return null;
            }
            this._next = new Segment();
            this._next.set(0, jsonToken, obj, obj2, obj3);
            return this._next;
        }

        public Segment appendRaw(int i, int i2, Object obj) {
            if (i < TOKENS_PER_SEGMENT) {
                set(i, i2, obj);
                return null;
            }
            this._next = new Segment();
            this._next.set(0, i2, obj);
            return this._next;
        }

        public Segment appendRaw(int i, int i2, Object obj, Object obj2, Object obj3) {
            if (i < TOKENS_PER_SEGMENT) {
                set(i, i2, obj, obj2, obj3);
                return null;
            }
            this._next = new Segment();
            this._next.set(0, i2, obj, obj2, obj3);
            return this._next;
        }

        public Object findObjectId(int i) {
            return this._nativeIds == null ? null : this._nativeIds.get(Integer.valueOf(_objectIdIndex(i)));
        }

        public Object findTypeId(int i) {
            return this._nativeIds == null ? null : this._nativeIds.get(Integer.valueOf(_typeIdIndex(i)));
        }

        public Object get(int i) {
            return this._tokens[i];
        }

        public boolean hasIds() {
            return this._nativeIds != null;
        }

        public Segment next() {
            return this._next;
        }

        public int rawType(int i) {
            long j = this._tokenTypes;
            if (i > 0) {
                j >>= i << 2;
            }
            return ((int) j) & 15;
        }

        public JsonToken type(int i) {
            long j = this._tokenTypes;
            if (i > 0) {
                j >>= i << 2;
            }
            return TOKEN_TYPES_BY_INDEX[((int) j) & 15];
        }
    }

    static {
        DEFAULT_GENERATOR_FEATURES = Feature.collectDefaults();
    }

    public TokenBuffer(JsonParser jsonParser) {
        this(jsonParser, null);
    }

    public TokenBuffer(JsonParser jsonParser, DeserializationContext deserializationContext) {
        boolean z = false;
        this._hasNativeId = false;
        this._objectCodec = jsonParser.getCodec();
        this._generatorFeatures = DEFAULT_GENERATOR_FEATURES;
        this._writeContext = JsonWriteContext.createRootContext(null);
        Segment segment = new Segment();
        this._last = segment;
        this._first = segment;
        this._appendAt = 0;
        this._hasNativeTypeIds = jsonParser.canReadTypeId();
        this._hasNativeObjectIds = jsonParser.canReadObjectId();
        this._mayHaveNativeIds = this._hasNativeTypeIds | this._hasNativeObjectIds;
        if (deserializationContext != null) {
            z = deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS);
        }
        this._forceBigDecimal = z;
    }

    @Deprecated
    public TokenBuffer(ObjectCodec objectCodec) {
        this(objectCodec, false);
    }

    public TokenBuffer(ObjectCodec objectCodec, boolean z) {
        this._hasNativeId = false;
        this._objectCodec = objectCodec;
        this._generatorFeatures = DEFAULT_GENERATOR_FEATURES;
        this._writeContext = JsonWriteContext.createRootContext(null);
        Segment segment = new Segment();
        this._last = segment;
        this._first = segment;
        this._appendAt = 0;
        this._hasNativeTypeIds = z;
        this._hasNativeObjectIds = z;
        this._mayHaveNativeIds = this._hasNativeTypeIds | this._hasNativeObjectIds;
    }

    private final void _appendNativeIds(StringBuilder stringBuilder) {
        Object findObjectId = this._last.findObjectId(this._appendAt - 1);
        if (findObjectId != null) {
            stringBuilder.append("[objectId=").append(String.valueOf(findObjectId)).append(']');
        }
        findObjectId = this._last.findTypeId(this._appendAt - 1);
        if (findObjectId != null) {
            stringBuilder.append("[typeId=").append(String.valueOf(findObjectId)).append(']');
        }
    }

    private final void _checkNativeIds(JsonParser jsonParser) throws IOException {
        Object typeId = jsonParser.getTypeId();
        this._typeId = typeId;
        if (typeId != null) {
            this._hasNativeId = true;
        }
        typeId = jsonParser.getObjectId();
        this._objectId = typeId;
        if (typeId != null) {
            this._hasNativeId = true;
        }
    }

    protected final void _append(JsonToken jsonToken) {
        Segment append = this._hasNativeId ? this._last.append(this._appendAt, jsonToken, this._objectId, this._typeId) : this._last.append(this._appendAt, jsonToken);
        if (append == null) {
            this._appendAt++;
            return;
        }
        this._last = append;
        this._appendAt = 1;
    }

    protected final void _append(JsonToken jsonToken, Object obj) {
        Segment append;
        if (this._hasNativeId) {
            append = this._last.append(this._appendAt, jsonToken, obj, this._objectId, this._typeId);
        } else {
            append = this._last.append(this._appendAt, jsonToken, obj);
        }
        if (append == null) {
            this._appendAt++;
            return;
        }
        this._last = append;
        this._appendAt = 1;
    }

    protected final void _appendRaw(int i, Object obj) {
        Segment appendRaw;
        if (this._hasNativeId) {
            appendRaw = this._last.appendRaw(this._appendAt, i, obj, this._objectId, this._typeId);
        } else {
            appendRaw = this._last.appendRaw(this._appendAt, i, obj);
        }
        if (appendRaw == null) {
            this._appendAt++;
            return;
        }
        this._last = appendRaw;
        this._appendAt = 1;
    }

    protected void _reportUnsupportedOperation() {
        throw new UnsupportedOperationException("Called operation not supported for TokenBuffer");
    }

    public TokenBuffer append(TokenBuffer tokenBuffer) throws IOException {
        if (!this._hasNativeTypeIds) {
            this._hasNativeTypeIds = tokenBuffer.canWriteTypeId();
        }
        if (!this._hasNativeObjectIds) {
            this._hasNativeObjectIds = tokenBuffer.canWriteObjectId();
        }
        this._mayHaveNativeIds = this._hasNativeTypeIds | this._hasNativeObjectIds;
        JsonParser asParser = tokenBuffer.asParser();
        while (asParser.nextToken() != null) {
            copyCurrentStructure(asParser);
        }
        return this;
    }

    public JsonParser asParser() {
        return asParser(this._objectCodec);
    }

    public JsonParser asParser(JsonParser jsonParser) {
        JsonParser parser = new Parser(this._first, jsonParser.getCodec(), this._hasNativeTypeIds, this._hasNativeObjectIds);
        parser.setLocation(jsonParser.getTokenLocation());
        return parser;
    }

    public JsonParser asParser(ObjectCodec objectCodec) {
        return new Parser(this._first, objectCodec, this._hasNativeTypeIds, this._hasNativeObjectIds);
    }

    public boolean canWriteBinaryNatively() {
        return true;
    }

    public boolean canWriteObjectId() {
        return this._hasNativeObjectIds;
    }

    public boolean canWriteTypeId() {
        return this._hasNativeTypeIds;
    }

    public void close() throws IOException {
        this._closed = true;
    }

    public void copyCurrentEvent(JsonParser jsonParser) throws IOException {
        if (this._mayHaveNativeIds) {
            _checkNativeIds(jsonParser);
        }
        switch (C01691.$SwitchMap$com$fasterxml$jackson$core$JsonToken[jsonParser.getCurrentToken().ordinal()]) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                writeStartObject();
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                writeEndObject();
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                writeStartArray();
            case Place.TYPE_AQUARIUM /*4*/:
                writeEndArray();
            case Place.TYPE_ART_GALLERY /*5*/:
                writeFieldName(jsonParser.getCurrentName());
            case Place.TYPE_ATM /*6*/:
                if (jsonParser.hasTextCharacters()) {
                    writeString(jsonParser.getTextCharacters(), jsonParser.getTextOffset(), jsonParser.getTextLength());
                } else {
                    writeString(jsonParser.getText());
                }
            case Place.TYPE_BAKERY /*7*/:
                switch (C01691.$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[jsonParser.getNumberType().ordinal()]) {
                    case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                        writeNumber(jsonParser.getIntValue());
                    case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                        writeNumber(jsonParser.getBigIntegerValue());
                    default:
                        writeNumber(jsonParser.getLongValue());
                }
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                if (this._forceBigDecimal) {
                    writeNumber(jsonParser.getDecimalValue());
                    return;
                }
                switch (C01691.$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[jsonParser.getNumberType().ordinal()]) {
                    case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                        writeNumber(jsonParser.getDecimalValue());
                    case Place.TYPE_AQUARIUM /*4*/:
                        writeNumber(jsonParser.getFloatValue());
                    default:
                        writeNumber(jsonParser.getDoubleValue());
                }
            case Place.TYPE_BAR /*9*/:
                writeBoolean(true);
            case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                writeBoolean(false);
            case Place.TYPE_BICYCLE_STORE /*11*/:
                writeNull();
            case Place.TYPE_BOOK_STORE /*12*/:
                writeObject(jsonParser.getEmbeddedObject());
            default:
                throw new RuntimeException("Internal error: should never end up through this code path");
        }
    }

    public void copyCurrentStructure(JsonParser jsonParser) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.FIELD_NAME) {
            if (this._mayHaveNativeIds) {
                _checkNativeIds(jsonParser);
            }
            writeFieldName(jsonParser.getCurrentName());
            currentToken = jsonParser.nextToken();
        }
        if (this._mayHaveNativeIds) {
            _checkNativeIds(jsonParser);
        }
        switch (C01691.$SwitchMap$com$fasterxml$jackson$core$JsonToken[currentToken.ordinal()]) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                writeStartObject();
                while (jsonParser.nextToken() != JsonToken.END_OBJECT) {
                    copyCurrentStructure(jsonParser);
                }
                writeEndObject();
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                writeStartArray();
                while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                    copyCurrentStructure(jsonParser);
                }
                writeEndArray();
            default:
                copyCurrentEvent(jsonParser);
        }
    }

    public TokenBuffer deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.getCurrentTokenId() != JsonToken.FIELD_NAME.id()) {
            copyCurrentStructure(jsonParser);
        } else {
            JsonToken nextToken;
            writeStartObject();
            do {
                copyCurrentStructure(jsonParser);
                nextToken = jsonParser.nextToken();
            } while (nextToken == JsonToken.FIELD_NAME);
            if (nextToken != JsonToken.END_OBJECT) {
                throw deserializationContext.mappingException("Expected END_OBJECT after copying contents of a JsonParser into TokenBuffer, got " + nextToken);
            }
            writeEndObject();
        }
        return this;
    }

    public JsonGenerator disable(Feature feature) {
        this._generatorFeatures &= feature.getMask() ^ -1;
        return this;
    }

    public JsonGenerator enable(Feature feature) {
        this._generatorFeatures |= feature.getMask();
        return this;
    }

    public JsonToken firstToken() {
        return this._first != null ? this._first.type(0) : null;
    }

    public void flush() throws IOException {
    }

    public TokenBuffer forceUseOfBigDecimal(boolean z) {
        this._forceBigDecimal = z;
        return this;
    }

    public ObjectCodec getCodec() {
        return this._objectCodec;
    }

    public int getFeatureMask() {
        return this._generatorFeatures;
    }

    public final JsonWriteContext getOutputContext() {
        return this._writeContext;
    }

    public boolean isClosed() {
        return this._closed;
    }

    public boolean isEnabled(Feature feature) {
        return (this._generatorFeatures & feature.getMask()) != 0;
    }

    public void serialize(JsonGenerator jsonGenerator) throws IOException {
        Segment segment;
        boolean z;
        Segment segment2 = this._first;
        int i = -1;
        boolean z2 = this._mayHaveNativeIds;
        if (z2 && segment2.hasIds()) {
            segment = segment2;
            z = true;
        } else {
            segment = segment2;
            z = false;
        }
        while (true) {
            boolean z3;
            int i2 = i + 1;
            if (i2 >= 16) {
                segment = segment.next();
                if (segment != null) {
                    if (z2 && segment.hasIds()) {
                        segment2 = segment;
                        z3 = true;
                        i = 0;
                    } else {
                        segment2 = segment;
                        z3 = false;
                        i = 0;
                    }
                } else {
                    return;
                }
            }
            i = i2;
            z3 = z;
            segment2 = segment;
            JsonToken type = segment2.type(i);
            if (type != null) {
                if (z3) {
                    Object findObjectId = segment2.findObjectId(i);
                    if (findObjectId != null) {
                        jsonGenerator.writeObjectId(findObjectId);
                    }
                    findObjectId = segment2.findTypeId(i);
                    if (findObjectId != null) {
                        jsonGenerator.writeTypeId(findObjectId);
                    }
                }
                Object obj;
                switch (C01691.$SwitchMap$com$fasterxml$jackson$core$JsonToken[type.ordinal()]) {
                    case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                        jsonGenerator.writeStartObject();
                        segment = segment2;
                        z = z3;
                        break;
                    case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                        jsonGenerator.writeEndObject();
                        segment = segment2;
                        z = z3;
                        break;
                    case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                        jsonGenerator.writeStartArray();
                        segment = segment2;
                        z = z3;
                        break;
                    case Place.TYPE_AQUARIUM /*4*/:
                        jsonGenerator.writeEndArray();
                        segment = segment2;
                        z = z3;
                        break;
                    case Place.TYPE_ART_GALLERY /*5*/:
                        obj = segment2.get(i);
                        if (!(obj instanceof SerializableString)) {
                            jsonGenerator.writeFieldName((String) obj);
                            segment = segment2;
                            z = z3;
                            break;
                        }
                        jsonGenerator.writeFieldName((SerializableString) obj);
                        segment = segment2;
                        z = z3;
                        break;
                    case Place.TYPE_ATM /*6*/:
                        obj = segment2.get(i);
                        if (!(obj instanceof SerializableString)) {
                            jsonGenerator.writeString((String) obj);
                            segment = segment2;
                            z = z3;
                            break;
                        }
                        jsonGenerator.writeString((SerializableString) obj);
                        segment = segment2;
                        z = z3;
                        break;
                    case Place.TYPE_BAKERY /*7*/:
                        obj = segment2.get(i);
                        if (!(obj instanceof Integer)) {
                            if (!(obj instanceof BigInteger)) {
                                if (!(obj instanceof Long)) {
                                    if (!(obj instanceof Short)) {
                                        jsonGenerator.writeNumber(((Number) obj).intValue());
                                        segment = segment2;
                                        z = z3;
                                        break;
                                    }
                                    jsonGenerator.writeNumber(((Short) obj).shortValue());
                                    segment = segment2;
                                    z = z3;
                                    break;
                                }
                                jsonGenerator.writeNumber(((Long) obj).longValue());
                                segment = segment2;
                                z = z3;
                                break;
                            }
                            jsonGenerator.writeNumber((BigInteger) obj);
                            segment = segment2;
                            z = z3;
                            break;
                        }
                        jsonGenerator.writeNumber(((Integer) obj).intValue());
                        segment = segment2;
                        z = z3;
                        break;
                    case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                        obj = segment2.get(i);
                        if (obj instanceof Double) {
                            jsonGenerator.writeNumber(((Double) obj).doubleValue());
                            segment = segment2;
                            z = z3;
                            break;
                        } else if (obj instanceof BigDecimal) {
                            jsonGenerator.writeNumber((BigDecimal) obj);
                            segment = segment2;
                            z = z3;
                            break;
                        } else if (obj instanceof Float) {
                            jsonGenerator.writeNumber(((Float) obj).floatValue());
                            segment = segment2;
                            z = z3;
                            break;
                        } else if (obj == null) {
                            jsonGenerator.writeNull();
                            segment = segment2;
                            z = z3;
                            break;
                        } else if (obj instanceof String) {
                            jsonGenerator.writeNumber((String) obj);
                            segment = segment2;
                            z = z3;
                            break;
                        } else {
                            throw new JsonGenerationException("Unrecognized value type for VALUE_NUMBER_FLOAT: " + obj.getClass().getName() + ", can not serialize");
                        }
                    case Place.TYPE_BAR /*9*/:
                        jsonGenerator.writeBoolean(true);
                        segment = segment2;
                        z = z3;
                        break;
                    case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                        jsonGenerator.writeBoolean(false);
                        segment = segment2;
                        z = z3;
                        break;
                    case Place.TYPE_BICYCLE_STORE /*11*/:
                        jsonGenerator.writeNull();
                        segment = segment2;
                        z = z3;
                        break;
                    case Place.TYPE_BOOK_STORE /*12*/:
                        obj = segment2.get(i);
                        if (!(obj instanceof RawValue)) {
                            jsonGenerator.writeObject(obj);
                            segment = segment2;
                            z = z3;
                            break;
                        }
                        ((RawValue) obj).serialize(jsonGenerator);
                        segment = segment2;
                        z = z3;
                        break;
                    default:
                        throw new RuntimeException("Internal error: should never end up through this code path");
                }
            }
            return;
        }
    }

    public JsonGenerator setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
        return this;
    }

    public JsonGenerator setFeatureMask(int i) {
        this._generatorFeatures = i;
        return this;
    }

    public String toString() {
        int i = 0;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("[TokenBuffer: ");
        JsonParser asParser = asParser();
        int i2 = (this._hasNativeTypeIds || this._hasNativeObjectIds) ? 1 : 0;
        while (true) {
            JsonToken nextToken = asParser.nextToken();
            if (nextToken == null) {
                break;
            }
            if (i2 != 0) {
                try {
                    _appendNativeIds(stringBuilder);
                } catch (Throwable e) {
                    throw new IllegalStateException(e);
                }
            }
            if (i < 100) {
                if (i > 0) {
                    stringBuilder.append(", ");
                }
                stringBuilder.append(nextToken.toString());
                if (nextToken == JsonToken.FIELD_NAME) {
                    stringBuilder.append('(');
                    stringBuilder.append(asParser.getCurrentName());
                    stringBuilder.append(')');
                }
            }
            i++;
        }
        if (i >= 100) {
            stringBuilder.append(" ... (truncated ").append(i - 100).append(" entries)");
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public JsonGenerator useDefaultPrettyPrinter() {
        return this;
    }

    public Version version() {
        return PackageVersion.VERSION;
    }

    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i) {
        throw new UnsupportedOperationException();
    }

    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException {
        Object obj = new byte[i2];
        System.arraycopy(bArr, i, obj, 0, i2);
        writeObject(obj);
    }

    public void writeBoolean(boolean z) throws IOException {
        _append(z ? JsonToken.VALUE_TRUE : JsonToken.VALUE_FALSE);
    }

    public final void writeEndArray() throws IOException {
        _append(JsonToken.END_ARRAY);
        JsonWriteContext parent = this._writeContext.getParent();
        if (parent != null) {
            this._writeContext = parent;
        }
    }

    public final void writeEndObject() throws IOException {
        _append(JsonToken.END_OBJECT);
        JsonWriteContext parent = this._writeContext.getParent();
        if (parent != null) {
            this._writeContext = parent;
        }
    }

    public void writeFieldName(SerializableString serializableString) throws IOException {
        _append(JsonToken.FIELD_NAME, serializableString);
        this._writeContext.writeFieldName(serializableString.getValue());
    }

    public final void writeFieldName(String str) throws IOException {
        _append(JsonToken.FIELD_NAME, str);
        this._writeContext.writeFieldName(str);
    }

    public void writeNull() throws IOException {
        _append(JsonToken.VALUE_NULL);
    }

    public void writeNumber(double d) throws IOException {
        _append(JsonToken.VALUE_NUMBER_FLOAT, Double.valueOf(d));
    }

    public void writeNumber(float f) throws IOException {
        _append(JsonToken.VALUE_NUMBER_FLOAT, Float.valueOf(f));
    }

    public void writeNumber(int i) throws IOException {
        _append(JsonToken.VALUE_NUMBER_INT, Integer.valueOf(i));
    }

    public void writeNumber(long j) throws IOException {
        _append(JsonToken.VALUE_NUMBER_INT, Long.valueOf(j));
    }

    public void writeNumber(String str) throws IOException {
        _append(JsonToken.VALUE_NUMBER_FLOAT, str);
    }

    public void writeNumber(BigDecimal bigDecimal) throws IOException {
        if (bigDecimal == null) {
            writeNull();
        } else {
            _append(JsonToken.VALUE_NUMBER_FLOAT, bigDecimal);
        }
    }

    public void writeNumber(BigInteger bigInteger) throws IOException {
        if (bigInteger == null) {
            writeNull();
        } else {
            _append(JsonToken.VALUE_NUMBER_INT, bigInteger);
        }
    }

    public void writeNumber(short s) throws IOException {
        _append(JsonToken.VALUE_NUMBER_INT, Short.valueOf(s));
    }

    public void writeObject(Object obj) throws IOException {
        if (obj == null) {
            writeNull();
        } else if (obj.getClass() == byte[].class || (obj instanceof RawValue)) {
            _append(JsonToken.VALUE_EMBEDDED_OBJECT, obj);
        } else if (this._objectCodec == null) {
            _append(JsonToken.VALUE_EMBEDDED_OBJECT, obj);
        } else {
            this._objectCodec.writeValue(this, obj);
        }
    }

    public void writeObjectId(Object obj) {
        this._objectId = obj;
        this._hasNativeId = true;
    }

    public void writeRaw(char c) throws IOException {
        _reportUnsupportedOperation();
    }

    public void writeRaw(SerializableString serializableString) throws IOException {
        _reportUnsupportedOperation();
    }

    public void writeRaw(String str) throws IOException {
        _reportUnsupportedOperation();
    }

    public void writeRaw(String str, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
    }

    public void writeRaw(char[] cArr, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
    }

    public void writeRawUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
    }

    public void writeRawValue(String str) throws IOException {
        _append(JsonToken.VALUE_EMBEDDED_OBJECT, new RawValue(str));
    }

    public void writeRawValue(String str, int i, int i2) throws IOException {
        if (i > 0 || i2 != str.length()) {
            str = str.substring(i, i + i2);
        }
        _append(JsonToken.VALUE_EMBEDDED_OBJECT, new RawValue(str));
    }

    public void writeRawValue(char[] cArr, int i, int i2) throws IOException {
        _append(JsonToken.VALUE_EMBEDDED_OBJECT, new String(cArr, i, i2));
    }

    public final void writeStartArray() throws IOException {
        _append(JsonToken.START_ARRAY);
        this._writeContext = this._writeContext.createChildArrayContext();
    }

    public final void writeStartObject() throws IOException {
        _append(JsonToken.START_OBJECT);
        this._writeContext = this._writeContext.createChildObjectContext();
    }

    public void writeString(SerializableString serializableString) throws IOException {
        if (serializableString == null) {
            writeNull();
        } else {
            _append(JsonToken.VALUE_STRING, serializableString);
        }
    }

    public void writeString(String str) throws IOException {
        if (str == null) {
            writeNull();
        } else {
            _append(JsonToken.VALUE_STRING, str);
        }
    }

    public void writeString(char[] cArr, int i, int i2) throws IOException {
        writeString(new String(cArr, i, i2));
    }

    public void writeTree(TreeNode treeNode) throws IOException {
        if (treeNode == null) {
            writeNull();
        } else if (this._objectCodec == null) {
            _append(JsonToken.VALUE_EMBEDDED_OBJECT, treeNode);
        } else {
            this._objectCodec.writeTree(this, treeNode);
        }
    }

    public void writeTypeId(Object obj) {
        this._typeId = obj;
        this._hasNativeId = true;
    }

    public void writeUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
    }
}
