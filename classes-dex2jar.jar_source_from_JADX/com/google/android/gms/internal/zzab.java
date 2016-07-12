package com.google.android.gms.internal;

import com.google.android.gms.internal.zzm.zza;
import com.google.android.gms.internal.zzm.zzb;
import java.io.UnsupportedEncodingException;

public class zzab extends zzk<String> {
    private final zzb<String> zzaG;

    public zzab(int i, String str, zzb<String> com_google_android_gms_internal_zzm_zzb_java_lang_String, zza com_google_android_gms_internal_zzm_zza) {
        super(i, str, com_google_android_gms_internal_zzm_zza);
        this.zzaG = com_google_android_gms_internal_zzm_zzb_java_lang_String;
    }

    public zzab(String str, zzb<String> com_google_android_gms_internal_zzm_zzb_java_lang_String, zza com_google_android_gms_internal_zzm_zza) {
        this(0, str, com_google_android_gms_internal_zzm_zzb_java_lang_String, com_google_android_gms_internal_zzm_zza);
    }

    protected zzm<String> zza(zzi com_google_android_gms_internal_zzi) {
        Object str;
        try {
            str = new String(com_google_android_gms_internal_zzi.data, zzx.zza(com_google_android_gms_internal_zzi.zzA));
        } catch (UnsupportedEncodingException e) {
            str = new String(com_google_android_gms_internal_zzi.data);
        }
        return zzm.zza(str, zzx.zzb(com_google_android_gms_internal_zzi));
    }

    protected /* synthetic */ void zza(Object obj) {
        zzi((String) obj);
    }

    protected void zzi(String str) {
        this.zzaG.zzb(str);
    }
}
