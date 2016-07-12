package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;

public final class zzaa extends zzg<zzu> {
    private static final zzaa zzags;

    static {
        zzags = new zzaa();
    }

    private zzaa() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View zzb(Context context, int i, int i2) throws zza {
        return zzags.zzc(context, i, i2);
    }

    private View zzc(Context context, int i, int i2) throws zza {
        try {
            return (View) zze.zzp(((zzu) zzas(context)).zza(zze.zzy(context), i, i2));
        } catch (Throwable e) {
            throw new zza("Could not get button with size " + i + " and color " + i2, e);
        }
    }

    public zzu zzaN(IBinder iBinder) {
        return zzu.zza.zzaM(iBinder);
    }

    public /* synthetic */ Object zzd(IBinder iBinder) {
        return zzaN(iBinder);
    }
}
