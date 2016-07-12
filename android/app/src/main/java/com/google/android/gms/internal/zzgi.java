package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.zzja.zza;
import com.voxelbusters.nativeplugins.defines.Keys.Mime;

@zzgr
public class zzgi extends zzgc implements zza {
    zzgi(Context context, zzhs.zza com_google_android_gms_internal_zzhs_zza, zziz com_google_android_gms_internal_zziz, zzgg.zza com_google_android_gms_internal_zzgg_zza) {
        super(context, com_google_android_gms_internal_zzhs_zza, com_google_android_gms_internal_zziz, com_google_android_gms_internal_zzgg_zza);
    }

    protected void zzfs() {
        if (this.zzDf.errorCode == -2) {
            this.zzoM.zzhe().zza((zza) this);
            zzfz();
            zzb.m37v("Loading HTML in WebView.");
            this.zzoM.loadDataWithBaseURL(zzp.zzbv().zzaz(this.zzDf.zzBF), this.zzDf.body, Mime.HTML_TEXT, "UTF-8", null);
        }
    }

    protected void zzfz() {
    }
}
