package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzgr
public final class zzee {
    public final List<zzed> zzyW;
    public final long zzyX;
    public final List<String> zzyY;
    public final List<String> zzyZ;
    public final List<String> zzza;
    public final String zzzb;
    public final long zzzc;
    public final String zzzd;
    public final int zzze;
    public int zzzf;
    public int zzzg;

    public zzee(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        if (zzb.zzN(2)) {
            zzb.m37v("Mediation Response JSON: " + jSONObject.toString(2));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        List arrayList = new ArrayList(jSONArray.length());
        int i = -1;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            zzed com_google_android_gms_internal_zzed = new zzed(jSONArray.getJSONObject(i2));
            arrayList.add(com_google_android_gms_internal_zzed);
            if (i < 0 && zza(com_google_android_gms_internal_zzed)) {
                i = i2;
            }
        }
        this.zzzf = i;
        this.zzzg = jSONArray.length();
        this.zzyW = Collections.unmodifiableList(arrayList);
        this.zzzb = jSONObject.getString("qdata");
        jSONObject = jSONObject.optJSONObject("settings");
        if (jSONObject != null) {
            this.zzyX = jSONObject.optLong("ad_network_timeout_millis", -1);
            this.zzyY = zzp.zzbH().zza(jSONObject, "click_urls");
            this.zzyZ = zzp.zzbH().zza(jSONObject, "imp_urls");
            this.zzza = zzp.zzbH().zza(jSONObject, "nofill_urls");
            long optLong = jSONObject.optLong("refresh", -1);
            this.zzzc = optLong > 0 ? optLong * 1000 : -1;
            JSONArray optJSONArray = jSONObject.optJSONArray(NotifyRewards.REWARDS);
            if (optJSONArray == null || optJSONArray.length() == 0) {
                this.zzzd = null;
                this.zzze = 0;
                return;
            }
            this.zzzd = optJSONArray.getJSONObject(0).optString("rb_type");
            this.zzze = optJSONArray.getJSONObject(0).optInt("rb_amount");
            return;
        }
        this.zzyX = -1;
        this.zzyY = null;
        this.zzyZ = null;
        this.zzza = null;
        this.zzzc = -1;
        this.zzzd = null;
        this.zzze = 0;
    }

    private boolean zza(zzed com_google_android_gms_internal_zzed) {
        for (String equals : com_google_android_gms_internal_zzed.zzyO) {
            if (equals.equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                return true;
            }
        }
        return false;
    }
}
