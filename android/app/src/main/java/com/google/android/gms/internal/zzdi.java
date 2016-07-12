package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import java.util.Map;

@zzgr
public final class zzdi implements zzdk {
    private void zzb(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        String str = (String) map.get("label");
        String str2 = (String) map.get("start_label");
        String str3 = (String) map.get(GameServices.USER_TIME_STAMP);
        if (TextUtils.isEmpty(str)) {
            zzb.zzaH("No label given for CSI tick.");
        } else if (TextUtils.isEmpty(str3)) {
            zzb.zzaH("No timestamp given for CSI tick.");
        } else {
            try {
                long zzc = zzc(Long.parseLong(str3));
                if (TextUtils.isEmpty(str2)) {
                    str2 = "native:view_load";
                }
                com_google_android_gms_internal_zziz.zzhn().zza(str, str2, zzc);
            } catch (Throwable e) {
                zzb.zzd("Malformed timestamp for CSI tick.", e);
            }
        }
    }

    private long zzc(long j) {
        return (j - zzp.zzbz().currentTimeMillis()) + zzp.zzbz().elapsedRealtime();
    }

    private void zzc(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        String str = (String) map.get(GameServices.SCORE_VALUE);
        if (TextUtils.isEmpty(str)) {
            zzb.zzaH("No value given for CSI experiment.");
            return;
        }
        zzcg zzdm = com_google_android_gms_internal_zziz.zzhn().zzdm();
        if (zzdm == null) {
            zzb.zzaH("No ticker for WebView, dropping experiment ID.");
        } else {
            zzdm.zze("e", str);
        }
    }

    private void zzd(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        String str = (String) map.get(Twitter.NAME);
        String str2 = (String) map.get(GameServices.SCORE_VALUE);
        if (TextUtils.isEmpty(str2)) {
            zzb.zzaH("No value given for CSI extra.");
        } else if (TextUtils.isEmpty(str)) {
            zzb.zzaH("No name given for CSI extra.");
        } else {
            zzcg zzdm = com_google_android_gms_internal_zziz.zzhn().zzdm();
            if (zzdm == null) {
                zzb.zzaH("No ticker for WebView, dropping extra parameter.");
            } else {
                zzdm.zze(str, str2);
            }
        }
    }

    public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            zzb(com_google_android_gms_internal_zziz, map);
        } else if ("experiment".equals(str)) {
            zzc(com_google_android_gms_internal_zziz, map);
        } else if ("extra".equals(str)) {
            zzd(com_google_android_gms_internal_zziz, map);
        }
    }
}
