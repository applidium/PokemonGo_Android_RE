package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.zzb;
import java.util.ArrayList;
import java.util.Iterator;
import spacemadness.com.lunarconsole.BuildConfig;

@zzgr
public class zzbh {
    private final Object zzpd;
    private final int zzrN;
    private final int zzrO;
    private final int zzrP;
    private final zzbm zzrQ;
    private ArrayList<String> zzrR;
    private int zzrS;
    private int zzrT;
    private int zzrU;
    private int zzrV;
    private String zzrW;

    public zzbh(int i, int i2, int i3, int i4) {
        this.zzpd = new Object();
        this.zzrR = new ArrayList();
        this.zzrS = 0;
        this.zzrT = 0;
        this.zzrU = 0;
        this.zzrW = BuildConfig.FLAVOR;
        this.zzrN = i;
        this.zzrO = i2;
        this.zzrP = i3;
        this.zzrQ = new zzbm(i4);
    }

    private String zza(ArrayList<String> arrayList, int i) {
        if (arrayList.isEmpty()) {
            return BuildConfig.FLAVOR;
        }
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append((String) it.next());
            stringBuffer.append(' ');
            if (stringBuffer.length() > i) {
                break;
            }
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        String stringBuffer2 = stringBuffer.toString();
        return stringBuffer2.length() >= i ? stringBuffer2.substring(0, i) : stringBuffer2;
    }

    private void zzx(String str) {
        if (str != null && str.length() >= this.zzrP) {
            synchronized (this.zzpd) {
                this.zzrR.add(str);
                this.zzrS += str.length();
            }
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzbh)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzbh com_google_android_gms_internal_zzbh = (zzbh) obj;
        return com_google_android_gms_internal_zzbh.zzcm() != null && com_google_android_gms_internal_zzbh.zzcm().equals(zzcm());
    }

    public int getScore() {
        return this.zzrV;
    }

    public int hashCode() {
        return zzcm().hashCode();
    }

    public String toString() {
        return "ActivityContent fetchId: " + this.zzrT + " score:" + this.zzrV + " total_length:" + this.zzrS + "\n text: " + zza(this.zzrR, 200) + "\n signture: " + this.zzrW;
    }

    int zza(int i, int i2) {
        return (this.zzrN * i) + (this.zzrO * i2);
    }

    public boolean zzcl() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzrU == 0;
        }
        return z;
    }

    public String zzcm() {
        return this.zzrW;
    }

    public void zzcn() {
        synchronized (this.zzpd) {
            this.zzrV -= 100;
        }
    }

    public void zzco() {
        synchronized (this.zzpd) {
            this.zzrU--;
        }
    }

    public void zzcp() {
        synchronized (this.zzpd) {
            this.zzrU++;
        }
    }

    public void zzcq() {
        synchronized (this.zzpd) {
            int zza = zza(this.zzrS, this.zzrT);
            if (zza > this.zzrV) {
                this.zzrV = zza;
                this.zzrW = this.zzrQ.zza(this.zzrR);
            }
        }
    }

    int zzcr() {
        return this.zzrS;
    }

    public void zzg(int i) {
        this.zzrT = i;
    }

    public void zzv(String str) {
        zzx(str);
        synchronized (this.zzpd) {
            if (this.zzrU < 0) {
                zzb.zzaF("ActivityContent: negative number of WebViews.");
            }
            zzcq();
        }
    }

    public void zzw(String str) {
        zzx(str);
    }
}
