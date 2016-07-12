package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzs.zza;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzd;
import com.google.android.gms.ads.internal.zzf;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzgr;

@zzgr
public class zze extends zzg<zzt> {
    public zze() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    private zzs zza(Context context, AdSizeParcel adSizeParcel, String str, zzel com_google_android_gms_internal_zzel, int i) {
        Throwable e;
        try {
            return zza.zzk(((zzt) zzas(context)).zza(com.google.android.gms.dynamic.zze.zzy(context), adSizeParcel, str, com_google_android_gms_internal_zzel, 8115000, i));
        } catch (RemoteException e2) {
            e = e2;
            zzb.zza("Could not create remote AdManager.", e);
            return null;
        } catch (zzg.zza e3) {
            e = e3;
            zzb.zza("Could not create remote AdManager.", e);
            return null;
        }
    }

    public zzs zza(Context context, AdSizeParcel adSizeParcel, String str, zzel com_google_android_gms_internal_zzel) {
        if (zzl.zzcF().zzR(context)) {
            zzs zza = zza(context, adSizeParcel, str, com_google_android_gms_internal_zzel, 1);
            if (zza != null) {
                return zza;
            }
        }
        zzb.zzaF("Using BannerAdManager from the client jar.");
        return new zzf(context, adSizeParcel, str, com_google_android_gms_internal_zzel, new VersionInfoParcel(8115000, 8115000, true), zzd.zzbd());
    }

    public zzs zzb(Context context, AdSizeParcel adSizeParcel, String str, zzel com_google_android_gms_internal_zzel) {
        if (zzl.zzcF().zzR(context)) {
            zzs zza = zza(context, adSizeParcel, str, com_google_android_gms_internal_zzel, 2);
            if (zza != null) {
                return zza;
            }
        }
        zzb.zzaH("Using InterstitialAdManager from the client jar.");
        return new zzk(context, adSizeParcel, str, com_google_android_gms_internal_zzel, new VersionInfoParcel(8115000, 8115000, true), zzd.zzbd());
    }

    protected /* synthetic */ Object zzd(IBinder iBinder) {
        return zze(iBinder);
    }

    protected zzt zze(IBinder iBinder) {
        return zzt.zza.zzl(iBinder);
    }
}
