package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.zzb;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONObject;

@zzgr
public class zzdp implements zzdk {
    final HashMap<String, zzin<JSONObject>> zzxP;

    public zzdp() {
        this.zzxP = new HashMap();
    }

    public Future<JSONObject> zzY(String str) {
        Future com_google_android_gms_internal_zzin = new zzin();
        this.zzxP.put(str, com_google_android_gms_internal_zzin);
        return com_google_android_gms_internal_zzin;
    }

    public void zzZ(String str) {
        zzin com_google_android_gms_internal_zzin = (zzin) this.zzxP.get(str);
        if (com_google_android_gms_internal_zzin == null) {
            zzb.m36e("Could not find the ad request for the corresponding ad response.");
            return;
        }
        if (!com_google_android_gms_internal_zzin.isDone()) {
            com_google_android_gms_internal_zzin.cancel(true);
        }
        this.zzxP.remove(str);
    }

    public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        zzf((String) map.get("request_id"), (String) map.get("fetched_ad"));
    }

    public void zzf(String str, String str2) {
        zzb.zzaF("Received ad from the cache.");
        zzin com_google_android_gms_internal_zzin = (zzin) this.zzxP.get(str);
        if (com_google_android_gms_internal_zzin == null) {
            zzb.m36e("Could not find the ad request for the corresponding ad response.");
            return;
        }
        try {
            com_google_android_gms_internal_zzin.zzf(new JSONObject(str2));
        } catch (Throwable e) {
            zzb.zzb("Failed constructing JSON object from value passed from javascript", e);
            com_google_android_gms_internal_zzin.zzf(null);
        } finally {
            this.zzxP.remove(str);
        }
    }
}
