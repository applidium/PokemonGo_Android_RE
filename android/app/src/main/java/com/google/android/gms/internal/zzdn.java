package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.zzb;
import java.util.Map;

@zzgr
public class zzdn implements zzdk {
    private final zzdo zzxO;

    public zzdn(zzdo com_google_android_gms_internal_zzdo) {
        this.zzxO = com_google_android_gms_internal_zzdo;
    }

    public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        float parseFloat;
        boolean equals = "1".equals(map.get("transparentBackground"));
        boolean equals2 = "1".equals(map.get("blur"));
        try {
            if (map.get("blurRadius") != null) {
                parseFloat = Float.parseFloat((String) map.get("blurRadius"));
                this.zzxO.zzd(equals);
                this.zzxO.zza(equals2, parseFloat);
            }
        } catch (Throwable e) {
            zzb.zzb("Fail to parse float", e);
        }
        parseFloat = 0.0f;
        this.zzxO.zzd(equals);
        this.zzxO.zza(equals2, parseFloat);
    }
}
