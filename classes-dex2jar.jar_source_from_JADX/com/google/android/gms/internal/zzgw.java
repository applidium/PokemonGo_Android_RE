package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import spacemadness.com.lunarconsole.BuildConfig;

@zzgr
public final class zzgw {
    private int mOrientation;
    private List<String> zzDJ;
    private String zzFU;
    private String zzFV;
    private List<String> zzFW;
    private String zzFX;
    private String zzFY;
    private List<String> zzFZ;
    private long zzGa;
    private boolean zzGb;
    private final long zzGc;
    private long zzGd;
    private boolean zzGe;
    private boolean zzGf;
    private boolean zzGg;
    private boolean zzGh;
    private int zzGi;
    private String zzGj;
    private boolean zzGk;
    private String zzwq;
    private final AdRequestInfoParcel zzzz;

    public zzgw(AdRequestInfoParcel adRequestInfoParcel) {
        this.zzGa = -1;
        this.zzGb = false;
        this.zzGc = -1;
        this.zzGd = -1;
        this.mOrientation = -1;
        this.zzGe = false;
        this.zzGf = false;
        this.zzGg = false;
        this.zzGh = true;
        this.zzGi = 0;
        this.zzGj = BuildConfig.FLAVOR;
        this.zzGk = false;
        this.zzzz = adRequestInfoParcel;
    }

    static String zzd(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        return (list == null || list.isEmpty()) ? null : (String) list.get(0);
    }

    static long zze(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        if (!(list == null || list.isEmpty())) {
            String str2 = (String) list.get(0);
            try {
                return (long) (Float.parseFloat(str2) * 1000.0f);
            } catch (NumberFormatException e) {
                zzb.zzaH("Could not parse float from " + str + " header: " + str2);
            }
        }
        return -1;
    }

    static List<String> zzf(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        if (!(list == null || list.isEmpty())) {
            String str2 = (String) list.get(0);
            if (str2 != null) {
                return Arrays.asList(str2.trim().split("\\s+"));
            }
        }
        return null;
    }

    private boolean zzg(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        return (list == null || list.isEmpty() || !Boolean.valueOf((String) list.get(0)).booleanValue()) ? false : true;
    }

    private void zzi(Map<String, List<String>> map) {
        this.zzFU = zzd(map, "X-Afma-Ad-Size");
    }

    private void zzj(Map<String, List<String>> map) {
        List zzf = zzf(map, "X-Afma-Click-Tracking-Urls");
        if (zzf != null) {
            this.zzFW = zzf;
        }
    }

    private void zzk(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Debug-Dialog");
        if (list != null && !list.isEmpty()) {
            this.zzFX = (String) list.get(0);
        }
    }

    private void zzl(Map<String, List<String>> map) {
        List zzf = zzf(map, "X-Afma-Tracking-Urls");
        if (zzf != null) {
            this.zzFZ = zzf;
        }
    }

    private void zzm(Map<String, List<String>> map) {
        long zze = zze(map, "X-Afma-Interstitial-Timeout");
        if (zze != -1) {
            this.zzGa = zze;
        }
    }

    private void zzn(Map<String, List<String>> map) {
        this.zzFY = zzd(map, "X-Afma-ActiveView");
    }

    private void zzo(Map<String, List<String>> map) {
        this.zzGf = "native".equals(zzd(map, "X-Afma-Ad-Format"));
    }

    private void zzp(Map<String, List<String>> map) {
        this.zzGe |= zzg(map, "X-Afma-Custom-Rendering-Allowed");
    }

    private void zzq(Map<String, List<String>> map) {
        this.zzGb |= zzg(map, "X-Afma-Mediation");
    }

    private void zzr(Map<String, List<String>> map) {
        List zzf = zzf(map, "X-Afma-Manual-Tracking-Urls");
        if (zzf != null) {
            this.zzDJ = zzf;
        }
    }

    private void zzs(Map<String, List<String>> map) {
        long zze = zze(map, "X-Afma-Refresh-Rate");
        if (zze != -1) {
            this.zzGd = zze;
        }
    }

    private void zzt(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Orientation");
        if (list != null && !list.isEmpty()) {
            String str = (String) list.get(0);
            if ("portrait".equalsIgnoreCase(str)) {
                this.mOrientation = zzp.zzbx().zzgH();
            } else if ("landscape".equalsIgnoreCase(str)) {
                this.mOrientation = zzp.zzbx().zzgG();
            }
        }
    }

    private void zzu(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Use-HTTPS");
        if (list != null && !list.isEmpty()) {
            this.zzGg = Boolean.valueOf((String) list.get(0)).booleanValue();
        }
    }

    private void zzv(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Content-Url-Opted-Out");
        if (list != null && !list.isEmpty()) {
            this.zzGh = Boolean.valueOf((String) list.get(0)).booleanValue();
        }
    }

    private void zzw(Map<String, List<String>> map) {
        List<String> zzf = zzf(map, "X-Afma-OAuth-Token-Status");
        this.zzGi = 0;
        if (zzf != null) {
            for (String str : zzf) {
                if ("Clear".equalsIgnoreCase(str)) {
                    this.zzGi = 1;
                    return;
                } else if ("No-Op".equalsIgnoreCase(str)) {
                    this.zzGi = 0;
                    return;
                }
            }
        }
    }

    private void zzx(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Gws-Query-Id");
        if (list != null && !list.isEmpty()) {
            this.zzGj = (String) list.get(0);
        }
    }

    private void zzy(Map<String, List<String>> map) {
        String zzd = zzd(map, "X-Afma-Fluid");
        if (zzd != null && zzd.equals("height")) {
            this.zzGk = true;
        }
    }

    public void zzb(String str, Map<String, List<String>> map, String str2) {
        this.zzFV = str;
        this.zzwq = str2;
        zzh(map);
    }

    public void zzh(Map<String, List<String>> map) {
        zzi(map);
        zzj((Map) map);
        zzk(map);
        zzl(map);
        zzm(map);
        zzq(map);
        zzr(map);
        zzs(map);
        zzt(map);
        zzn(map);
        zzu(map);
        zzp(map);
        zzo(map);
        zzv(map);
        zzw(map);
        zzx(map);
        zzy(map);
    }

    public AdResponseParcel zzj(long j) {
        return new AdResponseParcel(this.zzzz, this.zzFV, this.zzwq, this.zzFW, this.zzFZ, this.zzGa, this.zzGb, -1, this.zzDJ, this.zzGd, this.mOrientation, this.zzFU, j, this.zzFX, this.zzFY, this.zzGe, this.zzGf, this.zzGg, this.zzGh, false, this.zzGi, this.zzGj, this.zzGk);
    }
}
