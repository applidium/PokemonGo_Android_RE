package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.zzb;
import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import java.util.Map;

@zzgr
public final class zzdf implements zzdk {
    private final zzdg zzxn;

    public zzdf(zzdg com_google_android_gms_internal_zzdg) {
        this.zzxn = com_google_android_gms_internal_zzdg;
    }

    public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        String str = (String) map.get(Twitter.NAME);
        if (str == null) {
            zzb.zzaH("App event with no name parameter.");
        } else {
            this.zzxn.onAppEvent(str, (String) map.get("info"));
        }
    }
}
