package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import java.util.Map;
import spacemadness.com.lunarconsole.BuildConfig;

@zzgr
public class zzdw implements zzdk {
    public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        zzdu zzbI = zzp.zzbI();
        if (!map.containsKey("abort")) {
            String str = (String) map.get("src");
            if (str == null) {
                zzb.zzaH("Precache video action is missing the src parameter.");
                return;
            }
            int parseInt;
            try {
                parseInt = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException e) {
                parseInt = 0;
            }
            String str2 = map.containsKey("mimetype") ? (String) map.get("mimetype") : BuildConfig.FLAVOR;
            if (zzbI.zzb(com_google_android_gms_internal_zziz)) {
                zzb.zzaH("Precache task already running.");
                return;
            }
            com.google.android.gms.common.internal.zzb.zzs(com_google_android_gms_internal_zziz.zzhb());
            new zzdt(com_google_android_gms_internal_zziz, com_google_android_gms_internal_zziz.zzhb().zzoG.zza(com_google_android_gms_internal_zziz, parseInt, str2), str).zzgz();
        } else if (!zzbI.zza(com_google_android_gms_internal_zziz)) {
            zzb.zzaH("Precache abort but no preload task running.");
        }
    }
}
