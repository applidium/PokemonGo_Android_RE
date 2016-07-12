package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzw.zza;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.internal.zzgr;

@zzgr
public class zzm extends zza {
    private static final Object zzpy;
    private static zzm zzpz;
    private final Context mContext;
    private boolean zzpA;

    static {
        zzpy = new Object();
    }

    zzm(Context context) {
        this.mContext = context;
        this.zzpA = false;
    }

    public static zzm zzq(Context context) {
        zzm com_google_android_gms_ads_internal_zzm;
        synchronized (zzpy) {
            if (zzpz == null) {
                zzpz = new zzm(context.getApplicationContext());
            }
            com_google_android_gms_ads_internal_zzm = zzpz;
        }
        return com_google_android_gms_ads_internal_zzm;
    }

    public void zza() {
        synchronized (zzpy) {
            if (this.zzpA) {
                zzb.zzaH("Mobile ads is initialized already.");
                return;
            }
            this.zzpA = true;
        }
    }
}
