package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.internal.reward.client.zzf;
import com.google.android.gms.ads.internal.util.client.zza;
import com.google.android.gms.internal.zzda;
import com.google.android.gms.internal.zzgr;

@zzgr
public class zzl {
    private static final Object zzpy;
    private static zzl zztl;
    private final zza zztm;
    private final zze zztn;
    private final zzm zzto;
    private final zzad zztp;
    private final zzda zztq;
    private final zzf zztr;

    static {
        zzpy = new Object();
        zza(new zzl());
    }

    protected zzl() {
        this.zztm = new zza();
        this.zztn = new zze();
        this.zzto = new zzm();
        this.zztp = new zzad();
        this.zztq = new zzda();
        this.zztr = new zzf();
    }

    protected static void zza(zzl com_google_android_gms_ads_internal_client_zzl) {
        synchronized (zzpy) {
            zztl = com_google_android_gms_ads_internal_client_zzl;
        }
    }

    private static zzl zzcE() {
        zzl com_google_android_gms_ads_internal_client_zzl;
        synchronized (zzpy) {
            com_google_android_gms_ads_internal_client_zzl = zztl;
        }
        return com_google_android_gms_ads_internal_client_zzl;
    }

    public static zza zzcF() {
        return zzcE().zztm;
    }

    public static zze zzcG() {
        return zzcE().zztn;
    }

    public static zzm zzcH() {
        return zzcE().zzto;
    }

    public static zzad zzcI() {
        return zzcE().zztp;
    }

    public static zzda zzcJ() {
        return zzcE().zztq;
    }

    public static zzf zzcK() {
        return zzcE().zztr;
    }
}
