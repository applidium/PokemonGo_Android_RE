package com.google.android.gms.ads.internal;

import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.internal.zzby;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zziz;
import com.voxelbusters.nativeplugins.defines.Keys.Scheme;

@zzgr
public class zze {
    private zza zzoI;
    private boolean zzoJ;
    private boolean zzoK;

    public interface zza {
        void zzq(String str);
    }

    @zzgr
    public static class zzb implements zza {
        private final com.google.android.gms.internal.zzhs.zza zzoL;
        private final zziz zzoM;

        public zzb(com.google.android.gms.internal.zzhs.zza com_google_android_gms_internal_zzhs_zza, zziz com_google_android_gms_internal_zziz) {
            this.zzoL = com_google_android_gms_internal_zzhs_zza;
            this.zzoM = com_google_android_gms_internal_zziz;
        }

        public void zzq(String str) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaF("An auto-clicking creative is blocked");
            Builder builder = new Builder();
            builder.scheme(Scheme.HTTPS);
            builder.path("//pagead2.googlesyndication.com/pagead/gen_204");
            builder.appendQueryParameter(TriggerIfContentAvailable.ID, "gmob-apps-blocked-navigation");
            if (!TextUtils.isEmpty(str)) {
                builder.appendQueryParameter("navigationURL", str);
            }
            if (!(this.zzoL == null || this.zzoL.zzHD == null || TextUtils.isEmpty(this.zzoL.zzHD.zzEP))) {
                builder.appendQueryParameter("debugDialog", this.zzoL.zzHD.zzEP);
            }
            zzp.zzbv().zzc(this.zzoM.getContext(), this.zzoM.zzhh().zzJu, builder.toString());
        }
    }

    public zze() {
        this.zzoK = ((Boolean) zzby.zzus.get()).booleanValue();
    }

    public zze(boolean z) {
        this.zzoK = z;
    }

    public void recordClick() {
        this.zzoJ = true;
    }

    public void zza(zza com_google_android_gms_ads_internal_zze_zza) {
        this.zzoI = com_google_android_gms_ads_internal_zze_zza;
    }

    public boolean zzbe() {
        return !this.zzoK || this.zzoJ;
    }

    public void zzp(String str) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaF("Action was blocked because no click was detected.");
        if (this.zzoI != null) {
            this.zzoI.zzq(str);
        }
    }
}
