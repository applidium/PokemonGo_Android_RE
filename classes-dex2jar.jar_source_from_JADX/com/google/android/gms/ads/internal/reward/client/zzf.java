package com.google.android.gms.ads.internal.reward.client;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.reward.client.zzb.zza;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzhf;

@zzgr
public class zzf extends zzg<zzc> {
    public zzf() {
        super("com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl");
    }

    private zzb zzb(Context context, zzel com_google_android_gms_internal_zzel) {
        Throwable e;
        try {
            return zza.zzaa(((zzc) zzas(context)).zza(zze.zzy(context), com_google_android_gms_internal_zzel, 8115000));
        } catch (RemoteException e2) {
            e = e2;
            zzb.zzd("Could not get remote RewardedVideoAd.", e);
            return null;
        } catch (zzg.zza e3) {
            e = e3;
            zzb.zzd("Could not get remote RewardedVideoAd.", e);
            return null;
        }
    }

    public zzb zza(Context context, zzel com_google_android_gms_internal_zzel) {
        if (zzl.zzcF().zzR(context)) {
            zzb zzb = zzb(context, com_google_android_gms_internal_zzel);
            if (zzb != null) {
                return zzb;
            }
        }
        zzb.zzaF("Using RewardedVideoAd from the client jar.");
        return new zzhf(context, com_google_android_gms_internal_zzel, new VersionInfoParcel(8115000, 8115000, true));
    }

    protected zzc zzad(IBinder iBinder) {
        return zzc.zza.zzab(iBinder);
    }

    protected /* synthetic */ Object zzd(IBinder iBinder) {
        return zzad(iBinder);
    }
}
