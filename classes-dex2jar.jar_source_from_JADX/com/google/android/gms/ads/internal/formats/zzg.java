package com.google.android.gms.ads.internal.formats;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzn;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzan;
import com.google.android.gms.internal.zzeq;
import com.google.android.gms.internal.zzer;
import com.google.android.gms.internal.zziz;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

public class zzg extends zzh {
    private Object zzpd;
    private zzeq zzwD;
    private zzer zzwE;
    private final zzn zzwF;
    private zzh zzwG;
    private boolean zzwH;

    private zzg(Context context, zzn com_google_android_gms_ads_internal_zzn, zzan com_google_android_gms_internal_zzan) {
        super(context, com_google_android_gms_ads_internal_zzn, null, com_google_android_gms_internal_zzan, null, null, null);
        this.zzwH = false;
        this.zzpd = new Object();
        this.zzwF = com_google_android_gms_ads_internal_zzn;
    }

    public zzg(Context context, zzn com_google_android_gms_ads_internal_zzn, zzan com_google_android_gms_internal_zzan, zzeq com_google_android_gms_internal_zzeq) {
        this(context, com_google_android_gms_ads_internal_zzn, com_google_android_gms_internal_zzan);
        this.zzwD = com_google_android_gms_internal_zzeq;
    }

    public zzg(Context context, zzn com_google_android_gms_ads_internal_zzn, zzan com_google_android_gms_internal_zzan, zzer com_google_android_gms_internal_zzer) {
        this(context, com_google_android_gms_ads_internal_zzn, com_google_android_gms_internal_zzan);
        this.zzwE = com_google_android_gms_internal_zzer;
    }

    public void recordImpression() {
        zzx.zzci("recordImpression must be called on the main UI thread.");
        synchronized (this.zzpd) {
            zzl(true);
            if (this.zzwG != null) {
                this.zzwG.recordImpression();
            } else {
                try {
                    if (this.zzwD != null && !this.zzwD.getOverrideClickHandling()) {
                        this.zzwD.recordImpression();
                    } else if (!(this.zzwE == null || this.zzwE.getOverrideClickHandling())) {
                        this.zzwE.recordImpression();
                    }
                } catch (Throwable e) {
                    zzb.zzd("Failed to call recordImpression", e);
                }
            }
            this.zzwF.recordImpression();
        }
    }

    public zzb zza(OnClickListener onClickListener) {
        return null;
    }

    public void zza(View view, Map<String, WeakReference<View>> map, JSONObject jSONObject, JSONObject jSONObject2) {
        zzx.zzci("performClick must be called on the main UI thread.");
        synchronized (this.zzpd) {
            if (this.zzwG != null) {
                this.zzwG.zza(view, map, jSONObject, jSONObject2);
            } else {
                try {
                    if (!(this.zzwD == null || this.zzwD.getOverrideClickHandling())) {
                        this.zzwD.zzc(zze.zzy(view));
                    }
                    if (!(this.zzwE == null || this.zzwE.getOverrideClickHandling())) {
                        this.zzwD.zzc(zze.zzy(view));
                    }
                } catch (Throwable e) {
                    zzb.zzd("Failed to call performClick", e);
                }
            }
            this.zzwF.onAdClicked();
        }
    }

    public void zzb(zzh com_google_android_gms_ads_internal_formats_zzh) {
        synchronized (this.zzpd) {
            this.zzwG = com_google_android_gms_ads_internal_formats_zzh;
        }
    }

    public boolean zzdB() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzwH;
        }
        return z;
    }

    public zziz zzdC() {
        return null;
    }

    public void zzh(View view) {
        synchronized (this.zzpd) {
            this.zzwH = true;
            try {
                if (this.zzwD != null) {
                    this.zzwD.zzd(zze.zzy(view));
                } else if (this.zzwE != null) {
                    this.zzwE.zzd(zze.zzy(view));
                }
            } catch (Throwable e) {
                zzb.zzd("Failed to call prepareAd", e);
            }
            this.zzwH = false;
        }
    }
}
