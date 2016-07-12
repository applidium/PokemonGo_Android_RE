package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.ads.internal.client.zzq.zza;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzgr;

@zzgr
public final class zzd extends zzg<zzr> {
    private static final zzd zzsA;

    static {
        zzsA = new zzd();
    }

    private zzd() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    public static zzq zza(Context context, String str, zzel com_google_android_gms_internal_zzel) {
        if (zzl.zzcF().zzR(context)) {
            zzq zzb = zzsA.zzb(context, str, com_google_android_gms_internal_zzel);
            if (zzb != null) {
                return zzb;
            }
        }
        zzb.zzaF("Using AdLoader from the client jar.");
        return new zzj(context, str, com_google_android_gms_internal_zzel, new VersionInfoParcel(8115000, 8115000, true));
    }

    private zzq zzb(Context context, String str, zzel com_google_android_gms_internal_zzel) {
        try {
            return zza.zzi(((zzr) zzas(context)).zza(zze.zzy(context), str, com_google_android_gms_internal_zzel, 8115000));
        } catch (Throwable e) {
            zzb.zzd("Could not create remote builder for AdLoader.", e);
            return null;
        } catch (Throwable e2) {
            zzb.zzd("Could not create remote builder for AdLoader.", e2);
            return null;
        }
    }

    protected zzr zzc(IBinder iBinder) {
        return zzr.zza.zzj(iBinder);
    }

    protected /* synthetic */ Object zzd(IBinder iBinder) {
        return zzc(iBinder);
    }
}
