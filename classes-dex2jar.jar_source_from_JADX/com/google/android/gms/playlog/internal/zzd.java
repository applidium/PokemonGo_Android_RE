package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.zzqd.zza;

public class zzd implements ConnectionCallbacks, OnConnectionFailedListener {
    private zzf zzaRE;
    private final zza zzaRP;
    private boolean zzaRQ;

    public zzd(zza com_google_android_gms_internal_zzqd_zza) {
        this.zzaRP = com_google_android_gms_internal_zzqd_zza;
        this.zzaRE = null;
        this.zzaRQ = true;
    }

    public void onConnected(Bundle bundle) {
        this.zzaRE.zzap(false);
        if (this.zzaRQ && this.zzaRP != null) {
            this.zzaRP.zzBr();
        }
        this.zzaRQ = false;
    }

    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzaRE.zzap(true);
        if (this.zzaRQ && this.zzaRP != null) {
            if (connectionResult.hasResolution()) {
                this.zzaRP.zzf(connectionResult.getResolution());
            } else {
                this.zzaRP.zzBs();
            }
        }
        this.zzaRQ = false;
    }

    public void onConnectionSuspended(int i) {
        this.zzaRE.zzap(true);
    }

    public void zza(zzf com_google_android_gms_playlog_internal_zzf) {
        this.zzaRE = com_google_android_gms_playlog_internal_zzf;
    }

    public void zzao(boolean z) {
        this.zzaRQ = z;
    }
}
