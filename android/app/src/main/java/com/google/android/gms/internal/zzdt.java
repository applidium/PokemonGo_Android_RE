package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzp;

@zzgr
public class zzdt extends zzhz {
    final zziz zzoM;
    final zzdv zzxY;
    private final String zzxZ;

    /* renamed from: com.google.android.gms.internal.zzdt.1 */
    class C05061 implements Runnable {
        final /* synthetic */ zzdt zzya;

        C05061(zzdt com_google_android_gms_internal_zzdt) {
            this.zzya = com_google_android_gms_internal_zzdt;
        }

        public void run() {
            zzp.zzbI().zzb(this.zzya);
        }
    }

    zzdt(zziz com_google_android_gms_internal_zziz, zzdv com_google_android_gms_internal_zzdv, String str) {
        this.zzoM = com_google_android_gms_internal_zziz;
        this.zzxY = com_google_android_gms_internal_zzdv;
        this.zzxZ = str;
        zzp.zzbI().zza(this);
    }

    public void onStop() {
        this.zzxY.abort();
    }

    public void zzbn() {
        try {
            this.zzxY.zzab(this.zzxZ);
        } finally {
            zzid.zzIE.post(new C05061(this));
        }
    }
}
