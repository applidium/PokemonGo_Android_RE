package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.internal.zzhs.zza;

@zzgr
public class zzge extends zzgc {
    private zzgd zzDt;

    zzge(Context context, zza com_google_android_gms_internal_zzhs_zza, zziz com_google_android_gms_internal_zziz, zzgg.zza com_google_android_gms_internal_zzgg_zza) {
        super(context, com_google_android_gms_internal_zzhs_zza, com_google_android_gms_internal_zziz, com_google_android_gms_internal_zzgg_zza);
    }

    protected void zzfs() {
        int i;
        int i2;
        AdSizeParcel zzaN = this.zzoM.zzaN();
        if (zzaN.zztf) {
            DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
            i = displayMetrics.widthPixels;
            i2 = displayMetrics.heightPixels;
        } else {
            i = zzaN.widthPixels;
            i2 = zzaN.heightPixels;
        }
        this.zzDt = new zzgd(this, this.zzoM, i, i2);
        this.zzoM.zzhe().zza((zzja.zza) this);
        this.zzDt.zza(this.zzDf);
    }

    protected int zzft() {
        if (!this.zzDt.zzfx()) {
            return !this.zzDt.zzfy() ? 2 : -2;
        } else {
            zzb.zzaF("Ad-Network indicated no fill with passback URL.");
            return 3;
        }
    }
}
