package com.fasterxml.jackson.core.base;

import android.support.v4.widget.ExploreByTouchHelper;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberInput;
import com.fasterxml.jackson.core.json.DupDetector;
import com.fasterxml.jackson.core.json.JsonReadContext;
import com.fasterxml.jackson.core.json.PackageVersion;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.apache.commons.io.IOUtils;
import spacemadness.com.lunarconsole.BuildConfig;

public abstract class ParserBase extends ParserMinimalBase {
    static final BigDecimal BD_MAX_INT;
    static final BigDecimal BD_MAX_LONG;
    static final BigDecimal BD_MIN_INT;
    static final BigDecimal BD_MIN_LONG;
    static final BigInteger BI_MAX_INT;
    static final BigInteger BI_MAX_LONG;
    static final BigInteger BI_MIN_INT;
    static final BigInteger BI_MIN_LONG;
    protected static final char CHAR_NULL = '\u0000';
    protected static final int INT_0 = 48;
    protected static final int INT_9 = 57;
    protected static final int INT_MINUS = 45;
    protected static final int INT_PLUS = 43;
    static final double MAX_INT_D = 2.147483647E9d;
    static final long MAX_INT_L = 2147483647L;
    static final double MAX_LONG_D = 9.223372036854776E18d;
    static final double MIN_INT_D = -2.147483648E9d;
    static final long MIN_INT_L = -2147483648L;
    static final double MIN_LONG_D = -9.223372036854776E18d;
    protected static final int NR_BIGDECIMAL = 16;
    protected static final int NR_BIGINT = 4;
    protected static final int NR_DOUBLE = 8;
    protected static final int NR_INT = 1;
    protected static final int NR_LONG = 2;
    protected static final int NR_UNKNOWN = 0;
    protected byte[] _binaryValue;
    protected ByteArrayBuilder _byteArrayBuilder;
    protected boolean _closed;
    protected long _currInputProcessed;
    protected int _currInputRow;
    protected int _currInputRowStart;
    protected int _expLength;
    protected int _fractLength;
    protected int _inputEnd;
    protected int _inputPtr;
    protected int _intLength;
    protected final IOContext _ioContext;
    protected boolean _nameCopied;
    protected char[] _nameCopyBuffer;
    protected JsonToken _nextToken;
    protected int _numTypesValid;
    protected BigDecimal _numberBigDecimal;
    protected BigInteger _numberBigInt;
    protected double _numberDouble;
    protected int _numberInt;
    protected long _numberLong;
    protected boolean _numberNegative;
    protected JsonReadContext _parsingContext;
    protected final TextBuffer _textBuffer;
    protected int _tokenInputCol;
    protected int _tokenInputRow;
    protected long _tokenInputTotal;

    static {
        BI_MIN_INT = BigInteger.valueOf(MIN_INT_L);
        BI_MAX_INT = BigInteger.valueOf(MAX_INT_L);
        BI_MIN_LONG = BigInteger.valueOf(Long.MIN_VALUE);
        BI_MAX_LONG = BigInteger.valueOf(Long.MAX_VALUE);
        BD_MIN_LONG = new BigDecimal(BI_MIN_LONG);
        BD_MAX_LONG = new BigDecimal(BI_MAX_LONG);
        BD_MIN_INT = new BigDecimal(BI_MIN_INT);
        BD_MAX_INT = new BigDecimal(BI_MAX_INT);
    }

    protected ParserBase(IOContext iOContext, int i) {
        DupDetector dupDetector = null;
        super(i);
        this._inputPtr = 0;
        this._inputEnd = 0;
        this._currInputProcessed = 0;
        this._currInputRow = NR_INT;
        this._currInputRowStart = 0;
        this._tokenInputTotal = 0;
        this._tokenInputRow = NR_INT;
        this._tokenInputCol = 0;
        this._nameCopyBuffer = null;
        this._nameCopied = false;
        this._byteArrayBuilder = null;
        this._numTypesValid = 0;
        this._ioContext = iOContext;
        this._textBuffer = iOContext.constructTextBuffer();
        if (Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i)) {
            dupDetector = DupDetector.rootDetector((JsonParser) this);
        }
        this._parsingContext = JsonReadContext.createRootContext(dupDetector);
    }

    private void _parseSlowFloat(int i) throws IOException {
        if (i == NR_BIGDECIMAL) {
            try {
                this._numberBigDecimal = this._textBuffer.contentsAsDecimal();
                this._numTypesValid = NR_BIGDECIMAL;
                return;
            } catch (Throwable e) {
                _wrapError("Malformed numeric value '" + this._textBuffer.contentsAsString() + "'", e);
                return;
            }
        }
        this._numberDouble = this._textBuffer.contentsAsDouble();
        this._numTypesValid = NR_DOUBLE;
    }

    private void _parseSlowInt(int i, char[] cArr, int i2, int i3) throws IOException {
        String contentsAsString = this._textBuffer.contentsAsString();
        try {
            if (NumberInput.inLongRange(cArr, i2, i3, this._numberNegative)) {
                this._numberLong = Long.parseLong(contentsAsString);
                this._numTypesValid = NR_LONG;
                return;
            }
            this._numberBigInt = new BigInteger(contentsAsString);
            this._numTypesValid = NR_BIGINT;
        } catch (Throwable e) {
            _wrapError("Malformed numeric value '" + contentsAsString + "'", e);
        }
    }

    protected abstract void _closeInput() throws IOException;

    protected final int _decodeBase64Escape(Base64Variant base64Variant, char c, int i) throws IOException {
        if (c != IOUtils.DIR_SEPARATOR_WINDOWS) {
            throw reportInvalidBase64Char(base64Variant, c, i);
        }
        char _decodeEscaped = _decodeEscaped();
        if (_decodeEscaped <= ' ' && i == 0) {
            return -1;
        }
        int decodeBase64Char = base64Variant.decodeBase64Char(_decodeEscaped);
        if (decodeBase64Char >= 0) {
            return decodeBase64Char;
        }
        throw reportInvalidBase64Char(base64Variant, _decodeEscaped, i);
    }

    protected final int _decodeBase64Escape(Base64Variant base64Variant, int i, int i2) throws IOException {
        if (i != 92) {
            throw reportInvalidBase64Char(base64Variant, i, i2);
        }
        int _decodeEscaped = _decodeEscaped();
        if (_decodeEscaped <= ' ' && i2 == 0) {
            return -1;
        }
        int decodeBase64Char = base64Variant.decodeBase64Char(_decodeEscaped);
        if (decodeBase64Char >= 0) {
            return decodeBase64Char;
        }
        throw reportInvalidBase64Char(base64Variant, _decodeEscaped, i2);
    }

    protected char _decodeEscaped() throws IOException {
        throw new UnsupportedOperationException();
    }

    protected final int _eofAsNextChar() throws JsonParseException {
        _handleEOF();
        return -1;
    }

    protected abstract void _finishString() throws IOException;

    public ByteArrayBuilder _getByteArrayBuilder() {
        if (this._byteArrayBuilder == null) {
            this._byteArrayBuilder = new ByteArrayBuilder();
        } else {
            this._byteArrayBuilder.reset();
        }
        return this._byteArrayBuilder;
    }

    protected void _handleEOF() throws JsonParseException {
        if (!this._parsingContext.inRoot()) {
            _reportInvalidEOF(": expected close marker for " + this._parsingContext.getTypeDesc() + " (from " + this._parsingContext.getStartLocation(this._ioContext.getSourceReference()) + ")");
        }
    }

    protected int _parseIntValue() throws IOException {
        if (this._currToken == JsonToken.VALUE_NUMBER_INT) {
            char[] textBuffer = this._textBuffer.getTextBuffer();
            int textOffset = this._textBuffer.getTextOffset();
            int i = this._intLength;
            if (this._numberNegative) {
                textOffset += NR_INT;
            }
            if (i <= 9) {
                textOffset = NumberInput.parseInt(textBuffer, textOffset, i);
                if (this._numberNegative) {
                    textOffset = -textOffset;
                }
                this._numberInt = textOffset;
                this._numTypesValid = NR_INT;
                return textOffset;
            }
        }
        _parseNumericValue(NR_INT);
        if ((this._numTypesValid & NR_INT) == 0) {
            convertNumberToInt();
        }
        return this._numberInt;
    }

    protected void _parseNumericValue(int i) throws IOException {
        if (this._currToken == JsonToken.VALUE_NUMBER_INT) {
            char[] textBuffer = this._textBuffer.getTextBuffer();
            int textOffset = this._textBuffer.getTextOffset();
            int i2 = this._intLength;
            if (this._numberNegative) {
                textOffset += NR_INT;
            }
            if (i2 <= 9) {
                textOffset = NumberInput.parseInt(textBuffer, textOffset, i2);
                if (this._numberNegative) {
                    textOffset = -textOffset;
                }
                this._numberInt = textOffset;
                this._numTypesValid = NR_INT;
            } else if (i2 <= 18) {
                long parseLong = NumberInput.parseLong(textBuffer, textOffset, i2);
                if (this._numberNegative) {
                    parseLong = -parseLong;
                }
                if (i2 == 10) {
                    if (this._numberNegative) {
                        if (parseLong >= MIN_INT_L) {
                            this._numberInt = (int) parseLong;
                            this._numTypesValid = NR_INT;
                            return;
                        }
                    } else if (parseLong <= MAX_INT_L) {
                        this._numberInt = (int) parseLong;
                        this._numTypesValid = NR_INT;
                        return;
                    }
                }
                this._numberLong = parseLong;
                this._numTypesValid = NR_LONG;
            } else {
                _parseSlowInt(i, textBuffer, textOffset, i2);
            }
        } else if (this._currToken == JsonToken.VALUE_NUMBER_FLOAT) {
            _parseSlowFloat(i);
        } else {
            _reportError("Current token (" + this._currToken + ") not numeric, can not use numeric value accessors");
        }
    }

    protected void _releaseBuffers() throws IOException {
        this._textBuffer.releaseBuffers();
        char[] cArr = this._nameCopyBuffer;
        if (cArr != null) {
            this._nameCopyBuffer = null;
            this._ioContext.releaseNameCopyBuffer(cArr);
        }
    }

    protected void _reportMismatchedEndMarker(int i, char c) throws JsonParseException {
        _reportError("Unexpected close marker '" + ((char) i) + "': expected '" + c + "' (for " + this._parsingContext.getTypeDesc() + " starting at " + (BuildConfig.FLAVOR + this._parsingContext.getStartLocation(this._ioContext.getSourceReference())) + ")");
    }

    public void close() throws IOException {
        if (!this._closed) {
            this._closed = true;
            try {
                _closeInput();
            } finally {
                _releaseBuffers();
            }
        }
    }

    protected void convertNumberToBigDecimal() throws IOException {
        if ((this._numTypesValid & NR_DOUBLE) != 0) {
            this._numberBigDecimal = NumberInput.parseBigDecimal(getText());
        } else if ((this._numTypesValid & NR_BIGINT) != 0) {
            this._numberBigDecimal = new BigDecimal(this._numberBigInt);
        } else if ((this._numTypesValid & NR_LONG) != 0) {
            this._numberBigDecimal = BigDecimal.valueOf(this._numberLong);
        } else if ((this._numTypesValid & NR_INT) != 0) {
            this._numberBigDecimal = BigDecimal.valueOf((long) this._numberInt);
        } else {
            _throwInternal();
        }
        this._numTypesValid |= NR_BIGDECIMAL;
    }

    protected void convertNumberToBigInteger() throws IOException {
        if ((this._numTypesValid & NR_BIGDECIMAL) != 0) {
            this._numberBigInt = this._numberBigDecimal.toBigInteger();
        } else if ((this._numTypesValid & NR_LONG) != 0) {
            this._numberBigInt = BigInteger.valueOf(this._numberLong);
        } else if ((this._numTypesValid & NR_INT) != 0) {
            this._numberBigInt = BigInteger.valueOf((long) this._numberInt);
        } else if ((this._numTypesValid & NR_DOUBLE) != 0) {
            this._numberBigInt = BigDecimal.valueOf(this._numberDouble).toBigInteger();
        } else {
            _throwInternal();
        }
        this._numTypesValid |= NR_BIGINT;
    }

    protected void convertNumberToDouble() throws IOException {
        if ((this._numTypesValid & NR_BIGDECIMAL) != 0) {
            this._numberDouble = this._numberBigDecimal.doubleValue();
        } else if ((this._numTypesValid & NR_BIGINT) != 0) {
            this._numberDouble = this._numberBigInt.doubleValue();
        } else if ((this._numTypesValid & NR_LONG) != 0) {
            this._numberDouble = (double) this._numberLong;
        } else if ((this._numTypesValid & NR_INT) != 0) {
            this._numberDouble = (double) this._numberInt;
        } else {
            _throwInternal();
        }
        this._numTypesValid |= NR_DOUBLE;
    }

    protected void convertNumberToInt() throws IOException {
        if ((this._numTypesValid & NR_LONG) != 0) {
            int i = (int) this._numberLong;
            if (((long) i) != this._numberLong) {
                _reportError("Numeric value (" + getText() + ") out of range of int");
            }
            this._numberInt = i;
        } else if ((this._numTypesValid & NR_BIGINT) != 0) {
            if (BI_MIN_INT.compareTo(this._numberBigInt) > 0 || BI_MAX_INT.compareTo(this._numberBigInt) < 0) {
                reportOverflowInt();
            }
            this._numberInt = this._numberBigInt.intValue();
        } else if ((this._numTypesValid & NR_DOUBLE) != 0) {
            if (this._numberDouble < MIN_INT_D || this._numberDouble > MAX_INT_D) {
                reportOverflowInt();
            }
            this._numberInt = (int) this._numberDouble;
        } else if ((this._numTypesValid & NR_BIGDECIMAL) != 0) {
            if (BD_MIN_INT.compareTo(this._numberBigDecimal) > 0 || BD_MAX_INT.compareTo(this._numberBigDecimal) < 0) {
                reportOverflowInt();
            }
            this._numberInt = this._numberBigDecimal.intValue();
        } else {
            _throwInternal();
        }
        this._numTypesValid |= NR_INT;
    }

    protected void convertNumberToLong() throws IOException {
        if ((this._numTypesValid & NR_INT) != 0) {
            this._numberLong = (long) this._numberInt;
        } else if ((this._numTypesValid & NR_BIGINT) != 0) {
            if (BI_MIN_LONG.compareTo(this._numberBigInt) > 0 || BI_MAX_LONG.compareTo(this._numberBigInt) < 0) {
                reportOverflowLong();
            }
            this._numberLong = this._numberBigInt.longValue();
        } else if ((this._numTypesValid & NR_DOUBLE) != 0) {
            if (this._numberDouble < MIN_LONG_D || this._numberDouble > MAX_LONG_D) {
                reportOverflowLong();
            }
            this._numberLong = (long) this._numberDouble;
        } else if ((this._numTypesValid & NR_BIGDECIMAL) != 0) {
            if (BD_MIN_LONG.compareTo(this._numberBigDecimal) > 0 || BD_MAX_LONG.compareTo(this._numberBigDecimal) < 0) {
                reportOverflowLong();
            }
            this._numberLong = this._numberBigDecimal.longValue();
        } else {
            _throwInternal();
        }
        this._numTypesValid |= NR_LONG;
    }

    public JsonParser disable(Feature feature) {
        this._features &= feature.getMask() ^ -1;
        if (feature == Feature.STRICT_DUPLICATE_DETECTION) {
            this._parsingContext = this._parsingContext.withDupDetector(null);
        }
        return this;
    }

    public JsonParser enable(Feature feature) {
        this._features |= feature.getMask();
        if (feature == Feature.STRICT_DUPLICATE_DETECTION && this._parsingContext.getDupDetector() == null) {
            this._parsingContext = this._parsingContext.withDupDetector(DupDetector.rootDetector((JsonParser) this));
        }
        return this;
    }

    public BigInteger getBigIntegerValue() throws IOException {
        if ((this._numTypesValid & NR_BIGINT) == 0) {
            if (this._numTypesValid == 0) {
                _parseNumericValue(NR_BIGINT);
            }
            if ((this._numTypesValid & NR_BIGINT) == 0) {
                convertNumberToBigInteger();
            }
        }
        return this._numberBigInt;
    }

    public JsonLocation getCurrentLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), -1, this._currInputProcessed + ((long) this._inputPtr), this._currInputRow, (this._inputPtr - this._currInputRowStart) + NR_INT);
    }

    public String getCurrentName() throws IOException {
        return (this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) ? this._parsingContext.getParent().getCurrentName() : this._parsingContext.getCurrentName();
    }

    public Object getCurrentValue() {
        return this._parsingContext.getCurrentValue();
    }

    public BigDecimal getDecimalValue() throws IOException {
        if ((this._numTypesValid & NR_BIGDECIMAL) == 0) {
            if (this._numTypesValid == 0) {
                _parseNumericValue(NR_BIGDECIMAL);
            }
            if ((this._numTypesValid & NR_BIGDECIMAL) == 0) {
                convertNumberToBigDecimal();
            }
        }
        return this._numberBigDecimal;
    }

    public double getDoubleValue() throws IOException {
        if ((this._numTypesValid & NR_DOUBLE) == 0) {
            if (this._numTypesValid == 0) {
                _parseNumericValue(NR_DOUBLE);
            }
            if ((this._numTypesValid & NR_DOUBLE) == 0) {
                convertNumberToDouble();
            }
        }
        return this._numberDouble;
    }

    public Object getEmbeddedObject() throws IOException {
        return null;
    }

    public float getFloatValue() throws IOException {
        return (float) getDoubleValue();
    }

    public int getIntValue() throws IOException {
        if ((this._numTypesValid & NR_INT) == 0) {
            if (this._numTypesValid == 0) {
                return _parseIntValue();
            }
            if ((this._numTypesValid & NR_INT) == 0) {
                convertNumberToInt();
            }
        }
        return this._numberInt;
    }

    public long getLongValue() throws IOException {
        if ((this._numTypesValid & NR_LONG) == 0) {
            if (this._numTypesValid == 0) {
                _parseNumericValue(NR_LONG);
            }
            if ((this._numTypesValid & NR_LONG) == 0) {
                convertNumberToLong();
            }
        }
        return this._numberLong;
    }

    public NumberType getNumberType() throws IOException {
        if (this._numTypesValid == 0) {
            _parseNumericValue(0);
        }
        return this._currToken == JsonToken.VALUE_NUMBER_INT ? (this._numTypesValid & NR_INT) != 0 ? NumberType.INT : (this._numTypesValid & NR_LONG) != 0 ? NumberType.LONG : NumberType.BIG_INTEGER : (this._numTypesValid & NR_BIGDECIMAL) != 0 ? NumberType.BIG_DECIMAL : NumberType.DOUBLE;
    }

    public Number getNumberValue() throws IOException {
        if (this._numTypesValid == 0) {
            _parseNumericValue(0);
        }
        if (this._currToken == JsonToken.VALUE_NUMBER_INT) {
            return (this._numTypesValid & NR_INT) != 0 ? Integer.valueOf(this._numberInt) : (this._numTypesValid & NR_LONG) != 0 ? Long.valueOf(this._numberLong) : (this._numTypesValid & NR_BIGINT) != 0 ? this._numberBigInt : this._numberBigDecimal;
        } else {
            if ((this._numTypesValid & NR_BIGDECIMAL) != 0) {
                return this._numberBigDecimal;
            }
            if ((this._numTypesValid & NR_DOUBLE) == 0) {
                _throwInternal();
            }
            return Double.valueOf(this._numberDouble);
        }
    }

    public JsonReadContext getParsingContext() {
        return this._parsingContext;
    }

    public long getTokenCharacterOffset() {
        return this._tokenInputTotal;
    }

    public int getTokenColumnNr() {
        int i = this._tokenInputCol;
        return i < 0 ? i : i + NR_INT;
    }

    public int getTokenLineNr() {
        return this._tokenInputRow;
    }

    public JsonLocation getTokenLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), -1, getTokenCharacterOffset(), getTokenLineNr(), getTokenColumnNr());
    }

    public boolean hasTextCharacters() {
        return this._currToken == JsonToken.VALUE_STRING ? true : this._currToken == JsonToken.FIELD_NAME ? this._nameCopied : false;
    }

    public boolean isClosed() {
        return this._closed;
    }

    protected abstract boolean loadMore() throws IOException;

    protected final void loadMoreGuaranteed() throws IOException {
        if (!loadMore()) {
            _reportInvalidEOF();
        }
    }

    public void overrideCurrentName(String str) {
        JsonReadContext jsonReadContext = this._parsingContext;
        if (this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) {
            jsonReadContext = jsonReadContext.getParent();
        }
        try {
            jsonReadContext.setCurrentName(str);
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    protected IllegalArgumentException reportInvalidBase64Char(Base64Variant base64Variant, int i, int i2) throws IllegalArgumentException {
        return reportInvalidBase64Char(base64Variant, i, i2, null);
    }

    protected IllegalArgumentException reportInvalidBase64Char(Base64Variant base64Variant, int i, int i2, String str) throws IllegalArgumentException {
        r0 = i <= 32 ? "Illegal white space character (code 0x" + Integer.toHexString(i) + ") as character #" + (i2 + NR_INT) + " of 4-char base64 unit: can only used between units" : base64Variant.usesPaddingChar(i) ? "Unexpected padding character ('" + base64Variant.getPaddingChar() + "') as character #" + (i2 + NR_INT) + " of 4-char base64 unit: padding only legal as 3rd or 4th character" : (!Character.isDefined(i) || Character.isISOControl(i)) ? "Illegal character (code 0x" + Integer.toHexString(i) + ") in base64 content" : "Illegal character '" + ((char) i) + "' (code 0x" + Integer.toHexString(i) + ") in base64 content";
        if (str != null) {
            r0 = r0 + ": " + str;
        }
        return new IllegalArgumentException(r0);
    }

    protected void reportInvalidNumber(String str) throws JsonParseException {
        _reportError("Invalid numeric value: " + str);
    }

    protected void reportOverflowInt() throws IOException {
        _reportError("Numeric value (" + getText() + ") out of range of int (" + ExploreByTouchHelper.INVALID_ID + " - " + Integer.MAX_VALUE + ")");
    }

    protected void reportOverflowLong() throws IOException {
        _reportError("Numeric value (" + getText() + ") out of range of long (" + Long.MIN_VALUE + " - " + Long.MAX_VALUE + ")");
    }

    protected void reportUnexpectedNumberChar(int i, String str) throws JsonParseException {
        String str2 = "Unexpected character (" + ParserMinimalBase._getCharDesc(i) + ") in numeric value";
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        _reportError(str2);
    }

    protected final JsonToken reset(boolean z, int i, int i2, int i3) {
        return (i2 >= NR_INT || i3 >= NR_INT) ? resetFloat(z, i, i2, i3) : resetInt(z, i);
    }

    protected final JsonToken resetAsNaN(String str, double d) {
        this._textBuffer.resetWithString(str);
        this._numberDouble = d;
        this._numTypesValid = NR_DOUBLE;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    protected final JsonToken resetFloat(boolean z, int i, int i2, int i3) {
        this._numberNegative = z;
        this._intLength = i;
        this._fractLength = i2;
        this._expLength = i3;
        this._numTypesValid = 0;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    protected final JsonToken resetInt(boolean z, int i) {
        this._numberNegative = z;
        this._intLength = i;
        this._fractLength = 0;
        this._expLength = 0;
        this._numTypesValid = 0;
        return JsonToken.VALUE_NUMBER_INT;
    }

    public void setCurrentValue(Object obj) {
        this._parsingContext.setCurrentValue(obj);
    }

    public JsonParser setFeatureMask(int i) {
        if ((this._features ^ i) != 0) {
            this._features = i;
            if (!Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i)) {
                this._parsingContext = this._parsingContext.withDupDetector(null);
            } else if (this._parsingContext.getDupDetector() == null) {
                this._parsingContext = this._parsingContext.withDupDetector(DupDetector.rootDetector((JsonParser) this));
            }
        }
        return this;
    }

    public Version version() {
        return PackageVersion.VERSION;
    }
}
