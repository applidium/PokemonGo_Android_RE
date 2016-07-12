package com.google.android.gms.internal;

import com.google.android.gms.internal.zzb.zza;
import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;

public class zzx {
    public static String zza(Map<String, String> map) {
        return zzb(map, "ISO-8859-1");
    }

    public static zza zzb(zzi com_google_android_gms_internal_zzi) {
        long j;
        long j2;
        long j3;
        Object obj;
        Object obj2;
        long currentTimeMillis = System.currentTimeMillis();
        Map map = com_google_android_gms_internal_zzi.zzA;
        long j4 = 0;
        String str = (String) map.get("Date");
        if (str != null) {
            j4 = zzg(str);
        }
        str = (String) map.get("Cache-Control");
        if (str != null) {
            String[] split = str.split(",");
            Object obj3 = null;
            j = 0;
            long j5 = 0;
            for (String trim : split) {
                String trim2 = trim2.trim();
                if (trim2.equals("no-cache") || trim2.equals("no-store")) {
                    return null;
                }
                if (trim2.startsWith("max-age=")) {
                    try {
                        j5 = Long.parseLong(trim2.substring(8));
                    } catch (Exception e) {
                    }
                } else if (trim2.startsWith("stale-while-revalidate=")) {
                    try {
                        j = Long.parseLong(trim2.substring(23));
                    } catch (Exception e2) {
                    }
                } else if (trim2.equals("must-revalidate") || trim2.equals("proxy-revalidate")) {
                    obj3 = 1;
                }
            }
            j2 = j5;
            j3 = j;
            obj = 1;
            obj2 = obj3;
        } else {
            j2 = 0;
            j3 = 0;
            obj = null;
            obj2 = null;
        }
        str = (String) map.get("Expires");
        j = str != null ? zzg(str) : 0;
        str = (String) map.get("Last-Modified");
        long zzg = str != null ? zzg(str) : 0;
        str = (String) map.get("ETag");
        if (obj != null) {
            j = (1000 * j2) + currentTimeMillis;
            j2 = obj2 != null ? j : (1000 * j3) + j;
        } else if (j4 <= 0 || j < j4) {
            j2 = 0;
            j = 0;
        } else {
            j = (j - j4) + currentTimeMillis;
            j2 = j;
        }
        zza com_google_android_gms_internal_zzb_zza = new zza();
        com_google_android_gms_internal_zzb_zza.data = com_google_android_gms_internal_zzi.data;
        com_google_android_gms_internal_zzb_zza.zzb = str;
        com_google_android_gms_internal_zzb_zza.zzf = j;
        com_google_android_gms_internal_zzb_zza.zze = j2;
        com_google_android_gms_internal_zzb_zza.zzc = j4;
        com_google_android_gms_internal_zzb_zza.zzd = zzg;
        com_google_android_gms_internal_zzb_zza.zzg = map;
        return com_google_android_gms_internal_zzb_zza;
    }

    public static String zzb(Map<String, String> map, String str) {
        String str2 = (String) map.get("Content-Type");
        if (str2 == null) {
            return str;
        }
        String[] split = str2.split(";");
        for (int i = 1; i < split.length; i++) {
            String[] split2 = split[i].trim().split("=");
            if (split2.length == 2 && split2[0].equals("charset")) {
                return split2[1];
            }
        }
        return str;
    }

    public static long zzg(String str) {
        try {
            return DateUtils.parseDate(str).getTime();
        } catch (DateParseException e) {
            return 0;
        }
    }
}
