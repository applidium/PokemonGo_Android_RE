package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.ads.internal.client.zzw.zza;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.internal.zzgr;

@zzgr
public class zzad extends zzg<zzx> {
    public zzad() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    private zzw zzu(Context context) {
        try {
            return zza.zzo(((zzx) zzas(context)).zza(zze.zzy(context), 8115000));
        } catch (Throwable e) {
            zzb.zzd("Could not get remote MobileAdsSettingManager.", e);
            return null;
        } catch (Throwable e2) {
            zzb.zzd("Could not get remote MobileAdsSettingManager.", e2);
            return null;
        }
    }

    protected /* synthetic */ Object zzd(IBinder iBinder) {
        return zzq(iBinder);
    }

    protected zzx zzq(IBinder iBinder) {
        return zzx.zza.zzp(iBinder);
    }

    public zzw zzt(Context context) {
        if (zzl.zzcF().zzR(context)) {
            zzw zzu = zzu(context);
            if (zzu != null) {
                return zzu;
            }
        }
        zzb.zzaF("Using MobileAdsSettingManager from the client jar.");
        VersionInfoParcel versionInfoParcel = new VersionInfoParcel(8115000, 8115000, true);
        return zzm.zzq(context);
    }
}
