package com.fasterxml.jackson.core.json;

import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonFactory.Feature;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.format.InputAccessor;
import com.fasterxml.jackson.core.format.MatchStrength;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.MergedStream;
import com.fasterxml.jackson.core.io.UTF32Reader;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

public final class ByteSourceJsonBootstrapper {
    static final byte UTF8_BOM_1 = (byte) -17;
    static final byte UTF8_BOM_2 = (byte) -69;
    static final byte UTF8_BOM_3 = (byte) -65;
    protected boolean _bigEndian;
    private final boolean _bufferRecyclable;
    protected int _bytesPerChar;
    protected final IOContext _context;
    protected final InputStream _in;
    protected final byte[] _inputBuffer;
    private int _inputEnd;
    protected int _inputProcessed;
    private int _inputPtr;

    public ByteSourceJsonBootstrapper(IOContext iOContext, InputStream inputStream) {
        this._bigEndian = true;
        this._bytesPerChar = 0;
        this._context = iOContext;
        this._in = inputStream;
        this._inputBuffer = iOContext.allocReadIOBuffer();
        this._inputPtr = 0;
        this._inputEnd = 0;
        this._inputProcessed = 0;
        this._bufferRecyclable = true;
    }

    public ByteSourceJsonBootstrapper(IOContext iOContext, byte[] bArr, int i, int i2) {
        this._bigEndian = true;
        this._bytesPerChar = 0;
        this._context = iOContext;
        this._in = null;
        this._inputBuffer = bArr;
        this._inputPtr = i;
        this._inputEnd = i + i2;
        this._inputProcessed = -i;
        this._bufferRecyclable = false;
    }

    private boolean checkUTF16(int i) {
        if ((MotionEventCompat.ACTION_POINTER_INDEX_MASK & i) == 0) {
            this._bigEndian = true;
        } else if ((i & MotionEventCompat.ACTION_MASK) != 0) {
            return false;
        } else {
            this._bigEndian = false;
        }
        this._bytesPerChar = 2;
        return true;
    }

    private boolean checkUTF32(int i) throws IOException {
        if ((i >> 8) == 0) {
            this._bigEndian = true;
        } else if ((ViewCompat.MEASURED_SIZE_MASK & i) == 0) {
            this._bigEndian = false;
        } else if ((-16711681 & i) == 0) {
            reportWeirdUCS4("3412");
        } else if ((-65281 & i) != 0) {
            return false;
        } else {
            reportWeirdUCS4("2143");
        }
        this._bytesPerChar = 4;
        return true;
    }

    private boolean handleBOM(int i) throws IOException {
        switch (i) {
            case -16842752:
                break;
            case -131072:
                this._inputPtr += 4;
                this._bytesPerChar = 4;
                this._bigEndian = false;
                return true;
            case 65279:
                this._bigEndian = true;
                this._inputPtr += 4;
                this._bytesPerChar = 4;
                return true;
            case 65534:
                reportWeirdUCS4("2143");
                break;
        }
        reportWeirdUCS4("3412");
        int i2 = i >>> 16;
        if (i2 == 65279) {
            this._inputPtr += 2;
            this._bytesPerChar = 2;
            this._bigEndian = true;
            return true;
        } else if (i2 == 65534) {
            this._inputPtr += 2;
            this._bytesPerChar = 2;
            this._bigEndian = false;
            return true;
        } else if ((i >>> 8) != 15711167) {
            return false;
        } else {
            this._inputPtr += 3;
            this._bytesPerChar = 1;
            this._bigEndian = true;
            return true;
        }
    }

    public static MatchStrength hasJSONFormat(InputAccessor inputAccessor) throws IOException {
        if (!inputAccessor.hasMoreBytes()) {
            return MatchStrength.INCONCLUSIVE;
        }
        byte nextByte = inputAccessor.nextByte();
        if (nextByte == -17) {
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != -69) {
                return MatchStrength.NO_MATCH;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != -65) {
                return MatchStrength.NO_MATCH;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            nextByte = inputAccessor.nextByte();
        }
        int skipSpace = skipSpace(inputAccessor, nextByte);
        if (skipSpace < 0) {
            return MatchStrength.INCONCLUSIVE;
        }
        int skipSpace2;
        if (skipSpace == 123) {
            skipSpace2 = skipSpace(inputAccessor);
            return skipSpace2 < 0 ? MatchStrength.INCONCLUSIVE : (skipSpace2 == 34 || skipSpace2 == 125) ? MatchStrength.SOLID_MATCH : MatchStrength.NO_MATCH;
        } else if (skipSpace == 91) {
            skipSpace2 = skipSpace(inputAccessor);
            return skipSpace2 < 0 ? MatchStrength.INCONCLUSIVE : (skipSpace2 == 93 || skipSpace2 == 91) ? MatchStrength.SOLID_MATCH : MatchStrength.SOLID_MATCH;
        } else {
            MatchStrength matchStrength = MatchStrength.WEAK_MATCH;
            if (skipSpace == 34) {
                return matchStrength;
            }
            if (skipSpace <= 57 && skipSpace >= 48) {
                return matchStrength;
            }
            if (skipSpace != 45) {
                return skipSpace == 110 ? tryMatch(inputAccessor, "ull", matchStrength) : skipSpace == 116 ? tryMatch(inputAccessor, "rue", matchStrength) : skipSpace == LocationRequest.PRIORITY_BALANCED_POWER_ACCURACY ? tryMatch(inputAccessor, "alse", matchStrength) : MatchStrength.NO_MATCH;
            } else {
                skipSpace = skipSpace(inputAccessor);
                return skipSpace < 0 ? MatchStrength.INCONCLUSIVE : (skipSpace > 57 || skipSpace < 48) ? MatchStrength.NO_MATCH : matchStrength;
            }
        }
    }

    private void reportWeirdUCS4(String str) throws IOException {
        throw new CharConversionException("Unsupported UCS-4 endianness (" + str + ") detected");
    }

    private static int skipSpace(InputAccessor inputAccessor) throws IOException {
        return !inputAccessor.hasMoreBytes() ? -1 : skipSpace(inputAccessor, inputAccessor.nextByte());
    }

    private static int skipSpace(InputAccessor inputAccessor, byte b) throws IOException {
        while (true) {
            int nextByte;
            int i = nextByte & MotionEventCompat.ACTION_MASK;
            if (i != 32 && i != 13 && i != 10 && i != 9) {
                return i;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return -1;
            }
            nextByte = inputAccessor.nextByte();
        }
    }

    private static MatchStrength tryMatch(InputAccessor inputAccessor, String str, MatchStrength matchStrength) throws IOException {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != str.charAt(i)) {
                return MatchStrength.NO_MATCH;
            }
        }
        return matchStrength;
    }

    public JsonParser constructParser(int i, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, CharsToNameCanonicalizer charsToNameCanonicalizer, int i2) throws IOException {
        if (detectEncoding() == JsonEncoding.UTF8 && Feature.CANONICALIZE_FIELD_NAMES.enabledIn(i2)) {
            return new UTF8StreamJsonParser(this._context, i, this._in, objectCodec, byteQuadsCanonicalizer.makeChild(i2), this._inputBuffer, this._inputPtr, this._inputEnd, this._bufferRecyclable);
        }
        return new ReaderBasedJsonParser(this._context, i, constructReader(), objectCodec, charsToNameCanonicalizer.makeChild(i2));
    }

    public Reader constructReader() throws IOException {
        JsonEncoding encoding = this._context.getEncoding();
        switch (encoding.bits()) {
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
            case Place.TYPE_CAMPGROUND /*16*/:
                InputStream inputStream = this._in;
                InputStream byteArrayInputStream = inputStream == null ? new ByteArrayInputStream(this._inputBuffer, this._inputPtr, this._inputEnd) : this._inputPtr < this._inputEnd ? new MergedStream(this._context, inputStream, this._inputBuffer, this._inputPtr, this._inputEnd) : inputStream;
                return new InputStreamReader(byteArrayInputStream, encoding.getJavaName());
            case Place.TYPE_ELECTRONICS_STORE /*32*/:
                return new UTF32Reader(this._context, this._in, this._inputBuffer, this._inputPtr, this._inputEnd, this._context.getEncoding().isBigEndian());
            default:
                throw new RuntimeException("Internal error");
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.fasterxml.jackson.core.JsonEncoding detectEncoding() throws java.io.IOException {
        /*
        r5 = this;
        r0 = 1;
        r1 = 0;
        r2 = 4;
        r2 = r5.ensureLoaded(r2);
        if (r2 == 0) goto L_0x0056;
    L_0x0009:
        r2 = r5._inputBuffer;
        r3 = r5._inputPtr;
        r2 = r2[r3];
        r2 = r2 << 24;
        r3 = r5._inputBuffer;
        r4 = r5._inputPtr;
        r4 = r4 + 1;
        r3 = r3[r4];
        r3 = r3 & 255;
        r3 = r3 << 16;
        r2 = r2 | r3;
        r3 = r5._inputBuffer;
        r4 = r5._inputPtr;
        r4 = r4 + 2;
        r3 = r3[r4];
        r3 = r3 & 255;
        r3 = r3 << 8;
        r2 = r2 | r3;
        r3 = r5._inputBuffer;
        r4 = r5._inputPtr;
        r4 = r4 + 3;
        r3 = r3[r4];
        r3 = r3 & 255;
        r2 = r2 | r3;
        r3 = r5.handleBOM(r2);
        if (r3 == 0) goto L_0x0046;
    L_0x003c:
        if (r0 != 0) goto L_0x0079;
    L_0x003e:
        r0 = com.fasterxml.jackson.core.JsonEncoding.UTF8;
    L_0x0040:
        r1 = r5._context;
        r1.setEncoding(r0);
        return r0;
    L_0x0046:
        r3 = r5.checkUTF32(r2);
        if (r3 != 0) goto L_0x003c;
    L_0x004c:
        r2 = r2 >>> 16;
        r2 = r5.checkUTF16(r2);
        if (r2 != 0) goto L_0x003c;
    L_0x0054:
        r0 = r1;
        goto L_0x003c;
    L_0x0056:
        r2 = 2;
        r2 = r5.ensureLoaded(r2);
        if (r2 == 0) goto L_0x0054;
    L_0x005d:
        r2 = r5._inputBuffer;
        r3 = r5._inputPtr;
        r2 = r2[r3];
        r2 = r2 & 255;
        r2 = r2 << 8;
        r3 = r5._inputBuffer;
        r4 = r5._inputPtr;
        r4 = r4 + 1;
        r3 = r3[r4];
        r3 = r3 & 255;
        r2 = r2 | r3;
        r2 = r5.checkUTF16(r2);
        if (r2 == 0) goto L_0x0054;
    L_0x0078:
        goto L_0x003c;
    L_0x0079:
        r0 = r5._bytesPerChar;
        switch(r0) {
            case 1: goto L_0x0086;
            case 2: goto L_0x0089;
            case 3: goto L_0x007e;
            case 4: goto L_0x0093;
            default: goto L_0x007e;
        };
    L_0x007e:
        r0 = new java.lang.RuntimeException;
        r1 = "Internal error";
        r0.<init>(r1);
        throw r0;
    L_0x0086:
        r0 = com.fasterxml.jackson.core.JsonEncoding.UTF8;
        goto L_0x0040;
    L_0x0089:
        r0 = r5._bigEndian;
        if (r0 == 0) goto L_0x0090;
    L_0x008d:
        r0 = com.fasterxml.jackson.core.JsonEncoding.UTF16_BE;
        goto L_0x0040;
    L_0x0090:
        r0 = com.fasterxml.jackson.core.JsonEncoding.UTF16_LE;
        goto L_0x0040;
    L_0x0093:
        r0 = r5._bigEndian;
        if (r0 == 0) goto L_0x009a;
    L_0x0097:
        r0 = com.fasterxml.jackson.core.JsonEncoding.UTF32_BE;
        goto L_0x0040;
    L_0x009a:
        r0 = com.fasterxml.jackson.core.JsonEncoding.UTF32_LE;
        goto L_0x0040;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper.detectEncoding():com.fasterxml.jackson.core.JsonEncoding");
    }

    protected boolean ensureLoaded(int i) throws IOException {
        int i2 = this._inputEnd - this._inputPtr;
        while (i2 < i) {
            int read = this._in == null ? -1 : this._in.read(this._inputBuffer, this._inputEnd, this._inputBuffer.length - this._inputEnd);
            if (read < 1) {
                return false;
            }
            this._inputEnd += read;
            i2 = read + i2;
        }
        return true;
    }
}
