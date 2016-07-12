package com.fasterxml.jackson.core.json;

import android.support.v4.media.TransportMediator;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import spacemadness.com.lunarconsole.BuildConfig;
import spacemadness.com.lunarconsole.C1401R;

public class UTF8StreamJsonParser extends ParserBase {
    static final byte BYTE_LF = (byte) 10;
    protected static final int[] _icLatin1;
    private static final int[] _icUTF8;
    protected boolean _bufferRecyclable;
    protected byte[] _inputBuffer;
    protected InputStream _inputStream;
    protected ObjectCodec _objectCodec;
    private int _quad1;
    protected int[] _quadBuffer;
    protected final ByteQuadsCanonicalizer _symbols;
    protected boolean _tokenIncomplete;

    static {
        _icUTF8 = CharTypes.getInputCodeUtf8();
        _icLatin1 = CharTypes.getInputCodeLatin1();
    }

    public UTF8StreamJsonParser(IOContext iOContext, int i, InputStream inputStream, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, byte[] bArr, int i2, int i3, boolean z) {
        super(iOContext, i);
        this._quadBuffer = new int[16];
        this._tokenIncomplete = false;
        this._inputStream = inputStream;
        this._objectCodec = objectCodec;
        this._symbols = byteQuadsCanonicalizer;
        this._inputBuffer = bArr;
        this._inputPtr = i2;
        this._inputEnd = i3;
        this._currInputRowStart = i2;
        this._currInputProcessed = (long) (-i2);
        this._bufferRecyclable = z;
    }

    private final void _checkMatchEnd(String str, int i, int i2) throws IOException {
        if (Character.isJavaIdentifierPart((char) _decodeCharForError(i2))) {
            _reportInvalidToken(str.substring(0, i));
        }
    }

    private final int _decodeUtf8_2(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(b & MotionEventCompat.ACTION_MASK, this._inputPtr);
        }
        return (b & 63) | ((i & 31) << 6);
    }

    private final int _decodeUtf8_3(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(b & MotionEventCompat.ACTION_MASK, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b2 = bArr2[i3];
        if ((b2 & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(b2 & MotionEventCompat.ACTION_MASK, this._inputPtr);
        }
        return (((b & 63) | ((i & 15) << 6)) << 6) | (b2 & 63);
    }

    private final int _decodeUtf8_3fast(int i) throws IOException {
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(b & MotionEventCompat.ACTION_MASK, this._inputPtr);
        }
        byte[] bArr2 = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b2 = bArr2[i3];
        if ((b2 & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(b2 & MotionEventCompat.ACTION_MASK, this._inputPtr);
        }
        return (((b & 63) | ((i & 15) << 6)) << 6) | (b2 & 63);
    }

    private final int _decodeUtf8_4(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(b & MotionEventCompat.ACTION_MASK, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b2 = bArr2[i3];
        if ((b2 & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(b2 & MotionEventCompat.ACTION_MASK, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr3 = this._inputBuffer;
        int i4 = this._inputPtr;
        this._inputPtr = i4 + 1;
        byte b3 = bArr3[i4];
        if ((b3 & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(b3 & MotionEventCompat.ACTION_MASK, this._inputPtr);
        }
        return ((((((b & 63) | ((i & 7) << 6)) << 6) | (b2 & 63)) << 6) | (b3 & 63)) - AccessibilityNodeInfoCompat.ACTION_CUT;
    }

    private final void _finishString2(char[] cArr, int i) throws IOException {
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        while (true) {
            int i2 = this._inputPtr;
            if (i2 >= this._inputEnd) {
                loadMoreGuaranteed();
                i2 = this._inputPtr;
            }
            if (i >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i = 0;
            }
            int min = Math.min(this._inputEnd, (cArr.length - i) + i2);
            while (i2 < min) {
                int i3 = i2 + 1;
                i2 = bArr[i2] & MotionEventCompat.ACTION_MASK;
                if (iArr[i2] != 0) {
                    this._inputPtr = i3;
                    if (i2 == 34) {
                        this._textBuffer.setCurrentLength(i);
                        return;
                    }
                    switch (iArr[i2]) {
                        case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                            i2 = _decodeEscaped();
                            break;
                        case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                            i2 = _decodeUtf8_2(i2);
                            break;
                        case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                            if (this._inputEnd - this._inputPtr < 2) {
                                i2 = _decodeUtf8_3(i2);
                                break;
                            } else {
                                i2 = _decodeUtf8_3fast(i2);
                                break;
                            }
                        case Place.TYPE_AQUARIUM /*4*/:
                            i3 = _decodeUtf8_4(i2);
                            i2 = i + 1;
                            cArr[i] = (char) (GeneratorBase.SURR1_FIRST | (i3 >> 10));
                            if (i2 >= cArr.length) {
                                cArr = this._textBuffer.finishCurrentSegment();
                                i = 0;
                            } else {
                                i = i2;
                            }
                            i2 = GeneratorBase.SURR2_FIRST | (i3 & Place.TYPE_SUBLOCALITY_LEVEL_1);
                            break;
                        default:
                            if (i2 >= 32) {
                                _reportInvalidChar(i2);
                                break;
                            } else {
                                _throwUnquotedSpace(i2, "string value");
                                break;
                            }
                    }
                    if (i >= cArr.length) {
                        cArr = this._textBuffer.finishCurrentSegment();
                        i = 0;
                    }
                    cArr[i] = (char) i2;
                    i++;
                } else {
                    cArr[i] = (char) i2;
                    i++;
                    i2 = i3;
                }
            }
            this._inputPtr = i2;
        }
    }

    private final boolean _isNextTokenNameMaybe(int i, SerializableString serializableString) throws IOException {
        String _parseName = _parseName(i);
        this._parsingContext.setCurrentName(_parseName);
        boolean equals = _parseName.equals(serializableString.getValue());
        this._currToken = JsonToken.FIELD_NAME;
        int _skipColon = _skipColon();
        if (_skipColon == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
        } else {
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
                    _matchToken("false", 1);
                    _parseNegNumber = JsonToken.VALUE_FALSE;
                    break;
                case 110:
                    _matchToken("null", 1);
                    _parseNegNumber = JsonToken.VALUE_NULL;
                    break;
                case 116:
                    _matchToken("true", 1);
                    _parseNegNumber = JsonToken.VALUE_TRUE;
                    break;
                case 123:
                    _parseNegNumber = JsonToken.START_OBJECT;
                    break;
                default:
                    _parseNegNumber = _handleUnexpectedValue(_skipColon);
                    break;
            }
            this._nextToken = _parseNegNumber;
        }
        return equals;
    }

    private final void _isNextTokenNameYes(int i) throws IOException {
        this._currToken = JsonToken.FIELD_NAME;
        switch (i) {
            case Place.TYPE_ESTABLISHMENT /*34*/:
                this._tokenIncomplete = true;
                this._nextToken = JsonToken.VALUE_STRING;
            case Place.TYPE_HAIR_CARE /*45*/:
                this._nextToken = _parseNegNumber();
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
                this._nextToken = _parsePosNumber(i);
            case Place.TYPE_TAXI_STAND /*91*/:
                this._nextToken = JsonToken.START_ARRAY;
            case LocationRequest.PRIORITY_BALANCED_POWER_ACCURACY /*102*/:
                _matchToken("false", 1);
                this._nextToken = JsonToken.VALUE_FALSE;
            case 110:
                _matchToken("null", 1);
                this._nextToken = JsonToken.VALUE_NULL;
            case 116:
                _matchToken("true", 1);
                this._nextToken = JsonToken.VALUE_TRUE;
            case 123:
                this._nextToken = JsonToken.START_OBJECT;
            default:
                this._nextToken = _handleUnexpectedValue(i);
        }
    }

    private final void _matchToken2(String str, int i) throws IOException {
        int length = str.length();
        do {
            if ((this._inputPtr >= this._inputEnd && !loadMore()) || this._inputBuffer[this._inputPtr] != str.charAt(i)) {
                _reportInvalidToken(str.substring(0, i));
            }
            this._inputPtr++;
            i++;
        } while (i < length);
        if (this._inputPtr < this._inputEnd || loadMore()) {
            length = this._inputBuffer[this._inputPtr] & MotionEventCompat.ACTION_MASK;
            if (length >= 48 && length != 93 && length != 125) {
                _checkMatchEnd(str, i, length);
            }
        }
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
                jsonToken = _handleUnexpectedValue(i);
                this._currToken = jsonToken;
                return jsonToken;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final com.fasterxml.jackson.core.JsonToken _parseFloat(char[] r11, int r12, int r13, boolean r14, int r15) throws java.io.IOException {
        /*
        r10 = this;
        r1 = 0;
        r0 = 0;
        r5 = 0;
        r2 = 0;
        r3 = 46;
        if (r13 != r3) goto L_0x0122;
    L_0x0008:
        r1 = (char) r13;
        r11[r12] = r1;
        r1 = r12 + 1;
    L_0x000d:
        r3 = r10._inputPtr;
        r4 = r10._inputEnd;
        if (r3 < r4) goto L_0x00d3;
    L_0x0013:
        r3 = r10.loadMore();
        if (r3 != 0) goto L_0x00d3;
    L_0x0019:
        r2 = 1;
    L_0x001a:
        if (r0 != 0) goto L_0x0116;
    L_0x001c:
        r3 = "Decimal point not followed by a digit";
        r10.reportUnexpectedNumberChar(r13, r3);
        r6 = r0;
        r4 = r13;
        r5 = r2;
        r0 = r1;
        r1 = r11;
    L_0x0026:
        r2 = 0;
        r3 = 0;
        r7 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
        if (r4 == r7) goto L_0x0030;
    L_0x002c:
        r7 = 69;
        if (r4 != r7) goto L_0x011d;
    L_0x0030:
        r2 = r1.length;
        if (r0 < r2) goto L_0x003a;
    L_0x0033:
        r0 = r10._textBuffer;
        r1 = r0.finishCurrentSegment();
        r0 = 0;
    L_0x003a:
        r2 = r0 + 1;
        r4 = (char) r4;
        r1[r0] = r4;
        r0 = r10._inputPtr;
        r4 = r10._inputEnd;
        if (r0 < r4) goto L_0x0048;
    L_0x0045:
        r10.loadMoreGuaranteed();
    L_0x0048:
        r0 = r10._inputBuffer;
        r4 = r10._inputPtr;
        r7 = r4 + 1;
        r10._inputPtr = r7;
        r0 = r0[r4];
        r4 = r0 & 255;
        r0 = 45;
        if (r4 == r0) goto L_0x005c;
    L_0x0058:
        r0 = 43;
        if (r4 != r0) goto L_0x010d;
    L_0x005c:
        r0 = r1.length;
        if (r2 < r0) goto L_0x010a;
    L_0x005f:
        r0 = r10._textBuffer;
        r1 = r0.finishCurrentSegment();
        r0 = 0;
    L_0x0066:
        r2 = (char) r4;
        r1[r0] = r2;
        r2 = r10._inputPtr;
        r4 = r10._inputEnd;
        if (r2 < r4) goto L_0x0072;
    L_0x006f:
        r10.loadMoreGuaranteed();
    L_0x0072:
        r2 = r10._inputBuffer;
        r4 = r10._inputPtr;
        r7 = r4 + 1;
        r10._inputPtr = r7;
        r2 = r2[r4];
        r2 = r2 & 255;
        r0 = r0 + 1;
        r8 = r3;
        r3 = r2;
        r2 = r8;
        r9 = r0;
        r0 = r1;
        r1 = r9;
    L_0x0086:
        r4 = 57;
        if (r3 > r4) goto L_0x0113;
    L_0x008a:
        r4 = 48;
        if (r3 < r4) goto L_0x0113;
    L_0x008e:
        r2 = r2 + 1;
        r4 = r0.length;
        if (r1 < r4) goto L_0x009a;
    L_0x0093:
        r0 = r10._textBuffer;
        r0 = r0.finishCurrentSegment();
        r1 = 0;
    L_0x009a:
        r4 = r1 + 1;
        r7 = (char) r3;
        r0[r1] = r7;
        r1 = r10._inputPtr;
        r7 = r10._inputEnd;
        if (r1 < r7) goto L_0x00fa;
    L_0x00a5:
        r1 = r10.loadMore();
        if (r1 != 0) goto L_0x00fa;
    L_0x00ab:
        r5 = 1;
        r0 = r2;
        r1 = r4;
        r2 = r5;
    L_0x00af:
        if (r0 != 0) goto L_0x00b6;
    L_0x00b1:
        r4 = "Exponent indicator not followed by a digit";
        r10.reportUnexpectedNumberChar(r3, r4);
    L_0x00b6:
        if (r2 != 0) goto L_0x00c9;
    L_0x00b8:
        r2 = r10._inputPtr;
        r2 = r2 + -1;
        r10._inputPtr = r2;
        r2 = r10._parsingContext;
        r2 = r2.inRoot();
        if (r2 == 0) goto L_0x00c9;
    L_0x00c6:
        r10._verifyRootSpace(r3);
    L_0x00c9:
        r2 = r10._textBuffer;
        r2.setCurrentLength(r1);
        r0 = r10.resetFloat(r14, r15, r6, r0);
        return r0;
    L_0x00d3:
        r3 = r10._inputBuffer;
        r4 = r10._inputPtr;
        r5 = r4 + 1;
        r10._inputPtr = r5;
        r3 = r3[r4];
        r13 = r3 & 255;
        r3 = 48;
        if (r13 < r3) goto L_0x001a;
    L_0x00e3:
        r3 = 57;
        if (r13 > r3) goto L_0x001a;
    L_0x00e7:
        r0 = r0 + 1;
        r3 = r11.length;
        if (r1 < r3) goto L_0x00f3;
    L_0x00ec:
        r1 = r10._textBuffer;
        r11 = r1.finishCurrentSegment();
        r1 = 0;
    L_0x00f3:
        r3 = (char) r13;
        r11[r1] = r3;
        r1 = r1 + 1;
        goto L_0x000d;
    L_0x00fa:
        r1 = r10._inputBuffer;
        r3 = r10._inputPtr;
        r7 = r3 + 1;
        r10._inputPtr = r7;
        r1 = r1[r3];
        r1 = r1 & 255;
        r3 = r1;
        r1 = r4;
        goto L_0x0086;
    L_0x010a:
        r0 = r2;
        goto L_0x0066;
    L_0x010d:
        r0 = r1;
        r1 = r2;
        r2 = r3;
        r3 = r4;
        goto L_0x0086;
    L_0x0113:
        r0 = r2;
        r2 = r5;
        goto L_0x00af;
    L_0x0116:
        r6 = r0;
        r4 = r13;
        r5 = r2;
        r0 = r1;
        r1 = r11;
        goto L_0x0026;
    L_0x011d:
        r1 = r0;
        r3 = r4;
        r0 = r2;
        r2 = r5;
        goto L_0x00b6;
    L_0x0122:
        r6 = r1;
        r4 = r13;
        r0 = r12;
        r1 = r11;
        goto L_0x0026;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._parseFloat(char[], int, int, boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final com.fasterxml.jackson.core.JsonToken _parseNumber2(char[] r7, int r8, boolean r9, int r10) throws java.io.IOException {
        /*
        r6 = this;
        r5 = r10;
        r2 = r8;
        r1 = r7;
    L_0x0003:
        r0 = r6._inputPtr;
        r3 = r6._inputEnd;
        if (r0 < r3) goto L_0x0019;
    L_0x0009:
        r0 = r6.loadMore();
        if (r0 != 0) goto L_0x0019;
    L_0x000f:
        r0 = r6._textBuffer;
        r0.setCurrentLength(r2);
        r0 = r6.resetInt(r9, r5);
    L_0x0018:
        return r0;
    L_0x0019:
        r0 = r6._inputBuffer;
        r3 = r6._inputPtr;
        r4 = r3 + 1;
        r6._inputPtr = r4;
        r0 = r0[r3];
        r3 = r0 & 255;
        r0 = 57;
        if (r3 > r0) goto L_0x002d;
    L_0x0029:
        r0 = 48;
        if (r3 >= r0) goto L_0x0040;
    L_0x002d:
        r0 = 46;
        if (r3 == r0) goto L_0x0039;
    L_0x0031:
        r0 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
        if (r3 == r0) goto L_0x0039;
    L_0x0035:
        r0 = 69;
        if (r3 != r0) goto L_0x0052;
    L_0x0039:
        r0 = r6;
        r4 = r9;
        r0 = r0._parseFloat(r1, r2, r3, r4, r5);
        goto L_0x0018;
    L_0x0040:
        r0 = r1.length;
        if (r2 < r0) goto L_0x004a;
    L_0x0043:
        r0 = r6._textBuffer;
        r1 = r0.finishCurrentSegment();
        r2 = 0;
    L_0x004a:
        r0 = (char) r3;
        r1[r2] = r0;
        r5 = r5 + 1;
        r2 = r2 + 1;
        goto L_0x0003;
    L_0x0052:
        r0 = r6._inputPtr;
        r0 = r0 + -1;
        r6._inputPtr = r0;
        r0 = r6._textBuffer;
        r0.setCurrentLength(r2);
        r0 = r6._parsingContext;
        r0 = r0.inRoot();
        if (r0 == 0) goto L_0x0074;
    L_0x0065:
        r0 = r6._inputBuffer;
        r1 = r6._inputPtr;
        r2 = r1 + 1;
        r6._inputPtr = r2;
        r0 = r0[r1];
        r0 = r0 & 255;
        r6._verifyRootSpace(r0);
    L_0x0074:
        r0 = r6.resetInt(r9, r5);
        goto L_0x0018;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._parseNumber2(char[], int, boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    private final void _skipCComment() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            if (this._inputPtr < this._inputEnd || loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                int i2 = bArr[i] & MotionEventCompat.ACTION_MASK;
                i = inputCodeComment[i2];
                if (i != 0) {
                    switch (i) {
                        case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                            _skipUtf8_2(i2);
                            continue;
                        case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                            _skipUtf8_3(i2);
                            continue;
                        case Place.TYPE_AQUARIUM /*4*/:
                            _skipUtf8_4(i2);
                            continue;
                        case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                            this._currInputRow++;
                            this._currInputRowStart = this._inputPtr;
                            continue;
                        case Place.TYPE_BOWLING_ALLEY /*13*/:
                            _skipCR();
                            continue;
                        case Place.TYPE_GENERAL_CONTRACTOR /*42*/:
                            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                                break;
                            } else if (this._inputBuffer[this._inputPtr] == 47) {
                                this._inputPtr++;
                                return;
                            } else {
                                continue;
                            }
                        default:
                            _reportInvalidChar(i2);
                            continue;
                    }
                }
            }
            _reportInvalidEOF(" in a comment");
            return;
        }
    }

    private final int _skipColon() throws IOException {
        if (this._inputPtr + 4 >= this._inputEnd) {
            return _skipColon2(false);
        }
        byte b = this._inputBuffer[this._inputPtr];
        byte[] bArr;
        int i;
        if (b == 58) {
            bArr = this._inputBuffer;
            i = this._inputPtr + 1;
            this._inputPtr = i;
            b = bArr[i];
            if (b <= (byte) 32) {
                if (b == (byte) 32 || b == (byte) 9) {
                    bArr = this._inputBuffer;
                    i = this._inputPtr + 1;
                    this._inputPtr = i;
                    b = bArr[i];
                    if (b > (byte) 32) {
                        if (b == (byte) 47 || b == (byte) 35) {
                            return _skipColon2(true);
                        }
                        this._inputPtr++;
                        return b;
                    }
                }
                return _skipColon2(true);
            } else if (b == (byte) 47 || b == (byte) 35) {
                return _skipColon2(true);
            } else {
                this._inputPtr++;
                return b;
            }
        }
        if (b == (byte) 32 || b == (byte) 9) {
            bArr = this._inputBuffer;
            i = this._inputPtr + 1;
            this._inputPtr = i;
            b = bArr[i];
        }
        if (b != 58) {
            return _skipColon2(false);
        }
        bArr = this._inputBuffer;
        i = this._inputPtr + 1;
        this._inputPtr = i;
        b = bArr[i];
        if (b <= (byte) 32) {
            if (b == (byte) 32 || b == (byte) 9) {
                bArr = this._inputBuffer;
                i = this._inputPtr + 1;
                this._inputPtr = i;
                b = bArr[i];
                if (b > (byte) 32) {
                    if (b == (byte) 47 || b == (byte) 35) {
                        return _skipColon2(true);
                    }
                    this._inputPtr++;
                    return b;
                }
            }
            return _skipColon2(true);
        } else if (b == (byte) 47 || b == (byte) 35) {
            return _skipColon2(true);
        } else {
            this._inputPtr++;
            return b;
        }
    }

    private final int _skipColon2(boolean z) throws IOException {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                break;
            }
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            int i2 = bArr[i] & MotionEventCompat.ACTION_MASK;
            if (i2 > 32) {
                if (i2 == 47) {
                    _skipComment();
                } else if (i2 != 35 || !_skipYAMLComment()) {
                    if (z) {
                        return i2;
                    }
                    if (i2 != 58) {
                        if (i2 < 32) {
                            _throwInvalidSpace(i2);
                        }
                        _reportUnexpectedChar(i2, "was expecting a colon to separate field name and value");
                    }
                    z = true;
                }
            } else if (i2 != 32) {
                if (i2 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i2 == 13) {
                    _skipCR();
                } else if (i2 != 9) {
                    _throwInvalidSpace(i2);
                }
            }
        }
        throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.getTypeDesc() + " entries");
    }

    private final int _skipColonFast(int i) throws IOException {
        int i2 = i + 1;
        byte b = this._inputBuffer[i];
        int i3;
        int i4;
        if (b == 58) {
            i3 = i2 + 1;
            b = this._inputBuffer[i2];
            if (b > (byte) 32) {
                if (!(b == (byte) 47 || b == (byte) 35)) {
                    this._inputPtr = i3;
                    return b;
                }
                i4 = i3;
            } else {
                if (b == (byte) 32 || b == (byte) 9) {
                    i2 = i3 + 1;
                    b = this._inputBuffer[i3];
                    if (b <= (byte) 32 || b == (byte) 47 || b == (byte) 35) {
                        i4 = i2;
                    } else {
                        this._inputPtr = i2;
                        return b;
                    }
                }
                i4 = i3;
            }
            this._inputPtr = i4 - 1;
            return _skipColon2(true);
        }
        if (b == (byte) 32 || b == (byte) 9) {
            b = this._inputBuffer[i2];
            i2++;
        }
        if (b == 58) {
            i3 = i2 + 1;
            b = this._inputBuffer[i2];
            if (b > (byte) 32) {
                if (!(b == (byte) 47 || b == (byte) 35)) {
                    this._inputPtr = i3;
                    return b;
                }
                i4 = i3;
            } else {
                if (b == (byte) 32 || b == (byte) 9) {
                    i2 = i3 + 1;
                    b = this._inputBuffer[i3];
                    if (b <= (byte) 32 || b == (byte) 47 || b == (byte) 35) {
                        i4 = i2;
                    } else {
                        this._inputPtr = i2;
                        return b;
                    }
                }
                i4 = i3;
            }
            this._inputPtr = i4 - 1;
            return _skipColon2(true);
        }
        this._inputPtr = i2 - 1;
        return _skipColon2(false);
    }

    private final void _skipComment() throws IOException {
        if (!isEnabled(Feature.ALLOW_COMMENTS)) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(" in a comment");
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        int i2 = bArr[i] & MotionEventCompat.ACTION_MASK;
        if (i2 == 47) {
            _skipLine();
        } else if (i2 == 42) {
            _skipCComment();
        } else {
            _reportUnexpectedChar(i2, "was expecting either '*' or '/' for a comment");
        }
    }

    private final void _skipLine() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            if (this._inputPtr < this._inputEnd || loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                int i2 = bArr[i] & MotionEventCompat.ACTION_MASK;
                i = inputCodeComment[i2];
                if (i != 0) {
                    switch (i) {
                        case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                            _skipUtf8_2(i2);
                            break;
                        case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                            _skipUtf8_3(i2);
                            break;
                        case Place.TYPE_AQUARIUM /*4*/:
                            _skipUtf8_4(i2);
                            break;
                        case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                            this._currInputRow++;
                            this._currInputRowStart = this._inputPtr;
                            return;
                        case Place.TYPE_BOWLING_ALLEY /*13*/:
                            _skipCR();
                            return;
                        case Place.TYPE_GENERAL_CONTRACTOR /*42*/:
                            break;
                        default:
                            if (i >= 0) {
                                break;
                            }
                            _reportInvalidChar(i2);
                            break;
                    }
                }
            } else {
                return;
            }
        }
    }

    private final void _skipUtf8_2(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(b & MotionEventCompat.ACTION_MASK, this._inputPtr);
        }
    }

    private final void _skipUtf8_3(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(b & MotionEventCompat.ACTION_MASK, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        bArr = this._inputBuffer;
        i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        b = bArr[i2];
        if ((b & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(b & MotionEventCompat.ACTION_MASK, this._inputPtr);
        }
    }

    private final void _skipUtf8_4(int i) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(b & MotionEventCompat.ACTION_MASK, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        bArr = this._inputBuffer;
        i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        b = bArr[i2];
        if ((b & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(b & MotionEventCompat.ACTION_MASK, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        bArr = this._inputBuffer;
        i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        b = bArr[i2];
        if ((b & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(b & MotionEventCompat.ACTION_MASK, this._inputPtr);
        }
    }

    private final int _skipWS() throws IOException {
        while (this._inputPtr < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            int i2 = bArr[i] & MotionEventCompat.ACTION_MASK;
            if (i2 > 32) {
                if (i2 != 47 && i2 != 35) {
                    return i2;
                }
                this._inputPtr--;
                return _skipWS2();
            } else if (i2 != 32) {
                if (i2 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i2 == 13) {
                    _skipCR();
                } else if (i2 != 9) {
                    _throwInvalidSpace(i2);
                }
            }
        }
        return _skipWS2();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int _skipWS2() throws java.io.IOException {
        /*
        r4 = this;
        r3 = 32;
    L_0x0002:
        r0 = r4._inputPtr;
        r1 = r4._inputEnd;
        if (r0 < r1) goto L_0x000e;
    L_0x0008:
        r0 = r4.loadMore();
        if (r0 == 0) goto L_0x0050;
    L_0x000e:
        r0 = r4._inputBuffer;
        r1 = r4._inputPtr;
        r2 = r1 + 1;
        r4._inputPtr = r2;
        r0 = r0[r1];
        r0 = r0 & 255;
        if (r0 <= r3) goto L_0x002f;
    L_0x001c:
        r1 = 47;
        if (r0 != r1) goto L_0x0024;
    L_0x0020:
        r4._skipComment();
        goto L_0x0002;
    L_0x0024:
        r1 = 35;
        if (r0 != r1) goto L_0x002e;
    L_0x0028:
        r1 = r4._skipYAMLComment();
        if (r1 != 0) goto L_0x0002;
    L_0x002e:
        return r0;
    L_0x002f:
        if (r0 == r3) goto L_0x0002;
    L_0x0031:
        r1 = 10;
        if (r0 != r1) goto L_0x0040;
    L_0x0035:
        r0 = r4._currInputRow;
        r0 = r0 + 1;
        r4._currInputRow = r0;
        r0 = r4._inputPtr;
        r4._currInputRowStart = r0;
        goto L_0x0002;
    L_0x0040:
        r1 = 13;
        if (r0 != r1) goto L_0x0048;
    L_0x0044:
        r4._skipCR();
        goto L_0x0002;
    L_0x0048:
        r1 = 9;
        if (r0 == r1) goto L_0x0002;
    L_0x004c:
        r4._throwInvalidSpace(r0);
        goto L_0x0002;
    L_0x0050:
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
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._skipWS2():int");
    }

    private final int _skipWSOrEnd() throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            return _eofAsNextChar();
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        int i2 = bArr[i] & MotionEventCompat.ACTION_MASK;
        if (i2 <= 32) {
            if (i2 != 32) {
                if (i2 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i2 == 13) {
                    _skipCR();
                } else if (i2 != 9) {
                    _throwInvalidSpace(i2);
                }
            }
            while (this._inputPtr < this._inputEnd) {
                bArr = this._inputBuffer;
                i = this._inputPtr;
                this._inputPtr = i + 1;
                i2 = bArr[i] & MotionEventCompat.ACTION_MASK;
                if (i2 > 32) {
                    if (i2 != 47 && i2 != 35) {
                        return i2;
                    }
                    this._inputPtr--;
                    return _skipWSOrEnd2();
                } else if (i2 != 32) {
                    if (i2 == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (i2 == 13) {
                        _skipCR();
                    } else if (i2 != 9) {
                        _throwInvalidSpace(i2);
                    }
                }
            }
            return _skipWSOrEnd2();
        } else if (i2 != 47 && i2 != 35) {
            return i2;
        } else {
            this._inputPtr--;
            return _skipWSOrEnd2();
        }
    }

    private final int _skipWSOrEnd2() throws IOException {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                return _eofAsNextChar();
            }
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            int i2 = bArr[i] & MotionEventCompat.ACTION_MASK;
            if (i2 > 32) {
                if (i2 == 47) {
                    _skipComment();
                } else if (i2 != 35 || !_skipYAMLComment()) {
                    return i2;
                }
            } else if (i2 != 32) {
                if (i2 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (i2 == 13) {
                    _skipCR();
                } else if (i2 != 9) {
                    _throwInvalidSpace(i2);
                }
            }
        }
    }

    private final boolean _skipYAMLComment() throws IOException {
        if (!isEnabled(Feature.ALLOW_YAML_COMMENTS)) {
            return false;
        }
        _skipLine();
        return true;
    }

    private final int _verifyNoLeadingZeroes() throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            return 48;
        }
        int i = this._inputBuffer[this._inputPtr] & MotionEventCompat.ACTION_MASK;
        if (i < 48 || i > 57) {
            return 48;
        }
        if (!isEnabled(Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
            reportInvalidNumber("Leading zeroes not allowed");
        }
        this._inputPtr++;
        if (i == 48) {
            do {
                if (this._inputPtr < this._inputEnd || loadMore()) {
                    i = this._inputBuffer[this._inputPtr] & MotionEventCompat.ACTION_MASK;
                    if (i < 48 || i > 57) {
                        return 48;
                    }
                    this._inputPtr++;
                }
            } while (i == 48);
            return i;
        }
        return i;
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

    private final String addName(int[] iArr, int i, int i2) throws JsonParseException {
        int i3;
        int i4 = ((i << 2) - 4) + i2;
        if (i2 < 4) {
            i3 = iArr[i - 1];
            iArr[i - 1] = i3 << ((4 - i2) << 3);
        } else {
            i3 = 0;
        }
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int i5 = 0;
        int i6 = 0;
        while (i6 < i4) {
            int i7;
            int i8 = (iArr[i6 >> 2] >> ((3 - (i6 & 3)) << 3)) & MotionEventCompat.ACTION_MASK;
            i6++;
            if (i8 > TransportMediator.KEYCODE_MEDIA_PAUSE) {
                int i9;
                if ((i8 & 224) == 192) {
                    i9 = 1;
                    i8 &= 31;
                } else if ((i8 & 240) == 224) {
                    i9 = 2;
                    i8 &= 15;
                } else if ((i8 & 248) == 240) {
                    i9 = 3;
                    i8 &= 7;
                } else {
                    _reportInvalidInitial(i8);
                    i9 = 1;
                    i8 = 1;
                }
                if (i6 + i9 > i4) {
                    _reportInvalidEOF(" in field name");
                }
                int i10 = iArr[i6 >> 2] >> ((3 - (i6 & 3)) << 3);
                i7 = i6 + 1;
                if ((i10 & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
                    _reportInvalidOther(i10);
                }
                i8 = (i8 << 6) | (i10 & 63);
                if (i9 > 1) {
                    i6 = iArr[i7 >> 2] >> ((3 - (i7 & 3)) << 3);
                    i7++;
                    if ((i6 & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
                        _reportInvalidOther(i6);
                    }
                    i8 = (i8 << 6) | (i6 & 63);
                    if (i9 > 2) {
                        i6 = iArr[i7 >> 2] >> ((3 - (i7 & 3)) << 3);
                        i7++;
                        if ((i6 & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
                            _reportInvalidOther(i6 & MotionEventCompat.ACTION_MASK);
                        }
                        i8 = (i8 << 6) | (i6 & 63);
                    }
                }
                if (i9 > 2) {
                    i8 -= AccessibilityNodeInfoCompat.ACTION_CUT;
                    if (i5 >= emptyAndGetCurrentSegment.length) {
                        emptyAndGetCurrentSegment = this._textBuffer.expandCurrentSegment();
                    }
                    i6 = i5 + 1;
                    emptyAndGetCurrentSegment[i5] = (char) (GeneratorBase.SURR1_FIRST + (i8 >> 10));
                    i8 = (i8 & Place.TYPE_SUBLOCALITY_LEVEL_1) | GeneratorBase.SURR2_FIRST;
                    i5 = i7;
                    if (i6 >= emptyAndGetCurrentSegment.length) {
                        emptyAndGetCurrentSegment = this._textBuffer.expandCurrentSegment();
                    }
                    i7 = i6 + 1;
                    emptyAndGetCurrentSegment[i6] = (char) i8;
                    i6 = i5;
                    i5 = i7;
                } else {
                    i6 = i7;
                }
            }
            int i11 = i5;
            i5 = i6;
            i6 = i11;
            if (i6 >= emptyAndGetCurrentSegment.length) {
                emptyAndGetCurrentSegment = this._textBuffer.expandCurrentSegment();
            }
            i7 = i6 + 1;
            emptyAndGetCurrentSegment[i6] = (char) i8;
            i6 = i5;
            i5 = i7;
        }
        String str = new String(emptyAndGetCurrentSegment, 0, i5);
        if (i2 < 4) {
            iArr[i - 1] = i3;
        }
        return this._symbols.addName(str, iArr, i);
    }

    private final String findName(int i, int i2) throws JsonParseException {
        int pad = pad(i, i2);
        String findName = this._symbols.findName(pad);
        if (findName != null) {
            return findName;
        }
        this._quadBuffer[0] = pad;
        return addName(this._quadBuffer, 1, i2);
    }

    private final String findName(int i, int i2, int i3) throws JsonParseException {
        int pad = pad(i2, i3);
        String findName = this._symbols.findName(i, pad);
        if (findName != null) {
            return findName;
        }
        this._quadBuffer[0] = i;
        this._quadBuffer[1] = pad;
        return addName(this._quadBuffer, 2, i3);
    }

    private final String findName(int i, int i2, int i3, int i4) throws JsonParseException {
        int pad = pad(i3, i4);
        String findName = this._symbols.findName(i, i2, pad);
        if (findName != null) {
            return findName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = pad(pad, i4);
        return addName(iArr, 3, i4);
    }

    private final String findName(int[] iArr, int i, int i2, int i3) throws JsonParseException {
        if (i >= iArr.length) {
            iArr = growArrayBy(iArr, iArr.length);
            this._quadBuffer = iArr;
        }
        int i4 = i + 1;
        iArr[i] = pad(i2, i3);
        String findName = this._symbols.findName(iArr, i4);
        return findName == null ? addName(iArr, i4, i3) : findName;
    }

    public static int[] growArrayBy(int[] iArr, int i) {
        return iArr == null ? new int[i] : Arrays.copyOf(iArr, iArr.length + i);
    }

    private int nextByte() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        return bArr[i] & MotionEventCompat.ACTION_MASK;
    }

    private static final int pad(int i, int i2) {
        return i2 == 4 ? i : i | (-1 << (i2 << 3));
    }

    private final String parseName(int i, int i2, int i3) throws IOException {
        return parseEscapedName(this._quadBuffer, 0, i, i2, i3);
    }

    private final String parseName(int i, int i2, int i3, int i4) throws IOException {
        this._quadBuffer[0] = i;
        return parseEscapedName(this._quadBuffer, 1, i2, i3, i4);
    }

    private final String parseName(int i, int i2, int i3, int i4, int i5) throws IOException {
        this._quadBuffer[0] = i;
        this._quadBuffer[1] = i2;
        return parseEscapedName(this._quadBuffer, 2, i3, i4, i5);
    }

    protected void _closeInput() throws IOException {
        if (this._inputStream != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(Feature.AUTO_CLOSE_SOURCE)) {
                this._inputStream.close();
            }
            this._inputStream = null;
        }
    }

    protected final byte[] _decodeBase64(Base64Variant base64Variant) throws IOException {
        int decodeBase64Char;
        ByteArrayBuilder _getByteArrayBuilder = _getByteArrayBuilder();
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
            }
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            i = bArr[i] & MotionEventCompat.ACTION_MASK;
            if (i > 32) {
                decodeBase64Char = base64Variant.decodeBase64Char(i);
                if (decodeBase64Char < 0) {
                    if (i == 34) {
                        return _getByteArrayBuilder.toByteArray();
                    }
                    decodeBase64Char = _decodeBase64Escape(base64Variant, i, 0);
                    if (decodeBase64Char < 0) {
                        continue;
                    }
                }
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                byte[] bArr2 = this._inputBuffer;
                int i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                i2 = bArr2[i2] & MotionEventCompat.ACTION_MASK;
                i = base64Variant.decodeBase64Char(i2);
                if (i < 0) {
                    i = _decodeBase64Escape(base64Variant, i2, 1);
                }
                i |= decodeBase64Char << 6;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                bArr = this._inputBuffer;
                i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                i2 = bArr[i2] & MotionEventCompat.ACTION_MASK;
                decodeBase64Char = base64Variant.decodeBase64Char(i2);
                if (decodeBase64Char < 0) {
                    if (decodeBase64Char != -2) {
                        if (i2 != 34 || base64Variant.usesPadding()) {
                            decodeBase64Char = _decodeBase64Escape(base64Variant, i2, 2);
                        } else {
                            _getByteArrayBuilder.append(i >> 4);
                            return _getByteArrayBuilder.toByteArray();
                        }
                    }
                    if (decodeBase64Char == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            loadMoreGuaranteed();
                        }
                        bArr = this._inputBuffer;
                        i2 = this._inputPtr;
                        this._inputPtr = i2 + 1;
                        decodeBase64Char = bArr[i2] & MotionEventCompat.ACTION_MASK;
                        if (!base64Variant.usesPaddingChar(decodeBase64Char)) {
                            break;
                        }
                        _getByteArrayBuilder.append(i >> 4);
                    }
                }
                i = (i << 6) | decodeBase64Char;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                bArr = this._inputBuffer;
                i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                i2 = bArr[i2] & MotionEventCompat.ACTION_MASK;
                decodeBase64Char = base64Variant.decodeBase64Char(i2);
                if (decodeBase64Char < 0) {
                    if (decodeBase64Char != -2) {
                        if (i2 != 34 || base64Variant.usesPadding()) {
                            decodeBase64Char = _decodeBase64Escape(base64Variant, i2, 3);
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
        throw reportInvalidBase64Char(base64Variant, decodeBase64Char, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
    }

    protected int _decodeCharForError(int i) throws IOException {
        int i2 = i & MotionEventCompat.ACTION_MASK;
        if (i2 <= TransportMediator.KEYCODE_MEDIA_PAUSE) {
            return i2;
        }
        Object obj;
        int i3;
        if ((i2 & 224) == 192) {
            i2 &= 31;
            obj = 1;
        } else if ((i2 & 240) == 224) {
            i2 &= 15;
            i3 = 2;
        } else if ((i2 & 248) == 240) {
            i2 &= 7;
            obj = 3;
        } else {
            _reportInvalidInitial(i2 & MotionEventCompat.ACTION_MASK);
            i3 = 1;
        }
        int nextByte = nextByte();
        if ((nextByte & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(nextByte & MotionEventCompat.ACTION_MASK);
        }
        i2 = (i2 << 6) | (nextByte & 63);
        if (obj <= 1) {
            return i2;
        }
        int nextByte2 = nextByte();
        if ((nextByte2 & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(nextByte2 & MotionEventCompat.ACTION_MASK);
        }
        i2 = (i2 << 6) | (nextByte2 & 63);
        if (obj <= 2) {
            return i2;
        }
        i3 = nextByte();
        if ((i3 & 192) != AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            _reportInvalidOther(i3 & MotionEventCompat.ACTION_MASK);
        }
        return (i2 << 6) | (i3 & 63);
    }

    protected char _decodeEscaped() throws IOException {
        int i = 0;
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(" in character escape sequence");
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        switch (b) {
            case Place.TYPE_ESTABLISHMENT /*34*/:
            case Place.TYPE_HEALTH /*47*/:
            case Place.TYPE_TRAIN_STATION /*92*/:
                return (char) b;
            case (byte) 98:
                return '\b';
            case LocationRequest.PRIORITY_BALANCED_POWER_ACCURACY /*102*/:
                return '\f';
            case (byte) 110:
                return '\n';
            case (byte) 114:
                return '\r';
            case (byte) 116:
                return '\t';
            case (byte) 117:
                int i3 = 0;
                while (i < 4) {
                    if (this._inputPtr >= this._inputEnd && !loadMore()) {
                        _reportInvalidEOF(" in character escape sequence");
                    }
                    byte[] bArr2 = this._inputBuffer;
                    int i4 = this._inputPtr;
                    this._inputPtr = i4 + 1;
                    byte b2 = bArr2[i4];
                    i4 = CharTypes.charToHex(b2);
                    if (i4 < 0) {
                        _reportUnexpectedChar(b2, "expected a hex-digit for character escape sequence");
                    }
                    i3 = (i3 << 4) | i4;
                    i++;
                }
                return (char) i3;
            default:
                return _handleUnrecognizedCharacterEscape((char) _decodeCharForError(b));
        }
    }

    protected String _finishAndReturnString() throws IOException {
        int i = this._inputPtr;
        if (i >= this._inputEnd) {
            loadMoreGuaranteed();
            i = this._inputPtr;
        }
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int min = Math.min(this._inputEnd, emptyAndGetCurrentSegment.length + i);
        byte[] bArr = this._inputBuffer;
        int i2 = 0;
        while (i < min) {
            int i3 = bArr[i] & MotionEventCompat.ACTION_MASK;
            if (iArr[i3] != 0) {
                if (i3 == 34) {
                    this._inputPtr = i + 1;
                    return this._textBuffer.setCurrentAndReturn(i2);
                }
                this._inputPtr = i;
                _finishString2(emptyAndGetCurrentSegment, i2);
                return this._textBuffer.contentsAsString();
            }
            i++;
            emptyAndGetCurrentSegment[i2] = (char) i3;
            i2++;
        }
        this._inputPtr = i;
        _finishString2(emptyAndGetCurrentSegment, i2);
        return this._textBuffer.contentsAsString();
    }

    protected void _finishString() throws IOException {
        int i = this._inputPtr;
        if (i >= this._inputEnd) {
            loadMoreGuaranteed();
            i = this._inputPtr;
        }
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int min = Math.min(this._inputEnd, emptyAndGetCurrentSegment.length + i);
        byte[] bArr = this._inputBuffer;
        int i2 = 0;
        while (i < min) {
            int i3 = bArr[i] & MotionEventCompat.ACTION_MASK;
            if (iArr[i3] != 0) {
                if (i3 == 34) {
                    this._inputPtr = i + 1;
                    this._textBuffer.setCurrentLength(i2);
                    return;
                }
                this._inputPtr = i;
                _finishString2(emptyAndGetCurrentSegment, i2);
            }
            i++;
            emptyAndGetCurrentSegment[i2] = (char) i3;
            i2++;
        }
        this._inputPtr = i;
        _finishString2(emptyAndGetCurrentSegment, i2);
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
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        int i = 0;
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
            }
            if (i >= emptyAndGetCurrentSegment.length) {
                emptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                i = 0;
            }
            int i2 = this._inputEnd;
            int length = this._inputPtr + (emptyAndGetCurrentSegment.length - i);
            if (length >= i2) {
                length = i2;
            }
            while (this._inputPtr < length) {
                i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                i2 = bArr[i2] & MotionEventCompat.ACTION_MASK;
                if (i2 != 39 && iArr[i2] == 0) {
                    emptyAndGetCurrentSegment[i] = (char) i2;
                    i++;
                } else if (i2 == 39) {
                    this._textBuffer.setCurrentLength(i);
                    return JsonToken.VALUE_STRING;
                } else {
                    switch (iArr[i2]) {
                        case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                            if (i2 == 39) {
                                length = i2;
                                break;
                            }
                            length = _decodeEscaped();
                            break;
                        case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                            length = _decodeUtf8_2(i2);
                            break;
                        case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                            if (this._inputEnd - this._inputPtr < 2) {
                                length = _decodeUtf8_3(i2);
                                break;
                            }
                            length = _decodeUtf8_3fast(i2);
                            break;
                        case Place.TYPE_AQUARIUM /*4*/:
                            i2 = _decodeUtf8_4(i2);
                            length = i + 1;
                            emptyAndGetCurrentSegment[i] = (char) (GeneratorBase.SURR1_FIRST | (i2 >> 10));
                            if (length >= emptyAndGetCurrentSegment.length) {
                                emptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                                i = 0;
                            } else {
                                i = length;
                            }
                            length = GeneratorBase.SURR2_FIRST | (i2 & Place.TYPE_SUBLOCALITY_LEVEL_1);
                            break;
                        default:
                            if (i2 < 32) {
                                _throwUnquotedSpace(i2, "string value");
                            }
                            _reportInvalidChar(i2);
                            length = i2;
                            break;
                    }
                    if (i >= emptyAndGetCurrentSegment.length) {
                        emptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                        i = 0;
                    }
                    emptyAndGetCurrentSegment[i] = (char) length;
                    i++;
                }
            }
        }
    }

    protected JsonToken _handleInvalidNumberStart(int i, boolean z) throws IOException {
        int i2 = i;
        while (i2 == 73) {
            String str;
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOFInValue();
            }
            byte[] bArr = this._inputBuffer;
            int i3 = this._inputPtr;
            this._inputPtr = i3 + 1;
            byte b = bArr[i3];
            if (b != 78) {
                if (b != 110) {
                    i2 = b;
                    break;
                }
                str = z ? "-Infinity" : "+Infinity";
            } else {
                str = z ? "-INF" : "+INF";
            }
            _matchToken(str, 3);
            if (isEnabled(Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                return resetAsNaN(str, z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY);
            }
            _reportError("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            byte b2 = b;
        }
        reportUnexpectedNumberChar(i2, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
    }

    protected String _handleOddName(int i) throws IOException {
        int i2 = 0;
        if (i == 39 && isEnabled(Feature.ALLOW_SINGLE_QUOTES)) {
            return _parseAposName();
        }
        int[] iArr;
        if (!isEnabled(Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
            _reportUnexpectedChar((char) _decodeCharForError(i), "was expecting double-quote to start field name");
        }
        int[] inputCodeUtf8JsNames = CharTypes.getInputCodeUtf8JsNames();
        if (inputCodeUtf8JsNames[i] != 0) {
            _reportUnexpectedChar(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int[] iArr2 = this._quadBuffer;
        int i3 = 0;
        int i4 = i;
        int i5 = 0;
        while (true) {
            if (i2 < 4) {
                i2++;
                i4 |= i3 << 8;
            } else {
                if (i5 >= iArr2.length) {
                    iArr2 = growArrayBy(iArr2, iArr2.length);
                    this._quadBuffer = iArr2;
                }
                int i6 = i5 + 1;
                iArr2[i5] = i3;
                i2 = 1;
                i5 = i6;
            }
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(" in field name");
            }
            i = this._inputBuffer[this._inputPtr] & MotionEventCompat.ACTION_MASK;
            if (inputCodeUtf8JsNames[i] != 0) {
                break;
            }
            this._inputPtr++;
            i3 = i4;
            i4 = i;
        }
        if (i2 > 0) {
            if (i5 >= iArr2.length) {
                iArr2 = growArrayBy(iArr2, iArr2.length);
                this._quadBuffer = iArr2;
            }
            iArr2[i5] = i4;
            i5++;
            iArr = iArr2;
        } else {
            iArr = iArr2;
        }
        String findName = this._symbols.findName(iArr, i5);
        return findName == null ? addName(iArr, i5, i2) : findName;
    }

    protected JsonToken _handleUnexpectedValue(int i) throws IOException {
        switch (i) {
            case Place.TYPE_FUNERAL_HOME /*39*/:
                break;
            case Place.TYPE_GROCERY_OR_SUPERMARKET /*43*/:
                if (this._inputPtr >= this._inputEnd && !loadMore()) {
                    _reportInvalidEOFInValue();
                }
                byte[] bArr = this._inputBuffer;
                int i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                return _handleInvalidNumberStart(bArr[i2] & MotionEventCompat.ACTION_MASK, false);
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
            case Place.TYPE_TRAVEL_AGENCY /*93*/:
            case 125:
                _reportUnexpectedChar(i, "expected a value");
                break;
        }
        if (isEnabled(Feature.ALLOW_SINGLE_QUOTES)) {
            return _handleApos();
        }
        if (Character.isJavaIdentifierStart(i)) {
            _reportInvalidToken(BuildConfig.FLAVOR + ((char) i), "('true', 'false' or 'null')");
        }
        _reportUnexpectedChar(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
    }

    protected final boolean _loadToHaveAtLeast(int i) throws IOException {
        if (this._inputStream == null) {
            return false;
        }
        int i2 = this._inputEnd - this._inputPtr;
        if (i2 <= 0 || this._inputPtr <= 0) {
            this._inputEnd = 0;
        } else {
            this._currInputProcessed += (long) this._inputPtr;
            this._currInputRowStart -= this._inputPtr;
            System.arraycopy(this._inputBuffer, this._inputPtr, this._inputBuffer, 0, i2);
            this._inputEnd = i2;
        }
        this._inputPtr = 0;
        while (this._inputEnd < i) {
            int read = this._inputStream.read(this._inputBuffer, this._inputEnd, this._inputBuffer.length - this._inputEnd);
            if (read < 1) {
                _closeInput();
                if (read != 0) {
                    return false;
                }
                throw new IOException("InputStream.read() returned 0 characters when trying to read " + i2 + " bytes");
            }
            this._inputEnd = read + this._inputEnd;
        }
        return true;
    }

    protected final void _matchToken(String str, int i) throws IOException {
        int length = str.length();
        if (this._inputPtr + length >= this._inputEnd) {
            _matchToken2(str, i);
            return;
        }
        do {
            if (this._inputBuffer[this._inputPtr] != str.charAt(i)) {
                _reportInvalidToken(str.substring(0, i));
            }
            this._inputPtr++;
            i++;
        } while (i < length);
        length = this._inputBuffer[this._inputPtr] & MotionEventCompat.ACTION_MASK;
        if (length >= 48 && length != 93 && length != 125) {
            _checkMatchEnd(str, i, length);
        }
    }

    protected String _parseAposName() throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(": was expecting closing ''' for name");
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        i = bArr[i] & MotionEventCompat.ACTION_MASK;
        if (i == 39) {
            return BuildConfig.FLAVOR;
        }
        int[] iArr;
        int[] iArr2 = this._quadBuffer;
        int[] iArr3 = _icLatin1;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i != 39) {
            int i5;
            int i6;
            if (i == 34 || iArr3[i] == 0) {
                i5 = i2;
                i6 = i3;
                i3 = i4;
                i4 = i6;
            } else {
                if (i != 92) {
                    _throwUnquotedSpace(i, Twitter.NAME);
                    i5 = i;
                } else {
                    i5 = _decodeEscaped();
                }
                if (i5 > TransportMediator.KEYCODE_MEDIA_PAUSE) {
                    int i7;
                    if (i3 >= 4) {
                        if (i4 >= iArr2.length) {
                            iArr2 = growArrayBy(iArr2, iArr2.length);
                            this._quadBuffer = iArr2;
                        }
                        iArr2[i4] = i2;
                        i3 = i4 + 1;
                        i2 = 0;
                        i7 = 0;
                    } else {
                        i7 = i3;
                        i3 = i4;
                    }
                    if (i5 < AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT) {
                        i4 = ((i5 >> 6) | 192) | (i2 << 8);
                        i = i7 + 1;
                    } else {
                        i = (i2 << 8) | ((i5 >> 12) | 224);
                        i4 = i7 + 1;
                        if (i4 >= 4) {
                            if (i3 >= iArr2.length) {
                                iArr2 = growArrayBy(iArr2, iArr2.length);
                                this._quadBuffer = iArr2;
                            }
                            i4 = i3 + 1;
                            iArr2[i3] = i;
                            i = 0;
                            i2 = 0;
                            i3 = i4;
                        } else {
                            i2 = i4;
                        }
                        i4 = (((i5 >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) | (i << 8);
                        i = i2 + 1;
                    }
                    i5 = i4;
                    i4 = i;
                    i = (i5 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS;
                } else {
                    i = i5;
                    i5 = i2;
                    i6 = i4;
                    i4 = i3;
                    i3 = i6;
                }
            }
            if (i4 < 4) {
                i4++;
                i |= i5 << 8;
            } else {
                if (i3 >= iArr2.length) {
                    iArr2 = growArrayBy(iArr2, iArr2.length);
                    this._quadBuffer = iArr2;
                }
                i2 = i3 + 1;
                iArr2[i3] = i5;
                i4 = 1;
                i3 = i2;
            }
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(" in field name");
            }
            byte[] bArr2 = this._inputBuffer;
            i5 = this._inputPtr;
            this._inputPtr = i5 + 1;
            i6 = bArr2[i5] & MotionEventCompat.ACTION_MASK;
            i2 = i;
            i = i6;
            int i8 = i4;
            i4 = i3;
            i3 = i8;
        }
        if (i3 > 0) {
            if (i4 >= iArr2.length) {
                iArr2 = growArrayBy(iArr2, iArr2.length);
                this._quadBuffer = iArr2;
            }
            i = i4 + 1;
            iArr2[i4] = pad(i2, i3);
            i4 = i;
            iArr = iArr2;
        } else {
            iArr = iArr2;
        }
        String findName = this._symbols.findName(iArr, i4);
        return findName == null ? addName(iArr, i4, i3) : findName;
    }

    protected final String _parseName(int i) throws IOException {
        if (i != 34) {
            return _handleOddName(i);
        }
        if (this._inputPtr + 13 > this._inputEnd) {
            return slowParseName();
        }
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        i2 = bArr[i2] & MotionEventCompat.ACTION_MASK;
        if (iArr[i2] != 0) {
            return i2 == 34 ? BuildConfig.FLAVOR : parseName(0, i2, 0);
        } else {
            int i3 = this._inputPtr;
            this._inputPtr = i3 + 1;
            i3 = bArr[i3] & MotionEventCompat.ACTION_MASK;
            if (iArr[i3] != 0) {
                return i3 == 34 ? findName(i2, 1) : parseName(i2, i3, 1);
            } else {
                i2 = (i2 << 8) | i3;
                i3 = this._inputPtr;
                this._inputPtr = i3 + 1;
                i3 = bArr[i3] & MotionEventCompat.ACTION_MASK;
                if (iArr[i3] != 0) {
                    return i3 == 34 ? findName(i2, 2) : parseName(i2, i3, 2);
                } else {
                    i2 = (i2 << 8) | i3;
                    i3 = this._inputPtr;
                    this._inputPtr = i3 + 1;
                    i3 = bArr[i3] & MotionEventCompat.ACTION_MASK;
                    if (iArr[i3] != 0) {
                        return i3 == 34 ? findName(i2, 3) : parseName(i2, i3, 3);
                    } else {
                        i2 = (i2 << 8) | i3;
                        i3 = this._inputPtr;
                        this._inputPtr = i3 + 1;
                        int i4 = bArr[i3] & MotionEventCompat.ACTION_MASK;
                        if (iArr[i4] != 0) {
                            return i4 == 34 ? findName(i2, 4) : parseName(i2, i4, 4);
                        } else {
                            this._quad1 = i2;
                            return parseMediumName(i4);
                        }
                    }
                }
            }
        }
    }

    protected JsonToken _parseNegNumber() throws IOException {
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment[0] = '-';
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        int i2 = bArr[i] & MotionEventCompat.ACTION_MASK;
        if (i2 < 48 || i2 > 57) {
            return _handleInvalidNumberStart(i2, true);
        }
        int i3;
        if (i2 == 48) {
            i2 = _verifyNoLeadingZeroes();
        }
        i = 2;
        emptyAndGetCurrentSegment[1] = (char) i2;
        i2 = (this._inputPtr + emptyAndGetCurrentSegment.length) - 2;
        if (i2 > this._inputEnd) {
            i2 = this._inputEnd;
            i3 = 1;
        } else {
            i3 = 1;
        }
        while (this._inputPtr < i2) {
            byte[] bArr2 = this._inputBuffer;
            int i4 = this._inputPtr;
            this._inputPtr = i4 + 1;
            int i5 = bArr2[i4] & MotionEventCompat.ACTION_MASK;
            if (i5 >= 48 && i5 <= 57) {
                i3++;
                emptyAndGetCurrentSegment[i] = (char) i5;
                i++;
            } else if (i5 == 46 || i5 == 101 || i5 == 69) {
                return _parseFloat(emptyAndGetCurrentSegment, i, i5, true, i3);
            } else {
                this._inputPtr--;
                this._textBuffer.setCurrentLength(i);
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(i5);
                }
                return resetInt(true, i3);
            }
        }
        return _parseNumber2(emptyAndGetCurrentSegment, i, true, i3);
    }

    protected JsonToken _parsePosNumber(int i) throws IOException {
        int i2;
        int i3 = 1;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        if (i == 48) {
            i = _verifyNoLeadingZeroes();
        }
        emptyAndGetCurrentSegment[0] = (char) i;
        int length = (this._inputPtr + emptyAndGetCurrentSegment.length) - 1;
        if (length > this._inputEnd) {
            length = this._inputEnd;
            i2 = 1;
        } else {
            i2 = 1;
        }
        while (this._inputPtr < length) {
            byte[] bArr = this._inputBuffer;
            int i4 = this._inputPtr;
            this._inputPtr = i4 + 1;
            int i5 = bArr[i4] & MotionEventCompat.ACTION_MASK;
            if (i5 >= 48 && i5 <= 57) {
                i3++;
                emptyAndGetCurrentSegment[i2] = (char) i5;
                i2++;
            } else if (i5 == 46 || i5 == 101 || i5 == 69) {
                return _parseFloat(emptyAndGetCurrentSegment, i2, i5, false, i3);
            } else {
                this._inputPtr--;
                this._textBuffer.setCurrentLength(i2);
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(i5);
                }
                return resetInt(false, i3);
            }
        }
        return _parseNumber2(emptyAndGetCurrentSegment, i2, false, i3);
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
        r3 = r3[r4];
        r4 = r3 & 255;
        r3 = 32;
        if (r4 <= r3) goto L_0x0008;
    L_0x0021:
        r3 = r12.decodeBase64Char(r4);
        if (r3 >= 0) goto L_0x0038;
    L_0x0027:
        if (r4 != r9) goto L_0x0032;
    L_0x0029:
        r11._tokenIncomplete = r1;
        if (r2 <= 0) goto L_0x0031;
    L_0x002d:
        r0 = r0 + r2;
        r13.write(r14, r1, r2);
    L_0x0031:
        return r0;
    L_0x0032:
        r3 = r11._decodeBase64Escape(r12, r4, r1);
        if (r3 < 0) goto L_0x0008;
    L_0x0038:
        r4 = r3;
        r3 = r5 + -3;
        if (r2 <= r3) goto L_0x0042;
    L_0x003d:
        r0 = r0 + r2;
        r13.write(r14, r1, r2);
        r2 = r1;
    L_0x0042:
        r3 = r11._inputPtr;
        r6 = r11._inputEnd;
        if (r3 < r6) goto L_0x004b;
    L_0x0048:
        r11.loadMoreGuaranteed();
    L_0x004b:
        r3 = r11._inputBuffer;
        r6 = r11._inputPtr;
        r7 = r6 + 1;
        r11._inputPtr = r7;
        r3 = r3[r6];
        r6 = r3 & 255;
        r3 = r12.decodeBase64Char(r6);
        if (r3 >= 0) goto L_0x0062;
    L_0x005d:
        r3 = 1;
        r3 = r11._decodeBase64Escape(r12, r6, r3);
    L_0x0062:
        r4 = r4 << 6;
        r4 = r4 | r3;
        r3 = r11._inputPtr;
        r6 = r11._inputEnd;
        if (r3 < r6) goto L_0x006e;
    L_0x006b:
        r11.loadMoreGuaranteed();
    L_0x006e:
        r3 = r11._inputBuffer;
        r6 = r11._inputPtr;
        r7 = r6 + 1;
        r11._inputPtr = r7;
        r3 = r3[r6];
        r6 = r3 & 255;
        r3 = r12.decodeBase64Char(r6);
        if (r3 >= 0) goto L_0x00df;
    L_0x0080:
        if (r3 == r8) goto L_0x0097;
    L_0x0082:
        if (r6 != r9) goto L_0x0092;
    L_0x0084:
        r3 = r12.usesPadding();
        if (r3 != 0) goto L_0x0092;
    L_0x008a:
        r3 = r4 >> 4;
        r3 = (byte) r3;
        r14[r2] = r3;
        r2 = r2 + 1;
        goto L_0x0029;
    L_0x0092:
        r3 = 2;
        r3 = r11._decodeBase64Escape(r12, r6, r3);
    L_0x0097:
        if (r3 != r8) goto L_0x00df;
    L_0x0099:
        r3 = r11._inputPtr;
        r6 = r11._inputEnd;
        if (r3 < r6) goto L_0x00a2;
    L_0x009f:
        r11.loadMoreGuaranteed();
    L_0x00a2:
        r3 = r11._inputBuffer;
        r6 = r11._inputPtr;
        r7 = r6 + 1;
        r11._inputPtr = r7;
        r3 = r3[r6];
        r3 = r3 & 255;
        r6 = r12.usesPaddingChar(r3);
        if (r6 != 0) goto L_0x00d6;
    L_0x00b4:
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
    L_0x00d6:
        r3 = r4 >> 4;
        r3 = (byte) r3;
        r14[r2] = r3;
        r2 = r2 + 1;
        goto L_0x0008;
    L_0x00df:
        r4 = r4 << 6;
        r4 = r4 | r3;
        r3 = r11._inputPtr;
        r6 = r11._inputEnd;
        if (r3 < r6) goto L_0x00eb;
    L_0x00e8:
        r11.loadMoreGuaranteed();
    L_0x00eb:
        r3 = r11._inputBuffer;
        r6 = r11._inputPtr;
        r7 = r6 + 1;
        r11._inputPtr = r7;
        r3 = r3[r6];
        r6 = r3 & 255;
        r3 = r12.decodeBase64Char(r6);
        if (r3 >= 0) goto L_0x012d;
    L_0x00fd:
        if (r3 == r8) goto L_0x011b;
    L_0x00ff:
        if (r6 != r9) goto L_0x0117;
    L_0x0101:
        r3 = r12.usesPadding();
        if (r3 != 0) goto L_0x0117;
    L_0x0107:
        r3 = r4 >> 2;
        r4 = r2 + 1;
        r5 = r3 >> 8;
        r5 = (byte) r5;
        r14[r2] = r5;
        r2 = r4 + 1;
        r3 = (byte) r3;
        r14[r4] = r3;
        goto L_0x0029;
    L_0x0117:
        r3 = r11._decodeBase64Escape(r12, r6, r10);
    L_0x011b:
        if (r3 != r8) goto L_0x012d;
    L_0x011d:
        r3 = r4 >> 2;
        r4 = r2 + 1;
        r6 = r3 >> 8;
        r6 = (byte) r6;
        r14[r2] = r6;
        r2 = r4 + 1;
        r3 = (byte) r3;
        r14[r4] = r3;
        goto L_0x0008;
    L_0x012d:
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
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._readBinary(com.fasterxml.jackson.core.Base64Variant, java.io.OutputStream, byte[]):int");
    }

    protected void _releaseBuffers() throws IOException {
        super._releaseBuffers();
        this._symbols.release();
        if (this._bufferRecyclable) {
            byte[] bArr = this._inputBuffer;
            if (bArr != null) {
                this._inputBuffer = ByteArrayBuilder.NO_BYTES;
                this._ioContext.releaseReadIOBuffer(bArr);
            }
        }
    }

    protected void _reportInvalidChar(int i) throws JsonParseException {
        if (i < 32) {
            _throwInvalidSpace(i);
        }
        _reportInvalidInitial(i);
    }

    protected void _reportInvalidInitial(int i) throws JsonParseException {
        _reportError("Invalid UTF-8 start byte 0x" + Integer.toHexString(i));
    }

    protected void _reportInvalidOther(int i) throws JsonParseException {
        _reportError("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i));
    }

    protected void _reportInvalidOther(int i, int i2) throws JsonParseException {
        this._inputPtr = i2;
        _reportInvalidOther(i);
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
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char _decodeCharForError = (char) _decodeCharForError(bArr[i]);
            if (!Character.isJavaIdentifierPart(_decodeCharForError)) {
                break;
            }
            stringBuilder.append(_decodeCharForError);
        }
        _reportError("Unrecognized token '" + stringBuilder.toString() + "': was expecting " + str2);
    }

    protected final void _skipCR() throws IOException {
        if ((this._inputPtr < this._inputEnd || loadMore()) && this._inputBuffer[this._inputPtr] == 10) {
            this._inputPtr++;
        }
        this._currInputRow++;
        this._currInputRowStart = this._inputPtr;
    }

    protected void _skipString() throws java.io.IOException {
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:42)
	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:66)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r6 = this;
        r0 = 0;
        r6._tokenIncomplete = r0;
        r3 = _icUTF8;
        r4 = r6._inputBuffer;
    L_0x0007:
        r1 = r6._inputPtr;
        r0 = r6._inputEnd;
        if (r1 < r0) goto L_0x004e;
    L_0x000d:
        r6.loadMoreGuaranteed();
        r1 = r6._inputPtr;
        r0 = r6._inputEnd;
        r2 = r1;
    L_0x0015:
        if (r2 >= r0) goto L_0x0028;
    L_0x0017:
        r1 = r2 + 1;
        r2 = r4[r2];
        r2 = r2 & 255;
        r5 = r3[r2];
        if (r5 == 0) goto L_0x004e;
    L_0x0021:
        r6._inputPtr = r1;
        r0 = 34;
        if (r2 != r0) goto L_0x002b;
    L_0x0027:
        return;
    L_0x0028:
        r6._inputPtr = r2;
        goto L_0x0007;
    L_0x002b:
        r0 = r3[r2];
        switch(r0) {
            case 1: goto L_0x003a;
            case 2: goto L_0x003e;
            case 3: goto L_0x0042;
            case 4: goto L_0x0046;
            default: goto L_0x0030;
        };
    L_0x0030:
        r0 = 32;
        if (r2 >= r0) goto L_0x004a;
    L_0x0034:
        r0 = "string value";
        r6._throwUnquotedSpace(r2, r0);
        goto L_0x0007;
    L_0x003a:
        r6._decodeEscaped();
        goto L_0x0007;
    L_0x003e:
        r6._skipUtf8_2(r2);
        goto L_0x0007;
    L_0x0042:
        r6._skipUtf8_3(r2);
        goto L_0x0007;
    L_0x0046:
        r6._skipUtf8_4(r2);
        goto L_0x0007;
    L_0x004a:
        r6._reportInvalidChar(r2);
        goto L_0x0007;
    L_0x004e:
        r2 = r1;
        goto L_0x0015;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._skipString():void");
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

    public JsonLocation getCurrentLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), this._currInputProcessed + ((long) this._inputPtr), -1, this._currInputRow, (this._inputPtr - this._currInputRowStart) + 1);
    }

    public Object getInputSource() {
        return this._inputStream;
    }

    public String getText() throws IOException {
        if (this._currToken != JsonToken.VALUE_STRING) {
            return _getText2(this._currToken);
        }
        if (!this._tokenIncomplete) {
            return this._textBuffer.contentsAsString();
        }
        this._tokenIncomplete = false;
        return _finishAndReturnString();
    }

    public char[] getTextCharacters() throws IOException {
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

    public int getTextLength() throws IOException {
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

    public int getTextOffset() throws IOException {
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

    public JsonLocation getTokenLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), getTokenCharacterOffset(), -1, getTokenLineNr(), getTokenColumnNr());
    }

    public int getValueAsInt() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_NUMBER_INT && jsonToken != JsonToken.VALUE_NUMBER_FLOAT) {
            return super.getValueAsInt(0);
        }
        if ((this._numTypesValid & 1) == 0) {
            if (this._numTypesValid == 0) {
                return _parseIntValue();
            }
            if ((this._numTypesValid & 1) == 0) {
                convertNumberToInt();
            }
        }
        return this._numberInt;
    }

    public int getValueAsInt(int i) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_NUMBER_INT && jsonToken != JsonToken.VALUE_NUMBER_FLOAT) {
            return super.getValueAsInt(i);
        }
        if ((this._numTypesValid & 1) == 0) {
            if (this._numTypesValid == 0) {
                return _parseIntValue();
            }
            if ((this._numTypesValid & 1) == 0) {
                convertNumberToInt();
            }
        }
        return this._numberInt;
    }

    public String getValueAsString() throws IOException {
        if (this._currToken != JsonToken.VALUE_STRING) {
            return this._currToken == JsonToken.FIELD_NAME ? getCurrentName() : super.getValueAsString(null);
        } else {
            if (!this._tokenIncomplete) {
                return this._textBuffer.contentsAsString();
            }
            this._tokenIncomplete = false;
            return _finishAndReturnString();
        }
    }

    public String getValueAsString(String str) throws IOException {
        if (this._currToken != JsonToken.VALUE_STRING) {
            return this._currToken == JsonToken.FIELD_NAME ? getCurrentName() : super.getValueAsString(str);
        } else {
            if (!this._tokenIncomplete) {
                return this._textBuffer.contentsAsString();
            }
            this._tokenIncomplete = false;
            return _finishAndReturnString();
        }
    }

    protected final boolean loadMore() throws IOException {
        this._currInputProcessed += (long) this._inputEnd;
        this._currInputRowStart -= this._inputEnd;
        if (this._inputStream == null) {
            return false;
        }
        int length = this._inputBuffer.length;
        if (length == 0) {
            return false;
        }
        length = this._inputStream.read(this._inputBuffer, 0, length);
        if (length > 0) {
            this._inputPtr = 0;
            this._inputEnd = length;
            return true;
        }
        _closeInput();
        if (length != 0) {
            return false;
        }
        throw new IOException("InputStream.read() returned 0 characters when trying to read " + this._inputBuffer.length + " bytes");
    }

    public Boolean nextBooleanValue() throws IOException {
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
        return jsonToken == JsonToken.VALUE_TRUE ? Boolean.TRUE : jsonToken == JsonToken.VALUE_FALSE ? Boolean.FALSE : null;
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
                if (_skipWSOrEnd != 44) {
                    _reportUnexpectedChar(_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.getTypeDesc() + " entries");
                }
                _skipWSOrEnd = _skipWS();
            }
            if (this._parsingContext.inObject()) {
                String _parseName = _parseName(_skipWSOrEnd);
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
                        _matchToken("false", 1);
                        _parseNegNumber = JsonToken.VALUE_FALSE;
                        break;
                    case 110:
                        _matchToken("null", 1);
                        _parseNegNumber = JsonToken.VALUE_NULL;
                        break;
                    case 116:
                        _matchToken("true", 1);
                        _parseNegNumber = JsonToken.VALUE_TRUE;
                        break;
                    case 123:
                        _parseNegNumber = JsonToken.START_OBJECT;
                        break;
                    default:
                        _parseNegNumber = _handleUnexpectedValue(_skipColon);
                        break;
                }
                this._nextToken = _parseNegNumber;
                return _parseName;
            }
            _nextTokenNotInObject(_skipWSOrEnd);
            return null;
        }
    }

    public boolean nextFieldName(SerializableString serializableString) throws IOException {
        int i = 0;
        this._numTypesValid = 0;
        if (this._currToken == JsonToken.FIELD_NAME) {
            _nextAfterName();
            return false;
        }
        if (this._tokenIncomplete) {
            _skipString();
        }
        int _skipWSOrEnd = _skipWSOrEnd();
        if (_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return false;
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
            return false;
        } else if (_skipWSOrEnd == 125) {
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, ']');
            }
            this._parsingContext = this._parsingContext.getParent();
            this._currToken = JsonToken.END_OBJECT;
            return false;
        } else {
            if (this._parsingContext.expectComma()) {
                if (_skipWSOrEnd != 44) {
                    _reportUnexpectedChar(_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.getTypeDesc() + " entries");
                }
                _skipWSOrEnd = _skipWS();
            }
            if (this._parsingContext.inObject()) {
                if (_skipWSOrEnd == 34) {
                    byte[] asQuotedUTF8 = serializableString.asQuotedUTF8();
                    int length = asQuotedUTF8.length;
                    if ((this._inputPtr + length) + 4 < this._inputEnd) {
                        int i2 = this._inputPtr + length;
                        if (this._inputBuffer[i2] == (byte) 34) {
                            length = this._inputPtr;
                            while (length != i2) {
                                if (asQuotedUTF8[i] == this._inputBuffer[length]) {
                                    i++;
                                    length++;
                                }
                            }
                            this._parsingContext.setCurrentName(serializableString.getValue());
                            _isNextTokenNameYes(_skipColonFast(length + 1));
                            return true;
                        }
                    }
                }
                return _isNextTokenNameMaybe(_skipWSOrEnd, serializableString);
            }
            _nextTokenNotInObject(_skipWSOrEnd);
            return false;
        }
    }

    public int nextIntValue(int i) throws IOException {
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

    public long nextLongValue(long j) throws IOException {
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

    public String nextTextValue() throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            return nextToken() == JsonToken.VALUE_STRING ? getText() : null;
        } else {
            this._nameCopied = false;
            JsonToken jsonToken = this._nextToken;
            this._nextToken = null;
            this._currToken = jsonToken;
            if (jsonToken == JsonToken.VALUE_STRING) {
                if (!this._tokenIncomplete) {
                    return this._textBuffer.contentsAsString();
                }
                this._tokenIncomplete = false;
                return _finishAndReturnString();
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

    public JsonToken nextToken() throws IOException {
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
            int _skipWS;
            if (this._parsingContext.expectComma()) {
                if (_skipWSOrEnd != 44) {
                    _reportUnexpectedChar(_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.getTypeDesc() + " entries");
                }
                _skipWS = _skipWS();
            } else {
                _skipWS = _skipWSOrEnd;
            }
            if (!this._parsingContext.inObject()) {
                return _nextTokenNotInObject(_skipWS);
            }
            this._parsingContext.setCurrentName(_parseName(_skipWS));
            this._currToken = JsonToken.FIELD_NAME;
            _skipWS = _skipColon();
            if (_skipWS == 34) {
                this._tokenIncomplete = true;
                this._nextToken = JsonToken.VALUE_STRING;
                return this._currToken;
            }
            switch (_skipWS) {
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
                    jsonToken = _parsePosNumber(_skipWS);
                    break;
                case Place.TYPE_TAXI_STAND /*91*/:
                    jsonToken = JsonToken.START_ARRAY;
                    break;
                case LocationRequest.PRIORITY_BALANCED_POWER_ACCURACY /*102*/:
                    _matchToken("false", 1);
                    jsonToken = JsonToken.VALUE_FALSE;
                    break;
                case 110:
                    _matchToken("null", 1);
                    jsonToken = JsonToken.VALUE_NULL;
                    break;
                case 116:
                    _matchToken("true", 1);
                    jsonToken = JsonToken.VALUE_TRUE;
                    break;
                case 123:
                    jsonToken = JsonToken.START_OBJECT;
                    break;
                default:
                    jsonToken = _handleUnexpectedValue(_skipWS);
                    break;
            }
            this._nextToken = jsonToken;
            return this._currToken;
        }
    }

    protected final String parseEscapedName(int[] iArr, int i, int i2, int i3, int i4) throws IOException {
        int[] iArr2 = _icLatin1;
        while (true) {
            int i5;
            int[] iArr3;
            int i6;
            byte[] bArr;
            if (iArr2[i3] != 0) {
                if (i3 == 34) {
                    break;
                }
                if (i3 != 92) {
                    _throwUnquotedSpace(i3, Twitter.NAME);
                } else {
                    i3 = _decodeEscaped();
                }
                if (i3 > TransportMediator.KEYCODE_MEDIA_PAUSE) {
                    int[] iArr4;
                    int i7;
                    if (i4 >= 4) {
                        if (i >= iArr.length) {
                            iArr = growArrayBy(iArr, iArr.length);
                            this._quadBuffer = iArr;
                        }
                        i5 = i + 1;
                        iArr[i] = i2;
                        i4 = 0;
                        i2 = 0;
                        iArr3 = iArr;
                    } else {
                        i5 = i;
                        iArr3 = iArr;
                    }
                    int i8;
                    if (i3 < AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT) {
                        i8 = i5;
                        i5 = i4 + 1;
                        i6 = ((i3 >> 6) | 192) | (i2 << 8);
                        iArr4 = iArr3;
                        i7 = i8;
                    } else {
                        int i9;
                        i6 = (i2 << 8) | ((i3 >> 12) | 224);
                        int i10 = i4 + 1;
                        if (i10 >= 4) {
                            if (i5 >= iArr3.length) {
                                iArr3 = growArrayBy(iArr3, iArr3.length);
                                this._quadBuffer = iArr3;
                            }
                            i10 = i5 + 1;
                            iArr3[i5] = i6;
                            i5 = 0;
                            i9 = 0;
                            i8 = i10;
                            iArr4 = iArr3;
                            i7 = i8;
                        } else {
                            i9 = i10;
                            iArr4 = iArr3;
                            i7 = i5;
                            i5 = i6;
                        }
                        i6 = (((i3 >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) | (i5 << 8);
                        i5 = i9 + 1;
                    }
                    i2 = (i3 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS;
                    i = i7;
                    iArr3 = iArr4;
                    if (i5 >= 4) {
                        i4 = i5 + 1;
                        i2 |= i6 << 8;
                        iArr = iArr3;
                    } else {
                        if (i >= iArr3.length) {
                            iArr3 = growArrayBy(iArr3, iArr3.length);
                            this._quadBuffer = iArr3;
                        }
                        i5 = i + 1;
                        iArr3[i] = i6;
                        i4 = 1;
                        i = i5;
                        iArr = iArr3;
                    }
                    if (this._inputPtr >= this._inputEnd && !loadMore()) {
                        _reportInvalidEOF(" in field name");
                    }
                    bArr = this._inputBuffer;
                    i5 = this._inputPtr;
                    this._inputPtr = i5 + 1;
                    i3 = bArr[i5] & MotionEventCompat.ACTION_MASK;
                }
            }
            i5 = i4;
            i6 = i2;
            iArr3 = iArr;
            i2 = i3;
            if (i5 >= 4) {
                if (i >= iArr3.length) {
                    iArr3 = growArrayBy(iArr3, iArr3.length);
                    this._quadBuffer = iArr3;
                }
                i5 = i + 1;
                iArr3[i] = i6;
                i4 = 1;
                i = i5;
                iArr = iArr3;
            } else {
                i4 = i5 + 1;
                i2 |= i6 << 8;
                iArr = iArr3;
            }
            _reportInvalidEOF(" in field name");
            bArr = this._inputBuffer;
            i5 = this._inputPtr;
            this._inputPtr = i5 + 1;
            i3 = bArr[i5] & MotionEventCompat.ACTION_MASK;
        }
        if (i4 > 0) {
            if (i >= iArr.length) {
                iArr = growArrayBy(iArr, iArr.length);
                this._quadBuffer = iArr;
            }
            iArr[i] = pad(i2, i4);
            i++;
        }
        String findName = this._symbols.findName(iArr, i);
        return findName == null ? addName(iArr, i, i4) : findName;
    }

    protected final String parseLongName(int i, int i2, int i3) throws IOException {
        this._quadBuffer[0] = this._quad1;
        this._quadBuffer[1] = i2;
        this._quadBuffer[2] = i3;
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i4 = i;
        int i5 = 3;
        while (this._inputPtr + 4 <= this._inputEnd) {
            int i6 = this._inputPtr;
            this._inputPtr = i6 + 1;
            i6 = bArr[i6] & MotionEventCompat.ACTION_MASK;
            if (iArr[i6] != 0) {
                return i6 == 34 ? findName(this._quadBuffer, i5, i4, 1) : parseEscapedName(this._quadBuffer, i5, i4, i6, 1);
            } else {
                i4 = (i4 << 8) | i6;
                i6 = this._inputPtr;
                this._inputPtr = i6 + 1;
                i6 = bArr[i6] & MotionEventCompat.ACTION_MASK;
                if (iArr[i6] != 0) {
                    return i6 == 34 ? findName(this._quadBuffer, i5, i4, 2) : parseEscapedName(this._quadBuffer, i5, i4, i6, 2);
                } else {
                    i4 = (i4 << 8) | i6;
                    i6 = this._inputPtr;
                    this._inputPtr = i6 + 1;
                    i6 = bArr[i6] & MotionEventCompat.ACTION_MASK;
                    if (iArr[i6] != 0) {
                        return i6 == 34 ? findName(this._quadBuffer, i5, i4, 3) : parseEscapedName(this._quadBuffer, i5, i4, i6, 3);
                    } else {
                        i4 = (i4 << 8) | i6;
                        i6 = this._inputPtr;
                        this._inputPtr = i6 + 1;
                        i6 = bArr[i6] & MotionEventCompat.ACTION_MASK;
                        if (iArr[i6] != 0) {
                            return i6 == 34 ? findName(this._quadBuffer, i5, i4, 4) : parseEscapedName(this._quadBuffer, i5, i4, i6, 4);
                        } else {
                            if (i5 >= this._quadBuffer.length) {
                                this._quadBuffer = growArrayBy(this._quadBuffer, i5);
                            }
                            this._quadBuffer[i5] = i4;
                            i5++;
                            i4 = i6;
                        }
                    }
                }
            }
        }
        return parseEscapedName(this._quadBuffer, i5, 0, i4, 0);
    }

    protected final String parseMediumName(int i) throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        i2 = bArr[i2] & MotionEventCompat.ACTION_MASK;
        if (iArr[i2] != 0) {
            return i2 == 34 ? findName(this._quad1, i, 1) : parseName(this._quad1, i, i2, 1);
        } else {
            i2 |= i << 8;
            int i3 = this._inputPtr;
            this._inputPtr = i3 + 1;
            i3 = bArr[i3] & MotionEventCompat.ACTION_MASK;
            if (iArr[i3] != 0) {
                return i3 == 34 ? findName(this._quad1, i2, 2) : parseName(this._quad1, i2, i3, 2);
            } else {
                i2 = (i2 << 8) | i3;
                i3 = this._inputPtr;
                this._inputPtr = i3 + 1;
                i3 = bArr[i3] & MotionEventCompat.ACTION_MASK;
                if (iArr[i3] != 0) {
                    return i3 == 34 ? findName(this._quad1, i2, 3) : parseName(this._quad1, i2, i3, 3);
                } else {
                    i2 = (i2 << 8) | i3;
                    i3 = this._inputPtr;
                    this._inputPtr = i3 + 1;
                    int i4 = bArr[i3] & MotionEventCompat.ACTION_MASK;
                    return iArr[i4] != 0 ? i4 == 34 ? findName(this._quad1, i2, 4) : parseName(this._quad1, i2, i4, 4) : parseMediumName2(i4, i2);
                }
            }
        }
    }

    protected final String parseMediumName2(int i, int i2) throws IOException {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        int i4 = bArr[i3] & MotionEventCompat.ACTION_MASK;
        if (iArr[i4] != 0) {
            return i4 == 34 ? findName(this._quad1, i2, i, 1) : parseName(this._quad1, i2, i, i4, 1);
        } else {
            int i5 = (i << 8) | i4;
            i3 = this._inputPtr;
            this._inputPtr = i3 + 1;
            i4 = bArr[i3] & MotionEventCompat.ACTION_MASK;
            if (iArr[i4] != 0) {
                return i4 == 34 ? findName(this._quad1, i2, i5, 2) : parseName(this._quad1, i2, i5, i4, 2);
            } else {
                i5 = (i5 << 8) | i4;
                i3 = this._inputPtr;
                this._inputPtr = i3 + 1;
                i4 = bArr[i3] & MotionEventCompat.ACTION_MASK;
                if (iArr[i4] != 0) {
                    return i4 == 34 ? findName(this._quad1, i2, i5, 3) : parseName(this._quad1, i2, i5, i4, 3);
                } else {
                    i5 = (i5 << 8) | i4;
                    i3 = this._inputPtr;
                    this._inputPtr = i3 + 1;
                    i4 = bArr[i3] & MotionEventCompat.ACTION_MASK;
                    return iArr[i4] != 0 ? i4 == 34 ? findName(this._quad1, i2, i5, 4) : parseName(this._quad1, i2, i5, i4, 4) : parseLongName(i4, i2, i5);
                }
            }
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

    public int releaseBuffered(OutputStream outputStream) throws IOException {
        int i = this._inputEnd - this._inputPtr;
        if (i < 1) {
            return 0;
        }
        outputStream.write(this._inputBuffer, this._inputPtr, i);
        return i;
    }

    public void setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }

    protected String slowParseName() throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(": was expecting closing '\"' for name");
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        int i2 = bArr[i] & MotionEventCompat.ACTION_MASK;
        return i2 == 34 ? BuildConfig.FLAVOR : parseEscapedName(this._quadBuffer, 0, 0, i2, 0);
    }
}
