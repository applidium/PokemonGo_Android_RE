package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.base.ParserMinimalBase;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import spacemadness.com.lunarconsole.C1401R;

public class TreeTraversingParser extends ParserMinimalBase {
    protected boolean _closed;
    protected JsonToken _nextToken;
    protected NodeCursor _nodeCursor;
    protected ObjectCodec _objectCodec;
    protected boolean _startContainer;

    /* renamed from: com.fasterxml.jackson.databind.node.TreeTraversingParser.1 */
    static /* synthetic */ class C01581 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonToken;

        static {
            $SwitchMap$com$fasterxml$jackson$core$JsonToken = new int[JsonToken.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.FIELD_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_INT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_EMBEDDED_OBJECT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public TreeTraversingParser(JsonNode jsonNode) {
        this(jsonNode, null);
    }

    public TreeTraversingParser(JsonNode jsonNode, ObjectCodec objectCodec) {
        super(0);
        this._objectCodec = objectCodec;
        if (jsonNode.isArray()) {
            this._nextToken = JsonToken.START_ARRAY;
            this._nodeCursor = new ArrayCursor(jsonNode, null);
        } else if (jsonNode.isObject()) {
            this._nextToken = JsonToken.START_OBJECT;
            this._nodeCursor = new ObjectCursor(jsonNode, null);
        } else {
            this._nodeCursor = new RootCursor(jsonNode, null);
        }
    }

    protected void _handleEOF() throws JsonParseException {
        _throwInternal();
    }

    public void close() throws IOException {
        if (!this._closed) {
            this._closed = true;
            this._nodeCursor = null;
            this._currToken = null;
        }
    }

    protected JsonNode currentNode() {
        return (this._closed || this._nodeCursor == null) ? null : this._nodeCursor.currentNode();
    }

    protected JsonNode currentNumericNode() throws JsonParseException {
        JsonNode currentNode = currentNode();
        if (currentNode != null && currentNode.isNumber()) {
            return currentNode;
        }
        throw _constructError("Current token (" + (currentNode == null ? null : currentNode.asToken()) + ") not numeric, can not use numeric value accessors");
    }

    public BigInteger getBigIntegerValue() throws IOException, JsonParseException {
        return currentNumericNode().bigIntegerValue();
    }

    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException, JsonParseException {
        JsonNode currentNode = currentNode();
        if (currentNode != null) {
            byte[] binaryValue = currentNode.binaryValue();
            if (binaryValue != null) {
                return binaryValue;
            }
            if (currentNode.isPojo()) {
                Object pojo = ((POJONode) currentNode).getPojo();
                if (pojo instanceof byte[]) {
                    return (byte[]) pojo;
                }
            }
        }
        return null;
    }

    public ObjectCodec getCodec() {
        return this._objectCodec;
    }

    public JsonLocation getCurrentLocation() {
        return JsonLocation.NA;
    }

    public String getCurrentName() {
        return this._nodeCursor == null ? null : this._nodeCursor.getCurrentName();
    }

    public BigDecimal getDecimalValue() throws IOException, JsonParseException {
        return currentNumericNode().decimalValue();
    }

    public double getDoubleValue() throws IOException, JsonParseException {
        return currentNumericNode().doubleValue();
    }

    public Object getEmbeddedObject() {
        if (!this._closed) {
            JsonNode currentNode = currentNode();
            if (currentNode != null) {
                if (currentNode.isPojo()) {
                    return ((POJONode) currentNode).getPojo();
                }
                if (currentNode.isBinary()) {
                    return ((BinaryNode) currentNode).binaryValue();
                }
            }
        }
        return null;
    }

    public float getFloatValue() throws IOException, JsonParseException {
        return (float) currentNumericNode().doubleValue();
    }

    public int getIntValue() throws IOException, JsonParseException {
        return currentNumericNode().intValue();
    }

    public long getLongValue() throws IOException, JsonParseException {
        return currentNumericNode().longValue();
    }

    public NumberType getNumberType() throws IOException, JsonParseException {
        JsonNode currentNumericNode = currentNumericNode();
        return currentNumericNode == null ? null : currentNumericNode.numberType();
    }

    public Number getNumberValue() throws IOException, JsonParseException {
        return currentNumericNode().numberValue();
    }

    public JsonStreamContext getParsingContext() {
        return this._nodeCursor;
    }

    public String getText() {
        if (this._closed) {
            return null;
        }
        switch (C01581.$SwitchMap$com$fasterxml$jackson$core$JsonToken[this._currToken.ordinal()]) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return this._nodeCursor.getCurrentName();
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                return currentNode().textValue();
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
            case Place.TYPE_AQUARIUM /*4*/:
                return String.valueOf(currentNode().numberValue());
            case Place.TYPE_ART_GALLERY /*5*/:
                JsonNode currentNode = currentNode();
                if (currentNode != null && currentNode.isBinary()) {
                    return currentNode.asText();
                }
        }
        return this._currToken != null ? this._currToken.asString() : null;
    }

    public char[] getTextCharacters() throws IOException, JsonParseException {
        return getText().toCharArray();
    }

    public int getTextLength() throws IOException, JsonParseException {
        return getText().length();
    }

    public int getTextOffset() throws IOException, JsonParseException {
        return 0;
    }

    public JsonLocation getTokenLocation() {
        return JsonLocation.NA;
    }

    public boolean hasTextCharacters() {
        return false;
    }

    public boolean isClosed() {
        return this._closed;
    }

    public JsonToken nextToken() throws IOException, JsonParseException {
        if (this._nextToken != null) {
            this._currToken = this._nextToken;
            this._nextToken = null;
            return this._currToken;
        } else if (this._startContainer) {
            this._startContainer = false;
            if (this._nodeCursor.currentHasChildren()) {
                this._nodeCursor = this._nodeCursor.iterateChildren();
                this._currToken = this._nodeCursor.nextToken();
                if (this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) {
                    this._startContainer = true;
                }
                return this._currToken;
            }
            this._currToken = this._currToken == JsonToken.START_OBJECT ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            return this._currToken;
        } else if (this._nodeCursor == null) {
            this._closed = true;
            return null;
        } else {
            this._currToken = this._nodeCursor.nextToken();
            if (this._currToken != null) {
                if (this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) {
                    this._startContainer = true;
                }
                return this._currToken;
            }
            this._currToken = this._nodeCursor.endToken();
            this._nodeCursor = this._nodeCursor.getParent();
            return this._currToken;
        }
    }

    public void overrideCurrentName(String str) {
        if (this._nodeCursor != null) {
            this._nodeCursor.overrideCurrentName(str);
        }
    }

    public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException, JsonParseException {
        byte[] binaryValue = getBinaryValue(base64Variant);
        if (binaryValue == null) {
            return 0;
        }
        outputStream.write(binaryValue, 0, binaryValue.length);
        return binaryValue.length;
    }

    public void setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }

    public JsonParser skipChildren() throws IOException, JsonParseException {
        if (this._currToken == JsonToken.START_OBJECT) {
            this._startContainer = false;
            this._currToken = JsonToken.END_OBJECT;
        } else if (this._currToken == JsonToken.START_ARRAY) {
            this._startContainer = false;
            this._currToken = JsonToken.END_ARRAY;
        }
        return this;
    }

    public Version version() {
        return PackageVersion.VERSION;
    }
}
