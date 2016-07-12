package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.zzb;
import java.util.AbstractMap.SimpleEntry;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;

public class zzbg implements zzbf {
    private final zzbe zzrL;
    private final HashSet<SimpleEntry<String, zzdk>> zzrM;

    public zzbg(zzbe com_google_android_gms_internal_zzbe) {
        this.zzrL = com_google_android_gms_internal_zzbe;
        this.zzrM = new HashSet();
    }

    public void zza(String str, zzdk com_google_android_gms_internal_zzdk) {
        this.zzrL.zza(str, com_google_android_gms_internal_zzdk);
        this.zzrM.add(new SimpleEntry(str, com_google_android_gms_internal_zzdk));
    }

    public void zza(String str, String str2) {
        this.zzrL.zza(str, str2);
    }

    public void zza(String str, JSONObject jSONObject) {
        this.zzrL.zza(str, jSONObject);
    }

    public void zzb(String str, zzdk com_google_android_gms_internal_zzdk) {
        this.zzrL.zzb(str, com_google_android_gms_internal_zzdk);
        this.zzrM.remove(new SimpleEntry(str, com_google_android_gms_internal_zzdk));
    }

    public void zzb(String str, JSONObject jSONObject) {
        this.zzrL.zzb(str, jSONObject);
    }

    public void zzck() {
        Iterator it = this.zzrM.iterator();
        while (it.hasNext()) {
            SimpleEntry simpleEntry = (SimpleEntry) it.next();
            zzb.m37v("Unregistering eventhandler: " + ((zzdk) simpleEntry.getValue()).toString());
            this.zzrL.zzb((String) simpleEntry.getKey(), (zzdk) simpleEntry.getValue());
        }
        this.zzrM.clear();
    }
}
