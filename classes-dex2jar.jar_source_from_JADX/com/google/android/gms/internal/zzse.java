package com.google.android.gms.internal;

import java.io.IOException;

public abstract class zzse {
    protected volatile int zzbiv;

    public zzse() {
        this.zzbiv = -1;
    }

    public static final <T extends zzse> T zza(T t, byte[] bArr) throws zzsd {
        return zzb(t, bArr, 0, bArr.length);
    }

    public static final void zza(zzse com_google_android_gms_internal_zzse, byte[] bArr, int i, int i2) {
        try {
            zzrx zzb = zzrx.zzb(bArr, i, i2);
            com_google_android_gms_internal_zzse.zza(zzb);
            zzb.zzFE();
        } catch (Throwable e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public static final <T extends zzse> T zzb(T t, byte[] bArr, int i, int i2) throws zzsd {
        try {
            zzrw zza = zzrw.zza(bArr, i, i2);
            t.zzb(zza);
            zza.zzlz(0);
            return t;
        } catch (zzsd e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    public static final byte[] zzf(zzse com_google_android_gms_internal_zzse) {
        byte[] bArr = new byte[com_google_android_gms_internal_zzse.zzFR()];
        zza(com_google_android_gms_internal_zzse, bArr, 0, bArr.length);
        return bArr;
    }

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return zzFG();
    }

    public String toString() {
        return zzsf.zzg(this);
    }

    protected int zzB() {
        return 0;
    }

    public zzse zzFG() throws CloneNotSupportedException {
        return (zzse) super.clone();
    }

    public int zzFQ() {
        if (this.zzbiv < 0) {
            zzFR();
        }
        return this.zzbiv;
    }

    public int zzFR() {
        int zzB = zzB();
        this.zzbiv = zzB;
        return zzB;
    }

    public void zza(zzrx com_google_android_gms_internal_zzrx) throws IOException {
    }

    public abstract zzse zzb(zzrw com_google_android_gms_internal_zzrw) throws IOException;
}
