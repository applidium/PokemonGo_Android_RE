package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.client.zzu.zza;
import com.google.android.gms.internal.zzgr;

@zzgr
public final class zzj extends zza {
    private final AppEventListener zztj;

    public zzj(AppEventListener appEventListener) {
        this.zztj = appEventListener;
    }

    public void onAppEvent(String str, String str2) {
        this.zztj.onAppEvent(str, str2);
    }
}
