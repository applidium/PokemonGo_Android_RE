package com.google.android.gms.ads.mediation.admob;

import android.os.Bundle;
import com.google.ads.mediation.NetworkExtras;

@Deprecated
public final class AdMobExtras implements NetworkExtras {
    private final Bundle mExtras;

    public AdMobExtras(Bundle bundle) {
        this.mExtras = bundle != null ? new Bundle(bundle) : null;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }
}
