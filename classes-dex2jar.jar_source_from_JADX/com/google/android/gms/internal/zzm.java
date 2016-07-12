package com.google.android.gms.internal;

public class zzm<T> {
    public final T result;
    public final com.google.android.gms.internal.zzb.zza zzag;
    public final zzr zzah;
    public boolean zzai;

    public interface zza {
        void zze(zzr com_google_android_gms_internal_zzr);
    }

    public interface zzb<T> {
        void zzb(T t);
    }

    private zzm(zzr com_google_android_gms_internal_zzr) {
        this.zzai = false;
        this.result = null;
        this.zzag = null;
        this.zzah = com_google_android_gms_internal_zzr;
    }

    private zzm(T t, com.google.android.gms.internal.zzb.zza com_google_android_gms_internal_zzb_zza) {
        this.zzai = false;
        this.result = t;
        this.zzag = com_google_android_gms_internal_zzb_zza;
        this.zzah = null;
    }

    public static <T> zzm<T> zza(T t, com.google.android.gms.internal.zzb.zza com_google_android_gms_internal_zzb_zza) {
        return new zzm(t, com_google_android_gms_internal_zzb_zza);
    }

    public static <T> zzm<T> zzd(zzr com_google_android_gms_internal_zzr) {
        return new zzm(com_google_android_gms_internal_zzr);
    }

    public boolean isSuccess() {
        return this.zzah == null;
    }
}
