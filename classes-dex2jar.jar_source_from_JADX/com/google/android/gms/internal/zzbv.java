package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@zzgr
public class zzbv {
    private final Collection<zzbu> zzug;
    private final Collection<zzbu<String>> zzuh;
    private final Collection<zzbu<String>> zzui;

    public zzbv() {
        this.zzug = new ArrayList();
        this.zzuh = new ArrayList();
        this.zzui = new ArrayList();
    }

    public void zza(zzbu com_google_android_gms_internal_zzbu) {
        this.zzug.add(com_google_android_gms_internal_zzbu);
    }

    public void zzb(zzbu<String> com_google_android_gms_internal_zzbu_java_lang_String) {
        this.zzuh.add(com_google_android_gms_internal_zzbu_java_lang_String);
    }

    public void zzc(zzbu<String> com_google_android_gms_internal_zzbu_java_lang_String) {
        this.zzui.add(com_google_android_gms_internal_zzbu_java_lang_String);
    }

    public List<String> zzdf() {
        List<String> arrayList = new ArrayList();
        for (zzbu com_google_android_gms_internal_zzbu : this.zzuh) {
            String str = (String) com_google_android_gms_internal_zzbu.get();
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }
}
