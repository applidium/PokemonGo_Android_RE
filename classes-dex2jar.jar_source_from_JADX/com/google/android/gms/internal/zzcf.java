package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

public class zzcf {
    private final zzcg zzoo;
    private final Map<String, zzce> zzvQ;

    public zzcf(zzcg com_google_android_gms_internal_zzcg) {
        this.zzoo = com_google_android_gms_internal_zzcg;
        this.zzvQ = new HashMap();
    }

    public void zza(String str, zzce com_google_android_gms_internal_zzce) {
        this.zzvQ.put(str, com_google_android_gms_internal_zzce);
    }

    public void zza(String str, String str2, long j) {
        zzcc.zza(this.zzoo, (zzce) this.zzvQ.get(str2), j, str);
        this.zzvQ.put(str, zzcc.zza(this.zzoo, j));
    }

    public zzcg zzdm() {
        return this.zzoo;
    }
}
