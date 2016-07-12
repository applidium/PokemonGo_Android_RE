package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import java.util.Map;

@zzgr
public class zzfd {
    private final boolean zzAq;
    private final String zzAr;
    private final zziz zzoM;

    public zzfd(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        this.zzoM = com_google_android_gms_internal_zziz;
        this.zzAr = (String) map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.zzAq = Boolean.parseBoolean((String) map.get("allowOrientationChange"));
        } else {
            this.zzAq = true;
        }
    }

    public void execute() {
        if (this.zzoM == null) {
            zzb.zzaH("AdWebView is null");
            return;
        }
        int zzgH = "portrait".equalsIgnoreCase(this.zzAr) ? zzp.zzbx().zzgH() : "landscape".equalsIgnoreCase(this.zzAr) ? zzp.zzbx().zzgG() : this.zzAq ? -1 : zzp.zzbx().zzgI();
        this.zzoM.setRequestedOrientation(zzgH);
    }
}
