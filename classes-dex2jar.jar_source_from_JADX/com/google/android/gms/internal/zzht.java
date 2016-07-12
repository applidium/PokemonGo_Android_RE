package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.zzp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

@zzgr
public class zzht {
    private boolean zzGb;
    private final LinkedList<zza> zzHE;
    private final String zzHF;
    private final String zzHG;
    private long zzHH;
    private long zzHI;
    private long zzHJ;
    private long zzHK;
    private long zzHL;
    private long zzHM;
    private final zzhu zzpV;
    private final Object zzpd;

    @zzgr
    private static final class zza {
        private long zzHN;
        private long zzHO;

        public zza() {
            this.zzHN = -1;
            this.zzHO = -1;
        }

        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong("topen", this.zzHN);
            bundle.putLong("tclose", this.zzHO);
            return bundle;
        }

        public long zzgi() {
            return this.zzHO;
        }

        public void zzgj() {
            this.zzHO = SystemClock.elapsedRealtime();
        }

        public void zzgk() {
            this.zzHN = SystemClock.elapsedRealtime();
        }
    }

    public zzht(zzhu com_google_android_gms_internal_zzhu, String str, String str2) {
        this.zzpd = new Object();
        this.zzHH = -1;
        this.zzHI = -1;
        this.zzGb = false;
        this.zzHJ = -1;
        this.zzHK = 0;
        this.zzHL = -1;
        this.zzHM = -1;
        this.zzpV = com_google_android_gms_internal_zzhu;
        this.zzHF = str;
        this.zzHG = str2;
        this.zzHE = new LinkedList();
    }

    public zzht(String str, String str2) {
        this(zzp.zzby(), str, str2);
    }

    public Bundle toBundle() {
        Bundle bundle;
        synchronized (this.zzpd) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.zzHF);
            bundle.putString("slotid", this.zzHG);
            bundle.putBoolean("ismediation", this.zzGb);
            bundle.putLong("treq", this.zzHL);
            bundle.putLong("tresponse", this.zzHM);
            bundle.putLong("timp", this.zzHI);
            bundle.putLong("tload", this.zzHJ);
            bundle.putLong("pcc", this.zzHK);
            bundle.putLong("tfetch", this.zzHH);
            ArrayList arrayList = new ArrayList();
            Iterator it = this.zzHE.iterator();
            while (it.hasNext()) {
                arrayList.add(((zza) it.next()).toBundle());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }

    public void zzgf() {
        synchronized (this.zzpd) {
            if (this.zzHM != -1 && this.zzHI == -1) {
                this.zzHI = SystemClock.elapsedRealtime();
                this.zzpV.zza(this);
            }
            this.zzpV.zzgn().zzgf();
        }
    }

    public void zzgg() {
        synchronized (this.zzpd) {
            if (this.zzHM != -1) {
                zza com_google_android_gms_internal_zzht_zza = new zza();
                com_google_android_gms_internal_zzht_zza.zzgk();
                this.zzHE.add(com_google_android_gms_internal_zzht_zza);
                this.zzHK++;
                this.zzpV.zzgn().zzgg();
                this.zzpV.zza(this);
            }
        }
    }

    public void zzgh() {
        synchronized (this.zzpd) {
            if (!(this.zzHM == -1 || this.zzHE.isEmpty())) {
                zza com_google_android_gms_internal_zzht_zza = (zza) this.zzHE.getLast();
                if (com_google_android_gms_internal_zzht_zza.zzgi() == -1) {
                    com_google_android_gms_internal_zzht_zza.zzgj();
                    this.zzpV.zza(this);
                }
            }
        }
    }

    public void zzi(AdRequestParcel adRequestParcel) {
        synchronized (this.zzpd) {
            this.zzHL = SystemClock.elapsedRealtime();
            this.zzpV.zzgn().zzb(adRequestParcel, this.zzHL);
        }
    }

    public void zzl(long j) {
        synchronized (this.zzpd) {
            this.zzHM = j;
            if (this.zzHM != -1) {
                this.zzpV.zza(this);
            }
        }
    }

    public void zzm(long j) {
        synchronized (this.zzpd) {
            if (this.zzHM != -1) {
                this.zzHH = j;
                this.zzpV.zza(this);
            }
        }
    }

    public void zzy(boolean z) {
        synchronized (this.zzpd) {
            if (this.zzHM != -1) {
                this.zzHJ = SystemClock.elapsedRealtime();
                if (!z) {
                    this.zzHI = this.zzHJ;
                    this.zzpV.zza(this);
                }
            }
        }
    }

    public void zzz(boolean z) {
        synchronized (this.zzpd) {
            if (this.zzHM != -1) {
                this.zzGb = z;
                this.zzpV.zza(this);
            }
        }
    }
}
