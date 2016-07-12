package com.google.android.gms.auth.api.credentials.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzlb.zza;

abstract class zzd<R extends Result> extends zza<R, zze> {
    zzd(GoogleApiClient googleApiClient) {
        super(Auth.zzRF, googleApiClient);
    }

    protected abstract void zza(Context context, zzh com_google_android_gms_auth_api_credentials_internal_zzh) throws DeadObjectException, RemoteException;

    protected final void zza(zze com_google_android_gms_auth_api_credentials_internal_zze) throws DeadObjectException, RemoteException {
        zza(com_google_android_gms_auth_api_credentials_internal_zze.getContext(), (zzh) com_google_android_gms_auth_api_credentials_internal_zze.zzpc());
    }
}
