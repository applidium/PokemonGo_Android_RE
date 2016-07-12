package com.google.android.gms.internal;

import java.util.Collections;
import java.util.Map;

public interface zzb {

    public static class zza {
        public byte[] data;
        public String zzb;
        public long zzc;
        public long zzd;
        public long zze;
        public long zzf;
        public Map<String, String> zzg;

        public zza() {
            this.zzg = Collections.emptyMap();
        }

        public boolean zzb() {
            return this.zze < System.currentTimeMillis();
        }

        public boolean zzc() {
            return this.zzf < System.currentTimeMillis();
        }
    }

    zza zza(String str);

    void zza();

    void zza(String str, zza com_google_android_gms_internal_zzb_zza);
}
