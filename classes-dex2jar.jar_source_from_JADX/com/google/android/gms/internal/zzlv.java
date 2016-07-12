package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import com.google.android.gms.common.internal.zzw;

public final class zzlv extends zzmg<zza, Drawable> {

    public static final class zza {
        public final int zzaeE;
        public final int zzaeF;

        public zza(int i, int i2) {
            this.zzaeE = i;
            this.zzaeF = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            if (this != obj) {
                zza com_google_android_gms_internal_zzlv_zza = (zza) obj;
                if (!(com_google_android_gms_internal_zzlv_zza.zzaeE == this.zzaeE && com_google_android_gms_internal_zzlv_zza.zzaeF == this.zzaeF)) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            return zzw.hashCode(Integer.valueOf(this.zzaeE), Integer.valueOf(this.zzaeF));
        }
    }

    public zzlv() {
        super(10);
    }
}
