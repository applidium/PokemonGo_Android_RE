package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.zzb;

public class zzcb {
    public zzca zza(zzbz com_google_android_gms_internal_zzbz) {
        if (com_google_android_gms_internal_zzbz == null) {
            throw new IllegalArgumentException("CSI configuration can't be null. ");
        } else if (!com_google_android_gms_internal_zzbz.zzdg()) {
            zzb.m37v("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
            return null;
        } else if (com_google_android_gms_internal_zzbz.getContext() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        } else if (!TextUtils.isEmpty(com_google_android_gms_internal_zzbz.zzbV())) {
            return new zzca(com_google_android_gms_internal_zzbz.getContext(), com_google_android_gms_internal_zzbz.zzbV(), com_google_android_gms_internal_zzbz.zzdh(), com_google_android_gms_internal_zzbz.zzdi());
        } else {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
    }
}
