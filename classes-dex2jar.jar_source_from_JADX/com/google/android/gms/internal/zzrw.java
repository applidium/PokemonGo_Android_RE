package com.google.android.gms.internal;

import android.support.v4.media.TransportMediator;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.io.IOException;
import spacemadness.com.lunarconsole.C1401R;

public final class zzrw {
    private final byte[] buffer;
    private int zzbia;
    private int zzbib;
    private int zzbic;
    private int zzbid;
    private int zzbie;
    private int zzbif;
    private int zzbig;
    private int zzbih;
    private int zzbii;

    private zzrw(byte[] bArr, int i, int i2) {
        this.zzbif = Integer.MAX_VALUE;
        this.zzbih = 64;
        this.zzbii = 67108864;
        this.buffer = bArr;
        this.zzbia = i;
        this.zzbib = i + i2;
        this.zzbid = i;
    }

    public static zzrw zzB(byte[] bArr) {
        return zza(bArr, 0, bArr.length);
    }

    private void zzFz() {
        this.zzbib += this.zzbic;
        int i = this.zzbib;
        if (i > this.zzbif) {
            this.zzbic = i - this.zzbif;
            this.zzbib -= this.zzbic;
            return;
        }
        this.zzbic = 0;
    }

    public static long zzX(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    public static zzrw zza(byte[] bArr, int i, int i2) {
        return new zzrw(bArr, i, i2);
    }

    public static int zzlB(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    public int getPosition() {
        return this.zzbid - this.zzbia;
    }

    public byte[] readBytes() throws IOException {
        int zzFv = zzFv();
        if (zzFv > this.zzbib - this.zzbid || zzFv <= 0) {
            return zzFv == 0 ? zzsh.zzbiE : zzlF(zzFv);
        } else {
            Object obj = new byte[zzFv];
            System.arraycopy(this.buffer, this.zzbid, obj, 0, zzFv);
            this.zzbid = zzFv + this.zzbid;
            return obj;
        }
    }

    public double readDouble() throws IOException {
        return Double.longBitsToDouble(zzFy());
    }

    public float readFloat() throws IOException {
        return Float.intBitsToFloat(zzFx());
    }

    public String readString() throws IOException {
        int zzFv = zzFv();
        if (zzFv > this.zzbib - this.zzbid || zzFv <= 0) {
            return new String(zzlF(zzFv), "UTF-8");
        }
        String str = new String(this.buffer, this.zzbid, zzFv, "UTF-8");
        this.zzbid = zzFv + this.zzbid;
        return str;
    }

    public int zzFA() {
        if (this.zzbif == Integer.MAX_VALUE) {
            return -1;
        }
        return this.zzbif - this.zzbid;
    }

    public boolean zzFB() {
        return this.zzbid == this.zzbib;
    }

    public byte zzFC() throws IOException {
        if (this.zzbid == this.zzbib) {
            throw zzsd.zzFJ();
        }
        byte[] bArr = this.buffer;
        int i = this.zzbid;
        this.zzbid = i + 1;
        return bArr[i];
    }

    public int zzFo() throws IOException {
        if (zzFB()) {
            this.zzbie = 0;
            return 0;
        }
        this.zzbie = zzFv();
        if (this.zzbie != 0) {
            return this.zzbie;
        }
        throw zzsd.zzFM();
    }

    public void zzFp() throws IOException {
        int zzFo;
        do {
            zzFo = zzFo();
            if (zzFo == 0) {
                return;
            }
        } while (zzlA(zzFo));
    }

    public long zzFq() throws IOException {
        return zzFw();
    }

    public int zzFr() throws IOException {
        return zzFv();
    }

    public boolean zzFs() throws IOException {
        return zzFv() != 0;
    }

    public int zzFt() throws IOException {
        return zzlB(zzFv());
    }

    public long zzFu() throws IOException {
        return zzX(zzFw());
    }

    public int zzFv() throws IOException {
        byte zzFC = zzFC();
        if (zzFC >= null) {
            return zzFC;
        }
        int i = zzFC & TransportMediator.KEYCODE_MEDIA_PAUSE;
        byte zzFC2 = zzFC();
        if (zzFC2 >= null) {
            return i | (zzFC2 << 7);
        }
        i |= (zzFC2 & TransportMediator.KEYCODE_MEDIA_PAUSE) << 7;
        zzFC2 = zzFC();
        if (zzFC2 >= null) {
            return i | (zzFC2 << 14);
        }
        i |= (zzFC2 & TransportMediator.KEYCODE_MEDIA_PAUSE) << 14;
        zzFC2 = zzFC();
        if (zzFC2 >= null) {
            return i | (zzFC2 << 21);
        }
        byte zzFC3 = zzFC();
        i = (i | ((zzFC2 & TransportMediator.KEYCODE_MEDIA_PAUSE) << 21)) | (zzFC3 << 28);
        if (zzFC3 >= null) {
            return i;
        }
        for (int i2 = 0; i2 < 5; i2++) {
            if (zzFC() >= null) {
                return i;
            }
        }
        throw zzsd.zzFL();
    }

    public long zzFw() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte zzFC = zzFC();
            j |= ((long) (zzFC & TransportMediator.KEYCODE_MEDIA_PAUSE)) << i;
            if ((zzFC & AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) == 0) {
                return j;
            }
        }
        throw zzsd.zzFL();
    }

    public int zzFx() throws IOException {
        return (((zzFC() & MotionEventCompat.ACTION_MASK) | ((zzFC() & MotionEventCompat.ACTION_MASK) << 8)) | ((zzFC() & MotionEventCompat.ACTION_MASK) << 16)) | ((zzFC() & MotionEventCompat.ACTION_MASK) << 24);
    }

    public long zzFy() throws IOException {
        byte zzFC = zzFC();
        return ((((((((((long) zzFC()) & 255) << 8) | (((long) zzFC) & 255)) | ((((long) zzFC()) & 255) << 16)) | ((((long) zzFC()) & 255) << 24)) | ((((long) zzFC()) & 255) << 32)) | ((((long) zzFC()) & 255) << 40)) | ((((long) zzFC()) & 255) << 48)) | ((((long) zzFC()) & 255) << 56);
    }

    public void zza(zzse com_google_android_gms_internal_zzse) throws IOException {
        int zzFv = zzFv();
        if (this.zzbig >= this.zzbih) {
            throw zzsd.zzFP();
        }
        zzFv = zzlC(zzFv);
        this.zzbig++;
        com_google_android_gms_internal_zzse.zzb(this);
        zzlz(0);
        this.zzbig--;
        zzlD(zzFv);
    }

    public void zza(zzse com_google_android_gms_internal_zzse, int i) throws IOException {
        if (this.zzbig >= this.zzbih) {
            throw zzsd.zzFP();
        }
        this.zzbig++;
        com_google_android_gms_internal_zzse.zzb(this);
        zzlz(zzsh.zzD(i, 4));
        this.zzbig--;
    }

    public boolean zzlA(int i) throws IOException {
        switch (zzsh.zzlU(i)) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
                zzFr();
                return true;
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                zzFy();
                return true;
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                zzlG(zzFv());
                return true;
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                zzFp();
                zzlz(zzsh.zzD(zzsh.zzlV(i), 4));
                return true;
            case Place.TYPE_AQUARIUM /*4*/:
                return false;
            case Place.TYPE_ART_GALLERY /*5*/:
                zzFx();
                return true;
            default:
                throw zzsd.zzFO();
        }
    }

    public int zzlC(int i) throws zzsd {
        if (i < 0) {
            throw zzsd.zzFK();
        }
        int i2 = this.zzbid + i;
        int i3 = this.zzbif;
        if (i2 > i3) {
            throw zzsd.zzFJ();
        }
        this.zzbif = i2;
        zzFz();
        return i3;
    }

    public void zzlD(int i) {
        this.zzbif = i;
        zzFz();
    }

    public void zzlE(int i) {
        if (i > this.zzbid - this.zzbia) {
            throw new IllegalArgumentException("Position " + i + " is beyond current " + (this.zzbid - this.zzbia));
        } else if (i < 0) {
            throw new IllegalArgumentException("Bad position " + i);
        } else {
            this.zzbid = this.zzbia + i;
        }
    }

    public byte[] zzlF(int i) throws IOException {
        if (i < 0) {
            throw zzsd.zzFK();
        } else if (this.zzbid + i > this.zzbif) {
            zzlG(this.zzbif - this.zzbid);
            throw zzsd.zzFJ();
        } else if (i <= this.zzbib - this.zzbid) {
            Object obj = new byte[i];
            System.arraycopy(this.buffer, this.zzbid, obj, 0, i);
            this.zzbid += i;
            return obj;
        } else {
            throw zzsd.zzFJ();
        }
    }

    public void zzlG(int i) throws IOException {
        if (i < 0) {
            throw zzsd.zzFK();
        } else if (this.zzbid + i > this.zzbif) {
            zzlG(this.zzbif - this.zzbid);
            throw zzsd.zzFJ();
        } else if (i <= this.zzbib - this.zzbid) {
            this.zzbid += i;
        } else {
            throw zzsd.zzFJ();
        }
    }

    public void zzlz(int i) throws zzsd {
        if (this.zzbie != i) {
            throw zzsd.zzFN();
        }
    }

    public byte[] zzx(int i, int i2) {
        if (i2 == 0) {
            return zzsh.zzbiE;
        }
        Object obj = new byte[i2];
        System.arraycopy(this.buffer, this.zzbia + i, obj, 0, i2);
        return obj;
    }
}
