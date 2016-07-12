package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.Auth.zza;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;

public final class zzki extends zzj<zzkk> {
    private final Bundle zzSa;

    public zzki(Context context, Looper looper, zzf com_google_android_gms_common_internal_zzf, zza com_google_android_gms_auth_api_Auth_zza, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 16, com_google_android_gms_common_internal_zzf, connectionCallbacks, onConnectionFailedListener);
        this.zzSa = com_google_android_gms_auth_api_Auth_zza == null ? new Bundle() : com_google_android_gms_auth_api_Auth_zza.zzlE();
    }

    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzau(iBinder);
    }

    protected zzkk zzau(IBinder iBinder) {
        return zzkk.zza.zzaw(iBinder);
    }

    protected String zzfK() {
        return "com.google.android.gms.auth.service.START";
    }

    protected String zzfL() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    public boolean zzlN() {
        zzf zzpa = zzpa();
        return (TextUtils.isEmpty(zzpa.getAccountName()) || zzpa.zzb(Auth.PROXY_API).isEmpty()) ? false : true;
    }

    protected Bundle zzly() {
        return this.zzSa;
    }
}
