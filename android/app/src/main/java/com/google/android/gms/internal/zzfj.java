package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzg;

@zzgr
public final class zzfj extends zzg<zzfl> {
    private static final zzfj zzCp;

    private static final class zza extends Exception {
        public zza(String str) {
            super(str);
        }
    }

    static {
        zzCp = new zzfj();
    }

    private zzfj() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    public static zzfk zzb(Activity activity) {
        try {
            if (!zzc(activity)) {
                return zzCp.zzd(activity);
            }
            zzb.zzaF("Using AdOverlay from the client jar.");
            return new zzd(activity);
        } catch (zza e) {
            zzb.zzaH(e.getMessage());
            return null;
        }
    }

    private static boolean zzc(Activity activity) throws zza {
        Intent intent = activity.getIntent();
        if (intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            return intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        throw new zza("Ad overlay requires the useClientJar flag in intent extras.");
    }

    private zzfk zzd(Activity activity) {
        try {
            return com.google.android.gms.internal.zzfk.zza.zzL(((zzfl) zzas(activity)).zze(zze.zzy(activity)));
        } catch (Throwable e) {
            zzb.zzd("Could not create remote AdOverlay.", e);
            return null;
        } catch (Throwable e2) {
            zzb.zzd("Could not create remote AdOverlay.", e2);
            return null;
        }
    }

    protected zzfl zzK(IBinder iBinder) {
        return com.google.android.gms.internal.zzfl.zza.zzM(iBinder);
    }

    protected /* synthetic */ Object zzd(IBinder iBinder) {
        return zzK(iBinder);
    }
}
