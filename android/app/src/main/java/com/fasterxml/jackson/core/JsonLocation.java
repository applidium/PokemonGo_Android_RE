package com.fasterxml.jackson.core;

import java.io.Serializable;

public class JsonLocation implements Serializable {
    public static final JsonLocation NA;
    private static final long serialVersionUID = 1;
    final int _columnNr;
    final int _lineNr;
    final transient Object _sourceRef;
    final long _totalBytes;
    final long _totalChars;

    static {
        NA = new JsonLocation("N/A", -1, -1, -1, -1);
    }

    public JsonLocation(Object obj, long j, int i, int i2) {
        this(obj, -1, j, i, i2);
    }

    public JsonLocation(Object obj, long j, long j2, int i, int i2) {
        this._sourceRef = obj;
        this._totalBytes = j;
        this._totalChars = j2;
        this._lineNr = i;
        this._columnNr = i2;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r7) {
        /*
        r6 = this;
        r0 = 1;
        r1 = 0;
        if (r7 != r6) goto L_0x0005;
    L_0x0004:
        return r0;
    L_0x0005:
        if (r7 == 0) goto L_0x0043;
    L_0x0007:
        r2 = r7 instanceof com.fasterxml.jackson.core.JsonLocation;
        if (r2 == 0) goto L_0x0043;
    L_0x000b:
        r7 = (com.fasterxml.jackson.core.JsonLocation) r7;
        r2 = r6._sourceRef;
        if (r2 != 0) goto L_0x0037;
    L_0x0011:
        r2 = r7._sourceRef;
        if (r2 != 0) goto L_0x0043;
    L_0x0015:
        r2 = r6._lineNr;
        r3 = r7._lineNr;
        if (r2 != r3) goto L_0x0035;
    L_0x001b:
        r2 = r6._columnNr;
        r3 = r7._columnNr;
        if (r2 != r3) goto L_0x0035;
    L_0x0021:
        r2 = r6._totalChars;
        r4 = r7._totalChars;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 != 0) goto L_0x0035;
    L_0x0029:
        r2 = r6.getByteOffset();
        r4 = r7.getByteOffset();
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 == 0) goto L_0x0004;
    L_0x0035:
        r0 = r1;
        goto L_0x0004;
    L_0x0037:
        r2 = r6._sourceRef;
        r3 = r7._sourceRef;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x0015;
    L_0x0041:
        r0 = r1;
        goto L_0x0004;
    L_0x0043:
        r0 = r1;
        goto L_0x0004;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.JsonLocation.equals(java.lang.Object):boolean");
    }

    public long getByteOffset() {
        return this._totalBytes;
    }

    public long getCharOffset() {
        return this._totalChars;
    }

    public int getColumnNr() {
        return this._columnNr;
    }

    public int getLineNr() {
        return this._lineNr;
    }

    public Object getSourceRef() {
        return this._sourceRef;
    }

    public int hashCode() {
        return ((((this._sourceRef == null ? 1 : this._sourceRef.hashCode()) ^ this._lineNr) + this._columnNr) ^ ((int) this._totalChars)) + ((int) this._totalBytes);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(80);
        stringBuilder.append("[Source: ");
        if (this._sourceRef == null) {
            stringBuilder.append("UNKNOWN");
        } else {
            stringBuilder.append(this._sourceRef.toString());
        }
        stringBuilder.append("; line: ");
        stringBuilder.append(this._lineNr);
        stringBuilder.append(", column: ");
        stringBuilder.append(this._columnNr);
        stringBuilder.append(']');
        return stringBuilder.toString();
    }
}
