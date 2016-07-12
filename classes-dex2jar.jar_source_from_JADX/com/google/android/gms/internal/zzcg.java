package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.FilenameUtils;

public class zzcg {
    private final Object zzpd;
    boolean zzvA;
    private final List<zzce> zzvR;
    private final Map<String, String> zzvS;
    private String zzvT;
    private zzce zzvU;
    private zzcg zzvV;

    public zzcg(boolean z, String str, String str2) {
        this.zzvR = new LinkedList();
        this.zzvS = new LinkedHashMap();
        this.zzpd = new Object();
        this.zzvA = z;
        this.zzvS.put("action", str);
        this.zzvS.put("ad_format", str2);
    }

    public void zzT(String str) {
        if (this.zzvA) {
            synchronized (this.zzpd) {
                this.zzvT = str;
            }
        }
    }

    public boolean zza(zzce com_google_android_gms_internal_zzce, long j, String... strArr) {
        synchronized (this.zzpd) {
            for (String com_google_android_gms_internal_zzce2 : strArr) {
                this.zzvR.add(new zzce(j, com_google_android_gms_internal_zzce2, com_google_android_gms_internal_zzce));
            }
        }
        return true;
    }

    public boolean zza(zzce com_google_android_gms_internal_zzce, String... strArr) {
        return (!this.zzvA || com_google_android_gms_internal_zzce == null) ? false : zza(com_google_android_gms_internal_zzce, zzp.zzbz().elapsedRealtime(), strArr);
    }

    public zzce zzb(long j) {
        return !this.zzvA ? null : new zzce(j, null, null);
    }

    public void zzc(zzcg com_google_android_gms_internal_zzcg) {
        synchronized (this.zzpd) {
            this.zzvV = com_google_android_gms_internal_zzcg;
        }
    }

    public zzce zzdn() {
        return zzb(zzp.zzbz().elapsedRealtime());
    }

    public void zzdo() {
        synchronized (this.zzpd) {
            this.zzvU = zzdn();
        }
    }

    public String zzdp() {
        String stringBuilder;
        StringBuilder stringBuilder2 = new StringBuilder();
        synchronized (this.zzpd) {
            for (zzce com_google_android_gms_internal_zzce : this.zzvR) {
                long time = com_google_android_gms_internal_zzce.getTime();
                String zzdk = com_google_android_gms_internal_zzce.zzdk();
                zzce com_google_android_gms_internal_zzce2 = com_google_android_gms_internal_zzce2.zzdl();
                if (com_google_android_gms_internal_zzce2 != null && time > 0) {
                    stringBuilder2.append(zzdk).append(FilenameUtils.EXTENSION_SEPARATOR).append(time - com_google_android_gms_internal_zzce2.getTime()).append(',');
                }
            }
            this.zzvR.clear();
            if (!TextUtils.isEmpty(this.zzvT)) {
                stringBuilder2.append(this.zzvT);
            } else if (stringBuilder2.length() > 0) {
                stringBuilder2.setLength(stringBuilder2.length() - 1);
            }
            stringBuilder = stringBuilder2.toString();
        }
        return stringBuilder;
    }

    public zzce zzdq() {
        zzce com_google_android_gms_internal_zzce;
        synchronized (this.zzpd) {
            com_google_android_gms_internal_zzce = this.zzvU;
        }
        return com_google_android_gms_internal_zzce;
    }

    public void zze(String str, String str2) {
        if (this.zzvA && !TextUtils.isEmpty(str2)) {
            zzca zzgo = zzp.zzby().zzgo();
            if (zzgo != null) {
                synchronized (this.zzpd) {
                    zzgo.zzR(str).zza(this.zzvS, str, str2);
                }
            }
        }
    }

    Map<String, String> zzn() {
        Map<String, String> map;
        synchronized (this.zzpd) {
            zzca zzgo = zzp.zzby().zzgo();
            if (zzgo == null || this.zzvV == null) {
                map = this.zzvS;
            } else {
                map = zzgo.zza(this.zzvS, this.zzvV.zzn());
            }
        }
        return map;
    }
}
