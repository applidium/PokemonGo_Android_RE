package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import com.google.android.gms.internal.zzce;
import com.google.android.gms.internal.zzcg;
import com.google.android.gms.internal.zziz;
import com.google.android.gms.internal.zzmx;

public class zzl implements zzj {
    public zzi zza(Context context, zziz com_google_android_gms_internal_zziz, int i, zzcg com_google_android_gms_internal_zzcg, zzce com_google_android_gms_internal_zzce) {
        if (!zzmx.zzqx()) {
            return null;
        }
        return new zzc(context, new zzp(context, com_google_android_gms_internal_zziz.zzhh(), com_google_android_gms_internal_zziz.getRequestId(), com_google_android_gms_internal_zzcg, com_google_android_gms_internal_zzce));
    }
}
