package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.formats.zzc;
import com.google.android.gms.ads.internal.formats.zzf;
import com.google.android.gms.ads.internal.formats.zzh;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.internal.zzgm.zza;
import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzgr
public class zzgp implements zza<zzf> {
    private final boolean zzEa;

    public zzgp(boolean z) {
        this.zzEa = z;
    }

    private void zza(zzgm com_google_android_gms_internal_zzgm, JSONObject jSONObject, zzmi<String, Future<zzc>> com_google_android_gms_internal_zzmi_java_lang_String__java_util_concurrent_Future_com_google_android_gms_ads_internal_formats_zzc) throws JSONException {
        com_google_android_gms_internal_zzmi_java_lang_String__java_util_concurrent_Future_com_google_android_gms_ads_internal_formats_zzc.put(jSONObject.getString(Twitter.NAME), com_google_android_gms_internal_zzgm.zza(jSONObject, "image_value", this.zzEa));
    }

    private void zza(JSONObject jSONObject, zzmi<String, String> com_google_android_gms_internal_zzmi_java_lang_String__java_lang_String) throws JSONException {
        com_google_android_gms_internal_zzmi_java_lang_String__java_lang_String.put(jSONObject.getString(Twitter.NAME), jSONObject.getString("string_value"));
    }

    private <K, V> zzmi<K, V> zzc(zzmi<K, Future<V>> com_google_android_gms_internal_zzmi_K__java_util_concurrent_Future_V) throws InterruptedException, ExecutionException {
        zzmi<K, V> com_google_android_gms_internal_zzmi = new zzmi();
        for (int i = 0; i < com_google_android_gms_internal_zzmi_K__java_util_concurrent_Future_V.size(); i++) {
            com_google_android_gms_internal_zzmi.put(com_google_android_gms_internal_zzmi_K__java_util_concurrent_Future_V.keyAt(i), ((Future) com_google_android_gms_internal_zzmi_K__java_util_concurrent_Future_V.valueAt(i)).get());
        }
        return com_google_android_gms_internal_zzmi;
    }

    public /* synthetic */ zzh.zza zza(zzgm com_google_android_gms_internal_zzgm, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        return zzd(com_google_android_gms_internal_zzgm, jSONObject);
    }

    public zzf zzd(zzgm com_google_android_gms_internal_zzgm, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        zzmi com_google_android_gms_internal_zzmi = new zzmi();
        zzmi com_google_android_gms_internal_zzmi2 = new zzmi();
        Future zze = com_google_android_gms_internal_zzgm.zze(jSONObject);
        JSONArray jSONArray = jSONObject.getJSONArray("custom_assets");
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            String string = jSONObject2.getString(Keys.TYPE);
            if ("string".equals(string)) {
                zza(jSONObject2, com_google_android_gms_internal_zzmi2);
            } else if ("image".equals(string)) {
                zza(com_google_android_gms_internal_zzgm, jSONObject2, com_google_android_gms_internal_zzmi);
            } else {
                zzb.zzaH("Unknown custom asset type: " + string);
            }
        }
        return new zzf(jSONObject.getString("custom_template_id"), zzc(com_google_android_gms_internal_zzmi), com_google_android_gms_internal_zzmi2, (com.google.android.gms.ads.internal.formats.zza) zze.get());
    }
}
