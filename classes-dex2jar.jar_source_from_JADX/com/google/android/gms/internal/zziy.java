package com.google.android.gms.internal;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.google.android.gms.ads.internal.overlay.zzk;
import com.google.android.gms.common.internal.zzx;

public class zziy {
    private final Context mContext;
    private zzk zzCo;
    private final ViewGroup zzJT;
    private final zziz zzoM;

    public zziy(Context context, ViewGroup viewGroup, zziz com_google_android_gms_internal_zziz) {
        this(context, viewGroup, com_google_android_gms_internal_zziz, null);
    }

    zziy(Context context, ViewGroup viewGroup, zziz com_google_android_gms_internal_zziz, zzk com_google_android_gms_ads_internal_overlay_zzk) {
        this.mContext = context;
        this.zzJT = viewGroup;
        this.zzoM = com_google_android_gms_internal_zziz;
        this.zzCo = com_google_android_gms_ads_internal_overlay_zzk;
    }

    public void onDestroy() {
        zzx.zzci("onDestroy must be called from the UI thread.");
        if (this.zzCo != null) {
            this.zzCo.destroy();
        }
    }

    public void zza(int i, int i2, int i3, int i4, int i5) {
        if (this.zzCo == null) {
            zzcc.zza(this.zzoM.zzhn().zzdm(), this.zzoM.zzhm(), "vpr");
            zzce zzb = zzcc.zzb(this.zzoM.zzhn().zzdm());
            this.zzCo = new zzk(this.mContext, this.zzoM, i5, this.zzoM.zzhn().zzdm(), zzb);
            this.zzJT.addView(this.zzCo, 0, new LayoutParams(-1, -1));
            this.zzCo.zzd(i, i2, i3, i4);
            this.zzoM.zzhe().zzF(false);
        }
    }

    public void zze(int i, int i2, int i3, int i4) {
        zzx.zzci("The underlay may only be modified from the UI thread.");
        if (this.zzCo != null) {
            this.zzCo.zzd(i, i2, i3, i4);
        }
    }

    public zzk zzgX() {
        zzx.zzci("getAdVideoUnderlay must be called from the UI thread.");
        return this.zzCo;
    }
}
