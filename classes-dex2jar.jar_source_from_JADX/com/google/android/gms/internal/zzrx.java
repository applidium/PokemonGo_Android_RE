package com.google.android.gms.internal;

import android.support.v4.media.TransportMediator;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

public final class zzrx {
    private final ByteBuffer zzbij;

    public static class zza extends IOException {
        zza(int i, int i2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + i + " limit " + i2 + ").");
        }
    }

    private zzrx(ByteBuffer byteBuffer) {
        this.zzbij = byteBuffer;
        this.zzbij.order(ByteOrder.LITTLE_ENDIAN);
    }

    private zzrx(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    public static int zzA(int i, int i2) {
        return zzlM(i) + zzlJ(i2);
    }

    public static int zzB(int i, int i2) {
        return zzlM(i) + zzlK(i2);
    }

    public static zzrx zzC(byte[] bArr) {
        return zzb(bArr, 0, bArr.length);
    }

    public static int zzE(byte[] bArr) {
        return zzlO(bArr.length) + bArr.length;
    }

    private static int zza(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = i;
        while (i3 < length) {
            char charAt = charSequence.charAt(i3);
            if (charAt < '\u0800') {
                i2 += (127 - charAt) >>> 31;
            } else {
                i2 += 2;
                if ('\ud800' <= charAt && charAt <= '\udfff') {
                    if (Character.codePointAt(charSequence, i3) < AccessibilityNodeInfoCompat.ACTION_CUT) {
                        throw new IllegalArgumentException("Unpaired surrogate at index " + i3);
                    }
                    i3++;
                }
            }
            i3++;
        }
        return i2;
    }

    private static int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int length = charSequence.length();
        int i3 = 0;
        int i4 = i + i2;
        while (i3 < length && i3 + i < i4) {
            char charAt = charSequence.charAt(i3);
            if (charAt >= '\u0080') {
                break;
            }
            bArr[i + i3] = (byte) charAt;
            i3++;
        }
        if (i3 == length) {
            return i + length;
        }
        int i5 = i + i3;
        while (i3 < length) {
            int i6;
            char charAt2 = charSequence.charAt(i3);
            int i7;
            if (charAt2 < '\u0080' && i5 < i4) {
                i7 = i5 + 1;
                bArr[i5] = (byte) charAt2;
                i5 = i3;
                i3 = i7;
            } else if (charAt2 < '\u0800' && i5 <= i4 - 2) {
                i7 = i5 + 1;
                bArr[i5] = (byte) ((charAt2 >>> 6) | 960);
                i5 = i7 + 1;
                bArr[i7] = (byte) ((charAt2 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                i6 = i3;
                i3 = i5;
                i5 = i6;
            } else if ((charAt2 < '\ud800' || '\udfff' < charAt2) && i5 <= i4 - 3) {
                i7 = i5 + 1;
                bArr[i5] = (byte) ((charAt2 >>> 12) | 480);
                int i8 = i7 + 1;
                bArr[i7] = (byte) (((charAt2 >>> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                i5 = i8 + 1;
                bArr[i8] = (byte) ((charAt2 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                i6 = i3;
                i3 = i5;
                i5 = i6;
            } else if (i5 <= i4 - 4) {
                if (i3 + 1 != charSequence.length()) {
                    i3++;
                    char charAt3 = charSequence.charAt(i3);
                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                        i7 = Character.toCodePoint(charAt2, charAt3);
                        int i9 = i5 + 1;
                        bArr[i5] = (byte) ((i7 >>> 18) | 240);
                        i5 = i9 + 1;
                        bArr[i9] = (byte) (((i7 >>> 12) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                        i9 = i5 + 1;
                        bArr[i5] = (byte) (((i7 >>> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                        i5 = i9 + 1;
                        bArr[i9] = (byte) ((i7 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                        i6 = i3;
                        i3 = i5;
                        i5 = i6;
                    }
                }
                throw new IllegalArgumentException("Unpaired surrogate at index " + (i3 - 1));
            } else if ('\ud800' > charAt2 || charAt2 > '\udfff' || (i3 + 1 != charSequence.length() && Character.isSurrogatePair(charAt2, charSequence.charAt(i3 + 1)))) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i5);
            } else {
                throw new IllegalArgumentException("Unpaired surrogate at index " + i3);
            }
            i6 = i5 + 1;
            i5 = i3;
            i3 = i6;
        }
        return i5;
    }

    private static void zza(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        } else if (byteBuffer.hasArray()) {
            try {
                byteBuffer.position(zza(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
            } catch (Throwable e) {
                BufferOverflowException bufferOverflowException = new BufferOverflowException();
                bufferOverflowException.initCause(e);
                throw bufferOverflowException;
            }
        } else {
            zzb(charSequence, byteBuffer);
        }
    }

    public static int zzaa(long j) {
        return zzad(j);
    }

    public static int zzab(long j) {
        return zzad(zzaf(j));
    }

    public static int zzad(long j) {
        return (-128 & j) == 0 ? 1 : (-16384 & j) == 0 ? 2 : (-2097152 & j) == 0 ? 3 : (-268435456 & j) == 0 ? 4 : (-34359738368L & j) == 0 ? 5 : (-4398046511104L & j) == 0 ? 6 : (-562949953421312L & j) == 0 ? 7 : (-72057594037927936L & j) == 0 ? 8 : (Long.MIN_VALUE & j) == 0 ? 9 : 10;
    }

    public static long zzaf(long j) {
        return (j << 1) ^ (j >> 63);
    }

    public static int zzav(boolean z) {
        return 1;
    }

    public static int zzb(int i, double d) {
        return zzlM(i) + zzk(d);
    }

    public static int zzb(int i, zzse com_google_android_gms_internal_zzse) {
        return (zzlM(i) * 2) + zzd(com_google_android_gms_internal_zzse);
    }

    public static int zzb(int i, byte[] bArr) {
        return zzlM(i) + zzE(bArr);
    }

    public static zzrx zzb(byte[] bArr, int i, int i2) {
        return new zzrx(bArr, i, i2);
    }

    private static void zzb(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < '\u0080') {
                byteBuffer.put((byte) charAt);
            } else if (charAt < '\u0800') {
                byteBuffer.put((byte) ((charAt >>> 6) | 960));
                byteBuffer.put((byte) ((charAt & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS));
            } else if (charAt < '\ud800' || '\udfff' < charAt) {
                byteBuffer.put((byte) ((charAt >>> 12) | 480));
                byteBuffer.put((byte) (((charAt >>> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS));
                byteBuffer.put((byte) ((charAt & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS));
            } else {
                if (i + 1 != charSequence.length()) {
                    i++;
                    char charAt2 = charSequence.charAt(i);
                    if (Character.isSurrogatePair(charAt, charAt2)) {
                        int toCodePoint = Character.toCodePoint(charAt, charAt2);
                        byteBuffer.put((byte) ((toCodePoint >>> 18) | 240));
                        byteBuffer.put((byte) (((toCodePoint >>> 12) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS));
                        byteBuffer.put((byte) (((toCodePoint >>> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS));
                        byteBuffer.put((byte) ((toCodePoint & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS));
                    }
                }
                throw new IllegalArgumentException("Unpaired surrogate at index " + (i - 1));
            }
            i++;
        }
    }

    public static int zzc(int i, float f) {
        return zzlM(i) + zzj(f);
    }

    public static int zzc(int i, zzse com_google_android_gms_internal_zzse) {
        return zzlM(i) + zze(com_google_android_gms_internal_zzse);
    }

    public static int zzc(int i, boolean z) {
        return zzlM(i) + zzav(z);
    }

    private static int zzc(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < '\u0080') {
            i++;
        }
        int i2 = i;
        i = length;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (charAt >= '\u0800') {
                i += zza(charSequence, i2);
                break;
            }
            i2++;
            i += (127 - charAt) >>> 31;
        }
        if (i >= length) {
            return i;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) i) + 4294967296L));
    }

    public static int zzd(int i, long j) {
        return zzlM(i) + zzaa(j);
    }

    public static int zzd(zzse com_google_android_gms_internal_zzse) {
        return com_google_android_gms_internal_zzse.zzFR();
    }

    public static int zze(int i, long j) {
        return zzlM(i) + zzab(j);
    }

    public static int zze(zzse com_google_android_gms_internal_zzse) {
        int zzFR = com_google_android_gms_internal_zzse.zzFR();
        return zzFR + zzlO(zzFR);
    }

    public static int zzfA(String str) {
        int zzc = zzc((CharSequence) str);
        return zzc + zzlO(zzc);
    }

    public static int zzj(float f) {
        return 4;
    }

    public static int zzk(double d) {
        return 8;
    }

    public static int zzlJ(int i) {
        return i >= 0 ? zzlO(i) : 10;
    }

    public static int zzlK(int i) {
        return zzlO(zzlQ(i));
    }

    public static int zzlM(int i) {
        return zzlO(zzsh.zzD(i, 0));
    }

    public static int zzlO(int i) {
        return (i & -128) == 0 ? 1 : (i & -16384) == 0 ? 2 : (-2097152 & i) == 0 ? 3 : (-268435456 & i) == 0 ? 4 : 5;
    }

    public static int zzlQ(int i) {
        return (i << 1) ^ (i >> 31);
    }

    public static int zzn(int i, String str) {
        return zzlM(i) + zzfA(str);
    }

    public void zzC(int i, int i2) throws IOException {
        zzlN(zzsh.zzD(i, i2));
    }

    public void zzD(byte[] bArr) throws IOException {
        zzlN(bArr.length);
        zzF(bArr);
    }

    public void zzF(byte[] bArr) throws IOException {
        zzc(bArr, 0, bArr.length);
    }

    public int zzFD() {
        return this.zzbij.remaining();
    }

    public void zzFE() {
        if (zzFD() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public void zzY(long j) throws IOException {
        zzac(j);
    }

    public void zzZ(long j) throws IOException {
        zzac(zzaf(j));
    }

    public void zza(int i, double d) throws IOException {
        zzC(i, 1);
        zzj(d);
    }

    public void zza(int i, zzse com_google_android_gms_internal_zzse) throws IOException {
        zzC(i, 2);
        zzc(com_google_android_gms_internal_zzse);
    }

    public void zza(int i, byte[] bArr) throws IOException {
        zzC(i, 2);
        zzD(bArr);
    }

    public void zzac(long j) throws IOException {
        while ((-128 & j) != 0) {
            zzlL((((int) j) & TransportMediator.KEYCODE_MEDIA_PAUSE) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            j >>>= 7;
        }
        zzlL((int) j);
    }

    public void zzae(long j) throws IOException {
        if (this.zzbij.remaining() < 8) {
            throw new zza(this.zzbij.position(), this.zzbij.limit());
        }
        this.zzbij.putLong(j);
    }

    public void zzau(boolean z) throws IOException {
        zzlL(z ? 1 : 0);
    }

    public void zzb(byte b) throws IOException {
        if (this.zzbij.hasRemaining()) {
            this.zzbij.put(b);
            return;
        }
        throw new zza(this.zzbij.position(), this.zzbij.limit());
    }

    public void zzb(int i, float f) throws IOException {
        zzC(i, 5);
        zzi(f);
    }

    public void zzb(int i, long j) throws IOException {
        zzC(i, 0);
        zzY(j);
    }

    public void zzb(int i, String str) throws IOException {
        zzC(i, 2);
        zzfz(str);
    }

    public void zzb(int i, boolean z) throws IOException {
        zzC(i, 0);
        zzau(z);
    }

    public void zzb(zzse com_google_android_gms_internal_zzse) throws IOException {
        com_google_android_gms_internal_zzse.zza(this);
    }

    public void zzc(int i, long j) throws IOException {
        zzC(i, 0);
        zzZ(j);
    }

    public void zzc(zzse com_google_android_gms_internal_zzse) throws IOException {
        zzlN(com_google_android_gms_internal_zzse.zzFQ());
        com_google_android_gms_internal_zzse.zza(this);
    }

    public void zzc(byte[] bArr, int i, int i2) throws IOException {
        if (this.zzbij.remaining() >= i2) {
            this.zzbij.put(bArr, i, i2);
            return;
        }
        throw new zza(this.zzbij.position(), this.zzbij.limit());
    }

    public void zzfz(String str) throws IOException {
        try {
            int zzlO = zzlO(str.length());
            if (zzlO == zzlO(str.length() * 3)) {
                int position = this.zzbij.position();
                if (this.zzbij.remaining() < zzlO) {
                    throw new zza(zzlO + position, this.zzbij.limit());
                }
                this.zzbij.position(position + zzlO);
                zza((CharSequence) str, this.zzbij);
                int position2 = this.zzbij.position();
                this.zzbij.position(position);
                zzlN((position2 - position) - zzlO);
                this.zzbij.position(position2);
                return;
            }
            zzlN(zzc((CharSequence) str));
            zza((CharSequence) str, this.zzbij);
        } catch (Throwable e) {
            zza com_google_android_gms_internal_zzrx_zza = new zza(this.zzbij.position(), this.zzbij.limit());
            com_google_android_gms_internal_zzrx_zza.initCause(e);
            throw com_google_android_gms_internal_zzrx_zza;
        }
    }

    public void zzi(float f) throws IOException {
        zzlP(Float.floatToIntBits(f));
    }

    public void zzj(double d) throws IOException {
        zzae(Double.doubleToLongBits(d));
    }

    public void zzlH(int i) throws IOException {
        if (i >= 0) {
            zzlN(i);
        } else {
            zzac((long) i);
        }
    }

    public void zzlI(int i) throws IOException {
        zzlN(zzlQ(i));
    }

    public void zzlL(int i) throws IOException {
        zzb((byte) i);
    }

    public void zzlN(int i) throws IOException {
        while ((i & -128) != 0) {
            zzlL((i & TransportMediator.KEYCODE_MEDIA_PAUSE) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            i >>>= 7;
        }
        zzlL(i);
    }

    public void zzlP(int i) throws IOException {
        if (this.zzbij.remaining() < 4) {
            throw new zza(this.zzbij.position(), this.zzbij.limit());
        }
        this.zzbij.putInt(i);
    }

    public void zzy(int i, int i2) throws IOException {
        zzC(i, 0);
        zzlH(i2);
    }

    public void zzz(int i, int i2) throws IOException {
        zzC(i, 0);
        zzlI(i2);
    }
}
