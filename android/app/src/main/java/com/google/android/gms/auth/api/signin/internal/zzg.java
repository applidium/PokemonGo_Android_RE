package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.internal.zze.zza;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzx;

public class zzg extends zzj<zze> {
    private final com.google.android.gms.auth.api.signin.zzg zzTq;

    public zzg(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, com.google.android.gms.auth.api.signin.zzg com_google_android_gms_auth_api_signin_zzg, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 87, com_google_android_gms_common_internal_zzf, connectionCallbacks, onConnectionFailedListener);
        this.zzTq = (com.google.android.gms.auth.api.signin.zzg) zzx.zzw(com_google_android_gms_auth_api_signin_zzg);
    }

    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzax(iBinder);
    }

    protected zze zzax(IBinder iBinder) {
        return zza.zzaz(iBinder);
    }

    protected String zzfK() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    protected String zzfL() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }
}
