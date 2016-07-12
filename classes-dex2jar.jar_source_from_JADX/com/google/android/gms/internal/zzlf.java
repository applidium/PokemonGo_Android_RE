package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzlb.zza;

public class zzlf implements zzlj {
    private final zzli zzabr;

    /* renamed from: com.google.android.gms.internal.zzlf.1 */
    class C06061 extends zzb {
        final /* synthetic */ zzlf zzabs;

        C06061(zzlf com_google_android_gms_internal_zzlf, zzlj com_google_android_gms_internal_zzlj) {
            this.zzabs = com_google_android_gms_internal_zzlf;
            super(com_google_android_gms_internal_zzlj);
        }

        public void zznO() {
            this.zzabs.onConnectionSuspended(1);
        }
    }

    public zzlf(zzli com_google_android_gms_internal_zzli) {
        this.zzabr = com_google_android_gms_internal_zzli;
    }

    private <A extends zzb> void zza(zzf<A> com_google_android_gms_internal_zzli_zzf_A) throws DeadObjectException {
        this.zzabr.zzb((zzf) com_google_android_gms_internal_zzli_zzf_A);
        zzb zza = this.zzabr.zza(com_google_android_gms_internal_zzli_zzf_A.zznx());
        if (zza.isConnected() || !this.zzabr.zzach.containsKey(com_google_android_gms_internal_zzli_zzf_A.zznx())) {
            com_google_android_gms_internal_zzli_zzf_A.zzb(zza);
        } else {
            com_google_android_gms_internal_zzli_zzf_A.zzv(new Status(17));
        }
    }

    public void begin() {
        while (!this.zzabr.zzaca.isEmpty()) {
            try {
                zza((zzf) this.zzabr.zzaca.remove());
            } catch (Throwable e) {
                Log.w("GACConnected", "Service died while flushing queue", e);
            }
        }
    }

    public void connect() {
    }

    public void disconnect() {
        this.zzabr.zzach.clear();
        this.zzabr.zznY();
        this.zzabr.zzg(null);
        this.zzabr.zzabZ.zzpk();
    }

    public String getName() {
        return "CONNECTED";
    }

    public void onConnected(Bundle bundle) {
    }

    public void onConnectionSuspended(int i) {
        if (i == 1) {
            this.zzabr.zzoe();
        }
        for (zzf zzw : this.zzabr.zzacm) {
            zzw.zzw(new Status(8, "The connection to Google Play services was lost"));
        }
        this.zzabr.zzg(null);
        this.zzabr.zzabZ.zzbG(i);
        this.zzabr.zzabZ.zzpk();
        if (i == 2) {
            this.zzabr.connect();
        }
    }

    public <A extends zzb, R extends Result, T extends zza<R, A>> T zza(T t) {
        return zzb(t);
    }

    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
    }

    public <A extends zzb, T extends zza<? extends Result, A>> T zzb(T t) {
        try {
            zza((zzf) t);
        } catch (DeadObjectException e) {
            this.zzabr.zza(new C06061(this, this));
        }
        return t;
    }
}
