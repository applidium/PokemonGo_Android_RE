package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.ads.internal.formats.zzd;
import com.google.android.gms.ads.internal.formats.zzh;
import com.google.android.gms.internal.zzgm.zza;
import com.voxelbusters.nativeplugins.defines.Keys;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

@zzgr
public class zzgn implements zza<zzd> {
    private final boolean zzEa;
    private final boolean zzEb;

    public zzgn(boolean z, boolean z2) {
        this.zzEa = z;
        this.zzEb = z2;
    }

    public /* synthetic */ zzh.zza zza(zzgm com_google_android_gms_internal_zzgm, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        return zzb(com_google_android_gms_internal_zzgm, jSONObject);
    }

    public zzd zzb(zzgm com_google_android_gms_internal_zzgm, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        List<zziq> zza = com_google_android_gms_internal_zzgm.zza(jSONObject, "images", true, this.zzEa, this.zzEb);
        Future zza2 = com_google_android_gms_internal_zzgm.zza(jSONObject, "app_icon", true, this.zzEa);
        Future zze = com_google_android_gms_internal_zzgm.zze(jSONObject);
        List arrayList = new ArrayList();
        for (zziq com_google_android_gms_internal_zziq : zza) {
            arrayList.add(com_google_android_gms_internal_zziq.get());
        }
        return new zzd(jSONObject.getString("headline"), arrayList, jSONObject.getString(Keys.BODY), (zzcm) zza2.get(), jSONObject.getString("call_to_action"), jSONObject.optDouble("rating", -1.0d), jSONObject.optString("store"), jSONObject.optString("price"), (com.google.android.gms.ads.internal.formats.zza) zze.get(), new Bundle());
    }
}
