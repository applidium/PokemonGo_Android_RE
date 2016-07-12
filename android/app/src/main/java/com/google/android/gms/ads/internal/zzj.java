package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzo;
import com.google.android.gms.ads.internal.client.zzp;
import com.google.android.gms.ads.internal.client.zzq.zza;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzcw;
import com.google.android.gms.internal.zzcx;
import com.google.android.gms.internal.zzcy;
import com.google.android.gms.internal.zzcz;
import com.google.android.gms.internal.zzem;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzmi;

@zzgr
public class zzj extends zza {
    private final Context mContext;
    private zzo zzoT;
    private NativeAdOptionsParcel zzoY;
    private final zzem zzox;
    private final String zzpa;
    private final VersionInfoParcel zzpb;
    private zzcw zzpg;
    private zzcx zzph;
    private zzmi<String, zzcy> zzpi;
    private zzmi<String, zzcz> zzpj;

    public zzj(Context context, String str, zzem com_google_android_gms_internal_zzem, VersionInfoParcel versionInfoParcel) {
        this.mContext = context;
        this.zzpa = str;
        this.zzox = com_google_android_gms_internal_zzem;
        this.zzpb = versionInfoParcel;
        this.zzpj = new zzmi();
        this.zzpi = new zzmi();
    }

    public void zza(NativeAdOptionsParcel nativeAdOptionsParcel) {
        this.zzoY = nativeAdOptionsParcel;
    }

    public void zza(zzcw com_google_android_gms_internal_zzcw) {
        this.zzpg = com_google_android_gms_internal_zzcw;
    }

    public void zza(zzcx com_google_android_gms_internal_zzcx) {
        this.zzph = com_google_android_gms_internal_zzcx;
    }

    public void zza(String str, zzcz com_google_android_gms_internal_zzcz, zzcy com_google_android_gms_internal_zzcy) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Custom template ID for native custom template ad is empty. Please provide a valid template id.");
        }
        this.zzpj.put(str, com_google_android_gms_internal_zzcz);
        this.zzpi.put(str, com_google_android_gms_internal_zzcy);
    }

    public void zzb(zzo com_google_android_gms_ads_internal_client_zzo) {
        this.zzoT = com_google_android_gms_ads_internal_client_zzo;
    }

    public zzp zzbk() {
        return new zzi(this.mContext, this.zzpa, this.zzox, this.zzpb, this.zzoT, this.zzpg, this.zzph, this.zzpj, this.zzpi, this.zzoY);
    }
}
