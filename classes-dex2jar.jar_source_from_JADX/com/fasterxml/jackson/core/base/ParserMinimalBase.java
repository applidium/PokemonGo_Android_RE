package com.fasterxml.jackson.core.base;

import android.support.v4.view.MotionEventCompat;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.NumberInput;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.VersionUtil;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import java.io.IOException;

public abstract class ParserMinimalBase extends JsonParser {
    protected static final int INT_BACKSLASH = 92;
    protected static final int INT_COLON = 58;
    protected static final int INT_COMMA = 44;
    protected static final int INT_CR = 13;
    protected static final int INT_E = 69;
    protected static final int INT_HASH = 35;
    protected static final int INT_LBRACKET = 91;
    protected static final int INT_LCURLY = 123;
    protected static final int INT_LF = 10;
    protected static final int INT_PERIOD = 46;
    protected static final int INT_QUOTE = 34;
    protected static final int INT_RBRACKET = 93;
    protected static final int INT_RCURLY = 125;
    protected static final int INT_SLASH = 47;
    protected static final int INT_SPACE = 32;
    protected static final int INT_TAB = 9;
    protected static final int INT_e = 101;
    protected JsonToken _currToken;
    protected JsonToken _lastClearedToken;

    protected ParserMinimalBase() {
    }

    protected ParserMinimalBase(int i) {
        super(i);
    }

    protected static String _ascii(byte[] bArr) {
        try {
            return new String(bArr, "US-ASCII");
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    protected static byte[] _asciiBytes(String str) {
        byte[] bArr = new byte[str.length()];
        int length = str.length();
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) str.charAt(i);
        }
        return bArr;
    }

    protected static final String _getCharDesc(int i) {
        char c = (char) i;
        return Character.isISOControl(c) ? "(CTRL-CHAR, code " + i + ")" : i > MotionEventCompat.ACTION_MASK ? "'" + c + "' (code " + i + " / 0x" + Integer.toHexString(i) + ")" : "'" + c + "' (code " + i + ")";
    }

    protected final JsonParseException _constructError(String str, Throwable th) {
        return new JsonParseException(str, getCurrentLocation(), th);
    }

    protected void _decodeBase64(String str, ByteArrayBuilder byteArrayBuilder, Base64Variant base64Variant) throws IOException {
        try {
            base64Variant.decode(str, byteArrayBuilder);
        } catch (IllegalArgumentException e) {
            _reportError(e.getMessage());
        }
    }

    protected abstract void _handleEOF() throws JsonParseException;

    protected char _handleUnrecognizedCharacterEscape(char c) throws JsonProcessingException {
        if (!(isEnabled(Feature.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER) || (c == '\'' && isEnabled(Feature.ALLOW_SINGLE_QUOTES)))) {
            _reportError("Unrecognized character escape " + _getCharDesc(c));
        }
        return c;
    }

    protected boolean _hasTextualNull(String str) {
        return "null".equals(str);
    }

    protected final void _reportError(String str) throws JsonParseException {
        throw _constructError(str);
    }

    protected void _reportInvalidEOF() throws JsonParseException {
        _reportInvalidEOF(" in " + this._currToken);
    }

    protected void _reportInvalidEOF(String str) throws JsonParseException {
        _reportError("Unexpected end-of-input" + str);
    }

    protected void _reportInvalidEOFInValue() throws JsonParseException {
        _reportInvalidEOF(" in a value");
    }

    protected void _reportMissingRootWS(int i) throws JsonParseException {
        _reportUnexpectedChar(i, "Expected space separating root-level values");
    }

    protected void _reportUnexpectedChar(int i, String str) throws JsonParseException {
        if (i < 0) {
            _reportInvalidEOF();
        }
        String str2 = "Unexpected character (" + _getCharDesc(i) + ")";
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        _reportError(str2);
    }

    protected final void _throwInternal() {
        VersionUtil.throwInternal();
    }

    protected void _throwInvalidSpace(int i) throws JsonParseException {
        _reportError("Illegal character (" + _getCharDesc((char) i) + "): only regular white space (\\r, \\n, \\t) is allowed between tokens");
    }

    protected void _throwUnquotedSpace(int i, String str) throws JsonParseException {
        if (!isEnabled(Feature.ALLOW_UNQUOTED_CONTROL_CHARS) || i > INT_SPACE) {
            _reportError("Illegal unquoted character (" + _getCharDesc((char) i) + "): has to be escaped using backslash to be included in " + str);
        }
    }

    protected final void _wrapError(String str, Throwable th) throws JsonParseException {
        throw _constructError(str, th);
    }

    public void clearCurrentToken() {
        if (this._currToken != null) {
            this._lastClearedToken = this._currToken;
            this._currToken = null;
        }
    }

    public abstract void close() throws IOException;

    public abstract byte[] getBinaryValue(Base64Variant base64Variant) throws IOException;

    public abstract String getCurrentName() throws IOException;

    public JsonToken getCurrentToken() {
        return this._currToken;
    }

    public int getCurrentTokenId() {
        JsonToken jsonToken = this._currToken;
        return jsonToken == null ? 0 : jsonToken.id();
    }

    public JsonToken getLastClearedToken() {
        return this._lastClearedToken;
    }

    public abstract JsonStreamContext getParsingContext();

    public abstract String getText() throws IOException;

    public abstract char[] getTextCharacters() throws IOException;

    public abstract int getTextLength() throws IOException;

    public abstract int getTextOffset() throws IOException;

    public boolean getValueAsBoolean(boolean z) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == null) {
            return z;
        }
        switch (jsonToken.id()) {
            case Place.TYPE_ATM /*6*/:
                String trim = getText().trim();
                if (!"true".equals(trim)) {
                    return "false".equals(trim) ? false : _hasTextualNull(trim) ? false : z;
                }
                break;
            case Place.TYPE_BAKERY /*7*/:
                if (getIntValue() == 0) {
                    return false;
                }
                break;
            case INT_TAB /*9*/:
                break;
            case INT_LF /*10*/:
            case Place.TYPE_BICYCLE_STORE /*11*/:
                return false;
            case Place.TYPE_BOOK_STORE /*12*/:
                Object embeddedObject = getEmbeddedObject();
                return embeddedObject instanceof Boolean ? ((Boolean) embeddedObject).booleanValue() : z;
            default:
                return z;
        }
        return true;
    }

    public double getValueAsDouble(double d) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == null) {
            return d;
        }
        switch (jsonToken.id()) {
            case Place.TYPE_ATM /*6*/:
                String text = getText();
                return _hasTextualNull(text) ? 0.0d : NumberInput.parseAsDouble(text, d);
            case Place.TYPE_BAKERY /*7*/:
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                return getDoubleValue();
            case INT_TAB /*9*/:
                return 1.0d;
            case INT_LF /*10*/:
            case Place.TYPE_BICYCLE_STORE /*11*/:
                return 0.0d;
            case Place.TYPE_BOOK_STORE /*12*/:
                Object embeddedObject = getEmbeddedObject();
                return embeddedObject instanceof Number ? ((Number) embeddedObject).doubleValue() : d;
            default:
                return d;
        }
    }

    public int getValueAsInt() throws IOException {
        JsonToken jsonToken = this._currToken;
        return jsonToken == JsonToken.VALUE_NUMBER_INT ? getIntValue() : jsonToken == JsonToken.VALUE_NUMBER_FLOAT ? getIntValue() : getValueAsInt(0);
    }

    public int getValueAsInt(int i) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return getIntValue();
        }
        if (jsonToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return getIntValue();
        }
        if (jsonToken == null) {
            return i;
        }
        switch (jsonToken.id()) {
            case Place.TYPE_ATM /*6*/:
                String text = getText();
                return _hasTextualNull(text) ? 0 : NumberInput.parseAsInt(text, i);
            case INT_TAB /*9*/:
                return 1;
            case INT_LF /*10*/:
                return 0;
            case Place.TYPE_BICYCLE_STORE /*11*/:
                return 0;
            case Place.TYPE_BOOK_STORE /*12*/:
                Object embeddedObject = getEmbeddedObject();
                return embeddedObject instanceof Number ? ((Number) embeddedObject).intValue() : i;
            default:
                return i;
        }
    }

    public long getValueAsLong() throws IOException {
        JsonToken jsonToken = this._currToken;
        return jsonToken == JsonToken.VALUE_NUMBER_INT ? getLongValue() : jsonToken == JsonToken.VALUE_NUMBER_FLOAT ? getLongValue() : getValueAsLong(0);
    }

    public long getValueAsLong(long j) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return getLongValue();
        }
        if (jsonToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return getLongValue();
        }
        if (jsonToken == null) {
            return j;
        }
        switch (jsonToken.id()) {
            case Place.TYPE_ATM /*6*/:
                String text = getText();
                return _hasTextualNull(text) ? 0 : NumberInput.parseAsLong(text, j);
            case INT_TAB /*9*/:
                return 1;
            case INT_LF /*10*/:
            case Place.TYPE_BICYCLE_STORE /*11*/:
                return 0;
            case Place.TYPE_BOOK_STORE /*12*/:
                Object embeddedObject = getEmbeddedObject();
                return embeddedObject instanceof Number ? ((Number) embeddedObject).longValue() : j;
            default:
                return j;
        }
    }

    public String getValueAsString() throws IOException {
        return this._currToken == JsonToken.VALUE_STRING ? getText() : this._currToken == JsonToken.FIELD_NAME ? getCurrentName() : getValueAsString(null);
    }

    public String getValueAsString(String str) throws IOException {
        return this._currToken == JsonToken.VALUE_STRING ? getText() : this._currToken == JsonToken.FIELD_NAME ? getCurrentName() : (this._currToken == null || this._currToken == JsonToken.VALUE_NULL || !this._currToken.isScalarValue()) ? str : getText();
    }

    public boolean hasCurrentToken() {
        return this._currToken != null;
    }

    public abstract boolean hasTextCharacters();

    public boolean hasToken(JsonToken jsonToken) {
        return this._currToken == jsonToken;
    }

    public boolean hasTokenId(int i) {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == null) {
            if (i != 0) {
                return false;
            }
        } else if (jsonToken.id() != i) {
            return false;
        }
        return true;
    }

    public abstract boolean isClosed();

    public boolean isExpectedStartArrayToken() {
        return this._currToken == JsonToken.START_ARRAY;
    }

    public boolean isExpectedStartObjectToken() {
        return this._currToken == JsonToken.START_OBJECT;
    }

    public abstract JsonToken nextToken() throws IOException;

    public JsonToken nextValue() throws IOException {
        JsonToken nextToken = nextToken();
        return nextToken == JsonToken.FIELD_NAME ? nextToken() : nextToken;
    }

    public abstract void overrideCurrentName(String str);

    public JsonParser skipChildren() throws IOException {
        if (this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) {
            int i = 1;
            while (true) {
                JsonToken nextToken = nextToken();
                if (nextToken == null) {
                    break;
                } else if (nextToken.isStructStart()) {
                    i++;
                } else if (nextToken.isStructEnd()) {
                    i--;
                    if (i == 0) {
                        break;
                    }
                } else {
                    continue;
                }
            }
            _handleEOF();
        }
        return this;
    }
}
