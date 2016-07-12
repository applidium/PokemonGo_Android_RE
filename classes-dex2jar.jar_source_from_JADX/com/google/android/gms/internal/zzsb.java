package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class zzsb implements Cloneable {
    private zzrz<?, ?> zzbir;
    private Object zzbis;
    private List<zzsg> zzbit;

    zzsb() {
        this.zzbit = new ArrayList();
    }

    private byte[] toByteArray() throws IOException {
        byte[] bArr = new byte[zzB()];
        zza(zzrx.zzC(bArr));
        return bArr;
    }

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return zzFI();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzsb)) {
            return false;
        }
        zzsb com_google_android_gms_internal_zzsb = (zzsb) obj;
        if (this.zzbis != null && com_google_android_gms_internal_zzsb.zzbis != null) {
            return this.zzbir == com_google_android_gms_internal_zzsb.zzbir ? !this.zzbir.zzbil.isArray() ? this.zzbis.equals(com_google_android_gms_internal_zzsb.zzbis) : this.zzbis instanceof byte[] ? Arrays.equals((byte[]) this.zzbis, (byte[]) com_google_android_gms_internal_zzsb.zzbis) : this.zzbis instanceof int[] ? Arrays.equals((int[]) this.zzbis, (int[]) com_google_android_gms_internal_zzsb.zzbis) : this.zzbis instanceof long[] ? Arrays.equals((long[]) this.zzbis, (long[]) com_google_android_gms_internal_zzsb.zzbis) : this.zzbis instanceof float[] ? Arrays.equals((float[]) this.zzbis, (float[]) com_google_android_gms_internal_zzsb.zzbis) : this.zzbis instanceof double[] ? Arrays.equals((double[]) this.zzbis, (double[]) com_google_android_gms_internal_zzsb.zzbis) : this.zzbis instanceof boolean[] ? Arrays.equals((boolean[]) this.zzbis, (boolean[]) com_google_android_gms_internal_zzsb.zzbis) : Arrays.deepEquals((Object[]) this.zzbis, (Object[]) com_google_android_gms_internal_zzsb.zzbis) : false;
        } else {
            if (this.zzbit != null && com_google_android_gms_internal_zzsb.zzbit != null) {
                return this.zzbit.equals(com_google_android_gms_internal_zzsb.zzbit);
            }
            try {
                return Arrays.equals(toByteArray(), com_google_android_gms_internal_zzsb.toByteArray());
            } catch (Throwable e) {
                throw new IllegalStateException(e);
            }
        }
    }

    public int hashCode() {
        try {
            return Arrays.hashCode(toByteArray()) + 527;
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    int zzB() {
        if (this.zzbis != null) {
            return this.zzbir.zzX(this.zzbis);
        }
        int i = 0;
        for (zzsg zzB : this.zzbit) {
            i += zzB.zzB();
        }
        return i;
    }

    public final zzsb zzFI() {
        int i = 0;
        zzsb com_google_android_gms_internal_zzsb = new zzsb();
        try {
            com_google_android_gms_internal_zzsb.zzbir = this.zzbir;
            if (this.zzbit == null) {
                com_google_android_gms_internal_zzsb.zzbit = null;
            } else {
                com_google_android_gms_internal_zzsb.zzbit.addAll(this.zzbit);
            }
            if (this.zzbis != null) {
                if (this.zzbis instanceof zzse) {
                    com_google_android_gms_internal_zzsb.zzbis = ((zzse) this.zzbis).zzFG();
                } else if (this.zzbis instanceof byte[]) {
                    com_google_android_gms_internal_zzsb.zzbis = ((byte[]) this.zzbis).clone();
                } else if (this.zzbis instanceof byte[][]) {
                    byte[][] bArr = (byte[][]) this.zzbis;
                    Object obj = new byte[bArr.length][];
                    com_google_android_gms_internal_zzsb.zzbis = obj;
                    for (int i2 = 0; i2 < bArr.length; i2++) {
                        obj[i2] = (byte[]) bArr[i2].clone();
                    }
                } else if (this.zzbis instanceof boolean[]) {
                    com_google_android_gms_internal_zzsb.zzbis = ((boolean[]) this.zzbis).clone();
                } else if (this.zzbis instanceof int[]) {
                    com_google_android_gms_internal_zzsb.zzbis = ((int[]) this.zzbis).clone();
                } else if (this.zzbis instanceof long[]) {
                    com_google_android_gms_internal_zzsb.zzbis = ((long[]) this.zzbis).clone();
                } else if (this.zzbis instanceof float[]) {
                    com_google_android_gms_internal_zzsb.zzbis = ((float[]) this.zzbis).clone();
                } else if (this.zzbis instanceof double[]) {
                    com_google_android_gms_internal_zzsb.zzbis = ((double[]) this.zzbis).clone();
                } else if (this.zzbis instanceof zzse[]) {
                    zzse[] com_google_android_gms_internal_zzseArr = (zzse[]) this.zzbis;
                    Object obj2 = new zzse[com_google_android_gms_internal_zzseArr.length];
                    com_google_android_gms_internal_zzsb.zzbis = obj2;
                    while (i < com_google_android_gms_internal_zzseArr.length) {
                        obj2[i] = com_google_android_gms_internal_zzseArr[i].zzFG();
                        i++;
                    }
                }
            }
            return com_google_android_gms_internal_zzsb;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    void zza(zzrx com_google_android_gms_internal_zzrx) throws IOException {
        if (this.zzbis != null) {
            this.zzbir.zza(this.zzbis, com_google_android_gms_internal_zzrx);
            return;
        }
        for (zzsg zza : this.zzbit) {
            zza.zza(com_google_android_gms_internal_zzrx);
        }
    }

    void zza(zzsg com_google_android_gms_internal_zzsg) {
        this.zzbit.add(com_google_android_gms_internal_zzsg);
    }

    <T> T zzb(zzrz<?, T> com_google_android_gms_internal_zzrz___T) {
        if (this.zzbis == null) {
            this.zzbir = com_google_android_gms_internal_zzrz___T;
            this.zzbis = com_google_android_gms_internal_zzrz___T.zzE(this.zzbit);
            this.zzbit = null;
        } else if (this.zzbir != com_google_android_gms_internal_zzrz___T) {
            throw new IllegalStateException("Tried to getExtension with a differernt Extension.");
        }
        return this.zzbis;
    }
}
