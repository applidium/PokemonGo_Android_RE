package com.google.android.gms.internal;

public final class zzsa implements Cloneable {
    private static final zzsb zzbin;
    private int mSize;
    private boolean zzbio;
    private int[] zzbip;
    private zzsb[] zzbiq;

    static {
        zzbin = new zzsb();
    }

    zzsa() {
        this(10);
    }

    zzsa(int i) {
        this.zzbio = false;
        int idealIntArraySize = idealIntArraySize(i);
        this.zzbip = new int[idealIntArraySize];
        this.zzbiq = new zzsb[idealIntArraySize];
        this.mSize = 0;
    }

    private void gc() {
        int i = this.mSize;
        int[] iArr = this.zzbip;
        zzsb[] com_google_android_gms_internal_zzsbArr = this.zzbiq;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            zzsb com_google_android_gms_internal_zzsb = com_google_android_gms_internal_zzsbArr[i3];
            if (com_google_android_gms_internal_zzsb != zzbin) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    com_google_android_gms_internal_zzsbArr[i2] = com_google_android_gms_internal_zzsb;
                    com_google_android_gms_internal_zzsbArr[i3] = null;
                }
                i2++;
            }
        }
        this.zzbio = false;
        this.mSize = i2;
    }

    private int idealByteArraySize(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            if (i <= (1 << i2) - 12) {
                return (1 << i2) - 12;
            }
        }
        return i;
    }

    private int idealIntArraySize(int i) {
        return idealByteArraySize(i * 4) / 4;
    }

    private boolean zza(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private boolean zza(zzsb[] com_google_android_gms_internal_zzsbArr, zzsb[] com_google_android_gms_internal_zzsbArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!com_google_android_gms_internal_zzsbArr[i2].equals(com_google_android_gms_internal_zzsbArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    private int zzlT(int i) {
        int i2 = 0;
        int i3 = this.mSize - 1;
        while (i2 <= i3) {
            int i4 = (i2 + i3) >>> 1;
            int i5 = this.zzbip[i4];
            if (i5 < i) {
                i2 = i4 + 1;
            } else if (i5 <= i) {
                return i4;
            } else {
                i3 = i4 - 1;
            }
        }
        return i2 ^ -1;
    }

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return zzFH();
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof zzsa)) {
                return false;
            }
            zzsa com_google_android_gms_internal_zzsa = (zzsa) obj;
            if (size() != com_google_android_gms_internal_zzsa.size() || !zza(this.zzbip, com_google_android_gms_internal_zzsa.zzbip, this.mSize)) {
                return false;
            }
            if (!zza(this.zzbiq, com_google_android_gms_internal_zzsa.zzbiq, this.mSize)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        if (this.zzbio) {
            gc();
        }
        int i = 17;
        for (int i2 = 0; i2 < this.mSize; i2++) {
            i = (((i * 31) + this.zzbip[i2]) * 31) + this.zzbiq[i2].hashCode();
        }
        return i;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    int size() {
        if (this.zzbio) {
            gc();
        }
        return this.mSize;
    }

    public final zzsa zzFH() {
        int i = 0;
        int size = size();
        zzsa com_google_android_gms_internal_zzsa = new zzsa(size);
        System.arraycopy(this.zzbip, 0, com_google_android_gms_internal_zzsa.zzbip, 0, size);
        while (i < size) {
            if (this.zzbiq[i] != null) {
                com_google_android_gms_internal_zzsa.zzbiq[i] = this.zzbiq[i].zzFI();
            }
            i++;
        }
        com_google_android_gms_internal_zzsa.mSize = size;
        return com_google_android_gms_internal_zzsa;
    }

    void zza(int i, zzsb com_google_android_gms_internal_zzsb) {
        int zzlT = zzlT(i);
        if (zzlT >= 0) {
            this.zzbiq[zzlT] = com_google_android_gms_internal_zzsb;
            return;
        }
        zzlT ^= -1;
        if (zzlT >= this.mSize || this.zzbiq[zzlT] != zzbin) {
            if (this.zzbio && this.mSize >= this.zzbip.length) {
                gc();
                zzlT = zzlT(i) ^ -1;
            }
            if (this.mSize >= this.zzbip.length) {
                int idealIntArraySize = idealIntArraySize(this.mSize + 1);
                Object obj = new int[idealIntArraySize];
                Object obj2 = new zzsb[idealIntArraySize];
                System.arraycopy(this.zzbip, 0, obj, 0, this.zzbip.length);
                System.arraycopy(this.zzbiq, 0, obj2, 0, this.zzbiq.length);
                this.zzbip = obj;
                this.zzbiq = obj2;
            }
            if (this.mSize - zzlT != 0) {
                System.arraycopy(this.zzbip, zzlT, this.zzbip, zzlT + 1, this.mSize - zzlT);
                System.arraycopy(this.zzbiq, zzlT, this.zzbiq, zzlT + 1, this.mSize - zzlT);
            }
            this.zzbip[zzlT] = i;
            this.zzbiq[zzlT] = com_google_android_gms_internal_zzsb;
            this.mSize++;
            return;
        }
        this.zzbip[zzlT] = i;
        this.zzbiq[zzlT] = com_google_android_gms_internal_zzsb;
    }

    zzsb zzlR(int i) {
        int zzlT = zzlT(i);
        return (zzlT < 0 || this.zzbiq[zzlT] == zzbin) ? null : this.zzbiq[zzlT];
    }

    zzsb zzlS(int i) {
        if (this.zzbio) {
            gc();
        }
        return this.zzbiq[i];
    }
}
