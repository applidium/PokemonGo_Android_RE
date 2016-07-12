package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import java.util.WeakHashMap;

@zzgr
public final class zzgz {
    private WeakHashMap<Context, zza> zzGO;

    private class zza {
        public final long zzGP;
        public final zzgy zzGQ;
        final /* synthetic */ zzgz zzGR;

        public zza(zzgz com_google_android_gms_internal_zzgz, zzgy com_google_android_gms_internal_zzgy) {
            this.zzGR = com_google_android_gms_internal_zzgz;
            this.zzGP = zzp.zzbz().currentTimeMillis();
            this.zzGQ = com_google_android_gms_internal_zzgy;
        }

        public boolean hasExpired() {
            return ((Long) zzby.zzvn.get()).longValue() + this.zzGP < zzp.zzbz().currentTimeMillis();
        }
    }

    public zzgz() {
        this.zzGO = new WeakHashMap();
    }

    public zzgy zzC(Context context) {
        zza com_google_android_gms_internal_zzgz_zza = (zza) this.zzGO.get(context);
        zzgy zzfX = (com_google_android_gms_internal_zzgz_zza == null || com_google_android_gms_internal_zzgz_zza.hasExpired() || !((Boolean) zzby.zzvm.get()).booleanValue()) ? new com.google.android.gms.internal.zzgy.zza(context).zzfX() : new com.google.android.gms.internal.zzgy.zza(context, com_google_android_gms_internal_zzgz_zza.zzGQ).zzfX();
        this.zzGO.put(context, new zza(this, zzfX));
        return zzfX;
    }
}
