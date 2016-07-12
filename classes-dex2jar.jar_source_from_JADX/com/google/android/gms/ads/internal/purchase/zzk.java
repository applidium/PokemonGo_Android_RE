package com.google.android.gms.ads.internal.purchase;

import android.content.Intent;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.zzgr;

@zzgr
public class zzk {
    private final String zztG;

    public zzk(String str) {
        this.zztG = str;
    }

    public boolean zza(String str, int i, Intent intent) {
        if (str == null || intent == null) {
            return false;
        }
        String zze = zzp.zzbF().zze(intent);
        String zzf = zzp.zzbF().zzf(intent);
        if (zze == null || zzf == null) {
            return false;
        }
        if (!str.equals(zzp.zzbF().zzao(zze))) {
            zzb.zzaH("Developer payload not match.");
            return false;
        } else if (this.zztG == null || zzl.zzc(this.zztG, zze, zzf)) {
            return true;
        } else {
            zzb.zzaH("Fail to verify signature.");
            return false;
        }
    }

    public String zzfq() {
        return zzp.zzbv().zzgD();
    }
}
