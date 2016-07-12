package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.GooglePlayServicesUtil;

@zzgr
public class zzbx {
    private boolean zzpA;
    private final Object zzpd;
    private SharedPreferences zzuj;

    public zzbx() {
        this.zzpd = new Object();
        this.zzpA = false;
        this.zzuj = null;
    }

    public void initialize(Context context) {
        synchronized (this.zzpd) {
            if (this.zzpA) {
                return;
            }
            Context remoteContext = GooglePlayServicesUtil.getRemoteContext(context);
            if (remoteContext == null) {
                return;
            }
            this.zzuj = zzp.zzbC().zzv(remoteContext);
            this.zzpA = true;
        }
    }

    public <T> T zzd(zzbu<T> com_google_android_gms_internal_zzbu_T) {
        synchronized (this.zzpd) {
            if (this.zzpA) {
                return com_google_android_gms_internal_zzbu_T.zza(this.zzuj);
            }
            T zzde = com_google_android_gms_internal_zzbu_T.zzde();
            return zzde;
        }
    }
}
