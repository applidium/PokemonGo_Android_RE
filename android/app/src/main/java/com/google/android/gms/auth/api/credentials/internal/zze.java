package com.google.android.gms.auth.api.credentials.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.Auth.AuthCredentialsOptions;
import com.google.android.gms.auth.api.credentials.internal.zzh.zza;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;

public final class zze extends zzj<zzh> {
    private final AuthCredentialsOptions zzSJ;

    public zze(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, AuthCredentialsOptions authCredentialsOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 68, com_google_android_gms_common_internal_zzf, connectionCallbacks, onConnectionFailedListener);
        this.zzSJ = authCredentialsOptions;
    }

    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzar(iBinder);
    }

    protected zzh zzar(IBinder iBinder) {
        return zza.zzat(iBinder);
    }

    protected String zzfK() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    protected String zzfL() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    protected Bundle zzly() {
        return this.zzSJ == null ? new Bundle() : this.zzSJ.zzly();
    }
}
