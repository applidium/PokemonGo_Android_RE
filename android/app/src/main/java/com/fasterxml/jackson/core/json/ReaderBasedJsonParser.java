package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.TextBuffer;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import spacemadness.com.lunarconsole.BuildConfig;

public class ReaderBasedJsonParser extends ParserBase {
    protected static final int[] _icLatin1;
    protected boolean _bufferRecyclable;
    protected final int _hashSeed;
    protected char[] _inputBuffer;
    protected ObjectCodec _objectCodec;
    protected Reader _reader;
    protected final CharsToNameCanonicalizer _symbols;
    protected boolean _tokenIncomplete;

    static {
        _icLatin1 = CharTypes.getInputCodeLatin1();
    }

    public ReaderBasedJsonParser(IOContext iOContext, int i, Reader reader, ObjectCodec objectCodec, CharsToNameCanonicalizer charsToNameCanonicalizer) {
        super(iOContext, i);
        this._tokenIncomplete = false;
        this._reader = reader;
        this._inputBuffer = iOContext.allocTokenBuffer();
        this._inputPtr = 0;
        this._inputEnd = 0;
        this._objectCodec = objectCodec;
        this._symbols = charsToNameCanonicalizer;
        this._hashSeed = charsToNameCanonicalizer.hashSeed();
        this._bufferRecyclable = true;
    }

    public ReaderBasedJsonParser(IOContext iOContext, int i, Reader reader, ObjectCodec objectCodec, CharsToNameCanonicalizer charsToNameCanonicalizer, char[] cArr, int i2, int i3, boolean z) {
        super(iOContext, i);
        this._tokenIncomplete = false;
        this._reader = reader;
        this._inputBuffer = cArr;
        this._inputPtr = i2;
        this._inputEnd = i3;
        this._objectCodec = objectCodec;
        this._symbols = charsToNameCanonicalizer;
        this._hashSeed = charsToNameCanonicalizer.hashSeed();
        this._bufferRecyclable = z;
    }

    private String _handleOddName2(int i, int i2, int[] iArr) throws IOException {
        this._textBuffer.resetWithShared(this._inputBuffer, i, this._inputPtr - i);
        char[] currentSegment = this._textBuffer.getCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        char length = iArr.length;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                break;
            }
            char c = this._inputBuffer[this._inputPtr];
            if (c > length) {
                if (!Character.isJavaIdentifierPart(c)) {
                    break;
                }
            } else if (iArr[c] != 0) {
                break;
            }
            this._inputPtr++;
            i2 = (i2 * 33) + c;
            int i3 = currentSegmentSize + 1;
            currentSegment[currentSegmentSize] = c;
            if (i3 >= currentSegment.length) {
                currentSegment = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            } else {
                currentSegmentSize = i3;
            }
        }
        this._textBuffer.setCurrentLength(currentSegmentSize);
        TextBuffer textBuffer = this._textBuffer;
        return this._symbols.findSymbol(textBuffer.getTextBuffer(), textBuffer.getTextOffset(), textBuffer.size(), i2);
    }

    private final void _matchFalse() throws IOException {
        int i = this._inputPtr;
        if (i + 4 < this._inputEnd) {
            char[] cArr = this._inputBuffer;
            if (cArr[i] == 'a') {
                i++;
                if (cArr[i] == 'l') {
                    i++;
                    if (cArr[i] == 's') {
                        i++;
                        if (cArr[i] == 'e') {
                            i++;
                            char c = cArr[i];
                            if (c < '0' || c == ']' || c == '}') {
                                this._inputPtr = i;
                                return;
                            }
                        }
                    }
                }
            }
        }
        _matchToken("false", 1);
    }

    private final void _matchNull() throws IOException {
        int i = this._inputPtr;
        if (i + 3 < this._inputEnd) {
            char[] cArr = this._inputBuffer;
            if (cArr[i] == 'u') {
                i++;
                if (cArr[i] == 'l') {
                    i++;
                    if (cArr[i] == 'l') {
                        i++;
                        char c = cArr[i];
                        if (c < '0' || c == ']' || c == '}') {
                            this._inputPtr = i;
                            return;
                        }
                    }
                }
            }
        }
        _matchToken("null", 1);
    }

    private final void _matchTrue() throws IOException {
        int i = this._inputPtr;
        if (i + 3 < this._inputEnd) {
            char[] cArr = this._inputBuffer;
            if (cArr[i] == 'r') {
                i++;
                if (cArr[i] == 'u') {
                    i++;
                    if (cArr[i] == 'e') {
                        i++;
                        char c = cArr[i];
                        if (c < '0' || c == ']' || c == '}') {
                            this._inputPtr = i;
                            return;
                        }
                    }
                }
            }
        }
        _matchToken("true", 1);
    }

    private final JsonToken _nextAfterName() {
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        this._currToken = jsonToken;
        return jsonToken;
    }

    private final JsonToken _nextTokenNotInObject(int i) throws IOException {
        if (i == 34) {
            this._tokenIncomplete = true;
            JsonToken jsonToken = JsonToken.VALUE_STRING;
            this._currToken = jsonToken;
            return jsonToken;
        }
        switch (i) {
            case Place.TYPE_HAIR_CARE /*45*/:
                jsonToken = _parseNegNumber();
                this._currToken = jsonToken;
                return jsonToken;
            case Place.TYPE_HINDU_TEMPLE /*48*/:
            case Place.TYPE_HOME_GOODS_STORE /*49*/:
            case Place.TYPE_HOSPITAL /*50*/:
            case Place.TYPE_INSURANCE_AGENCY /*51*/:
            case Place.TYPE_JEWELRY_STORE /*52*/:
            case Place.TYPE_LAUNDRY /*53*/:
            case Place.TYPE_LAWYER /*54*/:
            case Place.TYPE_LIBRARY /*55*/:
            case Place.TYPE_LIQUOR_STORE /*56*/:
            case Place.TYPE_LOCAL_GOVERNMENT_OFFICE /*57*/:
                jsonToken = _parsePosNumber(i);
                this._currToken = jsonToken;
                return jsonToken;
            case Place.TYPE_TAXI_STAND /*91*/:
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
                jsonToken = JsonToken.START_ARRAY;
                this._currToken = jsonToken;
                return jsonToken;
            case LocationRequest.PRIORITY_BALANCED_POWER_ACCURACY /*102*/:
                _matchToken("false", 1);
                jsonToken = JsonToken.VALUE_FALSE;
                this._currToken = jsonToken;
                return jsonToken;
            case 110:
                _matchToken("null", 1);
                jsonToken = JsonToken.VALUE_NULL;
                this._currToken = jsonToken;
                return jsonToken;
            case 116:
                _matchToken("true", 1);
                jsonToken = JsonToken.VALUE_TRUE;
                this._currToken = jsonToken;
                return jsonToken;
            case 123:
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
                jsonToken = JsonToken.START_OBJECT;
                this._currToken = jsonToken;
                return jsonToken;
            default:
                jsonToken = _handleOddValue(i);
                this._currToken = jsonToken;
                return jsonToken;
        }
    }

    private final JsonToken _parseFloat(int i, int i2, int i3, boolean z, int i4) throws IOException {
        int i5;
        int i6;
        int i7 = 0;
        int i8 = this._inputEnd;
        int i9;
        if (i == 46) {
            i9 = i3;
            i5 = 0;
            while (i9 < i8) {
                i3 = i9 + 1;
                i9 = this._inputBuffer[i9];
                if (i9 >= 48 && i9 <= 57) {
                    i5++;
                    i9 = i3;
                } else if (i5 == 0) {
                    reportUnexpectedNumberChar(i9, "Decimal point not followed by a digit");
                    i6 = i5;
                    i5 = i3;
                } else {
                    i6 = i5;
                    i5 = i3;
                }
            }
            return _parseNumber2(z, i2);
        }
        i6 = 0;
        i5 = i3;
        i9 = i;
        if (i9 == 101 || i9 == 69) {
            if (i5 >= i8) {
                this._inputPtr = i2;
                return _parseNumber2(z, i2);
            }
            int i10 = i5 + 1;
            i9 = this._inputBuffer[i5];
            if (i9 != 45 && i9 != 43) {
                i5 = i10;
            } else if (i10 >= i8) {
                this._inputPtr = i2;
                return _parseNumber2(z, i2);
            } else {
                i5 = i10 + 1;
                i9 = this._inputBuffer[i10];
            }
            while (i9 <= 57 && i9 >= 48) {
                i7++;
                if (i5 >= i8) {
                    this._inputPtr = i2;
                    return _parseNumber2(z, i2);
                }
                i9 = this._inputBuffer[i5];
                i5++;
            }
            if (i7 == 0) {
                reportUnexpectedNumberChar(i9, "Exponent indicator not followed by a digit");
            }
        }
        i5--;
        this._inputPtr = i5;
        if (this._parsingContext.inRoot()) {
            _verifyRootSpace(i9);
        }
        this._textBuffer.resetWithShared(this._inputBuffer, i2, i5 - i2);
        return resetFloat(z, i4, i6, i7);
    }

    private String _parseName2(int i, int i2, int i3) throws IOException {
        this._textBuffer.resetWithShared(this._inputBuffer, i, this._inputPtr - i);
        char[] currentSegment = this._textBuffer.getCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        while (true) {
            char _decodeEscaped;
            int i4;
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(": was expecting closing '" + ((char) i3) + "' for name");
            }
            char[] cArr = this._inputBuffer;
            int i5 = this._inputPtr;
            this._inputPtr = i5 + 1;
            char c = cArr[i5];
            if (c <= IOUtils.DIR_SEPARATOR_WINDOWS) {
                if (c == IOUtils.DIR_SEPARATOR_WINDOWS) {
                    _decodeEscaped = _decodeEscaped();
                } else if (c <= i3) {
                    if (c == i3) {
                        this._textBuffer.setCurrentLength(currentSegmentSize);
                        TextBuffer textBuffer = this._textBuffer;
                        return this._symbols.findSymbol(textBuffer.getTextBuffer(), textBuffer.getTextOffset(), textBuffer.size(), i2);
                    } else if (c < ' ') {
                        _throwUnquotedSpace(c, Twitter.NAME);
                        _decodeEscaped = c;
                    }
                }
                i2 = (i2 * 33) + _decodeEscaped;
                i4 = currentSegmentSize + 1;
                currentSegment[currentSegmentSize] = _decodeEscaped;
                if (i4 < currentSegment.length) {
                    currentSegment = this._textBuffer.finishCurrentSegment();
                    currentSegmentSize = 0;
                } else {
                    currentSegmentSize = i4;
                }
            }
            _decodeEscaped = c;
            i2 = (i2 * 33) + _decodeEscaped;
            i4 = currentSegmentSize + 1;
            currentSegment[currentSegmentSize] = _decodeEscaped;
            if (i4 < currentSegment.length) {
                currentSegmentSize = i4;
            } else {
                currentSegment = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final com.fasterxml.jackson.core.JsonToken _parseNumber2(boolean r14, int r15) throws java.io.IOException {
        /*
        r13 = this;
        r10 = 45;
        r12 = 57;
        r11 = 48;
        r1 = 1;
        r2 = 0;
        if (r14 == 0) goto L_0x000c;
    L_0x000a:
        r15 = r15 + 1;
    L_0x000c:
        r13._inputPtr = r15;
        r0 = r13._textBuffer;
        r4 = r0.emptyAndGetCurrentSegment();
        if (r14 == 0) goto L_0x0184;
    L_0x0016:
        r4[r2] = r10;
        r0 = r1;
    L_0x0019:
        r3 = r13._inputPtr;
        r5 = r13._inputEnd;
        if (r3 >= r5) goto L_0x005e;
    L_0x001f:
        r3 = r13._inputBuffer;
        r5 = r13._inputPtr;
        r6 = r5 + 1;
        r13._inputPtr = r6;
        r3 = r3[r5];
    L_0x0029:
        if (r3 != r11) goto L_0x002f;
    L_0x002b:
        r3 = r13._verifyNoLeadingZeroes();
    L_0x002f:
        r5 = r3;
        r3 = r0;
        r0 = r4;
        r4 = r2;
    L_0x0033:
        if (r5 < r11) goto L_0x0171;
    L_0x0035:
        if (r5 > r12) goto L_0x0171;
    L_0x0037:
        r4 = r4 + 1;
        r6 = r0.length;
        if (r3 < r6) goto L_0x0043;
    L_0x003c:
        r0 = r13._textBuffer;
        r0 = r0.finishCurrentSegment();
        r3 = r2;
    L_0x0043:
        r6 = r3 + 1;
        r0[r3] = r5;
        r3 = r13._inputPtr;
        r5 = r13._inputEnd;
        if (r3 < r5) goto L_0x0065;
    L_0x004d:
        r3 = r13.loadMore();
        if (r3 != 0) goto L_0x0065;
    L_0x0053:
        r9 = r4;
        r5 = r6;
        r4 = r2;
        r6 = r1;
    L_0x0057:
        if (r9 != 0) goto L_0x0072;
    L_0x0059:
        r0 = r13._handleInvalidNumberStart(r4, r14);
    L_0x005d:
        return r0;
    L_0x005e:
        r3 = "No digit following minus sign";
        r3 = r13.getNextChar(r3);
        goto L_0x0029;
    L_0x0065:
        r3 = r13._inputBuffer;
        r5 = r13._inputPtr;
        r7 = r5 + 1;
        r13._inputPtr = r7;
        r3 = r3[r5];
        r5 = r3;
        r3 = r6;
        goto L_0x0033;
    L_0x0072:
        r3 = 46;
        if (r4 != r3) goto L_0x016c;
    L_0x0076:
        r3 = r5 + 1;
        r0[r5] = r4;
        r5 = r4;
        r4 = r3;
        r3 = r2;
    L_0x007d:
        r7 = r13._inputPtr;
        r8 = r13._inputEnd;
        if (r7 < r8) goto L_0x0128;
    L_0x0083:
        r7 = r13.loadMore();
        if (r7 != 0) goto L_0x0128;
    L_0x0089:
        r6 = r1;
    L_0x008a:
        if (r3 != 0) goto L_0x0180;
    L_0x008c:
        r7 = "Decimal point not followed by a digit";
        r13.reportUnexpectedNumberChar(r5, r7);
        r8 = r3;
        r3 = r4;
    L_0x0093:
        r4 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
        if (r5 == r4) goto L_0x009b;
    L_0x0097:
        r4 = 69;
        if (r5 != r4) goto L_0x017a;
    L_0x009b:
        r4 = r0.length;
        if (r3 < r4) goto L_0x00a5;
    L_0x009e:
        r0 = r13._textBuffer;
        r0 = r0.finishCurrentSegment();
        r3 = r2;
    L_0x00a5:
        r4 = r3 + 1;
        r0[r3] = r5;
        r3 = r13._inputPtr;
        r5 = r13._inputEnd;
        if (r3 >= r5) goto L_0x0148;
    L_0x00af:
        r3 = r13._inputBuffer;
        r5 = r13._inputPtr;
        r7 = r5 + 1;
        r13._inputPtr = r7;
        r5 = r3[r5];
    L_0x00b9:
        if (r5 == r10) goto L_0x00bf;
    L_0x00bb:
        r3 = 43;
        if (r5 != r3) goto L_0x0167;
    L_0x00bf:
        r3 = r0.length;
        if (r4 < r3) goto L_0x0164;
    L_0x00c2:
        r0 = r13._textBuffer;
        r0 = r0.finishCurrentSegment();
        r3 = r2;
    L_0x00c9:
        r0[r3] = r5;
        r4 = r13._inputPtr;
        r5 = r13._inputEnd;
        if (r4 >= r5) goto L_0x0150;
    L_0x00d1:
        r4 = r13._inputBuffer;
        r5 = r13._inputPtr;
        r7 = r5 + 1;
        r13._inputPtr = r7;
        r4 = r4[r5];
    L_0x00db:
        r3 = r3 + 1;
        r5 = r2;
    L_0x00de:
        if (r4 > r12) goto L_0x0177;
    L_0x00e0:
        if (r4 < r11) goto L_0x0177;
    L_0x00e2:
        r5 = r5 + 1;
        r7 = r0.length;
        if (r3 < r7) goto L_0x00ee;
    L_0x00e7:
        r0 = r13._textBuffer;
        r0 = r0.finishCurrentSegment();
        r3 = r2;
    L_0x00ee:
        r7 = r3 + 1;
        r0[r3] = r4;
        r3 = r13._inputPtr;
        r10 = r13._inputEnd;
        if (r3 < r10) goto L_0x0157;
    L_0x00f8:
        r3 = r13.loadMore();
        if (r3 != 0) goto L_0x0157;
    L_0x00fe:
        r0 = r1;
        r2 = r5;
        r3 = r7;
    L_0x0101:
        if (r2 != 0) goto L_0x017d;
    L_0x0103:
        r1 = "Exponent indicator not followed by a digit";
        r13.reportUnexpectedNumberChar(r4, r1);
        r1 = r0;
        r0 = r4;
    L_0x010a:
        if (r1 != 0) goto L_0x011d;
    L_0x010c:
        r1 = r13._inputPtr;
        r1 = r1 + -1;
        r13._inputPtr = r1;
        r1 = r13._parsingContext;
        r1 = r1.inRoot();
        if (r1 == 0) goto L_0x011d;
    L_0x011a:
        r13._verifyRootSpace(r0);
    L_0x011d:
        r0 = r13._textBuffer;
        r0.setCurrentLength(r3);
        r0 = r13.reset(r14, r9, r8, r2);
        goto L_0x005d;
    L_0x0128:
        r5 = r13._inputBuffer;
        r7 = r13._inputPtr;
        r8 = r7 + 1;
        r13._inputPtr = r8;
        r5 = r5[r7];
        if (r5 < r11) goto L_0x008a;
    L_0x0134:
        if (r5 > r12) goto L_0x008a;
    L_0x0136:
        r3 = r3 + 1;
        r7 = r0.length;
        if (r4 < r7) goto L_0x0142;
    L_0x013b:
        r0 = r13._textBuffer;
        r0 = r0.finishCurrentSegment();
        r4 = r2;
    L_0x0142:
        r0[r4] = r5;
        r4 = r4 + 1;
        goto L_0x007d;
    L_0x0148:
        r3 = "expected a digit for number exponent";
        r5 = r13.getNextChar(r3);
        goto L_0x00b9;
    L_0x0150:
        r4 = "expected a digit for number exponent";
        r4 = r13.getNextChar(r4);
        goto L_0x00db;
    L_0x0157:
        r3 = r13._inputBuffer;
        r4 = r13._inputPtr;
        r10 = r4 + 1;
        r13._inputPtr = r10;
        r4 = r3[r4];
        r3 = r7;
        goto L_0x00de;
    L_0x0164:
        r3 = r4;
        goto L_0x00c9;
    L_0x0167:
        r3 = r4;
        r4 = r5;
        r5 = r2;
        goto L_0x00de;
    L_0x016c:
        r8 = r2;
        r3 = r5;
        r5 = r4;
        goto L_0x0093;
    L_0x0171:
        r9 = r4;
        r6 = r2;
        r4 = r5;
        r5 = r3;
        goto L_0x0057;
    L_0x0177:
        r0 = r6;
        r2 = r5;
        goto L_0x0101;
    L_0x017a:
        r0 = r5;
        r1 = r6;
        goto L_0x010a;
    L_0x017d:
        r1 = r0;
        r0 = r4;
        goto L_0x010a;
    L_0x0180:
        r8 = r3;
        r3 = r4;
        goto L_0x0093;
    L_0x0184:
        r0 = r2;
        goto L_0x0019;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._parseNumber2(boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int _skipAfterComma2() throws java.io.IOException {
        /*
        r4 = this;
        r3 = 32;
    L_0x0002:
        r0 = r4._inputPtr;
        r1 = r4._inputEnd;
        if (r0 < r1) goto L_0x000e;
    L_0x0008:
        r0 = r4.loadMore();
        if (r0 == 0) goto L_0x004e;
    L_0x000e:
        r0 = r4._inputBuffer;
        r1 = r4._inputPtr;
        r2 = r1 + 1;
        r4._inputPtr = r2;
        r0 = r0[r1];
        if (r0 <= r3) goto L_0x002d;
    L_0x001a:
        r1 = 47;
        if (r0 != r1) goto L_0x0022;
    L_0x001e:
        r4._skipComment();
        goto L_0x0002;
    L_0x0022:
        r1 = 35;
        if (r0 != r1) goto L_0x002c;
    L_0x0026:
        r1 = r4._skipYAMLComment();
        if (r1 != 0) goto L_0x0002;
    L_0x002c:
        return r0;
    L_0x002d:
        if (r0 >= r3) goto L_0x0002;
    L_0x002f:
        r1 = 10;
        if (r0 != r1) goto L_0x003e;
    L_0x0033:
        r0 = r4._currInputRow;
        r0 = r0 + 1;
        r4._currInputRow = r0;
        r0 = r4._inputPtr;
        r4._currInputRowStart = r0;
        goto L_0x0002;
    L_0x003e:
        r1 = 13;
        if (r0 != r1) goto L_0x0046;
    L_0x0042:
        r4._skipCR();
        goto L_0x0002;
    L_0x0046:
        r1 = 9;
        if (r0 == r1) goto L_0x0002;
    L_0x004a:
        r4._throwInvalidSpace(r0);
        goto L_0x0002;
    L_0x004e:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = "Unexpected end-of-input within/between ";
        r0 = r0.append(r1);
        r1 = r4._parsingContext;
        r1 = r1.getTypeDesc();
        r0 = r0.append(r1);
        r1 = " entries";
        r0 = r0.append(r1);
        r0 = r0.toString();
        r0 = r4._constructError(r0);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._skipAfterComma2():int");
    }

    private void _skipCComment() throws IOException {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                break;
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            if (c <= '*') {
                if (c == '*') {
                    if (this._inputPtr >= this._inputEnd && !loadMore()) {
                        break;
                    } else if (this._inputBuffer[this._inputPtr] == IOUtils.DIR_SEPARATOR_UNIX) {
                        this._inputPtr++;
                        return;
                    }
                } else if (c < ' ') {
                    if (c == '\n') {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (c == '\r') {
                        _skipCR();
                    } else if (c != '\t') {
                        _throwInvalidSpace(c);
                    }
                }
            }
        }
        _reportInvalidEOF(" in a comment");
    }

    private final int _skipColon() throws IOException {
        if (this._inputPtr + 4 >= this._inputEnd) {
            return _skipColon2(false);
        }
        char c = this._inputBuffer[this._inputPtr];
        char[] cArr;
        int i;
        if (c == ':') {
            cArr = this._inputBuffer;
            i = this._inputPtr + 1;
            this._inputPtr = i;
            c = cArr[i];
            if (c <= ' ') {
                if (c == ' ' || c == '\t') {
                    cArr = this._inputBuffer;
                    i = this._inputPtr + 1;
                    this._inputPtr = i;
                    c = cArr[i];
                    if (c > ' ') {
                        if (c == IOUtils.DIR_SEPARATOR_UNIX || c == '#') {
                            return _skipColon2(true);
                        }
                        this._inputPtr++;
                        return c;
                    }
                }
                return _skipColon2(true);
            } else if (c == IOUtils.DIR_SEPARATOR_UNIX || c == '#') {
                return _skipColon2(true);
            } else {
                this._inputPtr++;
                return c;
            }
        }
        if (c == ' ' || c == '\t') {
            cArr = this._inputBuffer;
            i = this._inputPtr + 1;
            this._inputPtr = i;
            c = cArr[i];
        }
        if (c != ':') {
            return _skipColon2(false);
        }
        cArr = this._inputBuffer;
        i = this._inputPtr + 1;
        this._inputPtr = i;
        c = cArr[i];
        if (c <= ' ') {
            if (c == ' ' || c == '\t') {
                cArr = this._inputBuffer;
                i = this._inputPtr + 1;
                this._inputPtr = i;
                c = cArr[i];
                if (c > ' ') {
                    if (c == IOUtils.DIR_SEPARATOR_UNIX || c == '#') {
                        return _skipColon2(true);
                    }
                    this._inputPtr++;
                    return c;
                }
            }
            return _skipColon2(true);
        } else if (c == IOUtils.DIR_SEPARATOR_UNIX || c == '#') {
            return _skipColon2(true);
        } else {
            this._inputPtr++;
            return c;
        }
    }

    private final int _skipColon2(boolean z) throws IOException {
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            if (c > ' ') {
                if (c == IOUtils.DIR_SEPARATOR_UNIX) {
                    _skipComment();
                } else if (c != '#' || !_skipYAMLComment()) {
                    if (z) {
                        return c;
                    }
                    if (c != ':') {
                        if (c < ' ') {
                            _throwInvalidSpace(c);
                        }
                        _reportUnexpectedChar(c, "was expecting a colon to separate field name and value");
                    }
                    z = true;
                }
            } else if (c < ' ') {
                if (c == '\n') {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (c == '\r') {
                    _skipCR();
                } else if (c != '\t') {
                    _throwInvalidSpace(c);
                }
            }
        }
    }

    private final int _skipComma(int i) throws IOException {
        if (i != 44) {
            _reportUnexpectedChar(i, "was expecting comma to separate " + this._parsingContext.getTypeDesc() + " entries");
        }
        while (this._inputPtr < this._inputEnd) {
            char[] cArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            char c = cArr[i2];
            if (c > ' ') {
                if (c != IOUtils.DIR_SEPARATOR_UNIX && c != '#') {
                    return c;
                }
                this._inputPtr--;
                return _skipAfterComma2();
            } else if (c < ' ') {
                if (c == '\n') {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (c == '\r') {
                    _skipCR();
                } else if (c != '\t') {
                    _throwInvalidSpace(c);
                }
            }
        }
        return _skipAfterComma2();
    }

    private void _skipComment() throws IOException {
        if (!isEnabled(Feature.ALLOW_COMMENTS)) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(" in a comment");
        }
        char[] cArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        char c = cArr[i];
        if (c == IOUtils.DIR_SEPARATOR_UNIX) {
            _skipLine();
        } else if (c == '*') {
            _skipCComment();
        } else {
            _reportUnexpectedChar(c, "was expecting either '*' or '/' for a comment");
        }
    }

    private void _skipLine() throws IOException {
        while (true) {
            if (this._inputPtr < this._inputEnd || loadMore()) {
                char[] cArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                char c = cArr[i];
                if (c < ' ') {
                    if (c == '\n') {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                        return;
                    } else if (c == '\r') {
                        _skipCR();
                        return;
                    } else if (c != '\t') {
                        _throwInvalidSpace(c);
                    }
                }
            } else {
                return;
            }
        }
    }

    private final int _skipWSOrEnd() throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            return _eofAsNextChar();
        }
        char[] cArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        char c = cArr[i];
        if (c <= ' ') {
            if (c != ' ') {
                if (c == '\n') {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (c == '\r') {
                    _skipCR();
                } else if (c != '\t') {
                    _throwInvalidSpace(c);
                }
            }
            while (this._inputPtr < this._inputEnd) {
                cArr = this._inputBuffer;
                i = this._inputPtr;
                this._inputPtr = i + 1;
                c = cArr[i];
                if (c > ' ') {
                    if (c != IOUtils.DIR_SEPARATOR_UNIX && c != '#') {
                        return c;
                    }
                    this._inputPtr--;
                    return _skipWSOrEnd2();
                } else if (c != ' ') {
                    if (c == '\n') {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (c == '\r') {
                        _skipCR();
                    } else if (c != '\t') {
                        _throwInvalidSpace(c);
                    }
                }
            }
            return _skipWSOrEnd2();
        } else if (c != IOUtils.DIR_SEPARATOR_UNIX && c != '#') {
            return c;
        } else {
            this._inputPtr--;
            return _skipWSOrEnd2();
        }
    }

    private int _skipWSOrEnd2() throws IOException {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                return _eofAsNextChar();
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            if (c > ' ') {
                if (c == IOUtils.DIR_SEPARATOR_UNIX) {
                    _skipComment();
                } else if (c != '#' || !_skipYAMLComment()) {
                    return c;
                }
            } else if (c != ' ') {
                if (c == '\n') {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (c == '\r') {
                    _skipCR();
                } else if (c != '\t') {
                    _throwInvalidSpace(c);
                }
            }
        }
    }

    private boolean _skipYAMLComment() throws IOException {
        if (!isEnabled(Feature.ALLOW_YAML_COMMENTS)) {
            return false;
        }
        _skipLine();
        return true;
    }

    private char _verifyNLZ2() throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            return '0';
        }
        char c = this._inputBuffer[this._inputPtr];
        if (c < '0' || c > '9') {
            return '0';
        }
        if (!isEnabled(Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
            reportInvalidNumber("Leading zeroes not allowed");
        }
        this._inputPtr++;
        if (c == '0') {
            do {
                if (this._inputPtr < this._inputEnd || loadMore()) {
                    c = this._inputBuffer[this._inputPtr];
                    if (c < '0' || c > '9') {
                        return '0';
                    }
                    this._inputPtr++;
                }
            } while (c == '0');
            return c;
        }
        return c;
    }

    private final char _verifyNoLeadingZeroes() throws IOException {
        if (this._inputPtr < this._inputEnd) {
            char c = this._inputBuffer[this._inputPtr];
            if (c < '0' || c > '9') {
                return '0';
            }
        }
        return _verifyNLZ2();
    }

    private final void _verifyRootSpace(int i) throws IOException {
        this._inputPtr++;
        switch (i) {
            case Place.TYPE_BAR /*9*/:
            case Place.TYPE_ELECTRONICS_STORE /*32*/:
            case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                this._currInputRow++;
                this._currInputRowStart = this._inputPtr;
            case Place.TYPE_BOWLING_ALLEY /*13*/:
                _skipCR();
            default:
                _reportMissingRootWS(i);
        }
    }

    protected void _closeInput() throws IOException {
        if (this._reader != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(Feature.AUTO_CLOSE_SOURCE)) {
                this._reader.close();
            }
            this._reader = null;
        }
    }

    protected byte[] _decodeBase64(Base64Variant base64Variant) throws IOException {
        char c;
        ByteArrayBuilder _getByteArrayBuilder = _getByteArrayBuilder();
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c2 = cArr[i];
            if (c2 > ' ') {
                int decodeBase64Char = base64Variant.decodeBase64Char(c2);
                if (decodeBase64Char < 0) {
                    if (c2 == '\"') {
                        return _getByteArrayBuilder.toByteArray();
                    }
                    decodeBase64Char = _decodeBase64Escape(base64Variant, c2, 0);
                    if (decodeBase64Char < 0) {
                        continue;
                    }
                }
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                char[] cArr2 = this._inputBuffer;
                int i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                char c3 = cArr2[i2];
                i = base64Variant.decodeBase64Char(c3);
                if (i < 0) {
                    i = _decodeBase64Escape(base64Variant, c3, 1);
                }
                i |= decodeBase64Char << 6;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                cArr = this._inputBuffer;
                i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                c3 = cArr[i2];
                decodeBase64Char = base64Variant.decodeBase64Char(c3);
                if (decodeBase64Char < 0) {
                    if (decodeBase64Char != -2) {
                        if (c3 != '\"' || base64Variant.usesPadding()) {
                            decodeBase64Char = _decodeBase64Escape(base64Variant, c3, 2);
                        } else {
                            _getByteArrayBuilder.append(i >> 4);
                            return _getByteArrayBuilder.toByteArray();
                        }
                    }
                    if (decodeBase64Char == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            loadMoreGuaranteed();
                        }
                        cArr = this._inputBuffer;
                        i2 = this._inputPtr;
                        this._inputPtr = i2 + 1;
                        c = cArr[i2];
                        if (!base64Variant.usesPaddingChar(c)) {
                            break;
                        }
                        _getByteArrayBuilder.append(i >> 4);
                    }
                }
                i = (i << 6) | decodeBase64Char;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                cArr = this._inputBuffer;
                i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                c3 = cArr[i2];
                decodeBase64Char = base64Variant.decodeBase64Char(c3);
                if (decodeBase64Char < 0) {
                    if (decodeBase64Char != -2) {
                        if (c3 != '\"' || base64Variant.usesPadding()) {
                            decodeBase64Char = _decodeBase64Escape(base64Variant, c3, 3);
                        } else {
                            _getByteArrayBuilder.appendTwoBytes(i >> 2);
                            return _getByteArrayBuilder.toByteArray();
                        }
                    }
                    if (decodeBase64Char == -2) {
                        _getByteArrayBuilder.appendTwoBytes(i >> 2);
                    }
                }
                _getByteArrayBuilder.appendThreeBytes(decodeBase64Char | (i << 6));
            }
        }
        throw reportInvalidBase64Char(base64Variant, c, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
    }

    protected char _decodeEscaped() throws IOException {
        int i = 0;
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(" in character escape sequence");
        }
        char[] cArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        char c = cArr[i2];
        switch (c) {
            case Place.TYPE_ESTABLISHMENT /*34*/:
            case Place.TYPE_HEALTH /*47*/:
            case Place.TYPE_TRAIN_STATION /*92*/:
                return c;
            case 'b':
                return '\b';
            case LocationRequest.PRIORITY_BALANCED_POWER_ACCURACY /*102*/:
                return '\f';
            case 'n':
                return '\n';
            case 'r':
                return '\r';
            case 't':
                return '\t';
            case 'u':
                for (int i3 = 0; i3 < 4; i3++) {
                    if (this._inputPtr >= this._inputEnd && !loadMore()) {
                        _reportInvalidEOF(" in character escape sequence");
                    }
                    char[] cArr2 = this._inputBuffer;
                    int i4 = this._inputPtr;
                    this._inputPtr = i4 + 1;
                    char c2 = cArr2[i4];
                    i4 = CharTypes.charToHex(c2);
                    if (i4 < 0) {
                        _reportUnexpectedChar(c2, "expected a hex-digit for character escape sequence");
                    }
                    i = (i << 4) | i4;
                }
                return (char) i;
            default:
                return _handleUnrecognizedCharacterEscape(c);
        }
    }

    protected final void _finishString() throws IOException {
        int i = this._inputPtr;
        int i2 = this._inputEnd;
        if (i < i2) {
            int[] iArr = _icLatin1;
            char length = iArr.length;
            do {
                char c = this._inputBuffer[i];
                if (c >= length || iArr[c] == 0) {
                    i++;
                } else if (c == '\"') {
                    this._textBuffer.resetWithShared(this._inputBuffer, this._inputPtr, i - this._inputPtr);
                    this._inputPtr = i + 1;
                    return;
                }
            } while (i < i2);
        }
        this._textBuffer.resetWithCopy(this._inputBuffer, this._inputPtr, i - this._inputPtr);
        this._inputPtr = i;
        _finishString2();
    }

    protected void _finishString2() throws IOException {
        char[] currentSegment = this._textBuffer.getCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        int[] iArr = _icLatin1;
        char length = iArr.length;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(": was expecting closing quote for a string value");
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            if (c < length && iArr[c] != 0) {
                if (c == '\"') {
                    this._textBuffer.setCurrentLength(currentSegmentSize);
                    return;
                } else if (c == IOUtils.DIR_SEPARATOR_WINDOWS) {
                    c = _decodeEscaped();
                } else if (c < ' ') {
                    _throwUnquotedSpace(c, "string value");
                }
            }
            if (currentSegmentSize >= currentSegment.length) {
                currentSegment = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            }
            currentSegment[currentSegmentSize] = c;
            currentSegmentSize++;
        }
    }

    protected final String _getText2(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        switch (jsonToken.id()) {
            case Place.TYPE_ART_GALLERY /*5*/:
                return this._parsingContext.getCurrentName();
            case Place.TYPE_ATM /*6*/:
            case Place.TYPE_BAKERY /*7*/:
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                return this._textBuffer.contentsAsString();
            default:
                return jsonToken.asString();
        }
    }

    protected JsonToken _handleApos() throws IOException {
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(": was expecting closing quote for a string value");
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            if (c <= IOUtils.DIR_SEPARATOR_WINDOWS) {
                if (c == IOUtils.DIR_SEPARATOR_WINDOWS) {
                    c = _decodeEscaped();
                } else if (c <= '\'') {
                    if (c == '\'') {
                        this._textBuffer.setCurrentLength(currentSegmentSize);
                        return JsonToken.VALUE_STRING;
                    } else if (c < ' ') {
                        _throwUnquotedSpace(c, "string value");
                    }
                }
            }
            if (currentSegmentSize >= emptyAndGetCurrentSegment.length) {
                emptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            }
            emptyAndGetCurrentSegment[currentSegmentSize] = c;
            currentSegmentSize++;
        }
    }

    protected JsonToken _handleInvalidNumberStart(int i, boolean z) throws IOException {
        double d = Double.POSITIVE_INFINITY;
        if (i == 73) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOFInValue();
            }
            char[] cArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            i = cArr[i2];
            String str;
            if (i == 78) {
                str = z ? "-INF" : "+INF";
                _matchToken(str, 3);
                if (isEnabled(Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                    if (z) {
                        d = Double.NEGATIVE_INFINITY;
                    }
                    return resetAsNaN(str, d);
                }
                _reportError("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            } else if (i == 110) {
                str = z ? "-Infinity" : "+Infinity";
                _matchToken(str, 3);
                if (isEnabled(Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                    if (z) {
                        d = Double.NEGATIVE_INFINITY;
                    }
                    return resetAsNaN(str, d);
                }
                _reportError("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            }
        }
        reportUnexpectedNumberChar(i, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
    }

    protected String _handleOddName(int i) throws IOException {
        if (i == 39 && isEnabled(Feature.ALLOW_SINGLE_QUOTES)) {
            return _parseAposName();
        }
        if (!isEnabled(Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
            _reportUnexpectedChar(i, "was expecting double-quote to start field name");
        }
        int[] inputCodeLatin1JsNames = CharTypes.getInputCodeLatin1JsNames();
        char length = inputCodeLatin1JsNames.length;
        boolean isJavaIdentifierPart = i < length ? inputCodeLatin1JsNames[i] == 0 : Character.isJavaIdentifierPart((char) i);
        if (!isJavaIdentifierPart) {
            _reportUnexpectedChar(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int i2 = this._inputPtr;
        int i3 = this._hashSeed;
        int i4 = this._inputEnd;
        if (i2 < i4) {
            do {
                char c = this._inputBuffer[i2];
                int i5;
                if (c < length) {
                    if (inputCodeLatin1JsNames[c] != 0) {
                        i5 = this._inputPtr - 1;
                        this._inputPtr = i2;
                        return this._symbols.findSymbol(this._inputBuffer, i5, i2 - i5, i3);
                    }
                } else if (!Character.isJavaIdentifierPart((char) c)) {
                    i5 = this._inputPtr - 1;
                    this._inputPtr = i2;
                    return this._symbols.findSymbol(this._inputBuffer, i5, i2 - i5, i3);
                }
                i3 = (i3 * 33) + c;
                i2++;
            } while (i2 < i4);
        }
        int i6 = this._inputPtr;
        this._inputPtr = i2;
        return _handleOddName2(i6 - 1, i3, inputCodeLatin1JsNames);
    }

    protected JsonToken _handleOddValue(int i) throws IOException {
        switch (i) {
            case Place.TYPE_FUNERAL_HOME /*39*/:
                if (isEnabled(Feature.ALLOW_SINGLE_QUOTES)) {
                    return _handleApos();
                }
                break;
            case Place.TYPE_GROCERY_OR_SUPERMARKET /*43*/:
                if (this._inputPtr >= this._inputEnd && !loadMore()) {
                    _reportInvalidEOFInValue();
                }
                char[] cArr = this._inputBuffer;
                int i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                return _handleInvalidNumberStart(cArr[i2], false);
            case Place.TYPE_PHYSIOTHERAPIST /*73*/:
                _matchToken("Infinity", 1);
                if (!isEnabled(Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                    _reportError("Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                    break;
                }
                return resetAsNaN("Infinity", Double.POSITIVE_INFINITY);
            case Place.TYPE_REAL_ESTATE_AGENCY /*78*/:
                _matchToken("NaN", 1);
                if (!isEnabled(Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                    _reportError("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                    break;
                }
                return resetAsNaN("NaN", Double.NaN);
        }
        if (Character.isJavaIdentifierStart(i)) {
            _reportInvalidToken(BuildConfig.FLAVOR + ((char) i), "('true', 'false' or 'null')");
        }
        _reportUnexpectedChar(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
    }

    protected final void _matchToken(String str, int i) throws IOException {
        int length = str.length();
        do {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidToken(str.substring(0, i));
            }
            if (this._inputBuffer[this._inputPtr] != str.charAt(i)) {
                _reportInvalidToken(str.substring(0, i));
            }
            this._inputPtr++;
            i++;
        } while (i < length);
        if (this._inputPtr < this._inputEnd || loadMore()) {
            char c = this._inputBuffer[this._inputPtr];
            if (c >= '0' && c != ']' && c != '}' && Character.isJavaIdentifierPart(c)) {
                _reportInvalidToken(str.substring(0, i));
            }
        }
    }

    protected String _parseAposName() throws IOException {
        int i = this._inputPtr;
        int i2 = this._hashSeed;
        int i3 = this._inputEnd;
        if (i < i3) {
            int[] iArr = _icLatin1;
            char length = iArr.length;
            do {
                char c = this._inputBuffer[i];
                if (c != '\'') {
                    if (c < length && iArr[c] != 0) {
                        break;
                    }
                    i2 = (i2 * 33) + c;
                    i++;
                } else {
                    i3 = this._inputPtr;
                    this._inputPtr = i + 1;
                    return this._symbols.findSymbol(this._inputBuffer, i3, i - i3, i2);
                }
            } while (i < i3);
        }
        i3 = this._inputPtr;
        this._inputPtr = i;
        return _parseName2(i3, i2, 39);
    }

    protected final String _parseName() throws IOException {
        int i;
        int i2 = this._inputPtr;
        int i3 = this._hashSeed;
        int[] iArr = _icLatin1;
        while (i2 < this._inputEnd) {
            char c = this._inputBuffer[i2];
            if (c >= iArr.length || iArr[c] == 0) {
                i3 = (i3 * 33) + c;
                i2++;
            } else {
                if (c == '\"') {
                    i = this._inputPtr;
                    this._inputPtr = i2 + 1;
                    return this._symbols.findSymbol(this._inputBuffer, i, i2 - i, i3);
                }
                i = this._inputPtr;
                this._inputPtr = i2;
                return _parseName2(i, i3, 34);
            }
        }
        i = this._inputPtr;
        this._inputPtr = i2;
        return _parseName2(i, i3, 34);
    }

    protected final JsonToken _parseNegNumber() throws IOException {
        int i = this._inputPtr;
        int i2 = i - 1;
        int i3 = this._inputEnd;
        if (i >= i3) {
            return _parseNumber2(true, i2);
        }
        int i4 = i + 1;
        char c = this._inputBuffer[i];
        if (c > '9' || c < '0') {
            this._inputPtr = i4;
            return _handleInvalidNumberStart(c, true);
        } else if (c == '0') {
            return _parseNumber2(true, i2);
        } else {
            i = i4;
            int i5 = 1;
            while (i < i3) {
                i4 = i + 1;
                char c2 = this._inputBuffer[i];
                if (c2 >= '0' && c2 <= '9') {
                    i5++;
                    i = i4;
                } else if (c2 == FilenameUtils.EXTENSION_SEPARATOR || c2 == 'e' || c2 == 'E') {
                    this._inputPtr = i4;
                    return _parseFloat(c2, i2, i4, true, i5);
                } else {
                    i = i4 - 1;
                    this._inputPtr = i;
                    if (this._parsingContext.inRoot()) {
                        _verifyRootSpace(c2);
                    }
                    this._textBuffer.resetWithShared(this._inputBuffer, i2, i - i2);
                    return resetInt(true, i5);
                }
            }
            return _parseNumber2(true, i2);
        }
    }

    protected final JsonToken _parsePosNumber(int i) throws IOException {
        int i2 = this._inputPtr;
        int i3 = i2 - 1;
        int i4 = this._inputEnd;
        if (i == 48) {
            return _parseNumber2(false, i3);
        }
        int i5 = 1;
        int i6 = i2;
        while (i6 < i4) {
            i2 = i6 + 1;
            char c = this._inputBuffer[i6];
            if (c >= '0' && c <= '9') {
                i5++;
                i6 = i2;
            } else if (c == FilenameUtils.EXTENSION_SEPARATOR || c == 'e' || c == 'E') {
                this._inputPtr = i2;
                return _parseFloat(c, i3, i2, false, i5);
            } else {
                i6 = i2 - 1;
                this._inputPtr = i6;
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(c);
                }
                this._textBuffer.resetWithShared(this._inputBuffer, i3, i6 - i3);
                return resetInt(false, i5);
            }
        }
        this._inputPtr = i3;
        return _parseNumber2(false, i3);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected int _readBinary(com.fasterxml.jackson.core.Base64Variant r12, java.io.OutputStream r13, byte[] r14) throws java.io.IOException {
        /*
        r11 = this;
        r10 = 3;
        r9 = 34;
        r8 = -2;
        r1 = 0;
        r5 = r14.length;
        r0 = r1;
        r2 = r1;
    L_0x0008:
        r3 = r11._inputPtr;
        r4 = r11._inputEnd;
        if (r3 < r4) goto L_0x0011;
    L_0x000e:
        r11.loadMoreGuaranteed();
    L_0x0011:
        r3 = r11._inputBuffer;
        r4 = r11._inputPtr;
        r6 = r4 + 1;
        r11._inputPtr = r6;
        r4 = r3[r4];
        r3 = 32;
        if (r4 <= r3) goto L_0x0008;
    L_0x001f:
        r3 = r12.decodeBase64Char(r4);
        if (r3 >= 0) goto L_0x0036;
    L_0x0025:
        if (r4 != r9) goto L_0x0030;
    L_0x0027:
        r11._tokenIncomplete = r1;
        if (r2 <= 0) goto L_0x002f;
    L_0x002b:
        r0 = r0 + r2;
        r13.write(r14, r1, r2);
    L_0x002f:
        return r0;
    L_0x0030:
        r3 = r11._decodeBase64Escape(r12, r4, r1);
        if (r3 < 0) goto L_0x0008;
    L_0x0036:
        r4 = r3;
        r3 = r5 + -3;
        if (r2 <= r3) goto L_0x0040;
    L_0x003b:
        r0 = r0 + r2;
        r13.write(r14, r1, r2);
        r2 = r1;
    L_0x0040:
        r3 = r11._inputPtr;
        r6 = r11._inputEnd;
        if (r3 < r6) goto L_0x0049;
    L_0x0046:
        r11.loadMoreGuaranteed();
    L_0x0049:
        r3 = r11._inputBuffer;
        r6 = r11._inputPtr;
        r7 = r6 + 1;
        r11._inputPtr = r7;
        r6 = r3[r6];
        r3 = r12.decodeBase64Char(r6);
        if (r3 >= 0) goto L_0x005e;
    L_0x0059:
        r3 = 1;
        r3 = r11._decodeBase64Escape(r12, r6, r3);
    L_0x005e:
        r4 = r4 << 6;
        r4 = r4 | r3;
        r3 = r11._inputPtr;
        r6 = r11._inputEnd;
        if (r3 < r6) goto L_0x006a;
    L_0x0067:
        r11.loadMoreGuaranteed();
    L_0x006a:
        r3 = r11._inputBuffer;
        r6 = r11._inputPtr;
        r7 = r6 + 1;
        r11._inputPtr = r7;
        r6 = r3[r6];
        r3 = r12.decodeBase64Char(r6);
        if (r3 >= 0) goto L_0x00d7;
    L_0x007a:
        if (r3 == r8) goto L_0x0091;
    L_0x007c:
        if (r6 != r9) goto L_0x008c;
    L_0x007e:
        r3 = r12.usesPadding();
        if (r3 != 0) goto L_0x008c;
    L_0x0084:
        r3 = r4 >> 4;
        r3 = (byte) r3;
        r14[r2] = r3;
        r2 = r2 + 1;
        goto L_0x0027;
    L_0x008c:
        r3 = 2;
        r3 = r11._decodeBase64Escape(r12, r6, r3);
    L_0x0091:
        if (r3 != r8) goto L_0x00d7;
    L_0x0093:
        r3 = r11._inputPtr;
        r6 = r11._inputEnd;
        if (r3 < r6) goto L_0x009c;
    L_0x0099:
        r11.loadMoreGuaranteed();
    L_0x009c:
        r3 = r11._inputBuffer;
        r6 = r11._inputPtr;
        r7 = r6 + 1;
        r11._inputPtr = r7;
        r3 = r3[r6];
        r6 = r12.usesPaddingChar(r3);
        if (r6 != 0) goto L_0x00ce;
    L_0x00ac:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = "expected padding character '";
        r0 = r0.append(r1);
        r1 = r12.getPaddingChar();
        r0 = r0.append(r1);
        r1 = "'";
        r0 = r0.append(r1);
        r0 = r0.toString();
        r0 = r11.reportInvalidBase64Char(r12, r3, r10, r0);
        throw r0;
    L_0x00ce:
        r3 = r4 >> 4;
        r3 = (byte) r3;
        r14[r2] = r3;
        r2 = r2 + 1;
        goto L_0x0008;
    L_0x00d7:
        r4 = r4 << 6;
        r4 = r4 | r3;
        r3 = r11._inputPtr;
        r6 = r11._inputEnd;
        if (r3 < r6) goto L_0x00e3;
    L_0x00e0:
        r11.loadMoreGuaranteed();
    L_0x00e3:
        r3 = r11._inputBuffer;
        r6 = r11._inputPtr;
        r7 = r6 + 1;
        r11._inputPtr = r7;
        r6 = r3[r6];
        r3 = r12.decodeBase64Char(r6);
        if (r3 >= 0) goto L_0x0123;
    L_0x00f3:
        if (r3 == r8) goto L_0x0111;
    L_0x00f5:
        if (r6 != r9) goto L_0x010d;
    L_0x00f7:
        r3 = r12.usesPadding();
        if (r3 != 0) goto L_0x010d;
    L_0x00fd:
        r3 = r4 >> 2;
        r4 = r2 + 1;
        r5 = r3 >> 8;
        r5 = (byte) r5;
        r14[r2] = r5;
        r2 = r4 + 1;
        r3 = (byte) r3;
        r14[r4] = r3;
        goto L_0x0027;
    L_0x010d:
        r3 = r11._decodeBase64Escape(r12, r6, r10);
    L_0x0111:
        if (r3 != r8) goto L_0x0123;
    L_0x0113:
        r3 = r4 >> 2;
        r4 = r2 + 1;
        r6 = r3 >> 8;
        r6 = (byte) r6;
        r14[r2] = r6;
        r2 = r4 + 1;
        r3 = (byte) r3;
        r14[r4] = r3;
        goto L_0x0008;
    L_0x0123:
        r4 = r4 << 6;
        r3 = r3 | r4;
        r4 = r2 + 1;
        r6 = r3 >> 16;
        r6 = (byte) r6;
        r14[r2] = r6;
        r2 = r4 + 1;
        r6 = r3 >> 8;
        r6 = (byte) r6;
        r14[r4] = r6;
        r3 = (byte) r3;
        r14[r2] = r3;
        r2 = r2 + 1;
        goto L_0x0008;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._readBinary(com.fasterxml.jackson.core.Base64Variant, java.io.OutputStream, byte[]):int");
    }

    protected void _releaseBuffers() throws IOException {
        super._releaseBuffers();
        this._symbols.release();
        if (this._bufferRecyclable) {
            char[] cArr = this._inputBuffer;
            if (cArr != null) {
                this._inputBuffer = null;
                this._ioContext.releaseTokenBuffer(cArr);
            }
        }
    }

    protected void _reportInvalidToken(String str) throws IOException {
        _reportInvalidToken(str, "'null', 'true', 'false' or NaN");
    }

    protected void _reportInvalidToken(String str, String str2) throws IOException {
        StringBuilder stringBuilder = new StringBuilder(str);
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                break;
            }
            char c = this._inputBuffer[this._inputPtr];
            if (!Character.isJavaIdentifierPart(c)) {
                break;
            }
            this._inputPtr++;
            stringBuilder.append(c);
        }
        _reportError("Unrecognized token '" + stringBuilder.toString() + "': was expecting " + str2);
    }

    protected final void _skipCR() throws IOException {
        if ((this._inputPtr < this._inputEnd || loadMore()) && this._inputBuffer[this._inputPtr] == '\n') {
            this._inputPtr++;
        }
        this._currInputRow++;
        this._currInputRowStart = this._inputPtr;
    }

    protected final void _skipString() throws IOException {
        this._tokenIncomplete = false;
        int i = this._inputPtr;
        int i2 = this._inputEnd;
        char[] cArr = this._inputBuffer;
        while (true) {
            if (i >= i2) {
                this._inputPtr = i;
                if (!loadMore()) {
                    _reportInvalidEOF(": was expecting closing quote for a string value");
                }
                i = this._inputPtr;
                i2 = this._inputEnd;
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c <= IOUtils.DIR_SEPARATOR_WINDOWS) {
                if (c == IOUtils.DIR_SEPARATOR_WINDOWS) {
                    this._inputPtr = i3;
                    _decodeEscaped();
                    i = this._inputPtr;
                    i2 = this._inputEnd;
                } else if (c <= '\"') {
                    if (c == '\"') {
                        this._inputPtr = i3;
                        return;
                    } else if (c < ' ') {
                        this._inputPtr = i3;
                        _throwUnquotedSpace(c, "string value");
                    }
                }
            }
            i = i3;
        }
    }

    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException {
        if (this._currToken != JsonToken.VALUE_STRING && (this._currToken != JsonToken.VALUE_EMBEDDED_OBJECT || this._binaryValue == null)) {
            _reportError("Current token (" + this._currToken + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
        }
        if (this._tokenIncomplete) {
            try {
                this._binaryValue = _decodeBase64(base64Variant);
                this._tokenIncomplete = false;
            } catch (IllegalArgumentException e) {
                throw _constructError("Failed to decode VALUE_STRING as base64 (" + base64Variant + "): " + e.getMessage());
            }
        } else if (this._binaryValue == null) {
            ByteArrayBuilder _getByteArrayBuilder = _getByteArrayBuilder();
            _decodeBase64(getText(), _getByteArrayBuilder, base64Variant);
            this._binaryValue = _getByteArrayBuilder.toByteArray();
        }
        return this._binaryValue;
    }

    public ObjectCodec getCodec() {
        return this._objectCodec;
    }

    public Object getInputSource() {
        return this._reader;
    }

    protected char getNextChar(String str) throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(str);
        }
        char[] cArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        return cArr[i];
    }

    public final String getText() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_STRING) {
            return _getText2(jsonToken);
        }
        if (this._tokenIncomplete) {
            this._tokenIncomplete = false;
            _finishString();
        }
        return this._textBuffer.contentsAsString();
    }

    public final char[] getTextCharacters() throws IOException {
        if (this._currToken == null) {
            return null;
        }
        switch (this._currToken.id()) {
            case Place.TYPE_ART_GALLERY /*5*/:
                if (!this._nameCopied) {
                    String currentName = this._parsingContext.getCurrentName();
                    int length = currentName.length();
                    if (this._nameCopyBuffer == null) {
                        this._nameCopyBuffer = this._ioContext.allocNameCopyBuffer(length);
                    } else if (this._nameCopyBuffer.length < length) {
                        this._nameCopyBuffer = new char[length];
                    }
                    currentName.getChars(0, length, this._nameCopyBuffer, 0);
                    this._nameCopied = true;
                }
                return this._nameCopyBuffer;
            case Place.TYPE_ATM /*6*/:
                if (this._tokenIncomplete) {
                    this._tokenIncomplete = false;
                    _finishString();
                    break;
                }
                break;
            case Place.TYPE_BAKERY /*7*/:
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                break;
            default:
                return this._currToken.asCharArray();
        }
        return this._textBuffer.getTextBuffer();
    }

    public final int getTextLength() throws IOException {
        if (this._currToken == null) {
            return 0;
        }
        switch (this._currToken.id()) {
            case Place.TYPE_ART_GALLERY /*5*/:
                return this._parsingContext.getCurrentName().length();
            case Place.TYPE_ATM /*6*/:
                if (this._tokenIncomplete) {
                    this._tokenIncomplete = false;
                    _finishString();
                    break;
                }
                break;
            case Place.TYPE_BAKERY /*7*/:
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                break;
            default:
                return this._currToken.asCharArray().length;
        }
        return this._textBuffer.size();
    }

    public final int getTextOffset() throws IOException {
        if (this._currToken == null) {
            return 0;
        }
        switch (this._currToken.id()) {
            case Place.TYPE_ATM /*6*/:
                if (this._tokenIncomplete) {
                    this._tokenIncomplete = false;
                    _finishString();
                    break;
                }
                break;
            case Place.TYPE_BAKERY /*7*/:
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                break;
            default:
                return 0;
        }
        return this._textBuffer.getTextOffset();
    }

    public final String getValueAsString() throws IOException {
        if (this._currToken != JsonToken.VALUE_STRING) {
            return this._currToken == JsonToken.FIELD_NAME ? getCurrentName() : super.getValueAsString(null);
        } else {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.contentsAsString();
        }
    }

    public final String getValueAsString(String str) throws IOException {
        if (this._currToken != JsonToken.VALUE_STRING) {
            return this._currToken == JsonToken.FIELD_NAME ? getCurrentName() : super.getValueAsString(str);
        } else {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.contentsAsString();
        }
    }

    protected boolean loadMore() throws IOException {
        this._currInputProcessed += (long) this._inputEnd;
        this._currInputRowStart -= this._inputEnd;
        if (this._reader == null) {
            return false;
        }
        int read = this._reader.read(this._inputBuffer, 0, this._inputBuffer.length);
        if (read > 0) {
            this._inputPtr = 0;
            this._inputEnd = read;
            return true;
        }
        _closeInput();
        if (read != 0) {
            return false;
        }
        throw new IOException("Reader returned 0 characters when trying to read " + this._inputEnd);
    }

    public final Boolean nextBooleanValue() throws IOException {
        JsonToken jsonToken;
        if (this._currToken == JsonToken.FIELD_NAME) {
            this._nameCopied = false;
            jsonToken = this._nextToken;
            this._nextToken = null;
            this._currToken = jsonToken;
            if (jsonToken == JsonToken.VALUE_TRUE) {
                return Boolean.TRUE;
            }
            if (jsonToken == JsonToken.VALUE_FALSE) {
                return Boolean.FALSE;
            }
            if (jsonToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
                return null;
            } else if (jsonToken != JsonToken.START_OBJECT) {
                return null;
            } else {
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
                return null;
            }
        }
        jsonToken = nextToken();
        if (jsonToken == null) {
            return null;
        }
        int id = jsonToken.id();
        return id == 9 ? Boolean.TRUE : id == 10 ? Boolean.FALSE : null;
    }

    public String nextFieldName() throws IOException {
        this._numTypesValid = 0;
        if (this._currToken == JsonToken.FIELD_NAME) {
            _nextAfterName();
            return null;
        }
        if (this._tokenIncomplete) {
            _skipString();
        }
        int _skipWSOrEnd = _skipWSOrEnd();
        if (_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return null;
        }
        this._tokenInputTotal = (this._currInputProcessed + ((long) this._inputPtr)) - 1;
        this._tokenInputRow = this._currInputRow;
        this._tokenInputCol = (this._inputPtr - this._currInputRowStart) - 1;
        this._binaryValue = null;
        if (_skipWSOrEnd == 93) {
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, '}');
            }
            this._parsingContext = this._parsingContext.getParent();
            this._currToken = JsonToken.END_ARRAY;
            return null;
        } else if (_skipWSOrEnd == 125) {
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, ']');
            }
            this._parsingContext = this._parsingContext.getParent();
            this._currToken = JsonToken.END_OBJECT;
            return null;
        } else {
            if (this._parsingContext.expectComma()) {
                _skipWSOrEnd = _skipComma(_skipWSOrEnd);
            }
            if (this._parsingContext.inObject()) {
                String _parseName = _skipWSOrEnd == 34 ? _parseName() : _handleOddName(_skipWSOrEnd);
                this._parsingContext.setCurrentName(_parseName);
                this._currToken = JsonToken.FIELD_NAME;
                int _skipColon = _skipColon();
                if (_skipColon == 34) {
                    this._tokenIncomplete = true;
                    this._nextToken = JsonToken.VALUE_STRING;
                    return _parseName;
                }
                JsonToken _parseNegNumber;
                switch (_skipColon) {
                    case Place.TYPE_HAIR_CARE /*45*/:
                        _parseNegNumber = _parseNegNumber();
                        break;
                    case Place.TYPE_HINDU_TEMPLE /*48*/:
                    case Place.TYPE_HOME_GOODS_STORE /*49*/:
                    case Place.TYPE_HOSPITAL /*50*/:
                    case Place.TYPE_INSURANCE_AGENCY /*51*/:
                    case Place.TYPE_JEWELRY_STORE /*52*/:
                    case Place.TYPE_LAUNDRY /*53*/:
                    case Place.TYPE_LAWYER /*54*/:
                    case Place.TYPE_LIBRARY /*55*/:
                    case Place.TYPE_LIQUOR_STORE /*56*/:
                    case Place.TYPE_LOCAL_GOVERNMENT_OFFICE /*57*/:
                        _parseNegNumber = _parsePosNumber(_skipColon);
                        break;
                    case Place.TYPE_TAXI_STAND /*91*/:
                        _parseNegNumber = JsonToken.START_ARRAY;
                        break;
                    case LocationRequest.PRIORITY_BALANCED_POWER_ACCURACY /*102*/:
                        _matchFalse();
                        _parseNegNumber = JsonToken.VALUE_FALSE;
                        break;
                    case 110:
                        _matchNull();
                        _parseNegNumber = JsonToken.VALUE_NULL;
                        break;
                    case 116:
                        _matchTrue();
                        _parseNegNumber = JsonToken.VALUE_TRUE;
                        break;
                    case 123:
                        _parseNegNumber = JsonToken.START_OBJECT;
                        break;
                    default:
                        _parseNegNumber = _handleOddValue(_skipColon);
                        break;
                }
                this._nextToken = _parseNegNumber;
                return _parseName;
            }
            _nextTokenNotInObject(_skipWSOrEnd);
            return null;
        }
    }

    public final int nextIntValue(int i) throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            return nextToken() == JsonToken.VALUE_NUMBER_INT ? getIntValue() : i;
        } else {
            this._nameCopied = false;
            JsonToken jsonToken = this._nextToken;
            this._nextToken = null;
            this._currToken = jsonToken;
            if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
                return getIntValue();
            }
            if (jsonToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
                return i;
            } else if (jsonToken != JsonToken.START_OBJECT) {
                return i;
            } else {
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
                return i;
            }
        }
    }

    public final long nextLongValue(long j) throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            return nextToken() == JsonToken.VALUE_NUMBER_INT ? getLongValue() : j;
        } else {
            this._nameCopied = false;
            JsonToken jsonToken = this._nextToken;
            this._nextToken = null;
            this._currToken = jsonToken;
            if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
                return getLongValue();
            }
            if (jsonToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
                return j;
            } else if (jsonToken != JsonToken.START_OBJECT) {
                return j;
            } else {
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
                return j;
            }
        }
    }

    public final String nextTextValue() throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            return nextToken() == JsonToken.VALUE_STRING ? getText() : null;
        } else {
            this._nameCopied = false;
            JsonToken jsonToken = this._nextToken;
            this._nextToken = null;
            this._currToken = jsonToken;
            if (jsonToken == JsonToken.VALUE_STRING) {
                if (this._tokenIncomplete) {
                    this._tokenIncomplete = false;
                    _finishString();
                }
                return this._textBuffer.contentsAsString();
            } else if (jsonToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
                return null;
            } else if (jsonToken != JsonToken.START_OBJECT) {
                return null;
            } else {
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
                return null;
            }
        }
    }

    public final JsonToken nextToken() throws IOException {
        this._numTypesValid = 0;
        if (this._currToken == JsonToken.FIELD_NAME) {
            return _nextAfterName();
        }
        if (this._tokenIncomplete) {
            _skipString();
        }
        int _skipWSOrEnd = _skipWSOrEnd();
        if (_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return null;
        }
        this._tokenInputTotal = (this._currInputProcessed + ((long) this._inputPtr)) - 1;
        this._tokenInputRow = this._currInputRow;
        this._tokenInputCol = (this._inputPtr - this._currInputRowStart) - 1;
        this._binaryValue = null;
        JsonToken jsonToken;
        if (_skipWSOrEnd == 93) {
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, '}');
            }
            this._parsingContext = this._parsingContext.getParent();
            jsonToken = JsonToken.END_ARRAY;
            this._currToken = jsonToken;
            return jsonToken;
        } else if (_skipWSOrEnd == 125) {
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, ']');
            }
            this._parsingContext = this._parsingContext.getParent();
            jsonToken = JsonToken.END_OBJECT;
            this._currToken = jsonToken;
            return jsonToken;
        } else {
            int _skipComma = this._parsingContext.expectComma() ? _skipComma(_skipWSOrEnd) : _skipWSOrEnd;
            boolean inObject = this._parsingContext.inObject();
            if (inObject) {
                this._parsingContext.setCurrentName(_skipComma == 34 ? _parseName() : _handleOddName(_skipComma));
                this._currToken = JsonToken.FIELD_NAME;
                _skipComma = _skipColon();
            }
            switch (_skipComma) {
                case Place.TYPE_ESTABLISHMENT /*34*/:
                    this._tokenIncomplete = true;
                    jsonToken = JsonToken.VALUE_STRING;
                    break;
                case Place.TYPE_HAIR_CARE /*45*/:
                    jsonToken = _parseNegNumber();
                    break;
                case Place.TYPE_HINDU_TEMPLE /*48*/:
                case Place.TYPE_HOME_GOODS_STORE /*49*/:
                case Place.TYPE_HOSPITAL /*50*/:
                case Place.TYPE_INSURANCE_AGENCY /*51*/:
                case Place.TYPE_JEWELRY_STORE /*52*/:
                case Place.TYPE_LAUNDRY /*53*/:
                case Place.TYPE_LAWYER /*54*/:
                case Place.TYPE_LIBRARY /*55*/:
                case Place.TYPE_LIQUOR_STORE /*56*/:
                case Place.TYPE_LOCAL_GOVERNMENT_OFFICE /*57*/:
                    jsonToken = _parsePosNumber(_skipComma);
                    break;
                case Place.TYPE_TAXI_STAND /*91*/:
                    if (!inObject) {
                        this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
                    }
                    jsonToken = JsonToken.START_ARRAY;
                    break;
                case Place.TYPE_TRAVEL_AGENCY /*93*/:
                case 125:
                    _reportUnexpectedChar(_skipComma, "expected a value");
                    break;
                case LocationRequest.PRIORITY_BALANCED_POWER_ACCURACY /*102*/:
                    _matchFalse();
                    jsonToken = JsonToken.VALUE_FALSE;
                    break;
                case 110:
                    _matchNull();
                    jsonToken = JsonToken.VALUE_NULL;
                    break;
                case 116:
                    break;
                case 123:
                    if (!inObject) {
                        this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
                    }
                    jsonToken = JsonToken.START_OBJECT;
                    break;
                default:
                    jsonToken = _handleOddValue(_skipComma);
                    break;
            }
            _matchTrue();
            jsonToken = JsonToken.VALUE_TRUE;
            if (inObject) {
                this._nextToken = jsonToken;
                return this._currToken;
            }
            this._currToken = jsonToken;
            return jsonToken;
        }
    }

    public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        if (this._tokenIncomplete && this._currToken == JsonToken.VALUE_STRING) {
            byte[] allocBase64Buffer = this._ioContext.allocBase64Buffer();
            try {
                int _readBinary = _readBinary(base64Variant, outputStream, allocBase64Buffer);
                return _readBinary;
            } finally {
                this._ioContext.releaseBase64Buffer(allocBase64Buffer);
            }
        } else {
            byte[] binaryValue = getBinaryValue(base64Variant);
            outputStream.write(binaryValue);
            return binaryValue.length;
        }
    }

    public int releaseBuffered(Writer writer) throws IOException {
        int i = this._inputEnd - this._inputPtr;
        if (i < 1) {
            return 0;
        }
        writer.write(this._inputBuffer, this._inputPtr, i);
        return i;
    }

    public void setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }
}
