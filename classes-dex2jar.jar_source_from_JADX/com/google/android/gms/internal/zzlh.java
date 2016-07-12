package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzlb.zza;
import java.util.Collections;

public class zzlh implements zzlj {
    private final zzli zzabr;

    public zzlh(zzli com_google_android_gms_internal_zzli) {
        this.zzabr = com_google_android_gms_internal_zzli;
    }

    public void begin() {
        this.zzabr.zznZ();
        this.zzabr.zzaci = Collections.emptySet();
    }

    public void connect() {
        this.zzabr.zzoa();
    }

    public void disconnect() {
        for (zzf com_google_android_gms_internal_zzli_zzf : this.zzabr.zzaca) {
            com_google_android_gms_internal_zzli_zzf.zza(null);
            com_google_android_gms_internal_zzli_zzf.cancel();
        }
        this.zzabr.zzaca.clear();
        this.zzabr.zzach.clear();
        this.zzabr.zznY();
    }

    public String getName() {
        return "DISCONNECTED";
    }

    public void onConnected(Bundle bundle) {
    }

    public void onConnectionSuspended(int i) {
    }

    public <A extends zzb, R extends Result, T extends zza<R, A>> T zza(T t) {
        this.zzabr.zzaca.add(t);
        return t;
    }

    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
    }

    public <A extends zzb, T extends zza<? extends Result, A>> T zzb(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
