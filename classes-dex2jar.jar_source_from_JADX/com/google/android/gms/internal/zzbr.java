package com.google.android.gms.internal;

import android.text.TextUtils;

@zzgr
public final class zzbr {
    private String zzuc;
    private int zzud;

    public zzbr() {
        this((String) zzby.zzul.zzde(), -1);
    }

    public zzbr(String str) {
        this(str, -1);
    }

    public zzbr(String str, int i) {
        this.zzud = -1;
        this.zzuc = TextUtils.isEmpty(str) ? (String) zzby.zzul.zzde() : str;
        this.zzud = i;
    }

    public String zzdc() {
        return this.zzuc;
    }

    public int zzdd() {
        return this.zzud;
    }
}
