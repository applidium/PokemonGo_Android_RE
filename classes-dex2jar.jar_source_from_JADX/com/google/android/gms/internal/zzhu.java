package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.security.NetworkSecurityPolicy;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.zzib.zzb;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.Future;

@zzgr
public class zzhu implements zzb {
    private Context mContext;
    private boolean zzGg;
    private boolean zzGh;
    private final String zzHP;
    private final zzhv zzHQ;
    private BigInteger zzHR;
    private final HashSet<zzht> zzHS;
    private final HashMap<String, zzhx> zzHT;
    private boolean zzHU;
    private int zzHV;
    private zzca zzHW;
    private zzbk zzHX;
    private final LinkedList<Thread> zzHY;
    private Boolean zzHZ;
    private String zzIa;
    private boolean zzIb;
    private boolean zzIc;
    private zzay zzov;
    private boolean zzpA;
    private VersionInfoParcel zzpb;
    private final Object zzpd;
    private zzbj zzsa;
    private zzbi zzsb;
    private final zzgq zzsc;

    public zzhu(zzid com_google_android_gms_internal_zzid) {
        this.zzpd = new Object();
        this.zzHR = BigInteger.ONE;
        this.zzHS = new HashSet();
        this.zzHT = new HashMap();
        this.zzHU = false;
        this.zzGg = true;
        this.zzHV = 0;
        this.zzpA = false;
        this.zzHW = null;
        this.zzGh = true;
        this.zzsa = null;
        this.zzHX = null;
        this.zzsb = null;
        this.zzHY = new LinkedList();
        this.zzsc = null;
        this.zzHZ = null;
        this.zzIb = false;
        this.zzIc = false;
        this.zzHP = com_google_android_gms_internal_zzid.zzgD();
        this.zzHQ = new zzhv(this.zzHP);
    }

    public String getSessionId() {
        return this.zzHP;
    }

    public void zzA(boolean z) {
        synchronized (this.zzpd) {
            this.zzGh = z;
        }
    }

    public void zzB(boolean z) {
        synchronized (this.zzpd) {
            this.zzIb = z;
        }
    }

    public zzbk zzE(Context context) {
        if (!((Boolean) zzby.zzuT.get()).booleanValue() || !zzmx.zzqx() || zzgl()) {
            return null;
        }
        synchronized (this.zzpd) {
            if (this.zzsa == null) {
                if (context instanceof Activity) {
                    this.zzsa = new zzbj((Application) context.getApplicationContext(), (Activity) context);
                } else {
                    return null;
                }
            }
            if (this.zzsb == null) {
                this.zzsb = new zzbi();
            }
            if (this.zzHX == null) {
                this.zzHX = new zzbk(this.zzsa, this.zzsb, new zzgq(this.mContext, this.zzpb, null, null));
            }
            this.zzHX.zzct();
            zzbk com_google_android_gms_internal_zzbk = this.zzHX;
            return com_google_android_gms_internal_zzbk;
        }
    }

    public Bundle zza(Context context, zzhw com_google_android_gms_internal_zzhw, String str) {
        Bundle bundle;
        synchronized (this.zzpd) {
            bundle = new Bundle();
            bundle.putBundle("app", this.zzHQ.zze(context, str));
            Bundle bundle2 = new Bundle();
            for (String str2 : this.zzHT.keySet()) {
                bundle2.putBundle(str2, ((zzhx) this.zzHT.get(str2)).toBundle());
            }
            bundle.putBundle("slots", bundle2);
            ArrayList arrayList = new ArrayList();
            Iterator it = this.zzHS.iterator();
            while (it.hasNext()) {
                arrayList.add(((zzht) it.next()).toBundle());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            com_google_android_gms_internal_zzhw.zza(this.zzHS);
            this.zzHS.clear();
        }
        return bundle;
    }

    public Future zza(Context context, boolean z) {
        Future zza;
        synchronized (this.zzpd) {
            if (z != this.zzGg) {
                this.zzGg = z;
                zza = zzib.zza(context, z);
            } else {
                zza = null;
            }
        }
        return zza;
    }

    public void zza(zzht com_google_android_gms_internal_zzht) {
        synchronized (this.zzpd) {
            this.zzHS.add(com_google_android_gms_internal_zzht);
        }
    }

    public void zza(String str, zzhx com_google_android_gms_internal_zzhx) {
        synchronized (this.zzpd) {
            this.zzHT.put(str, com_google_android_gms_internal_zzhx);
        }
    }

    public void zza(Thread thread) {
        zzgq.zza(this.mContext, thread, this.zzpb);
    }

    public void zzb(Context context, VersionInfoParcel versionInfoParcel) {
        synchronized (this.zzpd) {
            if (!this.zzpA) {
                this.mContext = context.getApplicationContext();
                this.zzpb = versionInfoParcel;
                zzib.zza(context, (zzb) this);
                zzib.zzb(context, this);
                zza(Thread.currentThread());
                this.zzIa = zzp.zzbv().zzf(context, versionInfoParcel.zzJu);
                if (zzmx.zzqE() && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                    this.zzIc = true;
                }
                this.zzov = new zzay(context.getApplicationContext(), this.zzpb, new zzdz(context.getApplicationContext(), this.zzpb, (String) zzby.zzul.get()));
                zzgw();
                zzp.zzbF().zzx(this.mContext);
                this.zzpA = true;
            }
        }
    }

    public void zzb(Boolean bool) {
        synchronized (this.zzpd) {
            this.zzHZ = bool;
        }
    }

    public void zzb(HashSet<zzht> hashSet) {
        synchronized (this.zzpd) {
            this.zzHS.addAll(hashSet);
        }
    }

    public void zzc(Throwable th, boolean z) {
        new zzgq(this.mContext, this.zzpb, null, null).zza(th, z);
    }

    public String zzd(int i, String str) {
        Resources resources = this.zzpb.zzJx ? this.mContext.getResources() : GooglePlayServicesUtil.getRemoteResource(this.mContext);
        return resources == null ? str : resources.getString(i);
    }

    public void zzd(Bundle bundle) {
        synchronized (this.zzpd) {
            this.zzGg = bundle.containsKey("use_https") ? bundle.getBoolean("use_https") : this.zzGg;
            this.zzHV = bundle.containsKey("webview_cache_version") ? bundle.getInt("webview_cache_version") : this.zzHV;
        }
    }

    public boolean zzgl() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzGh;
        }
        return z;
    }

    public String zzgm() {
        String bigInteger;
        synchronized (this.zzpd) {
            bigInteger = this.zzHR.toString();
            this.zzHR = this.zzHR.add(BigInteger.ONE);
        }
        return bigInteger;
    }

    public zzhv zzgn() {
        zzhv com_google_android_gms_internal_zzhv;
        synchronized (this.zzpd) {
            com_google_android_gms_internal_zzhv = this.zzHQ;
        }
        return com_google_android_gms_internal_zzhv;
    }

    public zzca zzgo() {
        zzca com_google_android_gms_internal_zzca;
        synchronized (this.zzpd) {
            com_google_android_gms_internal_zzca = this.zzHW;
        }
        return com_google_android_gms_internal_zzca;
    }

    public boolean zzgp() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzHU;
            this.zzHU = true;
        }
        return z;
    }

    public boolean zzgq() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzGg || this.zzIc;
        }
        return z;
    }

    public String zzgr() {
        String str;
        synchronized (this.zzpd) {
            str = this.zzIa;
        }
        return str;
    }

    public Boolean zzgs() {
        Boolean bool;
        synchronized (this.zzpd) {
            bool = this.zzHZ;
        }
        return bool;
    }

    public zzay zzgt() {
        return this.zzov;
    }

    public boolean zzgu() {
        boolean z;
        synchronized (this.zzpd) {
            if (this.zzHV < ((Integer) zzby.zzvh.get()).intValue()) {
                this.zzHV = ((Integer) zzby.zzvh.get()).intValue();
                zzib.zza(this.mContext, this.zzHV);
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public boolean zzgv() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzIb;
        }
        return z;
    }

    void zzgw() {
        try {
            this.zzHW = zzp.zzbA().zza(new zzbz(this.mContext, this.zzpb.zzJu));
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Cannot initialize CSI reporter.", e);
        }
    }
}
