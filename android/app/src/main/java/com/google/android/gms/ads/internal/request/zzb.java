package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.zzan;
import com.google.android.gms.internal.zzbk;
import com.google.android.gms.internal.zzby;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzhz;
import com.google.android.gms.internal.zzid;
import org.json.JSONException;
import org.json.JSONObject;

@zzgr
public class zzb extends zzhz implements com.google.android.gms.ads.internal.request.zzc.zza {
    private final Context mContext;
    AdResponseParcel zzDf;
    private Runnable zzDg;
    private final Object zzDh;
    private final com.google.android.gms.ads.internal.request.zza.zza zzEe;
    private final com.google.android.gms.ads.internal.request.AdRequestInfoParcel.zza zzEf;
    zzhz zzEg;
    private final zzan zzwL;
    zzee zzzA;
    private AdRequestInfoParcel zzzz;

    /* renamed from: com.google.android.gms.ads.internal.request.zzb.1 */
    class C01941 implements Runnable {
        final /* synthetic */ zzb zzEh;

        C01941(zzb com_google_android_gms_ads_internal_request_zzb) {
            this.zzEh = com_google_android_gms_ads_internal_request_zzb;
        }

        public void run() {
            synchronized (this.zzEh.zzDh) {
                if (this.zzEh.zzEg == null) {
                    return;
                }
                this.zzEh.onStop();
                this.zzEh.zzc(2, "Timed out waiting for ad response.");
            }
        }
    }

    @zzgr
    static final class zza extends Exception {
        private final int zzDv;

        public zza(String str, int i) {
            super(str);
            this.zzDv = i;
        }

        public int getErrorCode() {
            return this.zzDv;
        }
    }

    public zzb(Context context, com.google.android.gms.ads.internal.request.AdRequestInfoParcel.zza com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza, zzan com_google_android_gms_internal_zzan, com.google.android.gms.ads.internal.request.zza.zza com_google_android_gms_ads_internal_request_zza_zza) {
        this.zzDh = new Object();
        this.zzEe = com_google_android_gms_ads_internal_request_zza_zza;
        this.mContext = context;
        this.zzEf = com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza;
        this.zzwL = com_google_android_gms_internal_zzan;
    }

    private void zzc(int i, String str) {
        if (i == 3 || i == -1) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaG(str);
        } else {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH(str);
        }
        if (this.zzDf == null) {
            this.zzDf = new AdResponseParcel(i);
        } else {
            this.zzDf = new AdResponseParcel(i, this.zzDf.zzzc);
        }
        this.zzEe.zza(new com.google.android.gms.internal.zzhs.zza(this.zzzz, this.zzDf, this.zzzA, null, i, -1, this.zzDf.zzEO, null));
    }

    public void onStop() {
        synchronized (this.zzDh) {
            if (this.zzEg != null) {
                this.zzEg.cancel();
            }
        }
    }

    zzhz zzb(AdRequestInfoParcel adRequestInfoParcel) {
        return zzc.zza(this.mContext, adRequestInfoParcel, this);
    }

    public void zzb(AdResponseParcel adResponseParcel) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaF("Received ad response.");
        this.zzDf = adResponseParcel;
        long elapsedRealtime = zzp.zzbz().elapsedRealtime();
        synchronized (this.zzDh) {
            this.zzEg = null;
        }
        try {
            if (this.zzDf.errorCode == -2 || this.zzDf.errorCode == -3) {
                JSONObject jSONObject;
                zzfG();
                AdSizeParcel zzc = this.zzzz.zzqn.zztg != null ? zzc(this.zzzz) : null;
                zzw(this.zzDf.zzEU);
                if (!TextUtils.isEmpty(this.zzDf.zzES)) {
                    try {
                        jSONObject = new JSONObject(this.zzDf.zzES);
                    } catch (Throwable e) {
                        com.google.android.gms.ads.internal.util.client.zzb.zzb("Error parsing the JSON for Active View.", e);
                    }
                    this.zzEe.zza(new com.google.android.gms.internal.zzhs.zza(this.zzzz, this.zzDf, this.zzzA, zzc, -2, elapsedRealtime, this.zzDf.zzEO, jSONObject));
                    zzid.zzIE.removeCallbacks(this.zzDg);
                    return;
                }
                jSONObject = null;
                this.zzEe.zza(new com.google.android.gms.internal.zzhs.zza(this.zzzz, this.zzDf, this.zzzA, zzc, -2, elapsedRealtime, this.zzDf.zzEO, jSONObject));
                zzid.zzIE.removeCallbacks(this.zzDg);
                return;
            }
            throw new zza("There was a problem getting an ad response. ErrorCode: " + this.zzDf.errorCode, this.zzDf.errorCode);
        } catch (zza e2) {
            zzc(e2.getErrorCode(), e2.getMessage());
            zzid.zzIE.removeCallbacks(this.zzDg);
        }
    }

    public void zzbn() {
        com.google.android.gms.ads.internal.util.client.zzb.zzaF("AdLoaderBackgroundTask started.");
        String zzb = this.zzwL.zzab().zzb(this.mContext);
        this.zzDg = new C01941(this);
        zzid.zzIE.postDelayed(this.zzDg, ((Long) zzby.zzvv.get()).longValue());
        this.zzzz = new AdRequestInfoParcel(this.zzEf, zzb, zzp.zzbz().elapsedRealtime());
        synchronized (this.zzDh) {
            this.zzEg = zzb(this.zzzz);
            if (this.zzEg == null) {
                zzc(0, "Could not start the ad request service.");
                zzid.zzIE.removeCallbacks(this.zzDg);
            }
        }
    }

    protected AdSizeParcel zzc(AdRequestInfoParcel adRequestInfoParcel) throws zza {
        if (this.zzDf.zzEN == null) {
            throw new zza("The ad response must specify one of the supported ad sizes.", 0);
        }
        String[] split = this.zzDf.zzEN.split("x");
        if (split.length != 2) {
            throw new zza("Invalid ad size format from the ad response: " + this.zzDf.zzEN, 0);
        }
        try {
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            for (AdSizeParcel adSizeParcel : adRequestInfoParcel.zzqn.zztg) {
                float f = this.mContext.getResources().getDisplayMetrics().density;
                int i = adSizeParcel.width == -1 ? (int) (((float) adSizeParcel.widthPixels) / f) : adSizeParcel.width;
                int i2 = adSizeParcel.height == -2 ? (int) (((float) adSizeParcel.heightPixels) / f) : adSizeParcel.height;
                if (parseInt == i && parseInt2 == i2) {
                    return new AdSizeParcel(adSizeParcel, adRequestInfoParcel.zzqn.zztg);
                }
            }
            throw new zza("The ad size from the ad response was not one of the requested sizes: " + this.zzDf.zzEN, 0);
        } catch (NumberFormatException e) {
            throw new zza("Invalid ad size number from the ad response: " + this.zzDf.zzEN, 0);
        }
    }

    protected void zzfG() throws zza {
        if (this.zzDf.errorCode != -3) {
            if (TextUtils.isEmpty(this.zzDf.body)) {
                throw new zza("No fill from ad server.", 3);
            }
            zzp.zzby().zza(this.mContext, this.zzDf.zzEv);
            if (this.zzDf.zzEK) {
                try {
                    this.zzzA = new zzee(this.zzDf.body);
                } catch (JSONException e) {
                    throw new zza("Could not parse mediation config: " + this.zzDf.body, 0);
                }
            }
        }
    }

    protected void zzw(boolean z) {
        zzp.zzby().zzA(z);
        zzbk zzE = zzp.zzby().zzE(this.mContext);
        if (zzE != null && !zzE.isAlive()) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaF("start fetching content...");
            zzE.zzct();
        }
    }
}
