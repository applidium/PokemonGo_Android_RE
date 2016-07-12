package com.google.android.gms.ads.internal;

import android.os.Build.VERSION;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.purchase.zzi;
import com.google.android.gms.ads.internal.request.zza;
import com.google.android.gms.internal.zzbv;
import com.google.android.gms.internal.zzbw;
import com.google.android.gms.internal.zzbx;
import com.google.android.gms.internal.zzcb;
import com.google.android.gms.internal.zzdu;
import com.google.android.gms.internal.zzej;
import com.google.android.gms.internal.zzgg;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzgz;
import com.google.android.gms.internal.zzhu;
import com.google.android.gms.internal.zzid;
import com.google.android.gms.internal.zzie;
import com.google.android.gms.internal.zzii;
import com.google.android.gms.internal.zzjb;
import com.google.android.gms.internal.zzmn;
import com.google.android.gms.internal.zzmp;

@zzgr
public class zzp {
    private static zzp zzpN;
    private static final Object zzpy;
    private final zza zzpO;
    private final com.google.android.gms.ads.internal.overlay.zza zzpP;
    private final zze zzpQ;
    private final zzgg zzpR;
    private final zzid zzpS;
    private final zzjb zzpT;
    private final zzie zzpU;
    private final zzhu zzpV;
    private final zzmn zzpW;
    private final zzcb zzpX;
    private final zzgz zzpY;
    private final zzbw zzpZ;
    private final zzbv zzqa;
    private final zzbx zzqb;
    private final zzi zzqc;
    private final zzii zzqd;
    private final zzej zzqe;
    private final zzdu zzqf;

    static {
        zzpy = new Object();
        zza(new zzp());
    }

    protected zzp() {
        this.zzpO = new zza();
        this.zzpP = new com.google.android.gms.ads.internal.overlay.zza();
        this.zzpQ = new zze();
        this.zzpR = new zzgg();
        this.zzpS = new zzid();
        this.zzpT = new zzjb();
        this.zzpU = zzie.zzM(VERSION.SDK_INT);
        this.zzpV = new zzhu(this.zzpS);
        this.zzpW = new zzmp();
        this.zzpX = new zzcb();
        this.zzpY = new zzgz();
        this.zzpZ = new zzbw();
        this.zzqa = new zzbv();
        this.zzqb = new zzbx();
        this.zzqc = new zzi();
        this.zzqd = new zzii();
        this.zzqe = new zzej();
        this.zzqf = new zzdu();
    }

    protected static void zza(zzp com_google_android_gms_ads_internal_zzp) {
        synchronized (zzpy) {
            zzpN = com_google_android_gms_ads_internal_zzp;
        }
    }

    public static zzcb zzbA() {
        return zzbq().zzpX;
    }

    public static zzgz zzbB() {
        return zzbq().zzpY;
    }

    public static zzbw zzbC() {
        return zzbq().zzpZ;
    }

    public static zzbv zzbD() {
        return zzbq().zzqa;
    }

    public static zzbx zzbE() {
        return zzbq().zzqb;
    }

    public static zzi zzbF() {
        return zzbq().zzqc;
    }

    public static zzii zzbG() {
        return zzbq().zzqd;
    }

    public static zzej zzbH() {
        return zzbq().zzqe;
    }

    public static zzdu zzbI() {
        return zzbq().zzqf;
    }

    private static zzp zzbq() {
        zzp com_google_android_gms_ads_internal_zzp;
        synchronized (zzpy) {
            com_google_android_gms_ads_internal_zzp = zzpN;
        }
        return com_google_android_gms_ads_internal_zzp;
    }

    public static zza zzbr() {
        return zzbq().zzpO;
    }

    public static com.google.android.gms.ads.internal.overlay.zza zzbs() {
        return zzbq().zzpP;
    }

    public static zze zzbt() {
        return zzbq().zzpQ;
    }

    public static zzgg zzbu() {
        return zzbq().zzpR;
    }

    public static zzid zzbv() {
        return zzbq().zzpS;
    }

    public static zzjb zzbw() {
        return zzbq().zzpT;
    }

    public static zzie zzbx() {
        return zzbq().zzpU;
    }

    public static zzhu zzby() {
        return zzbq().zzpV;
    }

    public static zzmn zzbz() {
        return zzbq().zzpW;
    }
}
