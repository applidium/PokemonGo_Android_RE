package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.formats.zzj;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.internal.zzco.zza;

public class zzda extends zzg<zzcp> {
    public zzda() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    private zzco zzb(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        Throwable e;
        try {
            return zza.zzu(((zzcp) zzas(context)).zza(zze.zzy(context), zze.zzy(frameLayout), zze.zzy(frameLayout2), 8115000));
        } catch (RemoteException e2) {
            e = e2;
            zzb.zzd("Could not create remote NativeAdViewDelegate.", e);
            return null;
        } catch (zzg.zza e3) {
            e = e3;
            zzb.zzd("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }

    protected zzcp zzD(IBinder iBinder) {
        return zzcp.zza.zzv(iBinder);
    }

    public zzco zza(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        if (zzl.zzcF().zzR(context)) {
            zzco zzb = zzb(context, frameLayout, frameLayout2);
            if (zzb != null) {
                return zzb;
            }
        }
        zzb.zzaF("Using NativeAdViewDelegate from the client jar.");
        return new zzj(frameLayout, frameLayout2);
    }

    protected /* synthetic */ Object zzd(IBinder iBinder) {
        return zzD(iBinder);
    }
}
