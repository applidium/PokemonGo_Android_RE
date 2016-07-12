package com.google.android.gms.internal;

import java.io.IOException;

public abstract class zzry<M extends zzry<M>> extends zzse {
    protected zzsa zzbik;

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return zzFF();
    }

    protected int zzB() {
        int i = 0;
        if (this.zzbik == null) {
            return 0;
        }
        int i2 = 0;
        while (i < this.zzbik.size()) {
            i2 += this.zzbik.zzlS(i).zzB();
            i++;
        }
        return i2;
    }

    public M zzFF() throws CloneNotSupportedException {
        zzry com_google_android_gms_internal_zzry = (zzry) super.zzFG();
        zzsc.zza(this, com_google_android_gms_internal_zzry);
        return com_google_android_gms_internal_zzry;
    }

    public /* synthetic */ zzse zzFG() throws CloneNotSupportedException {
        return zzFF();
    }

    public final <T> T zza(zzrz<M, T> com_google_android_gms_internal_zzrz_M__T) {
        if (this.zzbik == null) {
            return null;
        }
        zzsb zzlR = this.zzbik.zzlR(zzsh.zzlV(com_google_android_gms_internal_zzrz_M__T.tag));
        return zzlR != null ? zzlR.zzb(com_google_android_gms_internal_zzrz_M__T) : null;
    }

    public void zza(zzrx com_google_android_gms_internal_zzrx) throws IOException {
        if (this.zzbik != null) {
            for (int i = 0; i < this.zzbik.size(); i++) {
                this.zzbik.zzlS(i).zza(com_google_android_gms_internal_zzrx);
            }
        }
    }

    protected final boolean zza(zzrw com_google_android_gms_internal_zzrw, int i) throws IOException {
        int position = com_google_android_gms_internal_zzrw.getPosition();
        if (!com_google_android_gms_internal_zzrw.zzlA(i)) {
            return false;
        }
        int zzlV = zzsh.zzlV(i);
        zzsg com_google_android_gms_internal_zzsg = new zzsg(i, com_google_android_gms_internal_zzrw.zzx(position, com_google_android_gms_internal_zzrw.getPosition() - position));
        zzsb com_google_android_gms_internal_zzsb = null;
        if (this.zzbik == null) {
            this.zzbik = new zzsa();
        } else {
            com_google_android_gms_internal_zzsb = this.zzbik.zzlR(zzlV);
        }
        if (com_google_android_gms_internal_zzsb == null) {
            com_google_android_gms_internal_zzsb = new zzsb();
            this.zzbik.zza(zzlV, com_google_android_gms_internal_zzsb);
        }
        com_google_android_gms_internal_zzsb.zza(com_google_android_gms_internal_zzsg);
        return true;
    }
}
