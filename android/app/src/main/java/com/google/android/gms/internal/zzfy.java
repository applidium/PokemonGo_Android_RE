package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.ads.internal.purchase.zze;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.dynamic.zzg;

@zzgr
public final class zzfy extends zzg<zzfu> {
    private static final zzfy zzDb;

    private static final class zza extends Exception {
        public zza(String str) {
            super(str);
        }
    }

    static {
        zzDb = new zzfy();
    }

    private zzfy() {
        super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
    }

    private static boolean zzc(Activity activity) throws zza {
        Intent intent = activity.getIntent();
        if (intent.hasExtra("com.google.android.gms.ads.internal.purchase.useClientJar")) {
            return intent.getBooleanExtra("com.google.android.gms.ads.internal.purchase.useClientJar", false);
        }
        throw new zza("InAppPurchaseManager requires the useClientJar flag in intent extras.");
    }

    public static zzft zze(Activity activity) {
        try {
            if (!zzc(activity)) {
                return zzDb.zzf(activity);
            }
            zzb.zzaF("Using AdOverlay from the client jar.");
            return new zze(activity);
        } catch (zza e) {
            zzb.zzaH(e.getMessage());
            return null;
        }
    }

    private zzft zzf(Activity activity) {
        try {
            return com.google.android.gms.internal.zzft.zza.zzQ(((zzfu) zzas(activity)).zzf(com.google.android.gms.dynamic.zze.zzy(activity)));
        } catch (Throwable e) {
            zzb.zzd("Could not create remote InAppPurchaseManager.", e);
            return null;
        } catch (Throwable e2) {
            zzb.zzd("Could not create remote InAppPurchaseManager.", e2);
            return null;
        }
    }

    protected zzfu zzU(IBinder iBinder) {
        return com.google.android.gms.internal.zzfu.zza.zzR(iBinder);
    }

    protected /* synthetic */ Object zzd(IBinder iBinder) {
        return zzU(iBinder);
    }
}
